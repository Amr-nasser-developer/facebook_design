abstract class FacebookState{}
class FacebookInitial extends FacebookState{}
class FacebookGetPostLoading extends FacebookState{}
class FacebookGetPostSuccess extends FacebookState{}
class FacebookGetPostError extends FacebookState{
  final error;
  FacebookGetPostError(this.error);
}
