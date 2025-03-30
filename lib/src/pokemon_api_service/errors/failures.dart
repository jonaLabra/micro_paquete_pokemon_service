abstract class Failure {
  final String message;

  Failure(this.message);
}

//CATCH ERROR MESSAGES
class ServerFailure extends Failure {
  ServerFailure(super.message);
}
