import 'package:bokly_app/core/errors/faliuers.dart';
import 'package:bokly_app/core/utils/api_service.dart';
import 'package:bokly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bokly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
 final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Faliuer, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint: "volumes?Sorting=newest &q=subject:computer science");
      
      List<BookModel> books = [];
      
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      
      return right(books);
    }  catch (e) {
      return left(ServreFaliuer());
    }
  }

  @override
  Future<Either<Faliuer, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
