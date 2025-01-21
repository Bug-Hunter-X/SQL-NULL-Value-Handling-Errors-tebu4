In SQL, a common yet often subtle error involves incorrect handling of NULL values.  Consider a query like this:

```sql
SELECT * FROM employees WHERE salary = NULL;
```

This query will *not* return any rows, even if there are employees with NULL salaries.  The correct approach is to use the `IS NULL` operator:

```sql
SELECT * FROM employees WHERE salary IS NULL;
```

Another related issue is unexpected behavior when comparing NULLs in expressions.  Remember that NULL is not equal to NULL (it's undefined).  Logical comparisons involving NULLs often require careful consideration of `IS NULL`, `IS NOT NULL`, and potentially the `COALESCE` function to handle NULLs gracefully.