uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  UIApplicationMain(a1, a2, @"DemoApplication", @"DemoApplication");
  objc_autoreleasePoolPop(v4);
  return 0;
}

id sub_1000012A0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v3 = *&kCMTimeZero.value;
  epoch = kCMTimeZero.epoch;
  return [v1 seekToTime:&v3];
}

void sub_100001488(int8x16_t *a1)
{
  v2 = a1[2].i64[0];
  v14 = 0;
  v3 = [v2 statusOfValueForKey:@"duration" error:&v14];
  v4 = v14;
  v5 = v4;
  if (v3 != 2)
  {
    sub_1000018B0(v4);
  }

  v6 = a1[2].i64[0];
  v13 = v5;
  v7 = [v6 statusOfValueForKey:@"tracks" error:&v13];
  v8 = v13;

  if (v7 != 2)
  {
    sub_1000018E8(v8);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000015A8;
  block[3] = &unk_100004190;
  v10 = a1[2];
  v9 = v10.i64[0];
  v12 = vextq_s8(v10, v10, 8uLL);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000015A8(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    objc_msgSend_duration(v3, a2);
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  *(*(a1 + 32) + 32) = CMTimeGetSeconds(&time);
  v4 = [AVPlayerItem playerItemWithAsset:*(a1 + 40)];
  [v4 addObserver:*(a1 + 32) forKeyPath:@"status" options:4 context:&unk_100008B60];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:*(a1 + 32) selector:"_playerItemDidPlayToEndTime:" name:AVPlayerItemDidPlayToEndTimeNotification object:v4];

  v6 = [AVPlayer playerWithPlayerItem:v4];
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  *(v7 + 8) = v6;

  [*(*(a1 + 32) + 8) setActionAtItemEnd:2];
  [*(*(a1 + 32) + 16) setPlayer:*(*(a1 + 32) + 8)];
}

void sub_1000018B0(void *a1)
{
  v1 = [a1 localizedDescription];
  NSLog(@"error loading movie duration: %@", v1);

  abort();
}

void sub_1000018E8(void *a1)
{
  v1 = [a1 localizedDescription];
  NSLog(@"error loading movie tracks: %@", v1);

  abort();
}