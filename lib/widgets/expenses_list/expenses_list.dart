import 'package:expence_tracker/widgets/expenses_list/expense_item.dart';
import 'package:expence_tracker/models/expense.dart';

import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onRemoveExpense,
  });

  final List<Expense> expenses;
  final Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder:
          (ctx, index) => Dismissible(
            onDismissed: (direction) => onRemoveExpense(expenses[index]),
            key: ValueKey(expenses[index]),
            child: ExpenseItem(expense: expenses[index]),
          ),
    );
  }
}
