// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginModel {

 bool? get status; String? get message;@JsonKey(name: 'user_data') UserData? get userData;
/// Create a copy of LoginModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginModelCopyWith<LoginModel> get copyWith => _$LoginModelCopyWithImpl<LoginModel>(this as LoginModel, _$identity);

  /// Serializes this LoginModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.userData, userData) || other.userData == userData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,userData);

@override
String toString() {
  return 'LoginModel(status: $status, message: $message, userData: $userData)';
}


}

/// @nodoc
abstract mixin class $LoginModelCopyWith<$Res>  {
  factory $LoginModelCopyWith(LoginModel value, $Res Function(LoginModel) _then) = _$LoginModelCopyWithImpl;
@useResult
$Res call({
 bool? status, String? message,@JsonKey(name: 'user_data') UserData? userData
});


$UserDataCopyWith<$Res>? get userData;

}
/// @nodoc
class _$LoginModelCopyWithImpl<$Res>
    implements $LoginModelCopyWith<$Res> {
  _$LoginModelCopyWithImpl(this._self, this._then);

  final LoginModel _self;
  final $Res Function(LoginModel) _then;

/// Create a copy of LoginModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? message = freezed,Object? userData = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,userData: freezed == userData ? _self.userData : userData // ignore: cast_nullable_to_non_nullable
as UserData?,
  ));
}
/// Create a copy of LoginModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataCopyWith<$Res>? get userData {
    if (_self.userData == null) {
    return null;
  }

  return $UserDataCopyWith<$Res>(_self.userData!, (value) {
    return _then(_self.copyWith(userData: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginModel].
extension LoginModelPatterns on LoginModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginModel value)  $default,){
final _that = this;
switch (_that) {
case _LoginModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginModel value)?  $default,){
final _that = this;
switch (_that) {
case _LoginModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? status,  String? message, @JsonKey(name: 'user_data')  UserData? userData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginModel() when $default != null:
return $default(_that.status,_that.message,_that.userData);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? status,  String? message, @JsonKey(name: 'user_data')  UserData? userData)  $default,) {final _that = this;
switch (_that) {
case _LoginModel():
return $default(_that.status,_that.message,_that.userData);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? status,  String? message, @JsonKey(name: 'user_data')  UserData? userData)?  $default,) {final _that = this;
switch (_that) {
case _LoginModel() when $default != null:
return $default(_that.status,_that.message,_that.userData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginModel implements LoginModel {
   _LoginModel({this.status, this.message, @JsonKey(name: 'user_data') this.userData});
  factory _LoginModel.fromJson(Map<String, dynamic> json) => _$LoginModelFromJson(json);

@override final  bool? status;
@override final  String? message;
@override@JsonKey(name: 'user_data') final  UserData? userData;

/// Create a copy of LoginModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginModelCopyWith<_LoginModel> get copyWith => __$LoginModelCopyWithImpl<_LoginModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.userData, userData) || other.userData == userData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,userData);

@override
String toString() {
  return 'LoginModel(status: $status, message: $message, userData: $userData)';
}


}

/// @nodoc
abstract mixin class _$LoginModelCopyWith<$Res> implements $LoginModelCopyWith<$Res> {
  factory _$LoginModelCopyWith(_LoginModel value, $Res Function(_LoginModel) _then) = __$LoginModelCopyWithImpl;
@override @useResult
$Res call({
 bool? status, String? message,@JsonKey(name: 'user_data') UserData? userData
});


@override $UserDataCopyWith<$Res>? get userData;

}
/// @nodoc
class __$LoginModelCopyWithImpl<$Res>
    implements _$LoginModelCopyWith<$Res> {
  __$LoginModelCopyWithImpl(this._self, this._then);

  final _LoginModel _self;
  final $Res Function(_LoginModel) _then;

/// Create a copy of LoginModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? message = freezed,Object? userData = freezed,}) {
  return _then(_LoginModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,userData: freezed == userData ? _self.userData : userData // ignore: cast_nullable_to_non_nullable
as UserData?,
  ));
}

/// Create a copy of LoginModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataCopyWith<$Res>? get userData {
    if (_self.userData == null) {
    return null;
  }

  return $UserDataCopyWith<$Res>(_self.userData!, (value) {
    return _then(_self.copyWith(userData: value));
  });
}
}


/// @nodoc
mixin _$UserData {

 int? get id;@JsonKey(name: 'kvg_profile_id') String? get kvgProfileId; String? get name;@JsonKey(name: 'phone_number') String? get phoneNumber;@JsonKey(name: 'alt_phone_number') String? get altPhoneNumber; String? get education; String? get gender; String? get dob; String? get tob; String? get height; String? get weight;@JsonKey(name: 'body_type') String? get bodyType;@JsonKey(name: 'body_colour') String? get bodyColour;@JsonKey(name: 'kongu_kulam') String? get konguKulam;@JsonKey(name: 'single_parent') String? get singleParent; String? get district;@JsonKey(name: 'subdistrict') String? get subdistrict;@JsonKey(name: 'father_name') String? get fatherName;@JsonKey(name: 'mother_name') String? get motherName;@JsonKey(name: 'aadhar_address') String? get aadharAddress; String? get expectation;@JsonKey(name: 'brother_married') int? get brotherMarried;@JsonKey(name: 'brother_unmarried') int? get brotherUnmarried;@JsonKey(name: 'sister_married') int? get sisterMarried;@JsonKey(name: 'sister_unmarried') int? get sisterUnmarried; String? get rasi; String? get natchathiram;@JsonKey(name: 'property_value') String? get propertyValue;@JsonKey(name: 'acres_value') String? get acresValue; String? get employed; String? get occupation;@JsonKey(name: 'annual_income') String? get annualIncome;@JsonKey(name: 'work_location') String? get workLocation;@JsonKey(name: 'profile_img1') String? get profileImg1;@JsonKey(name: 'profile_img2') String? get profileImg2;@JsonKey(name: 'profile_img3') String? get profileImg3;@JsonKey(name: 'community_certificate') String? get communityCertificate;@JsonKey(name: 'id_front') String? get idFront;@JsonKey(name: 'id_back') String? get idBack;@JsonKey(name: 'jathagam_full') String? get jathagamFull;@JsonKey(name: 'jathagam_half') String? get jathagamHalf; String? get email;@JsonKey(name: 'password_pin') String? get passwordPin;@JsonKey(name: 'created_at') String? get createdAt;
/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDataCopyWith<UserData> get copyWith => _$UserDataCopyWithImpl<UserData>(this as UserData, _$identity);

  /// Serializes this UserData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserData&&(identical(other.id, id) || other.id == id)&&(identical(other.kvgProfileId, kvgProfileId) || other.kvgProfileId == kvgProfileId)&&(identical(other.name, name) || other.name == name)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.altPhoneNumber, altPhoneNumber) || other.altPhoneNumber == altPhoneNumber)&&(identical(other.education, education) || other.education == education)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.tob, tob) || other.tob == tob)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.bodyType, bodyType) || other.bodyType == bodyType)&&(identical(other.bodyColour, bodyColour) || other.bodyColour == bodyColour)&&(identical(other.konguKulam, konguKulam) || other.konguKulam == konguKulam)&&(identical(other.singleParent, singleParent) || other.singleParent == singleParent)&&(identical(other.district, district) || other.district == district)&&(identical(other.subdistrict, subdistrict) || other.subdistrict == subdistrict)&&(identical(other.fatherName, fatherName) || other.fatherName == fatherName)&&(identical(other.motherName, motherName) || other.motherName == motherName)&&(identical(other.aadharAddress, aadharAddress) || other.aadharAddress == aadharAddress)&&(identical(other.expectation, expectation) || other.expectation == expectation)&&(identical(other.brotherMarried, brotherMarried) || other.brotherMarried == brotherMarried)&&(identical(other.brotherUnmarried, brotherUnmarried) || other.brotherUnmarried == brotherUnmarried)&&(identical(other.sisterMarried, sisterMarried) || other.sisterMarried == sisterMarried)&&(identical(other.sisterUnmarried, sisterUnmarried) || other.sisterUnmarried == sisterUnmarried)&&(identical(other.rasi, rasi) || other.rasi == rasi)&&(identical(other.natchathiram, natchathiram) || other.natchathiram == natchathiram)&&(identical(other.propertyValue, propertyValue) || other.propertyValue == propertyValue)&&(identical(other.acresValue, acresValue) || other.acresValue == acresValue)&&(identical(other.employed, employed) || other.employed == employed)&&(identical(other.occupation, occupation) || other.occupation == occupation)&&(identical(other.annualIncome, annualIncome) || other.annualIncome == annualIncome)&&(identical(other.workLocation, workLocation) || other.workLocation == workLocation)&&(identical(other.profileImg1, profileImg1) || other.profileImg1 == profileImg1)&&(identical(other.profileImg2, profileImg2) || other.profileImg2 == profileImg2)&&(identical(other.profileImg3, profileImg3) || other.profileImg3 == profileImg3)&&(identical(other.communityCertificate, communityCertificate) || other.communityCertificate == communityCertificate)&&(identical(other.idFront, idFront) || other.idFront == idFront)&&(identical(other.idBack, idBack) || other.idBack == idBack)&&(identical(other.jathagamFull, jathagamFull) || other.jathagamFull == jathagamFull)&&(identical(other.jathagamHalf, jathagamHalf) || other.jathagamHalf == jathagamHalf)&&(identical(other.email, email) || other.email == email)&&(identical(other.passwordPin, passwordPin) || other.passwordPin == passwordPin)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,kvgProfileId,name,phoneNumber,altPhoneNumber,education,gender,dob,tob,height,weight,bodyType,bodyColour,konguKulam,singleParent,district,subdistrict,fatherName,motherName,aadharAddress,expectation,brotherMarried,brotherUnmarried,sisterMarried,sisterUnmarried,rasi,natchathiram,propertyValue,acresValue,employed,occupation,annualIncome,workLocation,profileImg1,profileImg2,profileImg3,communityCertificate,idFront,idBack,jathagamFull,jathagamHalf,email,passwordPin,createdAt]);

@override
String toString() {
  return 'UserData(id: $id, kvgProfileId: $kvgProfileId, name: $name, phoneNumber: $phoneNumber, altPhoneNumber: $altPhoneNumber, education: $education, gender: $gender, dob: $dob, tob: $tob, height: $height, weight: $weight, bodyType: $bodyType, bodyColour: $bodyColour, konguKulam: $konguKulam, singleParent: $singleParent, district: $district, subdistrict: $subdistrict, fatherName: $fatherName, motherName: $motherName, aadharAddress: $aadharAddress, expectation: $expectation, brotherMarried: $brotherMarried, brotherUnmarried: $brotherUnmarried, sisterMarried: $sisterMarried, sisterUnmarried: $sisterUnmarried, rasi: $rasi, natchathiram: $natchathiram, propertyValue: $propertyValue, acresValue: $acresValue, employed: $employed, occupation: $occupation, annualIncome: $annualIncome, workLocation: $workLocation, profileImg1: $profileImg1, profileImg2: $profileImg2, profileImg3: $profileImg3, communityCertificate: $communityCertificate, idFront: $idFront, idBack: $idBack, jathagamFull: $jathagamFull, jathagamHalf: $jathagamHalf, email: $email, passwordPin: $passwordPin, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $UserDataCopyWith<$Res>  {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) _then) = _$UserDataCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'kvg_profile_id') String? kvgProfileId, String? name,@JsonKey(name: 'phone_number') String? phoneNumber,@JsonKey(name: 'alt_phone_number') String? altPhoneNumber, String? education, String? gender, String? dob, String? tob, String? height, String? weight,@JsonKey(name: 'body_type') String? bodyType,@JsonKey(name: 'body_colour') String? bodyColour,@JsonKey(name: 'kongu_kulam') String? konguKulam,@JsonKey(name: 'single_parent') String? singleParent, String? district,@JsonKey(name: 'subdistrict') String? subdistrict,@JsonKey(name: 'father_name') String? fatherName,@JsonKey(name: 'mother_name') String? motherName,@JsonKey(name: 'aadhar_address') String? aadharAddress, String? expectation,@JsonKey(name: 'brother_married') int? brotherMarried,@JsonKey(name: 'brother_unmarried') int? brotherUnmarried,@JsonKey(name: 'sister_married') int? sisterMarried,@JsonKey(name: 'sister_unmarried') int? sisterUnmarried, String? rasi, String? natchathiram,@JsonKey(name: 'property_value') String? propertyValue,@JsonKey(name: 'acres_value') String? acresValue, String? employed, String? occupation,@JsonKey(name: 'annual_income') String? annualIncome,@JsonKey(name: 'work_location') String? workLocation,@JsonKey(name: 'profile_img1') String? profileImg1,@JsonKey(name: 'profile_img2') String? profileImg2,@JsonKey(name: 'profile_img3') String? profileImg3,@JsonKey(name: 'community_certificate') String? communityCertificate,@JsonKey(name: 'id_front') String? idFront,@JsonKey(name: 'id_back') String? idBack,@JsonKey(name: 'jathagam_full') String? jathagamFull,@JsonKey(name: 'jathagam_half') String? jathagamHalf, String? email,@JsonKey(name: 'password_pin') String? passwordPin,@JsonKey(name: 'created_at') String? createdAt
});




}
/// @nodoc
class _$UserDataCopyWithImpl<$Res>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._self, this._then);

  final UserData _self;
  final $Res Function(UserData) _then;

/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? kvgProfileId = freezed,Object? name = freezed,Object? phoneNumber = freezed,Object? altPhoneNumber = freezed,Object? education = freezed,Object? gender = freezed,Object? dob = freezed,Object? tob = freezed,Object? height = freezed,Object? weight = freezed,Object? bodyType = freezed,Object? bodyColour = freezed,Object? konguKulam = freezed,Object? singleParent = freezed,Object? district = freezed,Object? subdistrict = freezed,Object? fatherName = freezed,Object? motherName = freezed,Object? aadharAddress = freezed,Object? expectation = freezed,Object? brotherMarried = freezed,Object? brotherUnmarried = freezed,Object? sisterMarried = freezed,Object? sisterUnmarried = freezed,Object? rasi = freezed,Object? natchathiram = freezed,Object? propertyValue = freezed,Object? acresValue = freezed,Object? employed = freezed,Object? occupation = freezed,Object? annualIncome = freezed,Object? workLocation = freezed,Object? profileImg1 = freezed,Object? profileImg2 = freezed,Object? profileImg3 = freezed,Object? communityCertificate = freezed,Object? idFront = freezed,Object? idBack = freezed,Object? jathagamFull = freezed,Object? jathagamHalf = freezed,Object? email = freezed,Object? passwordPin = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,kvgProfileId: freezed == kvgProfileId ? _self.kvgProfileId : kvgProfileId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,altPhoneNumber: freezed == altPhoneNumber ? _self.altPhoneNumber : altPhoneNumber // ignore: cast_nullable_to_non_nullable
as String?,education: freezed == education ? _self.education : education // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as String?,tob: freezed == tob ? _self.tob : tob // ignore: cast_nullable_to_non_nullable
as String?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as String?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as String?,bodyType: freezed == bodyType ? _self.bodyType : bodyType // ignore: cast_nullable_to_non_nullable
as String?,bodyColour: freezed == bodyColour ? _self.bodyColour : bodyColour // ignore: cast_nullable_to_non_nullable
as String?,konguKulam: freezed == konguKulam ? _self.konguKulam : konguKulam // ignore: cast_nullable_to_non_nullable
as String?,singleParent: freezed == singleParent ? _self.singleParent : singleParent // ignore: cast_nullable_to_non_nullable
as String?,district: freezed == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String?,subdistrict: freezed == subdistrict ? _self.subdistrict : subdistrict // ignore: cast_nullable_to_non_nullable
as String?,fatherName: freezed == fatherName ? _self.fatherName : fatherName // ignore: cast_nullable_to_non_nullable
as String?,motherName: freezed == motherName ? _self.motherName : motherName // ignore: cast_nullable_to_non_nullable
as String?,aadharAddress: freezed == aadharAddress ? _self.aadharAddress : aadharAddress // ignore: cast_nullable_to_non_nullable
as String?,expectation: freezed == expectation ? _self.expectation : expectation // ignore: cast_nullable_to_non_nullable
as String?,brotherMarried: freezed == brotherMarried ? _self.brotherMarried : brotherMarried // ignore: cast_nullable_to_non_nullable
as int?,brotherUnmarried: freezed == brotherUnmarried ? _self.brotherUnmarried : brotherUnmarried // ignore: cast_nullable_to_non_nullable
as int?,sisterMarried: freezed == sisterMarried ? _self.sisterMarried : sisterMarried // ignore: cast_nullable_to_non_nullable
as int?,sisterUnmarried: freezed == sisterUnmarried ? _self.sisterUnmarried : sisterUnmarried // ignore: cast_nullable_to_non_nullable
as int?,rasi: freezed == rasi ? _self.rasi : rasi // ignore: cast_nullable_to_non_nullable
as String?,natchathiram: freezed == natchathiram ? _self.natchathiram : natchathiram // ignore: cast_nullable_to_non_nullable
as String?,propertyValue: freezed == propertyValue ? _self.propertyValue : propertyValue // ignore: cast_nullable_to_non_nullable
as String?,acresValue: freezed == acresValue ? _self.acresValue : acresValue // ignore: cast_nullable_to_non_nullable
as String?,employed: freezed == employed ? _self.employed : employed // ignore: cast_nullable_to_non_nullable
as String?,occupation: freezed == occupation ? _self.occupation : occupation // ignore: cast_nullable_to_non_nullable
as String?,annualIncome: freezed == annualIncome ? _self.annualIncome : annualIncome // ignore: cast_nullable_to_non_nullable
as String?,workLocation: freezed == workLocation ? _self.workLocation : workLocation // ignore: cast_nullable_to_non_nullable
as String?,profileImg1: freezed == profileImg1 ? _self.profileImg1 : profileImg1 // ignore: cast_nullable_to_non_nullable
as String?,profileImg2: freezed == profileImg2 ? _self.profileImg2 : profileImg2 // ignore: cast_nullable_to_non_nullable
as String?,profileImg3: freezed == profileImg3 ? _self.profileImg3 : profileImg3 // ignore: cast_nullable_to_non_nullable
as String?,communityCertificate: freezed == communityCertificate ? _self.communityCertificate : communityCertificate // ignore: cast_nullable_to_non_nullable
as String?,idFront: freezed == idFront ? _self.idFront : idFront // ignore: cast_nullable_to_non_nullable
as String?,idBack: freezed == idBack ? _self.idBack : idBack // ignore: cast_nullable_to_non_nullable
as String?,jathagamFull: freezed == jathagamFull ? _self.jathagamFull : jathagamFull // ignore: cast_nullable_to_non_nullable
as String?,jathagamHalf: freezed == jathagamHalf ? _self.jathagamHalf : jathagamHalf // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,passwordPin: freezed == passwordPin ? _self.passwordPin : passwordPin // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserData].
extension UserDataPatterns on UserData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserData value)  $default,){
final _that = this;
switch (_that) {
case _UserData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserData value)?  $default,){
final _that = this;
switch (_that) {
case _UserData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'kvg_profile_id')  String? kvgProfileId,  String? name, @JsonKey(name: 'phone_number')  String? phoneNumber, @JsonKey(name: 'alt_phone_number')  String? altPhoneNumber,  String? education,  String? gender,  String? dob,  String? tob,  String? height,  String? weight, @JsonKey(name: 'body_type')  String? bodyType, @JsonKey(name: 'body_colour')  String? bodyColour, @JsonKey(name: 'kongu_kulam')  String? konguKulam, @JsonKey(name: 'single_parent')  String? singleParent,  String? district, @JsonKey(name: 'subdistrict')  String? subdistrict, @JsonKey(name: 'father_name')  String? fatherName, @JsonKey(name: 'mother_name')  String? motherName, @JsonKey(name: 'aadhar_address')  String? aadharAddress,  String? expectation, @JsonKey(name: 'brother_married')  int? brotherMarried, @JsonKey(name: 'brother_unmarried')  int? brotherUnmarried, @JsonKey(name: 'sister_married')  int? sisterMarried, @JsonKey(name: 'sister_unmarried')  int? sisterUnmarried,  String? rasi,  String? natchathiram, @JsonKey(name: 'property_value')  String? propertyValue, @JsonKey(name: 'acres_value')  String? acresValue,  String? employed,  String? occupation, @JsonKey(name: 'annual_income')  String? annualIncome, @JsonKey(name: 'work_location')  String? workLocation, @JsonKey(name: 'profile_img1')  String? profileImg1, @JsonKey(name: 'profile_img2')  String? profileImg2, @JsonKey(name: 'profile_img3')  String? profileImg3, @JsonKey(name: 'community_certificate')  String? communityCertificate, @JsonKey(name: 'id_front')  String? idFront, @JsonKey(name: 'id_back')  String? idBack, @JsonKey(name: 'jathagam_full')  String? jathagamFull, @JsonKey(name: 'jathagam_half')  String? jathagamHalf,  String? email, @JsonKey(name: 'password_pin')  String? passwordPin, @JsonKey(name: 'created_at')  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserData() when $default != null:
return $default(_that.id,_that.kvgProfileId,_that.name,_that.phoneNumber,_that.altPhoneNumber,_that.education,_that.gender,_that.dob,_that.tob,_that.height,_that.weight,_that.bodyType,_that.bodyColour,_that.konguKulam,_that.singleParent,_that.district,_that.subdistrict,_that.fatherName,_that.motherName,_that.aadharAddress,_that.expectation,_that.brotherMarried,_that.brotherUnmarried,_that.sisterMarried,_that.sisterUnmarried,_that.rasi,_that.natchathiram,_that.propertyValue,_that.acresValue,_that.employed,_that.occupation,_that.annualIncome,_that.workLocation,_that.profileImg1,_that.profileImg2,_that.profileImg3,_that.communityCertificate,_that.idFront,_that.idBack,_that.jathagamFull,_that.jathagamHalf,_that.email,_that.passwordPin,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'kvg_profile_id')  String? kvgProfileId,  String? name, @JsonKey(name: 'phone_number')  String? phoneNumber, @JsonKey(name: 'alt_phone_number')  String? altPhoneNumber,  String? education,  String? gender,  String? dob,  String? tob,  String? height,  String? weight, @JsonKey(name: 'body_type')  String? bodyType, @JsonKey(name: 'body_colour')  String? bodyColour, @JsonKey(name: 'kongu_kulam')  String? konguKulam, @JsonKey(name: 'single_parent')  String? singleParent,  String? district, @JsonKey(name: 'subdistrict')  String? subdistrict, @JsonKey(name: 'father_name')  String? fatherName, @JsonKey(name: 'mother_name')  String? motherName, @JsonKey(name: 'aadhar_address')  String? aadharAddress,  String? expectation, @JsonKey(name: 'brother_married')  int? brotherMarried, @JsonKey(name: 'brother_unmarried')  int? brotherUnmarried, @JsonKey(name: 'sister_married')  int? sisterMarried, @JsonKey(name: 'sister_unmarried')  int? sisterUnmarried,  String? rasi,  String? natchathiram, @JsonKey(name: 'property_value')  String? propertyValue, @JsonKey(name: 'acres_value')  String? acresValue,  String? employed,  String? occupation, @JsonKey(name: 'annual_income')  String? annualIncome, @JsonKey(name: 'work_location')  String? workLocation, @JsonKey(name: 'profile_img1')  String? profileImg1, @JsonKey(name: 'profile_img2')  String? profileImg2, @JsonKey(name: 'profile_img3')  String? profileImg3, @JsonKey(name: 'community_certificate')  String? communityCertificate, @JsonKey(name: 'id_front')  String? idFront, @JsonKey(name: 'id_back')  String? idBack, @JsonKey(name: 'jathagam_full')  String? jathagamFull, @JsonKey(name: 'jathagam_half')  String? jathagamHalf,  String? email, @JsonKey(name: 'password_pin')  String? passwordPin, @JsonKey(name: 'created_at')  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _UserData():
return $default(_that.id,_that.kvgProfileId,_that.name,_that.phoneNumber,_that.altPhoneNumber,_that.education,_that.gender,_that.dob,_that.tob,_that.height,_that.weight,_that.bodyType,_that.bodyColour,_that.konguKulam,_that.singleParent,_that.district,_that.subdistrict,_that.fatherName,_that.motherName,_that.aadharAddress,_that.expectation,_that.brotherMarried,_that.brotherUnmarried,_that.sisterMarried,_that.sisterUnmarried,_that.rasi,_that.natchathiram,_that.propertyValue,_that.acresValue,_that.employed,_that.occupation,_that.annualIncome,_that.workLocation,_that.profileImg1,_that.profileImg2,_that.profileImg3,_that.communityCertificate,_that.idFront,_that.idBack,_that.jathagamFull,_that.jathagamHalf,_that.email,_that.passwordPin,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'kvg_profile_id')  String? kvgProfileId,  String? name, @JsonKey(name: 'phone_number')  String? phoneNumber, @JsonKey(name: 'alt_phone_number')  String? altPhoneNumber,  String? education,  String? gender,  String? dob,  String? tob,  String? height,  String? weight, @JsonKey(name: 'body_type')  String? bodyType, @JsonKey(name: 'body_colour')  String? bodyColour, @JsonKey(name: 'kongu_kulam')  String? konguKulam, @JsonKey(name: 'single_parent')  String? singleParent,  String? district, @JsonKey(name: 'subdistrict')  String? subdistrict, @JsonKey(name: 'father_name')  String? fatherName, @JsonKey(name: 'mother_name')  String? motherName, @JsonKey(name: 'aadhar_address')  String? aadharAddress,  String? expectation, @JsonKey(name: 'brother_married')  int? brotherMarried, @JsonKey(name: 'brother_unmarried')  int? brotherUnmarried, @JsonKey(name: 'sister_married')  int? sisterMarried, @JsonKey(name: 'sister_unmarried')  int? sisterUnmarried,  String? rasi,  String? natchathiram, @JsonKey(name: 'property_value')  String? propertyValue, @JsonKey(name: 'acres_value')  String? acresValue,  String? employed,  String? occupation, @JsonKey(name: 'annual_income')  String? annualIncome, @JsonKey(name: 'work_location')  String? workLocation, @JsonKey(name: 'profile_img1')  String? profileImg1, @JsonKey(name: 'profile_img2')  String? profileImg2, @JsonKey(name: 'profile_img3')  String? profileImg3, @JsonKey(name: 'community_certificate')  String? communityCertificate, @JsonKey(name: 'id_front')  String? idFront, @JsonKey(name: 'id_back')  String? idBack, @JsonKey(name: 'jathagam_full')  String? jathagamFull, @JsonKey(name: 'jathagam_half')  String? jathagamHalf,  String? email, @JsonKey(name: 'password_pin')  String? passwordPin, @JsonKey(name: 'created_at')  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _UserData() when $default != null:
return $default(_that.id,_that.kvgProfileId,_that.name,_that.phoneNumber,_that.altPhoneNumber,_that.education,_that.gender,_that.dob,_that.tob,_that.height,_that.weight,_that.bodyType,_that.bodyColour,_that.konguKulam,_that.singleParent,_that.district,_that.subdistrict,_that.fatherName,_that.motherName,_that.aadharAddress,_that.expectation,_that.brotherMarried,_that.brotherUnmarried,_that.sisterMarried,_that.sisterUnmarried,_that.rasi,_that.natchathiram,_that.propertyValue,_that.acresValue,_that.employed,_that.occupation,_that.annualIncome,_that.workLocation,_that.profileImg1,_that.profileImg2,_that.profileImg3,_that.communityCertificate,_that.idFront,_that.idBack,_that.jathagamFull,_that.jathagamHalf,_that.email,_that.passwordPin,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserData implements UserData {
   _UserData({this.id, @JsonKey(name: 'kvg_profile_id') this.kvgProfileId, this.name, @JsonKey(name: 'phone_number') this.phoneNumber, @JsonKey(name: 'alt_phone_number') this.altPhoneNumber, this.education, this.gender, this.dob, this.tob, this.height, this.weight, @JsonKey(name: 'body_type') this.bodyType, @JsonKey(name: 'body_colour') this.bodyColour, @JsonKey(name: 'kongu_kulam') this.konguKulam, @JsonKey(name: 'single_parent') this.singleParent, this.district, @JsonKey(name: 'subdistrict') this.subdistrict, @JsonKey(name: 'father_name') this.fatherName, @JsonKey(name: 'mother_name') this.motherName, @JsonKey(name: 'aadhar_address') this.aadharAddress, this.expectation, @JsonKey(name: 'brother_married') this.brotherMarried, @JsonKey(name: 'brother_unmarried') this.brotherUnmarried, @JsonKey(name: 'sister_married') this.sisterMarried, @JsonKey(name: 'sister_unmarried') this.sisterUnmarried, this.rasi, this.natchathiram, @JsonKey(name: 'property_value') this.propertyValue, @JsonKey(name: 'acres_value') this.acresValue, this.employed, this.occupation, @JsonKey(name: 'annual_income') this.annualIncome, @JsonKey(name: 'work_location') this.workLocation, @JsonKey(name: 'profile_img1') this.profileImg1, @JsonKey(name: 'profile_img2') this.profileImg2, @JsonKey(name: 'profile_img3') this.profileImg3, @JsonKey(name: 'community_certificate') this.communityCertificate, @JsonKey(name: 'id_front') this.idFront, @JsonKey(name: 'id_back') this.idBack, @JsonKey(name: 'jathagam_full') this.jathagamFull, @JsonKey(name: 'jathagam_half') this.jathagamHalf, this.email, @JsonKey(name: 'password_pin') this.passwordPin, @JsonKey(name: 'created_at') this.createdAt});
  factory _UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'kvg_profile_id') final  String? kvgProfileId;
@override final  String? name;
@override@JsonKey(name: 'phone_number') final  String? phoneNumber;
@override@JsonKey(name: 'alt_phone_number') final  String? altPhoneNumber;
@override final  String? education;
@override final  String? gender;
@override final  String? dob;
@override final  String? tob;
@override final  String? height;
@override final  String? weight;
@override@JsonKey(name: 'body_type') final  String? bodyType;
@override@JsonKey(name: 'body_colour') final  String? bodyColour;
@override@JsonKey(name: 'kongu_kulam') final  String? konguKulam;
@override@JsonKey(name: 'single_parent') final  String? singleParent;
@override final  String? district;
@override@JsonKey(name: 'subdistrict') final  String? subdistrict;
@override@JsonKey(name: 'father_name') final  String? fatherName;
@override@JsonKey(name: 'mother_name') final  String? motherName;
@override@JsonKey(name: 'aadhar_address') final  String? aadharAddress;
@override final  String? expectation;
@override@JsonKey(name: 'brother_married') final  int? brotherMarried;
@override@JsonKey(name: 'brother_unmarried') final  int? brotherUnmarried;
@override@JsonKey(name: 'sister_married') final  int? sisterMarried;
@override@JsonKey(name: 'sister_unmarried') final  int? sisterUnmarried;
@override final  String? rasi;
@override final  String? natchathiram;
@override@JsonKey(name: 'property_value') final  String? propertyValue;
@override@JsonKey(name: 'acres_value') final  String? acresValue;
@override final  String? employed;
@override final  String? occupation;
@override@JsonKey(name: 'annual_income') final  String? annualIncome;
@override@JsonKey(name: 'work_location') final  String? workLocation;
@override@JsonKey(name: 'profile_img1') final  String? profileImg1;
@override@JsonKey(name: 'profile_img2') final  String? profileImg2;
@override@JsonKey(name: 'profile_img3') final  String? profileImg3;
@override@JsonKey(name: 'community_certificate') final  String? communityCertificate;
@override@JsonKey(name: 'id_front') final  String? idFront;
@override@JsonKey(name: 'id_back') final  String? idBack;
@override@JsonKey(name: 'jathagam_full') final  String? jathagamFull;
@override@JsonKey(name: 'jathagam_half') final  String? jathagamHalf;
@override final  String? email;
@override@JsonKey(name: 'password_pin') final  String? passwordPin;
@override@JsonKey(name: 'created_at') final  String? createdAt;

/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDataCopyWith<_UserData> get copyWith => __$UserDataCopyWithImpl<_UserData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserData&&(identical(other.id, id) || other.id == id)&&(identical(other.kvgProfileId, kvgProfileId) || other.kvgProfileId == kvgProfileId)&&(identical(other.name, name) || other.name == name)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.altPhoneNumber, altPhoneNumber) || other.altPhoneNumber == altPhoneNumber)&&(identical(other.education, education) || other.education == education)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.tob, tob) || other.tob == tob)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.bodyType, bodyType) || other.bodyType == bodyType)&&(identical(other.bodyColour, bodyColour) || other.bodyColour == bodyColour)&&(identical(other.konguKulam, konguKulam) || other.konguKulam == konguKulam)&&(identical(other.singleParent, singleParent) || other.singleParent == singleParent)&&(identical(other.district, district) || other.district == district)&&(identical(other.subdistrict, subdistrict) || other.subdistrict == subdistrict)&&(identical(other.fatherName, fatherName) || other.fatherName == fatherName)&&(identical(other.motherName, motherName) || other.motherName == motherName)&&(identical(other.aadharAddress, aadharAddress) || other.aadharAddress == aadharAddress)&&(identical(other.expectation, expectation) || other.expectation == expectation)&&(identical(other.brotherMarried, brotherMarried) || other.brotherMarried == brotherMarried)&&(identical(other.brotherUnmarried, brotherUnmarried) || other.brotherUnmarried == brotherUnmarried)&&(identical(other.sisterMarried, sisterMarried) || other.sisterMarried == sisterMarried)&&(identical(other.sisterUnmarried, sisterUnmarried) || other.sisterUnmarried == sisterUnmarried)&&(identical(other.rasi, rasi) || other.rasi == rasi)&&(identical(other.natchathiram, natchathiram) || other.natchathiram == natchathiram)&&(identical(other.propertyValue, propertyValue) || other.propertyValue == propertyValue)&&(identical(other.acresValue, acresValue) || other.acresValue == acresValue)&&(identical(other.employed, employed) || other.employed == employed)&&(identical(other.occupation, occupation) || other.occupation == occupation)&&(identical(other.annualIncome, annualIncome) || other.annualIncome == annualIncome)&&(identical(other.workLocation, workLocation) || other.workLocation == workLocation)&&(identical(other.profileImg1, profileImg1) || other.profileImg1 == profileImg1)&&(identical(other.profileImg2, profileImg2) || other.profileImg2 == profileImg2)&&(identical(other.profileImg3, profileImg3) || other.profileImg3 == profileImg3)&&(identical(other.communityCertificate, communityCertificate) || other.communityCertificate == communityCertificate)&&(identical(other.idFront, idFront) || other.idFront == idFront)&&(identical(other.idBack, idBack) || other.idBack == idBack)&&(identical(other.jathagamFull, jathagamFull) || other.jathagamFull == jathagamFull)&&(identical(other.jathagamHalf, jathagamHalf) || other.jathagamHalf == jathagamHalf)&&(identical(other.email, email) || other.email == email)&&(identical(other.passwordPin, passwordPin) || other.passwordPin == passwordPin)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,kvgProfileId,name,phoneNumber,altPhoneNumber,education,gender,dob,tob,height,weight,bodyType,bodyColour,konguKulam,singleParent,district,subdistrict,fatherName,motherName,aadharAddress,expectation,brotherMarried,brotherUnmarried,sisterMarried,sisterUnmarried,rasi,natchathiram,propertyValue,acresValue,employed,occupation,annualIncome,workLocation,profileImg1,profileImg2,profileImg3,communityCertificate,idFront,idBack,jathagamFull,jathagamHalf,email,passwordPin,createdAt]);

@override
String toString() {
  return 'UserData(id: $id, kvgProfileId: $kvgProfileId, name: $name, phoneNumber: $phoneNumber, altPhoneNumber: $altPhoneNumber, education: $education, gender: $gender, dob: $dob, tob: $tob, height: $height, weight: $weight, bodyType: $bodyType, bodyColour: $bodyColour, konguKulam: $konguKulam, singleParent: $singleParent, district: $district, subdistrict: $subdistrict, fatherName: $fatherName, motherName: $motherName, aadharAddress: $aadharAddress, expectation: $expectation, brotherMarried: $brotherMarried, brotherUnmarried: $brotherUnmarried, sisterMarried: $sisterMarried, sisterUnmarried: $sisterUnmarried, rasi: $rasi, natchathiram: $natchathiram, propertyValue: $propertyValue, acresValue: $acresValue, employed: $employed, occupation: $occupation, annualIncome: $annualIncome, workLocation: $workLocation, profileImg1: $profileImg1, profileImg2: $profileImg2, profileImg3: $profileImg3, communityCertificate: $communityCertificate, idFront: $idFront, idBack: $idBack, jathagamFull: $jathagamFull, jathagamHalf: $jathagamHalf, email: $email, passwordPin: $passwordPin, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$UserDataCopyWith(_UserData value, $Res Function(_UserData) _then) = __$UserDataCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'kvg_profile_id') String? kvgProfileId, String? name,@JsonKey(name: 'phone_number') String? phoneNumber,@JsonKey(name: 'alt_phone_number') String? altPhoneNumber, String? education, String? gender, String? dob, String? tob, String? height, String? weight,@JsonKey(name: 'body_type') String? bodyType,@JsonKey(name: 'body_colour') String? bodyColour,@JsonKey(name: 'kongu_kulam') String? konguKulam,@JsonKey(name: 'single_parent') String? singleParent, String? district,@JsonKey(name: 'subdistrict') String? subdistrict,@JsonKey(name: 'father_name') String? fatherName,@JsonKey(name: 'mother_name') String? motherName,@JsonKey(name: 'aadhar_address') String? aadharAddress, String? expectation,@JsonKey(name: 'brother_married') int? brotherMarried,@JsonKey(name: 'brother_unmarried') int? brotherUnmarried,@JsonKey(name: 'sister_married') int? sisterMarried,@JsonKey(name: 'sister_unmarried') int? sisterUnmarried, String? rasi, String? natchathiram,@JsonKey(name: 'property_value') String? propertyValue,@JsonKey(name: 'acres_value') String? acresValue, String? employed, String? occupation,@JsonKey(name: 'annual_income') String? annualIncome,@JsonKey(name: 'work_location') String? workLocation,@JsonKey(name: 'profile_img1') String? profileImg1,@JsonKey(name: 'profile_img2') String? profileImg2,@JsonKey(name: 'profile_img3') String? profileImg3,@JsonKey(name: 'community_certificate') String? communityCertificate,@JsonKey(name: 'id_front') String? idFront,@JsonKey(name: 'id_back') String? idBack,@JsonKey(name: 'jathagam_full') String? jathagamFull,@JsonKey(name: 'jathagam_half') String? jathagamHalf, String? email,@JsonKey(name: 'password_pin') String? passwordPin,@JsonKey(name: 'created_at') String? createdAt
});




}
/// @nodoc
class __$UserDataCopyWithImpl<$Res>
    implements _$UserDataCopyWith<$Res> {
  __$UserDataCopyWithImpl(this._self, this._then);

  final _UserData _self;
  final $Res Function(_UserData) _then;

/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? kvgProfileId = freezed,Object? name = freezed,Object? phoneNumber = freezed,Object? altPhoneNumber = freezed,Object? education = freezed,Object? gender = freezed,Object? dob = freezed,Object? tob = freezed,Object? height = freezed,Object? weight = freezed,Object? bodyType = freezed,Object? bodyColour = freezed,Object? konguKulam = freezed,Object? singleParent = freezed,Object? district = freezed,Object? subdistrict = freezed,Object? fatherName = freezed,Object? motherName = freezed,Object? aadharAddress = freezed,Object? expectation = freezed,Object? brotherMarried = freezed,Object? brotherUnmarried = freezed,Object? sisterMarried = freezed,Object? sisterUnmarried = freezed,Object? rasi = freezed,Object? natchathiram = freezed,Object? propertyValue = freezed,Object? acresValue = freezed,Object? employed = freezed,Object? occupation = freezed,Object? annualIncome = freezed,Object? workLocation = freezed,Object? profileImg1 = freezed,Object? profileImg2 = freezed,Object? profileImg3 = freezed,Object? communityCertificate = freezed,Object? idFront = freezed,Object? idBack = freezed,Object? jathagamFull = freezed,Object? jathagamHalf = freezed,Object? email = freezed,Object? passwordPin = freezed,Object? createdAt = freezed,}) {
  return _then(_UserData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,kvgProfileId: freezed == kvgProfileId ? _self.kvgProfileId : kvgProfileId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,altPhoneNumber: freezed == altPhoneNumber ? _self.altPhoneNumber : altPhoneNumber // ignore: cast_nullable_to_non_nullable
as String?,education: freezed == education ? _self.education : education // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as String?,tob: freezed == tob ? _self.tob : tob // ignore: cast_nullable_to_non_nullable
as String?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as String?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as String?,bodyType: freezed == bodyType ? _self.bodyType : bodyType // ignore: cast_nullable_to_non_nullable
as String?,bodyColour: freezed == bodyColour ? _self.bodyColour : bodyColour // ignore: cast_nullable_to_non_nullable
as String?,konguKulam: freezed == konguKulam ? _self.konguKulam : konguKulam // ignore: cast_nullable_to_non_nullable
as String?,singleParent: freezed == singleParent ? _self.singleParent : singleParent // ignore: cast_nullable_to_non_nullable
as String?,district: freezed == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String?,subdistrict: freezed == subdistrict ? _self.subdistrict : subdistrict // ignore: cast_nullable_to_non_nullable
as String?,fatherName: freezed == fatherName ? _self.fatherName : fatherName // ignore: cast_nullable_to_non_nullable
as String?,motherName: freezed == motherName ? _self.motherName : motherName // ignore: cast_nullable_to_non_nullable
as String?,aadharAddress: freezed == aadharAddress ? _self.aadharAddress : aadharAddress // ignore: cast_nullable_to_non_nullable
as String?,expectation: freezed == expectation ? _self.expectation : expectation // ignore: cast_nullable_to_non_nullable
as String?,brotherMarried: freezed == brotherMarried ? _self.brotherMarried : brotherMarried // ignore: cast_nullable_to_non_nullable
as int?,brotherUnmarried: freezed == brotherUnmarried ? _self.brotherUnmarried : brotherUnmarried // ignore: cast_nullable_to_non_nullable
as int?,sisterMarried: freezed == sisterMarried ? _self.sisterMarried : sisterMarried // ignore: cast_nullable_to_non_nullable
as int?,sisterUnmarried: freezed == sisterUnmarried ? _self.sisterUnmarried : sisterUnmarried // ignore: cast_nullable_to_non_nullable
as int?,rasi: freezed == rasi ? _self.rasi : rasi // ignore: cast_nullable_to_non_nullable
as String?,natchathiram: freezed == natchathiram ? _self.natchathiram : natchathiram // ignore: cast_nullable_to_non_nullable
as String?,propertyValue: freezed == propertyValue ? _self.propertyValue : propertyValue // ignore: cast_nullable_to_non_nullable
as String?,acresValue: freezed == acresValue ? _self.acresValue : acresValue // ignore: cast_nullable_to_non_nullable
as String?,employed: freezed == employed ? _self.employed : employed // ignore: cast_nullable_to_non_nullable
as String?,occupation: freezed == occupation ? _self.occupation : occupation // ignore: cast_nullable_to_non_nullable
as String?,annualIncome: freezed == annualIncome ? _self.annualIncome : annualIncome // ignore: cast_nullable_to_non_nullable
as String?,workLocation: freezed == workLocation ? _self.workLocation : workLocation // ignore: cast_nullable_to_non_nullable
as String?,profileImg1: freezed == profileImg1 ? _self.profileImg1 : profileImg1 // ignore: cast_nullable_to_non_nullable
as String?,profileImg2: freezed == profileImg2 ? _self.profileImg2 : profileImg2 // ignore: cast_nullable_to_non_nullable
as String?,profileImg3: freezed == profileImg3 ? _self.profileImg3 : profileImg3 // ignore: cast_nullable_to_non_nullable
as String?,communityCertificate: freezed == communityCertificate ? _self.communityCertificate : communityCertificate // ignore: cast_nullable_to_non_nullable
as String?,idFront: freezed == idFront ? _self.idFront : idFront // ignore: cast_nullable_to_non_nullable
as String?,idBack: freezed == idBack ? _self.idBack : idBack // ignore: cast_nullable_to_non_nullable
as String?,jathagamFull: freezed == jathagamFull ? _self.jathagamFull : jathagamFull // ignore: cast_nullable_to_non_nullable
as String?,jathagamHalf: freezed == jathagamHalf ? _self.jathagamHalf : jathagamHalf // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,passwordPin: freezed == passwordPin ? _self.passwordPin : passwordPin // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
