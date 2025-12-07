Swift::Void __swiftcall UIViewController.sk_showViewController(_:animated:)(UIViewController *_, Swift::Bool animated)
{
  v3 = v2;
  v28 = animated;
  v34 = _;
  v4 = sub_265610260();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v31 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_2656102A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_265610250();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v27[-v15];
  v17 = [v2 traitCollection];
  sub_2656102F0();

  v35 = v3;
  v18 = [v3 traitCollection];
  sub_265610300();

  v19 = sub_265610280();
  v29 = *(v7 + 8);
  v30 = v6;
  v29(v9, v6);
  (*(v11 + 104))(v14, *MEMORY[0x277D40270], v10);
  sub_265603E1C(&qword_280019DA8, MEMORY[0x277D40288], MEMORY[0x277D402C0]);
  sub_2656102B0();
  sub_2656102B0();
  v20 = *(v11 + 8);
  v20(v14, v10);
  if (v37 == v36 && (v19 & 1) != 0)
  {
    v21 = v34;
    v22 = v31;
    sub_265610270();
    v23 = [v35 traitCollection];
    sub_265610300();

    sub_265603E1C(&qword_280019DB0, MEMORY[0x277D402E8], MEMORY[0x277D402F8]);
    v24 = v33;
    sub_265610290();
    v29(v9, v30);
    (*(v32 + 8))(v22, v24);
  }

  else
  {
    v25 = [v35 navigationController];
    if (v25)
    {
      v26 = v25;
      [v25 pushViewController:v34 animated:v28];
    }
  }

  v20(v16, v10);
}

uint64_t sub_265603E1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_265603E64(void *a1, uint64_t a2, void *a3, Swift::Bool a4)
{
  sub_2656102E0();
  sub_2656102D0();
  sub_2656102C0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  v8 = a1;
  UIViewController.sk_showViewController(_:animated:)(v7, a4);
}

void sub_265604EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26560752C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

os_log_t __SRLogUIString_block_invoke()
{
  result = os_log_create("com.apple.SensorKit", "NSString+SensorKitUI");
  _MergedGlobals_7 = result;
  return result;
}

void sub_26560BF74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26560C400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40, id location)
{
  objc_destroyWeak((v41 + 56));
  objc_destroyWeak((v41 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a34);
  _Block_object_dispose(&a35, 8);
  objc_destroyWeak(&a40);
  _Unwind_Resume(a1);
}

void sub_26560C858(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_26560CE70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

os_log_t __SRLogOBPrivacyPresenter_block_invoke()
{
  result = os_log_create("com.apple.SensorKit", "SRLogOBPrivacyPresenter");
  _MergedGlobals_8 = result;
  return result;
}

os_log_t __SRLogNSBundle_block_invoke()
{
  result = os_log_create("com.apple.SensorKit", "NSBundle+SensorKit");
  qword_28001A308 = result;
  return result;
}

os_log_t __SRLogUIAlertController_block_invoke()
{
  result = os_log_create("com.apple.SensorKit", "UIAlertController+SensorKit");
  qword_28001A318 = result;
  return result;
}