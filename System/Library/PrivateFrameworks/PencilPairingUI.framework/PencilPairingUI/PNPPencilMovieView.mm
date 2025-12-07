@interface PNPPencilMovieView
@end

@implementation PNPPencilMovieView

void __61___PNPPencilMovieView_completeRevolutionWithCompletionBlock___block_invoke(uint64_t a1, const char *a2)
{
  memset(&v13, 0, sizeof(v13));
  v3 = *(*(*(a1 + 40) + 8) + 40);
  if (v3)
  {
    objc_msgSend_duration(v3, a2);
  }

  time = v13;
  Seconds = CMTimeGetSeconds(&time);
  memset(&time, 0, sizeof(time));
  v5 = *(*(*(a1 + 40) + 8) + 40);
  if (v5)
  {
    objc_msgSend_currentTime(v5);
  }

  v11 = time;
  v6 = CMTimeGetSeconds(&v11);
  if (v6 >= Seconds * 0.25)
  {
    v7 = Seconds - v6;
  }

  else
  {
    v7 = -v6;
  }

  v8 = dispatch_time(0, (fmin((Seconds * 0.25 + v7) * (1.0 / *(a1 + 48)), 2.4) * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61___PNPPencilMovieView_completeRevolutionWithCompletionBlock___block_invoke_2;
  block[3] = &unk_279A0A128;
  v10 = *(a1 + 32);
  dispatch_after(v8, MEMORY[0x277D85CD0], block);
}

@end