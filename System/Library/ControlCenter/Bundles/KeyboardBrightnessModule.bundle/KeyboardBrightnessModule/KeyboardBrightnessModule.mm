void sub_29C9CB434(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = sub_29C9CB4EC;
  v6[3] = &unk_29F33CC28;
  objc_copyWeak(&v8, (a1 + 32));
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x29EDCA578], v6);

  objc_destroyWeak(&v8);
}

uint64_t sub_29C9CB4EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v19 = WeakRetained;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = objc_msgSend_sliderView(v19, v19, v3, v4, v5);
      isTracking = objc_msgSend_isTracking(v6, v7, v8, v9, v10);

      if ((isTracking & 1) == 0)
      {
        objc_msgSend_floatValue(*(a1 + 32), v19, v12, v13, v14);
        objc_msgSend_updateControlsForValue_animated_(v19, v15, 1, v16, v17);
      }
    }
  }

  return MEMORY[0x2A1C71028]();
}