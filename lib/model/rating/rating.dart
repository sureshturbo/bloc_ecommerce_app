import 'package:ecommerce_app_bloc/entities/rating/rating_entity.dart';
import 'package:equatable/equatable.dart';

class Rating extends Equatable{
    final double rating;
   final int count;

    const Rating({required this.rating, required this.count});


   static Rating fromEntity(RatingEntity ratingEntity){
      return Rating(rating:ratingEntity.rate, count:ratingEntity.count);
    }
    RatingEntity toEntity(){
      return RatingEntity(rate: rating, count: count);
    }

    @override
    List<Object?> get props => [count,rating];
}