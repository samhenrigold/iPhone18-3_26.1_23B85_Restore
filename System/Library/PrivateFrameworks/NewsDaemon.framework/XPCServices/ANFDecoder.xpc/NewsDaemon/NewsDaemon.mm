int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

id NDANFDecodingServiceXPCInterface()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NDANFDecodingServiceType];
  v1 = [NSSet setWithObjects:objc_opt_class(), 0];
  [v0 setClasses:v1 forSelector:"decodeANFDocumentData:completion:" argumentIndex:0 ofReply:0];

  v2 = objc_opt_class();
  v3 = [NSSet setWithObjects:v2, objc_opt_class(), 0];
  [v0 setClasses:v3 forSelector:"decodeANFDocumentData:completion:" argumentIndex:0 ofReply:1];

  return v0;
}

void sub_100001310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100001440(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000087E8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100001584;
    v4[4] = &unk_1000041D8;
    v4[5] = v4;
    v5 = off_1000041C0;
    v6 = 0;
    qword_1000087E8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000087E8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SXContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10000170C();
  }

  qword_1000087E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100001584(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1000087E8 = result;
  return result;
}