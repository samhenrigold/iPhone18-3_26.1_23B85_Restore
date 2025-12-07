void sub_100686C88()
{
  v1 = v0;
  v2 = sub_10076DE4C();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10000A5D4(&qword_100944C40, &unk_10079A0C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v38 - v5;
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_diffableDataSource];
  if (v7)
  {
    v8 = v7;
    sub_10076E79C();
    v9 = sub_10076E5EC();
    (*(v4 + 8))(v6, v3);
    if (v9 >= 1)
    {
      v10 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
      v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
      sub_10076857C();

      v12 = *&v1[v10];
      *&v1[v10] = 0;

      v13 = [v1 view];
      if (v13)
      {
        v14 = v13;
        [v13 bounds];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;

        v39 = v16;
        v40 = v18;
        v41 = v20;
        v42 = v22;
        v43 = 0;
LABEL_8:
        sub_10076856C();

        return;
      }

      goto LABEL_10;
    }
  }

  sub_10076DE3C();
  v23 = objc_allocWithZone(sub_10076DE6C());
  v24 = sub_10076DE5C();
  v25 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
  v26 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
  sub_10076857C();

  v27 = *&v1[v25];
  *&v1[v25] = v24;
  v8 = v24;

  v28 = [v1 view];
  if (v28)
  {
    v29 = v28;
    [v28 bounds];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v39 = v31;
    v40 = v33;
    v41 = v35;
    v42 = v37;
    v43 = 0;
    goto LABEL_8;
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

id sub_100686F4C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
  sub_10076857C();

  v3 = *&v0[v1];
  *&v0[v1] = 0;

  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result bounds];

    return sub_10076856C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100687018(uint64_t a1)
{
  v2 = v1;
  sub_10076DF3C();
  sub_100689970(&unk_100963220, 255, &type metadata accessor for AccountPresenter, &protocol conformance descriptor for BasePresenter);
  swift_errorRetain();

  v3 = sub_10076DEFC();
  v4 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
  sub_10076857C();

  v6 = *&v2[v4];
  *&v2[v4] = v3;
  v9 = v3;

  v7 = [v2 view];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];

    sub_10076856C();
  }

  else
  {
    __break(1u);
  }
}

void sub_100687198(uint64_t a1, uint64_t a2)
{
  v4 = sub_10075E11C();
  v69 = *(v4 - 8);
  v70 = v4;
  __chkstk_darwin(v4);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v65 - v8;
  v9 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v9 - 8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v67 = &v65 - v13;
  __chkstk_darwin(v14);
  v16 = &v65 - v15;
  v17 = sub_10076F13C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100016E2C(a2, v103, &unk_1009434C0, &qword_100783F60);
  if (v104)
  {
    sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    if (swift_dynamicCast())
    {
      v21 = v72;
      [v21 bounds];
      LOBYTE(v97) = 1;
      *&v79 = v21;
      *(&v79 + 1) = v22;
      *&v80 = v23;
      *(&v80 + 1) = v24;
      *&v81 = v25;
      BYTE8(v81) = 1;
      __asm { FMOV            V0.2D, #10.0 }

      v82 = _Q0;
      v83 = _Q0;
      v84 = 15;
      sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
      *v20 = sub_10077068C();
      (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
      v31 = sub_10076F16C();
      (*(v18 + 8))(v20, v17);
      if (v31)
      {
        v87 = xmmword_10094FFF8;
        v88 = xmmword_100950008;
        v89 = xmmword_100950018;
        v85 = xmmword_10094FFD8;
        v86 = xmmword_10094FFE8;
        v93 = v81;
        v94 = v82;
        v95 = v83;
        v91 = v79;
        v92 = v80;
        v97 = xmmword_10094FFD8;
        v98 = xmmword_10094FFE8;
        v100 = xmmword_100950008;
        v101 = xmmword_100950018;
        v90 = qword_100950028;
        v96 = v84;
        v102 = qword_100950028;
        v99 = xmmword_10094FFF8;
        sub_100016E2C(&v85, &v73, &unk_1009505F0, &qword_1007A2110);
        xmmword_10094FFF8 = v93;
        xmmword_100950008 = v94;
        xmmword_100950018 = v95;
        qword_100950028 = v96;
        xmmword_10094FFD8 = v91;
        xmmword_10094FFE8 = v92;
        sub_10000CFBC(&v97, &unk_1009505F0, &qword_1007A2110);
        v32 = *&v71[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];
        v33 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
        sub_1001F9960(&v79, &v73);
        sub_10076F5AC();
        v34 = *(v33 - 8);
        if ((*(v34 + 48))(v16, 1, v33) == 1)
        {
          sub_10000CFBC(v16, &unk_100943200, &unk_100785840);
        }

        else
        {
          sub_100263BF0(a1, 1, v32, v16);

          (*(v34 + 8))(v16, v33);
        }

        v75 = xmmword_10094FFF8;
        v76 = xmmword_100950008;
        v77 = xmmword_100950018;
        v78 = qword_100950028;
        v73 = xmmword_10094FFD8;
        v74 = xmmword_10094FFE8;
        xmmword_10094FFD8 = v85;
        xmmword_10094FFE8 = v86;
        xmmword_10094FFF8 = v87;
        xmmword_100950008 = v88;
        xmmword_100950018 = v89;
        qword_100950028 = v90;
        sub_10000CFBC(&v73, &unk_1009505F0, &qword_1007A2110);
        sub_1001F99BC(&v79);

        return;
      }

      __break(1u);
      goto LABEL_27;
    }

    v66 = a1;
  }

  else
  {
    v66 = a1;
    sub_10000CFBC(v103, &unk_1009434C0, &qword_100783F60);
  }

  v35 = [v71 collectionView];
  if (!v35)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v36 = v35;
  v37 = [v35 indexPathsForSelectedItems];

  if (!v37)
  {
LABEL_20:
    v61 = *&v71[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];
    v62 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
    sub_10076F5AC();
    v63 = *(v62 - 8);
    if ((*(v63 + 48))(v11, 1, v62) == 1)
    {
      sub_10000CFBC(v11, &unk_100943200, &unk_100785840);
    }

    else
    {
      sub_100263BF0(v66, 1, v61, v11);

      (*(v63 + 8))(v11, v62);
    }

    return;
  }

  v38 = v70;
  v39 = sub_1007701BC();

  if (!*(v39 + 16))
  {

    goto LABEL_20;
  }

  v40 = v69;
  (*(v69 + 16))(v6, v39 + ((*(v40 + 80) + 32) & ~*(v40 + 80)), v38);

  v41 = *(v40 + 32);
  v42 = v68;
  v41(v68, v6, v38);
  v43 = [v71 collectionView];
  if (!v43)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v44 = v43;
  v45 = v42;
  isa = sub_10075E02C().super.isa;
  v47 = [v44 cellForItemAtIndexPath:isa];

  if (!v47)
  {
    (*(v69 + 8))(v45, v70);
    goto LABEL_20;
  }

  v48 = v47;
  [v48 bounds];
  LOBYTE(v97) = 1;
  *&v79 = v47;
  *(&v79 + 1) = v49;
  *&v80 = v50;
  *(&v80 + 1) = v51;
  *&v81 = v52;
  BYTE8(v81) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  v82 = _Q0;
  v83 = _Q0;
  v84 = 15;
  sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  *v20 = sub_10077068C();
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v54 = sub_10076F16C();
  (*(v18 + 8))(v20, v17);
  if ((v54 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v87 = xmmword_10094FFF8;
  v88 = xmmword_100950008;
  v89 = xmmword_100950018;
  v85 = xmmword_10094FFD8;
  v86 = xmmword_10094FFE8;
  v93 = v81;
  v94 = v82;
  v95 = v83;
  v91 = v79;
  v92 = v80;
  v97 = xmmword_10094FFD8;
  v98 = xmmword_10094FFE8;
  v100 = xmmword_100950008;
  v101 = xmmword_100950018;
  v90 = qword_100950028;
  v96 = v84;
  v102 = qword_100950028;
  v99 = xmmword_10094FFF8;
  sub_100016E2C(&v85, &v73, &unk_1009505F0, &qword_1007A2110);
  xmmword_10094FFF8 = v93;
  xmmword_100950008 = v94;
  xmmword_100950018 = v95;
  qword_100950028 = v96;
  xmmword_10094FFD8 = v91;
  xmmword_10094FFE8 = v92;
  sub_10000CFBC(&v97, &unk_1009505F0, &qword_1007A2110);
  v55 = *&v71[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];
  v56 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_1001F9960(&v79, &v73);
  v57 = v67;
  sub_10076F5AC();
  v58 = *(v56 - 8);
  v59 = (*(v58 + 48))(v57, 1, v56);
  v60 = v68;
  if (v59 == 1)
  {
    sub_10000CFBC(v57, &unk_100943200, &unk_100785840);
  }

  else
  {
    sub_100263BF0(v66, 1, v55, v57);

    (*(v58 + 8))(v57, v56);
  }

  v64 = v70;
  v75 = xmmword_10094FFF8;
  v76 = xmmword_100950008;
  v77 = xmmword_100950018;
  v78 = qword_100950028;
  v73 = xmmword_10094FFD8;
  v74 = xmmword_10094FFE8;
  xmmword_10094FFD8 = v85;
  xmmword_10094FFE8 = v86;
  xmmword_10094FFF8 = v87;
  xmmword_100950008 = v88;
  xmmword_100950018 = v89;
  qword_100950028 = v90;
  sub_10000CFBC(&v73, &unk_1009505F0, &qword_1007A2110);
  sub_1001F99BC(&v79);

  (*(v69 + 8))(v60, v64);
}

uint64_t sub_100687DDC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_10072F954();

  return sub_10076240C();
}

double sub_1006881FC()
{

  return result;
}

id sub_10068828C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AccountViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100688380()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_authenticating;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1006883C4(char a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_authenticating;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_100685DD4();
}

void (*sub_100688418(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_10068847C;
}

void sub_10068847C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_100685DD4();
  }
}

uint64_t sub_100688558()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1006885AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100689970(&qword_100963210, 255, &type metadata accessor for AccountPresenter, &protocol conformance descriptor for AccountPresenter);
  v9 = sub_10000A5D4(&qword_100963218, qword_1007B27C8);
  v10 = objc_allocWithZone(v9);
  v11 = &v10[qword_10094A6C8];
  *&v10[qword_10094A6C8 + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v10[qword_10094A6C0];
  *v12 = a3;
  *(v12 + 1) = a4;
  *(v11 + 1) = v8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *&v10[qword_10094A6D8] = a5;
  v14.receiver = v10;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t sub_1006886DC()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_100688728(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10068877C()
{
  v1 = sub_10000A5D4(&qword_100963258, &qword_1007B2808);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10000A5D4(&qword_100963250, &qword_1007B2800);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

id sub_1006888E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_10000A5D4(&qword_100963258, &qword_1007B2808) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_10000A5D4(&qword_100963250, &qword_1007B2800) - 8);
  v11 = *(v3 + 16);
  v12 = v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_1006826D0(a1, a2, a3, v11, v3 + v8, v12);
}

uint64_t sub_1006889EC()
{
  v1 = sub_10000A5D4(&qword_100963060, &qword_1007B2558);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v13 = *(v2 + 64);
  v5 = sub_10000A5D4(&unk_100963260, &qword_1007B2810);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (((v13 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;
  v12 = v3 | v7;
  v9 = (*(v6 + 64) + v3 + v8) & ~v3;
  v10 = *(v2 + 8);
  v10(v0 + v4, v1);

  (*(v6 + 8))(v0 + v8, v5);
  v10(v0 + v9, v1);

  return _swift_deallocObject(v0, v9 + v13, v12 | 7);
}

uint64_t sub_100688B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_10000A5D4(&qword_100963060, &qword_1007B2558) - 8);
  v10 = *(v9 + 80);
  v11 = (v10 + 16) & ~v10;
  v12 = (*(v9 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(sub_10000A5D4(&unk_100963260, &qword_1007B2810) - 8);
  v14 = (v12 + *(v13 + 80) + 8) & ~*(v13 + 80);
  v15 = *(v4 + v12);
  v16 = v4 + ((*(v13 + 64) + v10 + v14) & ~v10);

  return sub_100682ADC(a1, a2, a3, a4, v4 + v11, v15, v4 + v14, v16);
}

uint64_t sub_100688CF0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100688D28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1007624DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100688D54(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009632A0, &qword_1007B28B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100688DC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1007624EC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double sub_100688DF0(void *a1, uint64_t a2)
{
  v5 = sub_10000A5D4(&qword_100950548, &unk_1007AAAE0);
  __chkstk_darwin(v5 - 8);
  v7 = v15 - v6;
  sub_1006850B0(a1, a2);
  type metadata accessor for UpdatesLockupCollectionViewCell(0);
  if (swift_dynamicCastClass())
  {
    v9 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_diffableDataSource);
    if (v9)
    {
      v10 = v9;
      sub_10076999C();

      v11 = sub_10000A5D4(&unk_100946710, &unk_10079A020);
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v7, 1, v11) == 1)
      {
        sub_10000CFBC(v7, &qword_100950548, &unk_1007AAAE0);
      }

      else
      {
        sub_10076F4AC();
        (*(v12 + 8))(v7, v11);
        sub_10000A5D4(&qword_1009575A0, &unk_100784980);
        sub_10076247C();
        if (swift_dynamicCast())
        {
          sub_100760C4C();
          sub_10076F64C();
          sub_10076FC1C();
          v13 = v15[1];
          sub_10076246C();
          v14 = sub_10076BB9C();

          sub_1003E977C(v14, v13);
        }
      }
    }
  }

  return result;
}

void sub_10068903C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&qword_1009632C0, &unk_10079B000);
  __chkstk_darwin(v4 - 8);
  v43 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v39 - v7;
  v9 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v9 - 8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v39 - v13;
  v15 = sub_10076F7FC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v39 - v20;
  v22 = sub_10000A5D4(&qword_100950548, &unk_1007AAAE0);
  __chkstk_darwin(v22 - 8);
  v24 = v39 - v23;
  v25 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_diffableDataSource);
  if (v25)
  {
    v41 = v21;
    v42 = v16;
    v40 = v8;
    v26 = v25;
    v39[1] = a1;
    sub_10076999C();

    v27 = sub_10000A5D4(&unk_100946710, &unk_10079A020);
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v24, 1, v27) == 1)
    {
      sub_10000CFBC(v24, &qword_100950548, &unk_1007AAAE0);
    }

    else
    {
      sub_10076F4AC();
      (*(v28 + 8))(v24, v27);
      sub_100012498(&v44, v45);
      sub_10000CF78(v45, v45[3]);
      sub_10076FE2C();
      v29 = v42;
      v30 = *(v42 + 48);
      if (v30(v14, 1, v15) == 1)
      {
        sub_10000CFBC(v14, &qword_1009492E0, &qword_1007893A0);
      }

      else
      {
        (*(v29 + 32))(v41, v14, v15);
        sub_10076248C();
        if (v30(v11, 1, v15) == 1)
        {
          sub_10000CFBC(v11, &qword_1009492E0, &qword_1007893A0);
          v31 = 1;
          v32 = v40;
        }

        else
        {
          v33 = v29;
          v32 = v40;
          sub_10076F7DC();
          (*(v33 + 8))(v11, v15);
          v31 = 0;
        }

        v34 = v43;
        v35 = sub_10076F7CC();
        v36 = *(v35 - 8);
        (*(v36 + 56))(v32, v31, 1, v35);
        sub_100760C8C();
        sub_100016E2C(v32, v34, &qword_1009632C0, &unk_10079B000);
        if ((*(v36 + 48))(v34, 1, v35) == 1)
        {
          sub_10000CFBC(v34, &qword_1009632C0, &unk_10079B000);
        }

        else
        {
          sub_10076F7BC();
          (*(v36 + 8))(v34, v35);
        }

        v37 = v41;
        sub_10076F78C();

        sub_10076610C();

        v38 = *(v42 + 8);
        v38(v18, v15);
        sub_10000CFBC(v32, &qword_1009632C0, &unk_10079B000);
        v38(v37, v15);
      }

      sub_10000CD74(v45);
    }
  }
}

void sub_1006895F0(uint64_t a1, uint64_t a2)
{
  sub_10068903C(a2);
  type metadata accessor for UpdatesLockupCollectionViewCell(0);
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    sub_100760C4C();
    sub_10076F64C();
    sub_10076FC1C();
    v4 = OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_lockupView;
    v5 = *(*(v3 + OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
    sub_10075FB6C();

    v6 = *(*(v3 + v4) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
    sub_10075FD2C();
    sub_100689970(&qword_100941820, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v7 = v6;
    sub_100760BFC();
  }
}

uint64_t sub_10068973C(uint64_t a1)
{
  v2 = v1;
  if (qword_100941490 != -1)
  {
    swift_once();
  }

  v4 = sub_10076FD4C();
  sub_10000A61C(v4, qword_100963158);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783C60;
  sub_10076F31C();
  sub_10076F27C();
  v6[3] = sub_10000A5D4(&unk_1009632B0, &unk_100787558);
  v6[0] = a1;

  sub_10076F30C();
  sub_10000CFBC(v6, &unk_1009434C0, &qword_100783F60);
  sub_10076FBCC();

  [v2 dismissViewControllerAnimated:1 completion:{0, v6[0]}];
  return sub_10076241C();
}

uint64_t sub_100689920()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100689970(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1006899B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1006899F8()
{
  result = qword_1009632D8;
  if (!qword_1009632D8)
  {
    sub_10000CE78(&qword_1009632D0, qword_1007B28F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009632D8);
  }

  return result;
}

uint64_t sub_100689AA4(void (*a1)(void, __n128), uint64_t a2)
{

  (a1)(*(v2 + 24));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_100689B08()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100689BF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076B5BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - v10;
  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  (*(v9 + 8))(v11, v8);
  v12 = (*(v5 + 88))(v7, v4);
  if (v12 != enum case for Shelf.ContentType.action(_:))
  {
    if (v12 == enum case for Shelf.ContentType.unifiedMessage(_:))
    {
      v18 = ASKDeviceTypeGetCurrent();
      v19 = sub_10076FF9C();
      v21 = v20;
      if (v19 == sub_10076FF9C() && v21 == v22)
      {
      }

      else
      {
        v28 = sub_10077167C();

        if ((v28 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v24 = type metadata accessor for SearchUnifiedMessageCollectionViewCell(0);
      v25 = type metadata accessor for SearchUnifiedMessageCollectionViewCell;
      sub_10068A0E4(&qword_1009633B8, type metadata accessor for SearchUnifiedMessageCollectionViewCell, &unk_10078E300);
      sub_10068A0E4(&qword_1009633C0, type metadata accessor for SearchUnifiedMessageCollectionViewCell, &unk_1007AE910);
      v26 = &unk_1009633C8;
      v27 = &unk_1007B5DB8;
      goto LABEL_13;
    }

LABEL_17:
    v24 = sub_1002CBF40(a1, a2);
    goto LABEL_18;
  }

  v13 = ASKDeviceTypeGetCurrent();
  v14 = sub_10076FF9C();
  v16 = v15;
  if (v14 != sub_10076FF9C() || v16 != v17)
  {
    v23 = sub_10077167C();

    if (v23)
    {
      goto LABEL_10;
    }

    v13 = ASKDeviceTypeGetCurrent();
    v29 = sub_10076FF9C();
    v31 = v30;
    if (v29 != sub_10076FF9C() || v31 != v32)
    {
      v33 = sub_10077167C();

      if (v33)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

LABEL_10:
  v24 = type metadata accessor for SearchActionCollectionViewCell(0);
  v25 = type metadata accessor for SearchActionCollectionViewCell;
  sub_10068A0E4(&qword_1009633D0, type metadata accessor for SearchActionCollectionViewCell, &unk_10078E138);
  sub_10068A0E4(&qword_100959E90, type metadata accessor for SearchActionCollectionViewCell, &unk_1007A7460);
  v26 = &unk_1009633D8;
  v27 = &unk_10078E168;
LABEL_13:
  sub_10068A0E4(v26, v25, v27);
LABEL_18:
  (*(v5 + 8))(v7, v4);
  return v24;
}

uint64_t sub_10068A0E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10068A12C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 itemKind];
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = v6;
  v8 = sub_10076FF9C();
  v10 = v9;

  if (v8 == 0x6169726F74696465 && v10 == 0xED00006D6574496CLL)
  {

    if (!a1)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  v12 = sub_10077167C();

  LOBYTE(v13) = 0;
  if ((v12 & 1) != 0 && a1)
  {
LABEL_10:
    v14 = sub_10076FF9C();
    if (*(a1 + 16))
    {
      v16 = sub_100561E0C(v14, v15);
      v18 = v17;

      if (v18)
      {
        sub_10000CD08(*(a1 + 56) + 32 * v16, v23);
        if (swift_dynamicCast())
        {
          if (v22)
          {
            v13 = *(a2 + 24);
            if (v13 != 2)
            {
              return v13 & 1;
            }

            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v20 = Strong;
              [Strong _hostAuditToken];
              LOBYTE(v13) = sub_100533998(v23[0], v23[1], v23[2], v23[3], 0x73656C6369747241, 0xE800000000000000);

              *(a2 + 24) = v13 & 1;
              return v13 & 1;
            }
          }
        }
      }
    }

    else
    {
    }

LABEL_18:
    LOBYTE(v13) = 0;
  }

  return v13 & 1;
}

void sub_10068A2F4(uint64_t a1@<X8>)
{
  v3 = [v1 iTunesStoreIdentifier];
  if (v3)
  {
    v4 = v3;
    sub_10077145C(33);

    v5 = [v4 description];
    v6 = sub_10076FF9C();
    v8 = v7;

    v12._countAndFlagsBits = v6;
    v12._object = v8;
    sub_1007700CC(v12);

    sub_10075DB6C();
  }

  else
  {
    v9 = sub_10075DB7C();
    v10 = *(*(v9 - 8) + 56);

    v10(a1, 1, 1, v9);
  }
}

uint64_t sub_10068A450@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_100763F9C();
  v25 = *(v1 - 8);
  v26 = v1;
  __chkstk_darwin(v1);
  v24 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10076C36C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = sub_10076C38C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10076338C();

  v14 = v29;
  v15 = sub_1007706FC();

  if (v15 & 1) != 0 && (swift_getKeyPath(), sub_10076338C(), , v16 = v28, v17 = sub_10077071C(), v16, (v17 & 1) == 0) && (swift_getKeyPath(), sub_10076338C(), , sub_10076C37C(), (*(v11 + 8))(v13, v10), (*(v4 + 104))(v6, enum case for PageGrid.Direction.horizontal(_:), v3), v18 = sub_10076C35C(), v19 = *(v4 + 8), v19(v6, v3), v19(v9, v3), (v18))
  {
    (*(v25 + 104))(v24, enum case for ComponentSeparator.Position.top(_:), v26);
    v20 = v27;
    sub_100763FAC();
    v21 = 0;
  }

  else
  {
    v21 = 1;
    v20 = v27;
  }

  v22 = sub_100763FDC();
  return (*(*(v22 - 8) + 56))(v20, v21, 1, v22);
}

double sub_10068A7F8(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v4 = sub_10000A5D4(&unk_100945560, qword_1007951B0);
  __chkstk_darwin(v4 - 8);
  v35 = &v29 - v5;
  v34 = sub_100768FEC();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v9 = &v29 - v8;
  v10 = sub_10000A5D4(&unk_100945550, &unk_10078A040);
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_10076A3AC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v17 - 8);
  v19 = &v29 - v18;
  v31 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_offerButton);
  v32 = a1;
  v30 = sub_10076072C();
  v20 = sub_10076074C();
  v21 = sub_10076073C();
  (*(v14 + 104))(v16, enum case for OfferButtonPresenterViewAlignment.center(_:), v13);
  (*(v14 + 56))(v12, 1, 1, v13);
  sub_10068AF5C(&unk_1009492B0, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
  sub_10076759C();
  v22 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
  (*(*(v22 - 8) + 56))(v19, 0, 1, v22);
  v23 = v34;
  (*(v6 + 104))(v33, enum case for OfferButtonSubtitlePosition.left(_:), v34);
  (*(v6 + 56))(v35, 1, 1, v23);
  sub_10068AF5C(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
  sub_10076759C();
  sub_1001F12C8(v30, v20, v21, v19, v9, v38, 0, 0);

  (*(v36 + 8))(v9, v37);
  sub_100026190(v19);
  sub_10076070C();
  sub_10076071C();
  sub_100767E8C();
  sub_10076F64C();
  sub_10076FC1C();
  v24 = sub_100767DCC();
  swift_allocObject();
  v25 = sub_100767DAC();
  sub_10068AF5C(&qword_1009633E0, type metadata accessor for ArcadeLockupView, &unk_1007B2A40);
  v26 = swift_unknownObjectRetain();
  sub_100767DBC();
  v39[3] = v24;
  v39[0] = v25;
  v27 = OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_offerLabelPresenter;
  swift_beginAccess();

  sub_100127EF0(v39, v26 + v27);
  swift_endAccess();
  [v26 setNeedsLayout];

  return result;
}

double sub_10068ADE8(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_subtitleLabel];
  v6 = [v5 text];
  if (!v6)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  v8 = v6;
  v9 = sub_10076FF9C();
  v11 = v10;

  if (!a2)
  {

    v14 = 0;
    goto LABEL_12;
  }

  if (v9 != a1 || v11 != a2)
  {
    v13 = sub_10077167C();

    if (v13)
    {
      return result;
    }

LABEL_10:
    v14 = sub_10076FF6C();
LABEL_12:
    [v5 setText:v14];

    [v5 setHidden:sub_10077002C() & 1];

    [v2 setNeedsLayout];
    return result;
  }

  return result;
}

uint64_t sub_10068AF5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10068AFF4()
{
  v0 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v39 = *(v0 - 8);
  v40 = v0;
  __chkstk_darwin(v0);
  v35 = &v30 - v1;
  v36 = sub_10076C38C();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076664C();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v33 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v11 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - v13;
  v15 = sub_10000A5D4(&unk_100946710, &unk_10079A020);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v30 - v17;
  sub_1007633BC();
  sub_10076F4AC();
  v19 = v18;
  v20 = v30;
  (*(v16 + 8))(v19, v15);
  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();
  v21 = v31;

  v22 = v11;
  v23 = v32;
  (*(v12 + 8))(v14, v22);

  sub_1007633DC();
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();
  v24 = v35;

  sub_10076C2FC();
  (*(v34 + 8))(v3, v36);
  sub_100630CB4();
  (*(v20 + 16))(v33, v10, v21);
  sub_10076FCFC();
  sub_10076FDBC();
  if (qword_100940330 != -1)
  {
    swift_once();
  }

  v25 = sub_1007640EC();
  sub_10000A61C(v25, qword_10099F660);
  sub_10076410C();
  sub_10068B624(&unk_1009566D0, &type metadata accessor for FlowcaseItemLayout, &protocol conformance descriptor for FlowcaseItemLayout);
  sub_10076DBDC();
  if (qword_100940338 != -1)
  {
    swift_once();
  }

  v26 = sub_10076E21C();
  sub_10000A61C(v26, qword_10099F678);
  sub_100770AFC();
  v28 = v27;
  swift_unknownObjectRelease();
  (*(v39 + 8))(v24, v40);
  (*(v37 + 8))(v23, v38);
  (*(v20 + 8))(v10, v21);
  sub_10000CD74(v41);
  return v28;
}

uint64_t sub_10068B624(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10068B66C()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076460C();
  sub_10076C2FC();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_10076460C();
  sub_10076C24C();
  v6 = v5;
  v4(v3, v0);
  v7 = sub_10076461C();
  v8 = type metadata accessor for SnapshotPageTraitEnvironment();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v10 = v6;
  *(v10 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v9[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v7;
  v17.receiver = v9;
  v17.super_class = v8;
  v11 = objc_msgSendSuper2(&v17, "init");
  if (qword_100940330 != -1)
  {
    swift_once();
  }

  v12 = sub_1007640EC();
  sub_10000A61C(v12, qword_10099F660);
  sub_10076410C();
  sub_10068B624(&unk_1009566D0, &type metadata accessor for FlowcaseItemLayout, &protocol conformance descriptor for FlowcaseItemLayout);
  sub_10076DBDC();
  if (qword_100940338 != -1)
  {
    swift_once();
  }

  v13 = sub_10076E21C();
  sub_10000A61C(v13, qword_10099F678);
  sub_100770AFC();
  v15 = v14;

  return v15;
}

void sub_10068B904(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v82 = a2;
  v76 = sub_10076C36C();
  v5 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v69 - v8;
  v10 = sub_10076C38C();
  v77 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v69 - v14;
  v16 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  __chkstk_darwin(v16 - 8);
  v81 = sub_10000A5D4(&qword_100957718, &qword_1007A3778);
  v17 = *(v81 - 8);
  __chkstk_darwin(v81);
  v80 = &v69 - v18;
  sub_10076B29C();
  sub_10068CB60(&qword_100957720, &type metadata accessor for Uber, &protocol conformance descriptor for Uber);
  v83 = a1;
  sub_10076332C();
  v19 = v85[0];
  if (v85[0])
  {
    v73 = v17;
    v74 = v15;
    v78 = v10;
    v20 = OBJC_IVAR____TtC20ProductPageExtension22UberCollectionViewCell_uberView;
    swift_beginAccess();
    v21 = *(v3 + v20);
    v79 = v19;
    if (!v21 || (v22 = *(v21 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_uber), , v85[0] = v19, !v22) || (v85[5] = v22, sub_10068CB60(&qword_100961168, &type metadata accessor for Uber, &protocol conformance descriptor for Uber), , v23 = sub_10076FF1C(), , , (v23 & 1) == 0))
    {
      v24 = *(v3 + v20);
      v25 = sub_100760C4C();
      v26 = sub_10076F64C();
      v27 = v24;
      v72 = v25;
      v71 = v26;
      sub_10076FC1C();
      if (v24)
      {
        v84 = v27;
        type metadata accessor for UberHeaderView();
        sub_10068CB60(&qword_100954F18, type metadata accessor for UberHeaderView, &protocol conformance descriptor for NSObject);
        v28 = v27;
        sub_10077140C();
        sub_100760BEC();

        sub_100016C74(v85);
      }

      else
      {
      }

      sub_1007633DC();
      sub_10076FDBC();
      swift_getKeyPath();
      sub_1004492B8();
      v29 = v79;

      sub_10076FD9C();

      v30 = v85[0];
      v31 = objc_allocWithZone(type metadata accessor for UberHeaderView());
      v32 = v82;

      v33 = sub_1002088B0(v29, (v30 & 1) == 0, v32);
      v34 = *(v3 + v20);
      *(v3 + v20) = v33;
      v35 = v33;
      sub_1004FCA5C(v34);

      v70 = v20;
      v69 = v3;
      v36 = *(v3 + v20);
      if (v36)
      {
        v37 = v36;
        v38 = sub_10076B24C();
        sub_100209360(v38, v39);
      }

      v40 = v5;
      v41 = *(v5 + 104);
      v42 = v76;
      v41(v9, enum case for PageGrid.Direction.vertical(_:), v76);
      swift_getKeyPath();
      sub_10076338C();

      sub_10076C2FC();
      v43 = *(v77 + 8);
      v44 = v78;
      v43(v12, v78);
      swift_getKeyPath();
      sub_10076338C();

      sub_10076C25C();
      v45 = v44;
      v46 = v43;
      v43(v12, v45);
      (*(v40 + 16))(v75, v9, v42);
      sub_1005AC334(0.0);
      v47 = v74;
      sub_10076C33C();
      (*(v40 + 8))(v9, v42);
      v48 = v70;
      v49 = v69;
      v50 = *(v69 + v70);
      if (v50)
      {
        v51 = v50;
        sub_10076C2EC();
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;
        v60 = OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_titleView;
        [*&v51[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_titleView] layoutMargins];
        if (v53 == v64 && v55 == v61 && v57 == v62 && v59 == v63 || ([*&v51[v60] setLayoutMargins:{v53, v55, v57, v59, v69, v70}], objc_msgSend(v51, "invalidateIntrinsicContentSize"), (v65 = *&v51[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_sizeChangeObserver]) == 0))
        {
        }

        else
        {
          v66 = *&v51[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_sizeChangeObserver + 8];

          v65(v67);

          sub_1000167E0(v65, v66);
        }
      }

      sub_10076FC1C();
      sub_10068C218(v79, v83, v85[0]);

      swift_beginAccess();
      v68 = *(v49 + v48);
      if (v68)
      {
        swift_endAccess();
        [v68 setNeedsLayout];

        v46(v47, v78);
        (*(v73 + 8))(v80, v81);
        return;
      }

      v46(v47, v78);
      (*(v73 + 8))(v80, v81);
      swift_endAccess();
    }
  }
}

uint64_t sub_10068C218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a3;
  v5 = sub_10076D39C();
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin(v5);
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076C38C();
  v46 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076B21C();
  v49 = *(v10 - 8);
  v50 = v10;
  __chkstk_darwin(v10);
  v42 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v47 = &v41 - v13;
  v14 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  __chkstk_darwin(v14 - 8);
  v53 = sub_10000A5D4(&qword_100957718, &qword_1007A3778);
  v48 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v41 - v15;
  v16 = sub_10076B27C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076B28C();
  v20 = (*(v17 + 88))(v19, v16);
  if (v20 != enum case for Uber.AssetType.artwork(_:))
  {
    if (v20 == enum case for Uber.AssetType.video(_:))
    {
      result = sub_10076B25C();
      if (!result)
      {
        return result;
      }

      sub_10076B84C();
    }

    else
    {
      if (v20 != enum case for Uber.AssetType.icon(_:))
      {
        return (*(v17 + 8))(v19, v16);
      }

      result = sub_10076B1FC();
      if (!result)
      {
        return result;
      }
    }

    goto LABEL_12;
  }

  swift_getKeyPath();
  sub_10076338C();

  v21 = v59;
  v22 = sub_1007706EC();

  if (v22)
  {
    result = sub_10076B20C();
    if (!result)
    {
      return result;
    }

LABEL_12:

    v24 = OBJC_IVAR____TtC20ProductPageExtension22UberCollectionViewCell_uberView;
    swift_beginAccess();
    v25 = *(v4 + v24);
    if (!v25)
    {
    }

    v41 = v25;
    sub_1007633DC();
    sub_10076FDBC();
    v26 = v47;
    sub_10076B23C();
    swift_getKeyPath();
    sub_1004492B8();
    sub_10076FD9C();

    v27 = v56;
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C2FC();
    v29 = v28;
    v30 = *(v46 + 8);
    v30(v9, v7);
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C2FC();
    v32 = v31;
    v30(v9, v7);
    swift_getKeyPath();
    sub_10076338C();

    v33 = v58;
    sub_10020B56C(v58, v26, (v27 & 1) == 0, v32, v29, 0);
    v34 = sub_1007706EC();
    v36 = v49;
    v35 = v50;
    if (v34)
    {
      v37 = v42;
      (*(v49 + 104))(v42, enum case for Uber.Style.inline(_:), v50);
      sub_10068CB60(&qword_10094DC28, &type metadata accessor for Uber.Style, &protocol conformance descriptor for Uber.Style);
      sub_10077018C();
      sub_10077018C();
      if (v56 == v54 && v57 == v55)
      {
        (*(v36 + 8))(v37, v35);

LABEL_21:
        sub_10076BFCC();

        (*(v36 + 8))(v26, v35);
        type metadata accessor for UberHeaderView();
        sub_10068CB60(&unk_1009624C0, type metadata accessor for UberHeaderView, &unk_10079F020);
        v40 = v41;
        sub_100760B8C();

        return (*(v48 + 8))(v52, v53);
      }

      v38 = sub_10077167C();
      (*(v36 + 8))(v37, v35);

      if (v38)
      {
        goto LABEL_21;
      }
    }

    sub_10076BEFC();
    v39 = v43;
    sub_10076D3AC();
    sub_10076D35C();
    (*(v44 + 8))(v39, v45);
    goto LABEL_21;
  }

  result = sub_10076B26C();
  if (result)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_10068CA30@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension22UberCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_10068CA8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension22UberCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10068CB60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10068CBBC()
{
  result = qword_1009633E8;
  if (!qword_1009633E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009633E8);
  }

  return result;
}

unint64_t sub_10068CC14()
{
  result = qword_1009633F0;
  if (!qword_1009633F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009633F0);
  }

  return result;
}

id sub_10068CC68()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for PlayerViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_10068CE04(uint64_t a1, uint64_t a2)
{
  v10.receiver = v2;
  v10.super_class = type metadata accessor for PlayerViewController();
  objc_msgSendSuper2(&v10, "viewDidLoad");
  v3 = [objc_opt_self() defaultCenter];
  v4 = sub_10076FF6C();
  v5 = [v2 player];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 currentItem];

    if (v7)
    {
      v9 = v7;
      sub_10068D55C();
      v7 = sub_10077165C();
    }
  }

  else
  {
    v7 = 0;
  }

  [v3 addObserver:v2 selector:"playerItemDidPlayToEndWithNotification:" name:v4 object:v7];

  swift_unknownObjectRelease();
  return result;
}

id sub_10068D3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10075DB7C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = objc_allocWithZone(AVPlayer);
  sub_10075DB1C(v10);
  v12 = v11;
  v13 = [v9 initWithURL:v11];

  v14 = [objc_allocWithZone(type metadata accessor for PlayerViewController()) initWithNibName:0 bundle:0];
  [v14 setPlayer:v13];

  (*(v5 + 8))(v8, v4);
  *(v14 + OBJC_IVAR____TtC20ProductPageExtension20PlayerViewController_autoplay) = 1;

  [v14 setAllowsPictureInPicturePlayback:0];
  [v14 setUpdatesNowPlayingInfoCenter:0];
  [v14 setAllowsVideoFrameAnalysis:0];

  return v14;
}

unint64_t sub_10068D55C()
{
  result = qword_100963438;
  if (!qword_100963438)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100963438);
  }

  return result;
}

id sub_10068D5A8()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for HttpTemplateController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10068D720(uint64_t a1)
{
  v93 = a1;
  v75 = sub_10075F65C();
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v76 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_100765F6C();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v74 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_100766EDC();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v72 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076F4FC();
  __chkstk_darwin(v5 - 8);
  v69 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v7 - 8);
  v68 = &v62 - v8;
  v9 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v9 - 8);
  v65 = &v62 - v10;
  v63 = sub_10076C15C();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v64 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076608C();
  v95 = *(v12 - 8);
  __chkstk_darwin(v12);
  v89 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v13;
  __chkstk_darwin(v14);
  v16 = &v62 - v15;
  v17 = sub_10000A5D4(&qword_100963498, &qword_1007B2D70);
  v90 = *(v17 - 8);
  __chkstk_darwin(v17);
  v79 = (&v62 - v18);
  v19 = sub_10000A5D4(&qword_1009634A0, &qword_1007B2D78);
  __chkstk_darwin(v19 - 8);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = (&v62 - v23);
  v94 = v1;
  sub_10076B8EC();
  v26 = v25;
  sub_10076419C();
  v28 = v27;
  if (!v26)
  {
    v29 = 0;
    if (v27)
    {
      goto LABEL_3;
    }

LABEL_5:
    v30 = 0;
    goto LABEL_6;
  }

  v29 = sub_10076FF6C();

  if (!v28)
  {
    goto LABEL_5;
  }

LABEL_3:
  v30 = sub_10076FF6C();

LABEL_6:
  v31 = [objc_opt_self() alertControllerWithTitle:v29 message:v30 preferredStyle:1];

  v92 = v31;
  sub_10068F008(v31, v93);
  result = sub_10076417C();
  v33 = result;
  v34 = 0;
  v35 = *(result + 16);
  v78 = OBJC_IVAR____TtC20ProductPageExtension22HttpTemplateController_hasRequiredParameters;
  v93 = v95 + 16;
  v91 = (v90 + 7);
  v77 = OBJC_IVAR____TtC20ProductPageExtension22HttpTemplateController_okAction;
  v90 += 6;
  v84 = v95 + 32;
  v82 += 7;
  v81 = &v97;
  v80 = (v95 + 8);
  v88 = v21;
  v87 = v17;
  v86 = result;
  v85 = v35;
  v83 = v24;
  while (1)
  {
    if (v34 == v35)
    {
      v36 = 1;
      v34 = v35;
      goto LABEL_13;
    }

    if ((v34 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v34 >= *(v33 + 16))
    {
      goto LABEL_19;
    }

    v37 = v95;
    v38 = v33 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v34;
    v39 = *(v17 + 48);
    v40 = v79;
    *v79 = v34;
    (*(v37 + 16))(v40 + v39, v38, v12);
    sub_100023AD0(v40, v21, &qword_100963498, &qword_1007B2D70);
    v36 = 0;
    ++v34;
LABEL_13:
    (*v91)(v21, v36, 1, v17);
    sub_100023AD0(v21, v24, &qword_1009634A0, &qword_1007B2D78);
    if ((*v90)(v24, 1, v17) == 1)
    {

      v98 = 0;
      aBlock = 0u;
      v97 = 0u;
      (*(v62 + 104))(v64, enum case for FlowPage.viewController(_:), v63);
      v58 = sub_10075DB7C();
      (*(*(v58 - 8) + 56))(v65, 1, 1, v58);
      v59 = sub_10076096C();
      (*(*(v59 - 8) + 56))(v68, 1, 1, v59);
      v101 = sub_100464654();
      v100 = v92;
      v60 = v92;
      sub_10076F4DC();
      (*(v66 + 104))(v72, enum case for FlowPresentationContext.presentModal(_:), v67);
      (*(v70 + 104))(v74, enum case for FlowAnimationBehavior.infer(_:), v71);
      (*(v73 + 104))(v76, enum case for FlowOrigin.inapp(_:), v75);
      sub_10076FA2C();
      sub_10075F63C();
      swift_allocObject();
      v61 = sub_10075F5EC();

      return v61;
    }

    v41 = *v24;
    v42 = *(v17 + 48);
    v43 = v95;
    v44 = *(v95 + 32);
    v44(v16, v24 + v42, v12);
    v45 = v12;
    v46 = v89;
    (*(v43 + 16))(v89, v16, v45);
    v47 = *(v43 + 80);
    v48 = v16;
    v49 = (v47 + 24) & ~v47;
    v50 = (v82 + v49) & 0xFFFFFFFFFFFFFFF8;
    v51 = swift_allocObject();
    *(v51 + 16) = v41;
    v52 = v46;
    v12 = v45;
    v44((v51 + v49), v52, v45);
    v53 = v94;
    *(v51 + v50) = v94;
    v98 = sub_10068FAAC;
    v99 = v51;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v97 = sub_1006C1A98;
    *(&v97 + 1) = &unk_10089F458;
    v54 = _Block_copy(&aBlock);
    v55 = v53;
    v16 = v48;

    [v92 addTextFieldWithConfigurationHandler:v54];
    _Block_release(v54);
    if (sub_10076602C())
    {
      v56 = v94;
      v94[v78] = 1;
      v57 = *&v56[v77];
      if (v57)
      {
        [v57 setEnabled:0];
      }
    }

    result = (*v80)(v48, v45);
    v17 = v87;
    v21 = v88;
    v24 = v83;
    v33 = v86;
    v35 = v85;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_10068E294(uint64_t a1)
{
  v56 = a1;
  v2 = sub_10000A5D4(&unk_100958FE0, qword_1007A5B10);
  v54 = *(v2 - 8);
  __chkstk_darwin(v2);
  v53 = v50 - v3;
  v4 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v4 - 8);
  v55 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v52 = v50 - v7;
  v59 = sub_10076F4FC();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076608C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v62 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076810C();
  v60 = *(v12 - 8);
  v61 = v12;
  __chkstk_darwin(v12);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000FD520(_swiftEmptyArrayStorage);
  sub_1000FD520(_swiftEmptyArrayStorage);
  sub_100562288(_swiftEmptyArrayStorage);
  sub_1000FD520(_swiftEmptyArrayStorage);
  v63 = v14;
  v15 = v1;
  sub_1007680FC();
  v16 = OBJC_IVAR____TtC20ProductPageExtension22HttpTemplateController_textFields;
  swift_beginAccess();
  v17 = *(v15 + v16);
  if (v17 >> 62)
  {
    goto LABEL_27;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v19 = &qword_100963000;
  if (v18)
  {
    while (v18 >= 1)
    {
      v51 = v2;
      v20 = v19[136];
      v50[1] = v15;
      v21 = *(v15 + v20);
      v65 = v17 & 0xC000000000000001;
      v66 = v21;
      v64 = v10 + 16;
      v22 = (v10 + 8);

      v15 = 0;
      v2 = v62;
      while (1)
      {
        v23 = v65 ? sub_10077149C() : *(v17 + 8 * v15 + 32);
        v24 = v23;
        v25 = sub_10076417C();
        v26 = [v24 tag];
        if ((v26 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v26 >= *(v25 + 16))
        {
          goto LABEL_26;
        }

        (*(v10 + 16))(v2, v25 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v26, v9);

        v27 = [v24 text];
        if (v27)
        {
          v28 = v27;
          sub_10076FF9C();

          v2 = v62;
          sub_1007680EC();

          (*v22)(v2, v9);
        }

        else
        {
          (*v22)(v2, v9);
        }

        if (v18 == ++v15)
        {

          v2 = v51;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      v18 = sub_10077158C();
      v19 = &qword_100963000;
      if (!v18)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    swift_once();
    v30 = sub_10076FD4C();
    sub_10000A61C(v30, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100784500;
    sub_10076F27C();
    swift_getErrorValue();
    v31 = v70;
    v32 = v71;
    v68 = v71;
    v33 = sub_10000DB7C(v67);
    (*(*(v32 - 8) + 16))(v33, v31, v32);
    sub_10076F32C();
    sub_10000CFBC(v67, &unk_1009434C0, &qword_100783F60);
    sub_10076FBEC();

    v34 = sub_10076416C();
    if (v34)
    {
      v35 = v34;
      v36 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
      v37 = v55;
      sub_10076F5AC();
      v38 = *(v36 - 8);
      if ((*(v38 + 48))(v37, 1, v36) == 1)
      {
        (*(v60 + 8))(v63, v61);

        v39 = v37;
        return sub_10000CFBC(v39, &unk_100943200, &unk_100785840);
      }

      v68 = sub_10076B90C();
      v69 = sub_10068F9BC(&qword_10095D660, &type metadata accessor for Action);
      v67[0] = v35;
      v46 = v54;
      v47 = v53;
      (*(v54 + 104))(v53, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v2);

      sub_10076F6CC();

      (*(v46 + 8))(v47, v2);
      (*(v60 + 8))(v63, v61);
      sub_10000CD74(v67);
      return (*(v38 + 8))(v37, v36);
    }

    else
    {
      (*(v60 + 8))(v63, v61);
    }
  }

  else
  {
LABEL_15:
    v29 = v57;
    sub_10076F4DC();
    v40 = sub_10076415C();
    (*(v58 + 8))(v29, v59);
    v41 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
    v42 = v52;
    sub_10076F5AC();
    v43 = *(v41 - 8);
    v44 = (*(v43 + 48))(v42, 1, v41);
    if (v44 == 1)
    {
      (*(v60 + 8))(v63, v61);

      v39 = v42;
      return sub_10000CFBC(v39, &unk_100943200, &unk_100785840);
    }

    v68 = sub_10075F71C();
    v69 = sub_10068F9BC(&unk_10095D640, &type metadata accessor for HttpAction);
    v67[0] = v40;
    v48 = v54;
    v49 = v53;
    (*(v54 + 104))(v53, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v2);

    sub_10076F6CC();

    (*(v48 + 8))(v49, v2);
    (*(v60 + 8))(v63, v61);
    sub_10000CD74(v67);
    return (*(v43 + 8))(v42, v41);
  }
}

uint64_t sub_10068ED58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10076606C();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setTag:{a2, v9}];
  sub_10076605C();
  if (v12)
  {
    v13 = sub_10076FF6C();
  }

  else
  {
    v13 = 0;
  }

  [a1 setPlaceholder:v13];

  sub_10076607C();
  v14 = (*(v8 + 88))(v11, v7);
  if (v14 == enum case for HttpTemplateParameter.InputType.text(_:))
  {
    goto LABEL_5;
  }

  if (v14 == enum case for HttpTemplateParameter.InputType.email(_:))
  {
    v15 = 7;
  }

  else if (v14 == enum case for HttpTemplateParameter.InputType.phoneNumber(_:))
  {
    v15 = 5;
  }

  else
  {
    if (v14 != enum case for HttpTemplateParameter.InputType.decimalPad(_:))
    {
      (*(v8 + 8))(v11, v7);
LABEL_5:
      v15 = 0;
      goto LABEL_12;
    }

    v15 = 8;
  }

LABEL_12:
  [a1 setKeyboardType:v15];
  [a1 setDelegate:a4];
  v16 = [objc_opt_self() defaultCenter];
  [v16 addObserver:a4 selector:"textFieldDidChange:" name:UITextFieldTextDidChangeNotification object:a1];

  v17 = OBJC_IVAR____TtC20ProductPageExtension22HttpTemplateController_textFields;
  swift_beginAccess();
  v18 = a1;
  sub_10077019C();
  if (*((*(a4 + v17) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + v17) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  return swift_endAccess();
}

void sub_10068F008(void *a1, uint64_t a2)
{
  v15._countAndFlagsBits = 0x432E6E6F69746341;
  v15._object = 0xED00006C65636E61;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_1007622EC(v15, v17);
  v5 = sub_10076FF6C();

  v6 = objc_opt_self();
  v7 = [v6 actionWithTitle:v5 style:0 handler:0];

  [a1 addAction:v7];
  v16._countAndFlagsBits = 0x4F2E6E6F69746341;
  v16._object = 0xE90000000000004BLL;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_1007622EC(v16, v18);
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = a2;
  v9 = v2;

  v10 = sub_10076FF6C();

  v14[4] = sub_10068F97C;
  v14[5] = v8;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1006C1A98;
  v14[3] = &unk_10089F408;
  v11 = _Block_copy(v14);

  v12 = [v6 actionWithTitle:v10 style:0 handler:v11];
  _Block_release(v11);

  [a1 addAction:v12];
  [a1 setPreferredAction:v12];
  v13 = *&v9[OBJC_IVAR____TtC20ProductPageExtension22HttpTemplateController_okAction];
  *&v9[OBJC_IVAR____TtC20ProductPageExtension22HttpTemplateController_okAction] = v12;
}

id sub_10068F228(__n128 a1)
{
  v33 = sub_10076608C();
  v2 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC20ProductPageExtension22HttpTemplateController_textFields;
  swift_beginAccess();
  v31 = *(v1 + v4);
  if (!(v31 >> 62))
  {
    v30 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_3;
    }

LABEL_21:
    result = *(v1 + OBJC_IVAR____TtC20ProductPageExtension22HttpTemplateController_okAction);
    if (result)
    {
      return [result setEnabled:1];
    }

    return result;
  }

LABEL_28:
  v30 = sub_10077158C();
  if (!v30)
  {
    goto LABEL_21;
  }

LABEL_3:
  v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension22HttpTemplateController_templateAction);
  v6 = v31 & 0xC000000000000001;
  v25 = v1;
  v26 = v31 & 0xFFFFFFFFFFFFFF8;
  v28 = (v2 + 8);
  v29 = v5;

  v7 = 0;
  v8 = &selRef__setPocketInsets_;
  v27 = v2;
  while (1)
  {
    if (v6)
    {
      v9 = sub_10077149C();
    }

    else
    {
      if (v7 >= *(v26 + 16))
      {
        goto LABEL_27;
      }

      v9 = *(v31 + 8 * v7 + 32);
    }

    v10 = v9;
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v1 = sub_10076417C();
    v12 = [v10 v8[445]];
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_25;
    }

    if (v12 >= v1[2])
    {
      goto LABEL_26;
    }

    v13 = v32;
    (*(v2 + 16))(v32, v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v12, v33);

    v1 = v13;
    v14 = v10;
    if (sub_10076602C())
    {
      v15 = [v10 text];
      if (!v15)
      {
        break;
      }

      v1 = v15;
      v16 = sub_10076FF9C();
      v17 = v8;
      v19 = v18;

      v20 = HIBYTE(v19) & 0xF;
      v21 = v16 & 0xFFFFFFFFFFFFLL;
      v2 = v27;
      v22 = (v19 & 0x2000000000000000) == 0;
      v8 = v17;
      v14 = v10;
      if (v22)
      {
        v20 = v21;
      }

      if (!v20)
      {
        break;
      }
    }

    (*v28)(v32, v33);
    ++v7;
    if (v11 == v30)
    {

      v1 = v25;
      goto LABEL_21;
    }
  }

  v23 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension22HttpTemplateController_okAction);
  if (v23)
  {
    [v23 setEnabled:0];
  }

  return (*v28)(v32, v33);
}

void sub_10068F54C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v9 = sub_10076608C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076417C();
  v14 = [a1 tag];
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v14 >= *(v13 + 16))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  (*(v10 + 16))(v12, v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v14, v9);

  sub_10076603C();
  if ((v15 & 1) == 0)
  {
    v16 = [a1 text];
    if (v16)
    {
      v17 = v16;
      v18 = sub_10076FF6C();
      v19 = [v17 stringByReplacingCharactersInRange:a2 withString:{a3, v18}];

      if (v19)
      {
        [v19 length];

        (*(v10 + 8))(v12, v9);
        return;
      }

      goto LABEL_11;
    }
  }

  (*(v10 + 8))(v12, v9);
}

uint64_t sub_10068F93C()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_10068F9A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10068F9BC(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t sub_10068FA10(__n128 a1)
{
  v2 = sub_10076608C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 8, v4 | 7);
}

uint64_t sub_10068FAAC(void *a1, __n128 a2)
{
  v4 = *(sub_10076608C() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10068ED58(a1, v6, v2 + v5, v7);
}

double sub_10068FBA0()
{
  v101 = sub_10000A5D4(&qword_100957BC0, &qword_1007A46B8);
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v75 - v0;
  v94 = sub_10076514C();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v95 = &v75 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_10076516C();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_10076DD3C();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v87 = &v75 - v5;
  v84 = sub_100760FDC();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_10076D7FC();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v78 = &v75 - v9;
  __chkstk_darwin(v10);
  v79 = &v75 - v11;
  v92 = sub_10076DA7C();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v110 = &v75 - v14;
  v15 = sub_10075D99C();
  v108 = *(v15 - 8);
  v109 = v15;
  __chkstk_darwin(v15);
  v107 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10076C38C();
  v105 = *(v17 - 1);
  v106 = v17;
  __chkstk_darwin(v17);
  v104 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_10076B6EC();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v75 - v22;
  v24 = sub_10076469C();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  __chkstk_darwin(v28 - 8);
  v111 = sub_10000A5D4(&qword_100959E28, &qword_1007A7350);
  v85 = *(v111 - 8);
  __chkstk_darwin(v111);
  v30 = &v75 - v29;
  sub_10076101C();
  sub_100690BA4(&qword_100959E30, &type metadata accessor for ReviewSummary, &protocol conformance descriptor for ReviewSummary);
  sub_10076332C();
  v31 = aBlock[0];
  if (!aBlock[0])
  {
    return 0.0;
  }

  sub_1007633DC();
  sub_10076FDBC();
  sub_1007632FC();
  sub_10076465C();
  (*(v25 + 8))(v27, v24);
  sub_10076B68C();
  sub_100690BA4(&unk_100946780, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v32 = v103;
  v33 = sub_10077124C();
  v34 = *(v102 + 8);
  v34(v20, v32);
  v34(v23, v32);
  swift_getKeyPath();
  sub_1004C62D4();
  sub_10076FD9C();

  LODWORD(v103) = LOBYTE(aBlock[0]);
  swift_getKeyPath();
  v35 = v104;
  sub_10076338C();

  sub_10076C2FC();
  (*(v105 + 8))(v35, v106);
  swift_getKeyPath();
  sub_10076338C();

  v36 = v117;
  v37 = v107;
  sub_100760FCC();
  v76 = v30;
  if ((v33 ^ 1))
  {
    v38 = 0;
  }

  else
  {
    v38 = sub_1007706FC();
  }

  v40 = sub_1003D9E44(v37, v38 & 1, v36);
  (*(v108 + 8))(v37, v109);
  v41 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v40];
  v42 = [v40 length];
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = v36;
  *(v43 + 32) = v41;
  *(v43 + 40) = 1;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_1000275EC;
  *(v44 + 24) = v43;
  v115 = sub_1000ACB04;
  v116 = v44;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026610;
  v114 = &unk_10089F4D0;
  v45 = _Block_copy(aBlock);
  v109 = v36;
  v46 = v41;

  [v40 enumerateAttributesInRange:0 options:v42 usingBlock:{0x100000, v45}];

  _Block_release(v45);
  LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

  if (v40)
  {
    __break(1u);
    goto LABEL_13;
  }

  v47 = v77;
  sub_10076D7EC();
  v48 = v78;
  sub_10076D79C();
  v49 = *(v80 + 8);
  v50 = v81;
  v49(v47, v81);
  sub_10076D7AC();
  v49(v48, v50);
  sub_10076DA5C();
  v107 = v46;
  sub_10076DAAC();
  v51 = sub_10076100C();
  v53 = v52;
  v54 = sub_100760FBC();
  v55 = v82;
  v108 = v31;
  sub_100760FEC();
  v56 = sub_1003DAB0C(v51, v53, v54, v55);

  (*(v83 + 8))(v55, v84);
  v106 = v56;
  v43 = v86;
  sub_10076DD2C();
  if (qword_100940D00 != -1)
  {
LABEL_13:
    swift_once();
  }

  v57 = sub_10076D3DC();
  sub_10000A61C(v57, qword_1009A14F8);
  sub_10076DCFC();
  (*(v88 + 8))(v43, v89);
  sub_10076DA5C();
  v58 = v90;
  sub_10076DABC();
  if (qword_100940390 != -1)
  {
    swift_once();
  }

  v59 = v94;
  v60 = sub_10000A61C(v94, qword_10099F7E0);
  (*(v93 + 16))(v95, v60, v59);
  v61 = v92;
  v114 = v92;
  v115 = &protocol witness table for LabelPlaceholder;
  v62 = sub_10000DB7C(aBlock);
  v63 = v91;
  v64 = *(v91 + 16);
  v65 = v110;
  v64(v62, v110, v61);
  v112[3] = v61;
  v112[4] = &protocol witness table for LabelPlaceholder;
  v66 = sub_10000DB7C(v112);
  v64(v66, v58, v61);
  v67 = v96;
  sub_10076515C();
  sub_100690BA4(&qword_100957BD0, &type metadata accessor for ReviewSummaryLayout, &protocol conformance descriptor for ReviewSummaryLayout);
  v68 = v99;
  v69 = v98;
  sub_10076D43C();
  swift_getOpaqueTypeConformance2();
  v70 = v109;
  v71 = v101;
  sub_10076E0FC();
  v39 = v72;

  (*(v100 + 8))(v68, v71);
  (*(v97 + 8))(v67, v69);
  v73 = *(v63 + 8);
  v73(v58, v61);
  v73(v65, v61);
  (*(v85 + 8))(v76, v111);
  return v39;
}

uint64_t sub_100690B34()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_100690B8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100690BA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100690BEC()
{
  if (qword_100941370 != -1)
  {
    swift_once();
  }

  v1 = qword_1009A2720;
  qword_1009A31D0 = qword_1009A2720;

  return v1;
}

char *sub_100690C50()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_isHighlighted] = 0;
  v1[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_showSeparator] = 0;
  v6 = OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_separatorView;
  *&v1[v6] = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_iconImage] = 0;
  sub_1007626BC();
  v7 = sub_10076D1AC();
  v33[3] = v7;
  v33[4] = &protocol witness table for FontSource;
  v8 = sub_10000DB7C(v33);
  if (qword_100941498 != -1)
  {
    v31 = v8;
    swift_once();
    v8 = v31;
  }

  v9 = qword_1009A31D0;
  *v8 = qword_1009A31D0;
  (*(*(v7 - 8) + 104))();
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.leading(_:), v2);
  v10 = v9;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_titleLabel] = sub_1007625EC();
  *&v1[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_iconView] = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = type metadata accessor for SearchHintView();
  v32.receiver = v1;
  v32.super_class = v11;
  v12 = objc_msgSendSuper2(&v32, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v17 = OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_titleLabel;
  v18 = qword_100941358;
  v19 = *&v16[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_titleLabel];
  if (v18 != -1)
  {
    swift_once();
  }

  [v19 setTextColor:qword_1009A2708];

  v20 = *&v16[v17];
  v21 = [v16 traitCollection];
  v22 = [v21 preferredContentSizeCategory];
  v23 = sub_10077084C();

  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = 2;
  }

  [v20 setNumberOfLines:v24];

  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100783DD0;
  *(v25 + 32) = sub_10076E88C();
  *(v25 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100770C6C();
  swift_unknownObjectRelease();

  [v16 addSubview:*&v16[v17]];
  v26 = OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_iconView;
  v27 = qword_100941368;
  v28 = *&v16[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_iconView];
  if (v27 != -1)
  {
    swift_once();
  }

  [v28 setTintColor:qword_1009A2718];

  [v16 addSubview:*&v16[v26]];
  v29 = OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_separatorView;
  [*&v16[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_separatorView] setHidden:v16[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_showSeparator]];
  [v16 addSubview:*&v16[v29]];

  return v16;
}

void sub_1006911EC(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v4 = *&v3[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_iconImage];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 traitCollection];
    if (qword_100941370 != -1)
    {
      swift_once();
    }

    v7 = [objc_opt_self() configurationWithTextStyle:qword_1009A2720 scale:2];
    v8 = [v7 configurationWithTraitCollection:v6];

    v9 = [v5 imageWithConfiguration:v8];
  }

  else
  {
    v9 = 0;
  }

  v11.value.super.isa = v9;
  v11.is_nil = 0;
  sub_10075FCEC(v11, a3);
}

uint64_t sub_100691340()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_10076D1FC();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100762D1C();
  v29 = *(v4 - 8);
  v30 = v4;
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100762CFC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = type metadata accessor for SearchHintView();
  v42.receiver = v0;
  v42.super_class = v14;
  objc_msgSendSuper2(&v42, "layoutSubviews");
  v15 = *&v0[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_iconImage];
  v16 = v15;
  [v0 layoutMargins];
  sub_100691684(v15, v0, v13, v17, v18);

  (*(v8 + 16))(v10, v13, v7);
  v19 = *&v0[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_iconView];
  v40 = sub_10075FD2C();
  v41 = &protocol witness table for UIView;
  v39 = v19;
  v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_titleLabel];
  v37 = sub_1007626BC();
  v38 = &protocol witness table for UILabel;
  v36 = v20;
  v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_separatorView];
  v34 = type metadata accessor for SeparatorView(0);
  v35 = &protocol witness table for UIView;
  v33 = v21;
  v22 = v19;
  v23 = v20;
  v24 = v21;
  sub_100762D0C();
  [v1 bounds];
  v25 = v28;
  sub_100762CCC();
  (*(v31 + 8))(v25, v32);
  (*(v29 + 8))(v6, v30);
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_100691684@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D1>, uint64_t a5@<D3>)
{
  v41 = a3;
  v9 = sub_10077164C();
  v40 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076D1AC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_10076D9AC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v20 = a1;
    v21 = [a2 traitCollection];
    if (qword_100941370 != -1)
    {
      swift_once();
    }

    v22 = [objc_opt_self() configurationWithTextStyle:qword_1009A2720 scale:2];
    v23 = [v22 configurationWithTraitCollection:v21];

    v24 = [v20 imageWithConfiguration:v23];
    [v24 size];
  }

  else
  {
    v39 = v9;
    v25 = v16;
    if (qword_100941498 != -1)
    {
      swift_once();
    }

    v26 = qword_1009A31D0;
    *v15 = qword_1009A31D0;
    (*(v13 + 104))(v15, enum case for FontSource.textStyle(_:), v12);
    v48 = v12;
    v49 = &protocol witness table for FontSource;
    v27 = sub_10000DB7C(v47);
    (*(v13 + 16))(v27, v15, v12);
    v28 = v26;
    sub_10076D9BC();
    (*(v13 + 8))(v15, v12);
    sub_10076D17C();
    v16 = v25;
    sub_10076D40C();
    (*(v40 + 8))(v11, v39);
    (*(v17 + 8))(v19, v25);
  }

  v48 = &type metadata for CGFloat;
  v49 = &protocol witness table for CGFloat;
  v47[0] = a4;
  v46[8] = &type metadata for CGFloat;
  v46[9] = &protocol witness table for CGFloat;
  v46[5] = a5;
  if (qword_100941498 != -1)
  {
    swift_once();
  }

  v29 = qword_1009A31D0;
  *v15 = qword_1009A31D0;
  v30 = enum case for FontSource.textStyle(_:);
  v31 = *(v13 + 104);
  v31(v15, enum case for FontSource.textStyle(_:), v12);
  v46[3] = v16;
  v46[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v46);
  v44 = v12;
  v45 = &protocol witness table for FontSource;
  v32 = sub_10000DB7C(v43);
  v40 = v16;
  v33 = *(v13 + 16);
  v33(v32, v15, v12);
  v34 = v29;
  sub_10076D9BC();
  v35 = *(v13 + 8);
  v35(v15, v12);
  *v15 = v34;
  v31(v15, v30, v12);
  v44 = v40;
  v45 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v43);
  v42[3] = v12;
  v42[4] = &protocol witness table for FontSource;
  v36 = sub_10000DB7C(v42);
  v33(v36, v15, v12);
  sub_10076D9BC();
  v35(v15, v12);
  return sub_100762CDC();
}

double sub_100691CB4(void *a1, double a2, double a3)
{
  v4 = v3;
  v29[1] = a1;
  v29[2] = swift_getObjectType();
  v30 = sub_100762D1C();
  v6 = *(v30 - 8);
  __chkstk_darwin(v30);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100762CFC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v29 - v14;
  v16 = *&v4[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_iconImage];
  v17 = v16;
  [v4 layoutMargins];
  sub_100691684(v16, a1, v15, v18, v19);

  (*(v10 + 16))(v12, v15, v9);
  v20 = *&v4[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_iconView];
  v38 = sub_10075FD2C();
  v39 = &protocol witness table for UIView;
  v37 = v20;
  v21 = *&v4[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_titleLabel];
  v35 = sub_1007626BC();
  v36 = &protocol witness table for UILabel;
  v34 = v21;
  v22 = *&v4[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_separatorView];
  v32 = type metadata accessor for SeparatorView(0);
  v33 = &protocol witness table for UIView;
  v31 = v22;
  v23 = v20;
  v24 = v21;
  v25 = v22;
  sub_100762D0C();
  sub_100762CBC();
  v27 = v26;
  (*(v6 + 8))(v8, v30);
  (*(v10 + 8))(v15, v9);
  return v27;
}

id sub_100692040(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchHintView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100692104(char *a1, id a2)
{
  v3 = [a2 preferredContentSizeCategory];
  v4 = sub_10077084C() & 1;

  v5 = [a1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LODWORD(v5) = sub_10077084C() & 1;
  if (v4 != v5)
  {
    v7 = *&a1[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_titleLabel];
    v8 = [a1 traitCollection];
    v9 = [v8 preferredContentSizeCategory];
    v10 = sub_10077084C();

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
    }

    [v7 setNumberOfLines:v11];

    [a1 setNeedsLayout];
  }
}

uint64_t sub_100692240(void *a1, void *a2, __n128 a3)
{
  v92 = a1;
  v97 = sub_100762D1C();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v94 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v4;
  __chkstk_darwin(v5);
  v95 = &v71 - v6;
  v91 = sub_10076D7FC();
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v79 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v81 = &v71 - v9;
  __chkstk_darwin(v10);
  v82 = &v71 - v11;
  __chkstk_darwin(v12);
  v84 = &v71 - v13;
  __chkstk_darwin(v14);
  v86 = &v71 - v15;
  v87 = sub_10076DA7C();
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v83 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_10077164C();
  v78 = *(v98 - 8);
  __chkstk_darwin(v98);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10076D1AC();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_10076D9AC();
  v77 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_100762CFC();
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v80 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = __chkstk_darwin(v27).n128_u64[0];
  v100 = &v71 - v29;
  v99 = a2;
  [a2 pageMarginInsets];
  v31 = v30;
  v33 = v32;
  if (qword_100941498 != -1)
  {
    swift_once();
  }

  v34 = qword_1009A31D0;
  *v22 = qword_1009A31D0;
  v73 = enum case for FontSource.textStyle(_:);
  v72 = v20[13];
  v72(v22);
  v71 = v20 + 13;
  v110 = v19;
  v111 = &protocol witness table for FontSource;
  v35 = sub_10000DB7C(&v109);
  v74 = v20[2];
  v75 = v20 + 2;
  v74(v35, v22, v19);
  v36 = v34;
  sub_10076D9BC();
  v76 = v20[1];
  v76(v22, v19);
  sub_10076D17C();
  sub_10076D40C();
  v78[1](v18, v98);
  (*(v77 + 8))(v25, v23);
  v110 = &type metadata for CGFloat;
  v111 = &protocol witness table for CGFloat;
  v109 = v31;
  v107 = &type metadata for CGFloat;
  v108 = &protocol witness table for CGFloat;
  v106 = v33;
  v37 = v36;
  *v22 = v36;
  v38 = v73;
  v39 = v72;
  (v72)(v22, v73, v19);
  v105[3] = v23;
  v105[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v105);
  v103 = v19;
  v104 = &protocol witness table for FontSource;
  v40 = sub_10000DB7C(&v102);
  v41 = v74;
  v74(v40, v22, v19);
  v42 = v37;
  v78 = v42;
  sub_10076D9BC();
  v43 = v76;
  v76(v22, v19);
  *v22 = v42;
  v39(v22, v38, v19);
  v103 = v23;
  v104 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v102);
  v101[3] = v19;
  v101[4] = &protocol witness table for FontSource;
  v44 = sub_10000DB7C(v101);
  v41(v44, v22, v19);
  sub_10076D9BC();
  v43(v22, v19);
  sub_100762CDC();
  sub_100762CEC();
  v45 = sub_10076DDDC();
  swift_allocObject();
  v98 = sub_10076DDBC();
  v46 = v79;
  sub_10076D7EC();
  v47 = objc_opt_self();
  v48 = v99;
  v49 = [v99 traitCollection];
  v50 = [v47 preferredFontForTextStyle:v78 compatibleWithTraitCollection:v49];

  v51 = v81;
  sub_10076D7DC();

  v52 = *(v89 + 8);
  v53 = v91;
  v52(v46, v91);
  v54 = v82;
  sub_10076D73C();
  v52(v51, v53);
  v55 = v84;
  sub_10076D79C();
  v52(v54, v53);
  v56 = [v48 traitCollection];
  v57 = [v56 preferredContentSizeCategory];
  sub_10077084C();

  sub_10076D7AC();
  v52(v55, v53);
  sub_10076DA5C();
  v58 = v92;
  v59 = v83;
  sub_10076DAAC();
  sub_10076DA4C();
  (*(v85 + 8))(v59, v87);
  swift_allocObject();
  v60 = sub_10076DDBC();
  v61 = v88;
  v62 = v90;
  (*(v88 + 16))(v80, v100, v90);
  v107 = v45;
  v108 = &protocol witness table for LayoutViewPlaceholder;
  v106 = v98;
  sub_10000A570(&v109, v105);
  v103 = v45;
  v104 = &protocol witness table for LayoutViewPlaceholder;
  v102 = v60;

  v63 = v95;
  sub_100762D0C();
  v64 = v96;
  v65 = v94;
  v66 = v97;
  (*(v96 + 16))(v94, v63, v97);
  v67 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v68 = swift_allocObject();
  (*(v64 + 32))(v68 + v67, v65, v66);
  swift_allocObject();
  v69 = sub_10076DD9C();

  (*(v64 + 8))(v63, v66);
  sub_10000CD74(&v109);
  (*(v61 + 8))(v100, v62);
  return v69;
}

uint64_t sub_100692E40(__n128 a1)
{
  v2 = sub_100762D1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100692F44(uint64_t a1, uint64_t a2)
{
  v3 = sub_100764B4C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_100699CA8(&qword_1009635A0, &type metadata accessor for ComponentDecoration, &protocol conformance descriptor for ComponentDecoration), v7 = sub_10076FEAC(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_100699CA8(&qword_1009635A8, &type metadata accessor for ComponentDecoration, &protocol conformance descriptor for ComponentDecoration);
      v15 = sub_10076FF1C();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_10069315C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = sub_10075F8BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_100699CA8(&qword_100946840, &type metadata accessor for PageFacets.Facet.Option, &protocol conformance descriptor for PageFacets.Facet.Option), v8 = sub_10076FEAC(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, v19 = a2 + 56, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v18 = a2;
    v11 = ~v9;
    v12 = v5 + 16;
    v13 = *(v5 + 16);
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    do
    {
      v13(v7, *(v18 + 48) + v14 * v10, v4);
      sub_100699CA8(&qword_100946848, &type metadata accessor for PageFacets.Facet.Option, &protocol conformance descriptor for PageFacets.Facet.Option);
      v16 = sub_10076FF1C();
      (*v15)(v7, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_100693374(uint64_t a1, uint64_t a2)
{
  v3 = sub_10075E11C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_100699CA8(&qword_10094E860, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath), v7 = sub_10076FEAC(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_100699CA8(&qword_100947F00, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v15 = sub_10076FF1C();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_10069358C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076B5BC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_100699CA8(&qword_10094B0F8, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType), v7 = sub_10076FEAC(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_100699CA8(&qword_100942C48, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
      v15 = sub_10076FF1C();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1006937A4(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_10077139C();
  }

  else if (*(a2 + 16) && (sub_100016F40(0, &qword_10094F760, UITouch_ptr), v5 = sub_100770EDC(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_100770EEC();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1006938BC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_10076FF9C(), sub_10077175C(), sub_10077008C(), v3 = sub_1007717AC(), , v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = sub_10076FF9C();
      v9 = v8;
      if (v7 == sub_10076FF9C() && v9 == v10)
      {
        break;
      }

      v12 = sub_10077167C();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

double sub_100693A10(__n128 a1, double a2)
{
  v3 = sub_10075ECCC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10075F0AC();
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10075F0CC();
  v44 = *(v10 - 8);
  v45 = v10;
  __chkstk_darwin(v10);
  v43 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_type;
  swift_beginAccess();
  (*(v4 + 16))(v6, &v2[v12], v3);
  v13 = *&v2[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerDisplayProperties];

  v42 = v9;
  sub_1006961BC(v6, v13, v2, v9);

  (*(v4 + 8))(v6, v3);
  v14 = *&v2[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_iconView];
  v70 = sub_10075FD2C();
  v71 = &protocol witness table for UIView;
  v41 = v14;
  v69 = v14;
  v15 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_wordmarkView;
  swift_beginAccess();
  v16 = *&v2[v15];
  if (v16)
  {
    v17 = sub_100760B6C();
    v18 = &protocol witness table for UIView;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v65 = 0;
    v66 = 0;
  }

  v64 = v16;
  v67 = v17;
  v68 = v18;
  v40 = *&v2[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_titleLabel];
  v19 = v40;
  v20 = sub_1007626BC();
  v62 = v20;
  v63 = &protocol witness table for UILabel;
  v60 = &protocol witness table for UILabel;
  v61 = v19;
  v21 = *&v2[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_descriptionLabel];
  v59 = v20;
  v58 = v21;
  v22 = *&v2[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerButton];
  v56 = type metadata accessor for OfferButton();
  v57 = &protocol witness table for UIView;
  v23 = *&v2[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerLabel];
  v54 = &protocol witness table for UILabel;
  v55 = v22;
  v53 = v20;
  v51 = &protocol witness table for UILabel;
  v52 = v23;
  v24 = *&v2[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkTitleLabel];
  v50 = v20;
  v48 = &protocol witness table for UILabel;
  v49 = v24;
  v25 = *&v2[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkSubtitleLabel];
  v47 = v20;
  v46 = v25;
  v26 = v41;
  v27 = v16;
  v28 = v40;
  v29 = v21;
  v30 = v22;
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v34 = v43;
  sub_10075F0BC();
  sub_100699CA8(&qword_1009635B0, &type metadata accessor for AppShowcaseLockupViewLayout, &protocol conformance descriptor for AppShowcaseLockupViewLayout);
  v35 = v45;
  sub_10076D2AC();
  v37 = v36;
  (*(v44 + 8))(v34, v35);
  return v37;
}

double sub_100693E0C(uint64_t a1, void *a2, __n128 a3, double a4)
{
  v142 = a2;
  v5 = sub_10075F0AC();
  __chkstk_darwin(v5 - 8);
  v127 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10075F0CC();
  v129 = *(v7 - 8);
  v130 = v7;
  __chkstk_darwin(v7);
  v128 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076201C();
  v111 = *(v9 - 8);
  v112 = v9;
  __chkstk_darwin(v9);
  v110 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v109 = &v109 - v12;
  v13 = sub_10076443C();
  v140 = *(v13 - 8);
  v141 = v13;
  __chkstk_darwin(v13);
  v122 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v139 = &v109 - v16;
  v138 = sub_10076D3DC();
  v135 = *(v138 - 8);
  __chkstk_darwin(v138);
  v136 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_10076997C();
  v18 = *(v143 - 8);
  __chkstk_darwin(v143);
  v123 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v121 = &v109 - v21;
  __chkstk_darwin(v22);
  v132 = &v109 - v23;
  v24 = sub_10075ECCC();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v126 = &v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v120 = &v109 - v28;
  __chkstk_darwin(v29);
  v119 = &v109 - v30;
  __chkstk_darwin(v31);
  v33 = &v109 - v32;
  __chkstk_darwin(v34);
  v36 = &v109 - v35;
  __chkstk_darwin(v37);
  v39 = &v109 - v38;
  __chkstk_darwin(v40);
  v42 = &v109 - v41;
  v145 = a1;
  sub_10075F23C();
  v117 = *(v25 + 32);
  v118 = v25 + 32;
  v117(v39, v42, v24);
  v146 = v25;
  v44 = v25 + 88;
  v43 = *(v25 + 88);
  v45 = v43(v39, v24);
  v137 = enum case for AppShowcaseType.large(_:);
  if (v45 == enum case for AppShowcaseType.large(_:) || v45 == enum case for AppShowcaseType.small(_:))
  {
    v46 = v18;
  }

  else
  {
    v46 = v18;
    if (v45 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      (*(v146 + 8))(v39, v24);
    }
  }

  v47 = sub_10076DDDC();
  swift_allocObject();
  v125 = sub_10076DDBC();
  v144 = v24;
  sub_10075F25C();
  v124 = sub_10076BB6C();
  v115 = v48;

  v49 = v144;
  sub_10075F23C();
  (*(v146 + 16))(v33, v36, v49);
  v50 = v43(v33, v49);
  v51 = v138;
  v116 = v43;
  v114 = v44;
  if (v50 == v137)
  {
    v52 = v136;
    if (qword_100940F78 != -1)
    {
      swift_once();
    }

    v53 = qword_1009A1C60;
LABEL_18:
    v58 = sub_10000A61C(v51, v53);
    v57 = v135;
    (*(v135 + 16))(v52, v58, v51);
    v131 = *(v146 + 8);
    v131(v36, v49);
    goto LABEL_19;
  }

  v52 = v136;
  if (v50 == enum case for AppShowcaseType.small(_:) || v50 == enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    if (qword_100940F80 != -1)
    {
      swift_once();
    }

    v53 = qword_1009A1C78;
    goto LABEL_18;
  }

  if (qword_100940F80 != -1)
  {
    swift_once();
  }

  v54 = sub_10000A61C(v51, qword_1009A1C78);
  v55 = v135;
  (*(v135 + 16))(v52, v54, v51);
  v56 = *(v146 + 8);
  v56(v36, v49);
  v131 = v56;
  v56(v33, v49);
  v52 = v136;
  v57 = v55;
LABEL_19:
  v59 = sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  v60 = v142;
  v61 = [v142 traitCollection];
  sub_100770B3C();

  (*(v57 + 8))(v52, v51);
  v62 = sub_10076C04C();
  v160[3] = v62;
  v136 = sub_100699CA8(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v160[4] = v136;
  v63 = sub_10000DB7C(v160);
  v64 = *(v62 - 8);
  v65 = *(v64 + 104);
  LODWORD(v135) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v133 = v64 + 104;
  v134 = v65;
  v65(v63);
  sub_10076C90C();
  sub_10000CD74(v160);
  v66 = v132;
  sub_10076996C();
  sub_10076994C();
  v67 = *(v46 + 8);
  v124 = v46 + 8;
  v132 = v67;
  (v67)(v66, v143);
  v113 = sub_10075F22C();
  v68 = v51;
  if (qword_100940F80 != -1)
  {
    swift_once();
    v68 = v51;
  }

  sub_10000A61C(v68, qword_1009A1C78);
  v69 = [v60 traitCollection];
  v115 = v59;
  sub_100770B3C();

  v70 = v119;
  sub_10075F23C();
  v71 = v120;
  v72 = v70;
  v73 = v144;
  v117(v120, v72, v144);
  v74 = v116(v71, v73);
  if (v74 == v137 || v74 == enum case for AppShowcaseType.small(_:))
  {
    v75 = v142;
  }

  else
  {
    v75 = v142;
    if (v74 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      v131(v71, v73);
    }
  }

  v159[3] = v62;
  v159[4] = v136;
  v76 = sub_10000DB7C(v159);
  v134(v76, v135, v62);
  sub_10076C90C();
  sub_10000CD74(v159);
  v77 = v121;
  sub_10076996C();
  sub_10076994C();
  (v132)(v77, v143);
  v78 = [v75 traitCollection];
  if (sub_10077071C())
  {
    v79 = v138;
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v80 = qword_100944C88;
  }

  else
  {
    v79 = v138;
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v80 = qword_100944CA0;
  }

  v81 = v141;
  v82 = sub_10000A61C(v141, v80);
  v83 = v140;
  v84 = v122;
  (*(v140 + 16))(v122, v82, v81);

  (*(v83 + 32))(v139, v84, v81);
  sub_1007643EC();
  sub_10076441C();
  swift_allocObject();
  v142 = sub_10076DDBC();
  if (qword_100940A68 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v79, qword_1009A0D48);
  v85 = [v75 traitCollection];
  sub_100770B3C();

  v157 = v62;
  v158 = v136;
  v86 = sub_10000DB7C(v156);
  v134(v86, v135, v62);
  sub_10076C90C();
  sub_10000CD74(v156);
  v87 = v123;
  sub_10076996C();
  sub_10076994C();
  (v132)(v87, v143);
  v88 = v145;
  sub_10075F25C();
  v89 = sub_10076BB3C();

  if (v89)
  {
    v143 = v47;
    v90 = v75;
    v91 = v109;
    sub_100766A8C();
    v92 = v110;
    v93 = v111;
    v94 = v112;
    (*(v111 + 104))(v110, enum case for OfferLabelStyle.preorder(_:), v112);
    v95 = sub_100761FFC();
    v96 = *(v93 + 8);
    v96(v92, v94);
    v96(v91, v94);
    if (v95)
    {
      sub_10000CF78(v156, v157);
      v88 = v145;
      sub_10076D25C();

      v75 = v90;
      v47 = v143;
      goto LABEL_40;
    }

    v75 = v90;
    v47 = v143;
  }

  sub_10000CF78(v156, v157);
  sub_10076D25C();
LABEL_40:
  v97 = sub_1006993F4(v88);
  v98 = v144;
  if (v97)
  {
    swift_allocObject();
    v99 = sub_10076DDBC();
  }

  else
  {
    v99 = 0;
  }

  v100 = v126;
  sub_10075F23C();
  sub_10075F25C();
  v101 = sub_10076BB3C();

  sub_1006961BC(v100, v101, v75, v127);

  v131(v100, v98);
  v155[14] = &protocol witness table for LayoutViewPlaceholder;
  v155[13] = v47;
  v155[10] = v125;
  if (v99)
  {
    v102 = &protocol witness table for LayoutViewPlaceholder;
    v103 = v47;
  }

  else
  {
    v103 = 0;
    v102 = 0;
    v155[7] = 0;
    v155[6] = 0;
  }

  v155[5] = v99;
  v155[8] = v103;
  v155[9] = v102;
  sub_10000A570(v160, v155);
  sub_10000A570(v159, &v154);
  v153[8] = v47;
  v153[9] = &protocol witness table for LayoutViewPlaceholder;
  v153[5] = v142;
  sub_10000A570(v156, v153);
  v152 = 0;
  v150 = 0u;
  v151 = 0u;
  v149 = 0;
  v147 = 0u;
  v148 = 0u;

  v104 = v128;
  sub_10075F0BC();
  sub_100699CA8(&qword_1009635B0, &type metadata accessor for AppShowcaseLockupViewLayout, &protocol conformance descriptor for AppShowcaseLockupViewLayout);
  v105 = v130;
  sub_10076D2AC();
  v107 = v106;

  (*(v129 + 8))(v104, v105);
  (*(v140 + 8))(v139, v141);
  sub_10000CD74(v159);
  sub_10000CD74(v160);
  sub_10000CD74(v156);
  return v107;
}

char *sub_100694F08(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10076771C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v14 - 8);
  v16 = v66 - v15;
  v17 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_iconView;
  sub_10075FD2C();
  *&v4[v17] = sub_10075FB3C();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_wordmarkView] = 0;
  v18 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_titleLabel;
  v73 = sub_1007626BC();
  *&v5[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v69 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_descriptionLabel;
  if (qword_100940F80 != -1)
  {
    swift_once();
  }

  v19 = sub_10076D3DC();
  v20 = sub_10000A61C(v19, qword_1009A1C78);
  v21 = *(v19 - 8);
  v70 = *(v21 + 16);
  v70(v16, v20, v19);
  v23 = *(v21 + 56);
  v22 = v21 + 56;
  v72 = v23;
  v23(v16, 0, 1, v19);
  v24 = enum case for DirectionalTextAlignment.none(_:);
  v26 = *(v11 + 104);
  v25 = v11 + 104;
  v71 = v26;
  v26(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v27 = objc_allocWithZone(v73);
  *&v5[v69] = sub_1007626AC();
  v69 = v10;
  v28 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerButton;
  v29 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[v28] = sub_1001E89B8(0);
  v30 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerLabel;
  if (qword_100940A68 != -1)
  {
    swift_once();
  }

  v31 = sub_10000A61C(v19, qword_1009A0D48);
  v70(v16, v31, v19);
  v72(v16, 0, 1, v19);
  v71(v13, v24, v69);
  v32 = objc_allocWithZone(v73);
  *&v5[v30] = sub_1007626AC();
  v33 = &v5[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerLabelPresenter];
  *v33 = 0u;
  *(v33 + 1) = 0u;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerDisplayProperties] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkPresenter] = 0;
  v67 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkTitleLabel;
  v34 = v25;
  v35 = v24;
  if (qword_100940F90 != -1)
  {
    swift_once();
  }

  v36 = sub_10000A61C(v19, qword_1009A1CA8);
  v70(v16, v36, v19);
  v37 = v72;
  v72(v16, 0, 1, v19);
  v66[2] = v22;
  v38 = v69;
  v39 = v71;
  v71(v13, v35, v69);
  v40 = v73;
  v41 = objc_allocWithZone(v73);
  v66[1] = v34;
  *&v5[v67] = sub_1007626AC();
  v70 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkSubtitleLabel;
  v37(v16, 1, 1, v19);
  v39(v13, v35, v38);
  v42 = objc_allocWithZone(v40);
  *(v70 + v5) = sub_1007626AC();
  v43 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_type;
  v44 = enum case for AppShowcaseType.large(_:);
  v45 = sub_10075ECCC();
  (*(*(v45 - 8) + 104))(&v5[v43], v44, v45);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView____lazy_storage___lockupViews] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView____lazy_storage___crossLinkViews] = 0;
  v74.receiver = v5;
  v74.super_class = ObjectType;
  v46 = objc_msgSendSuper2(&v74, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v50 = v46;
  [v50 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v51 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_titleLabel;
  [*&v50[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_titleLabel] setNumberOfLines:1];
  v52 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_descriptionLabel;
  v53 = *&v50[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_descriptionLabel];
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v54 = v53;
  v55 = sub_100770D1C();
  [v54 setTextColor:v55];

  [v50 addSubview:*&v50[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_iconView]];
  [v50 addSubview:*&v50[v51]];
  [v50 addSubview:*&v50[v52]];
  v56 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkTitleLabel;
  v57 = *&v50[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkTitleLabel];
  v58 = objc_opt_self();
  v59 = v57;
  v60 = [v58 secondaryLabelColor];
  [v59 setTextColor:v60];

  [*&v50[v56] setHidden:1];
  [*&v50[v56] setAlpha:0.0];
  [v50 addSubview:*&v50[v56]];
  v61 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkSubtitleLabel;
  v62 = *&v50[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkSubtitleLabel];
  v63 = [v58 labelColor];
  [v62 setTextColor:v63];

  [*&v50[v61] setHidden:1];
  [*&v50[v61] setAlpha:0.0];
  [v50 addSubview:*&v50[v61]];
  [v50 addSubview:*&v50[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerButton]];
  v64 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerLabel;
  [*&v50[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerLabel] _setTextColorFollowsTintColor:1];
  [*&v50[v64] setText:0];
  [*&v50[v64] setHidden:1];
  [v50 addSubview:*&v50[v64]];

  return v50;
}

void sub_100695790(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_wordmarkView;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  if (!v4)
  {
    v8 = a1;
    v6 = a1;
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = a1;
  [v4 removeFromSuperview];
  v6 = *&v1[v3];
  if (v6)
  {
LABEL_3:
    v7 = v6;
    [v1 addSubview:v7];
  }

LABEL_4:
}

id sub_10069583C()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v2 - 8);
  v63 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v61 = &v54 - v5;
  v6 = sub_10075ECCC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v65 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v62 = &v54 - v10;
  __chkstk_darwin(v11);
  v60 = &v54 - v12;
  __chkstk_darwin(v13);
  v58 = &v54 - v14;
  __chkstk_darwin(v15);
  v55 = &v54 - v16;
  __chkstk_darwin(v17);
  v57 = &v54 - v18;
  __chkstk_darwin(v19);
  v21 = &v54 - v20;
  __chkstk_darwin(v22);
  v24 = &v54 - v23;
  v25 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_type;
  swift_beginAccess();
  v26 = v7[2];
  v72 = v25;
  v73 = v7 + 2;
  v71 = v26;
  v26(v24, &v1[v25], v6);
  v27 = v7[13];
  v64 = enum case for AppShowcaseType.smallAlignedLeft(_:);
  v27(v21);
  sub_100699CA8(&qword_100957668, &type metadata accessor for AppShowcaseType, &protocol conformance descriptor for AppShowcaseType);
  sub_10077018C();
  sub_10077018C();
  if (v76 != v74 || (v28 = 0, v77 != v75))
  {
    v28 = (sub_10077167C() & 1) == 0;
  }

  v29 = v7[1];
  v29(v21, v6);
  v70 = v29;
  v29(v24, v6);
  v30 = v7;

  [*&v1[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_titleLabel] setTextAlignment:v28];
  v56 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_descriptionLabel];
  [v56 setTextAlignment:v28];
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerLabel] setTextAlignment:v28];
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkTitleLabel] setTextAlignment:v28];
  v59 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkSubtitleLabel];
  [v59 setTextAlignment:v28];
  v31 = v57;
  v32 = v71;
  v71(v57, &v1[v72], v6);
  v33 = v55;
  v32(v55, v31, v6);
  v67 = v7[11];
  v68 = v7 + 11;
  v34 = v67(v33, v6);
  v66 = enum case for AppShowcaseType.large(_:);
  if (v34 == enum case for AppShowcaseType.large(_:))
  {
    if (qword_100940F78 != -1)
    {
      swift_once();
    }

    v35 = sub_10076D3DC();
    v36 = sub_10000A61C(v35, qword_1009A1C60);
    v37 = v61;
    (*(*(v35 - 8) + 16))(v61, v36, v35);
  }

  else if (v34 == enum case for AppShowcaseType.small(_:) || v34 == v64)
  {
    v37 = v61;
    if (qword_100940F80 != -1)
    {
      swift_once();
    }

    v35 = sub_10076D3DC();
    v39 = sub_10000A61C(v35, qword_1009A1C78);
    (*(*(v35 - 8) + 16))(v37, v39, v35);
  }

  else
  {
    v37 = v61;
    if (qword_100940F80 != -1)
    {
      swift_once();
    }

    v35 = sub_10076D3DC();
    v38 = sub_10000A61C(v35, qword_1009A1C78);
    (*(*(v35 - 8) + 16))(v37, v38, v35);
    v70(v31, v6);
    v31 = v33;
  }

  v70(v31, v6);
  sub_10076D3DC();
  v40 = *(v35 - 8);
  v61 = *(v40 + 56);
  (v61)(v37, 0, 1, v35);
  sub_1007625DC();
  v41 = v58;
  v71(v58, &v1[v72], v6);
  v42 = v60;
  (v30[4])(v60, v41, v6);
  v43 = v67(v42, v6);
  v69 = v1;
  if (v43 == v66)
  {
    v44 = 2;
    v46 = v62;
    v45 = v63;
  }

  else
  {
    v44 = 1;
    v46 = v62;
    v45 = v63;
    if (v43 != enum case for AppShowcaseType.small(_:) && v43 != v64)
    {
      (v70)(v42, v6, 1);
      v44 = 1;
    }
  }

  [v56 setNumberOfLines:v44];
  v47 = v71;
  v71(v46, &v69[v72], v6);
  v48 = v65;
  v47(v65, v46, v6);
  v49 = v67(v48, v6);
  if (v49 == v66)
  {
    if (qword_100940F98 != -1)
    {
      swift_once();
    }

    v50 = qword_1009A1CC0;
LABEL_33:
    v52 = sub_10000A61C(v35, v50);
    (*(v40 + 16))(v45, v52, v35);
    goto LABEL_34;
  }

  if (v49 == enum case for AppShowcaseType.small(_:) || v49 == v64)
  {
    if (qword_100940F80 != -1)
    {
      swift_once();
    }

    v50 = qword_1009A1C78;
    goto LABEL_33;
  }

  if (qword_100940F80 != -1)
  {
    swift_once();
  }

  v51 = sub_10000A61C(v35, qword_1009A1C78);
  (*(v40 + 16))(v45, v51, v35);
  v70(v46, v6);
  v46 = v65;
LABEL_34:
  v70(v46, v6);
  (v61)(v45, 0, 1, v35);
  sub_1007625DC();
  return [v69 setNeedsLayout];
}

uint64_t sub_1006961BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v122 = a3;
  v117 = a2;
  v114 = a4;
  v125 = sub_10076D9AC();
  __chkstk_darwin(v125);
  v113 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v112 = &v100 - v7;
  __chkstk_darwin(v8);
  v111 = &v100 - v9;
  __chkstk_darwin(v10);
  v110 = &v100 - v11;
  __chkstk_darwin(v12);
  v109 = &v100 - v13;
  v14 = sub_10076D1AC();
  v126 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = (&v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_10000A5D4(&unk_100945560, qword_1007951B0);
  __chkstk_darwin(v17 - 8);
  v104 = &v100 - v18;
  v101 = sub_100768FEC();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v20 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v22 = &v100 - v21;
  v124 = sub_10076443C();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v24 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v100 - v26;
  v28 = sub_10075ECCC();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v120 = &v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v116 = &v100 - v32;
  v34 = __chkstk_darwin(v33);
  v36 = &v100 - v35;
  v37 = *(v29 + 16);
  v118 = a1;
  v115 = v29 + 16;
  v108 = v37;
  (v37)(&v100 - v35, a1, v28, v34);
  v119 = v29;
  v38 = *(v29 + 88);
  v107 = (v29 + 88);
  v106 = v38;
  v39 = v38(v36, v28);
  v105 = enum case for AppShowcaseType.large(_:);
  if (v39 != enum case for AppShowcaseType.large(_:) && v39 != enum case for AppShowcaseType.small(_:) && v39 != enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    (*(v119 + 8))(v36, v28);
  }

  v40 = [v122 traitCollection];
  v41 = sub_10077071C();
  v121 = v27;
  if (v41)
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v42 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v42 = qword_100944CA0;
  }

  v43 = v124;
  v44 = sub_10000A61C(v124, v42);
  v45 = v123;
  (*(v123 + 16))(v24, v44, v43);

  v46 = *(v45 + 32);
  v47 = v121;
  v46(v121, v24, v43);
  if (v117)
  {
    v48 = v100;
    v49 = v20;
    v50 = v101;
    (*(v100 + 104))(v49, enum case for OfferButtonSubtitlePosition.below(_:), v101);
    (*(v48 + 56))(v104, 1, 1, v50);
    sub_100699CA8(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);

    sub_10076759C();
    sub_10076440C();

    (*(v102 + 8))(v22, v103);
  }

  else
  {
    sub_1007643EC();
    sub_10076441C();
  }

  v51 = v116;
  v52 = v118;
  v53 = v108;
  v108(v116, v118, v28);
  v54 = v120;
  v53(v120, v52, v28);
  v55 = v106(v54, v28);
  if (v55 == v105)
  {
    (*(v119 + 8))(v51, v28);
    *v16 = UIFontTextStyleFootnote;
    v56 = v126;
    v57 = *(v126 + 104);
    LODWORD(v106) = enum case for FontSource.textStyle(_:);
    v122 = v57;
    v116 = (v126 + 104);
    (v57)(v16);
    v140[3] = v125;
    v140[4] = &protocol witness table for StaticDimension;
    sub_10000DB7C(v140);
    v138 = v14;
    v139 = &protocol witness table for FontSource;
    v58 = sub_10000DB7C(&v137);
    v59 = *(v56 + 16);
    v117 = v56 + 16;
    v59(v58, v16, v14);
    v60 = UIFontTextStyleFootnote;
    sub_10076D9BC();
    v61 = *(v56 + 8);
    v126 = v56 + 8;
    v108 = v61;
    (v61)(v16, v14);
    if (qword_100940F78 != -1)
    {
      swift_once();
    }

    v62 = sub_10076D3DC();
    v120 = sub_10000A61C(v62, qword_1009A1C60);
    v63 = *(v62 - 8);
    v64 = *(v63 + 16);
    v65 = v63 + 16;
    v64(v16, v120, v62);
    v66 = enum case for FontSource.useCase(_:);
    (v122)(v16, enum case for FontSource.useCase(_:), v14);
    v138 = v14;
    v139 = &protocol witness table for FontSource;
    v67 = sub_10000DB7C(&v137);
    v59(v67, v16, v14);
    sub_10076D9BC();
    v68 = v108;
    (v108)(v16, v14);
    v69 = v120;
    v118 = v62;
    v120 = v64;
    v115 = v65;
    v64(v16, v69, v62);
    LODWORD(v119) = v66;
    (v122)(v16, v66, v14);
    v138 = v125;
    v139 = &protocol witness table for StaticDimension;
    sub_10000DB7C(&v137);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v70 = sub_10000DB7C(&v134);
    v107 = v59;
    v59(v70, v16, v14);
    sub_10076D9BC();
    v68(v16, v14);
    if (qword_100940F80 != -1)
    {
      swift_once();
    }

    v71 = v118;
    v72 = sub_10000A61C(v118, qword_1009A1C78);
    v73 = v120;
    (v120)(v16, v72, v71);
    v74 = v119;
    (v122)(v16, v119, v14);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v75 = sub_10000DB7C(&v134);
    v76 = v107;
    v107(v75, v16, v14);
    sub_10076D9BC();
    v77 = v108;
    (v108)(v16, v14);
    v73(v16, v72, v71);
    v78 = v122;
    (v122)(v16, v74, v14);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v79 = sub_10000DB7C(&v134);
    v76(v79, v16, v14);
    sub_10076D9BC();
    v77(v16, v14);
    if (qword_100940F88 != -1)
    {
      swift_once();
    }

    v80 = v118;
    v81 = sub_10000A61C(v118, qword_1009A1C90);
    (v120)(v16, v81, v80);
    v78(v16, v119, v14);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v82 = sub_10000DB7C(&v134);
    v76(v82, v16, v14);
    sub_10076D9BC();
    v77(v16, v14);
    *v16 = UIFontTextStyleBody;
    v78(v16, v106, v14);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v83 = sub_10000DB7C(&v134);
    v76(v83, v16, v14);
    v84 = UIFontTextStyleBody;
    sub_10076D9BC();
    v77(v16, v14);
    if (qword_100940F90 != -1)
    {
      swift_once();
    }

    v85 = v118;
    v106 = sub_10000A61C(v118, qword_1009A1CA8);
    v86 = v120;
    (v120)(v16, v106, v85);
    v78(v16, v119, v14);
    v87 = v125;
    v135 = v125;
    v136 = &protocol witness table for StaticDimension;
    sub_10000DB7C(&v134);
    v132 = v14;
    v133 = &protocol witness table for FontSource;
    v88 = sub_10000DB7C(&v131);
    v89 = v107;
    v107(v88, v16, v14);
    sub_10076D9BC();
    v90 = v108;
    (v108)(v16, v14);
    v86(v16, v106, v85);
    v91 = v119;
    v78(v16, v119, v14);
    v132 = v87;
    v133 = &protocol witness table for StaticDimension;
    sub_10000DB7C(&v131);
    v129 = v14;
    v130 = &protocol witness table for FontSource;
    v92 = sub_10000DB7C(&v128);
    v89(v92, v16, v14);
    sub_10076D9BC();
    v90(v16, v14);
    if (qword_100940F98 != -1)
    {
      swift_once();
    }

    v93 = v118;
    v94 = sub_10000A61C(v118, qword_1009A1CC0);
    (v120)(v16, v94, v93);
    (v122)(v16, v91, v14);
    v129 = v125;
    v130 = &protocol witness table for StaticDimension;
    sub_10000DB7C(&v128);
    v127[3] = v14;
    v127[4] = &protocol witness table for FontSource;
    v95 = sub_10000DB7C(v127);
    v89(v95, v16, v14);
    sub_10076D9BC();
    v90(v16, v14);
    sub_10075F09C();
    return (*(v123 + 8))(v121, v124);
  }

  else
  {
    v97 = v55;
    v98 = enum case for AppShowcaseType.small(_:);
    sub_10069748C(v114);
    v99 = *(v119 + 8);
    v99(v51, v28);
    result = (*(v123 + 8))(v47, v124);
    if (v97 != v98 && v97 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      return (v99)(v120, v28);
    }
  }

  return result;
}

uint64_t sub_10069748C@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v5 = sub_10076D1AC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = sub_10076D9AC();
  __chkstk_darwin(v54);
  v63 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v62 = v51 - v11;
  __chkstk_darwin(v12);
  v61 = v51 - v13;
  __chkstk_darwin(v14);
  v60 = v51 - v15;
  __chkstk_darwin(v16);
  v59 = v51 - v17;
  v18 = sub_10075ECCC();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 104))(v22, enum case for AppShowcaseType.smallAlignedLeft(_:), v18, v20);
  sub_100699CA8(&qword_100957668, &type metadata accessor for AppShowcaseType, &protocol conformance descriptor for AppShowcaseType);
  sub_10077018C();
  sub_10077018C();
  if (v82 == v79)
  {
    v53 = 1;
  }

  else
  {
    v53 = sub_10077167C();
  }

  (*(v19 + 8))(v22, v18);

  v58 = sub_10076D67C();
  v83 = v58;
  v84 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v82);
  sub_10076D66C();
  if (qword_100940F80 != -1)
  {
    swift_once();
  }

  v23 = sub_10076D3DC();
  v24 = sub_10000A61C(v23, qword_1009A1C78);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v65 = v25 + 16;
  v66 = v23;
  v26(v8, v24, v23);
  v64 = enum case for FontSource.useCase(_:);
  v56 = v6[13];
  v56(v8);
  v80 = v5;
  v81 = &protocol witness table for FontSource;
  v27 = sub_10000DB7C(&v79);
  v28 = v6 + 2;
  v69 = v6[2];
  v69(v27, v8, v5);
  sub_10076D9BC();
  v68 = v6[1];
  v68(v8, v5);
  v80 = v58;
  v81 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v79);
  sub_10076D66C();
  v26(v8, v24, v23);
  v29 = v64;
  v30 = v56;
  (v56)(v8, v64, v5);
  v77 = v5;
  v78 = &protocol witness table for FontSource;
  v31 = sub_10000DB7C(v76);
  v69(v31, v8, v5);
  sub_10076D9BC();
  v68(v8, v5);
  v52 = v24;
  v67 = v26;
  v26(v8, v24, v66);
  (v30)(v8, v29, v5);
  v77 = v5;
  v78 = &protocol witness table for FontSource;
  v32 = sub_10000DB7C(v76);
  v69(v32, v8, v5);
  sub_10076D9BC();
  v57 = v6 + 1;
  v68(v8, v5);
  if (qword_100940F88 != -1)
  {
    swift_once();
  }

  v33 = v66;
  v34 = sub_10000A61C(v66, qword_1009A1C90);
  v67(v8, v34, v33);
  (v30)(v8, v29, v5);
  v77 = v5;
  v78 = &protocol witness table for FontSource;
  v35 = sub_10000DB7C(v76);
  v36 = v69;
  v69(v35, v8, v5);
  sub_10076D9BC();
  v37 = v68;
  v68(v8, v5);
  *v8 = UIFontTextStyleBody;
  (v30)(v8, enum case for FontSource.textStyle(_:), v5);
  v77 = v5;
  v78 = &protocol witness table for FontSource;
  v38 = sub_10000DB7C(v76);
  v36(v38, v8, v5);
  v39 = UIFontTextStyleBody;
  sub_10076D9BC();
  v37(v8, v5);
  v51[1] = v28;
  v40 = v64;
  if (qword_100940F90 != -1)
  {
    swift_once();
  }

  v41 = v66;
  v42 = sub_10000A61C(v66, qword_1009A1CA8);
  v67(v8, v42, v41);
  v43 = v40;
  v44 = v56;
  (v56)(v8, v43, v5);
  v45 = v54;
  v77 = v54;
  v78 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v76);
  v74 = v5;
  v75 = &protocol witness table for FontSource;
  v46 = sub_10000DB7C(v73);
  v47 = v69;
  v69(v46, v8, v5);
  sub_10076D9BC();
  v48 = v68;
  v68(v8, v5);
  v67(v8, v52, v41);
  (v44)(v8, v64, v5);
  v74 = v45;
  v75 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v73);
  v71 = v5;
  v72 = &protocol witness table for FontSource;
  v49 = sub_10000DB7C(v70);
  v47(v49, v8, v5);
  sub_10076D9BC();
  v48(v8, v5);
  v71 = v58;
  v72 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v70);
  sub_10076D66C();
  return sub_10075F09C();
}

uint64_t sub_100697EBC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10076D1FC();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v46 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10075ECCC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10075F0AC();
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10075F0CC();
  v44 = *(v11 - 8);
  v45 = v11;
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v43 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76.receiver = v0;
  v76.super_class = ObjectType;
  v47 = ObjectType;
  objc_msgSendSuper2(&v76, "layoutSubviews", v12);
  v14 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_type;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v0[v14], v4);
  v15 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerDisplayProperties];

  v42 = v10;
  sub_1006961BC(v7, v15, v0, v10);

  (*(v5 + 8))(v7, v4);
  v16 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_iconView];
  v74 = sub_10075FD2C();
  v75 = &protocol witness table for UIView;
  v41 = v16;
  v73 = v16;
  v17 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_wordmarkView;
  swift_beginAccess();
  v18 = *&v0[v17];
  if (v18)
  {
    v19 = sub_100760B6C();
    v20 = &protocol witness table for UIView;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v69 = 0;
    v70 = 0;
  }

  v68 = v18;
  v71 = v19;
  v72 = v20;
  v40 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_titleLabel];
  v21 = v40;
  v22 = sub_1007626BC();
  v66 = v22;
  v67 = &protocol witness table for UILabel;
  v64 = &protocol witness table for UILabel;
  v65 = v21;
  v23 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_descriptionLabel];
  v63 = v22;
  v62 = v23;
  v24 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerButton];
  v60 = type metadata accessor for OfferButton();
  v61 = &protocol witness table for UIView;
  v25 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerLabel];
  v58 = &protocol witness table for UILabel;
  v59 = v24;
  v57 = v22;
  v55 = &protocol witness table for UILabel;
  v56 = v25;
  v26 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkTitleLabel];
  v54 = v22;
  v52 = &protocol witness table for UILabel;
  v53 = v26;
  v27 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkSubtitleLabel];
  v51 = v22;
  v50 = v27;
  v28 = v41;
  v29 = v18;
  v30 = v40;
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  v35 = v27;
  v36 = v43;
  sub_10075F0BC();
  sub_10076422C();
  v37 = v46;
  sub_10075F08C();
  (*(v48 + 8))(v37, v49);
  return (*(v44 + 8))(v36, v45);
}

id sub_1006983AC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v46 = a2;
  v43 = sub_100760B4C();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076D1AC();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = sub_10076D9AC();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&qword_1009622B0, qword_100787B30);
  __chkstk_darwin(v11 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  v17 = sub_10076C43C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100699384(a1, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10000CFBC(v16, &qword_1009622B0, qword_100787B30);
    v21 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_wordmarkView;
    swift_beginAccess();
    result = *&v3[v21];
    if (result)
    {
      return [result setHidden:1];
    }
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    v23 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_wordmarkView;
    swift_beginAccess();
    v24 = *&v3[v23];
    if (v24 || ((*(v18 + 56))(v13, 1, 1, v17), v39 = UIFontTextStyleFootnote, *v8 = UIFontTextStyleFootnote, v25 = v40, (*(v40 + 104))(v8, enum case for FontSource.textStyle(_:), v6), v48 = v6, v49 = &protocol witness table for FontSource, v26 = sub_10000DB7C(v47), (*(v25 + 16))(v26, v8, v6), v27 = v39, sub_10076D9BC(), (*(v25 + 8))(v8, v6), (*(v41 + 104))(v45, enum case for WordmarkView.Alignment.center(_:), v43), v28 = v44, v48 = v44, v49 = &protocol witness table for StaticDimension, v29 = sub_10000DB7C(v47), v30 = v42, (*(v42 + 16))(v29, v10, v28), v31 = objc_allocWithZone(sub_100760B6C()), v32 = v3, v33 = sub_100760B3C(), (*(v30 + 8))(v10, v28), v34 = v33, v3 = v32, sub_100695790(v34), (v24 = *&v32[v23]) != 0))
    {
      [v24 setTintColor:v46];
      v35 = *&v3[v23];
      if (v35)
      {
        [v35 setHidden:0];
      }
    }

    swift_beginAccess();
    v36 = *&v3[v23];
    if (v36)
    {
      swift_endAccess();
      v37 = v36;
      v38 = [v3 traitCollection];
      sub_100760B2C();

      return (*(v18 + 8))(v20, v17);
    }

    else
    {
      (*(v18 + 8))(v20, v17);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1006989A0(uint64_t *a1, void *a2, void *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100785D70;
    v9 = *(v3 + *a2);
    v10 = *(v3 + *a3);
    *(v6 + 32) = v9;
    *(v6 + 40) = v10;
    *(v3 + v4) = v6;
    v11 = v9;
    v12 = v10;
  }

  return v6;
}

double sub_100698A4C(char a1, char a2)
{
  if (a1)
  {
    if (([*(v2 + OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkTitleLabel) isHidden] & 1) == 0)
    {
      return result;
    }

    v5 = sub_1006989A0(&OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView____lazy_storage___lockupViews, &OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_titleLabel, &OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_descriptionLabel);
    v6 = &OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView____lazy_storage___crossLinkViews;
    v7 = &OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkTitleLabel;
    v8 = &OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkSubtitleLabel;
  }

  else
  {
    if (([*(v2 + OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_titleLabel) isHidden] & 1) == 0)
    {
      return result;
    }

    v5 = sub_1006989A0(&OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView____lazy_storage___crossLinkViews, &OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkTitleLabel, &OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkSubtitleLabel);
    v6 = &OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView____lazy_storage___lockupViews;
    v7 = &OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_titleLabel;
    v8 = &OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_descriptionLabel;
  }

  v9 = sub_1006989A0(v6, v7, v8);
  v10 = v9;
  if ((a2 & 1) == 0)
  {
    if (v5 >> 62)
    {
      v16 = sub_10077158C();
    }

    else
    {
      v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v16)
    {
      v17 = 0;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v18 = sub_10077149C();
        }

        else
        {
          if (v17 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }

          v18 = *(v5 + 8 * v17 + 32);
        }

        v19 = v18;
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_39;
        }

        [v18 setAlpha:0.0];
        [v19 setHidden:1];

        ++v17;
      }

      while (v20 != v16);
    }

    if (v10 >> 62)
    {
      v21 = sub_10077158C();
      if (v21)
      {
LABEL_30:
        v5 = 0;
        do
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v22 = sub_10077149C();
          }

          else
          {
            if (v5 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v22 = *(v10 + 8 * v5 + 32);
          }

          v23 = v22;
          v24 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_42;
          }

          [v22 setAlpha:1.0];
          [v23 setHidden:0];

          ++v5;
        }

        while (v24 != v21);
      }
    }

    else
    {
      v21 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        goto LABEL_30;
      }
    }

    return result;
  }

  if (v9 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = sub_10077149C();
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      [v13 setHidden:0];

      ++v12;
      if (v15 == i)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

LABEL_45:
  v25 = objc_opt_self();
  v26 = swift_allocObject();
  *(v26 + 16) = v5;
  *(v26 + 24) = v10;
  v34 = sub_10029F3B8;
  v35 = v26;
  v30 = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_10009AEDC;
  v33 = &unk_10089F578;
  v27 = _Block_copy(&v30);

  v28 = swift_allocObject();
  *(v28 + 16) = v5;
  v34 = sub_10029F410;
  v35 = v28;
  v30 = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1000513F0;
  v33 = &unk_10089F5C8;
  v29 = _Block_copy(&v30);

  [v25 animateWithDuration:4 delay:v27 options:v29 animations:0.33 completion:0.0];
  _Block_release(v29);
  _Block_release(v27);
  return result;
}

uint64_t type metadata accessor for AppShowcaseLockupView(uint64_t a1)
{
  result = qword_100963590;
  if (!qword_100963590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10069907C(uint64_t a1, __n128 a2)
{
  result = sub_10075ECCC();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_100699144()
{
  swift_beginAccess();

  return result;
}

double sub_10069918C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkPresenter;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

id sub_100699248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *&v4[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkTitleLabel];
  v6 = sub_10076FF6C();
  [v5 setText:v6];

  v7 = *&v4[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkSubtitleLabel];
  v8 = sub_10076FF6C();
  [v7 setText:v8];

  return [v4 setNeedsLayout];
}

uint64_t sub_1006992F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_100699334(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10069934C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100699384(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009622B0, qword_100787B30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006993F4(uint64_t a1)
{
  v20 = sub_100764B4C();
  v2 = *(v20 - 8);
  __chkstk_darwin(v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10075ECCC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  v19 = a1;
  sub_10075F23C();
  (*(v6 + 104))(v8, enum case for AppShowcaseType.large(_:), v5);
  sub_100699CA8(&qword_100957668, &type metadata accessor for AppShowcaseType, &protocol conformance descriptor for AppShowcaseType);
  sub_10077018C();
  sub_10077018C();
  if (v22 == v21)
  {
    v12 = *(v6 + 8);
    v12(v8, v5);
    v12(v11, v5);

LABEL_4:
    sub_10075F25C();
    v16 = sub_10076BA0C();

    v17 = v20;
    (*(v2 + 104))(v4, enum case for ComponentDecoration.arcade(_:), v20);
    v15 = sub_100692F44(v4, v16);

    (*(v2 + 8))(v4, v17);
    return v15 & 1;
  }

  v13 = sub_10077167C();
  v14 = *(v6 + 8);
  v14(v8, v5);
  v14(v11, v5);

  v15 = 0;
  if (v13)
  {
    goto LABEL_4;
  }

  return v15 & 1;
}

void sub_10069970C()
{
  v1 = v0;
  v43 = sub_10076771C();
  v2 = *(v43 - 8);
  __chkstk_darwin(v43);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - v6;
  v8 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_iconView;
  sub_10075FD2C();
  *(v0 + v8) = sub_10075FB3C();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_wordmarkView) = 0;
  v9 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_titleLabel;
  v42 = sub_1007626BC();
  *(v1 + v9) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_descriptionLabel;
  if (qword_100940F80 != -1)
  {
    swift_once();
  }

  v11 = sub_10076D3DC();
  v12 = sub_10000A61C(v11, qword_1009A1C78);
  v13 = *(v11 - 8);
  v39 = *(v13 + 16);
  v39(v7, v12, v11);
  v14 = *(v13 + 56);
  v14(v7, 0, 1, v11);
  v15 = v2;
  v16 = enum case for DirectionalTextAlignment.none(_:);
  v40 = *(v15 + 104);
  v41 = v15 + 104;
  v40(v4, enum case for DirectionalTextAlignment.none(_:), v43);
  v17 = objc_allocWithZone(v42);
  *(v1 + v10) = sub_1007626AC();
  v18 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerButton;
  v19 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v1 + v18) = sub_1001E89B8(0);
  v20 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerLabel;
  if (qword_100940A68 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A61C(v11, qword_1009A0D48);
  v39(v7, v21, v11);
  v14(v7, 0, 1, v11);
  v40(v4, v16, v43);
  v22 = objc_allocWithZone(v42);
  *(v1 + v20) = sub_1007626AC();
  v23 = (v1 + OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerLabelPresenter);
  *v23 = 0u;
  v23[1] = 0u;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerDisplayProperties) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkPresenter) = 0;
  v37 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkTitleLabel;
  v38 = v1;
  if (qword_100940F90 != -1)
  {
    swift_once();
  }

  v24 = sub_10000A61C(v11, qword_1009A1CA8);
  v39(v7, v24, v11);
  v14(v7, 0, 1, v11);
  v25 = v43;
  LODWORD(v39) = v16;
  v26 = v40;
  v40(v4, v16, v43);
  v36 = v14;
  v27 = v42;
  v28 = objc_allocWithZone(v42);
  v29 = sub_1007626AC();
  v30 = v7;
  v31 = v38;
  *(v38 + v37) = v29;
  v37 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkSubtitleLabel;
  v36(v30, 1, 1, v11);
  v26(v4, v39, v25);
  v32 = objc_allocWithZone(v27);
  *(v31 + v37) = sub_1007626AC();
  v33 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_type;
  v34 = enum case for AppShowcaseType.large(_:);
  v35 = sub_10075ECCC();
  (*(*(v35 - 8) + 104))(v31 + v33, v34, v35);
  *(v31 + OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView____lazy_storage___lockupViews) = 0;
  *(v31 + OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView____lazy_storage___crossLinkViews) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_100699CA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_100699CF8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_10077158C();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v5 = v3;
  v6 = sub_1004A01D4(v4);
  sub_1000FABD4((v6 + 4), v5, a1, v7);
  v9 = v8;

  result = v6;
  if (v9 != v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_100699D8C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = a1 & 1;
  v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView);
  sub_10076C66C();

  v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_gradientView);
  v7 = v6[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating];
  v6[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating] = v3;
  if (v7 != v4)
  {
    v8 = v6;
    sub_1007214A0();
  }
}

char *sub_100699E44(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v41 = sub_10076F9AC();
  v9 = *(v41 - 8);
  __chkstk_darwin(v41);
  v11 = &ObjectType - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100762CAC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &ObjectType - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverContainerView;
  *&v4[v16] = [objc_allocWithZone(UIView) init];
  v4[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_isDisappearing] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for RiverCardDataSource();
  v17 = swift_allocObject();
  *(v17 + 32) = _swiftEmptyArrayStorage;
  *(v17 + 16) = xmmword_1007AAF70;
  *(v17 + 40) = vdupq_n_s64(0x4058C00000000000uLL);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverDataSource] = v17;
  sub_100762C1C();
  sub_100762C8C();
  v18 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverStyling;
  (*(v13 + 32))(&v4[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverStyling], v15, v12);
  v19 = *(v13 + 16);
  v19(v15, &v4[v18], v12);
  v20 = objc_allocWithZone(sub_10000A5D4(&qword_10095D2C8, &qword_1007AB1F0));

  *&v4[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView] = sub_10076C62C();
  v19(v15, &v4[v18], v12);
  v21 = objc_allocWithZone(type metadata accessor for RiverTodayCardBackgroundView(0));
  *&v4[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_gradientView] = sub_100720100(v15);
  v47[0] = sub_1000082CC;
  v47[1] = 0;
  v47[2] = sub_1007333C0;
  v47[3] = 0;
  v47[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v47[5] = 0;
  v47[6] = sub_1002091B8;
  v47[7] = 0;
  v47[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v47[9] = 0;
  v47[10] = sub_100342B64;
  v47[11] = 0;
  v48 = 0x4000000000000000uLL;
  v49 = 0;
  v50 = 0x4018000000000000;
  v51 = 0;
  v52 = 1;
  v22 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView(0));
  *&v4[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_labelsView] = sub_1001ED0D8(v47, &v48);
  v46.receiver = v4;
  v46.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v46, "initWithFrame:", a1, a2, a3, a4);
  v24 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_gradientView;
  v25 = *&v23[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_gradientView];
  v26 = v23;
  [v25 _setContinuousCornerRadius:20.0];
  v27 = *&v23[v24];
  [v27 bounds];
  [v27 setBounds:?];

  [*&v23[v24] setClipsToBounds:1];
  v28 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView;
  [*&v26[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView] setClipsToBounds:0];
  v29 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverContainerView;
  [*&v26[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverContainerView] setClipsToBounds:1];
  v30 = [v26 contentView];
  [v30 addSubview:*&v23[v24]];

  [*&v26[v29] addSubview:*&v26[v28]];
  v31 = [v26 contentView];
  [v31 addSubview:*&v26[v29]];

  v32 = [v26 contentView];
  [v32 addSubview:*&v26[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_labelsView]];

  v33 = *&v26[v28];
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v34 = v33;
  sub_10076F95C();
  sub_1000258C0(&v42);
  sub_1000258C0(&v44);
  sub_100770B9C();

  v35 = *(v9 + 8);
  v36 = v41;
  v35(v11, v41);
  v37 = *&v23[v24];
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v38 = v37;
  sub_10076F95C();
  sub_1000258C0(&v42);
  sub_1000258C0(&v44);
  sub_100770B9C();

  v35(v11, v36);
  return v26;
}

void sub_10069A4A0()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isMotionEnabled;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView);
  sub_10076C66C();

  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_gradientView);
  v4 = *(v0 + v1);
  v5 = v3[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating];
  v3[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating] = v4;
  if (v4 != v5)
  {
    v6 = v3;
    sub_1007214A0();
  }
}

void sub_10069A57C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isTransitioning;
  *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_labelsView) + qword_10094D6F0) = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isTransitioning);
  sub_1001EE26C();
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView);
  sub_10076C69C();

  if ((*(v0 + v1) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_isDisappearing) = 0;
  }
}

void sub_10069A624()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  if (v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v2 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (v0[*v2] != 4)
  {
    v3 = [v0 traitCollection];
    v4 = v3;
    if (v0[v1])
    {
      v5 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v5 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    sub_100312548(v3, v0[*v5], &v28);
    v6 = v31;

    v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_labelsView];
    v8 = v0[v1];
    v9 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    if (!v8)
    {
      v9 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v10 = v0[v9];
    v11 = v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory];
    v12 = v0[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_isDisappearing];
    v23 = v28;
    v24 = v29;
    v25 = v30;
    *&v26 = v6;
    *v27 = 0uLL;
    *(&v26 + 1) = v7;
    v27[16] = 1;
    v27[17] = v10;
    v27[18] = v11;
    v27[19] = v8;
    v27[20] = v12;
    v32 = v28;
    v33 = v29;
    *&v36[13] = *&v27[13];
    v35 = v26;
    *v36 = 0uLL;
    v34 = v30;
    v13 = v7;
    [v0 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [v0 traitCollection];
    sub_10033FA50(v22, v15, v17, v19, v21);

    sub_100138C80(&v23);
  }
}

id sub_10069A7D0()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_1007706FC();

  if (v3)
  {
    v4 = 40.0;
  }

  else
  {
    v4 = 30.0;
  }

  v5 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_labelsView;
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_labelsView] frame];
  v7 = v6 - v4 + -24.0;
  v8 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  if ((v1[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0)
  {
    v9 = [v1 traitCollection];
    v10 = sub_10077071C();

    v11 = (v10 & 1) != 0 ? 0.5 : 0.52;
    [v1 bounds];
    v12 = v11 * CGRectGetHeight(v50);
    sub_100762C2C();
    v14 = v13;
    v15 = round((v12 - v13) * 0.5);
    v16 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView;
    v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView];
    sub_10076C6BC();
    v19 = v18;
    v21 = v20;

    if (v19 != v15 || v21 != v15)
    {
      v23 = v14 + v15 + v15;
      v24 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverDataSource];
      swift_beginAccess();
      if (v15 < *(v24 + 48) && v23 <= v7)
      {
        v26 = *&v1[v16];
        sub_10076C67C();
      }
    }
  }

  v27 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView;
  v28 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView];
  [v1 bounds];
  [v28 sizeThatFits:{v29, v30}];
  v32 = v31;
  v34 = v33;

  [*&v1[v5] frame];
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverContainerView] setFrame:{0.0, 0.0, v32, v35}];
  if (v1[v8])
  {
    [*&v1[v5] frame];
    MinY = CGRectGetMinY(v51);
    v37 = [v1 traitCollection];
    v38 = sub_1007706EC();

    if (v38)
    {
      v39 = 50.0;
    }

    else
    {
      v39 = 64.0;
    }

    v40 = floor((MinY - v39 - v34) * 0.5);
    v41 = [v1 traitCollection];
    v42 = sub_1007706EC();

    if (v42)
    {
      v43 = 50.0;
    }

    else
    {
      v43 = 64.0;
    }

    v44 = v40 + v43;
  }

  else
  {
    v45 = [v1 traitCollection];
    v46 = sub_1007706EC();

    if (v46 & 1) != 0 || (v47 = [v1 traitCollection], v48 = sub_10077071C(), v47, (v48))
    {
      [*&v1[v5] frame];
      v44 = floor((CGRectGetMinY(v52) - v34) * 0.5);
    }

    else if (v7 < v34)
    {
      v44 = v4 + v7 - v34;
    }

    else
    {
      v44 = v4;
    }
  }

  return [*&v1[v27] setFrame:{0.0, v44, v32, v34}];
}

void sub_10069ABDC()
{
  sub_1003DFB08();
  v1 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  v2 = 20.0;
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v2 = 0.0;
  }

  [*(v0 + OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_gradientView) _setContinuousCornerRadius:v2];
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_labelsView);
  v3[qword_10094D6E8] = *(v0 + v1);
  v4 = v3;
  sub_1001EDE3C();
}

void sub_10069AC80()
{
  [v0 setNeedsLayout];
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_labelsView];
  if (v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v2 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v1[qword_10094D6A8] = v0[*v2];
  v3 = v1;
  sub_1001EDB98();
}

void sub_10069AD28(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  if (a3)
  {
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      v20 = a1;
      sub_10069AF38(v12);
      v13 = v20;
    }
  }

  else
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    v15 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_10003BD64(v10, v4 + v15);
    swift_endAccess();
    *(v4 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory) = (*(a2 + 160))(ObjectType, a2);
    sub_10069CD74();
    v16 = (*(a2 + 136))(ObjectType, a2);
    sub_1003DC6B0(v16);
    if (swift_dynamicCastClass())
    {
      v17 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView);
      v18 = a1;
      v19 = v17;
      sub_10076C66C();

      swift_unknownObjectWeakAssign();
    }
  }
}

id sub_10069AF38(char *a1)
{
  v3 = [v1 contentView];
  v4 = [a1 contentView];
  v5 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_gradientView;
  v6 = *&a1[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_gradientView];
  [v6 setHidden:0];
  [v6 removeFromSuperview];
  v7 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_gradientView;
  v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_gradientView];
  [v8 setHidden:1];
  [v8 removeFromSuperview];
  v9 = *&v1[v7];
  *&v1[v7] = v6;
  v10 = v6;

  [v3 addSubview:v10];
  v11 = *&a1[v5];
  *&a1[v5] = v8;
  v12 = v8;

  [v4 addSubview:v12];
  v50 = [v1 contentView];
  v51 = [a1 contentView];
  v13 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverContainerView;
  v14 = *&a1[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverContainerView];
  [v14 setHidden:0];
  [v14 removeFromSuperview];
  v15 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverContainerView;
  v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverContainerView];
  [v16 setHidden:1];
  [v16 removeFromSuperview];
  v17 = *&v1[v15];
  *&v1[v15] = v14;
  v18 = v1;
  v19 = v14;

  [v50 addSubview:v19];
  v20 = *&a1[v13];
  *&a1[v13] = v16;
  v21 = a1;
  v22 = v16;

  [v51 addSubview:v22];
  v23 = *&v1[v15];
  v24 = *&a1[v13];
  v25 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView;
  v26 = *&v21[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView];
  v27 = v23;
  v28 = v24;
  [v26 setHidden:0];
  [v26 removeFromSuperview];
  v29 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView;
  v30 = *&v18[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView];
  [v30 setHidden:1];
  [v30 removeFromSuperview];
  v31 = *&v18[v29];
  *&v18[v29] = v26;
  v32 = v18;
  v33 = v26;

  [v27 addSubview:v33];
  v34 = *&v21[v25];
  *&v21[v25] = v30;
  v35 = v21;
  v36 = v30;

  [v28 addSubview:v36];
  v37 = [v32 contentView];
  v38 = [v35 contentView];
  v39 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_labelsView;
  v40 = *&v35[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_labelsView];
  [v40 setHidden:0];
  [v40 removeFromSuperview];
  v41 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_labelsView;
  v42 = *&v32[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_labelsView];
  [v42 setHidden:1];
  [v42 removeFromSuperview];
  v43 = *&v32[v41];
  *&v32[v41] = v40;
  v44 = v32;
  v45 = v40;

  [v37 addSubview:v45];
  v46 = *&v35[v39];
  *&v35[v39] = v42;
  v47 = v35;
  v48 = v42;

  [v38 addSubview:v48];
  [v47 setNeedsLayout];

  return [v44 setNeedsLayout];
}

void sub_10069B3D8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v128 = a4;
  v7 = sub_100766EBC();
  v127 = *(v7 - 8);
  __chkstk_darwin(v7);
  v135 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_10076C7EC();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v10 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_10076637C();
  v11 = *(v124 - 8);
  __chkstk_darwin(v124);
  v133 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v13 - 8);
  v15 = &v111 - v14;
  v16 = sub_10076C38C();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v15, a3, v16);
  (*(v17 + 56))(v15, 0, 1, v16);
  v18 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_10003BD64(v15, &v4[v18]);
  swift_endAccess();
  v134 = a2;
  sub_1003DC6B0(a2);
  v136 = v4;
  v19 = [v4 backgroundView];
  if (v19)
  {
    v20 = v19;
    v21 = sub_10076C70C();
    if (!v21)
    {
      sub_1000325F0();
      v21 = sub_100770D8C();
    }

    v22 = v21;
    [v20 setBackgroundColor:v21];
  }

  v23 = sub_10076C7FC();
  sub_1007652BC();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    goto LABEL_83;
  }

  v119 = v24;
  v120 = v11;
  v25 = *&v136[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_labelsView];
  v26 = sub_10076C82C();
  v132 = v27;
  v123 = sub_10076C81C();
  v129 = v28;
  v115 = sub_10076C6EC();
  v131 = v29;
  sub_10076C75C();
  v30 = sub_10076C73C();
  v122 = v31;
  v130 = v10;
  sub_10076C80C();
  sub_10076C77C();
  v32 = v134;
  v117 = v23;
  v121 = v7;
  v116 = v30;
  if (v134 == 4)
  {
    v118 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v33 = sub_100342B64;
  }

  else
  {
    v33 = sub_100342B64;
    v118 = sub_1002091B8;
  }

  v25[qword_10094D6D8] = 0;
  v34 = *&v25[qword_10094D6C0];
  *(v34 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v35 = *&v25[qword_10094D6B8];
  sub_1001E44C4(v26, v132);
  v36 = sub_100766EAC();
  v37 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
  v38 = *&v35[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  if (v32 == 4 && (v36 & 1) == 0)
  {
    if (([v38 isHidden] & 1) != 0 || (v35[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v35[v37] setHidden:1];
      goto LABEL_24;
    }

    [*&v35[v37] setHidden:1];
    v35[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    goto LABEL_22;
  }

  v39 = [v38 text];
  if (v39)
  {
    v40 = v39;
    sub_10076FF9C();
  }

  v41 = sub_10077002C();
  v42 = v41 & 1;

  if (v42 != [*&v35[v37] isHidden] && (v35[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning] & 1) != 0)
  {
    if ((v41 & 1) == 0)
    {
      [*&v35[v37] setAlpha:0.0];
      v113 = objc_opt_self();
      [v113 inheritedAnimationDuration];
      v44 = v43;
      v45 = swift_allocObject();
      *(v45 + 16) = v35;
      v141 = sub_100138CF0;
      v142 = v45;
      v114 = sub_100342B64;
      aBlock = _NSConcreteStackBlock;
      v138 = 1107296256;
      v139 = sub_10009AEDC;
      v140 = &unk_10089F6D8;
      v112 = _Block_copy(&aBlock);
      v46 = v35;
      v111 = v46;

      v47 = swift_allocObject();
      *(v47 + 16) = v46;
      v141 = sub_100138CFC;
      v142 = v47;
      v33 = v114;
      aBlock = _NSConcreteStackBlock;
      v138 = 1107296256;
      v139 = sub_1000513F0;
      v140 = &unk_10089F728;
      v48 = _Block_copy(&aBlock);
      v49 = v111;

      v50 = v112;
      [v113 animateWithDuration:0 delay:v112 options:v48 animations:v44 completion:0.0];
      _Block_release(v48);
      _Block_release(v50);
    }

    [*&v35[v37] setHidden:v41 & 1];
    v35[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
LABEL_22:
    [v35 setNeedsLayout];
    goto LABEL_24;
  }

  [*&v35[v37] setHidden:v42];
LABEL_24:
  v51 = &v25[qword_10094D6E0];
  *v51 = sub_1000082CC;
  v51[1] = 0;
  v51[2] = sub_1007333C0;
  v51[3] = 0;
  v51[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v51[5] = 0;
  v51[6] = v118;
  v51[7] = 0;
  v51[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v51[9] = 0;
  v51[10] = v33;
  v51[11] = 0;

  sub_1001EDE3C();
  v52 = v130;
  if (v129)
  {
    if (v134 == 4)
    {
      sub_1001EFAF8();
    }

    else
    {
      sub_1001EFB1C();
    }

    v53 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
    v54 = *(v34 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
    v55 = objc_allocWithZone(NSAttributedString);
    v56 = v54;
    v57 = sub_10076FF6C();
    type metadata accessor for Key(0);
    sub_10069CE5C(&qword_100943320, type metadata accessor for Key, &unk_100783A7C);
    isa = sub_10076FE3C().super.isa;

    v59 = [v55 initWithString:v57 attributes:isa];

    [v56 setAttributedText:v59];
    [*(v34 + v53) setAdjustsFontSizeToFitWidth:0];
    [*(v34 + v53) setMinimumScaleFactor:0.0];
    [*(v34 + v53) setAttributedText:0];
    if (v131 && v25[qword_10094D6B0] == 4)
    {
      v52 = v130;
      if (v134 == 4)
      {
        v60 = v123;
        v61 = v129;
        v62 = v115;
        v63 = v131;
      }

      else
      {
        v60 = v115;
        v61 = v131;
        v62 = v123;
        v63 = v129;
      }

      sub_1001E45BC(v60, v61, v62, v63);
    }

    else
    {
      sub_1001E44C4(v123, v129);
      v52 = v130;
    }
  }

  v64 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
  v65 = *(v34 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v66 = [v65 text];
  if (v66 || (v66 = [*(v34 + v64) attributedText]) != 0)
  {

    v67 = 0;
  }

  else
  {
    v67 = 1;
  }

  v68 = v134;
  [v65 setHidden:v67];

  [v25 setNeedsLayout];
  v69 = *&v25[qword_10094D6C8];
  [v69 setImage:0];
  [v69 setHidden:1];
  v70 = v68 == 4;
  v71 = v122;
  if (v70 || (sub_100766E8C() & 1) != 0 || !v71)
  {
    v74 = *&v25[qword_10094D6D0];
    v75 = &v74[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
    v76 = *&v74[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
    if (!v71)
    {
      v77 = v76;
      v78 = 0;
      v73 = 1;
      goto LABEL_48;
    }

    v73 = 1;
  }

  else
  {
    v72 = HIBYTE(v71) & 0xF;
    if ((v71 & 0x2000000000000000) == 0)
    {
      v72 = v116 & 0xFFFFFFFFFFFFLL;
    }

    v73 = v72 == 0;
    v74 = *&v25[qword_10094D6D0];
    v75 = &v74[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
    v76 = *&v74[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  }

  v77 = v76;
  v78 = sub_10076FF6C();
LABEL_48:
  [v77 setText:v78];

  if (v73 == [*v75 isHidden] || (v74[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*v75 setHidden:v73];
  }

  else
  {
    if (!v73)
    {
      [*v75 setAlpha:0.0];
      v79 = objc_opt_self();
      [v79 inheritedAnimationDuration];
      v81 = v80;
      v82 = swift_allocObject();
      *(v82 + 16) = v74;
      v141 = sub_100138AA8;
      v142 = v82;
      aBlock = _NSConcreteStackBlock;
      v138 = 1107296256;
      v139 = sub_10009AEDC;
      v140 = &unk_10089F638;
      v83 = _Block_copy(&aBlock);
      v84 = v74;

      v85 = swift_allocObject();
      *(v85 + 16) = v84;
      v141 = sub_100138AC8;
      v142 = v85;
      aBlock = _NSConcreteStackBlock;
      v138 = 1107296256;
      v139 = sub_1000513F0;
      v140 = &unk_10089F688;
      v86 = _Block_copy(&aBlock);
      v87 = v84;
      v52 = v130;

      [v79 animateWithDuration:0 delay:v83 options:v86 animations:v81 completion:0.0];
      _Block_release(v86);
      _Block_release(v83);
    }

    [*v75 setHidden:v73];
    v74[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v74 setNeedsLayout];
  }

  sub_1001EE35C(v52, 1);
  [v25 setNeedsLayout];

  (*(v127 + 8))(v135, v121);
  (*(v125 + 8))(v52, v126);
  (*(v120 + 8))(v133, v124);
  v88 = sub_1007652AC();
  v89 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView;
  v90 = v136;
  v91 = *&v136[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView];
  v92 = sub_10076C63C();

  swift_beginAccess();
  *(v92 + 32) = v88;

  v93 = *&v90[v89];
  v94 = sub_10076C63C();

  sub_100760C4C();
  sub_10076F64C();
  sub_10076FC1C();
  *(v94 + 16) = v143;

  v143 = _swiftEmptyArrayStorage;
  v95 = v88 & 0xFFFFFFFFFFFFFF8;
  if (v88 >> 62)
  {
LABEL_89:
    v96 = sub_10077158C();
  }

  else
  {
    v96 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v97 = 0;
  v98 = _swiftEmptyArrayStorage;
  while (v96 != v97)
  {
    if ((v88 & 0xC000000000000001) != 0)
    {
      sub_10077149C();
      v99 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
        goto LABEL_85;
      }
    }

    else
    {
      if (v97 >= *(v95 + 16))
      {
        goto LABEL_86;
      }

      v99 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }
    }

    v100 = sub_10076BB9C();

    ++v97;
    if (v100)
    {
      sub_10077019C();
      if (*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();
      v98 = v143;
      v97 = v99;
    }
  }

  v101 = sub_100699CF8(v98);
  v88 = v101;
  v102 = *&v136[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_gradientView];
  v143 = _swiftEmptyArrayStorage;
  v95 = v101 & 0xFFFFFFFFFFFFFF8;
  if (v101 >> 62)
  {
    v103 = sub_10077158C();
  }

  else
  {
    v103 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v104 = v102;
  v105 = 0;
  v106 = _swiftEmptyArrayStorage;
  while (v103 != v105)
  {
    if ((v88 & 0xC000000000000001) != 0)
    {
      sub_10077149C();
      v107 = v105 + 1;
      if (__OFADD__(v105, 1))
      {
        goto LABEL_87;
      }
    }

    else
    {
      if (v105 >= *(v95 + 16))
      {
        goto LABEL_88;
      }

      v107 = v105 + 1;
      if (__OFADD__(v105, 1))
      {
        goto LABEL_87;
      }
    }

    v108 = sub_10076BE1C();

    ++v105;
    if (v108)
    {
      sub_10077019C();
      if (*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();
      v106 = v143;
      v105 = v107;
    }
  }

  v109 = OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();
  v110 = *&v104[v109];
  *&v104[v109] = v106;
  sub_100720B00(v110);

  [v136 setNeedsLayout];
LABEL_83:
}

double sub_10069C5E8()
{
  sub_10076C84C();
  sub_10069CE5C(&qword_100947150, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  sub_10076332C();
  if (v9)
  {
    sub_10076C7FC();

    sub_1007652BC();
    if (!swift_dynamicCastClass() || (sub_1007652AC(), sub_10076BC0C(), v1 = sub_1007701EC(), , (v1 & 1) == 0))
    {

      return result;
    }

    v2 = sub_1007652AC();
    v3 = v2;
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_24:
      v5 = sub_10077158C();
      if (v5)
      {
LABEL_6:
        v6 = 0;
        do
        {
          v7 = v6;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              sub_10077149C();
              v6 = v7 + 1;
              if (__OFADD__(v7, 1))
              {
                goto LABEL_22;
              }
            }

            else
            {
              if (v7 >= *(v4 + 16))
              {
                goto LABEL_23;
              }

              v6 = v7 + 1;
              if (__OFADD__(v7, 1))
              {
LABEL_22:
                __break(1u);
LABEL_23:
                __break(1u);
                goto LABEL_24;
              }
            }

            if (sub_10076BB5C())
            {
              break;
            }

            ++v7;
            if (v6 == v5)
            {
              goto LABEL_25;
            }
          }

          sub_10076BFCC();

          sub_10077019C();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_10077021C();
          }

          sub_10077025C();
        }

        while (v6 != v5);
      }
    }

    else
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_6;
      }
    }

LABEL_25:

    v8._rawValue = _swiftEmptyArrayStorage;
    sub_100760BAC(v8);
  }

  return result;
}

double sub_10069C87C()
{
  v1 = v0;
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "prepareForReuse");
  v2 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView;
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView];
  v4 = sub_10076C63C();

  swift_beginAccess();
  *(v4 + 32) = _swiftEmptyArrayStorage;

  v5 = *&v1[v2];
  sub_10076C6CC();

  v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_gradientView];
  v7 = OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();
  v8 = *&v6[v7];
  *&v6[v7] = _swiftEmptyArrayStorage;
  v9 = v6;
  sub_100720B00(v8);

  return result;
}

uint64_t sub_10069CA70()
{

  v1 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverStyling;
  v2 = sub_100762CAC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_unknownObjectWeakDestroy();
}

uint64_t type metadata accessor for RiverTodayCardCollectionViewCell(uint64_t a1)
{
  result = qword_100963618;
  if (!qword_100963618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10069CC58(uint64_t a1, __n128 a2)
{
  result = sub_100762CAC();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10069CD24()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10069CD5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_10069CD74()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  if (v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4)
  {
    v2 = [v0 contentView];
    [v2 setClipsToBounds:1];
  }

  result = [v0 setNeedsLayout];
  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_labelsView];
  v5 = v0[v1];
  *(v4 + qword_10094D6B0) = v5;
  if (v5 != 7)
  {
    *(*(v4 + qword_10094D6B8) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory) = v5;
    *(*(v4 + qword_10094D6C0) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory) = v5;
    *(*(v4 + qword_10094D6D0) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory) = v5;
  }

  return result;
}

uint64_t sub_10069CE5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10069CEC8(uint64_t *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = *a1;
  ObjectType = swift_getObjectType();

  return sub_10069CFD8(a2, a3, v13, a8, a6, v8, ObjectType);
}

double sub_10069CFD8(double a1, double a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int *a7)
{
  v12 = sub_10075F1BC();
  v14 = v13;
  v15 = sub_10075F1AC();
  v17 = v16;
  v18 = sub_10075F1EC();
  v20 = v19;
  v21 = sub_10052BE68(a5);
  if (qword_100940640 != -1)
  {
    swift_once();
  }

  sub_1002ECDCC(&unk_10099FD58, a4, a1, a2);
  v22 = type metadata accessor for AppEventCardView();
  sub_10052FF80(v12, v14, v15, v17, v18, v20, v21 & 1, a4, a1, a2, v22, a7);

  return a1;
}

void *sub_10069D120(uint64_t a1, void *a2, double a3, double a4)
{
  v5 = a3;
  if (qword_100940640 != -1)
  {
    v9 = a4;
    swift_once();
    a4 = v9;
    v5 = a3;
  }

  sub_1002ECDCC(&unk_10099FD58, a2, v5, a4);
  type metadata accessor for AppEventCardView();

  return sub_1005321BC(v5, a1, a2);
}

double sub_10069D1E0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8, double a9, double a10, uint64_t a11, int *a12)
{
  if (qword_100940640 != -1)
  {
    swift_once();
  }

  sub_1002ECDCC(&unk_10099FD58, a8, a9, a10);
  v22 = type metadata accessor for AppEventCardView();
  sub_10052FF80(a1, a2, a3, a4, a5, a6, a7 & 1, a8, a9, a10, v22, a12);
  return a9;
}

void sub_10069D2F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&qword_100952650, &unk_10079B720);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_10075F15C();
  v10 = *&v2[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_formattedDateView];
  [v2 setNeedsLayout];
  v11 = sub_10075F27C();
  if (v11)
  {
    v22 = v11;
    sub_10076B90C();
    sub_10076F64C();
    sub_10069D584(&qword_100956710, &type metadata accessor for Action, &protocol conformance descriptor for Action);
    sub_10076F56C();

    v12 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
    (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
  }

  else
  {
    v13 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  }

  v14 = OBJC_IVAR____TtC20ProductPageExtension12AppEventView_clickAction;
  swift_beginAccess();
  sub_1002F0390(v8, &v3[v14]);
  swift_endAccess();
  sub_100530B80(a1, a2);
  type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
  sub_10076F63C();
  v15 = v22;
  v16 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
  v17 = *(v10 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  v18 = v17;
  sub_1004B57F0(v15);
  v19 = *(v10 + v16);
  *(v10 + v16) = v15;
  v20 = v15;

  sub_1004B5954(v17);
}

uint64_t sub_10069D584(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10069D5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v11 = *(a4 - 8);
  v12 = __chkstk_darwin(a1);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v12);
  sub_10053269C(v14, a2, *(a3 + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView), a4, a5, a6);
  return (*(v11 + 8))(v14, a4);
}

id ProductPage.init(lookupItem:askToBuy:enablePrerenderedIconArtwork:)(void *a1, uint64_t a2, int a3)
{
  LODWORD(v152) = a3;
  v6 = sub_100762A7C();
  v150 = *(v6 - 8);
  __chkstk_darwin(v6);
  v142 = v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_10076B21C();
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v9 = v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076F3DC();
  __chkstk_darwin(v10 - 8);
  v147 = v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&qword_100963670, &qword_1007B7140);
  __chkstk_darwin(v12 - 8);
  v146 = v114 - v13;
  v14 = sub_10076201C();
  __chkstk_darwin(v14 - 8);
  v145 = v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10076C54C();
  __chkstk_darwin(v16 - 8);
  v144 = v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1007628DC();
  __chkstk_darwin(v18 - 8);
  v143 = v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_10075F78C();
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v21 = v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10000A5D4(&qword_100942A80, &unk_1007B5CE0);
  __chkstk_darwin(v22 - 8);
  v141 = v114 - v23;
  v137 = sub_10076C55C();
  v136 = *(v137 - 1);
  __chkstk_darwin(v137);
  v138 = v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v25 - 8);
  v122 = v114 - v26;
  v27 = sub_10000A5D4(&qword_100959C90, qword_1007A6F78);
  __chkstk_darwin(v27 - 8);
  v121 = v114 - v28;
  v29 = sub_10076BD9C();
  __chkstk_darwin(v29 - 8);
  v126 = v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_10076BEDC();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v117 = v114 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v118 = v114 - v33;
  v127 = sub_10076BF6C();
  v125 = *(v127 - 8);
  __chkstk_darwin(v127);
  v116 = v114 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v124 = v114 - v36;
  v162 = sub_10076F25C();
  v37 = *(v162 - 8);
  __chkstk_darwin(v162);
  v115 = v114 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v123 = v114 - v40;
  __chkstk_darwin(v41);
  v128 = v114 - v42;
  __chkstk_darwin(v43);
  v45 = v114 - v44;
  __chkstk_darwin(v46);
  v160 = v114 - v47;
  v48 = sub_10000A5D4(&qword_100963678, qword_1007B3000);
  __chkstk_darwin(v48 - 8);
  v50 = v114 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v159 = v114 - v52;
  v53 = sub_10076B96C();
  v157 = *(v53 - 8);
  v158 = v53;
  __chkstk_darwin(v53);
  v156 = v114 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v135 = v114 - v56;
  *&v58 = __chkstk_darwin(v57).n128_u64[0];
  v60 = v114 - v59;
  result = [a1 iTunesStoreIdentifier];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v134 = a2;
  v161 = v60;
  sub_10076B95C();
  v62 = [a1 bundleIdentifier];
  v133 = v3;
  v132 = v6;
  if (v62)
  {
    v63 = v62;
    v64 = sub_10076FF9C();
    v154 = v65;
    v155 = v64;
  }

  else
  {
    v154 = 0;
    v155 = 0;
  }

  v66 = v162;
  v131 = v9;
  v153 = a1;
  if (v152)
  {
    v67 = [a1 itemDictionary];
    v68 = sub_10076FE4C();

    *&v163 = 0x777472416E6F6369;
    *(&v163 + 1) = 0xEB000000006B726FLL;
    sub_10077140C();
    if (*(v68 + 16) && (v69 = sub_10060FEFC(v165), (v70 & 1) != 0))
    {
      sub_10000CD08(*(v68 + 56) + 32 * v69, &v163);
      sub_100016C74(v165);
    }

    else
    {

      sub_100016C74(v165);
      v163 = 0u;
      v164 = 0u;
    }

    v66 = v162;
    v72 = v159;
    sub_10076F24C();
    v71 = 0;
  }

  else
  {
    v71 = 1;
    v72 = v159;
  }

  (*(v37 + 56))(v72, v71, 1, v66);
  sub_100016E2C(v72, v50, &qword_100963678, qword_1007B3000);
  v73 = *(v37 + 48);
  if (v73(v50, 1, v66) == 1)
  {
    v74 = [v153 itemDictionary];
    v75 = sub_10076FE4C();

    *&v163 = 0x6B726F77747261;
    *(&v163 + 1) = 0xE700000000000000;
    sub_10077140C();
    if (*(v75 + 16) && (v76 = sub_10060FEFC(v165), (v77 & 1) != 0))
    {
      sub_10000CD08(*(v75 + 56) + 32 * v76, &v163);
      sub_100016C74(v165);
    }

    else
    {

      sub_100016C74(v165);
      v163 = 0u;
      v164 = 0u;
    }

    v66 = v162;
    sub_10076F24C();
    if (v73(v50, 1, v66) != 1)
    {
      sub_10000CFBC(v50, &qword_100963678, qword_1007B3000);
    }
  }

  else
  {
    (*(v37 + 32))(v160, v50, v66);
  }

  v130 = v21;
  sub_10076F26C();
  v78 = sub_10076F23C();
  v80 = v79;
  v81 = *(v37 + 8);
  v81(v45, v66);
  v151 = v37 + 8;
  v129 = v81;
  if (v80)
  {
    v114[1] = v78;
    v82 = v128;
    sub_10076F26C();
    sub_10076F22C();
    v84 = v83;
    v81(v82, v66);
    if ((v84 & 1) == 0)
    {
      v128 = v73;
      v85 = v123;
      sub_10076F26C();
      sub_10076F22C();
      v87 = v86;
      v81(v85, v66);
      if ((v87 & 1) == 0)
      {
        v101 = v159;
        v102 = v128;
        v103 = (v128)(v159, 1, v66);
        v104 = &enum case for Artwork.Style.roundedRect(_:);
        if (v103 != 1)
        {
          v104 = &enum case for Artwork.Style.roundedRectPrerendered(_:);
        }

        (*(v125 + 104))(v124, *v104, v127);
        v88 = v161;
        if ((v152 & 1) != 0 && v102(v101, 1, v66) == 1)
        {
          v105 = v118;
          sub_10076BEBC();
        }

        else
        {
          v105 = v118;
          sub_10076BE8C();
        }

        sub_10076BD7C();
        v106 = v115;
        sub_10076F26C();
        v152 = sub_10076F20C();
        v81(v106, v66);
        v107 = v125;
        v108 = v124;
        (*(v125 + 16))(v116, v124, v127);
        v109 = v119;
        v110 = v120;
        (*(v119 + 16))(v117, v105, v120);
        v111 = sub_10076BD2C();
        (*(*(v111 - 8) + 56))(v121, 1, 1, v111);
        v112 = sub_10076F7FC();
        (*(*(v112 - 8) + 56))(v122, 1, 1, v112);
        sub_10076C02C();
        swift_allocObject();
        v113 = sub_10076BE7C();
        (*(v109 + 8))(v105, v110);
        (*(v107 + 8))(v108, v127);
        v152 = v113;

        goto LABEL_25;
      }
    }
  }

  v152 = 0;
  v88 = v161;
LABEL_25:
  (*(v136 + 104))(v138, enum case for OfferType.app(_:), v137);
  v89 = v157;
  v137 = *(v157 + 16);
  v90 = v158;
  v137(v135, v88, v158);
  (*(v89 + 56))(v141, 1, 1, v90);
  memset(v165, 0, sizeof(v165));

  v136 = sub_10069ED94(_swiftEmptyArrayStorage);
  v128 = sub_10069ED94(_swiftEmptyArrayStorage);
  v127 = sub_10069ED94(_swiftEmptyArrayStorage);
  (*(v139 + 104))(v130, enum case for OfferStyle.infer(_:), v140);
  sub_1007628CC();
  sub_10076C53C();
  sub_10076200C();
  sub_100766B0C();
  swift_allocObject();
  sub_100766ADC();
  v137(v156, v161, v90);
  v91 = v153;
  v92 = [v153 displayName];
  v93 = v142;
  if (v92)
  {
    v94 = v92;
    sub_10076FF9C();
  }

  [v91 userRating];
  v96 = v95;
  v97 = objc_allocWithZone(NSNumber);
  LODWORD(v98) = v96;
  [v97 initWithFloat:v98];
  v99 = v134;
  sub_100016E2C(v134, v146, &qword_100963670, &qword_1007B7140);

  sub_10076F3CC();
  (*(v148 + 104))(v131, enum case for Uber.Style.above(_:), v149);
  (*(v150 + 104))(v93, enum case for ProductPageTheme.infer(_:), v132);
  v100 = sub_10076017C();

  sub_10000CFBC(v99, &qword_100963670, &qword_1007B7140);
  v129(v160, v162);
  (*(v157 + 8))(v161, v158);
  sub_10000CFBC(v159, &qword_100963678, qword_1007B3000);
  return v100;
}

unint64_t sub_10069EB64(uint64_t a1)
{
  sub_10076186C();
  sub_10069EF84(&qword_100960FE0, &protocol conformance descriptor for OfferTitleType);
  v2 = sub_10076FEAC();

  return sub_10069EBE8(a1, v2);
}

unint64_t sub_10069EBE8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_10076186C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_10069EF84(&qword_100960FE8, &protocol conformance descriptor for OfferTitleType);
      v16 = sub_10076FF1C();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_10069ED94(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100948C00, &qword_10078B5D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000A5D4(&qword_100948C08, &qword_10078B5D8);
    v7 = sub_1007715DC();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016E2C(v9, v5, &qword_100948C00, &qword_10078B5D0);
      result = sub_10069EB64(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_10076186C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 16 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10069EF84(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10076186C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_10069EFC8(double a1, double a2)
{
  if (a2 >= a1)
  {
    JUScreenClassGetPortraitWidth();
    if (v4 < a1)
    {
      JUScreenClassGetPortraitWidth();
    }
  }

  else
  {
    JUScreenClassGetLandscapeWidth();
    if (v3 < a1)
    {
      JUScreenClassGetLandscapeWidth();
    }
  }

  return 2.0;
}

id sub_10069F048(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_contentViewController] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_overlayViewController] = 0;
  v3[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_startedAsFlowPreview] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_presenter] = a1;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_objectGraph] = a2;
  v10.receiver = v3;
  v10.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", 0, 0);
  sub_1006A129C(&unk_1009636E0, &unk_1007B30BC);
  v8 = v7;
  sub_10076576C();

  return v8;
}

void sub_10069F1D4()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, "viewDidLoad");
  sub_100760C9C();
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  v4 = [objc_opt_self() systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_contentViewController];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  v7 = [v1 view];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v6 view];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  [v8 insertSubview:v9 atIndex:0];

LABEL_6:
  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_overlayViewController];
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = [v1 view];
  if (!v13)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v24 = v16;
  v25 = v18;
  v26 = v20;
  v27 = v22;
  v28 = 0;
  sub_10076856C();
}

void sub_10069F3F0()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "viewWillLayoutSubviews");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = *&v0[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_contentViewController];
  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = [v11 view];
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12;
  [v12 setFrame:{v4, v6, v8, v10}];

LABEL_5:
  v14 = *&v0[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_overlayViewController];
  if (!v14)
  {
    return;
  }

  v15 = [v14 view];
  if (!v15)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v16 = v15;
  [v15 setFrame:{v4, v6, v8, v10}];
}

void sub_10069F5D4(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_contentViewController;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_contentViewController];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [v4 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = v5;
  [v5 removeFromSuperview];

  v7 = *&v1[v3];
  if (v7)
  {
    [v7 removeFromParentViewController];
    v8 = *&v1[v3];
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

  *&v1[v3] = a1;
  v13 = a1;

  if (!a1)
  {
    return;
  }

  [v1 addChildViewController:v13];
  if ([v1 isViewLoaded])
  {
    v9 = [v1 view];
    if (v9)
    {
      v10 = v9;
      v11 = [v13 view];
      if (v11)
      {
        v12 = v11;
        [v10 insertSubview:v11 atIndex:0];

        goto LABEL_11;
      }

LABEL_17:
      __break(1u);
      return;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_11:
}

uint64_t sub_10069F72C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100766EDC();
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v26 - v7;
  v9 = type metadata accessor for FlowPresentationHints(0);
  __chkstk_darwin(v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_10094A890, &unk_100786A70);
  __chkstk_darwin(v12 - 8);
  v14 = v26 - v13;
  v15 = type metadata accessor for FlowDestination(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003F0D4(a2, v29);

  sub_10012062C(v19, v29, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000CFBC(v14, &unk_10094A890, &unk_100786A70);
    return 0;
  }

  sub_10005DAD8(v14, v18, v20);
  sub_10075F5BC();
  sub_10075F5AC();
  v21 = [v26[1] traitCollection];
  sub_1001489F0(v8);

  sub_10005DB58(v11, type metadata accessor for FlowPresentationHints);
  sub_10005DB58(v18, type metadata accessor for FlowDestination);
  v23 = v27;
  v22 = v28;
  (*(v27 + 32))(v5, v8, v28);
  v24 = (*(v23 + 88))(v5, v22);
  result = 1;
  if (v24 != enum case for FlowPresentationContext.presentModal(_:) && v24 != enum case for FlowPresentationContext.presentModalFormSheet(_:) && v24 != enum case for FlowPresentationContext.presentModalPageSheet(_:) && v24 != enum case for FlowPresentationContext.presentModalFullScreen(_:))
  {
    (*(v23 + 8))(v5, v22);
    return 0;
  }

  return result;
}

void sub_10069FAC4(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  ObjectType = swift_getObjectType();
  v4 = sub_10076F4FC();
  __chkstk_darwin(v4 - 8);
  v78 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100760EFC();
  v76 = *(v6 - 8);
  __chkstk_darwin(v6);
  v77 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v8 - 8);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v79 = &v72 - v12;
  __chkstk_darwin(v13);
  v15 = &v72 - v14;
  __chkstk_darwin(v16);
  v74 = &v72 - v17;
  v18 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v18 - 8);
  v20 = &v72 - v19;
  v21 = sub_10000A5D4(&unk_10094A890, &unk_100786A70);
  __chkstk_darwin(v21 - 8);
  v23 = &v72 - v22;
  v24 = type metadata accessor for FlowDestination(0);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = (&v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = v2;
  if (v2[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_startedAsFlowPreview] == 1)
  {
    v73 = sub_10075F63C();
    v28 = swift_dynamicCastClass();
    if (v28)
    {
      v29 = v28;
      sub_10003F0D4(v80, &v82);
      swift_retain_n();
      sub_10012062C(v29, &v82, v23);
      if ((*(v25 + 48))(v23, 1, v24) == 1)
      {
        sub_10000CFBC(v23, &unk_10094A890, &unk_100786A70);
        if (qword_1009412E8 != -1)
        {
          swift_once();
        }

        v31 = sub_10076FD4C();
        sub_10000A61C(v31, qword_1009A2600);
        sub_10000A5D4(&unk_100942A60, &unk_100784760);
        sub_10076F33C();
        *(swift_allocObject() + 16) = xmmword_100783C60;
        *(&v83 + 1) = ObjectType;
        *&v82 = v81;
        v32 = v81;
        sub_10076F30C();
        sub_10000CFBC(&v82, &unk_1009434C0, &qword_100783F60);
        sub_10076F27C();
        *(&v83 + 1) = v73;
        *&v82 = v29;

        sub_10076F32C();
        sub_10000CFBC(&v82, &unk_1009434C0, &qword_100783F60);
        sub_10076FBEC();
      }

      else
      {
        sub_10005DAD8(v23, v27, v30);
        v52 = v81;
        v53 = [v81 traitCollection];
        v54 = sub_10075F57C();
        v56 = v55;
        sub_10075F59C();
        v84 = 0;
        v82 = 0u;
        v83 = 0u;
        v57 = sub_10048B0C0(v27, v53, v54, v56, v20, &v82, *&v52[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_objectGraph], 1);

        sub_10000CFBC(&v82, &unk_10094A8A0, &unk_10078DB90);
        sub_10000CFBC(v20, &unk_100958150, &unk_100786630);
        sub_10069F5D4(v57);

        sub_10005DB58(v27, type metadata accessor for FlowDestination);
      }

      return;
    }
  }

  sub_10075F63C();
  v33 = swift_dynamicCastClass();
  if (v33)
  {
    v34 = v33;

    goto LABEL_9;
  }

  sub_10076167C();
  if (!swift_dynamicCastClass())
  {
LABEL_39:
    v69 = *&v81[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_objectGraph];
    v70 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
    sub_10076F5AC();
    v71 = *(v70 - 8);
    if ((*(v71 + 48))(v10, 1, v70) != 1)
    {
      sub_100263BF0(a1, 1, v69, v10);

      (*(v71 + 8))(v10, v70);
      return;
    }

    v43 = v10;
LABEL_41:
    sub_10000CFBC(v43, &unk_100943200, &unk_100785840);
    return;
  }

  v44 = sub_10076166C();
  if (!(v44 >> 62))
  {
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

LABEL_38:

    goto LABEL_39;
  }

  v67 = v44;
  v68 = sub_10077158C();
  v44 = v67;
  if (!v68)
  {
    goto LABEL_38;
  }

LABEL_17:
  if ((v44 & 0xC000000000000001) != 0)
  {
    sub_10077149C();
  }

  else
  {
    if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }
  }

  v45 = swift_dynamicCastClass();
  if (!v45)
  {

    goto LABEL_39;
  }

  v34 = v45;
LABEL_9:

  v35 = v81;
  if ((sub_10069F72C(v34, v80) & 1) == 0)
  {
    (*(v76 + 104))(v77, enum case for NavigationTab.infer(_:), v6);
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1007841E0;
    *(v46 + 32) = a1;

    sub_10076F4DC();
    sub_10076225C();
    swift_allocObject();
    v47 = sub_10076221C();
    v48 = *&v35[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_objectGraph];
    v49 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
    v50 = v79;
    sub_10076F5AC();
    v51 = *(v49 - 8);
    if ((*(v51 + 48))(v50, 1, v49) != 1)
    {
      sub_1002640CC(v47, 1, v48, v50);

      (*(v51 + 8))(v50, v49);
      return;
    }

    v43 = v50;
    goto LABEL_41;
  }

  v36 = [v35 tabBarController];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 transientViewController];
    if (v38)
    {

      [v37 setTransientViewController:0 animated:0];
      v39 = *&v35[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_objectGraph];
      v40 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
      v41 = v74;
      sub_10076F5AC();
      v42 = *(v40 - 8);
      if ((*(v42 + 48))(v41, 1, v40) != 1)
      {
        sub_100263BF0(a1, 1, v39, v41);

        (*(v42 + 8))(v41, v40);
        return;
      }

      v43 = v41;
      goto LABEL_41;
    }
  }

  v58 = *&v35[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_objectGraph];
  v59 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_10076F5AC();
  v60 = *(v59 - 8);
  if ((*(v60 + 48))(v15, 1, v59) == 1)
  {
    sub_10000CFBC(v15, &unk_100943200, &unk_100785840);
  }

  else
  {
    sub_100263BF0(a1, 1, v58, v15);

    (*(v60 + 8))(v15, v59);
  }

  v61 = [v35 navigationController];
  v62 = [v61 topViewController];

  if (v62)
  {
    sub_10003F040();
    v63 = v35;
    v64 = sub_100770EEC();

    if (v64)
    {
      v65 = [v63 navigationController];
      if (v65)
      {
        v66 = v65;
      }
    }
  }
}

void sub_1006A0728()
{
  v1 = v0;
  v2 = sub_10076DE4C();
  __chkstk_darwin(v2 - 8);
  sub_10076DE3C();
  v3 = objc_allocWithZone(sub_10076DE6C());
  v4 = sub_10076DE5C();
  v5 = OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_overlayViewController;
  v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_overlayViewController];
  sub_10076857C();

  v7 = *&v1[v5];
  *&v1[v5] = v4;
  v8 = v4;

  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];

    sub_10076856C();
  }

  else
  {
    __break(1u);
  }
}

void sub_1006A0880(__n128 a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_overlayViewController;
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_overlayViewController];
  if (v3)
  {
    sub_10076DE6C();
    if (swift_dynamicCastClass())
    {
      v4 = v3;
      sub_10076857C();

      v5 = *&v1[v2];
      *&v1[v2] = 0;

      v6 = [v1 view];
      if (v6)
      {
        v7 = v6;
        [v6 bounds];

        sub_10076856C();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1006A0964(uint64_t a1)
{
  v1 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v1 - 8);
  v47 = &v37 - v2;
  v3 = sub_100760EFC();
  v48 = *(v3 - 8);
  v49 = v3;
  __chkstk_darwin(v3);
  v46 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10075F65C();
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin(v5);
  v43 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100765F6C();
  v41 = *(v7 - 8);
  v42 = v7;
  __chkstk_darwin(v7);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100766EDC();
  v9 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076F4FC();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v12 - 8);
  v14 = &v37 - v13;
  v15 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v15 - 8);
  v17 = &v37 - v16;
  v18 = sub_10076C15C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10076DF1C();
  __chkstk_darwin(v22 - 8);
  sub_10076DF0C();
  v37 = sub_10076DF3C();
  v23 = objc_allocWithZone(v37);
  swift_errorRetain();
  v24 = sub_10076DF2C();
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  (*(v19 + 104))(v21, enum case for FlowPage.viewController(_:), v18);
  v25 = sub_10075DB7C();
  (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  v26 = sub_10076096C();
  (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
  v51 = 0u;
  v52 = 0u;
  sub_10076F4DC();
  (*(v9 + 104))(v38, enum case for FlowPresentationContext.push(_:), v39);
  (*(v41 + 104))(v40, enum case for FlowAnimationBehavior.never(_:), v42);
  (*(v44 + 104))(v43, enum case for FlowOrigin.inapp(_:), v45);
  sub_10076FA2C();
  sub_10075F63C();
  swift_allocObject();
  v27 = sub_10075F5EC();
  *(&v54 + 1) = v37;
  *&v53 = v24;
  v28 = v24;
  v29 = v47;
  v30 = v28;
  sub_10075F58C();
  sub_10000CFBC(&v53, &unk_1009434C0, &qword_100783F60);
  (*(v48 + 104))(v46, enum case for NavigationTab.infer(_:), v49);
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1007841E0;
  *(v31 + 32) = v27;

  sub_10076F4DC();
  sub_10076225C();
  swift_allocObject();
  v32 = sub_10076221C();
  v33 = *(v50 + OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_objectGraph);
  v34 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_10076F5AC();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v29, 1, v34) == 1)
  {

    return sub_10000CFBC(v29, &unk_100943200, &unk_100785840);
  }

  else
  {
    sub_1002640CC(v32, 1, v33, v29);

    return (*(v35 + 8))(v29, v34);
  }
}

uint64_t sub_1006A129C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LoadingPageViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1006A12DC()
{
  v0 = sub_100769F0C();
  sub_10000DB18(v0, qword_1009A31E8);
  sub_10000A61C(v0, qword_1009A31E8);
  return sub_100769EFC();
}

uint64_t sub_1006A1328()
{
  v0 = sub_100769E4C();
  sub_10000DB18(v0, qword_1009A3200);
  v1 = sub_10000A61C(v0, qword_1009A3200);
  v2 = enum case for CondensedSearchResultCardLayout.Configuration.appEvent(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

char *sub_1006A13B0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10075FEEC();
  v76 = *(v10 - 8);
  v77 = v10;
  __chkstk_darwin(v10);
  v75 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_10095B400, &unk_100783F80);
  __chkstk_darwin(v12 - 8);
  v74 = &v68 - v13;
  v14 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v14 - 8);
  v73 = &v68 - v15;
  v16 = OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventFormattedDateView;
  *&v4[v16] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v17 = OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_titleLabel;
  sub_1007626BC();
  *&v4[v17] = sub_10076269C();
  v18 = OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_viewButton;
  *&v5[v18] = [objc_opt_self() buttonWithType:0];
  v19 = OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_artworkView;
  if (qword_1009414A0 != -1)
  {
    swift_once();
  }

  v20 = sub_100769F0C();
  sub_10000A61C(v20, qword_1009A31E8);
  sub_100769E6C();
  *&v5[v19] = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, v21, v22}];
  v23 = OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventTapGestureRecognizer;
  *&v5[v23] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v24 = &v5[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventViewTappedAction];
  v25 = type metadata accessor for CondensedAppEventCardView();
  *v24 = 0;
  *(v24 + 1) = 0;
  v79.receiver = v5;
  v79.super_class = v25;
  v26 = objc_msgSendSuper2(&v79, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v30 = v26;
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v70 = OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventFormattedDateView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventFormattedDateView]];
  v31 = OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_titleLabel;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_titleLabel]];
  v72 = OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_artworkView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_artworkView]];
  v71 = OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_viewButton;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_viewButton]];
  v32 = qword_1009414A8;
  v33 = *&v30[v31];
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = sub_100769E4C();
  sub_10000A61C(v34, qword_1009A3200);
  v35 = v73;
  sub_100769E3C();
  v36 = sub_10076D3DC();
  v37 = *(v36 - 8);
  v38 = *(v37 + 56);
  v68 = v36;
  v69 = v38;
  v38(v35, 0, 1, v36);
  sub_1007625DC();

  v39 = v30;
  v40.super.isa = [v39 traitCollection];
  isa = v40.super.isa;
  [*&v30[v31] setNumberOfLines:sub_100769E0C(v40)];

  v42 = v70;
  v43 = *&v30[v70];
  v44 = v43[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style];
  v43[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style] = 7;
  v45 = v43;
  sub_1004B413C(v44);

  *(*&v30[v42] + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_delegate + 8) = &off_10089F810;
  swift_unknownObjectWeakAssign();

  v46 = *&v30[v31];
  *v35 = UIFontTextStyleSubheadline;
  *(v35 + 2) = 0;
  v47 = v68;
  (*(v37 + 104))(v35, enum case for FontUseCase.preferredFont(_:), v68);
  v69(v35, 0, 1, v47);
  v48 = v46;
  v49 = UIFontTextStyleSubheadline;
  sub_1007625DC();

  v50 = v71;
  v51 = *&v30[v71];
  v52 = v51;
  v53 = [v39 traitCollection];
  v54 = v74;
  v55 = ObjectType;
  sub_1006AA284(v51, v74);

  v56 = sub_10077111C();
  (*(*(v56 - 8) + 56))(v54, 0, 1, v56);
  sub_10077114C();

  v57 = sub_1006AA520();
  sub_100010298(v57, v58);

  [*&v30[v50] addTarget:v39 action:"handleTapWithGestureRecognizer:" forControlEvents:64];
  v59 = *&v30[v72];
  v61 = v75;
  v60 = v76;
  v62 = v77;
  (*(v76 + 104))(v75, enum case for CornerStyle.continuous(_:), v77);
  v63 = v59;
  sub_10075FD1C();

  (*(v60 + 8))(v61, v62);
  v64 = OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventTapGestureRecognizer;
  v65 = *&v39[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventTapGestureRecognizer];
  [v65 addTarget:v39 action:"handleTapWithGestureRecognizer:"];

  [v39 addGestureRecognizer:*&v39[v64]];
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_100783DD0;
  *(v66 + 32) = sub_10076E88C();
  *(v66 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(swift_allocObject() + 16) = v55;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v39;
}

id sub_1006A1B8C(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1006AA520();
  sub_1006AA544(v5, v6, a3, &off_10089F820);

  v7 = [a1 traitCollection];
  v8 = *&a1[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_titleLabel];
  if (qword_1009414A8 != -1)
  {
    swift_once();
  }

  v9 = sub_100769E4C();
  sub_10000A61C(v9, qword_1009A3200);
  v10.super.isa = v7;
  [v8 setNumberOfLines:sub_100769E0C(v10)];

  return [a1 setNeedsLayout];
}

id sub_1006A1CE0()
{
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventTapGestureRecognizer] removeTarget:v0 action:0];
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_viewButton] removeTarget:v0 action:"handleTapWithGestureRecognizer:" forControlEvents:0xFFFFFFFFLL];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CondensedAppEventCardView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006A1E7C()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_100942638, &unk_100783F90);
  v123 = *(v2 - 8);
  v124 = v2;
  __chkstk_darwin(v2);
  v122 = &v90 - v3;
  v4 = sub_100769F0C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100769F2C();
  v120 = *(v8 - 8);
  *&v121 = v8;
  __chkstk_darwin(v8);
  v119 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076D1FC();
  v107 = *(v10 - 8);
  v108 = v10;
  __chkstk_darwin(v10);
  v106 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_10076DB6C();
  v128 = *(v126 - 8);
  __chkstk_darwin(v126);
  v103 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_10076DB5C();
  v129 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_10076DB0C();
  v127 = *(v125 - 8);
  __chkstk_darwin(v125);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_10076DBAC();
  v16 = *(v105 - 8);
  __chkstk_darwin(v105);
  v104 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CondensedAppEventCardView();
  v148.receiver = v0;
  v148.super_class = v18;
  objc_msgSendSuper2(&v148, "layoutSubviews");
  sub_10076422C();
  v20 = v19;
  v22 = v21;
  v23 = *&v0[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventFormattedDateView];
  sub_1004B67D8(v145);
  v24 = sub_1004B8E04(v0, v145, v20, v22);
  v26 = v25;
  sub_10005AE58(v145);
  [v23 setFrame:{0.0, 0.0, v24, v26}];
  v27 = [v0 traitCollection];
  v28 = sub_10077071C();

  if (v28)
  {
    v95 = v16;
    if (qword_1009414A0 != -1)
    {
      swift_once();
    }

    v29 = sub_10000A61C(v4, qword_1009A31E8);
    v30 = type metadata accessor for AppPromotionFormattedDateView();
    v147 = &protocol witness table for UIView;
    v146 = v30;
    v145[0] = v23;
    v31 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_titleLabel];
    v32 = sub_1007626BC();
    v144 = &protocol witness table for UILabel;
    v143 = v32;
    v142[0] = v31;
    v33 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_viewButton];
    v34 = sub_100409B3C();
    v141 = &protocol witness table for UIView;
    v140 = v34;
    v139 = v33;
    v35 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_artworkView];
    v137 = sub_10075FD2C();
    v138 = &protocol witness table for UIView;
    v136 = v35;
    sub_10000A5D4(&qword_1009426C0, qword_100784180);
    v36 = *(sub_10076DB9C() - 8);
    v99 = *(v36 + 72);
    v37 = *(v36 + 80);
    v94 = v1;
    v38 = (v37 + 32) & ~v37;
    v39 = swift_allocObject();
    v93 = v39;
    *(v39 + 16) = xmmword_100788B20;
    v124 = v39 + v38;
    v40 = v23;
    v41 = v31;
    v42 = v33;
    v43 = v35;
    sub_100769E9C();
    v97 = v29;
    sub_100769EBC();
    v92 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
    v44 = v127;
    v98 = *(v127 + 104);
    v100 = v127 + 104;
    v45 = v15;
    v98(v15);
    v46 = sub_10000A5D4(&unk_100963750, &unk_10078AFA0);
    v47 = *(v129 + 72);
    v109 = *(v129 + 80);
    v96 = (v109 + 32) & ~v109;
    v122 = v47;
    v123 = 3 * v47;
    v110 = 2 * v47;
    v111 = v46;
    v48 = swift_allocObject();
    v121 = xmmword_100783C60;
    *(v48 + 16) = xmmword_100783C60;
    sub_10076DB4C();
    sub_10076DB2C();
    sub_10076DB3C();
    v131[0] = v48;
    v119 = sub_1006A57D8(&qword_1009426B0, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
    v118 = sub_10000A5D4(&unk_100963760, &unk_100784170);
    v120 = sub_100016EDC();
    v50 = v101;
    v49 = v102;
    sub_1007712CC();
    v117 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v51 = v128;
    v52 = *(v128 + 104);
    v115 = v128 + 104;
    v116 = v52;
    v53 = v103;
    v54 = v126;
    v52(v103);
    sub_10076DB8C();
    v55 = *(v51 + 8);
    v128 = v51 + 8;
    v114 = v55;
    v55(v53, v54);
    v56 = *(v129 + 8);
    v129 += 8;
    v113 = v56;
    v56(v50, v49);
    v57 = *(v44 + 8);
    v127 = v44 + 8;
    v112 = v57;
    v58 = v125;
    v57(v45, v125);
    sub_1000F00E0(v132);
    sub_10000CD74(v133);
    sub_100769E8C();
    memset(v132, 0, 40);
    v91 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
    v59 = v98;
    v98(v45);
    v60 = swift_allocObject();
    *(v60 + 16) = v121;
    sub_10076DB4C();
    sub_10076DB2C();
    sub_10076DB3C();
    v131[0] = v60;
    sub_1007712CC();
    v61 = v126;
    v116(v53, v117, v126);
    v62 = v99;
    sub_10076DB8C();
    v114(v53, v61);
    v113(v50, v49);
    v112(v45, v58);
    sub_1000F00E0(v132);
    sub_10000CD74(v133);
    v90 = 2 * v62;
    v63 = v143;
    v64 = v144;
    v65 = sub_10000CF78(v142, v143);
    v134 = v63;
    v135 = v64[1];
    v66 = sub_10000DB7C(v133);
    (*(*(v63 - 8) + 16))(v66, v65, v63);
    sub_100769E7C();
    sub_100769ECC();
    (v59)(v45, v91, v58);
    v67 = swift_allocObject();
    *(v67 + 16) = v121;
    sub_10076DB4C();
    sub_10076DB2C();
    sub_10076DB3C();
    v130 = v67;
    sub_1007712CC();
    v68 = v126;
    v116(v53, v117, v126);
    v69 = v90;
    sub_10076DB8C();
    v114(v53, v68);
    v113(v50, v49);
    v70 = v125;
    v112(v45, v125);
    sub_1000F00E0(v131);
    sub_10000CD74(v132);
    sub_10000CD74(v133);
    v99 += v69;
    v134 = &type metadata for Double;
    v135 = &protocol witness table for Double;
    v133[0] = 0x4030000000000000;
    sub_100769EAC();
    (v98)(v45, v92, v70);
    v71 = swift_allocObject();
    *(v71 + 16) = v121;
    sub_10076DB4C();
    sub_10076DB2C();
    sub_10076DB3C();
    v131[0] = v71;
    sub_1007712CC();
    v72 = v126;
    v116(v53, v117, v126);
    sub_10076DB8C();
    v114(v53, v72);
    v113(v50, v49);
    v112(v45, v70);
    sub_1000F00E0(v132);
    sub_10000CD74(v133);
    v73 = v104;
    sub_10076DB7C();
    sub_10000CD74(&v136);
    sub_10000CD74(&v139);
    sub_10000CD74(v142);
    sub_10000CD74(v145);
    v75 = v105;
    v74 = v106;
    sub_10076DFCC();
    (*(v107 + 8))(v74, v108);
    return (*(v95 + 8))(v73, v75);
  }

  else
  {
    if (qword_1009414A0 != -1)
    {
      swift_once();
    }

    v77 = sub_10000A61C(v4, qword_1009A31E8);
    (*(v5 + 16))(v7, v77, v4);
    v78 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_artworkView];
    v146 = sub_10075FD2C();
    v147 = sub_1006A57D8(&qword_10094B250, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v145[0] = v78;
    v133[0] = v23;
    type metadata accessor for AppPromotionFormattedDateView();
    v79 = v78;
    sub_10076D2DC();
    v80 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_titleLabel];
    v81 = sub_1007626BC();
    v141 = &protocol witness table for UILabel;
    v140 = v81;
    v139 = v80;
    v82 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_viewButton];
    v137 = sub_100409B3C();
    v138 = &protocol witness table for UIButton;
    v136 = v82;
    v83 = v80;
    v84 = v82;
    v85 = v119;
    sub_100769F1C();
    v86 = [v1 traitCollection];
    sub_1006A57D8(&qword_100942640, &type metadata accessor for CondensedSearchResultCardLayout, &protocol conformance descriptor for CondensedSearchResultCardLayout);
    v87 = v122;
    v88 = v121;
    sub_10076D43C();
    swift_getOpaqueTypeConformance2();
    v89 = v124;
    sub_10076E0EC();

    (*(v123 + 8))(v87, v89);
    return (*(v120 + 8))(v85, v88);
  }
}

double sub_1006A2F3C(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v116 = sub_10000A5D4(&qword_100942638, &unk_100783F90);
  v111 = *(v116 - 8);
  __chkstk_darwin(v116);
  v6 = &v82 - v5;
  v110 = sub_100769F2C();
  v7 = *(v110 - 8);
  __chkstk_darwin(v110);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_10076DB6C();
  v119 = *(v117 - 8);
  __chkstk_darwin(v117);
  v93 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_10076DB5C();
  v120 = *(v92 - 8);
  __chkstk_darwin(v92);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_10076DB0C();
  v118 = *(v114 - 8);
  __chkstk_darwin(v114);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100769F0C();
  v112 = *(v15 - 8);
  v113 = v15;
  __chkstk_darwin(v15);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10076DBAC();
  v95 = *(v18 - 8);
  v96 = v18;
  __chkstk_darwin(v18);
  v94 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10077071C())
  {
    sub_100769EFC();
    v20 = *&v3[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventFormattedDateView];
    v137 = type metadata accessor for AppPromotionFormattedDateView();
    v138 = &protocol witness table for UIView;
    v136 = v20;
    v21 = *&v3[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_titleLabel];
    v134 = sub_1007626BC();
    v135 = &protocol witness table for UILabel;
    v133[0] = v21;
    v22 = *&v3[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_viewButton];
    v131 = sub_100409B3C();
    v132 = &protocol witness table for UIView;
    v130 = v22;
    v23 = *&v3[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_artworkView];
    v128 = sub_10075FD2C();
    v129 = &protocol witness table for UIView;
    v127 = v23;
    sub_10000A5D4(&qword_1009426C0, qword_100784180);
    v24 = *(sub_10076DB9C() - 8);
    v90 = *(v24 + 72);
    v25 = *(v24 + 80);
    v88 = v3;
    v26 = (v25 + 32) & ~v25;
    v27 = swift_allocObject();
    v87 = v27;
    *(v27 + 16) = xmmword_100788B20;
    v116 = v27 + v26;
    v28 = v20;
    v29 = v21;
    v30 = v22;
    v31 = v23;
    v115 = v17;
    sub_100769E9C();
    sub_100769EBC();
    v86 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
    v32 = v118;
    v33 = *(v118 + 104);
    v89 = v118 + 104;
    v97 = v33;
    v33(v14);
    v91 = sub_10000A5D4(&unk_100963750, &unk_10078AFA0);
    v34 = *(v120 + 72);
    v35 = *(v120 + 80);
    v36 = (v35 + 32) & ~v35;
    v110 = 3 * v34;
    v111 = v35;
    v108 = v34;
    v109 = 2 * v34;
    v37 = swift_allocObject();
    v107 = xmmword_100783C60;
    *(v37 + 16) = xmmword_100783C60;
    sub_10076DB4C();
    sub_10076DB2C();
    sub_10076DB3C();
    v122[0] = v37;
    v106 = sub_1006A57D8(&qword_1009426B0, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
    v105 = sub_10000A5D4(&unk_100963760, &unk_100784170);
    v99 = sub_100016EDC();
    v38 = v92;
    sub_1007712CC();
    v104 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v39 = v119;
    v40 = *(v119 + 104);
    v102 = v119 + 104;
    v103 = v40;
    v41 = v93;
    v42 = v117;
    v40(v93);
    sub_10076DB8C();
    v98 = *(v39 + 8);
    v119 = v39 + 8;
    v98(v41, v42);
    v43 = *(v120 + 8);
    v120 += 8;
    v101 = v43;
    v43(v12, v38);
    v44 = *(v32 + 8);
    v118 = v32 + 8;
    v100 = v44;
    v45 = v114;
    v44(v14, v114);
    sub_1000F00E0(v123);
    sub_10000CD74(v124);
    sub_100769E8C();
    memset(v123, 0, 40);
    v85 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
    v97(v14);
    v84 = v36;
    v46 = swift_allocObject();
    *(v46 + 16) = v107;
    sub_10076DB4C();
    sub_10076DB2C();
    sub_10076DB3C();
    v122[0] = v46;
    sub_1007712CC();
    v47 = v117;
    v103(v41, v104, v117);
    v48 = v90;
    sub_10076DB8C();
    v98(v41, v47);
    v101(v12, v38);
    v100(v14, v45);
    sub_1000F00E0(v123);
    sub_10000CD74(v124);
    v83 = 2 * v48;
    v49 = v134;
    v50 = v135;
    v51 = sub_10000CF78(v133, v134);
    v125 = v49;
    v126 = v50[1];
    v52 = sub_10000DB7C(v124);
    (*(*(v49 - 8) + 16))(v52, v51, v49);
    sub_100769E7C();
    sub_100769ECC();
    v53 = v45;
    (v97)(v14, v85, v45);
    v54 = swift_allocObject();
    *(v54 + 16) = v107;
    sub_10076DB4C();
    sub_10076DB2C();
    sub_10076DB3C();
    v121 = v54;
    sub_1007712CC();
    v55 = v117;
    v103(v41, v104, v117);
    v56 = v83;
    sub_10076DB8C();
    v98(v41, v55);
    v101(v12, v38);
    v100(v14, v53);
    sub_1000F00E0(v122);
    sub_10000CD74(v123);
    sub_10000CD74(v124);
    v90 += v56;
    v125 = &type metadata for Double;
    v126 = &protocol witness table for Double;
    v124[0] = 0x4030000000000000;
    sub_100769EAC();
    (v97)(v14, v86, v53);
    v57 = swift_allocObject();
    *(v57 + 16) = v107;
    sub_10076DB4C();
    sub_10076DB2C();
    sub_10076DB3C();
    v122[0] = v57;
    sub_1007712CC();
    v58 = v117;
    v103(v41, v104, v117);
    sub_10076DB8C();
    v98(v41, v58);
    v101(v12, v38);
    v100(v14, v53);
    sub_1000F00E0(v123);
    sub_10000CD74(v124);
    v59 = v94;
    sub_10076DB7C();
    (*(v112 + 8))(v115, v113);
    sub_10000CD74(&v127);
    sub_10000CD74(&v130);
    sub_10000CD74(v133);
    sub_10000CD74(&v136);
    v60 = [v88 traitCollection];
    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1007841E0;
    *(v61 + 32) = v60;
    v62 = v60;
    v63 = sub_10076DEEC();
    v64 = v96;
    sub_10076D2AC();
    v66 = v65;

    (*(v95 + 8))(v59, v64);
  }

  else
  {
    v68 = v112;
    v67 = v113;
    if (qword_1009414A0 != -1)
    {
      swift_once();
    }

    v69 = sub_10000A61C(v67, qword_1009A31E8);
    (*(v68 + 16))(v17, v69, v67);
    v70 = *&v4[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_artworkView];
    v137 = sub_10075FD2C();
    v138 = sub_1006A57D8(&qword_10094B250, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v136 = v70;
    v71 = *&v4[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventFormattedDateView];
    v134 = type metadata accessor for AppPromotionFormattedDateView();
    v135 = sub_1006A57D8(&qword_100963778, type metadata accessor for AppPromotionFormattedDateView, &unk_1007A6C5C);
    v133[0] = v71;
    v72 = *&v4[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_titleLabel];
    v131 = sub_1007626BC();
    v132 = &protocol witness table for UILabel;
    v130 = v72;
    v73 = *&v4[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_viewButton];
    v128 = sub_100409B3C();
    v129 = &protocol witness table for UIButton;
    v127 = v73;
    v74 = v70;
    v75 = v71;
    v76 = v72;
    v77 = v73;
    sub_100769F1C();
    sub_1006A57D8(&qword_100942640, &type metadata accessor for CondensedSearchResultCardLayout, &protocol conformance descriptor for CondensedSearchResultCardLayout);
    v78 = v110;
    sub_10076D43C();
    swift_getOpaqueTypeConformance2();
    v79 = v116;
    sub_10076E0FC();
    v66 = v80;
    (*(v111 + 8))(v6, v79);
    (*(v7 + 8))(v9, v78);
  }

  return v66;
}

double sub_1006A3EF0()
{
  v108 = sub_10076DB6C();
  v112 = *(v108 - 8);
  __chkstk_darwin(v108);
  v82 = &v68 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_10076DB5C();
  v113 = *(v81 - 8);
  __chkstk_darwin(v81);
  v80 = &v68 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10076DB0C();
  v3 = *(v2 - 8);
  v110 = v2;
  v111 = v3;
  __chkstk_darwin(v2);
  v77 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076DBAC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v83 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_10076D1AC();
  v8 = *(v106 - 8);
  __chkstk_darwin(v106);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076997C();
  v107 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076469C();
  __chkstk_darwin(v14 - 8);
  v15 = sub_10076C38C();
  v78 = *(v15 - 8);
  v79 = v15;
  __chkstk_darwin(v15);
  v91 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075EEBC();
  sub_1006A57D8(&qword_100942860, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);
  sub_10076332C();
  if (!v123[0])
  {
    return 0.0;
  }

  v105 = v11;
  v90 = v123[0];
  sub_1007632FC();
  if (qword_100940540 != -1)
  {
    swift_once();
  }

  sub_10076C32C();
  sub_10076C2FC();
  v18 = v17;
  v20 = v19;
  swift_getKeyPath();
  sub_10076338C();

  v21 = v123[0];
  if (qword_1009414A0 != -1)
  {
    swift_once();
  }

  v22 = sub_100769F0C();
  v109 = sub_10000A61C(v22, qword_1009A31E8);
  sub_100769E6C();
  v23 = sub_10076DDDC();
  swift_allocObject();
  v89 = sub_10076DDBC();
  if (qword_100940678 != -1)
  {
    swift_once();
  }

  v75 = v6;
  v76 = v5;
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1002ECDCC(&unk_1009A01F0, v21, v18, v20);
  swift_unknownObjectRelease();
  swift_allocObject();
  v88 = sub_10076DDAC();
  sub_10075EE9C();
  sub_10075F1BC();
  v104 = v24;

  if (qword_1009414A8 != -1)
  {
    swift_once();
  }

  v25 = sub_100769E4C();
  sub_10000A61C(v25, qword_1009A3200);
  sub_100769E3C();
  v26 = v106;
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v106);
  v27.super.isa = [v21 traitCollection];
  isa = v27.super.isa;
  sub_10076D19C(v27);

  (*(v8 + 8))(v10, v26);
  v29 = sub_10076C04C();
  v124 = v29;
  v125 = sub_1006A57D8(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v30 = sub_10000DB7C(v123);
  (*(*(v29 - 8) + 104))(v30, enum case for Feature.measurement_with_labelplaceholder(_:), v29);
  sub_10076C90C();
  sub_10000CD74(v123);
  sub_10076996C();
  sub_10076994C();
  (*(v107 + 8))(v13, v105);
  sub_100769E5C();
  swift_allocObject();
  v31 = sub_10076DDBC();
  v122[3] = v23;
  v122[4] = &protocol witness table for LayoutViewPlaceholder;
  v121[4] = &protocol witness table for LayoutViewPlaceholder;
  v122[0] = v88;
  v121[3] = v23;
  v121[0] = v31;
  v74 = v31;
  v120[4] = &protocol witness table for LayoutViewPlaceholder;
  v120[3] = v23;
  v120[0] = v89;
  sub_10000A5D4(&qword_1009426C0, qword_100784180);
  v32 = *(sub_10076DB9C() - 8);
  v87 = *(v32 + 72);
  v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v34 = swift_allocObject();
  v73 = v34;
  *(v34 + 16) = xmmword_100788B20;
  v92 = v34 + v33;

  sub_100769E9C();
  sub_100769EBC();
  v71 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v35 = v111;
  v36 = *(v111 + 104);
  v93 = v111 + 104;
  v94 = v36;
  v72 = v21;
  v37 = v77;
  v36(v77);
  v95 = sub_10000A5D4(&unk_100963750, &unk_10078AFA0);
  v38 = *(v113 + 72);
  v39 = *(v113 + 80);
  v85 = (v39 + 32) & ~v39;
  v106 = 3 * v38;
  v107 = v39;
  v104 = v38;
  v105 = 2 * v38;
  v40 = swift_allocObject();
  v103 = xmmword_100783C60;
  *(v40 + 16) = xmmword_100783C60;
  sub_10076DB4C();
  sub_10076DB2C();
  sub_10076DB3C();
  v115[0] = v40;
  v101 = sub_1006A57D8(&qword_1009426B0, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
  v100 = sub_10000A5D4(&unk_100963760, &unk_100784170);
  v102 = sub_100016EDC();
  v41 = v80;
  v42 = v81;
  sub_1007712CC();
  v99 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v43 = v112;
  v44 = *(v112 + 104);
  v97 = v112 + 104;
  v98 = v44;
  v45 = v82;
  v46 = v108;
  v44(v82);
  sub_10076DB8C();
  v84 = *(v43 + 8);
  v112 = v43 + 8;
  v84(v45, v46);
  v86 = *(v113 + 8);
  v113 += 8;
  v86(v41, v42);
  v47 = *(v35 + 8);
  v111 = v35 + 8;
  v96 = v47;
  v47(v37, v110);
  sub_1000F00E0(v116);
  sub_10000CD74(v117);
  sub_100769E8C();
  memset(v116, 0, 40);
  v70 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  v94(v37);
  v48 = swift_allocObject();
  *(v48 + 16) = v103;
  sub_10076DB4C();
  sub_10076DB2C();
  sub_10076DB3C();
  v115[0] = v48;
  sub_1007712CC();
  v98(v45, v99, v46);
  v49 = v87;
  sub_10076DB8C();
  v50 = v84;
  v84(v45, v46);
  v86(v41, v42);
  v51 = v110;
  v96(v37, v110);
  sub_1000F00E0(v116);
  sub_10000CD74(v117);
  v69 = 2 * v49;
  v52 = v124;
  v53 = v125;
  v54 = sub_10000CF78(v123, v124);
  v118 = v52;
  v119 = *(v53 + 8);
  v55 = sub_10000DB7C(v117);
  (*(*(v52 - 8) + 16))(v55, v54, v52);
  sub_100769E7C();
  sub_100769ECC();
  (v94)(v37, v70, v51);
  v56 = swift_allocObject();
  *(v56 + 16) = v103;
  sub_10076DB4C();
  sub_10076DB2C();
  sub_10076DB3C();
  v114 = v56;
  sub_1007712CC();
  v57 = v108;
  v98(v45, v99, v108);
  v58 = v69;
  sub_10076DB8C();
  v50(v45, v57);
  v59 = v86;
  v86(v41, v42);
  v60 = v110;
  v96(v37, v110);
  sub_1000F00E0(v115);
  sub_10000CD74(v116);
  sub_10000CD74(v117);
  v87 += v58;
  v118 = &type metadata for Double;
  v119 = &protocol witness table for Double;
  v117[0] = 0x4030000000000000;
  sub_100769EAC();
  (v94)(v37, v71, v60);
  v61 = swift_allocObject();
  *(v61 + 16) = v103;
  sub_10076DB4C();
  sub_10076DB2C();
  sub_10076DB3C();
  v115[0] = v61;
  sub_1007712CC();
  v62 = v108;
  v98(v45, v99, v108);
  sub_10076DB8C();
  v84(v45, v62);
  v59(v41, v42);
  v96(v37, v60);
  sub_1000F00E0(v116);
  sub_10000CD74(v117);
  v63 = v83;
  sub_10076DB7C();
  sub_10000CD74(v120);
  sub_10000CD74(v121);
  sub_10000CD74(v122);
  v64 = v76;
  sub_10076D2AC();
  v66 = v65;
  swift_unknownObjectRelease();

  (*(v78 + 8))(v91, v79);
  sub_10000CD74(v123);
  (*(v75 + 8))(v63, v64);
  return v66;
}

double sub_1006A4F4C()
{
  v50 = sub_100769F0C();
  __chkstk_darwin(v50);
  v55 = &v48 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_100769F2C();
  v60 = *(v1 - 8);
  v61 = v1;
  __chkstk_darwin(v1);
  v58 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_10076DA7C();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D3DC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10076DD3C();
  v8 = *(v54 - 8);
  __chkstk_darwin(v54);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v48 - v12;
  __chkstk_darwin(v14);
  v51 = &v48 - v15;
  v16 = sub_10076469C();
  __chkstk_darwin(v16 - 8);
  v17 = sub_10076C38C();
  v52 = *(v17 - 8);
  v53 = v17;
  __chkstk_darwin(v17);
  v64 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075EEBC();
  sub_1006A57D8(&qword_100942860, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);
  sub_10076332C();
  v63 = v74[0];
  if (!v74[0])
  {
    return 0.0;
  }

  v49 = v5;
  sub_1007632FC();
  if (qword_100940540 != -1)
  {
    swift_once();
  }

  sub_10076C32C();
  sub_10076C2FC();
  v20 = v19;
  v22 = v21;
  swift_getKeyPath();
  sub_10076338C();

  v23 = v74[0];
  swift_getObjectType();
  v48 = [v23 traitCollection];
  v62 = sub_10075EE9C();
  if (qword_1009414A0 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v50, qword_1009A31E8);
  sub_100769E6C();
  v25 = v24;
  v27 = v26;
  if (qword_100940678 != -1)
  {
    swift_once();
  }

  swift_unknownObjectRetain();
  v28 = sub_1002ECDCC(&unk_1009A01F0, v23, v20, v22);
  v30 = v29;
  swift_unknownObjectRelease();
  sub_10076DD2C();
  v31 = v49;
  v50 = v23;
  if (qword_1009414A8 != -1)
  {
    swift_once();
  }

  v32 = sub_100769E4C();
  sub_10000A61C(v32, qword_1009A3200);
  sub_100769E3C();
  sub_10076DCFC();
  v31[1](v7, v4);
  v33 = *(v8 + 8);
  v34 = v54;
  (v33)(v10, v54);
  v49 = v33;
  v35 = v48;
  v36.super.isa = v48;
  sub_100769E0C(v36);
  v37 = v51;
  sub_10076DD1C();
  (v33)(v13, v34);
  sub_10075F1BC();
  (*(v8 + 16))(v13, v37, v34);
  sub_10076DA5C();
  v38 = v56;
  sub_10076DA9C();
  v74[3] = &type metadata for FixedSizedPlaceholder;
  v39 = sub_100016DD8();
  v74[4] = v39;
  *v74 = v28;
  v74[1] = v30;
  v40 = v59;
  v73[3] = v59;
  v73[4] = &protocol witness table for LabelPlaceholder;
  v41 = sub_10000DB7C(v73);
  v42 = v57;
  (*(v57 + 16))(v41, v38, v40);
  v71 = &type metadata for FixedSizedPlaceholder;
  v72 = v39;
  v70 = xmmword_1007B30F0;
  v69[3] = &type metadata for FixedSizedPlaceholder;
  v69[4] = v39;
  v69[0] = v25;
  v69[1] = v27;
  sub_100769EFC();
  sub_10000A570(v69, &v68);
  sub_10000A570(v74, &v67);
  sub_10000A570(v73, &v66);
  sub_10000A570(&v70, &v65);
  v43 = v58;
  sub_100769F1C();
  sub_10000CD74(v69);
  sub_10000CD74(&v70);
  sub_10000CD74(v73);
  sub_10000CD74(v74);
  sub_1006A57D8(&qword_100963770, &type metadata accessor for CondensedSearchResultCardLayout, &protocol conformance descriptor for CondensedSearchResultCardLayout);
  v44 = v61;
  sub_10076E0FC();
  v46 = v45;
  swift_unknownObjectRelease();

  (*(v60 + 8))(v43, v44);
  (*(v42 + 8))(v38, v40);
  (v49)(v37, v34);
  (*(v52 + 8))(v64, v53);
  return v46;
}

uint64_t sub_1006A57D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1006A5820()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventFormattedDateView;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_titleLabel;
  sub_1007626BC();
  *(v1 + v3) = sub_10076269C();
  v4 = OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_viewButton;
  *(v1 + v4) = [objc_opt_self() buttonWithType:0];
  v5 = OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_artworkView;
  if (qword_1009414A0 != -1)
  {
    swift_once();
  }

  v6 = sub_100769F0C();
  sub_10000A61C(v6, qword_1009A31E8);
  sub_100769E6C();
  *(v1 + v5) = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, v7, v8}];
  v9 = OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventTapGestureRecognizer;
  *(v1 + v9) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v10 = (v1 + OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventViewTappedAction);
  *v10 = 0;
  v10[1] = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1006A59E8()
{
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  result = sub_100770D1C();
  byte_1009A3218 = 1;
  qword_1009A3220 = result;
  return result;
}

char *sub_1006A5A38(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = &v4[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_id];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  v12 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_itemType;
  v13 = sub_1007668DC();
  (*(*(v13 - 8) + 56))(&v5[v12], 1, 1, v13);
  v14 = &v5[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_labelMaxWidth];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v5[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_truncationLegibilityThreshold];
  *v15 = 0;
  v15[8] = 1;
  v5[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_allowsTruncation] = 2;
  sub_1007626BC();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_editorsChoiceLabel] = sub_10076269C();
  v16 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_leadingLaurelImageView] = v16;
  v17 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_trailingLaurelImageView] = v17;
  v47.receiver = v5;
  v47.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v22 = v18;
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v23 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_leadingLaurelImageView;
  v24 = *&v22[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_leadingLaurelImageView];
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1007841E0;
  *(v25 + 32) = v24;
  v45 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_trailingLaurelImageView;
  v26 = *&v22[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_trailingLaurelImageView];
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1007841E0;
  *(v27 + 32) = v26;
  v28 = *&v22[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_editorsChoiceLabel];
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1007841E0;
  *(v29 + 32) = v28;
  sub_10000A5D4(&qword_1009453C8, &qword_1007B3350);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783C60;
  *(inited + 32) = v25;
  *(inited + 40) = v27;
  *(inited + 48) = v29;
  v31 = v24;
  v32 = v26;
  v33 = v28;
  sub_1006CDE94(inited);
  v35 = v34;
  swift_setDeallocating();
  sub_10000A5D4(&unk_1009453D0, &unk_100787870);
  result = swift_arrayDestroy();
  if (v35 >> 62)
  {
    result = sub_10077158C();
    v37 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v37 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v37)
    {
      goto LABEL_10;
    }
  }

  if (v37 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v37; ++i)
  {
    if ((v35 & 0xC000000000000001) != 0)
    {
      v39 = sub_10077149C();
    }

    else
    {
      v39 = *(v35 + 8 * i + 32);
    }

    v40 = v39;
    [v22 addSubview:{v39, v45}];
  }

LABEL_10:

  [*&v22[v23] setSemanticContentAttribute:3];
  v41 = *&v22[v23];
  if (qword_1009414C8 != -1)
  {
    v44 = *&v22[v23];
    swift_once();
    v41 = v44;
  }

  v42 = qword_100963798;
  [v41 setTintColor:{qword_100963798, v45}];
  [*&v22[v46] setSemanticContentAttribute:3];
  [*&v22[v46] setTintColor:v42];
  sub_1006A5EF4();
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100783DD0;
  *(v43 + 32) = sub_10076E88C();
  *(v43 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v22;
}

id sub_1006A5EF4()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_editorsChoiceLabel);
  v8._object = 0x80000001007CEC10;
  v8._countAndFlagsBits = 0xD00000000000001ALL;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_1007622EC(v8, v9);
  v2 = sub_10076FF6C();

  [v1 setText:v2];

  if (qword_1009414C8 != -1)
  {
    swift_once();
  }

  [v1 setTextColor:qword_100963798];
  [v1 setNumberOfLines:1];
  sub_10076D84C();
  if (qword_10093F6A8 != -1)
  {
    swift_once();
  }

  v3 = sub_10076715C();
  v4 = sub_10000A61C(v3, qword_10099CE68);
  v7[3] = v3;
  v7[4] = sub_10018CD1C();
  v5 = sub_10000DB7C(v7);
  (*(*(v3 - 8) + 16))(v5, v4, v3);
  sub_1007625FC();
  return [v1 setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
}

void sub_1006A6090()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_10077073C();
  if (qword_10093F6A8 != -1)
  {
    swift_once();
  }

  v4 = sub_10076715C();
  sub_10000A61C(v4, qword_10099CE68);
  v5.super.isa = v3;
  v6.super.isa = sub_10076713C(v5).super.isa;
  v7 = [v2 preferredContentSizeCategory];
  v8 = sub_10077084C();

  if (v8)
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  v10 = [objc_opt_self() configurationWithFont:v6.super.isa scale:v9];

  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_leadingLaurelImageView];
  v12 = v10;
  [v11 setPreferredSymbolConfiguration:v12];
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_trailingLaurelImageView] setPreferredSymbolConfiguration:v12];
}

void sub_1006A63A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_10076FF6C();
  v6 = [objc_opt_self() _systemImageNamed:v5];

  *a4 = v6;
}

uint64_t sub_1006A640C(uint64_t a1)
{
  sub_10008B8A4(a1, *(a1 + 24));
  v1 = UIContentSizeCategoryLarge;
  return sub_10076E37C();
}

id sub_1006A6460()
{
  if (qword_1009414B0 != -1)
  {
    swift_once();
  }

  v1 = qword_1009A3220;
  byte_100963790 = byte_1009A3218;
  qword_100963798 = qword_1009A3220;

  return v1;
}

uint64_t sub_1006A64D4()
{
  ObjectType = swift_getObjectType();
  v18 = sub_10076D1FC();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076A9BC();
  __chkstk_darwin(v5 - 8);
  v17 = sub_10076A9CC();
  v6 = *(v17 - 8);
  *&v7 = __chkstk_darwin(v17).n128_u64[0];
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.receiver = v0;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "layoutSubviews", v7);
  v10 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_leadingLaurelImageView];
  v26 = sub_100016F40(0, &qword_10094A280, UIImageView_ptr);
  v27 = &protocol witness table for UIView;
  v24 = &protocol witness table for UIView;
  v25 = v10;
  v11 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_trailingLaurelImageView];
  v23 = v26;
  v22 = v11;
  v12 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_editorsChoiceLabel];
  v20 = sub_1007626BC();
  v21 = &protocol witness table for UILabel;
  v19 = v12;
  v13 = v10;
  v14 = v11;
  v15 = v12;
  sub_10076A9AC();
  sub_10076A97C();
  sub_10076422C();
  sub_10076A99C();
  (*(v2 + 8))(v4, v18);
  return (*(v6 + 8))(v9, v17);
}

double sub_1006A6794(uint64_t a1, __n128 a2, double a3)
{
  v4 = sub_10076A9BC();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10076A9CC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_leadingLaurelImageView);
  v19 = sub_100016F40(0, &qword_10094A280, UIImageView_ptr);
  v20 = &protocol witness table for UIView;
  v18[10] = &protocol witness table for UIView;
  v18[11] = v9;
  v10 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_trailingLaurelImageView);
  v18[9] = v19;
  v18[6] = v10;
  v11 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_editorsChoiceLabel);
  v18[4] = sub_1007626BC();
  v18[5] = &protocol witness table for UILabel;
  v18[1] = v11;
  v12 = v9;
  v13 = v10;
  v14 = v11;
  sub_10076A9AC();
  sub_10076A97C();
  sub_10076A98C();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  return v16;
}

uint64_t type metadata accessor for MetadataRibbonEditorsChoiceView(uint64_t a1)
{
  result = qword_1009637E8;
  if (!qword_1009637E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006A6AF8(uint64_t a1)
{
  sub_100038324(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1006A6BC0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_itemType;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &qword_100943318, &qword_100799480);
}

uint64_t sub_1006A6C28(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_itemType;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &qword_100943318, &qword_100799480);
  return swift_endAccess();
}

void sub_1006A6D04(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_labelMaxWidth;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

void sub_1006A6DD0(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_truncationLegibilityThreshold;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t sub_1006A6E90()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1006A6ED4(char a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_allowsTruncation;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1006A6F84@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_id;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &qword_100943310, &unk_100784150);
}

uint64_t sub_1006A6FEC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_id;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &qword_100943310, &unk_100784150);
  return swift_endAccess();
}

id sub_1006A70E0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_editorsChoiceLabel);
  LOBYTE(v3._countAndFlagsBits) = sub_1007642DC();
  v3._object = 0x80000001007CEC10;
  if (v3._countAndFlagsBits)
  {
    v3._countAndFlagsBits = 0xD00000000000001ALL;
    sub_100769B9C(v3);
  }

  else
  {
    v3._countAndFlagsBits = 0xD00000000000001ALL;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    sub_1007622EC(v3, v15);
  }

  v4 = sub_10076FF6C();

  [v2 setText:v4];

  v5 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_trailingLaurelImageView);
  if (qword_1009414C0 != -1)
  {
    swift_once();
  }

  v6 = qword_100963788;
  v7 = [v5 layer];
  [v7 removeAllAnimations];

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  [v5 setImage:v8];
  v9 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_leadingLaurelImageView);
  if (qword_1009414B8 != -1)
  {
    swift_once();
  }

  v10 = qword_100963780;
  v11 = [v9 layer];
  [v11 removeAllAnimations];

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  return [v9 setImage:v12];
}

double sub_1006A72A8(uint64_t a1, void *a2, __n128 a3, double a4)
{
  v79 = a2;
  v66 = a1;
  v4 = sub_10076A9BC();
  __chkstk_darwin(v4 - 8);
  v75 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10076A9CC();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_10076DA2C();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_10076D90C();
  v82 = *(v74 - 8);
  __chkstk_darwin(v74);
  v70 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v67 = &v64 - v10;
  __chkstk_darwin(v11);
  v81 = &v64 - v12;
  v65 = sub_10076DA7C();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076DD3C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v64 - v20;
  __chkstk_darwin(v22);
  v24 = &v64 - v23;
  sub_10076DD2C();
  sub_10076D84C();
  if (qword_10093F6A8 != -1)
  {
    swift_once();
  }

  v25 = sub_10076715C();
  v26 = sub_10000A61C(v25, qword_10099CE68);
  v90[3] = v25;
  v90[4] = sub_10018CD1C();
  v27 = sub_10000DB7C(v90);
  (*(*(v25 - 8) + 16))(v27, v26, v25);
  sub_10076DC8C();
  v28 = *(v16 + 8);
  v28(v18, v15);
  sub_10000CD74(v90);
  sub_10076DD1C();
  v80 = v15;
  v69 = v16 + 8;
  v68 = v28;
  v28(v21, v15);
  LOBYTE(v29._countAndFlagsBits) = sub_1007642DC();
  v29._object = 0x80000001007CEC10;
  if (v29._countAndFlagsBits)
  {
    v29._countAndFlagsBits = 0xD00000000000001ALL;
    sub_100769B9C(v29);
  }

  else
  {
    v29._countAndFlagsBits = 0xD00000000000001ALL;
    v91._countAndFlagsBits = 0;
    v91._object = 0xE000000000000000;
    sub_1007622EC(v29, v91);
  }

  v30 = v70;
  v31 = *(v16 + 16);
  v70 = v24;
  v31(v21, v24, v80);
  sub_10076DA5C();
  sub_10076DA9C();
  sub_10076DA4C();
  (*(v64 + 8))(v14, v65);
  v32 = v67;
  sub_10076D8FC();
  v33 = v79;
  v34 = [v79 traitCollection];
  v35.super.isa = sub_10077073C();
  isa = v35.super.isa;
  v37.super.isa = sub_10076713C(v35).super.isa;
  v38 = [v34 preferredContentSizeCategory];
  v39 = sub_10077084C();

  if (v39)
  {
    v40 = 3;
  }

  else
  {
    v40 = 1;
  }

  v41 = [objc_opt_self() configurationWithFont:v37.super.isa scale:v40];

  v42 = v81;
  sub_10076D8EC();

  v43 = v82;
  v44 = v74;
  v67 = *(v82 + 8);
  v66 = v82 + 8;
  (v67)(v32, v74);
  if (qword_1009414B8 != -1)
  {
    swift_once();
  }

  v45 = qword_100963780;
  v46 = *(v43 + 16);
  v82 = v43 + 16;
  v46(v30, v42, v44);
  v47 = v45;
  v48 = v71;
  sub_10076DA3C();
  v49 = [v33 traitCollection];
  sub_10076DA1C();
  v65 = v50;
  v64 = v51;

  v52 = *(v72 + 8);
  v53 = v73;
  v52(v48, v73);
  if (qword_1009414C0 != -1)
  {
    swift_once();
  }

  v54 = qword_100963788;
  v46(v30, v42, v44);
  v55 = v54;
  sub_10076DA3C();
  v56 = [v33 traitCollection];
  sub_10076DA1C();

  v52(v48, v53);
  v57 = sub_10076DDDC();
  swift_allocObject();
  v58 = sub_10076DDAC();
  swift_allocObject();
  v59 = sub_10076DDAC();
  v88 = v57;
  v89 = &protocol witness table for LayoutViewPlaceholder;
  v86 = &protocol witness table for LayoutViewPlaceholder;
  v87 = v58;
  v85 = v57;
  v84 = v59;
  sub_10000A570(v90, v83);

  sub_10076A9AC();
  v60 = v76;
  sub_10076A97C();
  sub_10076A98C();
  v62 = v61;

  (*(v77 + 8))(v60, v78);
  (v67)(v81, v44);
  sub_10000CD74(v90);
  v68(v70, v80);
  return v62;
}