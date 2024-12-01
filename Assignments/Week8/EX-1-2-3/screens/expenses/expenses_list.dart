import 'package:flutter/material.dart';
import '../../models/expense.dart';
import 'expenses_item.dart';

class UndoList extends StatefulWidget {
  const UndoList({super.key});

  @override
  State<UndoList> createState() => _UndoListState();
}

class _UndoListState extends State<UndoList> {

  List<String> _history = [];
  String _currentState = '';

  void _updateState(String newState){
    setState(() {
      _history.add(_currentState);
      _currentState = newState;
    });
  }
  void _undo(){
    if(_history. isNotEmpty){
      setState(() {
        _currentState =_history.removeLast();
      });
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no more undo action'),),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: _undo, icon: const Icon(Icons.undo));
  }
}

class ExpensesList extends StatefulWidget {
  const ExpensesList(
      {super.key, required this.expenses, required this.onExpenseRemoved});
  final List<Expense> expenses;
  final Function(Expense) onExpenseRemoved;

  @override
  State<ExpensesList> createState() => _ExpensesListState();
}

class _ExpensesListState extends State<ExpensesList> {
  List<Expense> _expense =[];
  Expense? _lastRemoveExpense;

  @override
  void initState(){
    super.initState();
    _expense = widget.expenses;
  }

  void _removeExpense(Expense expense){
    setState(() {
      _lastRemoveExpense = expense;
      _expense.remove(expense);
    });
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: const Text('Expense deleted'),
    action: SnackBarAction(label: 'Undo', onPressed: (){ setState(() {
      if(_lastRemoveExpense != null){
        _expense.insert(_expense.length, _lastRemoveExpense!);
      }
    });})),
    )
  ;
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: widget.expenses.isEmpty
          ? const Center(
          child: Text(
            'No expense found. Start adding some!',
            style: TextStyle(fontSize: 18),
          ),
        )
          : ListView.builder(
          itemCount: widget.expenses.length,
          itemBuilder: (context, index) => Dismissible(
            onDismissed: (direction) => _removeExpense(_expense[index]),
            key: Key(widget.expenses[index].id),
            child: ExpenseItem(widget.expenses[index]),
          ),
        ),
    );
  }
}
