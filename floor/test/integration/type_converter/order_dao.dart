import 'package:floor/floor.dart';

import 'order.dart';

@dao
abstract class OrderDao {
  @insert
  Future<void> insertOrder(Order order);

  @Query('SELECT * FROM `Order` WHERE date = :date')
  Future<List<Order>> findOrdersByDate(DateTime date);
}
