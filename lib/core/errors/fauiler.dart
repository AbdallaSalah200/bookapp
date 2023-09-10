import 'package:dio/dio.dart';

abstract class Fauilar {
  final String errmessage ;

  Fauilar(this.errmessage);
}
class ServerFauiler extends Fauilar {
  ServerFauiler(super.errmessage);
  factory ServerFauiler.fromDioException (DioException dioError ){
    switch(dioError.type){
      
      case DioExceptionType.connectionTimeout:
        // TODO: Handle this case.
        return ServerFauiler('Connection Time out with api server');
      case DioExceptionType.sendTimeout:
        // TODO: Handle this case.
         return ServerFauiler('Send Time out with api server');
      case DioExceptionType.receiveTimeout:
        // TODO: Handle this case.
         return ServerFauiler('Receive Time out with api server');
      case DioExceptionType.badCertificate:
        // TODO: Handle this case.
       
      case DioExceptionType.badResponse:
       return ServerFauiler.fromResponse(dioError.response!.statusCode!,dioError.response!.data );
        
      case DioExceptionType.cancel:
       return ServerFauiler('Request to ApiServer was canceld');
       
      case DioExceptionType.connectionError:
        // TODO: Handle this case.
       
      case DioExceptionType.unknown:
         if (dioError.message!.contains('SocketException')) {
          return  ServerFauiler('No Internet Connection');
        }
        return  ServerFauiler('Unexpected Error, Please try again!');
      default:
        return  ServerFauiler('Opps There was an Error, Please try again');
        
    }
  }
  factory ServerFauiler.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFauiler(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFauiler('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFauiler('Internal Server error, Please try later');
    } else {
      return ServerFauiler('Opps There was an Error, Please try again');
    }
  }
}
