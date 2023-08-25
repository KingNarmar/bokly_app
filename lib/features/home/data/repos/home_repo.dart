import 'package:bokly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/errors/faliuers.dart';

abstract class HomeRepo {
  Future<Either<Faliuer, List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Faliuer, List<BookModel>>> fetchFeaturedBooks();
}
