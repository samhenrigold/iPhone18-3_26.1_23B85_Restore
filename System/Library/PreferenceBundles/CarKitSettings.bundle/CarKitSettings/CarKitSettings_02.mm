uint64_t sub_47420@<X0>(uint64_t a1@<X8>)
{
  result = sub_4ACAC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_47488()
{
  result = qword_7C398;
  if (!qword_7C398)
  {
    sub_1D648(&qword_7C378, &qword_54410);
    sub_47540();
    sub_2C958(&qword_7C3D0, &qword_7C380, &qword_54418, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7C398);
  }

  return result;
}

unint64_t sub_47540()
{
  result = qword_7C3A0;
  if (!qword_7C3A0)
  {
    sub_1D648(&qword_7C3A8, &qword_54460);
    sub_2C958(&qword_7C3B0, &qword_7C3B8, &qword_54468, &protocol conformance descriptor for VStack<A>);
    sub_2C958(&qword_7C3C0, &qword_7C3C8, &unk_54470, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7C3A0);
  }

  return result;
}

uint64_t sub_47640()
{
  v1 = sub_4A6AC();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  v2 = sub_4BA3C();
  v0[6] = v2;
  v0[7] = *(v2 - 8);
  v0[8] = swift_task_alloc();
  sub_4B6FC();
  v0[9] = sub_4B6EC();
  v4 = sub_4B6DC();
  v0[10] = v4;
  v0[11] = v3;

  return _swift_task_switch(sub_47798, v4, v3);
}

uint64_t sub_47798(uint64_t a1)
{
  sub_4BABC();
  v2 = swift_task_alloc();
  *(v1 + 96) = v2;
  *v2 = v1;
  v2[1] = sub_47864;

  return sub_48440(10000000000000000, 0, 0, 0, 1);
}

uint64_t sub_47864()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = sub_479FC;
  }

  else
  {
    v8 = sub_47A84;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_479FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_47A84()
{

  sub_14628(&qword_7B060, &unk_53070);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_52910;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_54480;
  sub_4A69C();
  v3 = sub_488F8();
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_29;
  }

  v5 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  v35 = v1;
  v36 = v2;
  if (v5)
  {
    result = sub_4B9FC();
    if ((v5 & 0x8000000000000000) == 0)
    {
      v2 = v4 & 0xC000000000000001;
      sub_4B91C();
      v7 = 0;
      while (1)
      {
        if (v2)
        {
          v8 = sub_4B9AC();
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            v5 = sub_4BA5C();
            goto LABEL_3;
          }

          if (v7 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_26;
          }

          v8 = *(v4 + 8 * v7 + 32);
        }

        ++v7;
        v1 = sub_4000C(v8);
        sub_4B9DC();
        sub_4BA0C();
        sub_4BA1C();
        sub_4B9EC();
        if (v5 == v7)
        {

          v2 = v36;
          goto LABEL_14;
        }
      }
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_14:
  v9 = v0[5];
  v11 = v0[2];
  v10 = v0[3];
  v12 = objc_allocWithZone(CRSWidgetStack);
  isa = sub_4A66C().super.isa;
  v4 = sub_4B91C();
  v14 = sub_4B68C().super.isa;

  v15 = [v12 initWithID:isa widgets:v14];

  v1 = *(v10 + 8);
  (v1)(v9, v11);
  *(v2 + 32) = v15;
  sub_4A69C();
  v16 = sub_488F8();
  v17 = v16;
  v34 = v1;
  if (v16 >> 62)
  {
    v18 = sub_4BA5C();
    if (v18)
    {
      goto LABEL_16;
    }

LABEL_31:

    goto LABEL_32;
  }

  v18 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
  if (!v18)
  {
    goto LABEL_31;
  }

LABEL_16:
  result = sub_4B9FC();
  if (v18 < 0)
  {
LABEL_36:
    __break(1u);
    return result;
  }

  v19 = 0;
  v2 = v17 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v20 = sub_4B9AC();
    }

    else
    {
      if ((v19 & 0x8000000000000000) != 0)
      {
        goto LABEL_27;
      }

      if (v19 >= *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_28;
      }

      v20 = *(v17 + 8 * v19 + 32);
    }

    ++v19;
    v1 = sub_4000C(v20);
    sub_4B9DC();
    sub_4BA0C();
    sub_4BA1C();
    sub_4B9EC();
  }

  while (v18 != v19);

  v2 = v36;
LABEL_32:
  v21 = v0[4];
  v22 = v0[2];
  v23 = objc_allocWithZone(CRSWidgetStack);
  v24 = sub_4A66C().super.isa;
  v25 = sub_4B68C().super.isa;

  v26 = [v23 initWithID:v24 widgets:v25];

  v34(v21, v22);
  *(v2 + 40) = v26;
  v27 = objc_allocWithZone(CRSWidgetStackRow);
  sub_16F40(0, &qword_7B088, CRSWidgetStack_ptr);
  v28 = sub_4B68C().super.isa;

  v29 = [v27 initWithStacks:v28];

  *(v35 + 32) = v29;
  v30 = objc_allocWithZone(CRSWidgetLayoutState);
  sub_16F40(0, &qword_7AD40, CRSWidgetStackRow_ptr);
  v31 = sub_4B68C().super.isa;

  v32 = [v30 initWithShowWidgets:1 showWallpaper:1 showSuggestions:1 smartRotate:1 widgetStackRows:v31];

  v33 = v0[1];

  return v33(v32);
}

uint64_t sub_47F9C()
{
  v1 = sub_14628(&qword_7AD18, &qword_52750);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_4B72C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_1A384(0, 0, v3, &unk_544B8, v5);
}

uint64_t sub_480A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*a4 + 88) + **(*a4 + 88));
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_481B8;

  return v7();
}

uint64_t sub_481B8(void *a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_482E8()
{
  v4 = (*(*v0 + 88) + **(*v0 + 88));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1EE48;

  return v4();
}

uint64_t sub_48440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_4BA2C();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_48540, 0, 0);
}

uint64_t sub_48540()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_4BA3C();
  v5 = sub_4928C(&qword_7BC68, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_4BA9C();
  sub_4928C(&qword_7BC70, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_4BA4C();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_486D0;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_486D0()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_4888C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_4888C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_488F8()
{
  v0 = sub_4A6AC();
  __chkstk_darwin(v0 - 8);
  v62 = v55 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_14628(&qword_7BBD8, &unk_54520);
  __chkstk_darwin(v2 - 8);
  v4 = v55 - v3;
  v5 = sub_14628(&qword_7BBE0, &unk_53740);
  __chkstk_darwin(v5 - 8);
  v7 = v55 - v6;
  sub_14628(&qword_7B060, &unk_53070);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_54490;
  v9 = v8;
  v56 = v8;
  v10 = type metadata accessor for CRWidgetModel(0);
  v11 = sub_4B8BC();
  sub_4A7FC();
  sub_4A7FC();
  v12 = sub_14628(&qword_7BBE8, &unk_54530);
  v13 = *(v12 - 8);
  v57 = *(v13 + 56);
  v60 = v13 + 56;
  v61 = v12;
  v57(v4, 0, 1, v12);
  v55[3] = v11;
  v14 = sub_4B8AC();
  v15 = objc_allocWithZone(CHSWidget);
  v16 = sub_4B5EC();
  v17 = [v15 initWithExtensionIdentity:v14 kind:v16 family:1 intent:0 activityIdentifier:0];

  v18 = v62;
  sub_1F818();
  v19 = variable initialization expression of CARSpinnerHeaderView.isSpinning();
  v58 = v10;
  *(v9 + 32) = sub_3F7E8(v18, v17, v19);
  v55[4] = "r.widget.dailyForecast";
  v55[1] = v7;
  sub_4A7FC();
  v59 = "ers.WidgetExtension";
  sub_4A7FC();
  v20 = v57;
  v57(v4, 0, 1, v12);
  v21 = sub_4B8AC();
  v55[2] = "com.apple.reminders";
  v22 = objc_allocWithZone(CHSWidget);
  v23 = sub_4B5EC();
  v24 = [v22 initWithExtensionIdentity:v21 kind:v23 family:1 intent:0 activityIdentifier:0];

  v25 = v62;
  sub_1F818();
  v26 = variable initialization expression of CARSpinnerHeaderView.isSpinning();
  v27 = sub_3F7E8(v25, v24, v26);
  v28 = v56;
  *(v56 + 40) = v27;
  sub_4A7FC();
  sub_4A7FC();
  v29 = v61;
  v20(v4, 0, 1, v61);
  v30 = sub_4B8AC();
  v31 = objc_allocWithZone(CHSWidget);
  v32 = sub_4B5EC();
  v33 = [v31 initWithExtensionIdentity:v30 kind:v32 family:1 intent:0 activityIdentifier:0];

  v34 = v62;
  sub_1F818();
  v35 = variable initialization expression of CARSpinnerHeaderView.isSpinning();
  *(v28 + 48) = sub_3F7E8(v34, v33, v35);
  sub_4A7FC();
  sub_4A7FC();
  v36 = v57;
  v57(v4, 0, 1, v29);
  v37 = sub_4B8AC();
  v38 = objc_allocWithZone(CHSWidget);
  v39 = sub_4B5EC();
  v40 = [v38 initWithExtensionIdentity:v37 kind:v39 family:1 intent:0 activityIdentifier:0];

  v41 = v62;
  sub_1F818();
  v42 = variable initialization expression of CARSpinnerHeaderView.isSpinning();
  v43 = sub_3F7E8(v41, v40, v42);
  v44 = v56;
  *(v56 + 56) = v43;
  sub_4A7FC();
  sub_4A7FC();
  v36(v4, 0, 1, v61);
  v45 = sub_4B8AC();
  v46 = objc_allocWithZone(CHSWidget);
  v47 = sub_4B5EC();
  v48 = [v46 initWithExtensionIdentity:v45 kind:v47 family:1 intent:0 activityIdentifier:0];

  sub_1F818();
  v49 = variable initialization expression of CARSpinnerHeaderView.isSpinning();
  *(v44 + 64) = sub_3F7E8(v41, v48, v49);
  sub_4A7FC();
  sub_4A7FC();
  v36(v4, 0, 1, v61);
  v50 = sub_4B8AC();
  v51 = objc_allocWithZone(CHSWidget);
  v52 = sub_4B5EC();
  v53 = [v51 initWithExtensionIdentity:v50 kind:v52 family:1 intent:0 activityIdentifier:0];

  sub_1F818();
  *(v44 + 72) = sub_3F7E8(v41, v53, 1);
  return v44;
}

uint64_t sub_490F4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_49134()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DB38;

  return sub_480A4(v3, v4, v5, v2);
}

uint64_t sub_491EC(uint64_t a1)
{
  v2 = sub_14628(&qword_7AD18, &qword_52750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_49254()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4928C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int sub_49328()
{
  sub_4BACC();
  sub_4BADC(0);
  return sub_4BAEC();
}

Swift::Int sub_4936C(uint64_t a1)
{
  sub_4BACC();
  sub_4BADC(0);
  return sub_4BAEC();
}

unint64_t sub_493B0()
{
  result = qword_7C490;
  if (!qword_7C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7C490);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CarPlayFeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CarPlayFeatureFlags(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_494E4()
{
  v0 = sub_4A93C();
  sub_4969C(v0, qword_7DA88);
  sub_495BC(v0, qword_7DA88);
  return sub_4A92C();
}

uint64_t sub_49558()
{
  if (qword_7D9C0 != -1)
  {
    swift_once();
  }

  v0 = sub_4A93C();

  return sub_495BC(v0, qword_7DA88);
}

uint64_t sub_495BC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_495F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_7D9C0 != -1)
  {
    swift_once();
  }

  v2 = sub_4A93C();
  v3 = sub_495BC(v2, qword_7DA88);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *sub_4969C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id sub_49728()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_7D9D0 = result;
  return result;
}

uint64_t sub_497F0()
{
  v0 = sub_4A8CC();
  sub_4969C(v0, qword_7DAB8);
  sub_495BC(v0, qword_7DAB8);
  if (qword_7D9C8 != -1)
  {
    swift_once();
  }

  v1 = qword_7D9D0;
  return sub_4A8BC();
}

uint64_t sub_499E0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_4A8CC();
  sub_4969C(v5, a2);
  sub_495BC(v5, a2);
  if (qword_7D9C8 != -1)
  {
    swift_once();
  }

  v6 = qword_7D9D0;
  return sub_4A8BC();
}

uint64_t sub_49AA8(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_4A8CC();

  return sub_495BC(v4, a2);
}

uint64_t sub_49B20@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_4A8CC();
  v7 = sub_495BC(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

BOOL sub_49BDC(int a1, int a2, int a3)
{
  if (qword_7DA10 == -1)
  {
    v3 = dword_7DA00 < a1;
    if (dword_7DA00 > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    sub_4A5AC();
    a2 = v6;
    a3 = v5;
    v3 = dword_7DA00 < a1;
    if (dword_7DA00 > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_7DA04 > a2)
  {
    return 1;
  }

  if (dword_7DA04 < a2)
  {
    return 0;
  }

  return dword_7DA08 >= a3;
}

uint64_t sub_49C9C(int a1, int a2, int a3, int a4)
{
  if (qword_7DA18 == -1)
  {
    if (qword_7DA20)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_4A5C4();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_7DA20)
    {
      return _availability_version_check();
    }
  }

  if (qword_7DA10 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_4A5AC();
    a3 = v10;
    a4 = v9;
    v8 = dword_7DA00 < v11;
    if (dword_7DA00 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_7DA04 > a3)
      {
        return 1;
      }

      if (dword_7DA04 >= a3)
      {
        return dword_7DA08 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_7DA00 < a2;
  if (dword_7DA00 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_49E30(uint64_t result)
{
  v1 = qword_7DA20;
  if (qword_7DA20)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_7DA20 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_7DA00, &dword_7DA04, &dword_7DA08);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_4A164(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "CARBluetoothLEDiscoverer no peripheral for %@", &v2, 0xCu);
}

void sub_4A1DC(void *a1, NSObject *a2)
{
  v4 = [a1 name];
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v4;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "CARBluetoothLEDiscoverer peripheral: %@ didUpdateName: %@", &v5, 0x16u);
}

void sub_4A2A0(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to save vehicle %@", &v3, 0xCu);
}

void sub_4A31C(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to delete vehicle %@", &v3, 0xCu);
}

void sub_4A3F0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "pairing failed %@", &v2, 0xCu);
}

void sub_4A4A0(void *a1, NSObject *a2)
{
  v3 = [a1 name];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "unsupported pairing style %@", &v4, 0xCu);
}