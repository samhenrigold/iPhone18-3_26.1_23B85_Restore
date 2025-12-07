@interface LSSEventQueue
- (LSSEventQueue)init;
- (os_unfair_lock_s)lightSourceForTime:(os_unfair_lock_s *)time;
- (void)intervalForTime:(double)time@<D0>;
- (void)schedule:(uint64_t)schedule;
@end

@implementation LSSEventQueue

- (LSSEventQueue)init
{
  v6.receiver = self;
  v6.super_class = LSSEventQueue;
  v2 = [(LSSEventQueue *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    buffer = v2->_buffer;
    v2->_buffer = v3;
  }

  return v2;
}

- (void)schedule:(uint64_t)schedule
{
  v10 = *MEMORY[0x277D85DE8];
  if (schedule)
  {
    os_unfair_lock_lock((schedule + 16));
    [(LSSSampleBuffer *)*(schedule + 8) removeStartingAt:v4, *a2];
    v5 = *(schedule + 8);
    v6 = *(a2 + 48);
    v9[2] = *(a2 + 32);
    v9[3] = v6;
    v7 = *(a2 + 80);
    v9[4] = *(a2 + 64);
    v9[5] = v7;
    v8 = *(a2 + 16);
    v9[0] = *a2;
    v9[1] = v8;
    [(LSSSampleBuffer *)v5 append:v9];
    os_unfair_lock_unlock((schedule + 16));
  }
}

- (void)intervalForTime:(double)time@<D0>
{
  v13 = *MEMORY[0x277D85DE8];
  a2[11] = 0u;
  a2[12] = 0u;
  a2[9] = 0u;
  a2[10] = 0u;
  a2[7] = 0u;
  a2[8] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (self)
  {
    os_unfair_lock_lock((self + 16));
    [(LSSSampleBuffer *)*(self + 8) intervalContaining:v12, time];
    v6 = v12[11];
    a2[10] = v12[10];
    a2[11] = v6;
    a2[12] = v12[12];
    v7 = v12[7];
    a2[6] = v12[6];
    a2[7] = v7;
    v8 = v12[9];
    a2[8] = v12[8];
    a2[9] = v8;
    v9 = v12[3];
    a2[2] = v12[2];
    a2[3] = v9;
    v10 = v12[5];
    a2[4] = v12[4];
    a2[5] = v10;
    v11 = v12[1];
    *a2 = v12[0];
    a2[1] = v11;
    os_unfair_lock_unlock((self + 16));
  }
}

- (os_unfair_lock_s)lightSourceForTime:(os_unfair_lock_s *)time
{
  v40 = *MEMORY[0x277D85DE8];
  if (time)
  {
    timeCopy = time;
    os_unfair_lock_lock(time + 4);
    [(LSSSampleBuffer *)*&timeCopy[2]._os_unfair_lock_opaque intervalContaining:a2];
    v22 = v34;
    v23 = v35;
    v24 = v36;
    v25 = v37;
    v18 = v30;
    v19 = v31;
    v20 = v32;
    v21 = v33;
    v14 = v26;
    v15 = v27;
    v16 = v28;
    v17 = v29;
    v4 = v38;
    v5 = v39;
    os_unfair_lock_unlock(timeCopy + 4);
    if (v4)
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
      v34 = v22;
      v35 = v23;
      v36 = v24;
      v37 = v25;
      v30 = v18;
      v31 = v19;
      v32 = v20;
      v33 = v21;
      v26 = v14;
      v27 = v15;
      v28 = v16;
      v29 = v17;
      v38 = v4;
      v39 = v5;
      LSSLightDirectionFromTimeInInterval(&v26, &v8, a2);
      v6 = [LSSLightSource alloc];
      v28 = v10;
      v29 = v11;
      v30 = v12;
      v31 = v13;
      v26 = v8;
      v27 = v9;
      time = [(LSSLightSource *)v6 initWithSample:&v26];
    }

    else
    {
      time = 0;
    }
  }

  return time;
}

@end