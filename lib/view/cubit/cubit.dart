import 'package:facebook_task/view/cubit/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FacebookCubit extends Cubit<FacebookState>{
  FacebookCubit() : super(FacebookInitial());
  static FacebookCubit get(context) => BlocProvider.of(context);

  List<dynamic> story = [
    {
      'name' : 'Amr Nasser',
      'photo' : 'assets/images/amr1.jpeg',
      'description' : 'iam amr nasser Iam 21 years old and i from cairo'
    },
    {
      'name' : 'Omar Ismail',
      'photo' : 'assets/images/amr2.jpeg',
    },
    {
      'name' : 'Mohammed Jamal',
      'photo' : 'assets/images/amr3.jpeg',
      'description' : 'iam Mohammed Jamal Iam 28 years old and i from Giza'
    },
    {
      'name' : 'Kareem Gom3a',
      'photo' : 'assets/images/amr4.jpeg',
    },
    {
      'name' : 'Mohamed Atef',
      'photo' : 'assets/images/amr5.jpeg',
    },
  ];
  List<dynamic> getStory = [];
 Future getStories()async{
    emit(FacebookGetPostLoading());
   await Future.delayed(const Duration(seconds: 5)).then((value){
      emit(FacebookGetPostSuccess());
      getStory = story;
    }).catchError((e){
      emit(FacebookGetPostError(e.toString()));
      print(e.toString());
    });
  }
}