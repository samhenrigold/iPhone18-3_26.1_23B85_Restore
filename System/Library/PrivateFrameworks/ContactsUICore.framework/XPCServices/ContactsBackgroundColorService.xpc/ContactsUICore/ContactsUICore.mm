id sub_100001528(uint64_t a1)
{
  if (qword_10000CDF8 != -1)
  {
    sub_1000036D4();
  }

  v2 = qword_10000CE00;

  return v2;
}

void sub_1000015B0(id a1)
{
  qword_10000CDF0 = [CNScheduler serialDispatchQueueSchedulerWithName:@"com.apple.contacts.colorExtraction"];

  _objc_release_x1();
}

void sub_1000016F8(uint64_t a1)
{
  v2 = [*(a1 + 32) hash];
  v3 = sub_100001528(v2);
  v4 = v3;
  v60 = (v2 - 1);
  if ((v2 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    LOWORD(buf.a) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "CNImageDerivedColorFetchColors", &unk_100005D31, &buf, 2u);
  }

  spid = v2;

  v64 = [[CIImage alloc] initWithImage:*(a1 + 32)];
  v5 = [objc_opt_class() resizeImageForPerformance:v64];
  [v5 extent];
  v7 = v6;
  v9 = v8;
  v10 = [[VNImageRequestHandler alloc] initWithCIImage:v5 options:&__NSDictionary0__struct];
  v11 = objc_opt_new();
  [v11 setRevision:2];
  v12 = objc_autoreleasePoolPush();
  v73 = v11;
  v13 = [NSArray arrayWithObjects:&v73 count:1];
  v70 = 0;
  v62 = v10;
  v14 = [v10 performRequests:v13 error:&v70];
  v15 = v70;

  if (v15 || (v14 & 1) == 0)
  {
    v17 = sub_100001528(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000036FC(v15, v17);
    }
  }

  objc_autoreleasePoolPop(v12);
  v61 = v11;
  v18 = [v11 results];
  v19 = [v18 firstObject];

  v59 = v19;
  v20 = +[CIImage imageWithCVPixelBuffer:](CIImage, "imageWithCVPixelBuffer:", [v19 pixelBuffer]);
  [v20 extent];
  memset(&buf, 0, sizeof(buf));
  CGAffineTransformMakeScale(&buf, v7 / v21, v9 / v22);
  v68 = buf;
  v23 = [v20 imageByApplyingTransform:&v68];
  v24 = +[CIFilter colorThresholdFilter];
  v58 = v23;
  [v24 setInputImage:v23];
  LODWORD(v25) = 0.5;
  [v24 setThreshold:v25];
  v26 = [v24 outputImage];
  v27 = +[CIFilter maskToAlphaFilter];
  v57 = v26;
  [v27 setInputImage:v26];
  v28 = [v27 outputImage];
  v29 = +[CIFilter sourceOutCompositingFilter];
  v63 = v5;
  [v29 setInputImage:v5];
  v55 = v28;
  [v29 setBackgroundImage:v28];
  v30 = [v29 outputImage];
  v31 = objc_autoreleasePoolPush();
  v71[0] = @"inputWidth";
  v32 = [NSNumber numberWithDouble:v7];
  v71[1] = @"inputHeight";
  v72[0] = v32;
  v33 = [NSNumber numberWithDouble:v9];
  v72[1] = v33;
  v34 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:2];
  v56 = v30;
  v35 = [v30 imageByApplyingFilter:@"CISmartGradient" withInputParameters:v34];

  objc_autoreleasePoolPop(v31);
  [v35 extent];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = *(a1 + 40);
  if (v42)
  {
    v43 = v42;
  }

  else
  {
    v43 = [*(a1 + 56) ciContextWithHighPriority:1];
  }

  v44 = v43;
  v45 = [v35 imageByCroppingToRect:{v37, v39, 8.0, v41}];
  [v45 extent];
  v46 = [v44 createCGImage:v45 fromRect:?];
  v47 = [objc_opt_class() colorsForImageRef:v46];
  v48 = v47;
  if (v46)
  {
    CFRelease(v46);
  }

  v49 = sub_100001528(v47);
  v50 = v49;
  if (v60 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
  {
    LOWORD(v68.a) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v50, OS_SIGNPOST_INTERVAL_END, spid, "CNImageDerivedColorFetchColors", &unk_100005D31, &v68, 2u);
  }

  v51 = +[CNScheduler mainThreadScheduler];
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_100001CAC;
  v65[3] = &unk_100008428;
  v52 = *(a1 + 48);
  v66 = v48;
  v67 = v52;
  v53 = v48;
  [v51 performBlock:v65];
}

void sub_1000022B4(uint64_t a1, void *a2)
{
  v10 = 0.0;
  v11 = 0.0;
  v8 = 0.0;
  v9 = 0;
  v6 = 0.0;
  v7 = 0.0;
  [a2 getRed:&v8 green:&v7 blue:&v6 alpha:0];
  v3 = 0.0;
  if (*(a1 + 40))
  {
    v3 = 0.65;
  }

  v7 = v3 + v7 * 0.35;
  v8 = v3 + v8 * 0.35;
  v6 = v3 + v6 * 0.35;
  v4 = [UIColor colorWithRed:*&v6 green:*&v7 blue:*&v8 alpha:?];
  [v4 getHue:&v11 saturation:&v10 brightness:&v9 alpha:0];
  v10 = v10 * 1.6 / (v10 + 0.6);
  v5 = [UIColor colorWithHue:"colorWithHue:saturation:brightness:alpha:" saturation:v11 brightness:? alpha:?];
  [*(a1 + 32) addObject:v5];
}

void sub_1000023C4(id a1)
{
  qword_10000CE00 = os_log_create("com.apple.contacts.ui", "backgroundColor");

  _objc_release_x1();
}

id contactsBackgroundColorServiceInterface()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CNUIImageBackgroundColorAnalyzing];
  v1 = [NSSet setWithObjects:objc_opt_class(), 0];
  [v0 setClasses:v1 forSelector:"getBackgroundColorOnImageData:bitmapFormat:withReply:" argumentIndex:1 ofReply:0];

  v2 = objc_opt_class();
  v3 = [NSSet setWithObjects:v2, objc_opt_class(), 0];
  [v0 setClasses:v3 forSelector:"getBackgroundColorOnImageData:bitmapFormat:withReply:" argumentIndex:0 ofReply:1];

  return v0;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

void sub_100002DE8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x100002D64);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000320C(id a1)
{
  qword_10000CE10 = os_log_create("com.apple.contacts.ui", "actions");

  _objc_release_x1();
}

void sub_100003294(id a1)
{
  qword_10000CE20 = os_log_create("com.apple.contacts.ui", "likenesses");

  _objc_release_x1();
}

void sub_10000331C(id a1)
{
  qword_10000CE30 = os_log_create("com.apple.contacts.ui", "core-recents");

  _objc_release_x1();
}

void sub_1000033A4(id a1)
{
  qword_10000CE40 = os_log_create("com.apple.contacts.ui", "staticid");

  _objc_release_x1();
}

void sub_10000342C(id a1)
{
  qword_10000CE50 = os_log_create("com.apple.contacts.ui", "color");

  _objc_release_x1();
}

void sub_1000034B4(id a1)
{
  qword_10000CE60 = os_log_create("com.apple.contacts.ui", "contact-card");

  _objc_release_x1();
}

void sub_10000353C(id a1)
{
  qword_10000CE70 = os_log_create("com.apple.contacts.ui", "posters");

  _objc_release_x1();
}

void sub_1000035C4(id a1)
{
  qword_10000CE80 = os_log_create("com.apple.contacts.ui", "photos");

  _objc_release_x1();
}

void sub_10000364C(id a1)
{
  qword_10000CE90 = os_log_create("com.apple.contacts.ui", "memoji");

  _objc_release_x1();
}

void sub_1000036FC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error performing VNGenerateObjectnessBasedSaliencyImageRequest in fetchColorsForImage: %@", &v2, 0xCu);
}

void sub_100003774(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not create colorSpace from name '%@'; will fall back to using sRGB", &v2, 0xCu);
}