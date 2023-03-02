import 'package:actual_two/common/model/cursor_pagination_model.dart';
import 'package:actual_two/common/model/model_with_id.dart';
import 'package:actual_two/common/model/pagination_params.dart';

// I : Interface
abstract class IBasePaginationRepository<T extends IModelWithId> {
  Future<CursorPagination<T>> paginate({
    PaginationParams? paginationParams = const PaginationParams(),
  });
}
