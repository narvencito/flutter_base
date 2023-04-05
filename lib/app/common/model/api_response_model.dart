class APiResponseModel{
   bool status = false;
   int statusCode = 999;
    dynamic data;
   String? message = '';

  APiResponseModel(this.status, this.statusCode, this.data, this.message);
}