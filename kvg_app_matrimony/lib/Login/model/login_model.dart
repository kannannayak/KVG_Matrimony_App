import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
abstract class LoginModel with _$LoginModel {
  factory LoginModel({
    bool? status,
    String? message,
    @JsonKey(name: 'user_data') UserData? userData,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
}

@freezed
abstract class UserData with _$UserData {
  factory UserData({
    int? id,
    @JsonKey(name: 'kvg_profile_id') String? kvgProfileId,
    String? name,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'alt_phone_number') String? altPhoneNumber,
    String? education,
    String? gender,
    String? dob,
    String? tob,
    String? height,
    String? weight,
    @JsonKey(name: 'body_type') String? bodyType,
    @JsonKey(name: 'body_colour') String? bodyColour,
    @JsonKey(name: 'kongu_kulam') String? konguKulam,
    @JsonKey(name: 'single_parent') String? singleParent,
    String? district,
    @JsonKey(name: 'subdistrict') String? subdistrict,
    @JsonKey(name: 'father_name') String? fatherName,
    @JsonKey(name: 'mother_name') String? motherName,
    @JsonKey(name: 'aadhar_address') String? aadharAddress,
    String? expectation,
    @JsonKey(name: 'brother_married') int? brotherMarried,
    @JsonKey(name: 'brother_unmarried') int? brotherUnmarried,
    @JsonKey(name: 'sister_married') int? sisterMarried,
    @JsonKey(name: 'sister_unmarried') int? sisterUnmarried,
    String? rasi,
    String? natchathiram,
    @JsonKey(name: 'property_value') String? propertyValue,
    @JsonKey(name: 'acres_value') String? acresValue,
    String? employed,
    String? occupation,
    @JsonKey(name: 'annual_income') String? annualIncome,
    @JsonKey(name: 'work_location') String? workLocation,
    @JsonKey(name: 'profile_img1') String? profileImg1,
    @JsonKey(name: 'profile_img2') String? profileImg2,
    @JsonKey(name: 'profile_img3') String? profileImg3,
    @JsonKey(name: 'community_certificate') String? communityCertificate,
    @JsonKey(name: 'id_front') String? idFront,
    @JsonKey(name: 'id_back') String? idBack,
    @JsonKey(name: 'jathagam_full') String? jathagamFull,
    @JsonKey(name: 'jathagam_half') String? jathagamHalf,
    String? email,
    @JsonKey(name: 'password_pin') String? passwordPin,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
