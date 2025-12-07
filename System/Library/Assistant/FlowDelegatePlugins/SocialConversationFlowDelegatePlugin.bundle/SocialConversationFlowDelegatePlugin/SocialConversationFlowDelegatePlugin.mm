uint64_t sub_2170@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16CannedDialogFlow_cannedInputTransformer;
  v2 = sub_21E8(&qword_EE800, &unk_C50E0);
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_21E8(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v5;
}

uint64_t sub_2274()
{
  v2 = (v0 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16CannedDialogFlow_socialConversationDialogID);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_22E0(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16CannedDialogFlow_socialConversationDialogID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_2450(void *a1)
{
  v6 = 0;
  v5[5] = a1;
  sub_8EC30();
  v1 = OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16CannedDialogFlow_socialConversationDialogID;
  *OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16CannedDialogFlow_socialConversationDialogID = 0;
  *(v1 + 8) = 0;
  sub_24F4(a1, v5);
  v4 = sub_BF288(v5);

  v6 = v4;
  sub_2560(a1);

  return v4;
}

uint64_t sub_24F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_2560(void *a1)
{
  v2 = a1[3];
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

uint64_t sub_2600(uint64_t a1)
{
  v73 = a1;
  v81 = sub_34D4;
  v84 = sub_6014;
  v88 = sub_7BBC;
  v90 = sub_7B48;
  v92 = sub_7B48;
  v95 = sub_7C08;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v47 = 0;
  v65 = 0;
  v48 = sub_C23B4();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v48);
  v52 = &v27 - v51;
  v53 = sub_21E8(&qword_EE800, &unk_C50E0);
  v54 = *(v53 - 8);
  v55 = v53 - 8;
  v56 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v53);
  v57 = &v27 - v56;
  v58 = (*(*(sub_21E8(&qword_EE808, &unk_C5BE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v65);
  v59 = &v27 - v58;
  v60 = type metadata accessor for INSiriSocialConversation(v1);
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v65);
  v64 = &v27 - v63;
  v109 = &v27 - v63;
  v80 = sub_C2384();
  v76 = *(v80 - 8);
  v77 = v80 - 8;
  v74 = v76;
  v75 = *(v76 + 64);
  v66 = (v75 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v65);
  v79 = &v27 - v66;
  v72 = sub_C3234();
  v70 = *(v72 - 8);
  v71 = v72 - 8;
  v68 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v73);
  v2 = &v27 - v68;
  v69 = &v27 - v68;
  v108 = v3;
  v107 = v4;
  v5 = sub_BF704();
  (*(v70 + 16))(v2, v5, v72);
  (*(v76 + 16))(v79, v73, v80);
  v78 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v86 = 7;
  v82 = swift_allocObject();
  (*(v76 + 32))(v82 + v78, v79, v80);

  v85 = 32;
  v6 = swift_allocObject();
  v7 = v82;
  v87 = v6;
  *(v6 + 16) = v81;
  *(v6 + 24) = v7;

  v99 = sub_C3224();
  v100 = sub_C3874();
  v83 = 17;
  v91 = swift_allocObject();
  *(v91 + 16) = 32;
  v93 = swift_allocObject();
  *(v93 + 16) = 8;
  v8 = swift_allocObject();
  v9 = v87;
  v89 = v8;
  *(v8 + 16) = v84;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v89;
  v96 = v10;
  *(v10 + 16) = v88;
  *(v10 + 24) = v11;
  v98 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v94 = sub_C3C64();
  v97 = v12;

  v13 = v91;
  v14 = v97;
  *v97 = v90;
  v14[1] = v13;

  v15 = v93;
  v16 = v97;
  v97[2] = v92;
  v16[3] = v15;

  v17 = v96;
  v18 = v97;
  v97[4] = v95;
  v18[5] = v17;
  sub_4E48();

  if (os_log_type_enabled(v99, v100))
  {
    v19 = v47;
    v40 = sub_C3954();
    v39 = sub_21E8(&qword_EE828, &qword_C5100);
    v41 = sub_5DD4(0, v39, v39);
    v42 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v43 = &v105;
    v105 = v40;
    v44 = &v104;
    v104 = v41;
    v45 = &v103;
    v103 = v42;
    sub_5E28(2, &v105);
    sub_5E28(1, v43);
    v101 = v90;
    v102 = v91;
    sub_5E3C(&v101, v43, v44, v45);
    v46 = v19;
    if (v19)
    {

      __break(1u);
    }

    else
    {
      v101 = v92;
      v102 = v93;
      sub_5E3C(&v101, &v105, &v104, &v103);
      v37 = 0;
      v101 = v95;
      v102 = v96;
      sub_5E3C(&v101, &v105, &v104, &v103);
      v36 = 0;
      _os_log_impl(&dword_0, v99, v100, "CannedDialogFlow on input %s", v40, 0xCu);
      sub_5E88(v41, 0, v39);
      sub_5E88(v42, 1, &type metadata for Any + 8);
      sub_C3934();

      v38 = v36;
    }
  }

  else
  {
    v20 = v47;

    v38 = v20;
  }

  v21 = v57;
  v22 = v38;
  _objc_release(v99);
  (*(v70 + 8))(v69, v72);
  (*(v54 + 16))(v21, v67 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16CannedDialogFlow_cannedInputTransformer, v53);
  v34 = sub_C2D84();
  v33 = v23;
  (*(v54 + 8))(v57, v53);
  sub_C2374();
  v34(v52);
  v35 = v22;
  if (v22)
  {
    v27 = v35;
    (*(v49 + 8))(v52, v48);

    (*(v61 + 56))(v59, 1, 1, v60);
  }

  else
  {
    (*(v49 + 8))(v52, v48);
    (*(v61 + 56))(v59, 0, 1, v60);
  }

  if ((*(v61 + 48))(v59, 1, v60) == 1)
  {
    sub_7C14(v59);
    v32 = 0;
  }

  else
  {
    sub_7D34(v59, v64);
    v28 = *v64;
    v31 = *(v64 + 1);

    v29 = (v67 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16CannedDialogFlow_socialConversationDialogID);
    v30 = &v106;
    swift_beginAccess();
    v24 = v29;
    v25 = v31;
    *v29 = v28;
    v24[1] = v25;

    swift_endAccess();

    sub_7EB4(v64);
    v32 = 1;
  }

  return v32 & 1;
}

uint64_t sub_3408()
{
  v2 = *(sub_C2384() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_34D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_C2384();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_33A8(v3, a1);
}

uint64_t sub_3548(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CannedDialogFlow(0);
  sub_800C();
  return sub_C1E04();
}

uint64_t sub_35C0(uint64_t a1)
{
  v2[49] = v1;
  v2[48] = a1;
  v2[36] = v2;
  v2[37] = 0;
  v2[38] = 0;
  v2[32] = 0;
  v2[33] = 0;
  v2[34] = 0;
  v2[35] = 0;
  v2[47] = 0;
  v3 = sub_C3234();
  v2[50] = v3;
  v2[51] = *(v3 - 8);
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[37] = v1;

  return _swift_task_switch(sub_36E8, 0);
}

uint64_t sub_36E8()
{
  v48 = v0[49];
  v0[36] = v0;
  v1 = sub_59974();
  v47 = *v1;
  v42 = v1[1];
  v43 = *(v1 + 16);
  v2 = sub_599D4();
  v44 = *v2;
  v45 = v2[1];
  v46 = *(v2 + 16);
  v3 = sub_59A34();
  sub_B504(v47, v42, v43, v44, v45, v46, *v3, v3[1], v0 + 2, *(v3 + 16));

  sub_24F4(v48 + 16, (v0 + 11));

  v50 = v0[14];
  v49 = v0[15];
  sub_808C(v0 + 11, v50);
  (*(v49 + 40))(v50);
  v52 = v0[19];
  v51 = v0[20];
  sub_808C(v0 + 16, v52);
  v53 = (*(v51 + 72))(v52);
  sub_2560(v0 + 16);
  sub_2560(v0 + 11);
  if (v53)
  {
    sub_C1F24();
    sub_808C((v41 + 168), *(v41 + 192));
    v40 = sub_C2274();
    *(v41 + 432) = v4;
    if (v4)
    {
      v35 = v4;
      v36 = *(v41 + 392);
      *(v41 + 256) = v40;
      *(v41 + 264) = v4;
      sub_2560((v41 + 168));
      v37 = (v36 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16CannedDialogFlow_socialConversationDialogID);
      swift_beginAccess();
      v38 = *v37;
      v39 = v37[1];
      *(v41 + 440) = v39;

      swift_endAccess();
      if (v39)
      {
        *(v41 + 272) = v38;
        *(v41 + 280) = v39;

        v5 = sub_92590(v38, v39);
        v34 = sub_92614(v5, v6);
        *(v41 + 448) = v34;

        *(v41 + 376) = v34;
        v7 = swift_task_alloc();
        *(v41 + 456) = v7;
        *v7 = *(v41 + 288);
        v7[1] = sub_3EFC;

        return sub_502FC(v40, v35, v38, v39, v34);
      }
    }

    else
    {
      sub_2560((v41 + 168));
    }
  }

  else
  {
    v9 = *(v41 + 424);
    v30 = *(v41 + 400);
    v29 = *(v41 + 408);
    v10 = sub_BF704();
    (*(v29 + 16))(v9, v10, v30);
    oslog = sub_C3224();
    v31 = sub_C3874();
    sub_21E8(&unk_EEFA0, &unk_C50F0);
    v33 = sub_C3C64();
    if (os_log_type_enabled(oslog, v31))
    {
      buf = sub_C3954();
      v24 = sub_21E8(&qword_EE828, &qword_C5100);
      v26 = sub_5DD4(0, v24, v24);
      v27 = sub_5DD4(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v41 + 344) = buf;
      *(v41 + 352) = v26;
      *(v41 + 360) = v27;
      sub_5E28(0, (v41 + 344));
      sub_5E28(0, (v41 + 344));
      *(v41 + 368) = v33;
      v28 = swift_task_alloc();
      v28[2] = v41 + 344;
      v28[3] = v41 + 352;
      v28[4] = v41 + 360;
      sub_21E8(&unk_EEFB0, qword_C5110);
      sub_8128();
      sub_C3654();

      _os_log_impl(&dword_0, oslog, v31, "SocialHints feature flag is diabled. Not submitting intent to SiriSuggestions", buf, 2u);
      sub_5E88(v26, 0, v24);
      sub_5E88(v27, 0, &type metadata for Any + 8);
      sub_C3934();
    }

    v22 = *(v41 + 424);
    v23 = *(v41 + 400);
    v21 = *(v41 + 408);
    _objc_release(oslog);
    (*(v21 + 8))(v22, v23);
  }

  v14 = *(v41 + 392);

  *(v41 + 464) = *(v14 + 56);

  v15 = (v14 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16CannedDialogFlow_socialConversationDialogID);
  swift_beginAccess();
  v16 = *v15;
  v17 = v15[1];
  *(v41 + 472) = v17;

  swift_endAccess();
  v18 = sub_4800();
  v19 = v11;
  *(v41 + 480) = v11;
  v20 = sub_483C();
  *(v41 + 488) = v20;
  v12 = swift_task_alloc();
  *(v41 + 496) = v12;
  *v12 = *(v41 + 288);
  v12[1] = sub_41C0;
  v13 = *(v41 + 384);

  return sub_BDA8(v13, v16, v17, v41 + 16, v18, v19, v20);
}

uint64_t sub_3EFC()
{
  *(*v0 + 288) = *v0;

  return _swift_task_switch(sub_4014, 0);
}

uint64_t sub_4014()
{
  v0[36] = v0;

  v5 = v0[49];

  v0[58] = *(v5 + 56);

  v6 = (v5 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16CannedDialogFlow_socialConversationDialogID);
  swift_beginAccess();
  v8 = *v6;
  v9 = v6[1];
  v0[59] = v9;

  swift_endAccess();
  v10 = sub_4800();
  v11 = v1;
  v0[60] = v1;
  v12 = sub_483C();
  v0[61] = v12;
  v2 = swift_task_alloc();
  v7[62] = v2;
  *v2 = v7[36];
  v2[1] = sub_41C0;
  v3 = v7[48];

  return sub_BDA8(v3, v8, v9, (v0 + 2), v10, v11, v12);
}

uint64_t sub_41C0()
{
  v5 = *v1;
  v4 = *v1 + 288;
  *(v5 + 288) = *v1;
  *(v5 + 504) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_43BC, 0);
  }

  else
  {

    v2 = *(*v4 + 8);

    return v2();
  }
}

uint64_t sub_43BC()
{
  v14 = v0[63];
  v1 = v0[52];
  v15 = v0[51];
  v16 = v0[50];
  v0[36] = v0;

  swift_errorRetain();
  v0[38] = v14;
  v2 = sub_BF704();
  (*(v15 + 16))(v1, v2, v16);
  v18 = sub_C3224();
  v17 = sub_C3884();
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  v19 = sub_C3C64();
  if (os_log_type_enabled(v18, v17))
  {
    buf = sub_C3954();
    v8 = sub_21E8(&qword_EE828, &qword_C5100);
    v10 = sub_5DD4(0, v8, v8);
    v11 = sub_5DD4(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v13 + 312) = buf;
    *(v13 + 320) = v10;
    *(v13 + 328) = v11;
    sub_5E28(0, (v13 + 312));
    sub_5E28(0, (v13 + 312));
    *(v13 + 336) = v19;
    v12 = swift_task_alloc();
    v12[2] = v13 + 312;
    v12[3] = v13 + 320;
    v12[4] = v13 + 328;
    sub_21E8(&unk_EEFB0, qword_C5110);
    sub_8128();
    sub_C3654();

    _os_log_impl(&dword_0, v18, v17, "Error thrown from flow dialog", buf, 2u);
    sub_5E88(v10, 0, v8);
    sub_5E88(v11, 0, &type metadata for Any + 8);
    sub_C3934();
  }

  v6 = *(v13 + 416);
  v7 = *(v13 + 400);
  v5 = *(v13 + 408);
  _objc_release(v18);
  (*(v5 + 8))(v6, v7);
  sub_C2054();

  v3 = *(*(v13 + 288) + 8);

  return v3();
}

uint64_t sub_4800()
{
  v1 = *sub_41A2C();

  return v1;
}

void sub_4860()
{
  v2 = OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16CannedDialogFlow_cannedInputTransformer;
  v1 = sub_21E8(&qword_EE800, &unk_C50E0);
  (*(*(v1 - 8) + 8))(v0 + v2);
  sub_8224(v0 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16CannedDialogFlow_socialConversationDialogID);
}

uint64_t sub_48E8()
{
  v3 = sub_BF340();
  v2 = OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16CannedDialogFlow_cannedInputTransformer;
  v0 = sub_21E8(&qword_EE800, &unk_C50E0);
  (*(*(v0 - 8) + 8))(v3 + v2);
  sub_8224(v3 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16CannedDialogFlow_socialConversationDialogID);
  return v3;
}

uint64_t sub_4A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_4AD8;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_4AD8(unsigned int a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

uint64_t sub_4C2C(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_4CE4;

  return sub_35C0(a1);
}

uint64_t sub_4CE4()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_4EE8(uint64_t a1)
{
  sub_8FF0();
  sub_9070();
  return sub_C3DF4();
}

uint64_t sub_50EC(uint64_t a1, uint64_t a2)
{
  sub_8FF0();
  sub_9070();
  return sub_C3DE4();
}

uint64_t sub_5130(uint64_t a1, uint64_t a2)
{
  sub_8FF0();
  sub_9070();
  return sub_C3DC4();
}

uint64_t sub_5174(uint64_t a1, uint64_t a2)
{
  sub_8FF0();
  sub_9070();
  return sub_C3DD4();
}

uint64_t sub_5294(uint64_t a1)
{
  sub_90E8();
  sub_9070();
  return sub_C3DF4();
}

uint64_t sub_5498(uint64_t a1, uint64_t a2)
{
  sub_90E8();
  sub_9070();
  return sub_C3DE4();
}

uint64_t sub_54DC(uint64_t a1, uint64_t a2)
{
  sub_90E8();
  sub_9070();
  return sub_C3DC4();
}

uint64_t sub_5520(uint64_t a1, uint64_t a2)
{
  sub_90E8();
  sub_9070();
  return sub_C3DD4();
}

uint64_t sub_5564(uint64_t a1)
{
  sub_9168();
  sub_9070();
  return sub_C3DF4();
}

uint64_t sub_5768(uint64_t a1, uint64_t a2)
{
  sub_9168();
  sub_9070();
  return sub_C3DE4();
}

uint64_t sub_57AC(uint64_t a1, uint64_t a2)
{
  sub_9168();
  sub_9070();
  return sub_C3DC4();
}

uint64_t sub_57F0(uint64_t a1, uint64_t a2)
{
  sub_9168();
  sub_9070();
  return sub_C3DD4();
}

uint64_t sub_5834(uint64_t a1)
{
  sub_91E8();
  sub_9070();
  return sub_C3DF4();
}

uint64_t sub_5A38(uint64_t a1, uint64_t a2)
{
  sub_91E8();
  sub_9070();
  return sub_C3DE4();
}

uint64_t sub_5A7C(uint64_t a1, uint64_t a2)
{
  sub_91E8();
  sub_9070();
  return sub_C3DC4();
}

uint64_t sub_5AC0(uint64_t a1, uint64_t a2)
{
  sub_91E8();
  sub_9070();
  return sub_C3DD4();
}

void sub_5D64(uint64_t a1@<X8>)
{
  nullsub_1();
  *a1 = v1;
  *(a1 + 8) = 0;
}

uint64_t sub_5DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return sub_C3954();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_5E28(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_5E88(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    sub_C3944();
    sub_C3934();
  }
}

uint64_t sub_5EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v8[1] = a4;
  v9 = *(a3 - 8);
  v10 = a3 - 8;
  v8[0] = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(a1);
  v11 = v8 - v8[0];
  v5(v4);
  v13 = sub_C3C14();
  v14 = v6;
  (*(v9 + 8))(v11, v12);
  return v13;
}

uint64_t sub_6014()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_C2384();
  v1 = sub_6070();

  return sub_5EF0(v5, v3, v4, v1);
}

unint64_t sub_6070()
{
  v2 = qword_EE810;
  if (!qword_EE810)
  {
    sub_C2384();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EE810);
    return WitnessTable;
  }

  return v2;
}

void **sub_6124(void **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = (a4)(a1, a2);
  v9 = sub_6198(v4, v5, a3);

  result = a1;
  v7 = *a1;
  *v7 = v9;
  *a1 = v7 + 1;
  return result;
}

uint64_t sub_6198(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = sub_6320(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_9268(v12, v6);
      *a3 = v6 + 32;
    }

    sub_2560(v12);
  }

  else
  {
    v13[3] = &type metadata for _StringGuts;
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_9268(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_2560(v13);
  }

  return v11;
}

uint64_t *sub_6320(uint64_t *result, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v17 = result;
  v24 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      v16 = a2 ? a3 - a2 : 0;
      v15 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v15 < v16)
      {
        if (a2)
        {
          __src[0] = a5;
          __src[1] = a6 & (-bswap64(0xFFuLL) - 1);
          memcpy(a2, __src, v15);
          *(a2 + v15) = 0;
          *v17 = a2;
          v11 = 0;
          v12 = v15;
          v13 = 1;
          v14 = 0;
LABEL_24:
          __src[2] = v11;
          __src[3] = v12;
          v22 = v13 & 1;
          v23 = v14 & 1;
          return v11;
        }

        goto LABEL_26;
      }
    }

LABEL_11:
    v6 = sub_6628(a5, a6);
    *v17 = v7;
    v11 = v6;
    v12 = v8;
    v13 = 0;
    v14 = 1;
    goto LABEL_24;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_11;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v10 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_19;
    }

    __break(1u);
  }

  result = sub_C3AD4();
  if (!result)
  {
    goto LABEL_27;
  }

  v10 = result;
LABEL_19:
  *v17 = v10;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_23:
    v11 = v9;
    v12 = a5 & 0xFFFFFFFFFFFFLL;
    v13 = 0;
    v14 = 0;
    goto LABEL_24;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_23;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void *sub_6628(uint64_t a1, uint64_t a2)
{
  v7 = sub_66E4(a1, a2);
  sub_21E8(&unk_EEAC0, &unk_C5970);
  inited = swift_initStackObject();
  sub_6EF4(inited, 1);
  *v3 = 0;
  sub_6F40();
  sub_6F74(v4);

  v8 = sub_731C(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *sub_66E4(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = sub_C35C4();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_783C();
  }

  v10 = sub_7334(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    sub_C3BA4();
    __break(1u);
    return sub_783C();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_7478(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = sub_C3AD4();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_7478(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = sub_C3AC4();
  if (v2)
  {
LABEL_29:
    sub_C3B84();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    sub_C3B84();
    __break(1u);
  }

  sub_8224(v17);
  return v10;
}

uint64_t sub_6EF4(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void sub_6F74(uint64_t a1)
{
  v18 = sub_731C(a1);
  v2 = sub_731C(*v1);
  v19 = v2 + v18;
  if (__OFADD__(v2, v18))
  {
    goto LABEL_31;
  }

  v14 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v19 > *(*v17 + 24) >> 1)
  {
    if (*(*v17 + 16) < v19)
    {
      v13 = v19;
    }

    else
    {
      v13 = *(*v17 + 16);
    }

    v12 = *v17;

    *v17 = sub_786C(isUniquelyReferenced_nonNull_native, v13, 1, v12);
  }

  v4 = *(*v17 + 16);
  v10 = (*v17 + 32 + v4);
  v5 = *(*v17 + 24) >> 1;
  v11 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    goto LABEL_32;
  }

  if (v11 < 0)
  {
LABEL_30:
    sub_C3BA4();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_79D8(a1))
  {
LABEL_21:

    if (v18 <= 0)
    {
      goto LABEL_28;
    }

    sub_C3B84();
    __break(1u);
    goto LABEL_30;
  }

  if (v11 < v18)
  {
    sub_C3B84();
    __break(1u);
    goto LABEL_21;
  }

  sub_7478((a1 + 32), v18, v10);

  swift_unknownObjectRelease();
  if (v18 <= 0)
  {
    goto LABEL_28;
  }

  v7 = *(*v17 + 16);
  v9 = v7 + v18;
  if (!__OFADD__(v7, v18))
  {
    *(*v17 + 16) = v9;
LABEL_28:
    sub_60F0();
    return;
  }

LABEL_33:
  __break(1u);
}

void *sub_7334(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (v6)
  {
    sub_21E8(&unk_EEAC0, &unk_C5970);
    v5 = swift_allocObject();

    if (sub_92CC())
    {
      v3 = sub_92D8(v5) - 32;
      v5[2] = a1;
      v5[3] = 2 * v3;
    }

    else
    {
      v5[2] = a1;
      v5[3] = 2 * v6;
    }

    return v5;
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }
}

void *sub_7478(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    sub_C3BA4();
    __break(1u);
  }

  result = sub_C3BA4();
  __break(1u);
  return result;
}

unint64_t sub_75C8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = sub_C35E4();
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    sub_C3B84();
    __break(1u);
  }

  v5 = sub_C3604();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

char *sub_786C(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_7334(v4, v6);
  if (v7)
  {
    sub_79E0((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    sub_7478((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *sub_79E0(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_C3BA4();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **sub_7B08(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_7C14(uint64_t a1)
{
  v6 = type metadata accessor for INSiriSocialConversation(0);
  if (!(*(*(v6 - 8) + 48))(a1, 1))
  {

    v2 = a1 + *(v6 + 24);
    v3 = sub_C1B54();
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(v2, 1))
    {
      (*(v4 + 8))(v2, v3);
    }
  }

  return a1;
}

char *sub_7D34(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  v5 = *(type metadata accessor for INSiriSocialConversation(0) + 24);
  v7 = sub_C1B54();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(&a1[v5], 1))
  {
    v2 = sub_21E8(&qword_EE820, &qword_C5A60);
    memcpy(&a2[v5], &a1[v5], *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))();
    (*(v8 + 56))(&a2[v5], 0, 1, v7);
  }

  return a2;
}

uint64_t sub_7EB4(uint64_t a1)
{

  v2 = *(type metadata accessor for INSiriSocialConversation(0) + 24);
  v4 = sub_C1B54();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1 + v2, 1))
  {
    (*(v5 + 8))(a1 + v2, v4);
  }

  return a1;
}

uint64_t type metadata accessor for CannedDialogFlow(uint64_t a1)
{
  v2 = qword_EE870;
  if (!qword_EE870)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_800C()
{
  v2 = qword_EE830;
  if (!qword_EE830)
  {
    type metadata accessor for CannedDialogFlow(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EE830);
    return WitnessTable;
  }

  return v2;
}

void *sub_808C(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

unint64_t sub_8128()
{
  v2 = qword_EE840;
  if (!qword_EE840)
  {
    sub_81B0(&unk_EEFB0, qword_C5110);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EE840);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_81B0(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v5;
}

unint64_t sub_826C(uint64_t a1)
{
  updated = sub_835C(319);
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_835C(uint64_t a1)
{
  v5 = qword_EE880;
  if (!qword_EE880)
  {
    sub_C23B4();
    type metadata accessor for INSiriSocialConversation(255);
    v4 = sub_C2D94();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_EE880);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for Base64EncodingOptions(uint64_t a1)
{
  v5 = qword_EE9F8;
  if (!qword_EE9F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_EE9F8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for CompareOptions(uint64_t a1)
{
  v5 = qword_EEA00;
  if (!qword_EEA00)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_EEA00);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for ReadingOptions(uint64_t a1)
{
  v5 = qword_EEA08;
  if (!qword_EEA08)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_EEA08);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for WritingOptions(uint64_t a1)
{
  v5 = qword_EEA10;
  if (!qword_EEA10)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_EEA10);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_8688()
{
  v2 = qword_EEA18;
  if (!qword_EEA18)
  {
    type metadata accessor for WritingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8720()
{
  v2 = qword_EEA20;
  if (!qword_EEA20)
  {
    type metadata accessor for WritingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_87B8()
{
  v2 = qword_EEA28;
  if (!qword_EEA28)
  {
    type metadata accessor for ReadingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8850()
{
  v2 = qword_EEA30;
  if (!qword_EEA30)
  {
    type metadata accessor for ReadingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_88E8()
{
  v2 = qword_EEA38;
  if (!qword_EEA38)
  {
    type metadata accessor for CompareOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8980()
{
  v2 = qword_EEA40;
  if (!qword_EEA40)
  {
    type metadata accessor for CompareOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8A18()
{
  v2 = qword_EEA48;
  if (!qword_EEA48)
  {
    type metadata accessor for Base64EncodingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8AB0()
{
  v2 = qword_EEA50;
  if (!qword_EEA50)
  {
    type metadata accessor for Base64EncodingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8B48()
{
  v2 = qword_EEA58;
  if (!qword_EEA58)
  {
    type metadata accessor for Base64EncodingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8BE0()
{
  v2 = qword_EEA60;
  if (!qword_EEA60)
  {
    type metadata accessor for Base64EncodingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8C78()
{
  v2 = qword_EEA68;
  if (!qword_EEA68)
  {
    type metadata accessor for CompareOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8D10()
{
  v2 = qword_EEA70;
  if (!qword_EEA70)
  {
    type metadata accessor for CompareOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8DA8()
{
  v2 = qword_EEA78;
  if (!qword_EEA78)
  {
    type metadata accessor for ReadingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8E40()
{
  v2 = qword_EEA80;
  if (!qword_EEA80)
  {
    type metadata accessor for ReadingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8ED8()
{
  v2 = qword_EEA88;
  if (!qword_EEA88)
  {
    type metadata accessor for WritingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8F70()
{
  v2 = qword_EEA90;
  if (!qword_EEA90)
  {
    type metadata accessor for WritingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8FF0()
{
  v2 = qword_EEA98;
  if (!qword_EEA98)
  {
    type metadata accessor for WritingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_9070()
{
  v2 = qword_EEAA0;
  if (!qword_EEAA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEAA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_90E8()
{
  v2 = qword_EEAA8;
  if (!qword_EEAA8)
  {
    type metadata accessor for ReadingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEAA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_9168()
{
  v2 = qword_EEAB0;
  if (!qword_EEAB0)
  {
    type metadata accessor for CompareOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEAB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_91E8()
{
  v2 = qword_EEAB8;
  if (!qword_EEAB8)
  {
    type metadata accessor for Base64EncodingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEAB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_9268(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_9300@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin28CannedDialogVoiceTriggerFlow_cannedInputTransformer;
  v2 = sub_21E8(&qword_EEE30, &qword_C5980);
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_93C4(void *a1)
{
  v5 = 0;
  v4[5] = a1;
  sub_8ECA0();
  sub_24F4(a1, v4);
  v3 = sub_BF288(v4);

  v5 = v3;
  sub_2560(a1);

  return v3;
}

BOOL sub_9450(uint64_t a1)
{
  v65 = a1;
  v73 = sub_34D4;
  v76 = sub_6014;
  v80 = sub_7BBC;
  v82 = sub_7B48;
  v84 = sub_7B48;
  v87 = sub_7C08;
  v101 = 0;
  v100 = 0;
  v46 = 0;
  v57 = 0;
  v47 = sub_C23B4();
  v48 = *(v47 - 8);
  v49 = v47 - 8;
  v50 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v47);
  v51 = &v24 - v50;
  v52 = sub_21E8(&qword_EEE30, &qword_C5980);
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v57);
  v56 = &v24 - v55;
  v72 = sub_C2384();
  v68 = *(v72 - 8);
  v69 = v72 - 8;
  v66 = v68;
  v67 = *(v68 + 64);
  v58 = (v67 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v57);
  v71 = &v24 - v58;
  v64 = sub_C3234();
  v62 = *(v64 - 8);
  v63 = v64 - 8;
  v60 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v65);
  v1 = &v24 - v60;
  v61 = &v24 - v60;
  v101 = v2;
  v100 = v3;
  v4 = sub_BF704();
  (*(v62 + 16))(v1, v4, v64);
  (*(v68 + 16))(v71, v65, v72);
  v70 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v78 = 7;
  v74 = swift_allocObject();
  (*(v68 + 32))(v74 + v70, v71, v72);

  v77 = 32;
  v5 = swift_allocObject();
  v6 = v74;
  v79 = v5;
  *(v5 + 16) = v73;
  *(v5 + 24) = v6;

  v91 = sub_C3224();
  v92 = sub_C3874();
  v75 = 17;
  v83 = swift_allocObject();
  *(v83 + 16) = 32;
  v85 = swift_allocObject();
  *(v85 + 16) = 8;
  v7 = swift_allocObject();
  v8 = v79;
  v81 = v7;
  *(v7 + 16) = v76;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v81;
  v88 = v9;
  *(v9 + 16) = v80;
  *(v9 + 24) = v10;
  v90 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v86 = sub_C3C64();
  v89 = v11;

  v12 = v83;
  v13 = v89;
  *v89 = v82;
  v13[1] = v12;

  v14 = v85;
  v15 = v89;
  v89[2] = v84;
  v15[3] = v14;

  v16 = v88;
  v17 = v89;
  v89[4] = v87;
  v17[5] = v16;
  sub_4E48();

  if (os_log_type_enabled(v91, v92))
  {
    v18 = v46;
    v39 = sub_C3954();
    v38 = sub_21E8(&qword_EE828, &qword_C5100);
    v40 = sub_5DD4(0, v38, v38);
    v41 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v42 = &v97;
    v97 = v39;
    v43 = &v96;
    v96 = v40;
    v44 = &v95;
    v95 = v41;
    sub_5E28(2, &v97);
    sub_5E28(1, v42);
    v93 = v82;
    v94 = v83;
    sub_5E3C(&v93, v42, v43, v44);
    v45 = v18;
    if (v18)
    {

      __break(1u);
    }

    else
    {
      v93 = v84;
      v94 = v85;
      sub_5E3C(&v93, &v97, &v96, &v95);
      v36 = 0;
      v93 = v87;
      v94 = v88;
      sub_5E3C(&v93, &v97, &v96, &v95);
      v35 = 0;
      _os_log_impl(&dword_0, v91, v92, "CannedDialogVoiceTriggerFlow on input %s", v39, 0xCu);
      sub_5E88(v40, 0, v38);
      sub_5E88(v41, 1, &type metadata for Any + 8);
      sub_C3934();

      v37 = v35;
    }
  }

  else
  {
    v19 = v46;

    v37 = v19;
  }

  v20 = v56;
  v21 = v37;
  _objc_release(v91);
  (*(v62 + 8))(v61, v64);
  (*(v53 + 16))(v20, v59 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin28CannedDialogVoiceTriggerFlow_cannedInputTransformer, v52);
  v33 = sub_C2D84();
  v32 = v22;
  (*(v53 + 8))(v56, v52);
  sub_C2374();
  v33(v99, v51);
  v34 = v21;
  if (v21)
  {
    v27 = v34;

    (*(v48 + 8))(v51, v47);

    v30 = 0;
    v31 = 0;
  }

  else
  {
    v28 = v99[0];
    v29 = v99[1];

    (*(v48 + 8))(v51, v47);
    v30 = v28;
    v31 = v29;
  }

  v98[0] = v30;
  v98[1] = v31;
  v26 = v31 != 0;
  v25 = v26;
  sub_8224(v98);
  return v25;
}

uint64_t sub_9FD8()
{
  v2 = *(sub_C2384() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_A0A4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CannedDialogVoiceTriggerFlow(0);
  sub_B268();
  return sub_C1E04();
}

uint64_t sub_A11C(uint64_t a1)
{
  *(v2 + 264) = v1;
  *(v2 + 256) = a1;
  *(v2 + 200) = v2;
  *(v2 + 208) = 0;
  *(v2 + 392) = 0;
  *(v2 + 216) = 0;
  v3 = sub_C3234();
  *(v2 + 272) = v3;
  *(v2 + 280) = *(v3 - 8);
  *(v2 + 288) = swift_task_alloc();
  v4 = sub_C2064();
  *(v2 + 296) = v4;
  *(v2 + 304) = *(v4 - 8);
  *(v2 + 312) = swift_task_alloc();
  v5 = sub_C2D64();
  *(v2 + 320) = v5;
  *(v2 + 328) = *(v5 - 8);
  *(v2 + 336) = swift_task_alloc();
  *(v2 + 208) = v1;

  return _swift_task_switch(sub_A2F4, 0);
}

uint64_t sub_A2F4()
{
  v26 = *(v0 + 336);
  v25 = *(v0 + 328);
  v27 = *(v0 + 320);
  *(v0 + 200) = v0;
  v1 = sub_59A94();
  v24 = *v1;
  v19 = v1[1];
  v20 = *(v1 + 16);
  v2 = sub_59AF4();
  v21 = *v2;
  v22 = v2[1];
  v23 = *(v2 + 16);
  v3 = sub_59B54();
  sub_B504(v24, v19, v20, v21, v22, v23, *v3, v3[1], (v0 + 16), *(v3 + 16));

  sub_BF388();

  sub_808C((v0 + 88), *(v0 + 112));
  sub_C1F44();
  v28 = sub_C2D54();
  v29 = v4;
  (*(v25 + 8))(v26, v27);
  *(v0 + 168) = v28;
  *(v0 + 176) = v29;
  *(v0 + 184) = sub_C3564("voiceTrigger", 0xCuLL, 1);
  *(v0 + 192) = v5;
  sub_B2E8();
  v30 = sub_C39D4();
  sub_8224(v0 + 184);
  sub_8224(v0 + 168);
  sub_2560((v0 + 88));
  *(v0 + 392) = (v30 ^ 1) & 1;
  if ((v30 ^ 1))
  {
    v12 = v18[33];

    v18[43] = *(v12 + 56);

    v6 = sub_419CC();
    v13 = *v6;
    v14 = v6[1];
    v18[44] = v14;

    v15 = sub_4800();
    v16 = v7;
    v18[45] = v7;
    v17 = sub_483C();
    v18[46] = v17;
    v8 = swift_task_alloc();
    v18[47] = v8;
    *v8 = v18[25];
    v8[1] = sub_A734;
    v9 = v18[39];

    return sub_BDA8(v9, v13, v14, (v18 + 2), v15, v16, v17);
  }

  else
  {
    sub_C1E94();
    sub_808C(v18 + 16, v18[19]);
    sub_C1F14();
    sub_C1F04();
    sub_C1EA4();

    sub_2560(v18 + 16);
    sub_C2054();

    v11 = *(v18[25] + 8);

    return v11();
  }
}

uint64_t sub_A734()
{
  v4 = *v1;
  *(v4 + 200) = *v1;
  *(v4 + 384) = v0;

  if (v0)
  {
    v2 = sub_A9FC;
  }

  else
  {

    v2 = sub_A8E0;
  }

  return _swift_task_switch(v2, 0);
}

uint64_t sub_A8E0()
{
  v6 = v0[39];
  v4 = v0[38];
  v5 = v0[37];
  v1 = v0[32];
  v0[25] = v0;
  (*(v4 + 16))(v1);
  (*(v4 + 8))(v6, v5);

  v2 = *(v0[25] + 8);

  return v2();
}

uint64_t sub_A9FC()
{
  v14 = v0[48];
  v1 = v0[36];
  v15 = v0[35];
  v16 = v0[34];
  v0[25] = v0;

  swift_errorRetain();
  v0[27] = v14;
  v2 = sub_BF704();
  (*(v15 + 16))(v1, v2, v16);
  v18 = sub_C3224();
  v17 = sub_C3884();
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  v19 = sub_C3C64();
  if (os_log_type_enabled(v18, v17))
  {
    buf = sub_C3954();
    v8 = sub_21E8(&qword_EE828, &qword_C5100);
    v10 = sub_5DD4(0, v8, v8);
    v11 = sub_5DD4(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v13 + 224) = buf;
    *(v13 + 232) = v10;
    *(v13 + 240) = v11;
    sub_5E28(0, (v13 + 224));
    sub_5E28(0, (v13 + 224));
    *(v13 + 248) = v19;
    v12 = swift_task_alloc();
    v12[2] = v13 + 224;
    v12[3] = v13 + 232;
    v12[4] = v13 + 240;
    sub_21E8(&unk_EEFB0, qword_C5110);
    sub_8128();
    sub_C3654();

    _os_log_impl(&dword_0, v18, v17, "Error thrown from voice trigger flow dialog", buf, 2u);
    sub_5E88(v10, 0, v8);
    sub_5E88(v11, 0, &type metadata for Any + 8);
    sub_C3934();
  }

  v6 = *(v13 + 288);
  v7 = *(v13 + 272);
  v5 = *(v13 + 280);
  _objc_release(v18);
  (*(v5 + 8))(v6, v7);
  sub_C2054();

  v3 = *(*(v13 + 200) + 8);

  return v3();
}

uint64_t sub_AE70()
{
  v3 = OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin28CannedDialogVoiceTriggerFlow_cannedInputTransformer;
  v1 = sub_21E8(&qword_EEE30, &qword_C5980);
  return (*(*(v1 - 8) + 8))(v0 + v3);
}

uint64_t sub_AEE8()
{
  v3 = sub_BF340();
  v2 = OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin28CannedDialogVoiceTriggerFlow_cannedInputTransformer;
  v0 = sub_21E8(&qword_EEE30, &qword_C5980);
  (*(*(v0 - 8) + 8))(v3 + v2);
  return v3;
}

uint64_t sub_B024(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_4CE4;

  return sub_A11C(a1);
}

uint64_t type metadata accessor for CannedDialogVoiceTriggerFlow(uint64_t a1)
{
  v2 = qword_EEE68;
  if (!qword_EEE68)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_B268()
{
  v2 = qword_EEE38;
  if (!qword_EEE38)
  {
    type metadata accessor for CannedDialogVoiceTriggerFlow(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEE38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_B2E8()
{
  v2 = qword_F0450;
  if (!qword_F0450)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_F0450);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_B37C(uint64_t a1)
{
  updated = sub_B460(319);
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_B460(uint64_t a1)
{
  v5 = qword_EEE78;
  if (!qword_EEE78)
  {
    sub_C23B4();
    v4 = sub_C2D94();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_EEE78);
      return v2;
    }
  }

  return v5;
}

void *sub_B504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, char a10)
{
  __src[0] = a1;
  __src[1] = a2;
  LOBYTE(__src[2]) = a3;
  __src[3] = a4;
  __src[4] = a5;
  LOBYTE(__src[5]) = a6;
  __src[6] = a7;
  __src[7] = a8;
  LOBYTE(__src[8]) = a10;
  return memcpy(a9, __src, 0x41uLL);
}

uint64_t sub_B588@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin18CannedDialogHelper_previousProfanityAtSiri);
  swift_beginAccess();
  sub_B5E4(v3, a1);
  return swift_endAccess();
}

void *sub_B5E4(const void *a1, void *a2)
{
  v6 = sub_C1B54();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_21E8(&qword_EE820, &qword_C5A60);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_B70C(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(sub_21E8(&qword_EE820, &qword_C5A60) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v5 = &v4 - v4;
  sub_B5E4(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin18CannedDialogHelper_previousProfanityAtSiri);
  v7 = &v9;
  swift_beginAccess();
  sub_B7DC(v5, v6);
  swift_endAccess();
  return sub_BA04(v8);
}

void *sub_B7DC(const void *a1, void *a2)
{
  v7 = sub_C1B54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = sub_21E8(&qword_EE820, &qword_C5A60);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = sub_21E8(&qword_EE820, &qword_C5A60);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_BA04(uint64_t a1)
{
  v3 = sub_C1B54();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_BB10()
{
  v2 = (v0 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin18CannedDialogHelper_followUpId);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_BB7C(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin18CannedDialogHelper_followUpId);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_BCAC(void *a1)
{
  v9 = 0;
  v10 = a1;
  v5 = OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin18CannedDialogHelper_previousProfanityAtSiri;
  v2 = sub_C1B54();
  (*(*(v2 - 8) + 56))(v1 + v5, 1);
  v3 = (v1 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin18CannedDialogHelper_followUpId);
  *v3 = 0;
  v3[1] = 0;
  sub_24F4(a1, v8);
  sub_BD6C(v8, (v1 + 16));
  sub_2560(a1);
  return v7;
}

uint64_t sub_BDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 576) = v7;
  *(v8 + 568) = a7;
  *(v8 + 560) = a6;
  *(v8 + 552) = a5;
  *(v8 + 544) = a4;
  *(v8 + 536) = a3;
  *(v8 + 528) = a2;
  *(v8 + 520) = a1;
  *(v8 + 584) = *v7;
  *(v8 + 432) = v8;
  *(v8 + 288) = 0;
  *(v8 + 296) = 0;
  *(v8 + 440) = 0;
  *(v8 + 304) = 0;
  *(v8 + 312) = 0;
  *(v8 + 448) = 0;
  *(v8 + 456) = 0;
  *(v8 + 320) = 0;
  *(v8 + 328) = 0;
  *(v8 + 872) = 0;
  *(v8 + 368) = 0;
  *(v8 + 376) = 0;
  *(v8 + 464) = 0;
  *(v8 + 472) = 0;
  *(v8 + 480) = 0;
  v9 = sub_C2064();
  *(v8 + 592) = v9;
  *(v8 + 600) = *(v9 - 8);
  *(v8 + 608) = swift_task_alloc();
  v10 = sub_C2134();
  *(v8 + 616) = v10;
  *(v8 + 624) = *(v10 - 8);
  *(v8 + 632) = swift_task_alloc();
  *(v8 + 640) = sub_21E8(&qword_EEF88, &unk_C5A70);
  *(v8 + 648) = swift_task_alloc();
  *(v8 + 656) = swift_task_alloc();
  sub_21E8(&qword_EEF90, &qword_C5DF0);
  *(v8 + 664) = swift_task_alloc();
  v11 = sub_C1FE4();
  *(v8 + 672) = v11;
  *(v8 + 680) = *(v11 - 8);
  *(v8 + 688) = swift_task_alloc();
  v12 = sub_C3234();
  *(v8 + 696) = v12;
  *(v8 + 704) = *(v12 - 8);
  *(v8 + 712) = swift_task_alloc();
  *(v8 + 720) = swift_task_alloc();
  type metadata accessor for DialogServiceButton(0);
  *(v8 + 728) = swift_task_alloc();
  sub_21E8(&qword_EEF98, &qword_C5A80);
  *(v8 + 736) = swift_task_alloc();
  *(v8 + 744) = swift_task_alloc();
  *(v8 + 288) = a2;
  *(v8 + 296) = a3;
  *(v8 + 440) = a4;
  *(v8 + 304) = a5;
  *(v8 + 312) = a6;
  *(v8 + 448) = a7;
  *(v8 + 456) = v7;

  return _swift_task_switch(sub_C20C, 0);
}

uint64_t sub_C20C()
{
  v1 = v0[67];
  v2 = v0[66];
  v0[54] = v0;
  v81 = sub_13690(v2, v1);
  v82 = v3;
  v0[94] = v81;
  v0[95] = v3;
  v0[40] = v81;
  v0[41] = v3;
  v0[42] = v81;
  v0[43] = v3;
  v4 = sub_41A8C();
  v83 = *v4;
  v84 = v4[1];

  sub_146A0(v0 + 42, v0 + 32);
  v0[34] = v83;
  v0[35] = v84;
  if (!v0[33])
  {
    if (!*(v80 + 280))
    {
      sub_8224(v80 + 256);

      goto LABEL_11;
    }

LABEL_9:
    sub_146E0(v80 + 256);

    goto LABEL_14;
  }

  sub_146A0((v80 + 256), (v80 + 384));
  if (!*(v80 + 280))
  {
    sub_8224(v80 + 384);
    goto LABEL_9;
  }

  *(v80 + 400) = *(v80 + 384);
  *(v80 + 416) = *(v80 + 272);
  v79 = sub_C3574();
  sub_8224(v80 + 416);
  sub_8224(v80 + 400);
  sub_8224(v80 + 256);

  if ((v79 & 1) == 0)
  {
LABEL_14:
    v67 = *(v80 + 728);
    v7 = sub_41AEC();
    v65 = *v7;
    v66 = v7[1];

    sub_19BC4(v81, v82, v65, v66, v67);

    v68 = *v67;
    v69 = *(v67 + 1);

    *(v80 + 352) = v68;
    *(v80 + 360) = v69;
    v64 = *(v80 + 360) != 0;
    v58 = *(v80 + 576);
    sub_8224(v80 + 352);
    *(v80 + 872) = v64;
    sub_24F4(v58 + 16, v80 + 16);
    v60 = *(v80 + 40);
    v59 = *(v80 + 48);
    sub_808C((v80 + 16), v60);
    (*(v59 + 40))(v60);
    v62 = *(v80 + 80);
    v61 = *(v80 + 88);
    sub_808C((v80 + 56), v62);
    v63 = (*(v61 + 16))(v62);
    sub_2560((v80 + 56));
    sub_2560((v80 + 16));
    if (v63)
    {
      v8 = *(v80 + 720);
      v54 = *(v80 + 696);
      v53 = *(v80 + 704);
      v9 = sub_BF704();
      v10 = *(v53 + 16);
      *(v80 + 784) = v10;
      *(v80 + 792) = (v53 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v10(v8, v9, v54);
      oslog = sub_C3224();
      v55 = sub_C3874();
      *(v80 + 800) = sub_21E8(&unk_EEFA0, &unk_C50F0);
      v57 = sub_C3C64();
      if (os_log_type_enabled(oslog, v55))
      {
        buf = sub_C3954();
        v48 = sub_21E8(&qword_EE828, &qword_C5100);
        v50 = sub_5DD4(0, v48, v48);
        v51 = sub_5DD4(0, &type metadata for Any + 8, &type metadata for Any + 8);
        *(v80 + 488) = buf;
        *(v80 + 496) = v50;
        *(v80 + 504) = v51;
        sub_5E28(0, (v80 + 488));
        sub_5E28(0, (v80 + 488));
        *(v80 + 512) = v57;
        v52 = swift_task_alloc();
        v52[2] = v80 + 488;
        v52[3] = v80 + 496;
        v52[4] = v80 + 504;
        sub_21E8(&unk_EEFB0, qword_C5110);
        sub_8128();
        sub_C3654();

        _os_log_impl(&dword_0, oslog, v55, "OutputPatternDialog RF enabled", buf, 2u);
        sub_5E88(v50, 0, v48);
        sub_5E88(v51, 0, &type metadata for Any + 8);
        sub_C3934();
      }

      v46 = *(v80 + 720);
      v47 = *(v80 + 696);
      v45 = *(v80 + 704);
      _objc_release(oslog);
      v11 = *(v45 + 8);
      *(v80 + 808) = v11;
      *(v80 + 816) = (v45 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v11(v46, v47);
      v12 = swift_task_alloc();
      *(v80 + 824) = v12;
      *v12 = *(v80 + 432);
      v12[1] = sub_D5D0;
      v13 = *(v80 + 568);
      v14 = *(v80 + 520);

      return sub_11DF0(v14, v81, v82, v13);
    }

    else
    {
      v41 = *(v80 + 656);
      v44 = *(v80 + 648);
      v42 = sub_148B4(v41, *(v80 + 752), *(v80 + 760), *(v80 + 544), *(v80 + 552), *(v80 + 560));
      v43 = v15;
      *(v80 + 840) = v15;
      *(v80 + 368) = v42;
      *(v80 + 376) = v15;
      sub_19F8C(v41, v44);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v30 = *(v80 + 728);
        v29 = *(v80 + 656);
        v20 = *(v80 + 544);
        v28 = **(v80 + 648);
        *(v80 + 464) = v28;
        v26 = *(v20 + 48);
        v24 = *(v20 + 56);
        v25 = *(v20 + 64);
        swift_errorRetain();
        v27 = swift_task_alloc();
        *(v27 + 16) = v28;
        sub_5A43C(v26, v24, v25, 1, sub_1A060, v27, &type metadata for () + 8, v23);

        sub_C2054();

        sub_1A068(v29);

        sub_1A104(v30);

        v21 = *(*(v80 + 432) + 8);

        return v21();
      }

      else
      {
        v34 = *(v80 + 760);
        v33 = *(v80 + 752);
        v35 = *(v80 + 632);
        v32 = *(v80 + 576);
        v36 = *(v80 + 568);
        v31 = *(v80 + 544);
        v37 = *(v80 + 584);
        (*(*(v80 + 624) + 32))();
        *(v80 + 472) = v35;
        v38 = *(v31 + 24);
        v39 = *(v31 + 32);
        v40 = *(v31 + 40);

        v16 = swift_task_alloc();
        *(v80 + 848) = v16;
        v16[2] = v32;
        v16[3] = v33;
        v16[4] = v34;
        v16[5] = v42;
        v16[6] = v43;
        v16[7] = v35;
        v16[8] = v36;
        v16[9] = v37;
        v17 = swift_task_alloc();
        *(v80 + 856) = v17;
        *v17 = *(v80 + 432);
        v17[1] = sub_E640;
        v18 = *(v80 + 608);
        v19 = *(v80 + 592);

        return sub_59BB4(v18, v38, v39, v40, 1, &unk_C5A90, v16, v19);
      }
    }
  }

LABEL_11:
  v75 = *(v80 + 744);
  v76 = *(v80 + 736);
  v71 = *(v80 + 576);
  v70 = *(v80 + 568);
  type metadata accessor for CannedDialogHelper(0);
  sub_1A3BC(0, v70, v75);
  sub_24F4(v71 + 16, v80 + 136);
  v73 = *(v80 + 160);
  v72 = *(v80 + 168);
  sub_808C((v80 + 136), v73);
  (*(v72 + 16))(v73);
  v77 = *(v80 + 200);
  v78 = *(v80 + 208);
  sub_808C((v80 + 176), v77);
  sub_1CA74();
  sub_C3C64();
  v74 = v5;
  sub_1CAD8();
  *v74 = sub_EE34();
  sub_4E48();
  sub_1CB3C(v75, v76);
  *(v80 + 240) = sub_C2414();
  *(v80 + 248) = &protocol witness table for AceOutput;
  sub_1CC64((v80 + 216));
  sub_C23F4();
  v6 = swift_task_alloc();
  *(v80 + 768) = v6;
  *v6 = *(v80 + 432);
  v6[1] = sub_D2A0;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v80 + 216, v77, v78);
}

uint64_t sub_D2A0()
{
  v5 = *v1;
  v4 = (*v1 + 216);
  *(v5 + 432) = *v1;
  *(v5 + 776) = v0;

  if (v0)
  {
    v2 = sub_EA50;
  }

  else
  {
    sub_2560(v4);
    v2 = sub_D41C;
  }

  return _swift_task_switch(v2, 0);
}

uint64_t sub_D41C()
{
  v3 = v0[93];
  v0[54] = v0;
  sub_2560(v0 + 22);
  sub_2560(v0 + 17);
  sub_C2054();
  sub_1CCE4(v3);

  v1 = *(v0[54] + 8);

  return v1();
}

uint64_t sub_D5D0()
{
  v4 = *v1;
  *(v4 + 432) = *v1;
  *(v4 + 832) = v0;

  if (v0)
  {
    v2 = sub_D8CC;
  }

  else
  {
    v2 = sub_D73C;
  }

  return _swift_task_switch(v2, 0);
}

uint64_t sub_D73C()
{
  v1 = *(v0 + 728);
  *(v0 + 432) = v0;
  sub_1A104(v1);

  v2 = *(*(v0 + 432) + 8);

  return v2();
}

uint64_t sub_D8CC()
{
  v69 = v0;
  v55 = v0[104];
  v54 = v0[98];
  v1 = v0[89];
  v53 = v0[87];
  v0[54] = v0;
  swift_errorRetain();
  v0[60] = v55;
  v2 = sub_BF704();
  v54(v1, v2, v53);
  swift_errorRetain();
  v56 = swift_allocObject();
  *(v56 + 16) = v55;
  v62 = sub_C3224();
  v63 = sub_C3884();
  v58 = swift_allocObject();
  *(v58 + 16) = 32;
  v59 = swift_allocObject();
  *(v59 + 16) = 8;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_1A354;
  *(v57 + 24) = v56;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_7BBC;
  *(v60 + 24) = v57;
  sub_C3C64();
  v61 = v3;

  *v61 = sub_7B48;
  v61[1] = v58;

  v61[2] = sub_7B48;
  v61[3] = v59;

  v61[4] = sub_7C08;
  v61[5] = v60;
  sub_4E48();

  if (os_log_type_enabled(v62, v63))
  {
    buf = sub_C3954();
    v48 = sub_21E8(&qword_EE828, &qword_C5100);
    v50 = sub_5DD4(0, v48, v48);
    v51 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v64 = buf;
    v65 = v50;
    v66 = v51;
    sub_5E28(2, &v64);
    sub_5E28(1, &v64);
    v67 = sub_7B48;
    v68 = v58;
    sub_5E3C(&v67, &v64, &v65, &v66);
    v67 = sub_7B48;
    v68 = v59;
    sub_5E3C(&v67, &v64, &v65, &v66);
    v67 = sub_7C08;
    v68 = v60;
    sub_5E3C(&v67, &v64, &v65, &v66);
    _os_log_impl(&dword_0, v62, v63, "Could not output pattern dialog %s", buf, 0xCu);
    sub_5E88(v50, 0, v48);
    sub_5E88(v51, 1, &type metadata for Any + 8);
    sub_C3934();
  }

  else
  {
  }

  v42 = v52[104];
  v32 = v52[101];
  v39 = v52[95];
  v38 = v52[94];
  v30 = v52[89];
  v31 = v52[87];
  v41 = v52[86];
  v34 = v52[84];
  v40 = v52[83];
  v33 = v52[85];
  _objc_release(v62);
  v32(v30, v31);
  sub_C1E94();
  sub_808C(v52 + 12, v52[15]);
  sub_C1F14();
  (*(v33 + 104))(v41, enum case for ActivityType.failed(_:), v34);

  v35 = enum case for SiriKitReliabilityCodes.genericError(_:);
  v37 = sub_C1EB4();
  v36 = *(v37 - 8);
  (*(v36 + 104))(v40, v35);
  (*(v36 + 56))(v40, 0, 1, v37);

  swift_errorRetain();
  v4 = swift_allocObject();
  v4[2] = v38;
  v4[3] = v39;
  v4[4] = v42;
  sub_C1EE4();
  sub_C1EA4();

  sub_2560(v52 + 12);

  v43 = v52[82];
  v46 = v52[81];
  v44 = sub_148B4(v43, v52[94], v52[95], v52[68], v52[69], v52[70]);
  v45 = v5;
  v52[105] = v5;
  v52[46] = v44;
  v52[47] = v5;
  sub_19F8C(v43, v46);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v52[91];
    v18 = v52[82];
    v11 = v52[68];
    v17 = *v52[81];
    v52[58] = v17;
    v15 = *(v11 + 48);
    v13 = *(v11 + 56);
    v14 = *(v11 + 64);
    swift_errorRetain();
    v16 = swift_task_alloc();
    *(v16 + 16) = v17;
    sub_5A43C(v15, v13, v14, 1, sub_1A060, v16, &type metadata for () + 8, v47);

    sub_C2054();

    sub_1A068(v18);

    sub_1A104(v19);

    v12 = *(v52[54] + 8);

    return v12();
  }

  else
  {
    v23 = v52[95];
    v22 = v52[94];
    v24 = v52[79];
    v21 = v52[72];
    v25 = v52[71];
    v20 = v52[68];
    v26 = v52[73];
    (*(v52[78] + 32))();
    v52[59] = v24;
    v27 = *(v20 + 24);
    v28 = *(v20 + 32);
    v29 = *(v20 + 40);

    v6 = swift_task_alloc();
    v52[106] = v6;
    v6[2] = v21;
    v6[3] = v22;
    v6[4] = v23;
    v6[5] = v44;
    v6[6] = v45;
    v6[7] = v24;
    v6[8] = v25;
    v6[9] = v26;
    v7 = swift_task_alloc();
    v52[107] = v7;
    *v7 = v52[54];
    v7[1] = sub_E640;
    v8 = v52[76];
    v9 = v52[74];

    return sub_59BB4(v8, v27, v28, v29, 1, &unk_C5A90, v6, v9);
  }
}

uint64_t sub_E640()
{
  v4 = *v1;
  *(v4 + 432) = *v1;
  *(v4 + 864) = v0;

  if (v0)
  {
    v2 = sub_EBFC;
  }

  else
  {

    v2 = sub_E800;
  }

  return _swift_task_switch(v2, 0);
}

uint64_t sub_E800()
{
  v11 = v0[91];
  v10 = v0[82];
  v8 = v0[79];
  v7 = v0[78];
  v9 = v0[77];
  v6 = v0[76];
  v4 = v0[75];
  v5 = v0[74];
  v1 = v0[65];
  v0[54] = v0;
  (*(v4 + 16))(v1);
  (*(v4 + 8))(v6, v5);
  (*(v7 + 8))(v8, v9);
  sub_1A068(v10);

  sub_1A104(v11);

  v2 = *(v0[54] + 8);

  return v2();
}

uint64_t sub_EA50()
{
  v3 = v0[93];
  v0[54] = v0;
  sub_2560(v0 + 27);
  sub_2560(v0 + 22);
  sub_2560(v0 + 17);
  sub_1CCE4(v3);

  v1 = *(v0[54] + 8);

  return v1();
}

uint64_t sub_EBFC()
{
  v7 = v0[91];
  v6 = v0[82];
  v4 = v0[79];
  v3 = v0[78];
  v5 = v0[77];
  v0[54] = v0;

  (*(v3 + 8))(v4, v5);
  sub_1A068(v6);

  sub_1A104(v7);

  v1 = *(v0[54] + 8);

  return v1();
}

uint64_t sub_EEA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_C1EC4();

  swift_getErrorValue();
  sub_C3C94();
  sub_C1ED4();
}

uint64_t sub_EF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 512) = v21;
  *(v8 + 504) = a8;
  *(v8 + 496) = a7;
  *(v8 + 488) = a6;
  *(v8 + 480) = a5;
  *(v8 + 472) = a4;
  *(v8 + 464) = a3;
  *(v8 + 456) = a2;
  *(v8 + 448) = a1;
  *(v8 + 392) = v8;
  *(v8 + 400) = 0;
  *(v8 + 360) = 0;
  *(v8 + 368) = 0;
  *(v8 + 376) = 0;
  *(v8 + 384) = 0;
  *(v8 + 408) = 0;
  *(v8 + 416) = 0;
  *(v8 + 424) = 0;
  *(v8 + 632) = 0;
  *(v8 + 432) = 0;
  v9 = sub_C2414();
  *(v8 + 520) = v9;
  *(v8 + 528) = *(v9 - 8);
  *(v8 + 536) = swift_task_alloc();
  v10 = sub_C3234();
  *(v8 + 544) = v10;
  *(v8 + 552) = *(v10 - 8);
  *(v8 + 560) = swift_task_alloc();
  *(v8 + 568) = swift_task_alloc();
  v12 = *(sub_21E8(&qword_EEF98, &qword_C5A80) - 8);
  *(v8 + 576) = v12;
  *(v8 + 584) = *(v12 + 64);
  *(v8 + 592) = swift_task_alloc();
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 400) = a2;
  *(v8 + 360) = a3;
  *(v8 + 368) = a4;
  *(v8 + 376) = a5;
  *(v8 + 384) = a6;
  *(v8 + 408) = a7;
  *(v8 + 416) = a8;

  return _swift_task_switch(sub_F230, 0);
}

uint64_t sub_F230()
{
  v104 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 480);
  v3 = *(v0 + 472);
  v4 = *(v0 + 464);
  *(v0 + 392) = v0;
  v91 = sub_18164(v4, v3, v2, v1, 0, 0);
  *(v0 + 608) = v91;
  *(v0 + 424) = v91;
  v92 = sub_C2104(0);
  *(v0 + 633) = v92;
  *(v0 + 632) = v92;
  sub_1CA74();
  *(v0 + 432) = sub_C3324();
  v5 = sub_C20F4();
  v93 = sub_17A44(v5, v6);

  if (v93)
  {
    sub_1CEB0();
    v90[55] = sub_EE34();
    sub_21E8(&qword_EF248, &unk_C5BC0);
    sub_C3724();
  }

  v64 = v90[75];
  v65 = v90[71];
  v67 = v90[68];
  v69 = v90[64];
  v70 = v90[63];
  v66 = v90[69];
  type metadata accessor for CannedDialogHelper(0);
  sub_1A3BC(v92, v70, v64);
  v7 = sub_BF704();
  v68 = *(v66 + 16);
  v68(v65, v7, v67);
  v72 = swift_allocObject();
  *(v72 + 16) = v69;

  v71 = swift_allocObject();
  *(v71 + 16) = v70;

  v76 = swift_allocObject();
  *(v76 + 16) = sub_1F0A8;
  *(v76 + 24) = v71;

  oslog = sub_C3224();
  v89 = sub_C3874();
  v78 = swift_allocObject();
  *(v78 + 16) = 32;
  v79 = swift_allocObject();
  *(v79 + 16) = 8;
  v73 = swift_allocObject();
  *(v73 + 16) = sub_1F060;
  *(v73 + 24) = v72;
  v74 = swift_allocObject();
  *(v74 + 16) = sub_1F278;
  *(v74 + 24) = v73;
  v80 = swift_allocObject();
  *(v80 + 16) = sub_7BBC;
  *(v80 + 24) = v74;
  v81 = swift_allocObject();
  *(v81 + 16) = 32;
  v82 = swift_allocObject();
  *(v82 + 16) = 8;
  v75 = swift_allocObject();
  *(v75 + 16) = sub_11730;
  *(v75 + 24) = 0;
  v83 = swift_allocObject();
  *(v83 + 16) = sub_7BBC;
  *(v83 + 24) = v75;
  v84 = swift_allocObject();
  *(v84 + 16) = 32;
  v85 = swift_allocObject();
  *(v85 + 16) = 8;
  v77 = swift_allocObject();
  *(v77 + 16) = sub_1F0F0;
  *(v77 + 24) = v76;
  v86 = swift_allocObject();
  *(v86 + 16) = sub_7BBC;
  *(v86 + 24) = v77;
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  sub_C3C64();
  v87 = v8;

  *v87 = sub_7B48;
  v87[1] = v78;

  v87[2] = sub_7B48;
  v87[3] = v79;

  v87[4] = sub_7C08;
  v87[5] = v80;

  v87[6] = sub_7B48;
  v87[7] = v81;

  v87[8] = sub_7B48;
  v87[9] = v82;

  v87[10] = sub_7C08;
  v87[11] = v83;

  v87[12] = sub_7B48;
  v87[13] = v84;

  v87[14] = sub_7B48;
  v87[15] = v85;

  v87[16] = sub_7C08;
  v87[17] = v86;
  sub_4E48();

  if (os_log_type_enabled(oslog, v89))
  {
    buf = sub_C3954();
    v60 = sub_21E8(&qword_EE828, &qword_C5100);
    v62 = sub_5DD4(0, v60, v60);
    v63 = sub_5DD4(3, &type metadata for Any + 8, &type metadata for Any + 8);
    v99 = buf;
    v100 = v62;
    v101 = v63;
    sub_5E28(2, &v99);
    sub_5E28(3, &v99);
    v102 = sub_7B48;
    v103 = v78;
    sub_5E3C(&v102, &v99, &v100, &v101);
    v102 = sub_7B48;
    v103 = v79;
    sub_5E3C(&v102, &v99, &v100, &v101);
    v102 = sub_7C08;
    v103 = v80;
    sub_5E3C(&v102, &v99, &v100, &v101);
    v102 = sub_7B48;
    v103 = v81;
    sub_5E3C(&v102, &v99, &v100, &v101);
    v102 = sub_7B48;
    v103 = v82;
    sub_5E3C(&v102, &v99, &v100, &v101);
    v102 = sub_7C08;
    v103 = v83;
    sub_5E3C(&v102, &v99, &v100, &v101);
    v102 = sub_7B48;
    v103 = v84;
    sub_5E3C(&v102, &v99, &v100, &v101);
    v102 = sub_7B48;
    v103 = v85;
    sub_5E3C(&v102, &v99, &v100, &v101);
    v102 = sub_7C08;
    v103 = v86;
    sub_5E3C(&v102, &v99, &v100, &v101);
    _os_log_impl(&dword_0, oslog, v89, "%s.%s nextTurns: %s", buf, 0x20u);
    sub_5E88(v62, 0, v60);
    sub_5E88(v63, 3, &type metadata for Any + 8);
    sub_C3934();
  }

  else
  {
  }

  v38 = v90[75];
  v41 = v90[74];
  v34 = v90[71];
  v9 = v90[70];
  v36 = v90[68];
  v37 = v90[64];
  v39 = v90[72];
  v33 = v90[69];
  _objc_release(oslog);
  v35 = *(v33 + 8);
  v35(v34, v36);
  v10 = sub_BF704();
  v68(v9, v10, v36);
  v42 = swift_allocObject();
  *(v42 + 16) = v37;
  sub_1CB3C(v38, v41);
  v40 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v46 = swift_allocObject();
  sub_1F620(v41, (v46 + v40));
  log = sub_C3224();
  v59 = sub_C3874();
  v48 = swift_allocObject();
  *(v48 + 16) = 32;
  v49 = swift_allocObject();
  *(v49 + 16) = 8;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_1F060;
  *(v43 + 24) = v42;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_1F278;
  *(v44 + 24) = v43;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_7BBC;
  *(v50 + 24) = v44;
  v51 = swift_allocObject();
  *(v51 + 16) = 32;
  v52 = swift_allocObject();
  *(v52 + 16) = 8;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_11730;
  *(v45 + 24) = 0;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_7BBC;
  *(v53 + 24) = v45;
  v54 = swift_allocObject();
  *(v54 + 16) = 32;
  v55 = swift_allocObject();
  *(v55 + 16) = 8;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_1F748;
  *(v47 + 24) = v46;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_7BBC;
  *(v56 + 24) = v47;
  sub_C3C64();
  v57 = v11;

  *v57 = sub_7B48;
  v57[1] = v48;

  v57[2] = sub_7B48;
  v57[3] = v49;

  v57[4] = sub_7C08;
  v57[5] = v50;

  v57[6] = sub_7B48;
  v57[7] = v51;

  v57[8] = sub_7B48;
  v57[9] = v52;

  v57[10] = sub_7C08;
  v57[11] = v53;

  v57[12] = sub_7B48;
  v57[13] = v54;

  v57[14] = sub_7B48;
  v57[15] = v55;

  v57[16] = sub_7C08;
  v57[17] = v56;
  sub_4E48();

  if (os_log_type_enabled(log, v59))
  {
    v30 = sub_C3954();
    v29 = sub_21E8(&qword_EE828, &qword_C5100);
    v31 = sub_5DD4(0, v29, v29);
    v32 = sub_5DD4(3, &type metadata for Any + 8, &type metadata for Any + 8);
    v94 = v30;
    v95 = v31;
    v96 = v32;
    sub_5E28(2, &v94);
    sub_5E28(3, &v94);
    v97 = sub_7B48;
    v98 = v48;
    sub_5E3C(&v97, &v94, &v95, &v96);
    v97 = sub_7B48;
    v98 = v49;
    sub_5E3C(&v97, &v94, &v95, &v96);
    v97 = sub_7C08;
    v98 = v50;
    sub_5E3C(&v97, &v94, &v95, &v96);
    v97 = sub_7B48;
    v98 = v51;
    sub_5E3C(&v97, &v94, &v95, &v96);
    v97 = sub_7B48;
    v98 = v52;
    sub_5E3C(&v97, &v94, &v95, &v96);
    v97 = sub_7C08;
    v98 = v53;
    sub_5E3C(&v97, &v94, &v95, &v96);
    v97 = sub_7B48;
    v98 = v54;
    sub_5E3C(&v97, &v94, &v95, &v96);
    v97 = sub_7B48;
    v98 = v55;
    sub_5E3C(&v97, &v94, &v95, &v96);
    v97 = sub_7C08;
    v98 = v56;
    sub_5E3C(&v97, &v94, &v95, &v96);
    _os_log_impl(&dword_0, log, v59, "%s.%s NL context update: %s", v30, 0x20u);
    sub_5E88(v31, 0, v29);
    sub_5E88(v32, 3, &type metadata for Any + 8);
    sub_C3934();
  }

  else
  {
  }

  v15 = v90[70];
  v16 = v90[68];
  v25 = v90[67];
  v26 = v90[65];
  v21 = v90[57];
  v24 = v90[66];
  _objc_release(log);
  v35(v15, v16);
  sub_24F4(v21 + 16, (v90 + 2));
  v18 = v90[5];
  v17 = v90[6];
  sub_808C(v90 + 2, v18);
  (*(v17 + 8))(v18);
  sub_24F4(v21 + 16, (v90 + 12));
  v20 = v90[15];
  v19 = v90[16];
  sub_808C(v90 + 12, v20);
  (*(v19 + 8))(v20);
  sub_808C(v90 + 17, v90[20]);
  sub_C1F54();

  v90[22] = 0;
  v90[23] = 0;
  v90[24] = 0;
  v90[25] = 0;
  v90[26] = 0;
  sub_C2034();
  sub_1FA80(v90 + 22);

  sub_2560(v90 + 17);
  sub_2560(v90 + 12);
  sub_2560(v90 + 7);
  sub_2560(v90 + 2);
  sub_24F4(v21 + 16, (v90 + 27));
  v23 = v90[30];
  v22 = v90[31];
  sub_808C(v90 + 27, v23);
  (*(v22 + 16))(v23);
  v27 = v90[35];
  v28 = v90[36];
  sub_808C(v90 + 32, v27);
  v90[40] = v26;
  v90[41] = &protocol witness table for AceOutput;
  v12 = sub_1CC64(v90 + 37);
  (*(v24 + 16))(v12, v25, v26);
  v13 = swift_task_alloc();
  v90[77] = v13;
  *v13 = v90[49];
  v13[1] = sub_1111C;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v90 + 37, v27, v28);
}

uint64_t sub_1111C()
{
  v5 = *v1;
  v4 = (*v1 + 296);
  *(v5 + 392) = *v1;
  *(v5 + 624) = v0;

  if (v0)
  {
    v2 = sub_115D0;
  }

  else
  {
    sub_2560(v4);
    v2 = sub_11298;
  }

  return _swift_task_switch(v2, 0);
}

uint64_t sub_11298()
{
  v14 = v0[59];
  v13 = v0[58];
  v0[49] = v0;
  sub_2560(v0 + 32);
  sub_2560(v0 + 27);
  if ((sub_1340C(v13, v14) & 1) == 0)
  {
    v11 = (*(v12 + 456) + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin18CannedDialogHelper_followUpId);
    swift_beginAccess();
    *v11 = 0;
    v11[1] = 0;

    swift_endAccess();
  }

  if (*(v12 + 633))
  {
    v10 = *(v12 + 600);
    v8 = *(v12 + 536);
    v9 = *(v12 + 520);
    v7 = *(v12 + 528);
    sub_C2044();
    (*(v7 + 8))(v8, v9);
    sub_1CCE4(v10);
  }

  else
  {
    v6 = *(v12 + 600);
    v4 = *(v12 + 536);
    v5 = *(v12 + 520);
    v3 = *(v12 + 528);
    sub_C2054();
    (*(v3 + 8))(v4, v5);
    sub_1CCE4(v6);
  }

  sub_1D7C8((v12 + 432));

  v1 = *(*(v12 + 392) + 8);

  return v1();
}

uint64_t sub_115D0()
{
  v5 = v0[75];
  v6 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
  v0[49] = v0;
  sub_2560(v0 + 37);
  sub_2560(v0 + 32);
  sub_2560(v0 + 27);
  (*(v3 + 8))(v6, v4);
  sub_1CCE4(v5);
  sub_1D7C8(v0 + 54);

  v1 = *(*(v7 + 392) + 8);

  return v1();
}

uint64_t sub_11760@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_11794(uint64_t a1)
{
  v3 = a1;
  v5 = sub_21E8(&qword_EEF98, &qword_C5A80);
  v4 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v6 = &v3 - v4;
  sub_1CB3C(v1, &v3 - v4);
  return sub_C34F4();
}

uint64_t sub_11830(uint64_t a1)
{
  v32 = a1;
  v34 = sub_1A354;
  v38 = sub_7BBC;
  v40 = sub_7B48;
  v42 = sub_7B48;
  v45 = sub_7C08;
  v56 = 0;
  v26 = 0;
  v31 = sub_C3234();
  v29 = *(v31 - 8);
  v30 = v31 - 8;
  v27 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v32);
  v1 = v17 - v27;
  v28 = v17 - v27;
  v56 = v2;
  v3 = sub_BF704();
  (*(v29 + 16))(v1, v3, v31);
  swift_errorRetain();
  v36 = 7;
  v37 = swift_allocObject();
  *(v37 + 16) = v32;
  v49 = sub_C3224();
  v50 = sub_C3884();
  v33 = 17;
  v41 = swift_allocObject();
  *(v41 + 16) = 32;
  v43 = swift_allocObject();
  *(v43 + 16) = 8;
  v35 = 32;
  v4 = swift_allocObject();
  v5 = v37;
  v39 = v4;
  *(v4 + 16) = v34;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v39;
  v46 = v6;
  *(v6 + 16) = v38;
  *(v6 + 24) = v7;
  v48 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v44 = sub_C3C64();
  v47 = v8;

  v9 = v41;
  v10 = v47;
  *v47 = v40;
  v10[1] = v9;

  v11 = v43;
  v12 = v47;
  v47[2] = v42;
  v12[3] = v11;

  v13 = v46;
  v14 = v47;
  v47[4] = v45;
  v14[5] = v13;
  sub_4E48();

  if (os_log_type_enabled(v49, v50))
  {
    v15 = v26;
    v19 = sub_C3954();
    v18 = sub_21E8(&qword_EE828, &qword_C5100);
    v20 = sub_5DD4(0, v18, v18);
    v21 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v22 = &v55;
    v55 = v19;
    v23 = &v54;
    v54 = v20;
    v24 = &v53;
    v53 = v21;
    sub_5E28(2, &v55);
    sub_5E28(1, v22);
    v51 = v40;
    v52 = v41;
    sub_5E3C(&v51, v22, v23, v24);
    v25 = v15;
    if (v15)
    {

      __break(1u);
    }

    else
    {
      v51 = v42;
      v52 = v43;
      sub_5E3C(&v51, &v55, &v54, &v53);
      v17[1] = 0;
      v51 = v45;
      v52 = v46;
      sub_5E3C(&v51, &v55, &v54, &v53);
      _os_log_impl(&dword_0, v49, v50, "Error: %s", v19, 0xCu);
      sub_5E88(v20, 0, v18);
      sub_5E88(v21, 1, &type metadata for Any + 8);
      sub_C3934();
    }
  }

  else
  {
  }

  _objc_release(v49);
  return (*(v29 + 8))(v28, v31);
}

uint64_t sub_11DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[62] = v4;
  v5[61] = a4;
  v5[60] = a3;
  v5[59] = a2;
  v5[58] = a1;
  v5[52] = v5;
  v5[48] = 0;
  v5[49] = 0;
  v5[53] = 0;
  v5[54] = 0;
  v5[55] = 0;
  v5[56] = 0;
  v5[57] = 0;
  sub_21E8(&qword_EEFD0, &unk_C6820);
  v5[63] = swift_task_alloc();
  v6 = sub_C3234();
  v5[64] = v6;
  v5[65] = *(v6 - 8);
  v5[66] = swift_task_alloc();
  v5[48] = a2;
  v5[49] = a3;
  v5[53] = a4;
  v5[54] = v4;

  return _swift_task_switch(sub_11F84, 0);
}

uint64_t sub_11F84(uint64_t a1)
{
  v60 = v1;
  v2 = v1[66];
  v41 = v1[65];
  v42 = v1[64];
  v44 = v1[60];
  v43 = v1[59];
  v1[52] = v1;
  v3 = sub_BF704();
  (*(v41 + 16))(v2, v3, v42);

  v45 = swift_allocObject();
  *(v45 + 16) = v43;
  *(v45 + 24) = v44;
  v51 = sub_C3224();
  v52 = sub_C3874();
  v47 = swift_allocObject();
  *(v47 + 16) = 32;
  v48 = swift_allocObject();
  *(v48 + 16) = 8;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_1CDCC;
  *(v46 + 24) = v45;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_7BBC;
  *(v49 + 24) = v46;
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  sub_C3C64();
  v50 = v4;

  *v50 = sub_7B48;
  v50[1] = v47;

  v50[2] = sub_7B48;
  v50[3] = v48;

  v50[4] = sub_7C08;
  v50[5] = v49;
  sub_4E48();

  if (os_log_type_enabled(v51, v52))
  {
    buf = sub_C3954();
    v36 = sub_21E8(&qword_EE828, &qword_C5100);
    v38 = sub_5DD4(0, v36, v36);
    v39 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v55 = buf;
    v56 = v38;
    v57 = v39;
    sub_5E28(2, &v55);
    sub_5E28(1, &v55);
    v58 = sub_7B48;
    v59 = v47;
    sub_5E3C(&v58, &v55, &v56, &v57);
    v58 = sub_7B48;
    v59 = v48;
    sub_5E3C(&v58, &v55, &v56, &v57);
    v58 = sub_7C08;
    v59 = v49;
    sub_5E3C(&v58, &v55, &v56, &v57);
    _os_log_impl(&dword_0, v51, v52, "outputPatternDialog: %s", buf, 0xCu);
    sub_5E88(v38, 0, v36);
    sub_5E88(v39, 1, &type metadata for Any + 8);
    sub_C3934();
  }

  else
  {
  }

  v30 = v40[66];
  v31 = v40[64];
  v35 = v40[60];
  v34 = v40[59];
  v29 = v40[65];
  _objc_release(v51);
  (*(v29 + 8))(v30, v31);
  v5 = sub_41AEC();
  v32 = *v5;
  v33 = v5[1];

  v40[50] = v34;
  v40[51] = v35;
  if (v40[51])
  {
    v53 = v40[50];
    v54 = v40[51];
  }

  else
  {
    v53 = sub_C3564("", 0, 1);
    v54 = v6;
    if (v40[51])
    {
      sub_8224((v40 + 50));
    }
  }

  sub_2E6E0(v32, v33, v53, v54, v40 + 2);
  v27 = sub_16240((v40 + 2));
  v40[67] = v27;
  v40[55] = v27;
  v7 = sub_2F52C();
  v28 = sub_17A44(v7, v8);

  sub_1CEB0();
  if (v28)
  {
    sub_C3C64();
    *v9 = sub_EE34();
    sub_4E48();
    v26 = v10;
  }

  else
  {
    v26 = sub_C3C64();
  }

  v40[68] = v26;
  v23 = v40[63];
  v20 = v40[62];
  v40[56] = v26;
  sub_24F4(v20 + 16, (v40 + 10));
  v17 = v40[13];
  v16 = v40[14];
  sub_808C(v40 + 10, v17);
  v24 = (*(v16 + 32))(v17);
  v40[69] = v24;
  v40[57] = v24;
  sub_2560(v40 + 10);
  sub_24F4(v20 + 16, (v40 + 20));
  v19 = v40[23];
  v18 = v40[24];
  sub_808C(v40 + 20, v19);
  (*(v18 + 8))(v19);
  sub_2560(v40 + 20);
  sub_24F4(v20 + 16, (v40 + 30));
  v22 = v40[33];
  v21 = v40[34];
  sub_808C(v40 + 30, v22);
  v40[70] = (*(v21 + 24))(v22);

  sub_1CEB0();
  sub_1CA74();
  v25 = sub_C3B34();
  v40[71] = v25;
  v11 = sub_C2DB4();
  (*(*(v11 - 8) + 56))(v23, 1);
  v12 = swift_task_alloc();
  v40[72] = v12;
  *v12 = v40[52];
  v12[1] = sub_12A00;
  v13 = v40[63];
  v14 = v40[61];

  return sub_370E0((v40 + 25), (v40 + 2), v27, v24, (v40 + 15), v14, v25, v13);
}

uint64_t sub_12A00()
{
  v6 = *v1;
  v4 = *v1 + 16;
  v5 = (*v1 + 240);
  *(v6 + 416) = *v1;
  *(v6 + 584) = v0;

  if (v0)
  {
    v2 = sub_13088;
  }

  else
  {
    sub_1CF14(*(v4 + 488));

    sub_2560(v5);
    v2 = sub_12BC0;
  }

  return _swift_task_switch(v2, 0);
}

uint64_t sub_12BC0()
{
  v1 = v0[62];
  v0[52] = v0;
  sub_24F4(v1 + 16, (v0 + 35));
  v5 = v0[38];
  v4 = v0[39];
  sub_808C(v0 + 35, v5);
  (*(v4 + 16))(v5);
  v7 = v0[43];
  v8 = v0[44];
  sub_808C(v0 + 40, v7);
  v2 = swift_task_alloc();
  *(v6 + 592) = v2;
  *v2 = *(v6 + 416);
  v2[1] = sub_12D00;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v6 + 200, v7, v8);
}

uint64_t sub_12D00()
{
  v4 = *v1;
  *(v4 + 416) = *v1;
  *(v4 + 600) = v0;

  if (v0)
  {
    v2 = sub_131F8;
  }

  else
  {
    v2 = sub_12E6C;
  }

  return _swift_task_switch(v2, 0);
}

uint64_t sub_12E6C()
{
  v7 = v0[60];
  v6 = v0[59];
  v0[52] = v0;
  sub_2560(v0 + 40);
  sub_2560(v0 + 35);
  if ((sub_1340C(v6, v7) & 1) == 0)
  {
    v4 = (v5[62] + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin18CannedDialogHelper_followUpId);
    swift_beginAccess();
    *v4 = 0;
    v4[1] = 0;

    swift_endAccess();
  }

  v3 = v5[69];
  sub_C2054();
  sub_2560(v5 + 25);
  sub_2560(v5 + 15);
  _objc_release(v3);

  sub_1CFBC(v5 + 2);

  v1 = *(v5[52] + 8);

  return v1();
}

uint64_t sub_13088()
{
  v4 = v0[69];
  v1 = v0[63];
  v0[52] = v0;
  sub_1CF14(v1);

  sub_2560(v0 + 30);
  sub_2560(v0 + 15);
  _objc_release(v4);

  sub_1CFBC(v0 + 2);

  v2 = *(v0[52] + 8);

  return v2();
}

uint64_t sub_131F8()
{
  v3 = v0[69];
  v0[52] = v0;
  sub_2560(v0 + 40);
  sub_2560(v0 + 35);
  sub_2560(v0 + 25);
  sub_2560(v0 + 15);
  _objc_release(v3);

  sub_1CFBC(v0 + 2);

  v1 = *(v0[52] + 8);

  return v1();
}

uint64_t sub_13348(uint64_t a1, uint64_t a2)
{

  if (a2)
  {
    return a1;
  }

  sub_C3B84();
  __break(1u);
  return v3;
}

uint64_t sub_1340C(uint64_t a1, uint64_t a2)
{
  v16[4] = 0;
  v16[5] = a1;
  v16[6] = a2;
  sub_C3C64();
  v14 = v2;
  *v2 = sub_C3564("dalRandomJoke", 0xDuLL, 1);
  v14[1] = v3;
  v14[2] = sub_C3564("dalFlipACoin", 0xCuLL, 1);
  v14[3] = v4;
  sub_4E48();
  v16[3] = v5;
  v16[2] = v5;

  if (a2)
  {
    v10 = a1;
    v11 = a2;
  }

  else
  {
    sub_C3B84();
    __break(1u);
  }

  v16[0] = v10;
  v16[1] = v11;
  sub_21E8(&qword_EEFE0, &qword_C5AB0);
  sub_1D00C();
  v9 = sub_C3684();
  sub_8224(v16);
  if (v9)
  {

    v7 = (v13 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin18CannedDialogHelper_followUpId);
    swift_beginAccess();
    *v7 = a1;
    v7[1] = a2;

    swift_endAccess();

    v8 = 1;
  }

  else
  {

    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_13690(uint64_t a1, uint64_t a2)
{
  v176 = a2;
  v175 = a1;
  v211 = 0;
  v210 = 0;
  v209 = 0;
  v166 = 0;
  v196 = 0;
  v195 = 0;
  v167 = sub_C3234();
  v168 = *(v167 - 8);
  v169 = v168;
  v171 = *(v168 + 64);
  __chkstk_darwin(v176);
  v173 = (v171 + 15) & 0xFFFFFFFFFFFFFFF0;
  v170 = &v48 - v173;
  __chkstk_darwin(v3);
  v172 = &v48 - v173;
  __chkstk_darwin(v4);
  v174 = &v48 - v173;
  v210 = v5;
  v211 = v6;
  v209 = v2;

  v207 = v175;
  v208 = v176;
  v206[0] = v175;
  v206[1] = v176;
  v7 = sub_41A8C();
  v180 = *v7;
  v181 = v7[1];

  v177 = v181;

  v178 = v203;
  v179 = v205;
  sub_146A0(v206, v203);
  v205[0] = v180;
  v205[1] = v181;
  if (v204)
  {
    sub_146A0(v178, &v184);
    if (v179[1])
    {
      v183 = v184;
      v182 = *v179;
      v163 = sub_C3574();
      sub_8224(&v182);
      sub_8224(&v183);
      sub_8224(v178);
      v164 = v163;
      goto LABEL_7;
    }

    sub_8224(&v184);
    goto LABEL_9;
  }

  if (v179[1])
  {
LABEL_9:
    sub_146E0(v203);
    v164 = 0;
    goto LABEL_7;
  }

  sub_8224(v178);
  v164 = 1;
LABEL_7:
  v162 = v164;

  if (v162)
  {
    v8 = v174;
    v9 = sub_BF704();
    v140 = *(v169 + 16);
    v141 = (v169 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v140(v8, v9, v167);

    v144 = 32;
    v148 = 32;
    v149 = 7;
    v10 = swift_allocObject();
    v11 = v176;
    v150 = v10;
    *(v10 + 16) = v175;
    *(v10 + 24) = v11;
    v161 = sub_C3224();
    v142 = v161;
    v160 = sub_C3874();
    v143 = v160;
    v145 = 17;
    v154 = swift_allocObject();
    v146 = v154;
    *(v154 + 16) = v144;
    v155 = swift_allocObject();
    v147 = v155;
    *(v155 + 16) = 8;
    v12 = swift_allocObject();
    v13 = v150;
    v151 = v12;
    *(v12 + 16) = sub_1D0D4;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v151;
    v158 = v14;
    v152 = v14;
    *(v14 + 16) = sub_7BBC;
    *(v14 + 24) = v15;
    v159 = sub_21E8(&unk_EEFA0, &unk_C50F0);
    v153 = v159;
    v156 = sub_C3C64();
    v157 = v16;

    v17 = v154;
    v18 = v157;
    *v157 = sub_7B48;
    v18[1] = v17;

    v19 = v155;
    v20 = v157;
    v157[2] = sub_7B48;
    v20[3] = v19;

    v21 = v157;
    v22 = v158;
    v157[4] = sub_7C08;
    v21[5] = v22;
    sub_4E48();

    if (os_log_type_enabled(v161, v160))
    {
      v23 = v166;
      v133 = sub_C3954();
      v130 = v133;
      v131 = sub_21E8(&qword_EE828, &qword_C5100);
      v134 = sub_5DD4(0, v131, v131);
      v132 = v134;
      v136 = 1;
      v135 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v189 = v133;
      v188 = v134;
      v187 = v135;
      v137 = &v189;
      sub_5E28(2, &v189);
      sub_5E28(v136, v137);
      v185 = sub_7B48;
      v186 = v146;
      sub_5E3C(&v185, v137, &v188, &v187);
      v138 = v23;
      v139 = v23;
      if (v23)
      {
        v128 = 0;

        __break(1u);
      }

      else
      {
        v185 = sub_7B48;
        v186 = v147;
        sub_5E3C(&v185, &v189, &v188, &v187);
        v126 = 0;
        v127 = 0;
        v185 = sub_7C08;
        v186 = v152;
        sub_5E3C(&v185, &v189, &v188, &v187);
        v124 = 0;
        v125 = 0;
        _os_log_impl(&dword_0, v142, v143, "cannedDialogId: %s", v130, 0xCu);
        sub_5E88(v132, 0, v131);
        sub_5E88(v135, 1, &type metadata for Any + 8);
        sub_C3934();

        v129 = v124;
      }
    }

    else
    {
      v24 = v166;

      v129 = v24;
    }

    v116 = v129;

    v117 = *(v169 + 8);
    v118 = (v169 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v117(v174, v167);
    v119 = (v165 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin18CannedDialogHelper_followUpId);
    v122 = &v201;
    swift_beginAccess();
    v120 = *v119;
    v123 = v119[1];
    v121 = v123;

    swift_endAccess();
    if (v123)
    {
      v114 = v120;
      v115 = v121;
      v25 = v172;
      v95 = v121;
      v94 = v120;
      v195 = v120;
      v196 = v121;

      v207 = v94;
      v208 = v95;

      v26 = sub_BF704();
      v140(v25, v26, v167);
      v98 = 32;
      v102 = 32;
      v103 = 7;
      v27 = swift_allocObject();
      v28 = v95;
      v104 = v27;
      *(v27 + 16) = v94;
      *(v27 + 24) = v28;
      v113 = sub_C3224();
      v96 = v113;
      v112 = sub_C3874();
      v97 = v112;
      v99 = 17;
      v107 = swift_allocObject();
      v100 = v107;
      *(v107 + 16) = v98;
      v108 = swift_allocObject();
      v101 = v108;
      *(v108 + 16) = 8;
      v29 = swift_allocObject();
      v30 = v104;
      v105 = v29;
      *(v29 + 16) = sub_1D1F8;
      *(v29 + 24) = v30;
      v31 = swift_allocObject();
      v32 = v105;
      v111 = v31;
      v106 = v31;
      *(v31 + 16) = sub_7BBC;
      *(v31 + 24) = v32;
      v109 = sub_C3C64();
      v110 = v33;

      v34 = v107;
      v35 = v110;
      *v110 = sub_7B48;
      v35[1] = v34;

      v36 = v108;
      v37 = v110;
      v110[2] = sub_7B48;
      v37[3] = v36;

      v38 = v110;
      v39 = v111;
      v110[4] = sub_7C08;
      v38[5] = v39;
      sub_4E48();

      if (os_log_type_enabled(v113, v112))
      {
        v40 = v116;
        v87 = sub_C3954();
        v84 = v87;
        v85 = sub_21E8(&qword_EE828, &qword_C5100);
        v88 = sub_5DD4(0, v85, v85);
        v86 = v88;
        v90 = 1;
        v89 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
        v194 = v87;
        v193 = v88;
        v192 = v89;
        v91 = &v194;
        sub_5E28(2, &v194);
        sub_5E28(v90, v91);
        v190 = sub_7B48;
        v191 = v100;
        sub_5E3C(&v190, v91, &v193, &v192);
        v92 = v40;
        v93 = v40;
        if (v40)
        {
          v82 = 0;

          __break(1u);
        }

        else
        {
          v190 = sub_7B48;
          v191 = v101;
          sub_5E3C(&v190, &v194, &v193, &v192);
          v80 = 0;
          v81 = 0;
          v190 = sub_7C08;
          v191 = v106;
          sub_5E3C(&v190, &v194, &v193, &v192);
          v78 = 0;
          v79 = 0;
          _os_log_impl(&dword_0, v96, v97, "cannedDialogIdAfterFollowUpLogic: %s", v84, 0xCu);
          sub_5E88(v86, 0, v85);
          sub_5E88(v89, 1, &type metadata for Any + 8);
          sub_C3934();

          v83 = v78;
        }
      }

      else
      {
        v41 = v116;

        v83 = v41;
      }

      v76 = v83;

      v117(v172, v167);

      v77 = v76;
    }

    else
    {
      v42 = v170;
      v43 = sub_BF704();
      v140(v42, v43, v167);
      v74 = sub_C3224();
      v71 = v74;
      v73 = sub_C3874();
      v72 = v73;
      v75 = sub_C3C64();
      if (os_log_type_enabled(v74, v73))
      {
        v44 = v116;
        v62 = sub_C3954();
        v58 = v62;
        v59 = sub_21E8(&qword_EE828, &qword_C5100);
        v60 = 0;
        v63 = sub_5DD4(0, v59, v59);
        v61 = v63;
        v64 = sub_5DD4(v60, &type metadata for Any + 8, &type metadata for Any + 8);
        v200 = v62;
        v199 = v63;
        v198 = v64;
        v65 = 0;
        v66 = &v200;
        sub_5E28(0, &v200);
        sub_5E28(v65, v66);
        v197 = v75;
        v67 = &v48;
        __chkstk_darwin(&v48);
        v68 = &v48 - 6;
        *(&v48 - 4) = v45;
        *(&v48 - 3) = &v199;
        *(&v48 - 2) = &v198;
        v69 = sub_21E8(&unk_EEFB0, qword_C5110);
        sub_8128();
        sub_C3654();
        v70 = v44;
        if (v44)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_0, v71, v72, "dalAgain with no follow up so returning dalAgain", v58, 2u);
          v56 = 0;
          sub_5E88(v61, 0, v59);
          sub_5E88(v64, v56, &type metadata for Any + 8);
          sub_C3934();

          v57 = v70;
        }
      }

      else
      {

        v57 = v116;
      }

      v55 = v57;

      v117(v170, v167);
      v46 = sub_41A8C();
      v53 = *v46;
      v54 = v46[1];

      v207 = v53;
      v208 = v54;

      v77 = v55;
    }

    v52 = v77;
  }

  else
  {
    v52 = v166;
  }

  v49 = &v207;
  v48 = &v202;
  swift_beginAccess();
  v51 = v207;
  v50 = v208;

  swift_endAccess();
  sub_8224(v49);
  return v51;
}

void *sub_146A0(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

uint64_t sub_14718(uint64_t a1, uint64_t a2)
{

  if (a2)
  {
    return a1;
  }

  sub_C3B84();
  __break(1u);
  return v3;
}

uint64_t sub_147DC(uint64_t a1, uint64_t a2)
{

  if (a2)
  {
    return a1;
  }

  result = sub_C3B84();
  __break(1u);
  return result;
}

uint64_t sub_148B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v106 = a6;
  v105 = a5;
  v104 = a4;
  v116 = a3;
  v107 = a2;
  v96 = a1;
  v98 = 0;
  v136 = 0;
  v135 = 0;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v97 = 0;
  v99 = sub_21E8(&qword_EEFF0, &qword_C5AB8);
  v100 = *(*(v99 - 8) + 64);
  __chkstk_darwin(0);
  v102 = (v100 + 15) & 0xFFFFFFFFFFFFFFF0;
  v101 = (v51 - v102);
  __chkstk_darwin(v7);
  v103 = (v51 - v102);
  v136 = v51 - v102;
  v108 = sub_C3234();
  v109 = *(v108 - 8);
  v110 = v109;
  __chkstk_darwin(v108 - 8);
  v111 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = v9;
  v135 = v10;
  v133 = v11;
  v131 = v12;
  v132 = v13;
  v130 = v6;
  v14 = sub_41AEC();
  v114 = *v14;
  v112 = v114;
  v115 = v14[1];
  v113 = v115;

  v128 = v114;
  v129 = v115;

  if (v116)
  {
    v94 = v107;
    v95 = v116;
  }

  else
  {
    LODWORD(v50) = 0;
    v49 = 153;
    LOBYTE(v48) = 2;
    sub_C3B84();
    __break(1u);
  }

  v15 = v111;
  v74 = &v137;
  sub_2E6E0(v112, v113, v94, v95, &v137);
  v127 = v140;
  v126 = v139;
  v125 = v138;
  v124 = v137;
  v16 = sub_BF704();
  (*(v110 + 16))(v15, v16, v108);
  sub_1D2DC(v74, v123);
  v82 = 7;
  v17 = swift_allocObject();
  v83 = v17;
  v18 = v137;
  v19 = v138;
  v20 = v139;
  v17[4] = v140;
  v17[3] = v20;
  v17[2] = v19;
  v17[1] = v18;
  v93 = sub_C3224();
  v75 = v93;
  v92 = sub_C3874();
  v76 = v92;
  v77 = 17;
  v86 = swift_allocObject();
  v78 = v86;
  v79 = 32;
  *(v86 + 16) = 32;
  v21 = swift_allocObject();
  v22 = v79;
  v87 = v21;
  v80 = v21;
  *(v21 + 16) = 8;
  v81 = v22;
  v23 = swift_allocObject();
  v24 = v83;
  v84 = v23;
  *(v23 + 16) = sub_1D3E4;
  *(v23 + 24) = v24;
  v25 = swift_allocObject();
  v26 = v84;
  v90 = v25;
  v85 = v25;
  *(v25 + 16) = sub_7BBC;
  *(v25 + 24) = v26;
  v91 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v88 = sub_C3C64();
  v89 = v27;

  v28 = v86;
  v29 = v89;
  *v89 = sub_7B48;
  v29[1] = v28;

  v30 = v87;
  v31 = v89;
  v89[2] = sub_7B48;
  v31[3] = v30;

  v32 = v89;
  v33 = v90;
  v89[4] = sub_7C08;
  v32[5] = v33;
  sub_4E48();

  if (os_log_type_enabled(v93, v92))
  {
    v34 = v97;
    v67 = sub_C3954();
    v64 = v67;
    v65 = sub_21E8(&qword_EE828, &qword_C5100);
    v68 = sub_5DD4(0, v65, v65);
    v66 = v68;
    v70 = 1;
    v69 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v121 = v67;
    v120 = v68;
    v119 = v69;
    v71 = &v121;
    sub_5E28(2, &v121);
    sub_5E28(v70, v71);
    v117 = sub_7B48;
    v118 = v78;
    sub_5E3C(&v117, v71, &v120, &v119);
    v72 = v34;
    v73 = v34;
    if (v34)
    {
      v62 = 0;

      __break(1u);
    }

    else
    {
      v117 = sub_7B48;
      v118 = v80;
      sub_5E3C(&v117, &v121, &v120, &v119);
      v60 = 0;
      v61 = 0;
      v117 = sub_7C08;
      v118 = v85;
      sub_5E3C(&v117, &v121, &v120, &v119);
      v58 = 0;
      v59 = 0;
      _os_log_impl(&dword_0, v75, v76, "CatMetadata: %s", v64, 0xCu);
      sub_5E88(v66, 0, v65);
      sub_5E88(v69, 1, &type metadata for Any + 8);
      sub_C3934();

      v63 = v58;
    }
  }

  else
  {
    v35 = v97;

    v63 = v35;
  }

  (*(v110 + 8))(v111, v108);
  v51[0] = *v104;
  v51[1] = *(v104 + 8);
  v52 = *(v104 + 16);

  v54 = &v137;
  sub_1D2DC(&v137, v122);

  v53 = v51;
  __chkstk_darwin(v51[0]);
  v36 = v107;
  v37 = v116;
  v51[-8] = v38;
  v51[-7] = v39;
  v51[-6] = v40;
  v51[-5] = v41;
  v55 = &v128;
  v48 = &v128;
  v49 = v36;
  v50 = v37;
  sub_5A43C(v42, v43, v44, 1, sub_1D4C4, &v51[-10], v45, v46);

  sub_1CFBC(v54);

  sub_1D4E4(v103, v101);
  v57 = *v101;
  v56 = v101[1];
  sub_1D624(v101 + *(v99 + 48), v96);
  sub_1D6F4(v103);
  sub_1CFBC(v54);
  sub_8224(v55);
  return v57;
}

uint64_t sub_151A8(void *a1)
{
  sub_1D2DC(a1, v4);
  memcpy(__dst, a1, sizeof(__dst));
  return sub_C34F4();
}

uint64_t sub_151F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v120 = a8;
  v158 = a1;
  v166 = a2;
  v161 = a3;
  v162 = a4;
  v145 = a5;
  v146 = a6;
  v147 = a7;
  v121 = sub_1ED0C;
  v122 = sub_7BBC;
  v123 = sub_1ED0C;
  v124 = sub_7BBC;
  v125 = sub_1A354;
  v126 = sub_7BBC;
  v127 = sub_7B48;
  v128 = sub_7B48;
  v129 = sub_7C08;
  v130 = sub_7B48;
  v131 = sub_7B48;
  v132 = sub_7C08;
  v133 = sub_7B48;
  v134 = sub_7B48;
  v135 = sub_7C08;
  v136 = "Fatal error";
  v137 = "Unexpectedly found nil while unwrapping an Optional value";
  v138 = "SocialConversationFlowDelegatePlugin/CannedDialogHelper.swift";
  v203 = 0;
  v202 = 0;
  v201 = 0;
  v200 = 0;
  v198 = 0;
  v199 = 0;
  v197 = 0;
  v195 = 0;
  v196 = 0;
  v194 = 0;
  v190 = 0;
  v182 = 0;
  v139 = 0;
  v140 = sub_C3234();
  v141 = *(v140 - 8);
  v142 = v140 - 8;
  v143 = (*(v141 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v140);
  v144 = &v61 - v143;
  v170 = sub_21E8(&qword_EEF88, &unk_C5A70);
  v148 = (*(*(v170 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v166);
  v149 = (&v61 - v148);
  v203 = &v61 - v148;
  v150 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v171 = (&v61 - v150);
  v151 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v169 = (&v61 - v151);
  v202 = &v61 - v151;
  v201 = a1;
  v200 = v13;
  v198 = v14;
  v199 = v15;
  v197 = v16;
  v195 = v17;
  v196 = v18;
  v163 = sub_16240(v13);
  v194 = v163;
  v154 = v191;
  sub_24F4(v158 + 16, v191);
  v153 = v192;
  v152 = v193;
  sub_808C(v154, v192);
  v164 = (*(v152 + 32))(v153);
  v190 = v164;
  sub_2560(v154);
  v157 = v186;
  sub_24F4(v158 + 16, v186);
  v156 = v187;
  v155 = v188;
  sub_808C(v157, v187);
  v19 = *(v155 + 8);
  v165 = v189;
  v19(v156);
  sub_2560(v157);
  v168 = v183;
  sub_24F4(v158 + 16, v183);
  v160 = v184;
  v159 = v185;
  sub_808C(v168, v184);
  v167 = (*(v159 + 24))(v160);
  sub_2FB84(v166, v161, v162, v163, v164, v165, v169);

  sub_2560(v168);
  sub_19F8C(v169, v171);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v114 = *v171;
    v182 = v114;
    v23 = sub_41B4C();
    v115 = *v23;
    v116 = v23[1];

    v24 = v116;
    v25 = v145;
    *v145 = v115;
    v25[1] = v24;

    v117 = *v145;
    v118 = v145[1];

    if (v147)
    {
      v112 = v146;
      v113 = v147;
    }

    else
    {
      sub_C3B84();
      __break(1u);
    }

    v26 = v144;
    v85 = v204;
    sub_2E6E0(v117, v118, v112, v113, v204);
    v27 = sub_BF704();
    (*(v141 + 16))(v26, v27, v140);
    sub_1D2DC(v166, v181);
    v84 = 80;
    v95 = 7;
    v87 = swift_allocObject();
    v86 = 64;
    memcpy((v87 + 16), v166, 0x40uLL);
    sub_1D2DC(v85, v180);
    v89 = swift_allocObject();
    memcpy((v89 + 16), v85, v86);
    swift_errorRetain();
    v96 = swift_allocObject();
    *(v96 + 16) = v114;
    v110 = sub_C3224();
    v111 = sub_C3884();
    v92 = 17;
    v98 = swift_allocObject();
    v91 = 32;
    *(v98 + 16) = 32;
    v99 = swift_allocObject();
    v93 = 8;
    *(v99 + 16) = 8;
    v94 = 32;
    v28 = swift_allocObject();
    v29 = v87;
    v88 = v28;
    *(v28 + 16) = v121;
    *(v28 + 24) = v29;
    v30 = swift_allocObject();
    v31 = v88;
    v100 = v30;
    *(v30 + 16) = v122;
    *(v30 + 24) = v31;
    v101 = swift_allocObject();
    *(v101 + 16) = v91;
    v102 = swift_allocObject();
    *(v102 + 16) = v93;
    v32 = swift_allocObject();
    v33 = v89;
    v90 = v32;
    *(v32 + 16) = v123;
    *(v32 + 24) = v33;
    v34 = swift_allocObject();
    v35 = v90;
    v103 = v34;
    *(v34 + 16) = v124;
    *(v34 + 24) = v35;
    v104 = swift_allocObject();
    *(v104 + 16) = v91;
    v105 = swift_allocObject();
    *(v105 + 16) = v93;
    v36 = swift_allocObject();
    v37 = v96;
    v97 = v36;
    *(v36 + 16) = v125;
    *(v36 + 24) = v37;
    v38 = swift_allocObject();
    v39 = v97;
    v107 = v38;
    *(v38 + 16) = v126;
    *(v38 + 24) = v39;
    v109 = sub_21E8(&unk_EEFA0, &unk_C50F0);
    v106 = sub_C3C64();
    v108 = v40;

    v41 = v98;
    v42 = v108;
    *v108 = v127;
    v42[1] = v41;

    v43 = v99;
    v44 = v108;
    v108[2] = v128;
    v44[3] = v43;

    v45 = v100;
    v46 = v108;
    v108[4] = v129;
    v46[5] = v45;

    v47 = v101;
    v48 = v108;
    v108[6] = v130;
    v48[7] = v47;

    v49 = v102;
    v50 = v108;
    v108[8] = v131;
    v50[9] = v49;

    v51 = v103;
    v52 = v108;
    v108[10] = v132;
    v52[11] = v51;

    v53 = v104;
    v54 = v108;
    v108[12] = v133;
    v54[13] = v53;

    v55 = v105;
    v56 = v108;
    v108[14] = v134;
    v56[15] = v55;

    v57 = v107;
    v58 = v108;
    v108[16] = v135;
    v58[17] = v57;
    sub_4E48();

    if (os_log_type_enabled(v110, v111))
    {
      v59 = v139;
      v77 = sub_C3954();
      v76 = sub_21E8(&qword_EE828, &qword_C5100);
      v78 = sub_5DD4(0, v76, v76);
      v79 = sub_5DD4(3, &type metadata for Any + 8, &type metadata for Any + 8);
      v80 = &v176;
      v176 = v77;
      v81 = &v175;
      v175 = v78;
      v82 = &v174;
      v174 = v79;
      sub_5E28(2, &v176);
      sub_5E28(3, v80);
      v172 = v127;
      v173 = v98;
      sub_5E3C(&v172, v80, v81, v82);
      v83 = v59;
      if (v59)
      {

        __break(1u);
      }

      else
      {
        v172 = v128;
        v173 = v99;
        sub_5E3C(&v172, &v176, &v175, &v174);
        v75 = 0;
        v172 = v129;
        v173 = v100;
        sub_5E3C(&v172, &v176, &v175, &v174);
        v74 = 0;
        v172 = v130;
        v173 = v101;
        sub_5E3C(&v172, &v176, &v175, &v174);
        v73 = 0;
        v172 = v131;
        v173 = v102;
        sub_5E3C(&v172, &v176, &v175, &v174);
        v72 = 0;
        v172 = v132;
        v173 = v103;
        sub_5E3C(&v172, &v176, &v175, &v174);
        v71 = 0;
        v172 = v133;
        v173 = v104;
        sub_5E3C(&v172, &v176, &v175, &v174);
        v70 = 0;
        v172 = v134;
        v173 = v105;
        sub_5E3C(&v172, &v176, &v175, &v174);
        v69 = 0;
        v172 = v135;
        v173 = v107;
        sub_5E3C(&v172, &v176, &v175, &v174);
        _os_log_impl(&dword_0, v110, v111, "Initial error with %s family, retrying now with %s: %s", v77, 0x20u);
        sub_5E88(v78, 0, v76);
        sub_5E88(v79, 3, &type metadata for Any + 8);
        sub_C3934();
      }
    }

    else
    {
    }

    _objc_release(v110);
    (*(v141 + 8))(v144, v140);
    v65 = v177;
    sub_24F4(v158 + 16, v177);
    v63 = v178;
    v62 = v179;
    sub_808C(v65, v178);
    v64 = (*(v62 + 24))(v63);
    v67 = v204;
    v68 = v189;
    sub_2FB84(v204, v161, v162, v163, v164, v189, v149);

    sub_2560(v65);
    v60 = sub_21E8(&qword_EEFF0, &qword_C5AB8);
    v66 = (v120 + *(v60 + 48));
    sub_146A0(v145, v120);
    sub_19F8C(v149, v66);
    sub_1A068(v149);
    sub_1CFBC(v67);

    sub_1A068(v169);
    sub_2560(v68);
    _objc_release(v164);
  }

  else
  {
    v20 = sub_21E8(&qword_EEFF0, &qword_C5AB8);
    v119 = (v120 + *(v20 + 48));
    sub_146A0(v145, v120);
    sub_19F8C(v169, v119);
    v21 = sub_C2134();
    (*(*(v21 - 8) + 8))(v171);
    sub_1A068(v169);
    sub_2560(v189);
    _objc_release(v164);
  }
}

uint64_t sub_16208(uint64_t *a1)
{
  v2 = *a1;

  return v2;
}

uint64_t sub_16240(uint64_t a1)
{
  v122 = a1;
  v132 = 0;
  v131 = sub_1710C;
  v95 = sub_1710C;
  v96 = sub_1D834;
  v97 = sub_7BBC;
  v98 = sub_7B48;
  v99 = sub_7B48;
  v100 = sub_7C08;
  v164 = 0;
  v163 = 0;
  v162 = 0;
  v158 = 0;
  v159 = 0;
  v157[0] = 0;
  v155 = 0uLL;
  v154 = 0;
  v116 = 0;
  v101 = sub_C3234();
  v102 = *(v101 - 8);
  v103 = v101 - 8;
  v104 = (*(v102 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v105 = &v33 - v104;
  v106 = sub_C1C64();
  v107 = *(v106 - 8);
  v108 = v106 - 8;
  v109 = (*(v107 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v116);
  v110 = &v33 - v109;
  v111 = sub_C1CA4();
  v112 = *(v111 - 8);
  v113 = v111 - 8;
  v114 = (*(v112 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v116);
  v115 = &v33 - v114;
  v117 = sub_C1CC4();
  v118 = *(v117 - 8);
  v119 = v117 - 8;
  v120 = (*(v118 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v116);
  v121 = &v33 - v120;
  v126 = sub_C1B54();
  v124 = *(v126 - 8);
  v125 = v126 - 8;
  v123 = (*(v124 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v122);
  v127 = &v33 - v123;
  v164 = v2;
  v163 = v1;
  v134 = &type metadata for String;
  v135 = &type metadata for Any + 8;
  v136 = &protocol witness table for String;
  v133 = sub_C3314();

  v162 = v133;
  sub_C1B44();
  v130 = sub_17188(v127);
  v128 = *(v124 + 8);
  v129 = v124 + 8;
  v128(v127, v126);
  v3 = sub_C33C4();
  v137 = 0;
  v138 = v3;
  v92 = v3;

  v162 = v92;

  sub_C1B44();
  v91 = sub_175C8(v127);
  v128(v127, v126);
  v4 = sub_C33C4();
  v93 = 0;
  v94 = v4;
  v162 = v4;

  v87 = sub_C3564("nextYear", 8uLL, 1);
  v88 = v5;
  sub_C1C94();
  (*(v112 + 104))(v115, enum case for Calendar.Component.year(_:), v111);
  sub_C1B44();
  v89 = sub_C1CB4();
  v128(v127, v126);
  (*(v112 + 8))(v115, v111);
  (*(v118 + 8))(v121, v117);
  result = v89;
  v90 = v89 + 1;
  if (__OFADD__(v89, 1))
  {
    __break(1u);
  }

  else
  {
    v69 = v161;
    v161[3] = &type metadata for Int;
    v161[0] = v90;
    v68 = v160;
    v160[0] = v87;
    v160[1] = v88;
    v86 = sub_21E8(&qword_EEFF8, &unk_C5AC0);
    v79 = &v162;
    sub_C33F4();
    sub_C1C14();
    isa = sub_C1BD4().super.isa;
    v71 = [(objc_class *)isa af_aceTemperatureUnit];
    _objc_release(isa);
    (*(v107 + 8))(v110, v106);
    v72 = sub_C3494();
    v73 = v8;
    v158 = v72;
    v159 = v8;
    _objc_release(v71);
    v82 = 1;
    v74 = sub_C3564("temperatureUnit", 0xFuLL, 1);
    v75 = v9;

    v76 = &type metadata for String;
    v157[6] = &type metadata for String;
    v157[3] = v72;
    v157[4] = v73;
    v157[1] = v74;
    v157[2] = v75;
    sub_C33F4();
    v157[0] = sub_C3314();
    v77 = sub_C3564("holiday", 7uLL, v82 & 1);
    v78 = v10;
    v80 = "firstadvent";
    v81 = 11;
    v11 = sub_C3564("firstadvent", 0xBuLL, v82 & 1);
    v156[13] = v76;
    v156[10] = v11;
    v156[11] = v12;
    v156[8] = v77;
    v156[9] = v78;
    sub_C33F4();
    v84 = sub_C3564(v80, v81, v82 & 1);
    v85 = v13;
    v83 = v157[0];

    v156[7] = v86;
    v156[4] = v83;
    v156[2] = v84;
    v156[3] = v85;
    sub_C33F4();
    v167 = *(v122 + 32);
    sub_146A0(&v167, v156);
    v168 = v167;
    if (*(&v167 + 1))
    {
      v65 = v168;
      v155 = v168;
      v64 = &type metadata for String;
      v154 = sub_C3314();
      v66 = sub_C3564("holiday", 7uLL, 1);
      v67 = v14;

      v153 = v64;
      v152 = v65;
      v151[2] = v66;
      v151[3] = v67;
      sub_C33F4();
      v166 = *(v122 + 48);
      sub_146A0(&v166, v151);
      v150 = v166;
      v63 = *(&v166 + 1) != 0;
      v62 = v63;
      sub_8224(&v150);
      if (v62)
      {
        v60 = sub_C3564("calendarType", 0xCuLL, 1);
        v61 = v15;
        v165 = *(v122 + 48);
        sub_146A0(&v165, &v141);
        v169 = v165;
        if (*(&v165 + 1))
        {
          v170 = v169;
          v144 = &type metadata for String;
          v142 = v169;
        }

        else
        {
          v142 = 0uLL;
          v143 = 0;
          v144 = 0;
        }

        v139 = v60;
        v140 = v61;
        sub_C33F4();
      }

      v49 = 7;
      v45 = sub_C3564("holiday", 7uLL, 1);
      v46 = v16;
      v44 = v154;

      v149[6] = v86;
      v149[3] = v44;
      v149[1] = v45;
      v149[2] = v46;
      sub_C33F4();
      v17 = v105;
      v18 = sub_BF704();
      (*(v102 + 16))(v17, v18, v101);

      v48 = 32;
      v19 = swift_allocObject();
      v20 = *(&v65 + 1);
      v50 = v19;
      *(v19 + 16) = v65;
      *(v19 + 24) = v20;
      v58 = sub_C3224();
      v59 = sub_C3874();
      v47 = 17;
      v52 = swift_allocObject();
      *(v52 + 16) = 32;
      v53 = swift_allocObject();
      *(v53 + 16) = 8;
      v21 = swift_allocObject();
      v22 = v50;
      v51 = v21;
      *(v21 + 16) = v96;
      *(v21 + 24) = v22;
      v23 = swift_allocObject();
      v24 = v51;
      v55 = v23;
      *(v23 + 16) = v97;
      *(v23 + 24) = v24;
      v57 = sub_21E8(&unk_EEFA0, &unk_C50F0);
      v54 = sub_C3C64();
      v56 = v25;

      v26 = v52;
      v27 = v56;
      *v56 = v98;
      v27[1] = v26;

      v28 = v53;
      v29 = v56;
      v56[2] = v99;
      v29[3] = v28;

      v30 = v55;
      v31 = v56;
      v56[4] = v100;
      v31[5] = v30;
      sub_4E48();

      if (os_log_type_enabled(v58, v59))
      {
        v32 = v93;
        v37 = sub_C3954();
        v36 = sub_21E8(&qword_EE828, &qword_C5100);
        v38 = sub_5DD4(0, v36, v36);
        v39 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
        v40 = v149;
        v149[0] = v37;
        v41 = &v148;
        v148 = v38;
        v42 = &v147;
        v147 = v39;
        sub_5E28(2, v149);
        sub_5E28(1, v40);
        v145 = v98;
        v146 = v52;
        sub_5E3C(&v145, v40, v41, v42);
        v43 = v32;
        if (v32)
        {

          __break(1u);
        }

        else
        {
          v145 = v99;
          v146 = v53;
          sub_5E3C(&v145, v149, &v148, &v147);
          v35 = 0;
          v145 = v100;
          v146 = v55;
          sub_5E3C(&v145, v149, &v148, &v147);
          _os_log_impl(&dword_0, v58, v59, "holiday: %s", v37, 0xCu);
          sub_5E88(v38, 0, v36);
          sub_5E88(v39, 1, &type metadata for Any + 8);
          sub_C3934();
        }
      }

      else
      {
      }

      _objc_release(v58);
      (*(v102 + 8))(v105, v101);
      sub_1D7C8(&v154);
    }

    v33 = &v162;
    v34 = v162;

    sub_1D7C8(v157);

    sub_1D7C8(v33);
    return v34;
  }

  return result;
}

uint64_t sub_17188(uint64_t a1)
{
  v29 = a1;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v18 = 0;
  v30 = sub_C1CA4();
  v25 = *(v30 - 8);
  v26 = v30 - 8;
  v17 = (v25[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v33 = &v17 - v17;
  v24 = sub_C1C74();
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v19 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v18);
  v23 = &v17 - v19;
  v43 = sub_C1CC4();
  v41 = *(v43 - 8);
  v42 = v43 - 8;
  v1 = __chkstk_darwin(v23);
  v44 = &v17 - v2;
  v50 = &v17 - v2;
  v49 = v29;
  v48 = v20;
  (*(v21 + 104))(v1);
  sub_C1C84();
  (*(v21 + 8))(v23, v24);
  v28 = v25[13];
  v27 = v25 + 13;
  v28(v33, enum case for Calendar.Component.month(_:), v30);
  v35 = sub_C1CB4();
  v32 = v25[1];
  v31 = v25 + 1;
  v32(v33, v30);
  v47 = v35;
  v28(v33, enum case for Calendar.Component.day(_:), v30);
  v38 = sub_C1CB4();
  v32(v33, v30);
  v46 = v38;
  v40 = sub_21E8(&qword_EF000, &qword_C5E10);
  v39 = sub_C3C64();
  v37 = v3;
  v34 = 1;
  v4 = sub_C3564("lunarCalendarMonth", 0x12uLL, 1);
  v5 = v34;
  v6 = v4;
  v7 = v35;
  v9 = v8;
  v10 = v37;
  *v37 = v6;
  v10[1] = v9;
  v36 = &type metadata for Int;
  v10[5] = &type metadata for Int;
  v10[2] = v7;
  v11 = sub_C3564("lunarCalendarDay", 0x10uLL, v5 & 1);
  v12 = v36;
  v13 = v37;
  v14 = v38;
  v37[6] = v11;
  v13[7] = v15;
  v13[11] = v12;
  v13[8] = v14;
  sub_4E48();
  v45 = sub_C3374();
  (*(v41 + 8))(v44, v43);
  return v45;
}

uint64_t sub_175C8(uint64_t a1)
{
  v31 = a1;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v16 = 0;
  v32 = sub_C1CA4();
  v27 = *(v32 - 8);
  v28 = v32 - 8;
  v15 = (v27[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v35 = v11 - v15;
  v25 = sub_C1C74();
  v22 = *(v25 - 8);
  v23 = v25 - 8;
  v17 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v24 = v11 - v17;
  v18 = sub_C1CC4();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v1 = __chkstk_darwin(v24);
  v26 = v11 - v2;
  v44 = v11 - v2;
  v43 = v31;
  v42 = v21;
  (*(v22 + 104))(v1);
  sub_C1C84();
  (*(v22 + 8))(v24, v25);
  v30 = v27[13];
  v29 = v27 + 13;
  v30(v35, enum case for Calendar.Component.day(_:), v32);
  v37 = sub_C1CB4();
  v34 = v27[1];
  v33 = v27 + 1;
  v34(v35, v32);
  v41 = v37;
  v30(v35, enum case for Calendar.Component.hour(_:), v32);
  v36 = sub_C1CB4();
  v34(v35, v32);
  result = v37;
  v40 = v36;
  v38 = 25 - v37;
  if (__OFSUB__(25, v37))
  {
    __break(1u);
    goto LABEL_12;
  }

  v14 = 24 * v38;
  if ((24 * v38) >> 64 != (24 * v38) >> 63)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = v14 - v36;
  if (!__OFSUB__(v14, v36))
  {
    v39 = v13;
    v11[2] = sub_21E8(&qword_EF000, &qword_C5E10);
    v11[1] = sub_C3C64();
    v11[0] = v6;
    v7 = sub_C3564("hoursToChristmas", 0x10uLL, 1);
    v8 = v11[0];
    v9 = v13;
    *v11[0] = v7;
    v8[1] = v10;
    v8[5] = &type metadata for Int;
    v8[2] = v9;
    sub_4E48();
    v12 = sub_C3374();
    (*(v19 + 8))(v26, v18);
    return v12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_17A44(uint64_t a1, uint64_t a2)
{
  v66 = a1;
  v67 = a2;
  v85 = 0;
  v83 = 0;
  v84 = 0;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v3 = sub_21E8(&qword_EE820, &qword_C5A60);
  v46 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v47 = &v36[-v46];
  v48 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v36[-v46]);
  v49 = &v36[-v48];
  v50 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v36[-v48]);
  v51 = &v36[-v50];
  v52 = sub_C1B54();
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v66);
  v56 = &v36[-v55];
  v85 = &v36[-v55];
  v83 = v6;
  v84 = v7;
  v82 = v2;
  v59 = 3;
  v62 = &type metadata for String;
  v58 = sub_C3C64();
  v57 = v8;
  v65 = 1;
  v9 = sub_C3564("SocialConversation#dalDismissAssistant", 0x26uLL, 1);
  v10 = v57;
  v11 = v65;
  *v57 = v9;
  v10[1] = v12;
  v13 = sub_C3564("SocialConversation#dalOkay", 0x1AuLL, v11 & 1);
  v14 = v57;
  v15 = v65;
  v57[2] = v13;
  v14[3] = v16;
  v17 = sub_C3564("SocialConversation#dalGoodBye", 0x1DuLL, v15 & 1);
  v18 = v57;
  v57[4] = v17;
  v18[5] = v19;
  sub_4E48();
  v63 = v20;
  v81 = v20;
  v61 = sub_C3C64();
  v60 = v21;
  v22 = sub_C3564("SocialConversation#dalProfanityAtSiri", 0x25uLL, v65 & 1);
  v23 = v60;
  v24 = v65;
  *v60 = v22;
  v23[1] = v25;
  v26 = sub_C3564("SocialConversation#dalGenderProfanityAtSiri", 0x2BuLL, v24 & 1);
  v27 = v60;
  v28 = v65;
  v60[2] = v26;
  v27[3] = v29;
  v30 = sub_C3564("SocialConversation#dalSexuallyHarassSiri", 0x28uLL, v28 & 1);
  v31 = v60;
  v60[4] = v30;
  v31[5] = v32;
  sub_4E48();
  v71 = v33;
  v80 = v33;
  v78[2] = v63;
  v64 = v78;
  v78[0] = v66;
  v78[1] = v67;
  v68 = sub_21E8(&qword_EEFE0, &qword_C5AB0);
  v69 = sub_1D00C();
  v70 = &protocol witness table for String;
  v72 = sub_C3684();
  v79 = v72 & v65;
  v77 = v71;
  v75 = v66;
  v76 = v67;
  if (sub_C3684())
  {
    v43 = (v45 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin18CannedDialogHelper_previousProfanityAtSiri);
    v44 = &v74;
    swift_beginAccess();
    sub_B5E4(v43, v51);
    swift_endAccess();
    if ((*(v53 + 48))(v51, 1, v52) == 1)
    {
      sub_BA04(v51);
      v42 = v72;
    }

    else
    {
      (*(v53 + 32))(v56, v51, v52);
      sub_C1B04();
      if (v34 < -60.0)
      {
        (*(v53 + 8))(v56, v52, -60.0);
        v42 = v72;
      }

      else
      {
        v79 = 1;
        (*(v53 + 8))(v56, v52, -60.0);
        v42 = 1;
      }
    }

    v40 = v42;
    sub_C1B44();
    (*(v53 + 56))(v49, 0, 1, v52);
    sub_B5E4(v49, v47);
    v38 = (v45 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin18CannedDialogHelper_previousProfanityAtSiri);
    v39 = &v73;
    swift_beginAccess();
    sub_B7DC(v47, v38);
    swift_endAccess();
    sub_BA04(v49);
    v41 = v40;
  }

  else
  {
    v41 = v72;
  }

  v37 = v41;

  return v37 & 1;
}

uint64_t sub_18164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v249 = a6;
  v248 = a5;
  v247 = a4;
  v246 = a3;
  v251 = a2;
  v250 = a1;
  v237 = 0;
  v307 = 0;
  v306 = 0;
  v305 = 0;
  v304 = 0;
  v303 = 0;
  v302 = 0;
  v301 = 0;
  v300 = 0;
  v299 = 0;
  v229 = 0;
  v288 = 0;
  v287 = 0;
  v282 = 0;
  v281 = 0;
  v280 = 0;
  v279 = 0;
  v276 = 0;
  v265 = 0;
  v230 = sub_C3234();
  v231 = *(v230 - 8);
  v232 = v231;
  v233 = *(v231 + 64);
  __chkstk_darwin(v230 - 8);
  v235 = (v233 + 15) & 0xFFFFFFFFFFFFFFF0;
  v234 = v67 - v235;
  __chkstk_darwin(v67 - v235);
  v236 = v67 - v235;
  v238 = *(sub_21E8(&qword_EF008, &unk_C5AD0) - 8);
  v239 = v238;
  v242 = *(v238 + 64);
  v240 = v242;
  __chkstk_darwin(v237);
  v244 = (v242 + 15) & 0xFFFFFFFFFFFFFFF0;
  v241 = v67 - v244;
  __chkstk_darwin(v7);
  v243 = v67 - v244;
  __chkstk_darwin(v8);
  v245 = v67 - v244;
  v307 = v67 - v244;
  v252 = type metadata accessor for DialogServiceButton(v9);
  __chkstk_darwin(v250);
  v253 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v306 = v253;
  v304 = v11;
  v305 = v12;
  v302 = v13;
  v303 = v14;
  v300 = v15;
  v301 = v16;
  v299 = v6;
  v256 = v293;
  sub_24F4(v6 + 16, v293);
  v255 = v294;
  v254 = v295;
  sub_808C(v256, v294);
  v17 = *(v254 + 8);
  v257 = v296;
  v17(v255);
  sub_2560(v256);
  v259 = v297;
  v258 = v298;
  sub_808C(v257, v297);
  if (sub_C1F74())
  {
    v227 = 0;
  }

  else
  {
    v226 = v297;
    v225 = v298;
    sub_808C(v296, v297);
    v227 = sub_C1F84() ^ 1;
  }

  if (v227)
  {
    v223 = v297;
    v222 = v298;
    sub_808C(v296, v297);
    v224 = sub_C1FA4() ^ 1;
  }

  else
  {
    v224 = 0;
  }

  if (v224)
  {

    if (!v251)
    {
      v90 = 0;
      v91 = sub_1D918();
      v92 = sub_C3C64();
      sub_2560(v296);
      v101 = v92;
      v102 = v229;
      return v101;
    }

    v220 = v250;
    v221 = v251;
    v219 = v251;
    v218 = v250;
    v287 = v250;
    v288 = v251;

    v283 = v248;
    v284 = v249;

    if (v284)
    {
      v285 = v283;
      v286 = v284;
    }

    else
    {

      v285 = v218;
      v286 = v219;
      if (v284)
      {
        sub_8224(&v283);
      }
    }

    v209 = v286;
    sub_19BC4(v285, v286, v246, v247, v253);

    v216 = *v253;
    v210 = v216;
    v217 = *(v253 + 1);
    v211 = v217;

    v281 = v216;
    v282 = v217;
    sub_1D97C(&v253[*(v252 + 20)], v245);
    v18 = &v253[*(v252 + 24)];
    v214 = *v18;
    v212 = v214;
    v215 = *(v18 + 1);
    v213 = v215;

    v279 = v214;
    v280 = v215;
    v277 = v216;
    v278 = v217;
    v208 = v217 != 0;
    v207 = v208;

    if (v207)
    {

      if (v211)
      {
        v205 = v210;
        v206 = v211;
        v202 = v211;
        v203 = sub_C3594();

        v204 = v203 > 0;
        goto LABEL_20;
      }

      sub_C3B84();
      __break(1u);
    }

    v204 = 0;
LABEL_20:
    v201 = v204;

    if (v201)
    {
      v19 = v236;
      v20 = sub_BF704();
      (*(v232 + 16))(v19, v20, v230);

      v180 = 32;
      v185 = 32;
      v186 = 7;
      v21 = swift_allocObject();
      v22 = v211;
      v23 = v243;
      v24 = v21;
      v25 = v245;
      v177 = v24;
      *(v24 + 16) = v210;
      *(v24 + 24) = v22;
      sub_1D97C(v25, v23);
      v172 = (*(v239 + 80) + 16) & ~*(v239 + 80);
      v187 = swift_allocObject();
      sub_1DCD8(v243, (v187 + v172));
      v200 = sub_C3224();
      v173 = v200;
      v199 = sub_C3874();
      v174 = v199;
      v181 = 17;
      v190 = swift_allocObject();
      v175 = v190;
      *(v190 + 16) = v180;
      v191 = swift_allocObject();
      v176 = v191;
      v183 = 8;
      *(v191 + 16) = 8;
      v26 = swift_allocObject();
      v27 = v177;
      v178 = v26;
      *(v26 + 16) = sub_1DB8C;
      *(v26 + 24) = v27;
      v28 = swift_allocObject();
      v29 = v178;
      v192 = v28;
      v179 = v28;
      *(v28 + 16) = sub_7BBC;
      *(v28 + 24) = v29;
      v193 = swift_allocObject();
      v182 = v193;
      *(v193 + 16) = v180;
      v194 = swift_allocObject();
      v184 = v194;
      *(v194 + 16) = v183;
      v30 = swift_allocObject();
      v31 = v187;
      v188 = v30;
      *(v30 + 16) = sub_1DE00;
      *(v30 + 24) = v31;
      v32 = swift_allocObject();
      v33 = v188;
      v197 = v32;
      v189 = v32;
      *(v32 + 16) = sub_7BBC;
      *(v32 + 24) = v33;
      v198 = sub_21E8(&unk_EEFA0, &unk_C50F0);
      v195 = sub_C3C64();
      v196 = v34;

      v35 = v190;
      v36 = v196;
      *v196 = sub_7B48;
      v36[1] = v35;

      v37 = v191;
      v38 = v196;
      v196[2] = sub_7B48;
      v38[3] = v37;

      v39 = v192;
      v40 = v196;
      v196[4] = sub_7C08;
      v40[5] = v39;

      v41 = v193;
      v42 = v196;
      v196[6] = sub_7B48;
      v42[7] = v41;

      v43 = v194;
      v44 = v196;
      v196[8] = sub_7B48;
      v44[9] = v43;

      v45 = v196;
      v46 = v197;
      v196[10] = sub_7C08;
      v45[11] = v46;
      sub_4E48();

      if (os_log_type_enabled(v200, v199))
      {
        v47 = v229;
        v165 = sub_C3954();
        v162 = v165;
        v163 = sub_21E8(&qword_EE828, &qword_C5100);
        v166 = sub_5DD4(0, v163, v163);
        v164 = v166;
        v168 = 2;
        v167 = sub_5DD4(2, &type metadata for Any + 8, &type metadata for Any + 8);
        v264 = v165;
        v263 = v166;
        v262 = v167;
        v169 = &v264;
        sub_5E28(v168, &v264);
        sub_5E28(v168, v169);
        v260 = sub_7B48;
        v261 = v175;
        sub_5E3C(&v260, v169, &v263, &v262);
        v170 = v47;
        v171 = v47;
        if (v47)
        {
          v160 = 0;

          __break(1u);
        }

        else
        {
          v260 = sub_7B48;
          v261 = v176;
          sub_5E3C(&v260, &v264, &v263, &v262);
          v158 = 0;
          v159 = 0;
          v260 = sub_7C08;
          v261 = v179;
          sub_5E3C(&v260, &v264, &v263, &v262);
          v156 = 0;
          v157 = 0;
          v260 = sub_7B48;
          v261 = v182;
          sub_5E3C(&v260, &v264, &v263, &v262);
          v154 = 0;
          v155 = 0;
          v260 = sub_7B48;
          v261 = v184;
          sub_5E3C(&v260, &v264, &v263, &v262);
          v152 = 0;
          v153 = 0;
          v260 = sub_7C08;
          v261 = v189;
          sub_5E3C(&v260, &v264, &v263, &v262);
          v150 = 0;
          v151 = 0;
          _os_log_impl(&dword_0, v173, v174, "button with label: %s link: %s", v162, 0x16u);
          sub_5E88(v164, 0, v163);
          sub_5E88(v167, 2, &type metadata for Any + 8);
          sub_C3934();

          v161 = v150;
        }
      }

      else
      {
        v48 = v229;

        v161 = v48;
      }

      v148 = v161;

      (*(v232 + 8))(v236, v230);
      sub_1E020();
      v149 = sub_EE34();
      v276 = v149;

      if (v211)
      {
        v146 = v210;
        v147 = v211;
        v143 = v211;
        v144 = sub_C3484();

        v145 = v144;
      }

      else
      {
        v145 = 0;
      }

      v138 = v145;
      [v149 setText:?];

      v139 = sub_C1AC4();
      v140 = *(v139 - 8);
      v141 = *(v140 + 48);
      v142 = (v140 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if ((v141)(v245, 1) != 1)
      {
        sub_1E084();
        v136 = sub_EE34();
        v265 = v136;
        sub_1D97C(v245, v241);
        v49 = v141(v241, 1, v139);
        if (v49 == 1)
        {
          v135 = 0;
        }

        else
        {
          sub_C1A74((v49 - 1));
          v134 = v50;
          (*(v140 + 8))(v241, v139);
          v135 = v134;
        }

        v128 = v135;
        [v136 setPunchOutUri:?];

        v131 = sub_21E8(&qword_EF080, &qword_C5AE0);
        v130 = sub_C3C64();
        v129 = v51;
        v52 = v136;
        *v129 = v136;
        sub_4E48();
        v132 = v53;
        isa = sub_C36C4().super.isa;

        [v149 setCommands:isa];
      }

      else
      {
        v274 = v212;
        v275 = v213;
        v127 = v213 != 0;
        if (v213)
        {
          v124 = sub_21E8(&qword_EF080, &qword_C5AE0);
          v125 = sub_C3C64();
          v126 = v54;

          if (v213)
          {
            v122 = v212;
            v123 = v213;
          }

          else
          {
            sub_C3B84();
            __break(1u);
          }

          v118 = v123;
          v115 = v122;
          v117 = v267;
          sub_24F4(v228 + 16, v267);
          v114 = v268;
          v113 = v269;
          sub_808C(v117, v268);
          v55 = *(v113 + 8);
          v116 = &v266;
          v55(v114);
          v119 = sub_52CC4(v115, v118, v116);
          sub_2560(v116);
          sub_2560(v117);

          *v126 = v119;
          sub_4E48();
          v120 = v56;
          v121 = sub_C36C4().super.isa;

          [v149 setCommands:v121];
        }

        else
        {
          v110 = sub_21E8(&qword_EF080, &qword_C5AE0);
          v109 = sub_C3C64();
          v107 = v57;
          v106 = v271;
          sub_24F4(v228 + 16, v271);
          v104 = v272;
          v103 = v273;
          sub_808C(v106, v272);
          v58 = *(v103 + 8);
          v105 = &v270;
          v58(v104);
          v108 = sub_52CC4(v218, v219, v105);
          sub_2560(v105);
          sub_2560(v106);
          *v107 = v108;
          sub_4E48();
          v111 = v59;
          v112 = sub_C36C4().super.isa;

          [v149 setCommands:v112];
        }
      }

      v98 = sub_1D918();
      v99 = sub_C3C64();
      v97 = v60;
      v61 = v149;
      *v97 = v149;
      sub_4E48();
      v100 = v62;

      sub_1DAA4(v245);

      sub_1A104(v253);

      sub_2560(v296);
      v101 = v100;
      v102 = v148;
    }

    else
    {
      v93 = 0;
      v94 = sub_1D918();
      v95 = sub_C3C64();
      v96 = v95;

      sub_1DAA4(v245);

      sub_1A104(v253);

      sub_2560(v296);
      v101 = v96;
      v102 = v229;
    }

    return v101;
  }

  v63 = v234;
  v64 = sub_BF704();
  (*(v232 + 16))(v63, v64, v230);
  v88 = sub_C3224();
  v85 = v88;
  v87 = sub_C3874();
  v86 = v87;
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  v89 = sub_C3C64();
  if (os_log_type_enabled(v88, v87))
  {
    v65 = v229;
    v76 = sub_C3954();
    v72 = v76;
    v73 = sub_21E8(&qword_EE828, &qword_C5100);
    v74 = 0;
    v77 = sub_5DD4(0, v73, v73);
    v75 = v77;
    v78 = sub_5DD4(v74, &type metadata for Any + 8, &type metadata for Any + 8);
    v292 = v76;
    v291 = v77;
    v290 = v78;
    v79 = 0;
    v80 = &v292;
    sub_5E28(0, &v292);
    sub_5E28(v79, v80);
    v289 = v89;
    v81 = v67;
    __chkstk_darwin(v67);
    v82 = &v67[-6];
    v83 = sub_21E8(&unk_EEFB0, qword_C5110);
    sub_8128();
    sub_C3654();
    v84 = v65;
    if (v65)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v85, v86, "not creating snippets for device type", v72, 2u);
      v70 = 0;
      sub_5E88(v75, 0, v73);
      sub_5E88(v78, v70, &type metadata for Any + 8);
      sub_C3934();

      v71 = v84;
    }
  }

  else
  {

    v71 = v229;
  }

  v69 = v71;

  (*(v232 + 8))(v234, v230);
  v67[1] = 0;
  v67[2] = sub_1D918();
  v68 = sub_C3C64();
  sub_2560(v296);
  v101 = v68;
  v102 = v69;
  return v101;
}

uint64_t sub_19948(uint64_t a1, uint64_t a2)
{

  v6 = a1;
  v7 = a2;
  if (a2)
  {
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = sub_C3564("-", 1uLL, 1);
    v9 = v2;
  }

  return v8;
}

uint64_t sub_199EC(uint64_t a1)
{
  v9 = a1;
  v10 = (*(*(sub_21E8(&qword_EF008, &unk_C5AD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v11 = &v5 - v10;
  sub_1D97C(v1, &v5 - v10);
  v12 = sub_C1AC4();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  if ((*(v13 + 48))(v11, 1) == 1)
  {
    sub_1DAA4(v11);
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v5 = sub_C1A54();
    v6 = v2;
    (*(v13 + 8))(v11, v12);
    v7 = v5;
    v8 = v6;
  }

  v15 = v7;
  v16 = v8;
  if (v8)
  {
    v17 = v15;
    v18 = v16;
  }

  else
  {
    v17 = sub_C3564("-", 1uLL, 1);
    v18 = v3;
    if (v16)
    {
      sub_8224(&v15);
    }
  }

  return v17;
}

double sub_19BC4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v34 = 0;
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v37 = a1;
  v38 = a2;
  v35 = a3;
  v36 = a4;

  if (!a2)
  {
    return sub_2F6D4(a5);
  }

  v32 = a1;
  v33 = a2;
  v40._countAndFlagsBits = sub_C3564("button", 6uLL, 1);
  v17 = sub_C3614(v40);

  if (v17)
  {

    v30 = a1;
    v31 = a2;
    v15 = a1;
    v16 = a2;
  }

  else
  {
    sub_C3564("button", 6uLL, 1);
    v41._countAndFlagsBits = sub_C3564("dal", 3uLL, 1);
    v14 = sub_C3614(v41);

    if (v14)
    {
      sub_1E0E8();
      sub_C3814();
      sub_C3634();
    }

    v12 = sub_C3554();
    v13 = v5;

    v30 = v12;
    v31 = v13;
    v15 = v12;
    v16 = v13;
  }

  sub_2E6E0(a3, a4, v15, v16, v39);
  sub_24F4(v22 + 16, v27);
  v8 = v28;
  v7 = v29;
  sub_808C(v27, v28);
  (*(v7 + 24))(v8);
  sub_24F4(v22 + 16, v24);
  v10 = v25;
  v9 = v26;
  sub_808C(v24, v25);
  v11 = (*(v9 + 32))(v10);
  sub_34638(v39, v11, a5);
  _objc_release(v11);
  sub_2560(v24);

  sub_2560(v27);
  sub_1CFBC(v39);
  sub_8224(&v30);

  return result;
}

void *sub_19F8C(uint64_t *a1, void *a2)
{
  sub_21E8(&qword_EEF88, &unk_C5A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *a1;
    swift_errorRetain();
    *a2 = v4;
  }

  else
  {
    v2 = sub_C2134();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

void *sub_1A068(void *a1)
{
  sub_21E8(&qword_EEF88, &unk_C5A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v1 = sub_C2134();
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_1A104(uint64_t a1)
{

  v2 = *(type metadata accessor for DialogServiceButton(0) + 20);
  v4 = sub_C1AC4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1 + v2, 1))
  {
    (*(v5 + 8))(a1 + v2, v4);
  }

  return a1;
}

uint64_t sub_1A1F8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1[8];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_4CE4;

  return sub_EF68(a1, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1A36C(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t sub_1A38C(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 24) = result;
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  return result;
}

uint64_t sub_1A3AC(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 48) = result;
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return result;
}

uint64_t sub_1A3BC@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v184 = a2;
  v183 = a1;
  v137 = a3;
  v138 = a1;
  v178 = 0;
  v231 = 0;
  v230 = 0;
  v229 = 0;
  v228 = 0;
  v227 = 0;
  v226 = 0;
  v225 = 0;
  v224 = 0;
  v223 = 0;
  v222 = 0;
  v221 = 0;
  v220[0] = 0;
  v219[1] = 0;
  v219[0] = 0;
  v214 = 0;
  v213 = 0;
  v212 = 0;
  v211 = 0;
  v210[1] = 0;
  v210[0] = 0;
  v205 = 0;
  v204 = 0;
  v139 = 0;
  v140 = sub_C24F4();
  v141 = *(v140 - 8);
  v142 = v141;
  v143 = *(v141 + 64);
  __chkstk_darwin(0);
  v145 = (v143 + 15) & 0xFFFFFFFFFFFFFFF0;
  v144 = &v40 - v145;
  __chkstk_darwin(v4);
  v146 = &v40 - v145;
  v231 = &v40 - v145;
  v147 = sub_C25A4();
  v148 = *(v147 - 8);
  v149 = v148;
  v150 = *(v148 + 64);
  __chkstk_darwin(v178);
  v152 = (v150 + 15) & 0xFFFFFFFFFFFFFFF0;
  v151 = &v40 - v152;
  __chkstk_darwin(v5);
  v153 = &v40 - v152;
  v230 = &v40 - v152;
  v154 = sub_C2574();
  v155 = *(v154 - 8);
  v156 = v155;
  __chkstk_darwin(v178);
  v157 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = v157;
  v158 = sub_C2534();
  v159 = *(v158 - 8);
  v160 = v159;
  v161 = *(v159 + 64);
  __chkstk_darwin(v178);
  v163 = (v161 + 15) & 0xFFFFFFFFFFFFFFF0;
  v162 = &v40 - v163;
  __chkstk_darwin(v7);
  v164 = &v40 - v163;
  v228 = &v40 - v163;
  v165 = sub_C24C4();
  v166 = *(v165 - 8);
  v167 = v166;
  v168 = *(v166 + 64);
  __chkstk_darwin(v165 - 8);
  v170 = (v168 + 15) & 0xFFFFFFFFFFFFFFF0;
  v169 = &v40 - v170;
  __chkstk_darwin(&v40 - v170);
  v171 = &v40 - v170;
  v227 = &v40 - v170;
  v174 = *(*(sub_21E8(&qword_EF098, &qword_C5AE8) - 8) + 64);
  __chkstk_darwin(v178);
  v176 = (v174 + 15) & 0xFFFFFFFFFFFFFFF0;
  v172 = &v40 - v176;
  __chkstk_darwin(v8);
  v173 = &v40 - v176;
  v226 = &v40 - v176;
  __chkstk_darwin(v9);
  v175 = &v40 - v176;
  __chkstk_darwin(v10);
  v177 = &v40 - v176;
  v225 = &v40 - v176;
  v179 = sub_C2094();
  v180 = *(v179 - 8);
  v181 = v180;
  __chkstk_darwin(v178);
  v182 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = v182;
  v185 = sub_C3234();
  v186 = *(v185 - 8);
  v187 = v186;
  v188 = *(v186 + 64);
  __chkstk_darwin(v183);
  v190 = (v188 + 15) & 0xFFFFFFFFFFFFFFF0;
  v189 = &v40 - v190;
  __chkstk_darwin(v12);
  v191 = &v40 - v190;
  v223 = v13;
  v222 = v14;
  v221 = v3;
  v220[1] = v14;
  v193 = sub_21E8(&qword_EEFE0, &qword_C5AB0);
  v192 = v193;
  v194 = sub_1E160();
  if ((sub_C3804() & 1) == 0)
  {
    v18 = v189;
    v19 = sub_BF704();
    (*(v187 + 16))(v18, v19, v185);

    v103 = 7;
    v104 = swift_allocObject();
    *(v104 + 16) = v184;
    v114 = sub_C3224();
    v96 = v114;
    v113 = sub_C3874();
    v97 = v113;
    v98 = 17;
    v107 = swift_allocObject();
    v99 = v107;
    v100 = 32;
    *(v107 + 16) = 32;
    v20 = swift_allocObject();
    v21 = v100;
    v108 = v20;
    v101 = v20;
    *(v20 + 16) = 8;
    v102 = v21;
    v22 = swift_allocObject();
    v23 = v104;
    v105 = v22;
    *(v22 + 16) = sub_1E228;
    *(v22 + 24) = v23;
    v24 = swift_allocObject();
    v25 = v105;
    v111 = v24;
    v106 = v24;
    *(v24 + 16) = sub_7BBC;
    *(v24 + 24) = v25;
    v112 = sub_21E8(&unk_EEFA0, &unk_C50F0);
    v109 = sub_C3C64();
    v110 = v26;

    v27 = v107;
    v28 = v110;
    *v110 = sub_7B48;
    v28[1] = v27;

    v29 = v108;
    v30 = v110;
    v110[2] = sub_7B48;
    v30[3] = v29;

    v31 = v110;
    v32 = v111;
    v110[4] = sub_7C08;
    v31[5] = v32;
    sub_4E48();

    if (os_log_type_enabled(v114, v113))
    {
      v33 = v139;
      v89 = sub_C3954();
      v86 = v89;
      v87 = sub_21E8(&qword_EE828, &qword_C5100);
      v90 = sub_5DD4(0, v87, v87);
      v88 = v90;
      v92 = 1;
      v91 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v203 = v89;
      v202 = v90;
      v201 = v91;
      v93 = &v203;
      sub_5E28(2, &v203);
      sub_5E28(v92, v93);
      v199 = sub_7B48;
      v200 = v99;
      sub_5E3C(&v199, v93, &v202, &v201);
      v94 = v33;
      v95 = v33;
      if (v33)
      {
        v84 = 0;

        __break(1u);
      }

      else
      {
        v199 = sub_7B48;
        v200 = v101;
        sub_5E3C(&v199, &v203, &v202, &v201);
        v82 = 0;
        v83 = 0;
        v199 = sub_7C08;
        v200 = v106;
        sub_5E3C(&v199, &v203, &v202, &v201);
        v80 = 0;
        v81 = 0;
        _os_log_impl(&dword_0, v96, v97, "Creating NL context update for %s", v86, 0xCu);
        sub_5E88(v88, 0, v87);
        sub_5E88(v91, 1, &type metadata for Any + 8);
        sub_C3934();

        v85 = v80;
      }
    }

    else
    {
      v34 = v139;

      v85 = v34;
    }

    v79 = v85;

    (*(v187 + 8))(v189, v185);
    sub_C2084();
    if (v138)
    {
      v211 = sub_C3C64();

      v209 = v184;
      sub_C3824();
      for (i = v79; ; i = v67)
      {
        v75 = i;
        sub_21E8(&qword_EF0A8, &qword_C5AF0);
        sub_C3B44();
        v76 = v207;
        v77 = v208;
        if (!v208)
        {
          break;
        }

        v73 = v76;
        v74 = v77;
        v69 = v77;
        v204 = v76;
        v205 = v77;
        sub_1BB48(v76, v77, v177);
        v70 = sub_C2464();
        v35 = *(v70 - 8);
        v71 = *(v35 + 48);
        v72 = (v35 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        if ((v71)(v177, 1) != 1)
        {
          sub_C24B4();
          sub_C2524();
          sub_1E438(v177, v175);
          if (v71(v175, 1, v70) == 1)
          {
            sub_C3B84();
            __break(1u);
          }

          sub_C2514();
          (*(v160 + 16))(v162, v164, v158);
          sub_C24A4();
          (*(v167 + 16))(v169, v171, v165);
          sub_21E8(&qword_EF0C0, &unk_C5B00);
          sub_C3724();
          (*(v160 + 8))(v164, v158);
          (*(v167 + 8))(v171, v165);
        }

        v67 = v75;
        sub_1E390(v177);
      }

      sub_1D7C8(v210);
      v65 = v211;

      v206 = v65;
      v64 = sub_21E8(&qword_EF0C0, &unk_C5B00);
      sub_1E560();
      v66 = sub_C3804();

      if (v66)
      {
        (*(v181 + 56))(v137, 1, 1, v179);
        sub_1D7C8(&v211);
        (*(v181 + 8))(v182, v179);
        return v75;
      }

      sub_C2564();
      sub_C2594();
      v61 = v211;

      sub_C2584();
      (*(v149 + 16))(v151, v153, v147);
      sub_C2544();
      v62 = sub_C3C64();
      (*(v156 + 16))(v36, v157, v154);
      sub_4E48();
      sub_C2074();
      (*(v149 + 8))(v153, v147);
      (*(v156 + 8))(v157, v154);
      sub_1D7C8(&v211);
      v63 = v75;
    }

    else
    {
      v57 = 0;
      v58 = sub_C2464();
      v59 = v58;
      v220[0] = sub_C3C64();

      v218 = v184;
      sub_C3824();
      for (j = v79; ; j = v47)
      {
        v54 = j;
        sub_21E8(&qword_EF0A8, &qword_C5AF0);
        sub_C3B44();
        v55 = v216;
        v56 = v217;
        if (!v217)
        {
          break;
        }

        v52 = v55;
        v53 = v56;
        v49 = v56;
        v212 = v55;
        v213 = v56;
        sub_1BB48(v55, v56, v173);
        v37 = *(v59 - 8);
        v50 = *(v37 + 48);
        v51 = (v37 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        if ((v50)(v173, 1) != 1)
        {
          sub_1E438(v173, v172);
          if (v50(v172, 1, v59) == 1)
          {
            sub_C3B84();
            __break(1u);
          }

          sub_21E8(&qword_EF0B0, &qword_C5AF8);
          sub_C3724();
        }

        v47 = v54;
        sub_1E390(v173);
      }

      sub_1D7C8(v219);
      v45 = v220[0];

      v215 = v45;
      v44 = sub_21E8(&qword_EF0B0, &qword_C5AF8);
      sub_1E308();
      v46 = sub_C3804();

      if (v46)
      {
        (*(v181 + 56))(v137, 1, 1, v179);
        sub_1D7C8(v220);
        (*(v181 + 8))(v182, v179);
        return v54;
      }

      v214 = v157;
      sub_C2564();
      sub_C24E4();
      v42 = v220[0];

      sub_C24D4();
      (*(v142 + 16))(v144, v146, v140);
      sub_C2554();
      v43 = sub_C3C64();
      (*(v156 + 16))(v38, v157, v154);
      sub_4E48();
      sub_C2074();
      (*(v142 + 8))(v146, v140);
      (*(v156 + 8))(v157, v154);
      sub_1D7C8(v220);
      v63 = v54;
    }

    v41 = v63;
    (*(v181 + 16))(v137, v182, v179);
    (*(v181 + 56))(v137, 0, 1, v179);
    (*(v181 + 8))(v182, v179);
    return v41;
  }

  v15 = v191;
  v16 = sub_BF704();
  (*(v187 + 16))(v15, v16, v185);
  v135 = sub_C3224();
  v132 = v135;
  v134 = sub_C3874();
  v133 = v134;
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  v136 = sub_C3C64();
  if (os_log_type_enabled(v135, v134))
  {
    v17 = v139;
    v123 = sub_C3954();
    v119 = v123;
    v120 = sub_21E8(&qword_EE828, &qword_C5100);
    v121 = 0;
    v124 = sub_5DD4(0, v120, v120);
    v122 = v124;
    v125 = sub_5DD4(v121, &type metadata for Any + 8, &type metadata for Any + 8);
    v198[0] = v123;
    v197 = v124;
    v196 = v125;
    v126 = 0;
    v127 = v198;
    sub_5E28(0, v198);
    sub_5E28(v126, v127);
    v195 = v136;
    v128 = &v40;
    __chkstk_darwin(&v40);
    v129 = &v40 - 6;
    v130 = sub_21E8(&unk_EEFB0, qword_C5110);
    sub_8128();
    sub_C3654();
    v131 = v17;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v132, v133, "Received empty intents for context update", v119, 2u);
      v117 = 0;
      sub_5E88(v122, 0, v120);
      sub_5E88(v125, v117, &type metadata for Any + 8);
      sub_C3934();

      v118 = v131;
    }
  }

  else
  {

    v118 = v139;
  }

  v115 = v118;

  (*(v187 + 8))(v191, v185);
  (*(v181 + 56))(v137, 1, 1, v179);
  return v115;
}

uint64_t sub_1BAAC()
{
  sub_C3564(",", 1uLL, 1);
  sub_21E8(&qword_EEFE0, &qword_C5AB0);
  sub_1EC2C();
  v1 = sub_C3464();

  return v1;
}

uint64_t sub_1BB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = a3;
  v34 = a1;
  v35 = a2;
  v14 = sub_1D834;
  v15 = sub_7BBC;
  v16 = sub_7B48;
  v17 = sub_7B48;
  v18 = sub_7C08;
  v60 = 0;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v51 = 0;
  v19 = sub_C3234();
  v20 = *(v19 - 8);
  v21 = v19 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v23 = &v12[-v22];
  v24 = sub_C2464();
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v24);
  v49 = &v12[-v27];
  v28 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v12[-v27]);
  v29 = &v12[-v28];
  v60 = &v12[-v28];
  v30 = (*(*(sub_21E8(&qword_EF0D0, qword_C66B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v51);
  v47 = &v12[-v30];
  v40 = sub_C28A4();
  v37 = *(v40 - 8);
  v38 = v40 - 8;
  v31 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v51);
  v39 = &v12[-v31];
  v58 = v5;
  v59 = v6;
  v57 = v3;
  sub_C2B54();
  v43 = sub_C2B44();
  v56 = v43;
  sub_C2B14();
  v41 = sub_C2B04();
  v55 = v41;

  v46 = 1;
  v32 = sub_C3564("com.apple.cati", 0xEuLL, 1);
  v33 = v7;
  v36 = IdentifierNamespaceGuid;
  _objc_retain(IdentifierNamespaceGuid);
  sub_C3494();
  sub_C2874();
  _objc_release(v36);
  sub_C2864();
  (*(v37 + 8))(v39, v40);
  sub_C29B4();
  v45 = sub_C28B4();
  v42 = sub_C3C64();
  v44 = v8;

  *v44 = v43;
  sub_4E48();
  v48 = v9;
  v10 = sub_C2904();
  (*(*(v10 - 8) + 56))(v47, v46);
  v50 = sub_C28F4();
  sub_1E5E8(v47);

  v54 = v50;
  sub_C25F4();
  v52 = 0;
  (*(v25 + 32))(v29, v49, v24);
  (*(v25 + 16))(v13, v29, v24);
  (*(v25 + 56))(v13, 0, 1, v24);
  (*(v25 + 8))(v29, v24);
}

uint64_t sub_1C7F0()
{
  sub_2560((v0 + 16));
  sub_BA04(v0 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin18CannedDialogHelper_previousProfanityAtSiri);
  sub_8224(v0 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin18CannedDialogHelper_followUpId);
  return v2;
}

uint64_t sub_1C9A8()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for CannedDialogHelper(uint64_t a1)
{
  v2 = qword_EF100;
  if (!qword_EF100)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_1CA74()
{
  v2 = qword_EEFC0;
  if (!qword_EEFC0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_EEFC0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1CAD8()
{
  v2 = qword_EEFC8;
  if (!qword_EEFC8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_EEFC8);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_1CB3C(const void *a1, void *a2)
{
  v6 = sub_C2094();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_21E8(&qword_EEF98, &qword_C5A80);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t *sub_1CC64(uint64_t *result)
{
  v3 = result;
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
    v1 = swift_allocBox();
    result = v2;
    *v3 = v1;
  }

  return result;
}

uint64_t sub_1CCE4(uint64_t a1)
{
  v3 = sub_C2094();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1CEB0()
{
  v2 = qword_EEFD8;
  if (!qword_EEFD8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_EEFD8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1CF14(uint64_t a1)
{
  v3 = sub_C2DB4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1CFBC(void *a1)
{
}

unint64_t sub_1D00C()
{
  v2 = qword_EEFE8;
  if (!qword_EEFE8)
  {
    sub_81B0(&qword_EEFE0, &qword_C5AB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEFE8);
    return WitnessTable;
  }

  return v2;
}

void *sub_1D2DC(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[1];

  a2[1] = v3;
  a2[2] = a1[2];
  v4 = a1[3];

  a2[3] = v4;
  a2[4] = a1[4];
  v6 = a1[5];

  a2[5] = v6;
  a2[6] = a1[6];
  v8 = a1[7];

  result = a2;
  a2[7] = v8;
  return result;
}

uint64_t sub_1D38C()
{

  return swift_deallocObject();
}

void *sub_1D4E4(void *a1, void *a2)
{
  *a2 = *a1;
  v6 = a1[1];

  a2[1] = v6;
  v7 = *(sub_21E8(&qword_EEFF0, &qword_C5AB8) + 48);
  sub_21E8(&qword_EEF88, &unk_C5A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(a1 + v7);
    swift_errorRetain();
    *(a2 + v7) = v4;
  }

  else
  {
    v2 = sub_C2134();
    (*(*(v2 - 8) + 16))();
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

void *sub_1D624(const void *a1, void *a2)
{
  v6 = sub_21E8(&qword_EEF88, &unk_C5A70);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  else
  {
    v2 = sub_C2134();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_1D6F4(uint64_t a1)
{

  v3 = *(sub_21E8(&qword_EEFF0, &qword_C5AB8) + 48);
  sub_21E8(&qword_EEF88, &unk_C5A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v1 = sub_C2134();
    (*(*(v1 - 8) + 8))(a1 + v3);
  }

  return a1;
}

unint64_t sub_1D918()
{
  v2 = qword_EF010;
  if (!qword_EF010)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_EF010);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_1D97C(const void *a1, void *a2)
{
  v6 = sub_C1AC4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_21E8(&qword_EF008, &unk_C5AD0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1DAA4(uint64_t a1)
{
  v3 = sub_C1AC4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1DB98()
{
  v1 = *(*(sub_21E8(&qword_EF008, &unk_C5AD0) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v5 = sub_C1AC4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v4, 1))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

void *sub_1DCD8(const void *a1, void *a2)
{
  v6 = sub_C1AC4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_21E8(&qword_EF008, &unk_C5AD0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1DE00()
{
  v1 = *(sub_21E8(&qword_EF008, &unk_C5AD0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_199EC(v2);
}

unint64_t sub_1E020()
{
  v2 = qword_EF018;
  if (!qword_EF018)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_EF018);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1E084()
{
  v2 = qword_EF088;
  if (!qword_EF088)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_EF088);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1E0E8()
{
  v2 = qword_EF090;
  if (!qword_EF090)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF090);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1E160()
{
  v2 = qword_EF0A0;
  if (!qword_EF0A0)
  {
    sub_81B0(&qword_EEFE0, &qword_C5AB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF0A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1E308()
{
  v2 = qword_EF0B8;
  if (!qword_EF0B8)
  {
    sub_81B0(&qword_EF0B0, &qword_C5AF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF0B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1E390(uint64_t a1)
{
  v3 = sub_C2464();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_1E438(const void *a1, void *a2)
{
  v6 = sub_C2464();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_21E8(&qword_EF098, &qword_C5AE8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_1E560()
{
  v2 = qword_EF0C8;
  if (!qword_EF0C8)
  {
    sub_81B0(&qword_EF0C0, &unk_C5B00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF0C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1E5E8(uint64_t a1)
{
  v3 = sub_C2904();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1E7C4(uint64_t a1)
{
  updated = sub_1E8B0(319);
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_1E8B0(uint64_t a1)
{
  v5 = qword_EF110;
  if (!qword_EF110)
  {
    sub_C1B54();
    v4 = sub_C3964();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_EF110);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_1E980(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 65))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1EA60(uint64_t result, int a2, int a3)
{
  v3 = (result + 65);
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 48) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 64) = 0;
    if (a3)
    {
      *v3 = 1;
    }
  }

  else if (a3)
  {
    *v3 = 0;
  }

  return result;
}

unint64_t sub_1EC2C()
{
  v2 = qword_EF238;
  if (!qword_EF238)
  {
    sub_81B0(&qword_EEFE0, &qword_C5AB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF238);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1ECB4()
{

  return swift_deallocObject();
}

uint64_t sub_1ED14()
{

  return swift_deallocObject();
}

uint64_t sub_1F0F0()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_21E8(&qword_EEFE0, &qword_C5AB0);
  v1 = sub_1F158();

  return sub_5EF0(v5, v3, v4, v1);
}

unint64_t sub_1F158()
{
  v2 = qword_EF240;
  if (!qword_EF240)
  {
    sub_81B0(&qword_EEFE0, &qword_C5AB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF240);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1F4E0()
{
  v1 = *(*(sub_21E8(&qword_EEF98, &qword_C5A80) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v5 = sub_C2094();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v4, 1))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

void *sub_1F620(const void *a1, void *a2)
{
  v6 = sub_C2094();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_21E8(&qword_EEF98, &qword_C5A80);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1F748()
{
  v1 = *(sub_21E8(&qword_EEF98, &qword_C5A80) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_11794(v2);
}

void *sub_1FA80(void *a1)
{
  if (a1[3])
  {
    sub_2560(a1);
  }

  return a1;
}

uint64_t sub_1FBD4()
{
  v2 = *(v0 + 72);

  return v2;
}

uint64_t sub_1FC00()
{
  swift_beginAccess();
  v2 = *(v0 + 80);

  swift_endAccess();
  return v2;
}

uint64_t sub_1FC5C(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;

  swift_endAccess();
}

uint64_t sub_1FD28()
{
  v2 = *(v0 + 96);

  return v2;
}

uint64_t sub_1FD54()
{
  v2 = *(v0 + 104);

  return v2;
}

uint64_t sub_1FD80()
{
  swift_beginAccess();
  v2 = *(v0 + 112);

  swift_endAccess();
  return v2;
}

uint64_t sub_1FDD0(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 112) = a1;

  swift_endAccess();
}

uint64_t sub_1FEAC()
{
  swift_beginAccess();
  v2 = *(v0 + 160);

  swift_endAccess();
  return v2;
}

uint64_t sub_1FEFC(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 160) = a1;

  swift_endAccess();
}

uint64_t sub_20004(void *a1)
{
  v241 = a1;
  v268 = 0;
  v289 = 0;
  v288 = 0;
  v285[1] = 0;
  v285[0] = 0;
  v281 = 0;
  v280 = 0;
  v279 = 0;
  v240 = 0;
  v278 = 0;
  v277 = 0;
  v265 = sub_C3234();
  v242 = v265;
  v243 = *(v265 - 8);
  v264 = v243;
  v244 = v243;
  v245 = *(v243 + 64);
  __chkstk_darwin(v241);
  v1 = v180 - ((v245 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = v1;
  v288 = v2;
  v289 = v3;
  v250 = v3;
  v260 = &type metadata for String;
  v247 = 5;
  v249 = sub_C3C64();
  v248 = v4;
  v256 = 1;
  v5 = sub_C3564("en-AU", v247, 1);
  v6 = v248;
  v7 = v256;
  v9 = v8;
  v10 = v247;
  *v248 = v5;
  v6[1] = v9;
  v11 = sub_C3564("en-CA", v10, v7);
  v12 = v248;
  v13 = v256;
  v15 = v14;
  v16 = v247;
  v248[2] = v11;
  v12[3] = v15;
  v17 = sub_C3564("en-IN", v16, v13);
  v18 = v248;
  v19 = v256;
  v21 = v20;
  v22 = v247;
  v248[4] = v17;
  v18[5] = v21;
  v23 = sub_C3564("en-GB", v22, v19);
  v24 = v248;
  v25 = v256;
  v27 = v26;
  v28 = v247;
  v248[6] = v23;
  v24[7] = v27;
  v29 = sub_C3564("en-US", v28, v25);
  v30 = v248;
  v248[8] = v29;
  v30[9] = v31;
  sub_4E48();
  v32 = v256;
  *(v250 + 72) = v33;
  v251 = v289;
  v34 = sub_C3564("com.apple.siri.SiriSocialConversation", 0x25uLL, v32);
  v35 = v251;
  *(v251 + 80) = v34;
  *(v35 + 88) = v36;
  v255 = v289;
  v254 = sub_C3C64();
  v253 = v37;
  v252 = 2;
  v38 = sub_C3564("ar", 2uLL, v256);
  v39 = v253;
  v40 = v256;
  v42 = v41;
  v43 = v252;
  *v253 = v38;
  v39[1] = v42;
  v44 = sub_C3564("en", v43, v40);
  v45 = v253;
  v46 = v256;
  v48 = v47;
  v49 = v252;
  v253[2] = v44;
  v45[3] = v48;
  v50 = sub_C3564("fr", v49, v46);
  v51 = v253;
  v52 = v256;
  v54 = v53;
  v55 = v252;
  v253[4] = v50;
  v51[5] = v54;
  v56 = sub_C3564("it", v55, v52);
  v57 = v253;
  v58 = v256;
  v60 = v59;
  v61 = v252;
  v253[6] = v56;
  v57[7] = v60;
  v62 = sub_C3564("ms", v61, v58);
  v63 = v253;
  v64 = v256;
  v66 = v65;
  v67 = v252;
  v253[8] = v62;
  v63[9] = v66;
  v68 = sub_C3564("pt", v67, v64);
  v69 = v253;
  v70 = v256;
  v72 = v71;
  v73 = v252;
  v253[10] = v68;
  v69[11] = v72;
  v74 = sub_C3564("th", v73, v70);
  v75 = v253;
  v76 = v256;
  v78 = v77;
  v79 = v252;
  v253[12] = v74;
  v75[13] = v78;
  v80 = sub_C3564("zh", v79, v76);
  v81 = v253;
  v82 = v256;
  v84 = v83;
  v85 = v252;
  v253[14] = v80;
  v81[15] = v84;
  v86 = sub_C3564("da", v85, v82);
  v87 = v253;
  v88 = v256;
  v90 = v89;
  v91 = v252;
  v253[16] = v86;
  v87[17] = v90;
  v92 = sub_C3564("es", v91, v88);
  v93 = v253;
  v94 = v256;
  v96 = v95;
  v97 = v252;
  v253[18] = v92;
  v93[19] = v96;
  v98 = sub_C3564("he", v97, v94);
  v99 = v253;
  v100 = v256;
  v102 = v101;
  v103 = v252;
  v253[20] = v98;
  v99[21] = v102;
  v104 = sub_C3564("ja", v103, v100);
  v105 = v253;
  v106 = v256;
  v108 = v107;
  v109 = v252;
  v253[22] = v104;
  v105[23] = v108;
  v110 = sub_C3564("nb", v109, v106);
  v111 = v253;
  v112 = v256;
  v114 = v113;
  v115 = v252;
  v253[24] = v110;
  v111[25] = v114;
  v116 = sub_C3564("ru", v115, v112);
  v117 = v253;
  v118 = v256;
  v120 = v119;
  v121 = v252;
  v253[26] = v116;
  v117[27] = v120;
  v122 = sub_C3564("tr", v121, v118);
  v123 = v253;
  v124 = v256;
  v126 = v125;
  v127 = v252;
  v253[28] = v122;
  v123[29] = v126;
  v128 = sub_C3564("de", v127, v124);
  v129 = v253;
  v130 = v256;
  v132 = v131;
  v133 = v252;
  v253[30] = v128;
  v129[31] = v132;
  v134 = sub_C3564("fi", v133, v130);
  v135 = v253;
  v136 = v256;
  v138 = v137;
  v139 = v252;
  v253[32] = v134;
  v135[33] = v138;
  v140 = sub_C3564("hi", v139, v136);
  v141 = v253;
  v142 = v256;
  v144 = v143;
  v145 = v252;
  v253[34] = v140;
  v141[35] = v144;
  v146 = sub_C3564("ko", v145, v142);
  v147 = v253;
  v148 = v256;
  v150 = v149;
  v151 = v252;
  v253[36] = v146;
  v147[37] = v150;
  v152 = sub_C3564("nl", v151, v148);
  v153 = v253;
  v154 = v256;
  v156 = v155;
  v157 = v252;
  v253[38] = v152;
  v153[39] = v156;
  v158 = sub_C3564("sv", v157, v154);
  v159 = v253;
  v160 = v256;
  v253[40] = v158;
  v159[41] = v161;
  v162 = sub_C3564("yue", 3uLL, v160);
  v163 = v253;
  v253[42] = v162;
  v163[43] = v164;
  sub_4E48();
  *(v255 + 96) = v165;
  v259 = v289;
  v258 = sub_C3C64();
  v257 = v166;
  v167 = sub_C3564("dalTellBearStory", 0x10uLL, v256);
  v168 = v257;
  *v257 = v167;
  v168[1] = v169;
  sub_4E48();
  v170 = v268;
  *(v259 + 104) = v171;
  *(v289 + 112) = v170;
  v263 = v289;
  sub_21E8(&qword_EF250, &unk_C5BD0);
  v261 = sub_C3C64();
  v262 = sub_21E8(&qword_EEFE0, &qword_C5AB0);
  *(v263 + 160) = sub_C3374();
  v172 = sub_BF704();
  (*(v264 + 16))(v1, v172, v265);
  v270 = sub_C3224();
  v266 = v270;
  v269 = sub_C3874();
  v267 = v269;
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  v271 = sub_C3C64();
  if (os_log_type_enabled(v270, v269))
  {
    v173 = v240;
    v231 = sub_C3954();
    v227 = v231;
    v228 = sub_21E8(&qword_EE828, &qword_C5100);
    v229 = 0;
    v232 = sub_5DD4(0, v228, v228);
    v230 = v232;
    v233 = sub_5DD4(v229, &type metadata for Any + 8, &type metadata for Any + 8);
    v275 = v231;
    v274 = v232;
    v273 = v233;
    v234 = 0;
    v235 = &v275;
    sub_5E28(0, &v275);
    sub_5E28(v234, v235);
    v272 = v271;
    v236 = v180;
    __chkstk_darwin(v180);
    v237 = &v180[-6];
    v180[-4] = v174;
    v180[-3] = &v274;
    v180[-2] = &v273;
    v238 = sub_21E8(&unk_EEFB0, qword_C5110);
    sub_8128();
    sub_C3654();
    v239 = v173;
    if (v173)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v266, v267, "Initializing override SocialConversation plugin", v227, 2u);
      v225 = 0;
      sub_5E88(v230, 0, v228);
      sub_5E88(v233, v225, &type metadata for Any + 8);
      sub_C3934();

      v226 = v239;
    }
  }

  else
  {

    v226 = v240;
  }

  v223 = v226;

  (*(v244 + 8))(v246, v242);
  v218 = v289;
  v217 = sub_C1DC4();
  v175 = sub_C1DB4();
  v287[3] = v217;
  v287[4] = &protocol witness table for AuthoredFlowFactory;
  v287[0] = v175;
  sub_BD6C(v287, (v218 + 120));
  v219 = v286;
  sub_24F4(v241, v286);
  v221 = sub_BF288(v219);
  v220 = v221;

  v289 = v221;
  v222 = *(v221 + 96);

  v284 = v222;
  sub_1E160();
  sub_C3824();
  for (i = v223; ; i = v183)
  {
    v214 = i;
    sub_21E8(&qword_EF0A8, &qword_C5AF0);
    sub_C3B44();
    v215 = v282;
    v216 = v283;
    if (!v283)
    {
      break;
    }

    v212 = v215;
    v213 = v216;
    v177 = v214;
    v202 = v216;
    v201 = v215;
    v280 = v215;
    v281 = v216;
    v205 = 0;
    sub_C2E54();

    v203 = sub_C2E34();
    v206 = sub_C2E44();
    v204 = v206;

    v279 = v206;
    sub_210D0();
    type metadata accessor for SocialConversationFlowDelegatePlugin();
    v207 = sub_2115C();
    v178 = sub_A7FFC(v206, v207);
    v208 = v177;
    v209 = v178;
    v210 = v179;
    v211 = v177;
    if (v177)
    {
      v180[1] = v211;
      v181 = 0;
      v182 = 0;

      v198 = v181;
      v199 = v181;
      v200 = v182;
    }

    else
    {
      v196 = v210;
      v197 = v209;

      v198 = v197;
      v199 = v196;
      v200 = v208;
    }

    v193 = v200;
    v194 = v199;
    v195 = v198;
    if (v199)
    {
      v191 = v195;
      v192 = v194;
      v190 = v194;
      v188 = v195;
      v277 = v195;
      v278 = v194;
      v184 = 0;
      sub_C2EA4();
      v185 = v289;
      v186 = &v276;
      swift_beginAccess();
      v187 = *(v185 + 80);
      v189 = *(v185 + 88);

      swift_endAccess();
      sub_C2E84();
    }

    v183 = v193;
  }

  sub_1D7C8(v285);
  sub_2560(v241);

  return v220;
}

unint64_t sub_210D0()
{
  v2 = qword_EF258;
  if (!qword_EF258)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_EF258);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_2115C()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass:ObjCClassFromMetadata];

  return v0;
}

uint64_t sub_21208(void *a1, void *a2)
{
  v199 = a2;
  v198 = a1;
  v225 = 0;
  v237 = 0;
  v236 = 0;
  v235 = 0;
  v197 = 0;
  v222 = sub_C3234();
  v200 = v222;
  v201 = *(v222 - 8);
  v221 = v201;
  v202 = v201;
  v203 = *(v201 + 64);
  __chkstk_darwin(v198);
  v2 = &v178 - ((v203 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = v2;
  v236 = v3;
  v235 = v4;
  v237 = v5;
  v208 = v5;
  v218 = &type metadata for String;
  v205 = 5;
  v207 = sub_C3C64();
  v206 = v6;
  v214 = 1;
  v7 = sub_C3564("en-AU", v205, 1);
  v8 = v206;
  v9 = v214;
  v11 = v10;
  v12 = v205;
  *v206 = v7;
  v8[1] = v11;
  v13 = sub_C3564("en-CA", v12, v9);
  v14 = v206;
  v15 = v214;
  v17 = v16;
  v18 = v205;
  v206[2] = v13;
  v14[3] = v17;
  v19 = sub_C3564("en-IN", v18, v15);
  v20 = v206;
  v21 = v214;
  v23 = v22;
  v24 = v205;
  v206[4] = v19;
  v20[5] = v23;
  v25 = sub_C3564("en-GB", v24, v21);
  v26 = v206;
  v27 = v214;
  v29 = v28;
  v30 = v205;
  v206[6] = v25;
  v26[7] = v29;
  v31 = sub_C3564("en-US", v30, v27);
  v32 = v206;
  v206[8] = v31;
  v32[9] = v33;
  sub_4E48();
  v34 = v214;
  *(v208 + 72) = v35;
  v209 = v237;
  v36 = sub_C3564("com.apple.siri.SiriSocialConversation", 0x25uLL, v34);
  v37 = v209;
  *(v209 + 80) = v36;
  *(v37 + 88) = v38;
  v213 = v237;
  v212 = sub_C3C64();
  v211 = v39;
  v210 = 2;
  v40 = sub_C3564("ar", 2uLL, v214);
  v41 = v211;
  v42 = v214;
  v44 = v43;
  v45 = v210;
  *v211 = v40;
  v41[1] = v44;
  v46 = sub_C3564("en", v45, v42);
  v47 = v211;
  v48 = v214;
  v50 = v49;
  v51 = v210;
  v211[2] = v46;
  v47[3] = v50;
  v52 = sub_C3564("fr", v51, v48);
  v53 = v211;
  v54 = v214;
  v56 = v55;
  v57 = v210;
  v211[4] = v52;
  v53[5] = v56;
  v58 = sub_C3564("it", v57, v54);
  v59 = v211;
  v60 = v214;
  v62 = v61;
  v63 = v210;
  v211[6] = v58;
  v59[7] = v62;
  v64 = sub_C3564("ms", v63, v60);
  v65 = v211;
  v66 = v214;
  v68 = v67;
  v69 = v210;
  v211[8] = v64;
  v65[9] = v68;
  v70 = sub_C3564("pt", v69, v66);
  v71 = v211;
  v72 = v214;
  v74 = v73;
  v75 = v210;
  v211[10] = v70;
  v71[11] = v74;
  v76 = sub_C3564("th", v75, v72);
  v77 = v211;
  v78 = v214;
  v80 = v79;
  v81 = v210;
  v211[12] = v76;
  v77[13] = v80;
  v82 = sub_C3564("zh", v81, v78);
  v83 = v211;
  v84 = v214;
  v86 = v85;
  v87 = v210;
  v211[14] = v82;
  v83[15] = v86;
  v88 = sub_C3564("da", v87, v84);
  v89 = v211;
  v90 = v214;
  v92 = v91;
  v93 = v210;
  v211[16] = v88;
  v89[17] = v92;
  v94 = sub_C3564("es", v93, v90);
  v95 = v211;
  v96 = v214;
  v98 = v97;
  v99 = v210;
  v211[18] = v94;
  v95[19] = v98;
  v100 = sub_C3564("he", v99, v96);
  v101 = v211;
  v102 = v214;
  v104 = v103;
  v105 = v210;
  v211[20] = v100;
  v101[21] = v104;
  v106 = sub_C3564("ja", v105, v102);
  v107 = v211;
  v108 = v214;
  v110 = v109;
  v111 = v210;
  v211[22] = v106;
  v107[23] = v110;
  v112 = sub_C3564("nb", v111, v108);
  v113 = v211;
  v114 = v214;
  v116 = v115;
  v117 = v210;
  v211[24] = v112;
  v113[25] = v116;
  v118 = sub_C3564("ru", v117, v114);
  v119 = v211;
  v120 = v214;
  v122 = v121;
  v123 = v210;
  v211[26] = v118;
  v119[27] = v122;
  v124 = sub_C3564("tr", v123, v120);
  v125 = v211;
  v126 = v214;
  v128 = v127;
  v129 = v210;
  v211[28] = v124;
  v125[29] = v128;
  v130 = sub_C3564("de", v129, v126);
  v131 = v211;
  v132 = v214;
  v134 = v133;
  v135 = v210;
  v211[30] = v130;
  v131[31] = v134;
  v136 = sub_C3564("fi", v135, v132);
  v137 = v211;
  v138 = v214;
  v140 = v139;
  v141 = v210;
  v211[32] = v136;
  v137[33] = v140;
  v142 = sub_C3564("hi", v141, v138);
  v143 = v211;
  v144 = v214;
  v146 = v145;
  v147 = v210;
  v211[34] = v142;
  v143[35] = v146;
  v148 = sub_C3564("ko", v147, v144);
  v149 = v211;
  v150 = v214;
  v152 = v151;
  v153 = v210;
  v211[36] = v148;
  v149[37] = v152;
  v154 = sub_C3564("nl", v153, v150);
  v155 = v211;
  v156 = v214;
  v158 = v157;
  v159 = v210;
  v211[38] = v154;
  v155[39] = v158;
  v160 = sub_C3564("sv", v159, v156);
  v161 = v211;
  v162 = v214;
  v211[40] = v160;
  v161[41] = v163;
  v164 = sub_C3564("yue", 3uLL, v162);
  v165 = v211;
  v211[42] = v164;
  v165[43] = v166;
  sub_4E48();
  *(v213 + 96) = v167;
  v217 = v237;
  v216 = sub_C3C64();
  v215 = v168;
  v169 = sub_C3564("dalTellBearStory", 0x10uLL, v214);
  v170 = v215;
  *v215 = v169;
  v170[1] = v171;
  sub_4E48();
  v172 = v225;
  *(v217 + 104) = v173;
  *(v237 + 112) = v172;
  v220 = v237;
  sub_21E8(&qword_EF250, &unk_C5BD0);
  v219 = sub_C3C64();
  sub_21E8(&qword_EEFE0, &qword_C5AB0);
  *(v220 + 160) = sub_C3374();
  v174 = sub_BF704();
  (*(v221 + 16))(v2, v174, v222);
  v227 = sub_C3224();
  v223 = v227;
  v226 = sub_C3874();
  v224 = v226;
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  v228 = sub_C3C64();
  if (os_log_type_enabled(v227, v226))
  {
    v175 = v197;
    v188 = sub_C3954();
    v184 = v188;
    v185 = sub_21E8(&qword_EE828, &qword_C5100);
    v186 = 0;
    v189 = sub_5DD4(0, v185, v185);
    v187 = v189;
    v190 = sub_5DD4(v186, &type metadata for Any + 8, &type metadata for Any + 8);
    v232 = v188;
    v231 = v189;
    v230 = v190;
    v191 = 0;
    v192 = &v232;
    sub_5E28(0, &v232);
    sub_5E28(v191, v192);
    v229 = v228;
    v193 = &v178;
    __chkstk_darwin(&v178);
    v194 = &v178 - 6;
    *(&v178 - 4) = v176;
    *(&v178 - 3) = &v231;
    *(&v178 - 2) = &v230;
    v195 = sub_21E8(&unk_EEFB0, qword_C5110);
    sub_8128();
    sub_C3654();
    v196 = v175;
    if (v175)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v223, v224, "Initializing SocialConversation plugin", v184, 2u);
      v182 = 0;
      sub_5E88(v187, 0, v185);
      sub_5E88(v190, v182, &type metadata for Any + 8);
      sub_C3934();

      v183 = v196;
    }
  }

  else
  {

    v183 = v197;
  }

  (*(v202 + 8))(v204, v200);
  v178 = v237;
  v179 = v234;
  sub_24F4(v199, v234);
  sub_BD6C(v179, (v178 + 120));
  v180 = v233;
  sub_24F4(v198, v233);
  v181 = sub_BF288(v180);

  v237 = v181;
  sub_2560(v199);
  sub_2560(v198);

  return v181;
}

uint64_t sub_21E18()
{
  v33 = 0;
  v24 = 0;
  v30 = sub_C3234();
  v25 = v30;
  v26 = *(v30 - 8);
  v29 = v26;
  v27 = v26;
  __chkstk_darwin(v30 - 8);
  v1 = &v7 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v1;
  v2 = sub_BF704();
  (*(v29 + 16))(v1, v2, v30);
  v35 = sub_C3224();
  v31 = v35;
  v34 = sub_C3874();
  v32 = v34;
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  v36 = sub_C3C64();
  if (os_log_type_enabled(v35, v34))
  {
    v3 = v24;
    v15 = sub_C3954();
    v11 = v15;
    v12 = sub_21E8(&qword_EE828, &qword_C5100);
    v13 = 0;
    v16 = sub_5DD4(0, v12, v12);
    v14 = v16;
    v17 = sub_5DD4(v13, &type metadata for Any + 8, &type metadata for Any + 8);
    v40 = v15;
    v39 = v16;
    v38 = v17;
    v18 = 0;
    v19 = &v40;
    sub_5E28(0, &v40);
    sub_5E28(v18, v19);
    v37 = v36;
    v20 = &v7;
    __chkstk_darwin(&v7);
    v21 = &v7 - 6;
    *(&v7 - 4) = v4;
    *(&v7 - 3) = &v39;
    *(&v7 - 2) = &v38;
    v22 = sub_21E8(&unk_EEFB0, qword_C5110);
    sub_8128();
    sub_C3654();
    v23 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v31, v32, "convenience Initializing SocialConversation plugin", v11, 2u);
      v9 = 0;
      sub_5E88(v14, 0, v12);
      sub_5E88(v17, v9, &type metadata for Any + 8);
      sub_C3934();

      v10 = v23;
    }
  }

  else
  {

    v10 = v24;
  }

  (*(v27 + 8))(v28, v25);
  v7 = type metadata accessor for SharedObjectProvider();
  v5 = sub_2224C();
  v41[3] = v7;
  v41[4] = &off_E3D98;
  v41[0] = v5;
  v8 = sub_1FFB8(v41);

  v41[5] = v8;

  return v8;
}

uint64_t sub_22288(uint64_t a1)
{
  v454 = a1;
  v432 = 0;
  v559 = 0;
  v558 = 0;
  v557 = 0;
  v556 = 0;
  v401 = 0;
  v549 = 0;
  v548 = 0;
  v544 = 0;
  v533 = 0;
  v527 = 0;
  v402 = (*(*(sub_21E8(&qword_EE820, &qword_C5A60) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v403 = &v114 - v402;
  v404 = sub_C1D34();
  v405 = *(v404 - 8);
  v406 = v405;
  v408 = *(v405 + 64);
  v407 = v408;
  __chkstk_darwin(v404 - 8);
  v410 = (v408 + 15) & 0xFFFFFFFFFFFFFFF0;
  v409 = &v114 - v410;
  __chkstk_darwin(&v114 - v410);
  v411 = &v114 - v410;
  v559 = &v114 - v410;
  v412 = sub_21E8(&qword_EE800, &unk_C50E0);
  v413 = *(v412 - 8);
  v414 = v413;
  v415 = (*(v413 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v412 - 8);
  v416 = &v114 - v415;
  v417 = (*(*(sub_21E8(&qword_EE808, &unk_C5BE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v432);
  v418 = &v114 - v417;
  v419 = type metadata accessor for INSiriSocialConversation(v1);
  v420 = *(v419 - 8);
  v421 = v420;
  v423 = *(v420 + 64);
  v422 = v423;
  __chkstk_darwin(v419 - 8);
  v425 = (v423 + 15) & 0xFFFFFFFFFFFFFFF0;
  v424 = &v114 - v425;
  __chkstk_darwin(&v114 - v425);
  v426 = &v114 - v425;
  v558 = &v114 - v425;
  v427 = sub_21E8(&qword_EEE30, &qword_C5980);
  v428 = *(v427 - 8);
  v429 = v428;
  v430 = (*(v428 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v432);
  v431 = &v114 - v430;
  v462 = sub_C23B4();
  v433 = v462;
  v434 = *(v462 - 8);
  v460 = v434;
  v457 = *(v434 + 64);
  v435 = v457;
  __chkstk_darwin(v432);
  v461 = &v114 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v436 = v461;
  v451 = sub_C3234();
  v438 = v451;
  v439 = *(v451 - 8);
  v450 = v439;
  v440 = v439;
  v446 = *(v439 + 64);
  __chkstk_darwin(v454);
  v448 = (v446 + 15) & 0xFFFFFFFFFFFFFFF0;
  v441 = &v114 - v448;
  __chkstk_darwin(v3);
  v442 = &v114 - v448;
  __chkstk_darwin(v4);
  v443 = &v114 - v448;
  __chkstk_darwin(v5);
  v444 = &v114 - v448;
  __chkstk_darwin(v6);
  v445 = &v114 - v448;
  __chkstk_darwin(v7);
  v447 = &v114 - v448;
  __chkstk_darwin(v8);
  v9 = &v114 - v448;
  v449 = &v114 - v448;
  v557 = v10;
  v556 = v11;
  v12 = sub_BF704();
  v452 = *(v450 + 16);
  v453 = (v450 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v452(v9, v12, v451);
  v455 = *(v460 + 16);
  v456 = (v460 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v455(v461, v454, v462);
  v458 = *(v460 + 80);
  v459 = (v458 + 16) & ~v458;
  v473 = swift_allocObject();
  v463 = *(v460 + 32);
  v464 = (v460 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v463(v473 + v459, v461, v462);
  v484 = sub_C3224();
  v465 = v484;
  v483 = sub_C3874();
  v466 = v483;
  v467 = 17;
  v472 = 7;
  v477 = swift_allocObject();
  v468 = v477;
  v469 = 32;
  *(v477 + 16) = 32;
  v13 = swift_allocObject();
  v14 = v469;
  v478 = v13;
  v470 = v13;
  *(v13 + 16) = 8;
  v471 = v14;
  v15 = swift_allocObject();
  v16 = v473;
  v474 = v15;
  *(v15 + 16) = sub_2C488;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v474;
  v481 = v17;
  v475 = v17;
  *(v17 + 16) = sub_7BBC;
  *(v17 + 24) = v18;
  v482 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v476 = v482;
  v479 = sub_C3C64();
  v480 = v19;

  v20 = v477;
  v21 = v480;
  *v480 = sub_7B48;
  v21[1] = v20;

  v22 = v478;
  v23 = v480;
  v480[2] = sub_7B48;
  v23[3] = v22;

  v24 = v480;
  v25 = v481;
  v480[4] = sub_7C08;
  v24[5] = v25;
  sub_4E48();

  if (os_log_type_enabled(v484, v483))
  {
    v26 = v401;
    v394 = sub_C3954();
    v391 = v394;
    v392 = sub_21E8(&qword_EE828, &qword_C5100);
    v395 = sub_5DD4(0, v392, v392);
    v393 = v395;
    v397 = 1;
    v396 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v489 = v394;
    v488 = v395;
    v487 = v396;
    v398 = &v489;
    sub_5E28(2, &v489);
    sub_5E28(v397, v398);
    v485 = sub_7B48;
    v486 = v468;
    sub_5E3C(&v485, v398, &v488, &v487);
    v399 = v26;
    v400 = v26;
    if (v26)
    {
      v389 = 0;

      __break(1u);
    }

    else
    {
      v485 = sub_7B48;
      v486 = v470;
      sub_5E3C(&v485, &v489, &v488, &v487);
      v387 = 0;
      v388 = 0;
      v485 = sub_7C08;
      v486 = v475;
      sub_5E3C(&v485, &v489, &v488, &v487);
      v385 = 0;
      v386 = 0;
      _os_log_impl(&dword_0, v465, v466, "Parsing Intent %s", v391, 0xCu);
      sub_5E88(v393, 0, v392);
      sub_5E88(v396, 1, &type metadata for Any + 8);
      sub_C3934();

      v390 = v385;
    }
  }

  else
  {
    v27 = v401;

    v390 = v27;
  }

  v28 = v390;

  v379 = *(v440 + 8);
  v380 = (v440 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v379(v449, v438);
  sub_8ECA0();
  v382 = sub_C2D84();
  v381 = v29;
  (*(v429 + 8))(v431, v427);
  v382(v555, v454);
  v383 = v28;
  v384 = v28;
  if (v28)
  {
    v371 = v384;
    v372 = 0;
    v373 = 0;

    v376 = v372;
    v377 = v372;
    v378 = v373;
  }

  else
  {
    v375 = v555[0];
    v374 = v555[1];

    v376 = v375;
    v377 = v374;
    v378 = v383;
  }

  v370 = v378;
  v554[0] = v376;
  v554[1] = v377;
  v369 = v377 != 0;
  v368 = v369;
  sub_8224(v554);
  if (v368)
  {
    v30 = v447;
    v31 = sub_BF704();
    v452(v30, v31, v438);
    v455(v436, v454, v433);
    v349 = (v458 + 16) & ~v458;
    v358 = swift_allocObject();
    v463(v358 + v349, v436, v433);
    v367 = sub_C3224();
    v350 = v367;
    v366 = sub_C3874();
    v351 = v366;
    v352 = 17;
    v357 = 7;
    v361 = swift_allocObject();
    v353 = v361;
    v354 = 32;
    *(v361 + 16) = 32;
    v32 = swift_allocObject();
    v33 = v354;
    v362 = v32;
    v355 = v32;
    *(v32 + 16) = 8;
    v356 = v33;
    v34 = swift_allocObject();
    v35 = v358;
    v359 = v34;
    *(v34 + 16) = sub_2C488;
    *(v34 + 24) = v35;
    v36 = swift_allocObject();
    v37 = v359;
    v365 = v36;
    v360 = v36;
    *(v36 + 16) = sub_7BBC;
    *(v36 + 24) = v37;
    v363 = sub_C3C64();
    v364 = v38;

    v39 = v361;
    v40 = v364;
    *v364 = sub_7B48;
    v40[1] = v39;

    v41 = v362;
    v42 = v364;
    v364[2] = sub_7B48;
    v42[3] = v41;

    v43 = v364;
    v44 = v365;
    v364[4] = sub_7C08;
    v43[5] = v44;
    sub_4E48();

    if (os_log_type_enabled(v367, v366))
    {
      v45 = v370;
      v342 = sub_C3954();
      v339 = v342;
      v340 = sub_21E8(&qword_EE828, &qword_C5100);
      v343 = sub_5DD4(0, v340, v340);
      v341 = v343;
      v345 = 1;
      v344 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v494[0] = v342;
      v493 = v343;
      v492 = v344;
      v346 = v494;
      sub_5E28(2, v494);
      sub_5E28(v345, v346);
      v490 = sub_7B48;
      v491 = v353;
      sub_5E3C(&v490, v346, &v493, &v492);
      v347 = v45;
      v348 = v45;
      if (v45)
      {
        v337 = 0;

        __break(1u);
      }

      else
      {
        v490 = sub_7B48;
        v491 = v355;
        sub_5E3C(&v490, v494, &v493, &v492);
        v335 = 0;
        v336 = 0;
        v490 = sub_7C08;
        v491 = v360;
        sub_5E3C(&v490, v494, &v493, &v492);
        v333 = 0;
        v334 = 0;
        _os_log_impl(&dword_0, v350, v351, "Parsed INVoiceTrigger. Executing VoiceTriggerFlow %s", v339, 0xCu);
        sub_5E88(v341, 0, v340);
        sub_5E88(v344, 1, &type metadata for Any + 8);
        sub_C3934();

        v338 = v333;
      }
    }

    else
    {
      v46 = v370;

      v338 = v46;
    }

    v330 = v338;

    v379(v447, v438);
    v328 = type metadata accessor for CannedDialogVoiceTriggerFlow(0);

    v327 = v495;
    sub_24F4(v437 + 16, v495);

    v494[1] = sub_9378(v327);
    sub_B268();
    v329 = sub_C1DF4();

    v331 = v329;
    v332 = v330;
  }

  else
  {
    v47 = v370;
    sub_8EC30();
    v324 = sub_C2D84();
    v323 = v48;
    (*(v414 + 8))(v416, v412);
    v324(v454);
    v325 = v47;
    v326 = v47;
    if (v47)
    {
      v114 = v326;
      v115 = 0;

      (*(v421 + 56))(v418, 1, 1, v419);
      v322 = v115;
    }

    else
    {
      (*(v421 + 56))(v418, 0, 1, v419);

      v322 = v325;
    }

    v321 = v322;
    if ((*(v421 + 48))(v418, 1, v419) == 1)
    {
      v107 = v441;
      sub_7C14(v418);
      v108 = sub_BF704();
      v452(v107, v108, v438);
      v134 = sub_C3224();
      v131 = v134;
      v133 = sub_C3884();
      v132 = v133;
      v135 = sub_C3C64();
      if (os_log_type_enabled(v134, v133))
      {
        v109 = v321;
        v122 = sub_C3954();
        v118 = v122;
        v119 = sub_21E8(&qword_EE828, &qword_C5100);
        v120 = 0;
        v123 = sub_5DD4(0, v119, v119);
        v121 = v123;
        v124 = sub_5DD4(v120, &type metadata for Any + 8, &type metadata for Any + 8);
        v553 = v122;
        v552 = v123;
        v551 = v124;
        v125 = 0;
        v126 = &v553;
        sub_5E28(0, &v553);
        sub_5E28(v125, v126);
        v550 = v135;
        v127 = &v114;
        __chkstk_darwin(&v114);
        v128 = &v114 - 6;
        *(&v114 - 4) = v110;
        *(&v114 - 3) = &v552;
        v112 = &v551;
        v129 = sub_21E8(&unk_EEFB0, qword_C5110);
        sub_8128();
        sub_C3654();
        v130 = v109;
        if (v109)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_0, v131, v132, "SocialConversationFlowDelegatePlugin received an error for handling request even though the feature flag and locale is on for this", v118, 2u);
          v116 = 0;
          sub_5E88(v121, 0, v119);
          sub_5E88(v124, v116, &type metadata for Any + 8);
          sub_C3934();

          v117 = v130;
        }
      }

      else
      {

        v117 = v321;
      }

      v379(v441, v438);
      sub_C3564("SocialConversationFlowDelegatePlugin received makeFlowFor call with invalid parse", 0x51uLL, 1);
      v113 = 0;
      v112 = (&stru_68 + 6);
      sub_C3B94();
      __break(1u);
    }

    else
    {
      v49 = v445;
      sub_7D34(v418, v426);
      v50 = sub_BF704();
      v452(v49, v50, v438);
      sub_2C670(v426, v424);
      v302 = (*(v421 + 80) + 16) & ~*(v421 + 80);
      v311 = swift_allocObject();
      sub_7D34(v424, (v311 + v302));
      v320 = sub_C3224();
      v303 = v320;
      v319 = sub_C3874();
      v304 = v319;
      v305 = 17;
      v310 = 7;
      v314 = swift_allocObject();
      v306 = v314;
      v307 = 32;
      *(v314 + 16) = 32;
      v51 = swift_allocObject();
      v52 = v307;
      v315 = v51;
      v308 = v51;
      *(v51 + 16) = 8;
      v309 = v52;
      v53 = swift_allocObject();
      v54 = v311;
      v312 = v53;
      *(v53 + 16) = sub_2C994;
      *(v53 + 24) = v54;
      v55 = swift_allocObject();
      v56 = v312;
      v318 = v55;
      v313 = v55;
      *(v55 + 16) = sub_7BBC;
      *(v55 + 24) = v56;
      v316 = sub_C3C64();
      v317 = v57;

      v58 = v314;
      v59 = v317;
      *v317 = sub_7B48;
      v59[1] = v58;

      v60 = v315;
      v61 = v317;
      v317[2] = sub_7B48;
      v61[3] = v60;

      v62 = v317;
      v63 = v318;
      v317[4] = sub_7C08;
      v62[5] = v63;
      sub_4E48();

      if (os_log_type_enabled(v320, v319))
      {
        v64 = v321;
        v295 = sub_C3954();
        v292 = v295;
        v293 = sub_21E8(&qword_EE828, &qword_C5100);
        v296 = sub_5DD4(0, v293, v293);
        v294 = v296;
        v298 = 1;
        v297 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
        v500 = v295;
        v499 = v296;
        v498 = v297;
        v299 = &v500;
        sub_5E28(2, &v500);
        sub_5E28(v298, v299);
        v496 = sub_7B48;
        v497 = v306;
        sub_5E3C(&v496, v299, &v499, &v498);
        v300 = v64;
        v301 = v64;
        if (v64)
        {
          v290 = 0;

          __break(1u);
        }

        else
        {
          v496 = sub_7B48;
          v497 = v308;
          sub_5E3C(&v496, &v500, &v499, &v498);
          v288 = 0;
          v289 = 0;
          v496 = sub_7C08;
          v497 = v313;
          sub_5E3C(&v496, &v500, &v499, &v498);
          v286 = 0;
          v287 = 0;
          _os_log_impl(&dword_0, v303, v304, "Parsed INSiriSocialConversation: %s", v292, 0xCu);
          sub_5E88(v294, 0, v293);
          sub_5E88(v297, 1, &type metadata for Any + 8);
          sub_C3934();

          v291 = v286;
        }
      }

      else
      {
        v65 = v321;

        v291 = v65;
      }

      v251 = v291;

      v379(v445, v438);
      v252 = *v426;
      v253 = *(v426 + 1);

      v259 = sub_2574C(v252, v253);
      v260 = v66;
      v254 = v66;

      v548 = v259;
      v549 = v260;

      v257 = v545;
      sub_24F4(v437 + 16, v545);

      v256 = v546;
      v255 = v547;
      sub_808C(v257, v546);
      v67 = (*(v255 + 32))(v256);
      v68 = v444;
      v261 = v67;
      v258 = v67;
      v544 = v67;
      sub_2560(v257);
      sub_600E0(v259, v260, v261);
      v69 = sub_BF704();
      v452(v68, v69, v438);
      v262 = *(v406 + 16);
      v263 = (v406 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v262(v409, v411, v404);
      v264 = *(v406 + 80);
      v265 = (v264 + 16) & ~v264;
      v276 = swift_allocObject();
      v266 = *(v406 + 32);
      v267 = (v406 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v266(v276 + v265, v409, v404);
      v285 = sub_C3224();
      v268 = v285;
      v284 = sub_C3874();
      v269 = v284;
      v270 = 17;
      v275 = 7;
      v279 = swift_allocObject();
      v271 = v279;
      v272 = 32;
      *(v279 + 16) = 32;
      v70 = swift_allocObject();
      v71 = v272;
      v280 = v70;
      v273 = v70;
      *(v70 + 16) = 8;
      v274 = v71;
      v72 = swift_allocObject();
      v73 = v276;
      v277 = v72;
      *(v72 + 16) = sub_2CB9C;
      *(v72 + 24) = v73;
      v74 = swift_allocObject();
      v75 = v277;
      v283 = v74;
      v278 = v74;
      *(v74 + 16) = sub_7BBC;
      *(v74 + 24) = v75;
      v281 = sub_C3C64();
      v282 = v76;

      v77 = v279;
      v78 = v282;
      *v282 = sub_7B48;
      v78[1] = v77;

      v79 = v280;
      v80 = v282;
      v282[2] = sub_7B48;
      v80[3] = v79;

      v81 = v282;
      v82 = v283;
      v282[4] = sub_7C08;
      v81[5] = v82;
      sub_4E48();

      if (os_log_type_enabled(v285, v284))
      {
        v83 = v251;
        v244 = sub_C3954();
        v241 = v244;
        v242 = sub_21E8(&qword_EE828, &qword_C5100);
        v245 = sub_5DD4(0, v242, v242);
        v243 = v245;
        v247 = 1;
        v246 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
        v505 = v244;
        v504 = v245;
        v503 = v246;
        v248 = &v505;
        sub_5E28(2, &v505);
        sub_5E28(v247, v248);
        v501 = sub_7B48;
        v502 = v271;
        sub_5E3C(&v501, v248, &v504, &v503);
        v249 = v83;
        v250 = v83;
        if (v83)
        {
          v239 = 0;

          __break(1u);
        }

        else
        {
          v501 = sub_7B48;
          v502 = v273;
          sub_5E3C(&v501, &v505, &v504, &v503);
          v237 = 0;
          v238 = 0;
          v501 = sub_7C08;
          v502 = v278;
          sub_5E3C(&v501, &v505, &v504, &v503);
          v235 = 0;
          v236 = 0;
          _os_log_impl(&dword_0, v268, v269, "Parsed AuthoredFlowDescriptor: %s", v241, 0xCu);
          sub_5E88(v243, 0, v242);
          sub_5E88(v246, 1, &type metadata for Any + 8);
          sub_C3934();

          v240 = v235;
        }
      }

      else
      {
        v84 = v251;

        v240 = v84;
      }

      v227 = v240;

      v379(v444, v438);

      v228 = v541;
      sub_24F4(v437 + 16, v541);

      v230 = v542;
      v229 = v543;
      sub_808C(v228, v542);
      v85 = *(v229 + 40);
      v231 = v538;
      v85(v230);
      v233 = v539;
      v232 = v540;
      sub_808C(v231, v539);
      v234 = (*(v232 + 8))(v233);

      if (v234)
      {
        v224 = v506;
        sub_24F4(v437 + 120, v506);
        v222 = v507;
        v223 = v508;
        sub_808C(v224, v507);
        v225 = sub_C1DE4();
        sub_2560(v224);
        v226 = v225;
      }

      else
      {
        v226 = 0;
      }

      v221 = v226;

      sub_2560(v538);
      sub_2560(v541);

      if (v221)
      {
        v220 = sub_269CC(v411);
      }

      else
      {
        v220 = 0;
      }

      v219 = v220;

      if (v219)
      {
        v86 = v443;
        v87 = sub_BF704();
        v452(v86, v87, v438);
        v217 = sub_C3224();
        v214 = v217;
        v216 = sub_C3874();
        v215 = v216;
        v218 = sub_C3C64();
        if (os_log_type_enabled(v217, v216))
        {
          v88 = v227;
          v205 = sub_C3954();
          v201 = v205;
          v202 = sub_21E8(&qword_EE828, &qword_C5100);
          v203 = 0;
          v206 = sub_5DD4(0, v202, v202);
          v204 = v206;
          v207 = sub_5DD4(v203, &type metadata for Any + 8, &type metadata for Any + 8);
          v512[0] = v205;
          v511 = v206;
          v510 = v207;
          v208 = 0;
          v209 = v512;
          sub_5E28(0, v512);
          sub_5E28(v208, v209);
          v509 = v218;
          v210 = &v114;
          __chkstk_darwin(&v114);
          v211 = &v114 - 6;
          *(&v114 - 4) = v89;
          *(&v114 - 3) = &v511;
          v112 = &v510;
          v212 = sub_21E8(&unk_EEFB0, qword_C5110);
          sub_8128();
          sub_C3654();
          v213 = v88;
          if (v88)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_0, v214, v215, "Executing AuthoredFlow with SiriKit", v201, 2u);
            v199 = 0;
            sub_5E88(v204, 0, v202);
            sub_5E88(v207, v199, &type metadata for Any + 8);
            sub_C3934();

            v200 = v213;
          }
        }

        else
        {

          v200 = v227;
        }

        v198 = v200;

        v379(v443, v438);
        v189 = 0;
        sub_C1D94();
        v196 = swift_allocBox();
        v182 = v90;
        v527 = v90;

        v178 = v437 + 16;
        v165 = v526;
        sub_24F4(v437 + 16, v526);

        sub_601E0(v165, v182);
        sub_2560(v165);
        v187 = sub_21E8(&qword_EF260, &qword_C5BF0);
        v188 = sub_C3C64();
        v185 = v91;
        inited = type metadata accessor for InitDailyUpliftBehaviorResponseHandler(v189);
        sub_B5E4(&v426[*(v419 + 24)], v403);
        v167 = sub_92A5C(v403);
        v185[3] = inited;
        v92 = sub_2CD04();
        v93 = v167;
        v94 = v185;
        v185[4] = v92;
        *v94 = v93;
        v176 = type metadata accessor for InitGreetingBehaviorResponseHandler();

        v175 = v523;
        sub_24F4(v178, v523);

        v169 = v524;
        v168 = v525;
        sub_808C(v175, v524);
        v172 = (*(v168 + 32))(v169);

        v174 = v520;
        sub_24F4(v178, v520);

        v171 = v521;
        v170 = v522;
        sub_808C(v174, v521);
        v95 = *(v170 + 8);
        v173 = &v519;
        v95(v171);
        v177 = sub_92AA8(v172, v173);
        sub_2560(v174);
        sub_2560(v175);
        v185[8] = v176;
        v96 = sub_2CD84();
        v97 = v177;
        v98 = v185;
        v185[9] = v96;
        v98[5] = v97;
        v184 = type metadata accessor for DismissSiriBehaviorResponseHandler();

        v183 = v516;
        sub_24F4(v178, v516);

        v180 = v517;
        v179 = v518;
        sub_808C(v183, v517);
        v99 = *(v179 + 16);
        v181 = &v515;
        v99(v180);
        v186 = sub_92AFC(v181);
        sub_2560(v183);
        v185[13] = v184;
        v100 = sub_2CE04();
        v101 = v185;
        v102 = v186;
        v185[14] = v100;
        v101[10] = v102;
        sub_4E48();
        sub_C1D64();
        v195 = v514;
        sub_24F4(v437 + 120, v514);
        v194 = sub_C1CD4();
        v190 = v513;
        sub_24F4(v195, v513);
        v262(v409, v411, v404);

        v191 = (v264 + 56) & ~v264;
        v192 = (v191 + v407 + 7) & 0xFFFFFFFFFFFFFFF8;
        v193 = swift_allocObject();
        sub_BD6C(v190, (v193 + 16));
        v266(v193 + v191, v409, v404);
        *(v193 + v192) = v196;
        v512[1] = sub_C1CE4();
        v197 = sub_C1DF4();

        sub_2560(v195);

        (*(v406 + 8))(v411, v404);

        sub_7EB4(v426);
        v331 = v197;
        v332 = v198;
      }

      else
      {
        v103 = v442;
        v104 = sub_BF704();
        v452(v103, v104, v438);
        v163 = sub_C3224();
        v160 = v163;
        v162 = sub_C3874();
        v161 = v162;
        v164 = sub_C3C64();
        if (os_log_type_enabled(v163, v162))
        {
          v105 = v227;
          v151 = sub_C3954();
          v147 = v151;
          v148 = sub_21E8(&qword_EE828, &qword_C5100);
          v149 = 0;
          v152 = sub_5DD4(0, v148, v148);
          v150 = v152;
          v153 = sub_5DD4(v149, &type metadata for Any + 8, &type metadata for Any + 8);
          v531[0] = v151;
          v530 = v152;
          v529 = v153;
          v154 = 0;
          v155 = v531;
          sub_5E28(0, v531);
          sub_5E28(v154, v155);
          v528 = v164;
          v156 = &v114;
          __chkstk_darwin(&v114);
          v157 = &v114 - 6;
          *(&v114 - 4) = v106;
          *(&v114 - 3) = &v530;
          v112 = &v529;
          v158 = sub_21E8(&unk_EEFB0, qword_C5110);
          sub_8128();
          sub_C3654();
          v159 = v105;
          if (v105)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_0, v160, v161, "Executing CannedDialogFlow", v147, 2u);
            v145 = 0;
            sub_5E88(v150, 0, v148);
            sub_5E88(v153, v145, &type metadata for Any + 8);
            sub_C3934();

            v146 = v159;
          }
        }

        else
        {

          v146 = v227;
        }

        v142 = v146;

        v379(v442, v438);
        v143 = &v536;
        swift_beginAccess();
        v144 = *(v437 + 112);

        swift_endAccess();
        v535 = v144;

        if (v535)
        {
          v537 = v535;
        }

        else
        {
          type metadata accessor for CannedDialogFlow(0);

          v141 = v534;
          sub_24F4(v437 + 16, v534);

          v537 = sub_2404(v141);
          if (v535)
          {
            sub_2CCD8(&v535);
          }
        }

        v139 = v537;
        v533 = v537;

        v136 = &v532;
        v137 = 0;
        swift_beginAccess();
        *(v437 + 112) = v139;

        swift_endAccess();

        v531[1] = v139;
        v138 = type metadata accessor for CannedDialogFlow(v137);
        sub_800C();
        v140 = sub_C1DF4();

        (*(v406 + 8))(v411, v404);

        sub_7EB4(v426);
        v331 = v140;
        v332 = v142;
      }
    }
  }

  return v331;
}

uint64_t sub_24FC0(uint64_t a1)
{
  v3[1] = a1;
  v6 = sub_C23B4();
  v5 = *(v6 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v6);
  v7 = v3 - v4;
  (*(v5 + 16))(v1);
  return sub_C34F4();
}

uint64_t sub_25074(uint64_t a1)
{
  v3 = a1;
  v5 = type metadata accessor for INSiriSocialConversation(0);
  v4 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v6 = &v3 - v4;
  sub_2C670(v1, &v3 - v4);
  sub_2E660();
  return sub_C3504();
}

uint64_t sub_2510C(uint64_t a1)
{
  v3[1] = a1;
  v6 = sub_C1D34();
  v5 = *(v6 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v6);
  v7 = v3 - v4;
  (*(v5 + 16))(v1);
  sub_2E5E0();
  return sub_C3504();
}

uint64_t sub_251C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[12] = a2;
  v4[11] = a1;
  v4[7] = v4;
  v4[8] = 0;
  v4[9] = 0;
  v4[10] = 0;
  v4[8] = a2;
  v4[9] = a3;
  sub_C1D94();
  v5 = swift_projectBox();
  v4[14] = v5;
  v4[10] = v5;

  return _swift_task_switch(sub_25294, 0);
}