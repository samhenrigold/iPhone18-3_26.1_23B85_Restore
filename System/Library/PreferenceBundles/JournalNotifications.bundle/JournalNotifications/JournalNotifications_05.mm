uint64_t sub_7653C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB0(&qword_104800, &qword_CDE60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_765AC(uint64_t a1)
{
  v2 = sub_3CB0(&qword_104800, &qword_CDE60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_76614()
{
  result = qword_1083D8;
  if (!qword_1083D8)
  {
    sub_C3B34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1083D8);
  }

  return result;
}

uint64_t sub_7668C()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_766F8()
{
  result = qword_104A50;
  if (!qword_104A50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_104A50);
  }

  return result;
}

uint64_t sub_76744()
{
  v0 = sub_C4CD4();
  sub_C0CC(v0, qword_1083F0);
  sub_B680(v0, qword_1083F0);
  return sub_C4CC4();
}

uint64_t sub_767C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a1;
  v4[4] = v3;
  v6 = sub_C3934();
  v4[5] = v6;
  v4[6] = *(v6 - 8);
  v4[7] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v7 = sub_C5724();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[8] = v7;
  v4[9] = v9;

  return _swift_task_switch(sub_768C4, v7, v9);
}

uint64_t sub_768C4()
{
  v1 = v0[4];
  v2 = *(v1 + qword_108418);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = sub_6D6A8();
  *v4 = v0;
  v4[1] = sub_769C0;

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v0 + 2, v2, 0, &unk_D1E40, v3, v5);
}

uint64_t sub_769C0()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_76F24;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_76ADC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_76ADC()
{
  v1 = v0[2];
  if (!sub_C5CF4())
  {
    goto LABEL_6;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    swift_unknownObjectRelease();
LABEL_6:
    if (qword_104278 != -1)
    {
      swift_once();
    }

    v12 = v0[4];
    v13 = sub_C4CD4();
    sub_B680(v13, qword_1083F0);
    v14 = v12;
    v15 = v1;
    v16 = sub_C4CB4();
    v17 = sub_C5A44();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[4];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412546;
      v21 = *(v18 + qword_108408);
      *(v19 + 4) = v21;
      *(v19 + 12) = 2112;
      *(v19 + 14) = v15;
      *v20 = v21;
      v20[1] = v15;
      v22 = v15;
      v23 = v21;
      _os_log_impl(&dword_0, v16, v17, "Error getting JournalEntryAssetFileAttachment.file as CKAsset for requested id %@. Record: %@", v19, 0x16u);
      sub_3CB0(&qword_1050F0, &unk_CF5A0);
      swift_arrayDestroy();
    }

    sub_77300();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
    goto LABEL_11;
  }

  v3 = [v2 fileURL];
  if (v3)
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[5];
    v7 = v0[3];
    v8 = v3;
    sub_C38F4();
    swift_unknownObjectRelease();

    v9 = sub_3CB0(&qword_108540, &unk_D1E50);
    v10 = *(v9 + 48);
    (*(v5 + 32))(v7, v4, v6);
    *(v7 + v10) = v1;
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);

    v11 = v0[1];
    goto LABEL_12;
  }

  if (qword_104278 != -1)
  {
    swift_once();
  }

  v26 = v0[4];
  v27 = sub_C4CD4();
  sub_B680(v27, qword_1083F0);
  v28 = v26;
  v29 = sub_C4CB4();
  v30 = sub_C5A44();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = v0[4];
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    v34 = *(v31 + qword_108408);
    *(v32 + 4) = v34;
    *v33 = v34;
    v35 = v34;
    _os_log_impl(&dword_0, v29, v30, "ckAsset.fileURL is nil for requested recordID %@", v32, 0xCu);
    sub_60738(v33);
  }

  sub_77300();
  swift_allocError();
  *v36 = 1;
  swift_willThrow();
  swift_unknownObjectRelease();
LABEL_11:

  v11 = v0[1];
LABEL_12:

  return v11();
}

uint64_t sub_76F24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_76F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return _swift_task_switch(sub_76FB4, 0, 0);
}

uint64_t sub_76FB4()
{
  v1 = v0[20];
  v2 = *(v0[21] + qword_108408);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_6D0DC;
  v3 = swift_continuation_init();
  v0[17] = sub_3CB0(&qword_107E20, &qword_D0998);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_327E0;
  v0[13] = &unk_F3020;
  v0[14] = v3;
  [v1 fetchRecordWithID:v2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

void sub_77118()
{
  v1 = *(v0 + qword_108418);
}

id sub_77168()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AttachmentDownloadOperation(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_771A0(uint64_t a1)
{
  v2 = *(a1 + qword_108418);
}

uint64_t type metadata accessor for AttachmentDownloadOperation(uint64_t a1)
{
  result = qword_108448;
  if (!qword_108448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_77250(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1CE7C;

  return sub_76F90(a1, a2, v6);
}

unint64_t sub_77300()
{
  result = qword_108538;
  if (!qword_108538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_108538);
  }

  return result;
}

unint64_t sub_77380()
{
  result = qword_108548;
  if (!qword_108548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_108548);
  }

  return result;
}

uint64_t sub_7740C()
{
  v0 = sub_C4CD4();
  sub_C0CC(v0, qword_108550);
  v1 = sub_B680(v0, qword_108550);
  if (qword_104310 != -1)
  {
    swift_once();
  }

  v2 = sub_B680(v0, qword_115710);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_77534()
{
  ObjectType = swift_getObjectType();
  v2 = qword_108620;
  sub_3CB0(&qword_108738, &unk_D1FF0);
  sub_776A4();
  *&v0[v2] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5.receiver = v0;
  v5.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v5, "init");
  [*&v3[qword_108620] setCountLimit:500];
  return v3;
}

uint64_t sub_7760C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = a1;
  sub_C5E44();

  swift_unknownObjectRelease();
  return sub_BED0(v8);
}

unint64_t sub_776A4()
{
  result = qword_108740;
  if (!qword_108740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_108740);
  }

  return result;
}

uint64_t sub_776F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x68746C616568;
  }

  else
  {
    v3 = 0x6163696669746F6ELL;
  }

  if (v2)
  {
    v4 = 0xED0000736E6F6974;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x68746C616568;
  }

  else
  {
    v5 = 0x6163696669746F6ELL;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xED0000736E6F6974;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_C6244();
  }

  return v8 & 1;
}

Swift::Int sub_777A4()
{
  sub_C62F4();
  sub_C5514();

  return sub_C6344();
}

double sub_77830(uint64_t a1)
{
  sub_C5514();

  return result;
}

Swift::Int sub_778A8(uint64_t a1)
{
  sub_C62F4();
  sub_C5514();

  return sub_C6344();
}

void sub_77930(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_F08B8;
  v7._object = v3;
  v5 = sub_C6134(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_77990(uint64_t *a1@<X8>)
{
  v2 = 0x6163696669746F6ELL;
  if (*v1)
  {
    v2 = 0x68746C616568;
  }

  v3 = 0xED0000736E6F6974;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_779E4()
{
  sub_C62F4();
  sub_C5514();

  return sub_C6344();
}

double sub_77ABC(uint64_t a1)
{
  sub_C5514();

  return result;
}

Swift::Int sub_77B80(uint64_t a1)
{
  sub_C62F4();
  sub_C5514();

  return sub_C6344();
}

unint64_t sub_77C54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_7B66C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_77C84(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6C6172656E6567;
  v4 = 0xE700000000000000;
  v5 = 0x79636176697270;
  if (*v1 != 2)
  {
    v5 = 0x796C616E41707061;
    v4 = 0xEC00000073636974;
  }

  if (*v1)
  {
    v3 = 0x6163696669746F6ELL;
    v2 = 0xED0000736E6F6974;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_77D18(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0x6E6F697461636F6CLL;
    v6 = 0x4D664F6574617473;
    if (a1 != 10)
    {
      v6 = 0x7478655468636972;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0x6172656D6163;
    v8 = 0x6C64496F69647561;
    if (a1 != 7)
    {
      v8 = 0x7463416F69647561;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7475706E496F6ELL;
    v2 = 0x6B63695065746164;
    v3 = 0x6974736567677573;
    if (a1 != 4)
    {
      v3 = 0x736F746F6870;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6472616F6279656BLL;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_77EC0@<X0>(uint64_t a1@<X8>)
{
  v178 = a1;
  v174 = sub_C5264();
  v161 = *(v174 - 8);
  __chkstk_darwin(v174);
  v173 = &v149 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for CanvasContentInputType(0);
  v157 = *(v162 - 8);
  __chkstk_darwin(v162);
  v153 = &v149 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_3CB0(&qword_108750, &qword_D2000);
  v4 = __chkstk_darwin(v3 - 8);
  v158 = &v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v167 = &v149 - v6;
  v7 = sub_3CB0(&qword_108758, &qword_D2008);
  v8 = __chkstk_darwin(v7 - 8);
  v156 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v168 = &v149 - v10;
  v11 = sub_C3D14();
  v165 = *(v11 - 8);
  v166 = v11;
  v12 = __chkstk_darwin(v11);
  v155 = &v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v172 = &v149 - v14;
  v15 = sub_3CB0(&qword_104778, &qword_CDE30);
  v16 = __chkstk_darwin(v15 - 8);
  v171 = &v149 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v160 = &v149 - v18;
  v19 = sub_C35C4();
  v169 = *(v19 - 8);
  v170 = v19;
  v20 = __chkstk_darwin(v19);
  v149 = &v149 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v151 = &v149 - v23;
  v24 = __chkstk_darwin(v22);
  v159 = &v149 - v25;
  v26 = __chkstk_darwin(v24);
  v152 = &v149 - v27;
  v28 = __chkstk_darwin(v26);
  v150 = &v149 - v29;
  v30 = __chkstk_darwin(v28);
  v154 = &v149 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v149 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v149 - v36;
  __chkstk_darwin(v35);
  v39 = &v149 - v38;
  v40 = sub_C3934();
  v163 = *(v40 - 8);
  v164 = v40;
  __chkstk_darwin(v40);
  v42 = &v149 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_3CB0(&qword_1063B8, &qword_CF1C0);
  v44 = __chkstk_darwin(v43 - 8);
  v46 = &v149 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v48 = &v149 - v47;
  v49 = type metadata accessor for AppLaunchAction(0);
  __chkstk_darwin(v49);
  v51 = &v149 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_C3634();
  v176 = *(v52 - 8);
  v177 = v52;
  __chkstk_darwin(v52);
  v54 = &v149 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_C3624();
  sub_C3614();
  v55 = v54;
  sub_C35E4();
  sub_7B888(v175, v51, type metadata accessor for AppLaunchAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v175 = v48;
    v58 = v171;
    v159 = v42;
    v151 = v39;
    v155 = v34;
    v60 = v172;
    v59 = v173;
    v61 = v174;
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v88 = *(v51 + 1);
        sub_C3604();
        if (!v88)
        {
          goto LABEL_84;
        }

        v85 = sub_C35D4();
        if (!*v89)
        {

          v85(v180, 0);
          goto LABEL_84;
        }

        v86 = v89;
        v87 = v37;
        sub_C35B4();
LABEL_80:

        v103 = *v86;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v86 = v103;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_81;
        }

        goto LABEL_37;
      }

      v62 = v175;
      sub_E9D4(v51, v175, &qword_1063B8, &qword_CF1C0);
      sub_C3604();
      v63 = v46;
      sub_B954(v62, v46, &qword_1063B8, &qword_CF1C0);
      v64 = v163;
      v65 = v46;
      v66 = v164;
      if ((*(v163 + 48))(v65, 1, v164) == 1)
      {
        v67 = &qword_1063B8;
        v68 = &qword_CF1C0;
        sub_C060(v62, &qword_1063B8, &qword_CF1C0);
        v69 = v63;
LABEL_13:
        sub_C060(v69, v67, v68);
        goto LABEL_84;
      }

      v105 = v159;
      (*(v64 + 32))(v159, v63, v66);
      v107 = sub_C35D4();
      if (*v106)
      {
        v108 = v106;
        sub_C38B4();
        v109 = v151;
        sub_C35B4();

        v110 = *v108;
        v111 = swift_isUniquelyReferenced_nonNull_native();
        *v108 = v110;
        if ((v111 & 1) == 0)
        {
          v110 = sub_488F0(0, *(v110 + 2) + 1, 1, v110);
          *v108 = v110;
        }

        v113 = *(v110 + 2);
        v112 = *(v110 + 3);
        if (v113 >= v112 >> 1)
        {
          v110 = sub_488F0((v112 > 1), v113 + 1, 1, v110);
          *v108 = v110;
        }

        *(v110 + 2) = v113 + 1;
        (*(v169 + 32))(v110 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v113, v109, v170);
        v107(v180, 0);
        (*(v64 + 8))(v159, v66);
        v114 = &qword_1063B8;
        v115 = &qword_CF1C0;
        v116 = v175;
      }

      else
      {
        v107(v180, 0);
        (*(v64 + 8))(v105, v66);
        v114 = &qword_1063B8;
        v115 = &qword_CF1C0;
        v116 = v62;
      }

      goto LABEL_79;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v70 = v160;
      sub_E9D4(v51, v160, &qword_104778, &qword_CDE30);
      sub_C3604();
      sub_B954(v70, v58, &qword_104778, &qword_CDE30);
      v71 = v165;
      v72 = v166;
      if ((*(v165 + 48))(v58, 1, v166) == 1)
      {
        v67 = &qword_104778;
        v68 = &qword_CDE30;
        sub_C060(v70, &qword_104778, &qword_CDE30);
        v69 = v58;
        goto LABEL_13;
      }

      (*(v71 + 32))(v60, v58, v72);
      v118 = sub_C35D4();
      if (*v117)
      {
        v119 = v117;
        sub_C3CC4();
        sub_C35B4();

        v120 = *v119;
        v121 = swift_isUniquelyReferenced_nonNull_native();
        *v119 = v120;
        if ((v121 & 1) == 0)
        {
          v120 = sub_488F0(0, *(v120 + 2) + 1, 1, v120);
          *v119 = v120;
        }

        v123 = *(v120 + 2);
        v122 = *(v120 + 3);
        if (v123 >= v122 >> 1)
        {
          v120 = sub_488F0((v122 > 1), v123 + 1, 1, v120);
          *v119 = v120;
        }

        *(v120 + 2) = v123 + 1;
        (*(v169 + 32))(v120 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v123, v155, v170);
        v118(v180, 0);
        (*(v71 + 8))(v60, v72);
        v114 = &qword_104778;
        v115 = &qword_CDE30;
        v116 = v160;
      }

      else
      {
        v118(v180, 0);
        (*(v71 + 8))(v60, v72);
        v114 = &qword_104778;
        v115 = &qword_CDE30;
        v116 = v70;
      }

LABEL_79:
      sub_C060(v116, v114, v115);
      goto LABEL_84;
    }

    v90 = *(v51 + 1);
    v91 = sub_3CB0(&qword_108760, &unk_D2010);
    v92 = *(v91 + 64);
    v93 = v168;
    sub_E9D4(&v51[*(v91 + 48)], v168, &qword_108758, &qword_D2008);
    sub_E9D4(&v51[v92], v167, &qword_108750, &qword_D2000);
    sub_C3604();
    v94 = v162;
    if (v90)
    {
      v96 = sub_C35D4();
      if (*v95)
      {
        v97 = v95;
        sub_C35B4();

        v98 = *v97;
        v99 = swift_isUniquelyReferenced_nonNull_native();
        *v97 = v98;
        if ((v99 & 1) == 0)
        {
          v98 = sub_488F0(0, *(v98 + 2) + 1, 1, v98);
          *v97 = v98;
        }

        v101 = *(v98 + 2);
        v100 = *(v98 + 3);
        if (v101 >= v100 >> 1)
        {
          v98 = sub_488F0((v100 > 1), v101 + 1, 1, v98);
          *v97 = v98;
        }

        *(v98 + 2) = v101 + 1;
        (*(v169 + 32))(v98 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v101, v154, v170);
        v96(v180, 0);
        v93 = v168;
        v94 = v162;
      }

      else
      {

        v96(v180, 0);
        v93 = v168;
      }
    }

    v124 = v156;
    sub_B954(v93, v156, &qword_108758, &qword_D2008);
    if ((*(v157 + 48))(v124, 1, v94) == 1)
    {
      sub_C060(v124, &qword_108758, &qword_D2008);
      v125 = v167;
      goto LABEL_69;
    }

    v126 = v153;
    sub_71038(v124, v153);
    v127 = sub_7B6B8(v126);
    v125 = v167;
    if (v127 != 12)
    {
      v128 = v127;
      v130 = sub_C35D4();
      if (*v129)
      {
        v131 = v129;
        sub_77D18(v128);
        sub_C35B4();

        v132 = *v131;
        v133 = swift_isUniquelyReferenced_nonNull_native();
        *v131 = v132;
        if ((v133 & 1) == 0)
        {
          v132 = sub_488F0(0, *(v132 + 2) + 1, 1, v132);
          *v131 = v132;
        }

        v135 = *(v132 + 2);
        v134 = *(v132 + 3);
        if (v135 >= v134 >> 1)
        {
          v132 = sub_488F0((v134 > 1), v135 + 1, 1, v132);
          *v131 = v132;
        }

        *(v132 + 2) = v135 + 1;
        (*(v169 + 32))(v132 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v135, v150, v170);
        v130(v180, 0);
        v136 = v153;
        goto LABEL_68;
      }

      v130(v180, 0);
    }

    v136 = v126;
LABEL_68:
    sub_7B828(v136, type metadata accessor for CanvasContentInputType);
LABEL_69:
    v137 = v158;
    sub_B954(v125, v158, &qword_108750, &qword_D2000);
    v138 = v161;
    if ((*(v161 + 48))(v137, 1, v61) == 1)
    {
      sub_C060(v125, &qword_108750, &qword_D2000);
      sub_C060(v168, &qword_108758, &qword_D2008);
      v116 = v137;
      v114 = &qword_108750;
      v115 = &qword_D2000;
    }

    else
    {
      (*(v138 + 32))(v59, v137, v61);
      v140 = sub_C35D4();
      if (*v139)
      {
        v141 = v139;
        v179 = sub_C5254();
        sub_C6214();
        sub_C35B4();

        v142 = *v141;
        v143 = swift_isUniquelyReferenced_nonNull_native();
        *v141 = v142;
        if ((v143 & 1) == 0)
        {
          v142 = sub_488F0(0, *(v142 + 2) + 1, 1, v142);
          *v141 = v142;
        }

        v145 = *(v142 + 2);
        v144 = *(v142 + 3);
        if (v145 >= v144 >> 1)
        {
          v142 = sub_488F0((v144 > 1), v145 + 1, 1, v142);
          *v141 = v142;
        }

        *(v142 + 2) = v145 + 1;
        (*(v169 + 32))(v142 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v145, v152, v170);
        v140(v180, 0);
        (*(v161 + 8))(v59, v61);
      }

      else
      {
        v140(v180, 0);
        (*(v138 + 8))(v59, v61);
      }

      sub_C060(v125, &qword_108750, &qword_D2000);
      v114 = &qword_108758;
      v115 = &qword_D2008;
      v116 = v168;
    }

    goto LABEL_79;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v74 = v165;
      v73 = v166;
      v75 = v155;
      (*(v165 + 32))(v155, v51, v166);
      sub_C3604();
      v77 = sub_C35D4();
      if (*v76)
      {
        v78 = v76;
        sub_C3CC4();
        sub_C35B4();

        v79 = *v78;
        v80 = swift_isUniquelyReferenced_nonNull_native();
        *v78 = v79;
        if ((v80 & 1) == 0)
        {
          v79 = sub_488F0(0, *(v79 + 2) + 1, 1, v79);
          *v78 = v79;
        }

        v82 = *(v79 + 2);
        v81 = *(v79 + 3);
        if (v82 >= v81 >> 1)
        {
          v79 = sub_488F0((v81 > 1), v82 + 1, 1, v79);
          *v78 = v79;
        }

        *(v79 + 2) = v82 + 1;
        (*(v169 + 32))(v79 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v82, v159, v170);
        v77(v180, 0);
        (*(v74 + 8))(v75, v73);
      }

      else
      {
        v77(v180, 0);
        (*(v74 + 8))(v75, v73);
      }

      goto LABEL_84;
    }

    sub_C3604();
    v85 = sub_C35D4();
    if (*v102)
    {
      v86 = v102;
      v87 = v151;
      sub_C35B4();

      v103 = *v86;
      v104 = swift_isUniquelyReferenced_nonNull_native();
      *v86 = v103;
      if (v104)
      {
LABEL_81:
        v148 = *(v103 + 2);
        v147 = *(v103 + 3);
        if (v148 >= v147 >> 1)
        {
          v103 = sub_488F0((v147 > 1), v148 + 1, 1, v103);
          *v86 = v103;
        }

        *(v103 + 2) = v148 + 1;
        (*(v169 + 32))(v103 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v148, v87, v170);
        v85(v180, 0);
        goto LABEL_84;
      }

LABEL_37:
      v103 = sub_488F0(0, *(v103 + 2) + 1, 1, v103);
      *v86 = v103;
      goto LABEL_81;
    }

    goto LABEL_51;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v83 = *v51;
    sub_C3604();
    if (v83 == 4)
    {
      goto LABEL_84;
    }

    v85 = sub_C35D4();
    if (*v84)
    {
      v86 = v84;
      v87 = v149;
      sub_C35B4();
      goto LABEL_80;
    }

LABEL_51:
    v85(v180, 0);
    goto LABEL_84;
  }

  if (EnumCaseMultiPayload == 7)
  {
    (*(v176 + 8))(v54, v177);
    sub_7B828(v51, type metadata accessor for AppLaunchAction);
    return (*(v163 + 56))(v178, 1, 1, v164);
  }

  sub_C3604();
LABEL_84:
  sub_C35F4();
  return (*(v176 + 8))(v55, v177);
}

uint64_t type metadata accessor for AppLaunchAction(uint64_t a1)
{
  result = qword_1087D8;
  if (!qword_1087D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_79744(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      __CocoaSet.isEqual(to:)(v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_79D5C(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_67444();
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v28 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v29 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(a2 + 40);
      v21 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v22 = sub_C5D34(v20);
      v23 = -1 << *(a2 + 32);
      v24 = v22 & ~v23;
      if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        break;
      }

      v25 = ~v23;
      while (1)
      {
        v26 = *(*(a2 + 48) + 8 * v24);
        v27 = sub_C5D44();

        if (v27)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v28;
      v12 = v29;
      v16 = a1;
      if (!v29)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

uint64_t sub_799AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_C3934();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v44 = &v33 - v10;
  result = __chkstk_darwin(v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_7BFA0(&unk_108840, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v26 = sub_C52F4();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_7BFA0(&qword_1088A8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v31 = sub_C53A4();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_79D5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_C5EF4())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_C5F34();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_79E5C(uint64_t a1, uint64_t a2)
{
  v187 = a1;
  v188 = a2;
  v158 = sub_C5264();
  v157 = *(v158 - 8);
  __chkstk_darwin(v158);
  v155 = &v154 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_3CB0(&qword_108880, &qword_D21C8);
  __chkstk_darwin(v166);
  v162 = &v154 - v3;
  v165 = type metadata accessor for CanvasContentInputType(0);
  v164 = *(v165 - 8);
  __chkstk_darwin(v165);
  v171 = &v154 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_3CB0(&qword_108888, &unk_D21D0);
  __chkstk_darwin(v169);
  v168 = &v154 - v5;
  v6 = sub_3CB0(&qword_108750, &qword_D2000);
  v7 = __chkstk_darwin(v6 - 8);
  v156 = &v154 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v178 = &v154 - v10;
  __chkstk_darwin(v9);
  v177 = &v154 - v11;
  v12 = sub_3CB0(&qword_108758, &qword_D2008);
  v13 = __chkstk_darwin(v12 - 8);
  v160 = &v154 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v179 = &v154 - v16;
  __chkstk_darwin(v15);
  v176 = &v154 - v17;
  v18 = sub_C3D14();
  v180 = *(v18 - 8);
  v181 = v18;
  v19 = __chkstk_darwin(v18);
  v170 = &v154 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v161 = &v154 - v21;
  v22 = sub_3CB0(&qword_104778, &qword_CDE30);
  __chkstk_darwin(v22 - 8);
  v186 = &v154 - v23;
  v185 = sub_3CB0(&qword_104770, &qword_CDE28);
  __chkstk_darwin(v185);
  v184 = &v154 - v24;
  v167 = sub_C3934();
  v183 = *(v167 - 8);
  __chkstk_darwin(v167);
  v159 = &v154 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_3CB0(&qword_1063B8, &qword_CF1C0);
  __chkstk_darwin(v26 - 8);
  v163 = &v154 - v27;
  v182 = sub_3CB0(&qword_108890, &qword_D21E0);
  __chkstk_darwin(v182);
  v29 = &v154 - v28;
  v30 = type metadata accessor for AppLaunchAction(0);
  v31 = __chkstk_darwin(v30);
  v174 = (&v154 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = __chkstk_darwin(v31);
  v35 = &v154 - v34;
  v36 = __chkstk_darwin(v33);
  v173 = &v154 - v37;
  v38 = __chkstk_darwin(v36);
  v175 = &v154 - v39;
  v40 = __chkstk_darwin(v38);
  v42 = &v154 - v41;
  v43 = __chkstk_darwin(v40);
  v45 = &v154 - v44;
  v46 = __chkstk_darwin(v43);
  v48 = (&v154 - v47);
  __chkstk_darwin(v46);
  v50 = &v154 - v49;
  v51 = sub_3CB0(&qword_108898, &qword_D21E8);
  v52 = __chkstk_darwin(v51 - 8);
  v54 = &v154 - v53;
  v55 = &v154 + *(v52 + 56) - v53;
  sub_7B888(v187, &v154 - v53, type metadata accessor for AppLaunchAction);
  v56 = v188;
  v188 = v55;
  sub_7B888(v56, v55, type metadata accessor for AppLaunchAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v62 = v42;
    v63 = v182;
    v64 = v183;
    v172 = v54;
    v65 = v185;
    v66 = v186;
    v67 = v184;
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v54 = v172;
        sub_7B888(v172, v50, type metadata accessor for AppLaunchAction);
        v68 = v188;
        if (swift_getEnumCaseMultiPayload())
        {
          sub_C060(v50, &qword_1063B8, &qword_CF1C0);
          goto LABEL_59;
        }

        v111 = *(v63 + 48);
        v112 = v29;
        sub_E9D4(v50, v29, &qword_1063B8, &qword_CF1C0);
        sub_E9D4(v68, &v29[v111], &qword_1063B8, &qword_CF1C0);
        v113 = *(v64 + 48);
        v114 = v167;
        if (v113(v29, 1, v167) == 1)
        {
          if (v113(&v29[v111], 1, v114) == 1)
          {
            sub_C060(v29, &qword_1063B8, &qword_CF1C0);
            goto LABEL_87;
          }
        }

        else
        {
          v119 = v163;
          sub_B954(v29, v163, &qword_1063B8, &qword_CF1C0);
          if (v113(&v29[v111], 1, v114) != 1)
          {
            v136 = &v29[v111];
            v137 = v159;
            (*(v64 + 32))(v159, v136, v114);
            sub_7BFA0(&qword_1088A8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v138 = sub_C53A4();
            v139 = *(v64 + 8);
            v139(v137, v114);
            v139(v119, v114);
            sub_C060(v112, &qword_1063B8, &qword_CF1C0);
            if (v138)
            {
              goto LABEL_87;
            }

            goto LABEL_99;
          }

          (*(v64 + 8))(v119, v114);
        }

        sub_C060(v29, &qword_108890, &qword_D21E0);
        goto LABEL_99;
      }

      v54 = v172;
      sub_7B888(v172, v48, type metadata accessor for AppLaunchAction);
      v86 = *v48;
      v85 = v48[1];
      v87 = v188;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_57;
      }

      v88 = v87[1];
      if (v85)
      {
        if (v88)
        {
          if (v86 != *v87 || v85 != v88)
          {
            v125 = sub_C6244();

            if (v125)
            {
              goto LABEL_87;
            }

            goto LABEL_99;
          }

LABEL_29:

          goto LABEL_87;
        }
      }

      else if (!v88)
      {
        goto LABEL_87;
      }

      goto LABEL_99;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_7B888(v172, v45, type metadata accessor for AppLaunchAction);
      v69 = v188;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_C060(v45, &qword_104778, &qword_CDE30);
        v54 = v172;
        goto LABEL_59;
      }

      v70 = *(v65 + 48);
      sub_E9D4(v45, v67, &qword_104778, &qword_CDE30);
      sub_E9D4(v69, v67 + v70, &qword_104778, &qword_CDE30);
      v71 = v180;
      v72 = v181;
      v73 = *(v180 + 48);
      if (v73(v67, 1, v181) == 1)
      {
        v74 = v73(v67 + v70, 1, v72);
        v75 = v172;
        if (v74 == 1)
        {
          sub_C060(v67, &qword_104778, &qword_CDE30);
LABEL_80:
          v124 = v75;
LABEL_88:
          sub_7B828(v124, type metadata accessor for AppLaunchAction);
          v61 = 1;
          return v61 & 1;
        }
      }

      else
      {
        sub_B954(v67, v66, &qword_104778, &qword_CDE30);
        if (v73(v67 + v70, 1, v72) != 1)
        {
          v120 = v67 + v70;
          v121 = v161;
          (*(v71 + 32))(v161, v120, v72);
          sub_7BFA0(&qword_1047A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v122 = sub_C53A4();
          v123 = *(v71 + 8);
          v123(v121, v72);
          v123(v66, v72);
          sub_C060(v67, &qword_104778, &qword_CDE30);
          v75 = v172;
          if (v122)
          {
            goto LABEL_80;
          }

LABEL_85:
          sub_7B828(v75, type metadata accessor for AppLaunchAction);
          goto LABEL_60;
        }

        (*(v71 + 8))(v66, v72);
        v75 = v172;
      }

      v115 = &qword_104770;
      v116 = &qword_CDE28;
      v117 = v67;
LABEL_84:
      sub_C060(v117, v115, v116);
      goto LABEL_85;
    }

    v54 = v172;
    v89 = v62;
    sub_7B888(v172, v62, type metadata accessor for AppLaunchAction);
    v90 = *v89;
    v91 = v89[1];
    v92 = sub_3CB0(&qword_108760, &unk_D2010);
    v93 = *(v92 + 48);
    v94 = *(v92 + 64);
    v95 = v188;
    if (swift_getEnumCaseMultiPayload() != 3)
    {

      sub_C060(v89 + v94, &qword_108750, &qword_D2000);
      sub_C060(v89 + v93, &qword_108758, &qword_D2008);
      goto LABEL_59;
    }

    v96 = v95[1];
    v187 = *v95;
    sub_E9D4(v89 + v93, v176, &qword_108758, &qword_D2008);
    sub_E9D4(v89 + v94, v177, &qword_108750, &qword_D2000);
    sub_E9D4(v95 + v93, v179, &qword_108758, &qword_D2008);
    sub_E9D4(v95 + v94, v178, &qword_108750, &qword_D2000);
    if (v91)
    {
      v97 = v171;
      if (v96)
      {
        v98 = v172;
        v100 = v176;
        v99 = v177;
        v101 = v179;
        if (v90 == v187 && v91 == v96)
        {

          v103 = v168;
          v102 = v169;
          goto LABEL_91;
        }

        v127 = sub_C6244();

        v103 = v168;
        v102 = v169;
        if (v127)
        {
LABEL_91:
          v128 = *(v102 + 48);
          sub_B954(v100, v103, &qword_108758, &qword_D2008);
          sub_B954(v101, v103 + v128, &qword_108758, &qword_D2008);
          v129 = *(v164 + 48);
          v130 = v165;
          if (v129(v103, 1, v165) == 1)
          {
            v131 = v129(v103 + v128, 1, v130);
            v132 = v166;
            if (v131 == 1)
            {
              sub_C060(v103, &qword_108758, &qword_D2008);
              v133 = v99;
              goto LABEL_101;
            }
          }

          else
          {
            v134 = v160;
            sub_B954(v103, v160, &qword_108758, &qword_D2008);
            v135 = v129(v103 + v128, 1, v130);
            v132 = v166;
            if (v135 != 1)
            {
              sub_71038(v103 + v128, v97);
              v140 = sub_71514(v134, v97);
              sub_7B828(v97, type metadata accessor for CanvasContentInputType);
              sub_7B828(v134, type metadata accessor for CanvasContentInputType);
              sub_C060(v103, &qword_108758, &qword_D2008);
              v133 = v99;
              if (v140)
              {
LABEL_101:
                v141 = *(v132 + 48);
                v142 = v162;
                sub_B954(v133, v162, &qword_108750, &qword_D2000);
                v143 = v178;
                v144 = v142;
                sub_B954(v178, v142 + v141, &qword_108750, &qword_D2000);
                v145 = v157;
                v146 = *(v157 + 48);
                v147 = v158;
                if (v146(v142, 1, v158) == 1)
                {
                  sub_C060(v143, &qword_108750, &qword_D2000);
                  sub_C060(v179, &qword_108758, &qword_D2008);
                  v148 = v162;
                  sub_C060(v133, &qword_108750, &qword_D2000);
                  sub_C060(v100, &qword_108758, &qword_D2008);
                  if (v146(v148 + v141, 1, v147) == 1)
                  {
                    sub_C060(v148, &qword_108750, &qword_D2000);
                    v124 = v172;
                    goto LABEL_88;
                  }
                }

                else
                {
                  v149 = v142;
                  v150 = v156;
                  sub_B954(v149, v156, &qword_108750, &qword_D2000);
                  if (v146(v144 + v141, 1, v147) != 1)
                  {
                    v151 = v144 + v141;
                    v152 = v155;
                    (*(v145 + 32))(v155, v151, v147);
                    sub_7BFA0(&qword_1088A0, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
                    LODWORD(v188) = sub_C53A4();
                    v153 = *(v145 + 8);
                    v153(v152, v147);
                    sub_C060(v178, &qword_108750, &qword_D2000);
                    sub_C060(v179, &qword_108758, &qword_D2008);
                    sub_C060(v133, &qword_108750, &qword_D2000);
                    sub_C060(v100, &qword_108758, &qword_D2008);
                    v153(v150, v147);
                    sub_C060(v162, &qword_108750, &qword_D2000);
                    v124 = v172;
                    if (v188)
                    {
                      goto LABEL_88;
                    }

LABEL_107:
                    sub_7B828(v124, type metadata accessor for AppLaunchAction);
                    goto LABEL_60;
                  }

                  sub_C060(v178, &qword_108750, &qword_D2000);
                  sub_C060(v179, &qword_108758, &qword_D2008);
                  v148 = v162;
                  sub_C060(v133, &qword_108750, &qword_D2000);
                  sub_C060(v100, &qword_108758, &qword_D2008);
                  (*(v145 + 8))(v150, v147);
                }

                sub_C060(v148, &qword_108880, &qword_D21C8);
                v124 = v172;
                goto LABEL_107;
              }

LABEL_97:
              sub_C060(v178, &qword_108750, &qword_D2000);
              sub_C060(v101, &qword_108758, &qword_D2008);
              sub_C060(v133, &qword_108750, &qword_D2000);
              sub_C060(v100, &qword_108758, &qword_D2008);
              sub_7B828(v172, type metadata accessor for AppLaunchAction);
              goto LABEL_60;
            }

            sub_7B828(v134, type metadata accessor for CanvasContentInputType);
          }

          sub_C060(v103, &qword_108888, &unk_D21D0);
          v133 = v99;
          goto LABEL_97;
        }

LABEL_83:
        sub_C060(v178, &qword_108750, &qword_D2000);
        v75 = v98;
        sub_C060(v101, &qword_108758, &qword_D2008);
        sub_C060(v99, &qword_108750, &qword_D2000);
        v117 = v100;
        v115 = &qword_108758;
        v116 = &qword_D2008;
        goto LABEL_84;
      }

      v98 = v172;
      v100 = v176;
      v99 = v177;
      v101 = v179;
    }

    else
    {
      v97 = v171;
      v98 = v172;
      v100 = v176;
      v99 = v177;
      v101 = v179;
      v103 = v168;
      v102 = v169;
      if (!v96)
      {
        goto LABEL_91;
      }
    }

    goto LABEL_83;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v76 = v175;
      sub_7B888(v54, v175, type metadata accessor for AppLaunchAction);
      v77 = v188;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v79 = v180;
        v78 = v181;
        v80 = v170;
        (*(v180 + 32))(v170, v77, v181);
        v61 = sub_C3CE4();
        v81 = *(v79 + 8);
        v81(v80, v78);
        v81(v76, v78);
        goto LABEL_19;
      }

      (*(v180 + 8))(v76, v181);
      goto LABEL_59;
    }

    v104 = v173;
    sub_7B888(v54, v173, type metadata accessor for AppLaunchAction);
    v105 = v188;
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_59;
    }

    v106 = *v105;
    if (*v104)
    {
      v107 = 0x68746C616568;
    }

    else
    {
      v107 = 0x6163696669746F6ELL;
    }

    if (*v104)
    {
      v108 = 0xE600000000000000;
    }

    else
    {
      v108 = 0xED0000736E6F6974;
    }

    if (v106)
    {
      v109 = 0x68746C616568;
    }

    else
    {
      v109 = 0x6163696669746F6ELL;
    }

    if (v106)
    {
      v110 = 0xE600000000000000;
    }

    else
    {
      v110 = 0xED0000736E6F6974;
    }

    if (v107 != v109 || v108 != v110)
    {
      v118 = sub_C6244();

      if (v118)
      {
        goto LABEL_87;
      }

      goto LABEL_99;
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload == 6)
  {
    sub_7B888(v54, v35, type metadata accessor for AppLaunchAction);
    v82 = *v35;
    v83 = v188;
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      goto LABEL_59;
    }

    v84 = *v83;
    if (v82 == 4)
    {
      if (v84 != 4)
      {
        goto LABEL_99;
      }

LABEL_87:
      v124 = v54;
      goto LABEL_88;
    }

    if (v84 != 4 && (sub_31858(v82, v84) & 1) != 0)
    {
      goto LABEL_87;
    }

LABEL_99:
    sub_7B828(v54, type metadata accessor for AppLaunchAction);
    goto LABEL_60;
  }

  if (EnumCaseMultiPayload != 7)
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      goto LABEL_87;
    }

LABEL_59:
    sub_C060(v54, &qword_108898, &qword_D21E8);
LABEL_60:
    v61 = 0;
    return v61 & 1;
  }

  v58 = v174;
  sub_7B888(v54, v174, type metadata accessor for AppLaunchAction);
  v59 = *v58;
  v60 = v188;
  if (swift_getEnumCaseMultiPayload() != 7)
  {
LABEL_57:

    goto LABEL_59;
  }

  v61 = sub_799AC(v59, *v60);

LABEL_19:
  sub_7B828(v54, type metadata accessor for AppLaunchAction);
  return v61 & 1;
}

unint64_t sub_7B66C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_F0908;
  v6._object = a2;
  v4 = sub_C6134(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_7B6B8(uint64_t a1)
{
  v2 = type metadata accessor for CanvasContentInputType(0);
  __chkstk_darwin(v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7B888(a1, v4, type metadata accessor for CanvasContentInputType);
  result = swift_getEnumCaseMultiPayload();
  if (result > 5)
  {
    if (result > 8)
    {
      if ((result - 10) >= 2)
      {
        return 11;
      }

      else
      {
        return 12;
      }
    }

    else if (result != 6)
    {
      if (result == 7)
      {
        return 9;
      }

      else
      {
        return 10;
      }
    }
  }

  else if (result > 2)
  {
    if (result == 3)
    {
      return 0;
    }

    else if (result == 4)
    {
      return 3;
    }

    else
    {
      return 5;
    }
  }

  else if (result)
  {
    if (result == 1)
    {
      sub_C060(v4, &qword_104778, &qword_CDE30);
      return 4;
    }

    else if (*v4)
    {
      return 8;
    }

    else
    {
      return 7;
    }
  }

  else if (*v4)
  {
    return 2;
  }

  else
  {
    return 1;
  }

  return result;
}

uint64_t sub_7B828(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_7B888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_7B8F0(uint64_t a1)
{
  sub_7BADC(319, &qword_1087E8, &unk_1087F0, &type metadata accessor for URL, sub_7BB30);
  if (v1 <= 0x3F)
  {
    sub_7BADC(319, &qword_1087F8, &unk_108800, &type metadata for String, sub_7BCB0);
    if (v2 <= 0x3F)
    {
      sub_7BADC(319, &qword_107EB0, &qword_105518, &type metadata accessor for UUID, sub_7BB30);
      if (v3 <= 0x3F)
      {
        sub_7BB84(319);
        if (v4 <= 0x3F)
        {
          sub_7BC34(319, &qword_108810, &type metadata accessor for UUID);
          if (v5 <= 0x3F)
          {
            sub_7BC80();
            if (v6 <= 0x3F)
            {
              sub_7BADC(319, &qword_108820, &unk_108828, &type metadata for SettingsTab, sub_7BCB0);
              if (v7 <= 0x3F)
              {
                sub_7BC34(319, &qword_108830, sub_7BCFC);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_7BADC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_7BB30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_C5DA4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_7BB84(uint64_t a1)
{
  if (!qword_108808)
  {
    sub_28D98(&qword_104950, &unk_D0630);
    sub_28D98(&qword_108758, &qword_D2008);
    sub_28D98(&qword_108750, &qword_D2000);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_108808);
    }
  }
}

void sub_7BC34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

ValueMetadata *sub_7BC80()
{
  result = qword_108818;
  if (!qword_108818)
  {
    result = &type metadata for PermissionType;
    atomic_store(&type metadata for PermissionType, &qword_108818);
  }

  return result;
}

void sub_7BCB0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_C5DA4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_7BCFC(uint64_t a1)
{
  if (!qword_108838)
  {
    sub_C3934();
    sub_7BFA0(&unk_108840, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v1 = sub_C5834();
    if (!v2)
    {
      atomic_store(v1, &qword_108838);
    }
  }
}

uint64_t getEnumTagSinglePayload for SettingsTab(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingsTab(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_7BEF4()
{
  result = qword_108870;
  if (!qword_108870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_108870);
  }

  return result;
}

unint64_t sub_7BF4C()
{
  result = qword_108878;
  if (!qword_108878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_108878);
  }

  return result;
}

uint64_t sub_7BFA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_7BFE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_C44D4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AssetAttachment.AssetType(0);
  __chkstk_darwin(v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  sub_3ED7C(v2, v10, type metadata accessor for AssetAttachment.AssetType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_7C7E0(v10, type metadata accessor for AssetAttachment.AssetType);
      v19 = 1;
      goto LABEL_9;
    }
  }

  else if ((EnumCaseMultiPayload - 2) >= 2)
  {

    v10 += *(sub_3CB0(&qword_106948, &unk_CF5B0) + 48);
  }

  sub_7CE00(v10, v16, type metadata accessor for AssetAttachment.AssetType.FilePathType);
  sub_3ED7C(v16, v14, type metadata accessor for AssetAttachment.AssetType.FilePathType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_7C7E0(v16, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    v18 = sub_C3934();
    (*(*(v18 - 8) + 32))(a1, v14, v18);
  }

  else
  {
    sub_C44C4();
    sub_C4494();

    (*(v5 + 8))(v7, v4);
    sub_7C7E0(v16, type metadata accessor for AssetAttachment.AssetType.FilePathType);
  }

  v19 = 0;
LABEL_9:
  v20 = sub_C3934();
  return (*(*(v20 - 8) + 56))(a1, v19, 1, v20);
}

uint64_t sub_7C33C()
{
  v0 = sub_C4CD4();
  sub_C0CC(v0, qword_1088B0);
  v1 = sub_B680(v0, qword_1088B0);
  if (qword_1042F0 != -1)
  {
    swift_once();
  }

  v2 = sub_B680(v0, qword_1156B0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_7C404()
{
  sub_7C7E0(v0 + OBJC_IVAR____TtC20JournalNotifications15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);

  return swift_deallocClassInstance();
}

uint64_t sub_7C4B8(uint64_t a1)
{
  result = type metadata accessor for AssetAttachment.AssetType(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_7C580(uint64_t a1)
{
  sub_7C6A0(319, &qword_108A08, type metadata accessor for AssetAttachment.AssetType.FilePathType);
  if (v1 <= 0x3F)
  {
    sub_7C6A0(319, &qword_108A10, sub_6BFFC);
    if (v2 <= 0x3F)
    {
      sub_7C6EC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_7C668(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_7C6A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_7C6EC(uint64_t a1)
{
  if (!qword_108A18)
  {
    sub_28D98(&qword_104950, &unk_D0630);
    type metadata accessor for AssetAttachment.AssetType.FilePathType(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_108A18);
    }
  }
}

uint64_t sub_7C774(uint64_t a1)
{
  result = sub_C3934();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_7C7E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_7C840(void *a1)
{
  v2 = sub_3CB0(&qword_104778, &qword_CDE30);
  __chkstk_darwin(v2);
  v4 = &v42 - v3;
  v5 = type metadata accessor for AssetAttachment.AssetType(0);
  __chkstk_darwin(v5);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = [a1 filePath];
  if (v8)
  {
    v9 = v8;
    v43 = sub_C5484();
    v44 = v10;
    v11 = [a1 index];
    v12 = [a1 name];
    if (v12)
    {
      v13 = v12;
      v14 = sub_C5484();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v26 = [objc_allocWithZone(NSString) initWithString:v9];

    v27 = [v26 lastPathComponent];
    if (!v27)
    {
      sub_C5484();
      v27 = sub_C5444();
    }

    v42 = v11;
    v28 = [objc_allocWithZone(NSString) initWithString:v27];

    v29 = [v28 stringByDeletingPathExtension];
    v30 = sub_C5484();
    v32 = v31;

    if (v16)
    {
      if (v14 == 0x6567616D69 && v16 == 0xE500000000000000 || (sub_C6244() & 1) != 0 || v14 == 0x6F65646976 && v16 == 0xE500000000000000 || (sub_C6244() & 1) != 0)
      {

        *v7 = v43;
LABEL_17:
        v33 = v7;
LABEL_20:
        v33[1] = v44;
        type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        type metadata accessor for AssetAttachment(0);
        v34 = swift_allocObject();
        *(v34 + 16) = v42;
        sub_7CE00(v7, v34 + OBJC_IVAR____TtC20JournalNotifications15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
        result = v34;
        v36 = (v34 + OBJC_IVAR____TtC20JournalNotifications15AssetAttachment_fileNameID);
        *v36 = v30;
        v36[1] = v32;
        return result;
      }

      if (v14 == 0x6F69647561 && v16 == 0xE500000000000000)
      {

LABEL_34:
        *v7 = v43;
        goto LABEL_17;
      }

      v41 = sub_C6244();

      if (v41)
      {

        goto LABEL_34;
      }
    }

    else
    {
    }

    v33 = (v7 + *(sub_3CB0(&qword_106948, &unk_CF5B0) + 48));
    *v7 = v14;
    v7[1] = v16;
    *v33 = v43;
    goto LABEL_20;
  }

  if (qword_104288 != -1)
  {
    swift_once();
  }

  v17 = sub_C4CD4();
  sub_B680(v17, qword_1088B0);
  v18 = a1;
  v19 = sub_C4CB4();
  v20 = sub_C5A44();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v45 = v22;
    *v21 = 136315138;
    v23 = [v18 id];
    if (v23)
    {
      v24 = v23;
      sub_C3CF4();

      v25 = sub_C3D14();
      (*(*(v25 - 8) + 56))(v4, 0, 1, v25);
    }

    else
    {
      v37 = sub_C3D14();
      (*(*(v37 - 8) + 56))(v4, 1, 1, v37);
    }

    v38 = sub_C54C4();
    v40 = sub_BA920(v38, v39, &v45);

    *(v21 + 4) = v40;
    _os_log_impl(&dword_0, v19, v20, "JournalEntryAssetFileAttachmentMO is missing filePath. ID: %s", v21, 0xCu);
    sub_BED0(v22);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_7CE00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_7CED0()
{
  sub_3CB0(&qword_108BA0, &qword_D22E0);
  v0 = swift_allocObject();
  v0[2] = [objc_allocWithZone(sub_3CB0(&qword_108BA8 &qword_D22E8))];
  sub_3CB0(&qword_108BB0, &unk_D22F0);
  result = swift_allocObject();
  v0[3] = result;
  v0[4] = 0xD000000000000011;
  v0[5] = 0x80000000000CAD20;
  qword_1155B8 = v0;
  return result;
}

uint64_t sub_7CF80()
{
  v0 = sub_C5B04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_C5AF4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_C5154();
  __chkstk_darwin(v5 - 8);
  sub_36B6C();
  sub_C5144();
  sub_C5AE4();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = sub_C5B44();
  qword_1155C0 = result;
  return result;
}

uint64_t sub_7D130()
{

  return v0;
}

uint64_t sub_7D160()
{
  sub_7D130();

  return swift_deallocClassInstance();
}

id sub_7D1AC()
{
  result = [objc_allocWithZone(type metadata accessor for OperationsManager()) init];
  qword_108BB8 = result;
  return result;
}

id sub_7D1DC()
{
  v1 = &v0[OBJC_IVAR____TtC20JournalNotifications17OperationsManager_mapTableFileAttachmentsQueue];
  v2 = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
  *v1 = 0;
  *(v1 + 1) = v2;
  v3 = &v0[OBJC_IVAR____TtC20JournalNotifications17OperationsManager_mapTableAssetMetadataQueue];
  v4 = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
  *v3 = 0;
  *(v3 + 1) = v4;
  v5 = [objc_allocWithZone(NSOperationQueue) init];
  v6 = OBJC_IVAR____TtC20JournalNotifications17OperationsManager_cacheQueueLowPriority;
  *&v0[OBJC_IVAR____TtC20JournalNotifications17OperationsManager_cacheQueueLowPriority] = v5;
  v7 = qword_1042A8;
  v8 = v5;
  if (v7 != -1)
  {
    swift_once();
  }

  [v8 setUnderlyingQueue:qword_1155C8];

  v9 = *&v0[v6];
  v10 = sub_C5444();
  [v9 setName:v10];

  [*&v0[v6] setMaxConcurrentOperationCount:6];
  [*&v0[v6] setQualityOfService:9];
  v11 = [objc_allocWithZone(NSOperationQueue) init];
  v12 = OBJC_IVAR____TtC20JournalNotifications17OperationsManager_cacheQueueRegularPriority;
  *&v0[OBJC_IVAR____TtC20JournalNotifications17OperationsManager_cacheQueueRegularPriority] = v11;
  v13 = qword_1042B0;
  v14 = v11;
  if (v13 != -1)
  {
    swift_once();
  }

  [v14 setUnderlyingQueue:qword_1155D0];

  v15 = *&v0[v12];
  v16 = sub_C5444();
  [v15 setName:v16];

  [*&v0[v12] setMaxConcurrentOperationCount:6];
  [*&v0[v12] setQualityOfService:-1];
  v17 = [objc_allocWithZone(NSOperationQueue) init];
  v18 = OBJC_IVAR____TtC20JournalNotifications17OperationsManager_cacheQueueHighPriority;
  *&v0[OBJC_IVAR____TtC20JournalNotifications17OperationsManager_cacheQueueHighPriority] = v17;
  v19 = qword_1042B8;
  v20 = v17;
  if (v19 != -1)
  {
    swift_once();
  }

  [v20 setUnderlyingQueue:qword_1155D8];

  v21 = *&v0[v18];
  v22 = sub_C5444();
  [v21 setName:v22];

  [*&v0[v18] setMaxConcurrentOperationCount:2];
  [*&v0[v18] setQualityOfService:33];
  v23 = [objc_allocWithZone(NSOperationQueue) init];
  v24 = OBJC_IVAR____TtC20JournalNotifications17OperationsManager_fileAttachmentsQueue;
  *&v0[OBJC_IVAR____TtC20JournalNotifications17OperationsManager_fileAttachmentsQueue] = v23;
  v25 = qword_104228;
  v26 = v23;
  if (v25 != -1)
  {
    swift_once();
  }

  [v26 setUnderlyingQueue:qword_115480];

  v27 = *&v0[v24];
  v28 = sub_C5444();
  [v27 setName:v28];

  [*&v0[v24] setMaxConcurrentOperationCount:2];
  [*&v0[v24] setQualityOfService:-1];
  v29 = [objc_allocWithZone(NSOperationQueue) init];
  v30 = OBJC_IVAR____TtC20JournalNotifications17OperationsManager_assetMetadataQueue;
  *&v0[OBJC_IVAR____TtC20JournalNotifications17OperationsManager_assetMetadataQueue] = v29;
  v31 = qword_104230;
  v32 = v29;
  if (v31 != -1)
  {
    swift_once();
  }

  [v32 setUnderlyingQueue:qword_115488];

  v33 = *&v0[v30];
  v34 = sub_C5444();
  [v33 setName:v34];

  [*&v0[v30] setMaxConcurrentOperationCount:2];
  [*&v0[v30] setQualityOfService:-1];
  v35 = [objc_allocWithZone(NSOperationQueue) init];
  v36 = OBJC_IVAR____TtC20JournalNotifications17OperationsManager_batchRecordDownloadQueue;
  *&v0[OBJC_IVAR____TtC20JournalNotifications17OperationsManager_batchRecordDownloadQueue] = v35;
  v37 = qword_104238;
  v38 = v35;
  if (v37 != -1)
  {
    swift_once();
  }

  [v38 setUnderlyingQueue:qword_115490];

  v39 = *&v0[v36];
  v40 = sub_C5444();
  [v39 setName:v40];

  [*&v0[v36] setMaxConcurrentOperationCount:1];
  [*&v0[v36] setQualityOfService:9];
  v42.receiver = v0;
  v42.super_class = type metadata accessor for OperationsManager();
  return objc_msgSendSuper2(&v42, "init");
}

id sub_7D7D0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for OperationsManager();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *sub_7D8DC()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_3CB0(&qword_108C28, &qword_D2328);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

void sub_7D90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  if (qword_1042A0 != -1)
  {
LABEL_31:
    swift_once();
  }

  v5 = qword_108BB8;
  sub_3CB0(&qword_106E78, &unk_CFB90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_D2300;
  v7 = *(v5 + OBJC_IVAR____TtC20JournalNotifications17OperationsManager_cacheQueueHighPriority);
  *(inited + 32) = v7;
  v31 = inited + 32;
  v8 = *(v5 + OBJC_IVAR____TtC20JournalNotifications17OperationsManager_cacheQueueRegularPriority);
  *(inited + 40) = v8;
  v9 = *(v5 + OBJC_IVAR____TtC20JournalNotifications17OperationsManager_cacheQueueLowPriority);
  *(inited + 48) = v9;
  v10 = inited & 0xC000000000000001;
  v29 = inited & 0xFFFFFFFFFFFFFF8;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = 0;
  v30 = v10;
  do
  {
    v32 = v14;
    if (v10)
    {
      v15 = sub_C5FE4();
    }

    else
    {
      if (v14 >= *(v29 + 16))
      {
        goto LABEL_30;
      }

      v15 = *(v31 + 8 * v14);
    }

    v33 = v15;
    v16 = [v15 operations];
    sub_BE28(0, &qword_108C30, NSOperation_ptr);
    v17 = sub_C5674();

    if (v17 >> 62)
    {
      v18 = sub_C60E4();
      if (v18)
      {
LABEL_10:
        v19 = 0;
        while (1)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v20 = sub_C5FE4();
          }

          else
          {
            if (v19 >= *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_29;
            }

            v20 = *(v17 + 8 * v19 + 32);
          }

          v21 = v20;
          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          type metadata accessor for ThumbnailCacheOperation(0);
          v23 = swift_dynamicCastClass();
          if (v23)
          {
            v24 = v23;
            v25 = *(v23 + qword_107B38) == a1 && *(v23 + qword_107B38 + 8) == a2;
            if (v25 || (sub_C6244() & 1) != 0)
            {
              v26 = v21;

              swift_setDeallocating();
              swift_arrayDestroy();
              v27 = v26;
              [v24 setQueuePriority:v28];

              return;
            }
          }

          ++v19;
          if (v22 == v18)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    else
    {
      v18 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
      if (v18)
      {
        goto LABEL_10;
      }
    }

LABEL_3:
    v14 = v32 + 1;

    v10 = v30;
  }

  while (v32 != 2);
  swift_setDeallocating();
  swift_arrayDestroy();
}

id sub_7DC28(uint64_t a1, uint64_t a2)
{
  if (qword_1042A0 != -1)
  {
    swift_once();
  }

  v3 = qword_108BB8;
  sub_BE28(0, &qword_108C38, NSObject_ptr);
  if (qword_1042A8 != -1)
  {
    swift_once();
  }

  if (sub_C5D44())
  {
    v4 = &OBJC_IVAR____TtC20JournalNotifications17OperationsManager_cacheQueueLowPriority;
  }

  else
  {
    if (qword_1042B8 != -1)
    {
      swift_once();
    }

    v5 = sub_C5D44();
    v4 = &OBJC_IVAR____TtC20JournalNotifications17OperationsManager_cacheQueueRegularPriority;
    if (v5)
    {
      v4 = &OBJC_IVAR____TtC20JournalNotifications17OperationsManager_cacheQueueHighPriority;
    }
  }

  v6 = *(v3 + *v4);

  return [v6 addOperation:a1];
}

void *sub_7DD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1042A0 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v5 = qword_108BB8;
    sub_BE28(0, &qword_108C38, NSObject_ptr);
    if (qword_1042A8 != -1)
    {
      swift_once();
    }

    if (sub_C5D44())
    {
      v6 = &OBJC_IVAR____TtC20JournalNotifications17OperationsManager_cacheQueueLowPriority;
    }

    else
    {
      if (qword_1042B8 != -1)
      {
        swift_once();
      }

      v7 = sub_C5D44();
      v6 = &OBJC_IVAR____TtC20JournalNotifications17OperationsManager_cacheQueueRegularPriority;
      if (v7)
      {
        v6 = &OBJC_IVAR____TtC20JournalNotifications17OperationsManager_cacheQueueHighPriority;
      }
    }

    v8 = [*(v5 + *v6) operations];
    sub_BE28(0, &qword_108C30, NSOperation_ptr);
    v9 = sub_C5674();

    if (v9 >> 62)
    {
      break;
    }

    v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      goto LABEL_32;
    }

LABEL_12:
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = sub_C5FE4();
      }

      else
      {
        if (v11 >= *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_29;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      type metadata accessor for ThumbnailCacheOperation(0);
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = v15;
        v17 = *(v15 + qword_107B38) == a1 && *(v15 + qword_107B38 + 8) == a2;
        if (v17 || (sub_C6244()) && ![v16 isCancelled])
        {

          return v16;
        }
      }

      ++v11;
      if (v14 == v10)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
  }

  v10 = sub_C60E4();
  if (v10)
  {
    goto LABEL_12;
  }

LABEL_32:

  return 0;
}

void sub_7E014(uint64_t a1, uint64_t a2)
{
  if (qword_1042A0 != -1)
  {
    swift_once();
  }

  v4 = qword_108BB8;
  sub_3CB0(&qword_106E78, &unk_CFB90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_D2300;
  v6 = *(v4 + OBJC_IVAR____TtC20JournalNotifications17OperationsManager_cacheQueueHighPriority);
  *(inited + 32) = v6;
  v7 = *(v4 + OBJC_IVAR____TtC20JournalNotifications17OperationsManager_cacheQueueRegularPriority);
  *(inited + 40) = v7;
  v8 = *(v4 + OBJC_IVAR____TtC20JournalNotifications17OperationsManager_cacheQueueLowPriority);
  *(inited + 48) = v8;
  v9 = inited & 0xC000000000000001;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  if ((inited & 0xC000000000000001) != 0)
  {
    v13 = sub_C5FE4();
  }

  else
  {
    if (!*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_26;
    }

    v13 = v10;
  }

  v14 = v13;
  v15 = [v13 underlyingQueue];
  if (v15)
  {
    v16 = v15;
    v17 = sub_7DD74(a1, a2, v15);

    if (v17)
    {
      goto LABEL_23;
    }

    v14 = v16;
  }

  if (v9)
  {
    v18 = sub_C5FE4();
  }

  else
  {
    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 2uLL)
    {
      goto LABEL_26;
    }

    v18 = *(inited + 40);
  }

  v19 = v18;
  v20 = [v18 underlyingQueue];
  if (v20)
  {
    v21 = v20;
    v22 = sub_7DD74(a1, a2, v20);

    if (!v22)
    {
      v19 = v21;
      goto LABEL_17;
    }

LABEL_23:

    return;
  }

LABEL_17:

  if (!v9)
  {
    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) >= 3uLL)
    {
      v23 = *(inited + 48);
      goto LABEL_21;
    }

LABEL_26:
    __break(1u);
    return;
  }

  v23 = sub_C5FE4();
LABEL_21:
  v24 = v23;
  v25 = [v23 underlyingQueue];
  if (v25)
  {
    v26 = v25;
    v27 = sub_7DD74(a1, a2, v25);

    if (v27)
    {
      goto LABEL_23;
    }

    v24 = v26;
  }
}

uint64_t getEnumTagSinglePayload for AssetSizeType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetSizeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_7E3C0()
{
  result = qword_108C40;
  if (!qword_108C40)
  {
    sub_28D98(&qword_108C48, qword_D2348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_108C40);
  }

  return result;
}

uint64_t sub_7E428(unsigned __int8 a1)
{
  if (a1 <= 3u && a1 > 1u && a1 != 2)
  {
    v4 = 1;
    goto LABEL_22;
  }

  v2 = sub_C6244();

  if ((v2 & 1) == 0)
  {
    if (a1 == 2)
    {
      v4 = 1;
      goto LABEL_22;
    }

    v3 = sub_C6244();

    if ((v3 & 1) == 0)
    {
      if (a1 == 1)
      {
        v4 = 1;
        goto LABEL_22;
      }

      v5 = sub_C6244();

      if ((v5 & 1) == 0)
      {
        if (a1 > 6u)
        {
          v4 = 1;
        }

        else
        {
          v6 = sub_C6244();

          if (v6)
          {
            goto LABEL_17;
          }

          if (a1)
          {
            v4 = sub_C6244();
          }

          else
          {
            v4 = 1;
          }
        }

LABEL_22:

        return v4 & 1;
      }
    }
  }

LABEL_17:
  v4 = 1;
  return v4 & 1;
}

uint64_t sub_7E908(unsigned __int8 a1)
{
  if (a1 > 6u)
  {

    v2 = 0;
  }

  else
  {
    v1 = sub_C6244();

    v2 = v1 ^ 1;
  }

  return v2 & 1;
}

unint64_t sub_7EA60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_7EBE8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_7EA90(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006C6CLL;
  v3 = *v1;
  v4 = 0x6154656772614C78;
  v5 = 0xE500000000000000;
  v6 = 0x6C6C616D73;
  if (v3 != 6)
  {
    v6 = 0x657263536C6C7566;
    v5 = 0xEA00000000006E65;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (v3 != 4)
  {
    v8 = 0x61546D756964656DLL;
    v7 = 0xEA00000000006C6CLL;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006564;
  v10 = 0x69576D756964656DLL;
  if (v3 != 2)
  {
    v10 = 0x656772616CLL;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x656772614C78;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v4 = v10;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 <= 3u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  *a1 = v11;
  a1[1] = v12;
}

unint64_t sub_7EB94()
{
  result = qword_108C50;
  if (!qword_108C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_108C50);
  }

  return result;
}

unint64_t sub_7EBE8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_F0988;
  v6._object = a2;
  v4 = sub_C6134(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

void sub_7EC38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v9 = sub_C4E34();
  __chkstk_darwin(v9 - 8);
  v10 = OBJC_IVAR____TtC20JournalNotifications14TimePickerCell_mainStack;
  *&v4[v10] = [objc_allocWithZone(UIStackView) init];
  v11 = OBJC_IVAR____TtC20JournalNotifications14TimePickerCell_listContentView;
  sub_BE28(0, &qword_108C90, UIListContentView_ptr);
  sub_C4E04();
  *&v4[v11] = sub_C5B64();
  if (a3)
  {

    v12 = sub_C5444();
  }

  else
  {
    v12 = 0;
  }

  v45.receiver = v5;
  v45.super_class = type metadata accessor for TimePickerCell();
  v44 = a4;
  v13 = objc_msgSendSuper2(&v45, "initWithStyle:reuseIdentifier:specifier:", a1, v12, a4);

  if (v13)
  {

    v14 = OBJC_IVAR____TtC20JournalNotifications14TimePickerCell_mainStack;
    v15 = *&v13[OBJC_IVAR____TtC20JournalNotifications14TimePickerCell_mainStack];
    v16 = v13;
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [*&v13[v14] setLayoutMarginsRelativeArrangement:1];
    [*&v13[v14] addArrangedSubview:*&v16[OBJC_IVAR____TtC20JournalNotifications14TimePickerCell_listContentView]];
    v17 = *&v13[v14];
    v18 = [v16 control];
    if (v18)
    {
      v19 = v18;
      objc_opt_self();
      [v17 addArrangedSubview:swift_dynamicCastObjCClassUnconditional()];

      v20 = v16;
      v21 = [v20 contentView];
      [v21 addSubview:*&v13[v14]];

      v43 = objc_opt_self();
      sub_3CB0(&qword_106E78, &unk_CFB90);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_D2430;
      v23 = [*&v13[v14] topAnchor];
      v24 = [v20 contentView];
      v25 = [v24 topAnchor];

      v26 = [v23 constraintEqualToAnchor:v25];
      *(v22 + 32) = v26;
      v27 = [*&v13[v14] leadingAnchor];
      v28 = [v20 contentView];
      v29 = [v28 layoutMarginsGuide];

      v30 = [v29 leadingAnchor];
      v31 = [v27 constraintEqualToAnchor:v30];

      *(v22 + 40) = v31;
      v32 = [*&v13[v14] bottomAnchor];
      v33 = [v20 contentView];
      v34 = [v33 bottomAnchor];

      v35 = [v32 constraintEqualToAnchor:v34];
      *(v22 + 48) = v35;
      v36 = [*&v13[v14] trailingAnchor];
      v37 = [v20 contentView];
      v38 = [v37 layoutMarginsGuide];

      v39 = [v38 trailingAnchor];
      v40 = [v36 constraintEqualToAnchor:v39];

      *(v22 + 56) = v40;
      sub_BE28(0, &qword_108C98, NSLayoutConstraint_ptr);
      isa = sub_C5664().super.isa;

      [v43 activateConstraints:isa];

      v42 = [objc_opt_self() defaultCenter];
      [v42 addObserver:v20 selector:"willResignActive:" name:UIApplicationWillResignActiveNotification object:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_7F204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_C4E34();
  __chkstk_darwin(v7 - 8);
  v8 = OBJC_IVAR____TtC20JournalNotifications14TimePickerCell_mainStack;
  *&v3[v8] = [objc_allocWithZone(UIStackView) init];
  v9 = OBJC_IVAR____TtC20JournalNotifications14TimePickerCell_listContentView;
  sub_BE28(0, &qword_108C90, UIListContentView_ptr);
  sub_C4E04();
  *&v3[v9] = sub_C5B64();
  if (a3)
  {
    v10 = sub_C5444();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v4;
  v13.super_class = type metadata accessor for TimePickerCell();
  v11 = objc_msgSendSuper2(&v13, "initWithStyle:reuseIdentifier:", a1, v10);

  return v11;
}

uint64_t sub_7F390(void *a1)
{
  v2 = v1;
  v4 = sub_C4E34();
  __chkstk_darwin(v4 - 8);
  v5 = OBJC_IVAR____TtC20JournalNotifications14TimePickerCell_mainStack;
  *(v1 + v5) = [objc_allocWithZone(UIStackView) init];
  v6 = OBJC_IVAR____TtC20JournalNotifications14TimePickerCell_listContentView;
  sub_BE28(0, &qword_108C90, UIListContentView_ptr);
  sub_C4E04();
  v7 = sub_C5B64();

  *(v2 + v6) = v7;
  type metadata accessor for TimePickerCell();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_7F6D8(uint64_t a1)
{
  sub_80A2C(a1, v11);
  v2 = v12;
  if (v12)
  {
    v3 = sub_13DC4(v11, v12);
    v4 = *(v2 - 8);
    __chkstk_darwin(v3);
    v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v6);
    v7 = sub_C6224();
    (*(v4 + 8))(v6, v2);
    sub_BED0(v11);
  }

  else
  {
    v7 = 0;
  }

  v8 = type metadata accessor for TimePickerCell();
  v10.receiver = v1;
  v10.super_class = v8;
  objc_msgSendSuper2(&v10, "setValue:", v7);
  swift_unknownObjectRelease();
  return [v1 setNeedsUpdateConfiguration];
}

id sub_7F92C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_3CB0(&qword_104800, &qword_CDE60);
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - v5;
  v7 = sub_C3CB4();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v47 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v50 = &v46 - v11;
  v12 = sub_C4E34();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v46 - v17;
  sub_C5A94();
  v19 = sub_C4DA4();
  *(&v55 + 1) = v19;
  v56 = &protocol witness table for UICellConfigurationState;
  v20 = sub_BF70(&v54);
  v21 = *(*(v19 - 8) + 16);
  v51 = a1;
  v21(v20, a1, v19);
  sub_C4E24();
  v49 = *(v13 + 8);
  v49(v16, v12);
  sub_BED0(&v54);
  result = [v2 specifier];
  if (!result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v23 = result;
  v48 = v13 + 8;
  v24 = [result name];

  if (v24)
  {
    sub_C5484();
  }

  sub_C4E14();
  v25 = sub_C4D84();
  v26 = [v25 preferredContentSizeCategory];

  LOBYTE(v25) = sub_C5C24();
  v27 = *&v2[OBJC_IVAR____TtC20JournalNotifications14TimePickerCell_mainStack];
  if (v25)
  {
    [v27 setAxis:1];
    [v27 setDistribution:0];
    [v27 setAlignment:1];
    sub_C4DD4();
    [v27 setSpacing:?];
    sub_C4DB4();
    v29 = v28;
    sub_C4DB4();
    [v27 setDirectionalLayoutMargins:{v29, 0.0}];
  }

  else
  {
    [v27 setAxis:0];
    [v27 setAlignment:3];
    [v27 setDistribution:3];
    sub_C4DF4();
    [v27 setSpacing:?];
    [v27 setDirectionalLayoutMargins:{NSDirectionalEdgeInsetsZero.top, NSDirectionalEdgeInsetsZero.leading, NSDirectionalEdgeInsetsZero.bottom, NSDirectionalEdgeInsetsZero.trailing}];
  }

  v30 = v50;
  sub_C4DC4();
  sub_C4DE4();
  *(&v55 + 1) = v12;
  v56 = &protocol witness table for UIListContentConfiguration;
  v31 = sub_BF70(&v54);
  (*(v13 + 16))(v31, v18, v12);
  sub_C5B54();
  if ([v2 value])
  {
    sub_C5E44();
    swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
  }

  v54 = v52;
  v55 = v53;
  if (!*(&v53 + 1))
  {
    sub_C060(&v54, &qword_104818, &qword_CEAF0);
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_16;
  }

  v32 = swift_dynamicCast();
  (*(v8 + 56))(v6, v32 ^ 1u, 1, v7);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
LABEL_16:
    sub_C060(v6, &qword_104800, &qword_CDE60);
    goto LABEL_19;
  }

  (*(v8 + 32))(v30, v6, v7);
  result = [v2 control];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v33 = result;
  v34 = v30;
  objc_opt_self();
  v35 = [swift_dynamicCastObjCClassUnconditional() date];

  v36 = v47;
  sub_C3C64();

  sub_809D4();
  LOBYTE(v33) = sub_C53A4();
  v39 = *(v8 + 8);
  v37 = (v8 + 8);
  v38 = v39;
  v39(v36, v7);
  if (v33)
  {
    v38(v34, v7);
    goto LABEL_19;
  }

  v47 = v37;
  result = [v2 control];
  if (result)
  {
    v40 = result;
    objc_opt_self();
    v41 = swift_dynamicCastObjCClassUnconditional();
    v42 = v50;
    isa = sub_C3C04().super.isa;
    [v41 setDate:isa];

    v38(v42, v7);
LABEL_19:
    result = [v2 control];
    if (result)
    {
      v44 = result;
      objc_opt_self();
      v45 = swift_dynamicCastObjCClassUnconditional();
      [v45 setEnabled:(sub_C4D74() & 1) == 0];

      return (v49)(v18, v12);
    }

    goto LABEL_22;
  }

LABEL_24:
  __break(1u);
  return result;
}

id sub_801E4()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for TimePickerCell();
  v1 = objc_msgSendSuper2(&v6, "accessibilityIdentifier");
  if (v1)
  {
    v2 = v1;
    goto LABEL_5;
  }

  result = [v0 specifier];
  if (result)
  {
    v4 = result;
    v2 = [result identifier];

    if (!v2)
    {
      return 0;
    }

LABEL_5:
    v5 = sub_C5484();

    return v5;
  }

  __break(1u);
  return result;
}

id sub_803A8(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_C5444();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_80428()
{
  v1 = sub_C39F4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_C3A24();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_C3CB4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TimePickerCell();
  v22.receiver = v0;
  v22.super_class = v13;
  v14 = objc_msgSendSuper2(&v22, "accessibilityValue");
  if (v14)
  {
    v15 = v14;
    v16 = sub_C5484();

    return v16;
  }

  v21 = v2;
  result = [v0 control];
  if (result)
  {
    v18 = result;
    objc_opt_self();
    v19 = [swift_dynamicCastObjCClassUnconditional() date];

    sub_C3C64();
    sub_C3A04();
    sub_C39E4();
    v16 = sub_C3C84();
    (*(v21 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v9);
    return v16;
  }

  __break(1u);
  return result;
}

void sub_80710(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    sub_C5484();
    v6 = a1;
    v7 = sub_C5444();
  }

  else
  {
    v8 = a1;
    v7 = 0;
  }

  v9.receiver = a1;
  v9.super_class = type metadata accessor for TimePickerCell();
  objc_msgSendSuper2(&v9, *a4, v7);
}

id sub_80930()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TimePickerCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_809D4()
{
  result = qword_1047B8;
  if (!qword_1047B8)
  {
    sub_C3CB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1047B8);
  }

  return result;
}

uint64_t sub_80A2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB0(&qword_104818, &qword_CEAF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_80AA4(uint64_t a1, void *a2, void *a3, char a4)
{
  v8 = sub_3CB0(&qword_1063B8, &qword_CF1C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = [objc_opt_self() defaultWorkspace];
  if (v11)
  {
    v12 = v11;
    sub_B954(a1, v10, &qword_1063B8, &qword_CF1C0);
    v13 = sub_C3934();
    v14 = *(v13 - 8);
    v16 = 0;
    if ((*(v14 + 48))(v10, 1, v13) != 1)
    {
      sub_C38D4(v15);
      v16 = v17;
      (*(v14 + 8))(v10, v13);
    }

    v18 = sub_80C3C(a2, a3, a4 & 1);
    [v12 openURL:v16 configuration:v18 completionHandler:0];
  }

  else
  {
    __break(1u);
  }
}

id sub_80C3C(void *a1, void *a2, char a3)
{
  v6 = [objc_allocWithZone(_LSOpenConfiguration) init];
  [v6 setSensitive:1];
  v7 = sub_817D4(a1, a2);
  if (v7)
  {
    v8 = v7;
    v9 = [v7 _currentOpenApplicationEndpoint];
  }

  else
  {
    v9 = 0;
  }

  [v6 setTargetConnectionEndpoint:v9];

  v10 = sub_C5484();
  v12 = v11;
  v18 = &type metadata for Bool;
  LOBYTE(v17) = a3 & 1;
  sub_D564(&v17, v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_82114(v16, v10, v12, isUniquelyReferenced_nonNull_native);

  isa = sub_C52A4().super.isa;

  [v6 setFrontBoardOptions:isa];

  return v6;
}

uint64_t sub_80DB0@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v1 = sub_C3BB4();
  v70 = *(v1 - 8);
  v71 = v1;
  __chkstk_darwin(v1);
  v69 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_C3B94();
  v66 = *(v3 - 8);
  v67 = v3;
  __chkstk_darwin(v3);
  v68 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_C3B74();
  v61 = *(v5 - 8);
  v62 = v5;
  __chkstk_darwin(v5);
  v64 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_C3B84();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v60 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_C3F24();
  __chkstk_darwin(v8 - 8);
  v58 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_C3BF4();
  v63 = *(v65 - 8);
  v10 = __chkstk_darwin(v65);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v56 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v56 - v17;
  __chkstk_darwin(v16);
  v59 = &v56 - v19;
  v72 = sub_C3CB4();
  v20 = *(v72 - 8);
  v21 = __chkstk_darwin(v72);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v56 - v24;
  v26 = sub_3CB0(&qword_1063B8, &qword_CF1C0);
  v27 = __chkstk_darwin(v26 - 8);
  v29 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v56 - v30;
  v32 = type metadata accessor for OpenSensitiveURLAction.Destination(0);
  __chkstk_darwin(v32);
  v34 = &v56 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_822B0(v73, v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8 && EnumCaseMultiPayload == 9)
    {
      v49 = [objc_allocWithZone(HealthAppAuthorizationManagementLinkBuilder) init];
      sub_C49A4();
      v50 = sub_C5444();

      v51 = [v49 URLForAuthorizationManagementFromLocation:2 bundleIdentifier:v50];

      if (v51)
      {
        sub_C38F4();

        v52 = 0;
      }

      else
      {
        v52 = 1;
      }

      v55 = sub_C3934();
      (*(*(v55 - 8) + 56))(v31, v52, 1, v55);
      v54 = v31;
      return sub_53FF8(v54, v74);
    }

    return sub_C3914();
  }

  if (EnumCaseMultiPayload > 2)
  {
    return sub_C3914();
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v36 = v20;
      v37 = v23;
      (*(v20 + 32))(v23, v34, v72);
      v76 = 0;
      v77 = 0xE000000000000000;
      sub_C5FC4(24);

      v76 = 0xD000000000000016;
      v77 = 0x80000000000CB040;
      sub_C3F14();
      (*(v56 + 104))(v60, enum case for Date.ISO8601FormatStyle.DateSeparator.dash(_:), v57);
      (*(v61 + 104))(v64, enum case for Date.ISO8601FormatStyle.DateTimeSeparator.standard(_:), v62);
      (*(v66 + 104))(v68, enum case for Date.ISO8601FormatStyle.TimeSeparator.colon(_:), v67);
      (*(v70 + 104))(v69, enum case for Date.ISO8601FormatStyle.TimeZoneSeparator.omitted(_:), v71);
      sub_C3BA4();
      sub_C3BD4();
      v38 = *(v63 + 8);
      v39 = v65;
      v38(v12, v65);
      sub_C3BE4();
      v38(v15, v39);
      v40 = v59;
      sub_C3BC4();
      v38(v18, v39);
      sub_82314();
      sub_C3C94();
      v38(v40, v39);
      sub_C5524(v75);

      sub_C3914();

      return (*(v36 + 8))(v37, v72);
    }

    return sub_C3914();
  }

  v42 = v20;
  v43 = v72;
  (*(v20 + 32))(v25, v34, v72);
  v44 = [objc_allocWithZone(HealthAppDataTypeDetailLinkBuilder) init];
  v45 = [objc_opt_self() stateOfMindType];
  isa = sub_C3C04().super.isa;
  v47 = [v44 URLForDataTypeDetailWithObjectType:v45 date:isa];

  if (v47)
  {
    sub_C38F4();

    v48 = 0;
  }

  else
  {
    v48 = 1;
  }

  (*(v42 + 8))(v25, v43);
  v53 = sub_C3934();
  (*(*(v53 - 8) + 56))(v29, v48, 1, v53);
  v54 = v29;
  return sub_53FF8(v54, v74);
}

id sub_817D4(void *a1, id a2)
{
  v3 = a1;
  if (!a1)
  {
    if (a2)
    {
      if ([a2 sender])
      {
        sub_C5E44();
        swift_unknownObjectRelease();
      }

      else
      {
        v9 = 0u;
        v10 = 0u;
      }

      v11 = v9;
      v12 = v10;
      if (*(&v10 + 1))
      {
        sub_B954(&v11, &v9, &qword_104818, &qword_CEAF0);
        sub_BE28(0, &qword_108CA0, UIScene_ptr);
        if (swift_dynamicCast())
        {
          v3 = v8;
LABEL_18:
          sub_BED0(&v9);
          sub_D574(&v11);
          goto LABEL_19;
        }

        sub_BE28(0, &qword_108CA8, UIWindow_ptr);
        if (swift_dynamicCast())
        {
          v3 = [v8 windowScene];

          goto LABEL_18;
        }

        sub_BE28(0, &qword_108CB0, UIView_ptr);
        if (swift_dynamicCast())
        {
          v4 = [v8 window];
          if (v4)
          {
            v5 = v4;
            v3 = [v4 windowScene];
          }

          else
          {

            v3 = 0;
          }

          goto LABEL_18;
        }

        sub_BED0(&v9);
      }
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    sub_D574(&v11);
    v3 = 0;
  }

LABEL_19:
  v6 = a1;
  return v3;
}

_OWORD *sub_819DC(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_25CD0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_9CD18();
      v8 = v16;
      goto LABEL_8;
    }

    sub_9AC6C(v13, a3 & 1);
    v8 = sub_25CD0(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_C6294();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v14)
  {
    v18 = (*(*v4 + 56) + 32 * v8);
    sub_BED0(v18);

    return sub_D564(a1, v18);
  }

  else
  {
    sub_A6B90();

    return a2;
  }
}

unint64_t sub_81B1C(uint64_t a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2403C(a3, a4);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a2 & 1) == 0)
  {
    if (v18 >= v16 && (a2 & 1) == 0)
    {
      v19 = v11;
      sub_9CD2C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_9AC80(v16, a2 & 1);
    v11 = sub_2403C(a3, a4);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      type metadata accessor for CGSize(0);
      sub_C6294();
      __break(1u);
      return _objc_release_x1();
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  return sub_9CAC8(v11, a1, v21, a3, a4);
}

void sub_81C50(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_23FF8(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_9CE8C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_9AF38(v14, a3 & 1);
    v9 = sub_23FF8(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_C6294();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    sub_9CB10(v9, a2, a1, v19);
  }
}

unint64_t sub_81D74(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_240B0(a2 & 1);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_9CFE8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_9B2BC(v14, a3 & 1);
    v9 = sub_240B0(a2 & 1);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_C6294();
      __break(1u);
      return _objc_release_x1();
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;

    return _objc_release_x1();
  }

  return sub_9CB54(v9, a2 & 1, a1, v19);
}

_OWORD *sub_81E94(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_25CD0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_9D144();
      v8 = v16;
      goto LABEL_8;
    }

    sub_9B548(v13, a3 & 1);
    v8 = sub_25CD0(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for AttributeName(0);
      result = sub_C6294();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v14)
  {
    v18 = (*(*v4 + 56) + 32 * v8);
    sub_BED0(v18);

    return sub_D564(a1, v18);
  }

  else
  {
    sub_A6B90();

    return a2;
  }
}

_OWORD *sub_81FD4(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_25CD0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_9D158();
      v8 = v16;
      goto LABEL_8;
    }

    sub_9B55C(v13, a3 & 1);
    v8 = sub_25CD0(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for TraitKey(0);
      result = sub_C6294();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v14)
  {
    v18 = (*(*v4 + 56) + 32 * v8);
    sub_BED0(v18);

    return sub_D564(a1, v18);
  }

  else
  {
    sub_A6B90();

    return a2;
  }
}

_OWORD *sub_82114(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_241AC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_9D2DC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_9B838(v16, a4 & 1);
    v11 = sub_241AC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_C6294();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_BED0(v22);

    return sub_D564(a1, v22);
  }

  else
  {
    sub_9CC04(v11, a2, a3, a1, v21);
  }
}

uint64_t type metadata accessor for OpenSensitiveURLAction.Destination(uint64_t a1)
{
  result = qword_108D30;
  if (!qword_108D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_822B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenSensitiveURLAction.Destination(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_82314()
{
  result = qword_108CB8;
  if (!qword_108CB8)
  {
    sub_C3BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_108CB8);
  }

  return result;
}

void sub_8236C(uint64_t a1)
{
  sub_823CC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_823CC()
{
  if (!qword_108D40)
  {
    v0 = sub_C3CB4();
    if (!v1)
    {
      atomic_store(v0, &qword_108D40);
    }
  }
}

void sub_82414()
{
  v1 = v0;
  v2 = sub_C3D14();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v70 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v70 - v11;
  __chkstk_darwin(v10);
  v14 = &v70 - v13;
  v87 = sub_C44D4();
  v89 = *(v87 - 8);
  __chkstk_darwin(v87);
  v86 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_C3934();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = _swiftEmptyArrayStorage;
  v92 = &_swiftEmptySetSingleton;
  v93 = _swiftEmptyArrayStorage;
  v22 = *(v1 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
  if (!v22)
  {
    goto LABEL_35;
  }

  v84 = v18;
  v85 = v20;
  v83 = v14;
  v23 = v22;
  v24 = [v23 fileAttachments];
  if (!v24 || (v25 = v24, v79 = v12, v80 = v9, v94 = 0, v26 = sub_C4024(), sub_86BF4(&qword_108DE8, &type metadata accessor for JournalEntryAssetFileAttachmentMO, &protocol conformance descriptor for NSObject), v88 = v26, sub_C57F4(), v25, (v27 = v94) == 0))
  {

    v21 = _swiftEmptyArrayStorage;
LABEL_35:
    *(v1 + OBJC_IVAR____TtC20JournalNotifications5Asset_attachmentIdsMissingFile) = v92;

    *(v1 + OBJC_IVAR____TtC20JournalNotifications5Asset_attachments) = v21;

    (*(&stru_298.flags + (swift_isaMask & *v1)))(v56);
    ObjectType = swift_getObjectType();
    v58 = swift_conformsToProtocol2();
    if (v58)
    {
      v59 = v58;
      v60 = v1;
      sub_405FC(ObjectType, v59);
    }

    swift_getObjectType();
    if (!swift_conformsToProtocol2())
    {
      return;
    }

    v61 = *(v1 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
    if (v61)
    {
      v62 = v1;
      v63 = [v61 contentType];
      if (v63)
      {
        v64 = v63;
        v65 = sub_C5484();
        v67 = v66;

        v68 = v67;
        v63 = v65;
LABEL_43:
        *(v1 + OBJC_IVAR____TtC20JournalNotifications9LinkAsset_contentType) = sub_32794(v63, v68);

        return;
      }
    }

    else
    {
      v69 = v1;
      v63 = 0;
    }

    v68 = 0xE000000000000000;
    goto LABEL_43;
  }

  v76 = v6;
  v77 = v2;
  v82 = v23;
  if ((v94 & 0xC000000000000001) != 0)
  {
    sub_C5EE4();
    sub_C5824();
    v27 = v94;
    v28 = v95;
    v29 = v96;
    v30 = v97;
    v31 = v98;
  }

  else
  {
    v30 = 0;
    v32 = -1 << *(v94 + 32);
    v28 = v94 + 56;
    v29 = ~v32;
    v33 = -v32;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v31 = v34 & *(v94 + 56);
  }

  v81 = v29;
  v35 = (v29 + 64) >> 6;
  ++v89;
  v75 = (v3 + 32);
  v74 = (v3 + 16);
  v73 = (v3 + 8);
  v78 = (v17 + 8);
  v21 = _swiftEmptyArrayStorage;
  while (v27 < 0)
  {
    v39 = sub_C5F24();
    if (!v39 || (v90 = v39, swift_dynamicCast(), (v38 = v91) == 0))
    {
LABEL_34:
      sub_B824(v27);

      goto LABEL_35;
    }

LABEL_21:
    v40 = [v38 filePath];
    if (v40)
    {

      v41 = v38;
      if (sub_7C840(v41))
      {

        sub_C5654();
        if (*(&dword_10 + (v93 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v93 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_C56A4();
        }

        sub_C56D4();

        v21 = v93;
      }

      v42 = [v41 filePath];
      if (v42)
      {
        v72 = v41;
        v43 = v42;
        v71 = sub_C5484();

        v44 = v86;
        sub_C44C4();
        sub_C4494();

        (*v89)(v44, v87);
        v71 = [objc_opt_self() defaultManager];
        sub_C3904();
        v45 = sub_C5444();

        v46 = v71;
        LOBYTE(v44) = [v71 fileExistsAtPath:v45];

        if (v44)
        {
          (*v78)(v85, v84);
        }

        else
        {
          v47 = v72;
          v48 = [v72 id];
          if (v48)
          {
            v49 = v79;
            v50 = v48;
            sub_C3CF4();

            v51 = v83;
            v52 = v49;
            v53 = v77;
            (*v75)(v83, v52, v77);
            v54 = v76;
            (*v74)(v76, v51, v53);
            sub_61398(v80, v54);

            v55 = *v73;
            (*v73)(v80, v53);
            v55(v83, v53);
            (*v78)(v85, v84);
          }

          else
          {
            (*v78)(v85, v84);
          }
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v36 = v30;
  v37 = v31;
  if (v31)
  {
LABEL_17:
    v31 = (v37 - 1) & v37;
    v38 = *(*(v27 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v37)))));
    if (!v38)
    {
      goto LABEL_34;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v30 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v30 >= v35)
    {
      goto LABEL_34;
    }

    v37 = *(v28 + 8 * v30);
    ++v36;
    if (v37)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

double sub_82CBC(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v49 = a7;
  v47 = a6;
  v56 = a4;
  ObjectType = swift_getObjectType();
  v12 = sub_C50E4();
  v54 = *(v12 - 8);
  v55 = v12;
  __chkstk_darwin(v12);
  v52 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_C5154();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_C3D14();
  v45 = *(v15 - 8);
  v46 = v15;
  v16 = *(v45 + 64);
  __chkstk_darwin(v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a3 & 1;
  if (a3)
  {
    v19 = 0;
  }

  else
  {
    v19 = a2;
  }

  v20 = (*&stru_2E8.segname[swift_isaMask & *v7])(v19, a1, a5);
  v22 = v21;
  v44 = (*&stru_2E8.segname[(swift_isaMask & *v7) - 8])(a1, a2, v18, v20, v21, a5);
  v23 = swift_getObjectType();
  v24 = swift_conformsToProtocol2();
  if (v24)
  {
    v43 = sub_3FF30(v23, v24);
  }

  else
  {
    v43 = 0;
  }

  v25 = (v7 + OBJC_IVAR____TtC20JournalNotifications5Asset_thumbnailCacheKey);
  *v25 = v20;
  v25[1] = v22;

  v42 = *(v7 + OBJC_IVAR____TtC20JournalNotifications5Asset_attachmentIdsMissingFile);
  v26 = *(v7 + OBJC_IVAR____TtC20JournalNotifications5Asset_attachments);
  if (v26 >> 62)
  {
    v41 = sub_C60E4();
  }

  else
  {
    v41 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
  }

  v28 = v45;
  v27 = v46;
  (*(v45 + 16))(&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + OBJC_IVAR____TtC20JournalNotifications5Asset_id, v46);
  v29 = (*(v28 + 80) + 72) & ~*(v28 + 80);
  v30 = v29 + v16;
  v31 = swift_allocObject();
  *(v31 + 2) = v20;
  *(v31 + 3) = v22;
  v32 = v49;
  *(v31 + 4) = v47;
  *(v31 + 5) = v32;
  v33 = v44;
  v34 = v56;
  *(v31 + 6) = v44;
  *(v31 + 7) = v34;
  *(v31 + 8) = v41;
  (*(v28 + 32))(&v31[v29], v17, v27);
  v31[v30] = v43;
  *&v31[(v30 & 0xFFFFFFFFFFFFFFF8) + 8] = v42;
  *&v31[((v30 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8] = ObjectType;
  aBlock[4] = sub_86B44;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_34660;
  aBlock[3] = &unk_F35D8;
  v35 = _Block_copy(aBlock);

  v36 = v33;
  v56;
  v37 = v50;
  sub_C5104();
  v57 = _swiftEmptyArrayStorage;
  sub_86BF4(&qword_105558, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_3CB0(&qword_105560, &unk_CF1A0);
  sub_28D34();
  v38 = v52;
  v39 = v55;
  sub_C5E94();
  sub_C5B34();
  _Block_release(v35);

  (*(v54 + 8))(v38, v39);
  (*(v51 + 8))(v37, v53);

  return result;
}

void *sub_83250()
{
  v1 = *(v0 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
  v2 = v1;
  return v1;
}

uint64_t sub_83280(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20JournalNotifications5Asset_context);
  if (v2)
  {
    __chkstk_darwin(a1);
    v4 = v3;
    sub_3CB0(&qword_107348, &unk_D0080);
    sub_C5C54();

    LOBYTE(v2) = v6;
  }

  return v2 & 1;
}

uint64_t sub_83388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v8 = sub_3CB0(&qword_104778, &qword_CDE30);
  __chkstk_darwin(v8 - 8);
  v10 = aBlock - v9;
  v11 = sub_C3D14();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_C3584();
  if (!v23)
  {
    sub_C060(aBlock, &qword_104818, &qword_CEAF0);
    (*(v12 + 56))(v10, 1, 1, v11);
    return sub_C060(v10, &qword_104778, &qword_CDE30);
  }

  v15 = swift_dynamicCast();
  (*(v12 + 56))(v10, v15 ^ 1u, 1, v11);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_C060(v10, &qword_104778, &qword_CDE30);
  }

  (*(v12 + 32))(v14, v10, v11);
  if (sub_C3CE4())
  {
    v16 = *&v4[OBJC_IVAR____TtC20JournalNotifications5Asset_context];
    if (v16)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = v4;
      v24 = a3;
      v25 = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_34660;
      v23 = a4;
      v18 = _Block_copy(aBlock);
      v19 = v16;
      v20 = v7;

      [v19 performBlock:v18];
      _Block_release(v18);
    }
  }

  return (*(v12 + 8))(v14, v11);
}

NSObject *sub_8366C(int a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6)
{
  v13 = objc_allocWithZone(type metadata accessor for ThumbnailCacheOperation(0));

  return sub_67BD4(v6, a1, a2, a3 & 1, a4, a5, a6);
}

uint64_t sub_83700(uint64_t a1, unsigned __int8 a2)
{
  sub_C3D14();
  sub_86BF4(&qword_104A58, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14._countAndFlagsBits = sub_C6214();
  sub_C5524(v14);

  v15._countAndFlagsBits = 45;
  v15._object = 0xE100000000000000;
  sub_C5524(v15);
  v16._countAndFlagsBits = sub_C6214();
  sub_C5524(v16);

  v17._countAndFlagsBits = 45;
  v17._object = 0xE100000000000000;
  sub_C5524(v17);
  if (a2 > 3u)
  {
    v9 = 0xE500000000000000;
    v10 = 0x6C6C616D73;
    if (a2 != 6)
    {
      v10 = 0x657263536C6C7566;
      v9 = 0xEA00000000006E65;
    }

    v11 = 0xE600000000000000;
    v12 = 0x6D756964656DLL;
    if (a2 != 4)
    {
      v12 = 0x61546D756964656DLL;
      v11 = 0xEA00000000006C6CLL;
    }

    if (a2 <= 5u)
    {
      v7._countAndFlagsBits = v12;
    }

    else
    {
      v7._countAndFlagsBits = v10;
    }

    if (a2 <= 5u)
    {
      v8 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0x656772614C78;
    v4 = 0xEA00000000006564;
    v5 = 0x69576D756964656DLL;
    if (a2 != 2)
    {
      v5 = 0x656772616CLL;
      v4 = 0xE500000000000000;
    }

    if (a2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v3 = 0x6154656772614C78;
      v6 = 0xEA00000000006C6CLL;
    }

    if (a2 <= 1u)
    {
      v7._countAndFlagsBits = v3;
    }

    else
    {
      v7._countAndFlagsBits = v5;
    }

    if (a2 <= 1u)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }
  }

  v7._object = v8;
  sub_C5524(v7);

  return 0x2D626D756874;
}

id sub_83920(void *a1)
{
  v2 = v1;
  v105 = a1;
  v3 = sub_3CB0(&qword_104800, &qword_CDE60);
  __chkstk_darwin(v3 - 8);
  v104 = &v90 - v4;
  v5 = sub_3CB0(&qword_108DE0, &qword_D25A8);
  __chkstk_darwin(v5 - 8);
  v94 = &v90 - v6;
  v95 = sub_C49F4();
  v7 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3CB0(&qword_104778, &qword_CDE30);
  v10 = __chkstk_darwin(v9 - 8);
  v103 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v90 = &v90 - v13;
  __chkstk_darwin(v12);
  v15 = &v90 - v14;
  v16 = sub_C3D14();
  v17 = *(v16 - 1);
  __chkstk_darwin(v16);
  v91 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC20JournalNotifications5Asset_sourceAttachments] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC20JournalNotifications5Asset_attachments] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC20JournalNotifications5Asset_attachmentIdsMissingFile] = &_swiftEmptySetSingleton;
  v19 = OBJC_IVAR____TtC20JournalNotifications5Asset_context;
  *&v2[OBJC_IVAR____TtC20JournalNotifications5Asset_context] = 0;
  v20 = OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO;
  *&v2[OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO] = 0;
  v92 = OBJC_IVAR____TtC20JournalNotifications5Asset_title;
  *&v2[OBJC_IVAR____TtC20JournalNotifications5Asset_title] = 0;
  v21 = *(v17 + 56);
  v97 = OBJC_IVAR____TtC20JournalNotifications5Asset_suggestionId;
  v21(&v2[OBJC_IVAR____TtC20JournalNotifications5Asset_suggestionId], 1, 1, v16);
  v22 = OBJC_IVAR____TtC20JournalNotifications5Asset_suggestionDate;
  v23 = sub_C3CB4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v101 = v23;
  v102 = v22;
  v99 = v24 + 56;
  v100 = v25;
  (v25)(&v2[v22], 1, 1);
  v26 = &v2[OBJC_IVAR____TtC20JournalNotifications5Asset_attachmentsDirectoryPath];
  *v26 = 0;
  v26[1] = 0;
  v27 = OBJC_IVAR____TtC20JournalNotifications5Asset_attachmentsDirectoryURL;
  v28 = sub_C3934();
  (*(*(v28 - 8) + 56))(&v2[v27], 1, 1, v28);
  v29 = &v2[OBJC_IVAR____TtC20JournalNotifications5Asset_thumbnailCacheKey];
  *v29 = 0;
  v29[1] = 0;
  v98 = OBJC_IVAR____TtC20JournalNotifications5Asset_isHidden;
  v2[OBJC_IVAR____TtC20JournalNotifications5Asset_isHidden] = 0;
  v30 = OBJC_IVAR____TtC20JournalNotifications5Asset_delegates;
  *&v2[v30] = [objc_opt_self() weakObjectsHashTable];
  v31 = &v2[OBJC_IVAR____TtC20JournalNotifications5Asset_didUpdate];
  *v31 = 0;
  v31[1] = 0;
  v32 = &v2[OBJC_IVAR____TtC20JournalNotifications5Asset_didUpdateMediaFile];
  *v32 = 0;
  v32[1] = 0;
  v33 = v105;
  v34 = [v105 managedObjectContext];
  v35 = *&v2[v19];
  *&v2[v19] = v34;

  v36 = *&v2[v20];
  *&v2[v20] = v33;
  v96 = v33;

  v37 = *&v2[v20];
  v105 = v16;
  v106 = v17 + 56;
  v107 = v21;
  if (v37)
  {
    v38 = v7;
    v39 = [v37 id];
    if (v39)
    {
      v40 = v39;
      v41 = v90;
      sub_C3CF4();

      v42 = 0;
      v43 = v103;
      v44 = v94;
      v45 = v91;
    }

    else
    {
      v42 = 1;
      v43 = v103;
      v44 = v94;
      v45 = v91;
      v41 = v90;
    }

    v47 = v105;
    v107(v41, v42, 1, v105);
    sub_B874(v41, v15);
    v46 = v43;
    v7 = v38;
    if ((*(v17 + 48))(v15, 1, v47) != 1)
    {
      (*(v17 + 32))(v45, v15, v47);
      goto LABEL_10;
    }
  }

  else
  {
    v21(v15, 1, 1, v16);
    v46 = v103;
    v47 = v16;
    v44 = v94;
    v45 = v91;
  }

  sub_C3D04();
  if ((*(v17 + 48))(v15, 1, v47) != 1)
  {
    sub_C060(v15, &qword_104778, &qword_CDE30);
  }

LABEL_10:
  (*(v17 + 32))(&v2[OBJC_IVAR____TtC20JournalNotifications5Asset_id], v45, v47);
  v48 = *&v2[v20];
  if (v48)
  {
    v49 = v48;
    sub_C3FD4();

    v50 = v95;
    if ((*(v7 + 48))(v44, 1, v95) != 1)
    {
      v51 = v93;
      (*(v7 + 32))(v93, v44, v50);
      v52 = v96;
      goto LABEL_16;
    }
  }

  else
  {
    v50 = v95;
    (*(v7 + 56))(v44, 1, 1, v95);
  }

  v51 = v93;
  (*(v7 + 104))(v93, enum case for AssetType.unknown(_:), v50);
  v53 = (*(v7 + 48))(v44, 1, v50);
  v52 = v96;
  if (v53 != 1)
  {
    sub_C060(v44, &qword_108DE0, &qword_D25A8);
  }

LABEL_16:
  (*(v7 + 32))(&v2[OBJC_IVAR____TtC20JournalNotifications5Asset_type], v51, v50);
  v54 = *&v2[v20];
  if (v54)
  {
    v55 = [v54 title];
    v56 = v107;
    if (v55)
    {
      v57 = v55;
      v58 = sub_C3984();
      v60 = v59;

      v61 = sub_C3954();
      v62 = v60;
      v47 = v105;
      sub_BF1C(v58, v62);
    }

    else
    {
      v61 = 0;
    }
  }

  else
  {
    v61 = 0;
    v56 = v107;
  }

  v63 = *&v2[v92];
  *&v2[v92] = v61;

  v64 = *&v2[v20];
  if (v64 && (v64 = [v64 source]) != 0)
  {
    v65 = v64;
    v66 = sub_C5484();
    v68 = v67;

    v69 = v68;
    v47 = v105;
    v64 = v66;
  }

  else
  {
    v69 = 0xE000000000000000;
  }

  v70 = _s20JournalNotifications11AssetSourceO8rawValueACSgSS_tcfC_0(v64, v69);
  if (v70 == 13)
  {
    v71 = 10;
  }

  else
  {
    v71 = v70;
  }

  v2[OBJC_IVAR____TtC20JournalNotifications5Asset_source] = v71;
  v72 = [v52 suggestionId];
  if (v72)
  {
    v73 = v72;
    sub_C3CF4();

    v74 = 0;
  }

  else
  {
    v74 = 1;
  }

  v75 = 1;
  v56(v46, v74, 1, v47);
  v76 = v97;
  swift_beginAccess();
  sub_2882C(v46, &v2[v76], &qword_104778, &qword_CDE30);
  swift_endAccess();
  v77 = [v52 suggestionDate];
  v78 = v104;
  if (v77)
  {
    v79 = v77;
    sub_C3C64();

    v75 = 0;
  }

  v100(v78, v75, 1, v101);
  v80 = v102;
  swift_beginAccess();
  sub_2882C(v78, &v2[v80], &qword_104800, &qword_CDE60);
  swift_endAccess();
  v81 = [v52 isHidden];
  v2[v98] = v81;
  v82 = type metadata accessor for Asset(0);
  v108.receiver = v2;
  v108.super_class = v82;
  v83 = objc_msgSendSuper2(&v108, "init");
  sub_82414();
  v84 = objc_opt_self();
  v85 = [v84 defaultCenter];
  if (qword_104210 != -1)
  {
    swift_once();
  }

  [v85 addObserver:v83 selector:? name:? object:?];

  v86 = [v84 defaultCenter];
  v87 = qword_104218;
  v88 = v83;
  if (v87 != -1)
  {
    swift_once();
  }

  [v86 addObserver:v88 selector:"mediaFileUpdatedNotificationWithNotification:" name:qword_115478 object:0];

  return v88;
}

double *sub_843B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + 8);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_48AF4(0, *(v7 + 2) + 1, 1, v7);
    v7 = result;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    result = sub_48AF4((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[2 * v10];
  *(v11 + 4) = sub_86CC0;
  *(v11 + 5) = v6;
  *(a1 + 8) = v7;
  return result;
}

void sub_8449C(void *a1, char a2, void (*a3)(id *))
{
  if (a2)
  {
    v5 = a1;
    sub_3CB0(&unk_10A100, &unk_CF140);
    swift_willThrowTypedImpl();
    v4 = 0;
  }

  else
  {
    v4 = a1;
  }

  v5 = v4;
  a3(&v5);
}

uint64_t sub_8451C()
{
  v0 = sub_C5B04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_C5AF4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_C5154();
  __chkstk_darwin(v5 - 8);
  sub_BE28(0, &qword_105550, OS_dispatch_queue_ptr);
  sub_C50F4();
  sub_C5AE4();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = sub_C5B44();
  qword_1155C8 = result;
  return result;
}

uint64_t sub_846DC()
{
  v0 = sub_C5B04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_C5AF4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_C5154();
  __chkstk_darwin(v5 - 8);
  sub_BE28(0, &qword_105550, OS_dispatch_queue_ptr);
  sub_C5114();
  sub_C5AE4();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = sub_C5B44();
  qword_1155D0 = result;
  return result;
}

uint64_t sub_8489C()
{
  v0 = sub_C5B04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_C5AF4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_C5154();
  __chkstk_darwin(v5 - 8);
  sub_BE28(0, &qword_105550, OS_dispatch_queue_ptr);
  sub_C5124();
  sub_C5AE4();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = sub_C5B44();
  qword_1155D8 = result;
  return result;
}

uint64_t sub_84A5C(uint64_t a1)
{
  v3 = sub_C3CB4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3CB0(&qword_108DF8, &unk_D25B0);
  __chkstk_darwin(v7);
  v9 = &v48 - v8;
  v10 = sub_3CB0(&qword_104800, &qword_CDE60);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v48 - v14;
  sub_B954(a1, v53, &qword_104818, &qword_CEAF0);
  if (v53[3])
  {
    type metadata accessor for Asset(0);
    if (swift_dynamicCast())
    {
      v16 = v51;
      ObjectType = swift_getObjectType();
      if (ObjectType != swift_getObjectType() || (sub_C3CE4() & 1) == 0)
      {
        goto LABEL_26;
      }

      v48 = v4;
      v50 = v16;
      sub_C49F4();
      sub_86BF4(&qword_107CB0, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType);
      v49 = v1;
      sub_C55F4();
      sub_C55F4();
      if (v53[0] == v51 && v53[1] == v52)
      {
      }

      else
      {
        v18 = sub_C6244();

        if ((v18 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v19 = v49;
      v20 = v50[OBJC_IVAR____TtC20JournalNotifications5Asset_source];
      v21 = AssetSource.rawValue.getter(*(v49 + OBJC_IVAR____TtC20JournalNotifications5Asset_source));
      v23 = v22;
      if (v21 == AssetSource.rawValue.getter(v20) && v23 == v24)
      {
      }

      else
      {
        v25 = sub_C6244();

        if ((v25 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v26 = *(v19 + OBJC_IVAR____TtC20JournalNotifications5Asset_title);
      v27 = *&v50[OBJC_IVAR____TtC20JournalNotifications5Asset_title];
      if (v26)
      {
        if (v27)
        {
          sub_BE28(0, &qword_1047D8, NSAttributedString_ptr);
          v28 = v27;
          v29 = v26;
          v30 = sub_C5D44();
          v19 = v49;
          v31 = v30;

          if (v31)
          {
            goto LABEL_20;
          }
        }
      }

      else if (!v27)
      {
LABEL_20:
        v32 = OBJC_IVAR____TtC20JournalNotifications5Asset_suggestionDate;
        swift_beginAccess();
        sub_B954(v19 + v32, v15, &qword_104800, &qword_CDE60);
        v33 = OBJC_IVAR____TtC20JournalNotifications5Asset_suggestionDate;
        swift_beginAccess();
        v34 = *(v7 + 48);
        sub_B954(v15, v9, &qword_104800, &qword_CDE60);
        v35 = &v50[v33];
        v16 = v50;
        sub_B954(v35, &v9[v34], &qword_104800, &qword_CDE60);
        v36 = v48;
        v37 = *(v48 + 48);
        if (v37(v9, 1, v3) == 1)
        {
          sub_C060(v15, &qword_104800, &qword_CDE60);
          if (v37(&v9[v34], 1, v3) == 1)
          {
            v38 = sub_C060(v9, &qword_104800, &qword_CDE60);
            v39 = v49;
LABEL_30:
            v45 = (*&stru_1F8.segname[(swift_isaMask & *v39) - 8])(v38);
            v46 = v50;
            v47 = (*&stru_1F8.segname[(swift_isaMask & *v50) - 8])();

            v40 = v45 ^ v47 ^ 1;
            return v40 & 1;
          }

          goto LABEL_25;
        }

        sub_B954(v9, v13, &qword_104800, &qword_CDE60);
        if (v37(&v9[v34], 1, v3) == 1)
        {
          sub_C060(v15, &qword_104800, &qword_CDE60);
          (*(v36 + 8))(v13, v3);
LABEL_25:
          sub_C060(v9, &qword_108DF8, &unk_D25B0);
LABEL_26:

          goto LABEL_27;
        }

        (*(v36 + 32))(v6, &v9[v34], v3);
        sub_86BF4(&qword_1047B8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v42 = sub_C53A4();
        v39 = v49;
        v43 = v42;
        v44 = *(v36 + 8);
        v44(v6, v3);
        sub_C060(v15, &qword_104800, &qword_CDE60);
        v44(v13, v3);
        v38 = sub_C060(v9, &qword_104800, &qword_CDE60);
        if (v43)
        {
          goto LABEL_30;
        }
      }

LABEL_19:
    }
  }

  else
  {
    sub_C060(v53, &qword_104818, &qword_CEAF0);
  }

LABEL_27:
  v40 = 0;
  return v40 & 1;
}

Swift::Int sub_8522C()
{
  v1 = v0;
  v2 = sub_C3CB4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_3CB0(&qword_104800, &qword_CDE60);
  __chkstk_darwin(v6 - 8);
  v8 = &v13[-v7];
  sub_C6354();
  sub_C3D14();
  sub_86BF4(&qword_104C98, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_C5304();
  sub_C49F4();
  sub_86BF4(&qword_108DF0, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType);
  sub_C5304();
  AssetSource.rawValue.getter(*(v0 + OBJC_IVAR____TtC20JournalNotifications5Asset_source));
  sub_C5514();

  v9 = *(v0 + OBJC_IVAR____TtC20JournalNotifications5Asset_title);
  if (v9)
  {
    sub_C6314(1u);
    v10 = v9;
    sub_C5D54();
  }

  else
  {
    sub_C6314(0);
  }

  v11 = OBJC_IVAR____TtC20JournalNotifications5Asset_suggestionDate;
  swift_beginAccess();
  sub_B954(v1 + v11, v8, &qword_104800, &qword_CDE60);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_C6314(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_C6314(1u);
    sub_86BF4(&qword_1065E0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_C5304();
    (*(v3 + 8))(v5, v2);
  }

  return sub_C6334();
}

id sub_85564@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
  if (v3)
  {
    result = [v3 isSlim];
  }

  else
  {
    result = &dword_0 + 2;
  }

  *a2 = result;
  return result;
}

id sub_855B4()
{
  v1 = sub_C3D14();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR____TtC20JournalNotifications5Asset_thumbnailCacheKey + 8];
  if (v5)
  {
    v6 = *&v0[OBJC_IVAR____TtC20JournalNotifications5Asset_thumbnailCacheKey];

    sub_7D90C(v6, v5, 0);
  }

  (*(v2 + 16))(v4, &v0[OBJC_IVAR____TtC20JournalNotifications5Asset_id], v1);
  ObjectType = swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (v8)
  {
    v9 = sub_3FF30(ObjectType, v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *&v0[OBJC_IVAR____TtC20JournalNotifications5Asset_attachmentIdsMissingFile];

  sub_3F2FC(1, v4, v9, v10);

  (*(v2 + 8))(v4, v1);
  v11 = [objc_opt_self() defaultCenter];
  [v11 removeObserver:v0];

  v12 = type metadata accessor for Asset(0);
  v14.receiver = v0;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, "dealloc");
}

uint64_t type metadata accessor for Asset(uint64_t a1)
{
  result = qword_108DC8;
  if (!qword_108DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_859E4(uint64_t a1)
{
  sub_82414();
  v2 = [*(a1 + OBJC_IVAR____TtC20JournalNotifications5Asset_delegates) allObjects];
  v3 = sub_C5674();

  if (v3 >> 62)
  {
    v4 = sub_C60E4();
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v4; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = sub_C5FE4();
    }

    else
    {
      v6 = *(v3 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    v7 = swift_conformsToProtocol2();
    if (v7 && v6)
    {
      v8 = v7;
      ObjectType = swift_getObjectType();
      (*(v8 + 8))(ObjectType, v8);
    }

    swift_unknownObjectRelease();
  }

LABEL_13:

  v10 = a1 + OBJC_IVAR____TtC20JournalNotifications5Asset_didUpdate;
  v11 = *(a1 + OBJC_IVAR____TtC20JournalNotifications5Asset_didUpdate);
  if (v11)
  {
    v12 = *(v10 + 8);

    v11(v13);

    sub_2881C(v11, v12);
  }
}

double sub_85BA8(uint64_t a1)
{
  sub_82414();
  v3 = *(a1 + OBJC_IVAR____TtC20JournalNotifications5Asset_didUpdateMediaFile);
  if (v3)
  {
    v4 = *(a1 + OBJC_IVAR____TtC20JournalNotifications5Asset_didUpdateMediaFile + 8);

    v3(v5);

    return sub_2881C(v3, v4);
  }

  return result;
}

uint64_t sub_85C30(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_C35A4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_C3574();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

double sub_85D20(uint64_t a1, uint64_t a2, void (*a3)(id), uint64_t a4, char *a5, uint64_t a6, void *a7, char *a8, char a9, uint64_t a10)
{
  v50 = a8;
  v51 = a5;
  v52 = a7;
  v53 = a3;
  v54 = a4;
  v49 = a10;
  v13 = sub_C5154();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v48 - v18;
  if (qword_104290 != -1)
  {
    swift_once();
  }

  v20 = sub_6BC94(a1, a2);
  if (v20)
  {
    v21 = v20;
    v22 = [v20 imageByPreparingForDisplay];

    if (v22)
    {
      v52 = v22;
      v53(v22);

      v23 = v52;
LABEL_18:

      return result;
    }
  }

  v24 = sub_7DD74(a1, a2, a6);
  if (v24)
  {
    v50 = v24;
    v25 = *&v24[qword_115570];
    if (v25 >> 62)
    {
      v26 = sub_C60E4();
    }

    else
    {
      v26 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
    }

    if (v26 == v52)
    {
      v27 = swift_allocObject();
      v28 = v54;
      *(v27 + 16) = v53;
      *(v27 + 24) = v28;
      v29 = swift_allocObject();
      *(v29 + 16) = sub_86D60;
      *(v29 + 24) = v27;
      v30 = *&v50[qword_1081C8];
      __chkstk_darwin(v50);
      *(&v48 - 2) = sub_86D44;
      *(&v48 - 1) = v29;

      os_unfair_lock_lock(v30 + 10);
      sub_86D48(&v30[4]);
      os_unfair_lock_unlock(v30 + 10);

      return result;
    }

    sub_86228(v51, v53, v54, a6);
    v23 = v50;
    goto LABEL_18;
  }

  sub_7E014(a1, a2);
  if (v32)
  {
    v34 = v32;
    v35 = v33;
    sub_C5B14();
    v36 = sub_C5134();
    v37 = *(v14 + 8);
    v37(v19, v13);
    sub_C5B14();
    v38 = sub_C5134();
    v37(v17, v13);
    if (v36 >= v38 && ((v39 = *&v34[qword_115570], v39 >> 62) ? (v40 = sub_C60E4()) : (v40 = *(&dword_10 + (v39 & 0xFFFFFFFFFFFFFF8))), v40 == v52))
    {
      v41 = swift_allocObject();
      v42 = v54;
      *(v41 + 16) = v53;
      *(v41 + 24) = v42;
      v43 = swift_allocObject();
      *(v43 + 16) = sub_86C3C;
      *(v43 + 24) = v41;
      v44 = *&v34[qword_1081C8];
      v45 = __chkstk_darwin(v43);
      *(&v48 - 2) = sub_86C68;
      *(&v48 - 1) = v45;

      os_unfair_lock_lock(v44 + 10);
      sub_86C6C(&v44[4]);
      os_unfair_lock_unlock(v44 + 10);
    }

    else
    {
      sub_86228(v51, v53, v54, a6);
    }
  }

  else
  {
    sub_86228(v51, v53, v54, a6);
    v47 = v49;
    v46 = v50;

    return sub_3F2FC(0, v46, a9 & 1, v47);
  }

  return result;
}

id sub_86228(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_86D60;
  *(v9 + 24) = v8;
  v10 = *&a1[qword_1081C8];

  os_unfair_lock_lock(v10 + 10);
  sub_86D48(&v10[4]);
  os_unfair_lock_unlock(v10 + 10);

  sub_BE28(0, &qword_108C38, NSObject_ptr);
  if (qword_1042A8 != -1)
  {
    swift_once();
  }

  if (sub_C5D44())
  {
    [a1 setQualityOfService:9];
  }

  else
  {
    if (qword_1042B0 != -1)
    {
      swift_once();
    }

    if (sub_C5D44())
    {
      v11 = a1;
      v12 = -1;
    }

    else
    {
      v11 = a1;
      v12 = 25;
    }

    [v11 setQualityOfService:v12];
  }

  return sub_7DC28(a1, a4);
}

void sub_86430(uint64_t a1)
{
  sub_C3D14();
  if (v1 <= 0x3F)
  {
    sub_C49F4();
    if (v2 <= 0x3F)
    {
      sub_86650(319, &qword_105518, &type metadata accessor for UUID);
      if (v3 <= 0x3F)
      {
        sub_86650(319, &qword_1057A8, &type metadata accessor for Date);
        if (v4 <= 0x3F)
        {
          sub_86650(319, &qword_1087F0, &type metadata accessor for URL);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_86650(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_C5DA4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_86714@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20JournalNotifications5Asset_id;
  v5 = sub_C3D14();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

id sub_867D8(uint64_t a1)
{
  v3 = sub_C3824();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 dataAttachments];
  if (!v7)
  {
    sub_BE28(0, &qword_108E00, NSSet_ptr);
    v7 = sub_C5CA4();
  }

  sub_C5CB4();

  sub_C3814();
  while (v14)
  {
    sub_D564(&v13, &v12);
    sub_C4014();
    if (swift_dynamicCast())
    {
      v8 = v11;
      if ([v11 index] == a1)
      {
        goto LABEL_10;
      }
    }

    sub_C3814();
  }

  v8 = 0;
LABEL_10:
  (*(v4 + 8))(v6, v3);
  return v8;
}

uint64_t sub_86990()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_869D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_869F0@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(*(v1 + 16) + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
  if (v3)
  {
    result = [v3 isSlim];
  }

  else
  {
    result = &dword_0 + 2;
  }

  *a1 = result;
  return result;
}

uint64_t sub_86A44()
{
  v1 = sub_C3D14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

double sub_86B44()
{
  v1 = *(sub_C3D14() - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  return sub_85D20(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), (v0 + v2), *(v0 + v2 + *(v1 + 64)), *(v0 + ((v2 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_86BF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_86C88()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_86CC0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 8);
  v5 = *a1;
  v6 = v3;
  return v2(&v5);
}

id sub_86FA0(void *a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_C40B4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *a3, v5);
  v9 = a1;
  sub_C40A4();
  (*(v6 + 8))(v8, v5);
  v10 = sub_C5444();

  v11 = [v9 integerForKey:v10];

  return v11;
}

void sub_870E8(void *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v7 = sub_C40B4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, *a4, v7);
  v11 = a1;
  sub_C40A4();
  (*(v8 + 8))(v10, v7);
  v12 = sub_C5444();

  [v11 setInteger:a3 forKey:v12];
}

id sub_87238(void *a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_C40B4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *a3, v5);
  v9 = a1;
  sub_C40A4();
  (*(v6 + 8))(v8, v5);
  v10 = sub_C5444();

  v11 = [v9 BOOLForKey:v10];

  return v11;
}

void sub_873E0(char a1, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v18 = a3;
  v19 = a4;
  v6 = v4;
  v8 = sub_C40B4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 104);
  v12(v11, *a2, v8);
  sub_C40A4();
  v13 = *(v9 + 8);
  v13(v11, v8);
  v14 = sub_C5444();
  v15 = v6;

  [v6 setBool:a1 & 1 forKey:v14];

  if ((a1 & 1) == 0)
  {
    v12(v11, *v18, v8);
    sub_C40A4();
    v13(v11, v8);
    v16 = sub_C5444();

    [v15 removeObjectForKey:v16];

    v12(v11, *v19, v8);
    sub_C40A4();
    v13(v11, v8);
    v17 = sub_C5444();

    [v15 removeObjectForKey:v17];
  }
}

void sub_87828(uint64_t a1)
{
  v2 = v1;
  v3 = sub_C40B4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = 0;
  if (v8 >> 60 != 15)
  {
    isa = sub_C3974().super.isa;
  }

  v9 = *(v4 + 104);
  v9(v6, enum case for SettingsKey.journalingScheduleData(_:), v3);
  sub_C40A4();
  v10 = *(v4 + 8);
  v10(v6, v3);
  v11 = sub_C5444();

  [v2 setObject:isa forKey:v11];
  swift_unknownObjectRelease();

  v9(v6, enum case for SettingsKey.journalingScheduleDataLegacy(_:), v3);
  sub_C40A4();
  v10(v6, v3);
  v12 = sub_C5444();

  [v2 removeObjectForKey:v12];
}

id sub_87A14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisitAsset(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for VisitAsset(uint64_t a1)
{
  result = qword_108EC8;
  if (!qword_108EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_87B5C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_C43A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_87BB0(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC20JournalNotifications10VisitAsset_metadata) = a1;

  return result;
}

id sub_87BC8()
{
  v0 = sub_C4394();
  if (v1 >> 60 != 15)
  {
    v2 = v0;
    v3 = v1;
    sub_BE28(0, &qword_108F20, GEOFeatureStyleAttributes_ptr);
    v4 = sub_C5D14();
    sub_1D580(v2, v3);
    if (v4)
    {
      return v4;
    }
  }

  v5 = sub_C42F4();
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v8 = v5;
    v9 = v6;
    sub_BE28(0, &qword_104C40, MKMapItem_ptr);
    v7 = sub_C5D14();
    sub_1D580(v8, v9);
  }

  v4 = [v7 _styleAttributes];

  if (v4)
  {
    return v4;
  }

  else
  {
    return [objc_opt_self() markerStyleAttributes];
  }
}

uint64_t sub_87CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_C62F4();
  sub_C5314();
  v6 = sub_C6344();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_C6244() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_87DF4(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_C62F4();
  sub_C6304(v3);
  v4 = sub_C6344();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_87EC4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_C5484(), sub_C62F4(), sub_C5514(), v3 = sub_C6344(), , v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = sub_C5484();
      v9 = v8;
      if (v7 == sub_C5484() && v9 == v10)
      {
        break;
      }

      v12 = sub_C6244();

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

uint64_t sub_88018()
{
  v1 = *(v0 + *(sub_3CB0(&qword_108F30, &qword_D26E8) + 32));
  v2 = sub_C5EA4();
  v3 = *(v1 + 36);
  v4 = 1 << *(v1 + 32);
  v5 = *(v1 + 36);

  return sub_89B50(v2, v3, 0, v4, v5, 0);
}

uint64_t sub_88094(void *a1)
{
  v3 = sub_3CB0(&qword_109000, &qword_D2758);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_13DC4(a1, a1[3]);
  sub_8A170();
  sub_C6384();
  v13 = 0;
  type metadata accessor for StreakSummary(0);
  sub_8A1C4(&qword_109010, type metadata accessor for StreakSummary, &unk_D35C4);
  sub_C61F4();
  if (!v1)
  {
    _s8SnapshotVMa(0);
    v12 = 1;
    sub_C61F4();
    v11 = 2;
    sub_C61E4();
    v10 = 3;
    sub_C61E4();
    v9 = 4;
    sub_C61E4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_882E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v30 = a2;
  v2 = type metadata accessor for StreakSummary(0);
  v3 = __chkstk_darwin(v2);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v33 = &v27 - v5;
  v34 = sub_3CB0(&qword_109018, &qword_D2760);
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v27 - v6;
  v7 = _s8SnapshotVMa(0);
  v8 = (v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_C3CB4();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 1, 1, v11);
  v12(&v10[v2[5]], 1, 1, v11);
  v12(&v10[v2[6]], 1, 1, v11);
  *&v10[v2[7]] = 0;
  v13 = &v10[v8[7]];
  v12(v13, 1, 1, v11);
  v12(&v13[v2[5]], 1, 1, v11);
  v12(&v13[v2[6]], 1, 1, v11);
  *&v13[v2[7]] = 0;
  v14 = v8[8];
  *&v10[v14] = 0;
  v15 = v8[9];
  *&v10[v15] = 0;
  v16 = v8[10];
  v35 = v10;
  *&v10[v16] = 0;
  sub_13DC4(v38, v38[3]);
  sub_8A170();
  v17 = v36;
  sub_C6374();
  if (v17)
  {
    v18 = v35;
  }

  else
  {
    v19 = v13;
    v36 = v14;
    v28 = v16;
    v29 = v15;
    v20 = v31;
    v43 = 0;
    sub_8A1C4(&qword_109020, type metadata accessor for StreakSummary, &unk_D35EC);
    sub_C6194();
    v18 = v35;
    sub_8A20C(v33, v35);
    v42 = 1;
    sub_C6194();
    sub_8A20C(v20, v19);
    v41 = 2;
    v21 = sub_C6184();
    v22 = v32;
    *(v18 + v36) = v21;
    v40 = 3;
    *(v18 + v29) = sub_C6184();
    v39 = 4;
    v24 = v34;
    v25 = v37;
    v26 = sub_C6184();
    (*(v22 + 8))(v25, v24);
    *(v18 + v28) = v26;
    sub_8A270(v18, v30, _s8SnapshotVMa);
  }

  sub_BED0(v38);
  return sub_89F8C(v18, _s8SnapshotVMa);
}

uint64_t sub_887E4()
{
  v1 = *v0;
  v2 = 0x6144657669746361;
  v3 = 0x6E756F4364726F77;
  v4 = 0x746E756F43796164;
  if (v1 != 3)
  {
    v4 = 0x5473656972746E65;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6557657669746361;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_8889C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_8A530(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_888D0(uint64_t a1)
{
  v2 = sub_8A170();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_8890C(uint64_t a1)
{
  v2 = sub_8A170();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_88978()
{
  v1 = v0;
  Update = type metadata accessor for InsightsDataManager.LastUpdate(0);
  __chkstk_darwin(Update);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3CB0(&qword_108F50, &qword_D26F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  v7 = _s8SnapshotVMa(0);
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager_options;
  if (sub_87DF4(5u, *(v0 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager_options)))
  {
    sub_89D70();
    v12 = sub_C5A74();
    v13 = sub_C5444();
    v14 = [v12 dataForKey:v13];

    if (v14)
    {
      v15 = sub_C3984();
      v17 = v16;

      sub_C3774();
      swift_allocObject();
      sub_C3764();
      sub_8A1C4(&qword_108F58, _s8SnapshotVMa, &unk_D2704);
      v37 = v15;
      sub_C3754();

      (*(v8 + 56))(v6, 0, 1, v7);
      sub_89EA4(v6, v10, _s8SnapshotVMa);
      swift_getKeyPath();
      v36 = 0;
      v40 = v1;
      sub_8A1C4(&qword_108F28, type metadata accessor for InsightsDataManager, &unk_D39B8);
      sub_C3F44();

      v40 = v1;
      swift_getKeyPath();
      sub_C3F64();

      v34 = v3;
      v18 = v1 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__streaks;
      swift_beginAccess();
      sub_89F0C(v10, v18);
      swift_endAccess();
      v40 = v1;
      v33 = v11;
      swift_getKeyPath();
      sub_C3F54();

      v35 = v17;
      v19 = v7[5];
      swift_getKeyPath();
      v40 = v1;
      sub_C3F44();

      v40 = v1;
      swift_getKeyPath();
      sub_C3F64();

      swift_beginAccess();
      v20 = type metadata accessor for InsightsDataManager.Streaks(0);
      sub_89F0C(&v10[v19], v18 + *(v20 + 20));
      swift_endAccess();
      v40 = v1;
      swift_getKeyPath();
      sub_C3F54();

      v21 = *&v10[v7[6]];
      swift_getKeyPath();
      v40 = v1;
      sub_C3F44();

      v40 = v1;
      swift_getKeyPath();
      sub_C3F64();

      *(v1 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__wordCount) = v21;
      v40 = v1;
      swift_getKeyPath();
      sub_C3F54();

      v22 = *&v10[v7[7]];
      swift_getKeyPath();
      v40 = v1;
      sub_C3F44();

      v40 = v1;
      swift_getKeyPath();
      sub_C3F64();

      v23 = v1 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__byEntryDate;
      swift_beginAccess();
      v24 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
      v25 = v23 + *(v24 + 20);
      *v25 = v22;
      *(v25 + 8) = 0;
      v39 = v1;
      swift_getKeyPath();
      sub_C3F54();

      v26 = *&v10[v7[8]];
      swift_getKeyPath();
      v39 = v1;
      sub_C3F44();

      v39 = v1;
      swift_getKeyPath();
      sub_C3F64();

      v27 = v23 + *(v24 + 32);
      *v27 = v26;
      *(v27 + 8) = 0;
      v39 = v1;
      swift_getKeyPath();
      sub_C3F54();

      v28 = v34;
      sub_C3C74();
      v29 = *(v1 + v33);
      v30 = Update;
      *(v28 + *(Update + 20)) = 0;
      *(v28 + *(v30 + 24)) = v29;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v32 - 2) = v1;
      *(&v32 - 1) = v28;
      v39 = v1;

      sub_C3F34();
      sub_BF1C(v37, v35);

      sub_89F8C(v10, _s8SnapshotVMa);
      sub_89F8C(v28, type metadata accessor for InsightsDataManager.LastUpdate);
    }
  }
}

uint64_t sub_89140()
{
  v65 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
  v1 = __chkstk_darwin(v65);
  v66 = v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v64 = v61 - v3;
  v4 = type metadata accessor for StreakSummary(0);
  v5 = __chkstk_darwin(v4 - 8);
  v70 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v69 = v61 - v7;
  v67 = _s8SnapshotVMa(0);
  __chkstk_darwin(v67);
  v68 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_C3CB4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = v61 - v15;
  __chkstk_darwin(v14);
  v18 = v61 - v17;
  result = sub_87DF4(5u, *(v0 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager_options));
  if (result)
  {
    swift_getKeyPath();
    v63 = v13;
    v20 = OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager___observationRegistrar;
    v74 = v0;
    v21 = sub_8A1C4(&qword_108F28, type metadata accessor for InsightsDataManager, &unk_D39B8);
    v22 = v0;
    sub_C3F44();

    v23 = v0 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__lastUpdated;
    swift_beginAccess();
    (*(v10 + 16))(v18, v23, v9);
    sub_C3B44();
    sub_8A1C4(&qword_1047B8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v24 = sub_C53A4();
    v25 = *(v10 + 8);
    v26 = v16;
    v27 = v20;
    v28 = v63;
    v25(v26, v9);
    v62 = v25;
    result = (v25)(v18, v9);
    if ((v24 & 1) == 0)
    {
      v29 = v9;
      v30 = v22;
      swift_getKeyPath();
      v73 = v22;
      sub_C3F44();

      Update = type metadata accessor for InsightsDataManager.LastUpdate(0);
      result = sub_87DF4(5u, *(v23 + *(Update + 24)));
      if ((result & 1) == 0)
      {
        v32 = v28;
        swift_getKeyPath();
        v73 = v30;
        sub_C3F44();

        v33 = v30 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__streaks;
        swift_beginAccess();
        v61[2] = v21;
        sub_8A270(v33, v69, type metadata accessor for StreakSummary);
        swift_getKeyPath();
        v72 = v30;
        sub_C3F44();

        v34 = type metadata accessor for InsightsDataManager.Streaks(0);
        sub_8A270(v33 + *(v34 + 20), v70, type metadata accessor for StreakSummary);
        swift_getKeyPath();
        v72 = v30;
        sub_C3F44();

        v61[0] = *(v30 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__wordCount);
        swift_getKeyPath();
        v72 = v30;
        v61[1] = v27;
        sub_C3F44();

        v35 = OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__byEntryDate;
        swift_beginAccess();
        v36 = v64;
        sub_8A270(v30 + v35, v64, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
        v37 = *(v36 + *(sub_3CB0(&qword_108F30, &qword_D26E8) + 32));
        if (sub_C5EA4() + (-1 << *(v37 + 32)))
        {
          v43 = sub_C5EA4();
          v44 = sub_89B50(v43, *(v37 + 36), 0, 1 << *(v37 + 32), *(v37 + 36), 0);
          v45 = v36;
          v42 = v44;
          sub_89F8C(v45, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
          v38 = v65;
        }

        else
        {
          v38 = v65;
          v39 = v36 + *(v65 + 20);
          v40 = *v39;
          v41 = *(v39 + 8);
          sub_89F8C(v36, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
          if (v41)
          {
            v42 = 0;
          }

          else
          {
            v42 = v40;
          }
        }

        swift_getKeyPath();
        v71 = v30;
        sub_C3F44();

        v46 = v66;
        sub_8A270(v30 + v35, v66, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
        sub_C3C74();
        sub_89A04(v32);
        v48 = v47;
        v50 = v49;
        v62(v32, v29);
        if (v50)
        {
          sub_89F8C(v46, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
        }

        else
        {
          v51 = v46 + *(v38 + 32);
          v48 = *v51;
          v52 = *(v51 + 8);
          sub_89F8C(v46, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
          if (v52)
          {
            v48 = 0;
          }
        }

        v53 = v68;
        sub_89EA4(v69, v68, type metadata accessor for StreakSummary);
        v54 = v67;
        sub_89EA4(v70, v53 + *(v67 + 20), type metadata accessor for StreakSummary);
        *(v53 + v54[6]) = v61[0];
        *(v53 + v54[7]) = v42;
        *(v53 + v54[8]) = v48;
        sub_C37A4();
        swift_allocObject();
        sub_C3794();
        sub_8A1C4(&qword_108F38, _s8SnapshotVMa, &unk_D272C);
        v55 = sub_C3784();
        v57 = v56;

        sub_89D70();
        v58 = sub_C5A74();
        isa = sub_C3974().super.isa;
        v60 = sub_C5444();
        [v58 setObject:isa forKey:v60];
        sub_BF1C(v55, v57);

        return sub_89F8C(v53, _s8SnapshotVMa);
      }
    }
  }

  return result;
}

uint64_t sub_89A04(uint64_t a1)
{
  v3 = sub_3CB0(&qword_108F30, &qword_D26E8);
  sub_C3CB4();
  sub_8A1C4(&qword_108F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if ((sub_C5344() & 1) == 0)
  {
    return 0;
  }

  sub_3CB0(&qword_108F48, &unk_D3430);
  if ((sub_C5354() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + *(v3 + 32));
  v5 = sub_AAD28(a1);
  if (!*(v4 + 16))
  {
    return 0;
  }

  v6 = sub_24224(v5);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(*(v4 + 56) + 32 * v6);

  return v8;
}

int64_t sub_89B50(int64_t result, uint64_t a2, char a3, int64_t a4, unsigned int a5, char a6)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_31;
  }

  if (a4 < result)
  {
    goto LABEL_29;
  }

  if (a5 != a2)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  if (result != a4)
  {
    v10 = result;
    v12 = sub_3CB0(&qword_108F30, &qword_D26E8);
    v13 = a2;
    v14 = v12;
    result = v10;
    v15 = *(v6 + *(v14 + 32));
    v9 = 1;
    while ((result & 0x8000000000000000) == 0)
    {
      v16 = 1 << *(v15 + 32);
      if (result >= v16)
      {
        break;
      }

      v17 = result >> 6;
      v18 = *(v15 + 64 + 8 * (result >> 6));
      if (((v18 >> result) & 1) == 0)
      {
        goto LABEL_26;
      }

      if (*(v15 + 36) != v13)
      {
        goto LABEL_27;
      }

      v19 = v18 & (-2 << (result & 0x3F));
      if (v19)
      {
        result = __clz(__rbit64(v19)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v17 << 6;
        v21 = v17 + 1;
        v22 = (v15 + 72 + 8 * v17);
        while (v21 < (v16 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_C0C0(result, v13, 0);
            result = __clz(__rbit64(v23)) + v20;
            goto LABEL_20;
          }
        }

        sub_C0C0(result, v13, 0);
        result = v16;
      }

LABEL_20:
      if (*(v15 + 36) != a5)
      {
        goto LABEL_28;
      }

      if (result == a4)
      {
        return v9;
      }

      v13 = a5;
      if (__OFADD__(v9++, 1))
      {
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  return 0;
}

uint64_t _s8SnapshotVMa(uint64_t a1)
{
  result = qword_108FB8;
  if (!qword_108FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_89D70()
{
  result = qword_10A110;
  if (!qword_10A110)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10A110);
  }

  return result;
}

uint64_t sub_89DBC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return sub_C5EC4();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_89E3C(uint64_t a1)
{
  v2 = sub_3CB0(&qword_108F50, &qword_D26F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_89EA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_89F0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreakSummary(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_89F8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_8A000(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreakSummary(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_8A080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreakSummary(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_8A0F0(uint64_t a1)
{
  result = type metadata accessor for StreakSummary(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_8A170()
{
  result = qword_109008;
  if (!qword_109008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_109008);
  }

  return result;
}

uint64_t sub_8A1C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_8A20C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreakSummary(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_8A270(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s8SnapshotV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8SnapshotV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_8A42C()
{
  result = qword_109028;
  if (!qword_109028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_109028);
  }

  return result;
}

unint64_t sub_8A484()
{
  result = qword_109030;
  if (!qword_109030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_109030);
  }

  return result;
}

unint64_t sub_8A4DC()
{
  result = qword_109038;
  if (!qword_109038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_109038);
  }

  return result;
}

uint64_t sub_8A530(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144657669746361 && a2 == 0xEA00000000007379;
  if (v4 || (sub_C6244() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6557657669746361 && a2 == 0xEB00000000736B65 || (sub_C6244() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E756F4364726F77 && a2 == 0xE900000000000074 || (sub_C6244() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E756F43796164 && a2 == 0xE800000000000000 || (sub_C6244() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5473656972746E65 && a2 == 0xEF72616559736968)
  {

    return 4;
  }

  else
  {
    v6 = sub_C6244();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

double *sub_8A700(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_C3CB4();
  v7 = __chkstk_darwin(v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = _swiftEmptyArrayStorage;
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_52678(0, *(v23 + 2) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 2);
        v25 = *(v23 + 3);
        if (v26 >= v25 >> 1)
        {
          sub_52678((v25 > 1), v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 2) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = _swiftEmptyArrayStorage;
LABEL_14:

    return v37;
  }

  return result;
}

double *sub_8A9D0(uint64_t a1)
{
  v3 = type metadata accessor for InsightsDataManager.TopAssetCategory(0);
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v29 = v5;
  v26 = v1;
  v34 = _swiftEmptyArrayStorage;
  sub_52638(0, v6, 0);
  v7 = v34;
  v33 = a1 + 64;
  result = sub_C5EA4();
  v9 = result;
  v10 = 0;
  v27 = a1 + 72;
  v28 = v6;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v12 = v9 >> 6;
    if ((*(v33 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v32 = *(a1 + 36);
    v13 = *(*(a1 + 48) + v9);
    v14 = *(*(a1 + 56) + 8 * v9);
    v15 = v29;
    sub_C3D04();
    v16 = v31;
    *(v15 + *(v31 + 20)) = v13;
    *(v15 + *(v16 + 24)) = v14;
    v34 = v7;
    v18 = *(v7 + 2);
    v17 = *(v7 + 3);
    if (v18 >= v17 >> 1)
    {
      sub_52638((v17 > 1), v18 + 1, 1);
      v7 = v34;
    }

    *(v7 + 2) = v18 + 1;
    result = sub_A65E4(v15, v7 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v18, type metadata accessor for InsightsDataManager.TopAssetCategory);
    v11 = 1 << *(a1 + 32);
    if (v9 >= v11)
    {
      goto LABEL_22;
    }

    v19 = *(v33 + 8 * v12);
    if ((v19 & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    if (v32 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v20 = v19 & (-2 << (v9 & 0x3F));
    if (v20)
    {
      v11 = __clz(__rbit64(v20)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v12 << 6;
      v22 = v12 + 1;
      v23 = (v27 + 8 * v12);
      while (v22 < (v11 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_C0C0(v9, v32, 0);
          v11 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_C0C0(v9, v32, 0);
    }

LABEL_4:
    ++v10;
    v9 = v11;
    if (v10 == v28)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_8ACB8(uint64_t a1)
{
  v46 = sub_3CB0(&qword_109070, &qword_D2A58);
  v3 = __chkstk_darwin(v46);
  v55 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v45 = &v38 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v38 - v8;
  __chkstk_darwin(v7);
  v44 = &v38 - v10;
  v11 = sub_3CB0(&qword_106638, &qword_CF458);
  v42 = *(v11 - 8);
  v43 = v11;
  __chkstk_darwin(v11);
  v56 = &v38 - v12;
  v13 = sub_88018();
  if (v13)
  {
    v14 = v13;
    v57 = _swiftEmptyArrayStorage;
    sub_52658(0, v13 & ~(v13 >> 63), 0);
    v15 = v57;
    v16 = *(a1 + *(sub_3CB0(&qword_108F30, &qword_D26E8) + 32));
    v47 = v16 + 64;
    v17 = sub_C5EA4();
    if ((v14 & 0x8000000000000000) == 0)
    {
      v40 = v16;
      v41 = a1;
      v38 = v1;
      v39 = v14;
      v18 = 0;
      v19 = v47;
      while (!__OFADD__(v18, 1))
      {
        if ((v17 & 0x8000000000000000) != 0 || v17 >= 1 << *(v16 + 32))
        {
          goto LABEL_17;
        }

        if ((*(v19 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
        {
          goto LABEL_18;
        }

        v51 = 1 << v17;
        v52 = v17 >> 6;
        v48 = v18 + 1;
        v49 = v18;
        v53 = v17;
        v54 = v15;
        v20 = *(v16 + 56);
        v21 = *(*(v16 + 48) + 8 * v17);
        v50 = *(v16 + 36);
        v22 = (v20 + 32 * v17);
        v24 = *v22;
        v23 = v22[1];
        v25 = v22[2];
        v26 = v22[3];

        v27 = v44;
        sub_AB0C0(v21, v44);
        sub_E9D4(v27, v9, &qword_108F48, &unk_D3430);
        v28 = v46;
        v29 = &v9[*(v46 + 48)];
        *v29 = v24;
        *(v29 + 1) = v23;
        v30 = v55;
        *(v29 + 2) = v25;
        *(v29 + 3) = v26;
        v31 = *(v43 + 48);
        v32 = v45;
        sub_B954(v9, v45, &qword_109070, &qword_D2A58);

        sub_3CB0(&qword_108F48, &unk_D3430);
        sub_C3B64();
        sub_C3C34();
        sub_C060(v32, &qword_108F48, &unk_D3430);
        sub_B954(v9, v30, &qword_109070, &qword_D2A58);
        v33 = *(v30 + *(v28 + 48) + 8);

        if (v33 < 0)
        {
          goto LABEL_19;
        }

        v34 = v55;
        v35 = (v56 + v31);
        *v35 = 0;
        v35[1] = v33;
        sub_C060(v34, &qword_108F48, &unk_D3430);
        sub_C060(v9, &qword_109070, &qword_D2A58);
        v15 = v54;
        v57 = v54;
        v37 = *(v54 + 2);
        v36 = *(v54 + 3);
        if (v37 >= v36 >> 1)
        {
          sub_52658((v36 > 1), v37 + 1, 1);
          v15 = v57;
        }

        *(v15 + 2) = v37 + 1;
        sub_E9D4(v56, v15 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v37, &qword_106638, &qword_CF458);
        v16 = v40;
        if (v53 >= -(-1 << *(v40 + 32)))
        {
          goto LABEL_20;
        }

        v19 = v47;
        if ((*(v47 + 8 * v52) & v51) == 0)
        {
          goto LABEL_21;
        }

        if (v50 != *(v40 + 36))
        {
          goto LABEL_22;
        }

        v17 = sub_C5EC4();
        v18 = v49 + 1;
        if (v48 == v39)
        {
          return;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
  }
}

void sub_8B184(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v35 = a2;
  v5 = sub_3CB0(&qword_106638, &qword_CF458);
  v33 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v38 = &v31 - v6;
  v7 = *(a3 + 16);
  if (v7)
  {
    v40 = _swiftEmptyArrayStorage;
    sub_52658(0, v7, 0);
    v8 = v40;
    v9 = a3 + 64;
    v10 = sub_C5EA4();
    v11 = 0;
    v31 = a3 + 72;
    v32 = v7;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a3 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v9 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_23;
      }

      v37 = v11;
      v15 = *(a3 + 36);
      v16 = a3;
      v17 = *(*(a3 + 56) + 8 * v10);
      v39[0] = *(*(a3 + 48) + 8 * v10);
      v39[1] = v17;
      v34(v39);
      v36 = v3;
      if (v3)
      {
        goto LABEL_27;
      }

      v18 = v8;
      v40 = v8;
      v20 = *(v8 + 2);
      v19 = *(v8 + 3);
      if (v20 >= v19 >> 1)
      {
        sub_52658((v19 > 1), v20 + 1, 1);
        v18 = v40;
      }

      *(v18 + 2) = v20 + 1;
      v8 = v18;
      sub_E9D4(v38, v18 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v20, &qword_106638, &qword_CF458);
      v12 = 1 << *(v16 + 32);
      if (v10 >= v12)
      {
        goto LABEL_24;
      }

      v21 = *(v9 + 8 * v14);
      if ((v21 & (1 << v10)) == 0)
      {
        goto LABEL_25;
      }

      a3 = v16;
      v22 = v15;
      if (v15 != *(v16 + 36))
      {
        goto LABEL_26;
      }

      v23 = v21 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v36;
        v13 = v32;
      }

      else
      {
        v24 = v14 << 6;
        v25 = v14 + 1;
        v13 = v32;
        v26 = (v31 + 8 * v14);
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            v29 = v36;
            sub_C0C0(v10, v22, 0);
            v3 = v29;
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        v30 = v36;
        sub_C0C0(v10, v22, 0);
        v3 = v30;
      }

LABEL_4:
      v11 = v37 + 1;
      v10 = v12;
      if (v37 + 1 == v13)
      {
        return;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:

    __break(1u);
  }
}

uint64_t sub_8B4A0()
{
  v0 = sub_C4CD4();
  sub_C0CC(v0, qword_109040);
  sub_B680(v0, qword_109040);
  return sub_C4CC4();
}

uint64_t sub_8B520()
{
  v1[459] = v0;
  v1[465] = type metadata accessor for InsightsDataManager.Streaks(0);
  v1[471] = swift_task_alloc();
  v1[472] = swift_task_alloc();
  v1[473] = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
  v1[474] = swift_task_alloc();
  v1[475] = swift_task_alloc();
  v1[476] = swift_task_alloc();
  sub_3CB0(&qword_104800, &qword_CDE60);
  v1[477] = swift_task_alloc();
  v2 = sub_C3CB4();
  v1[478] = v2;
  v1[479] = *(v2 - 8);
  v1[480] = swift_task_alloc();
  v1[481] = swift_task_alloc();
  sub_C5774();
  v1[482] = sub_C5764();
  v4 = sub_C5724();
  v1[483] = v4;
  v1[484] = v3;

  return _swift_task_switch(sub_8B6E0, v4, v3);
}

uint64_t sub_8B6E0(uint64_t a1)
{
  v2 = v1[479];
  v3 = v1[478];
  v4 = v1[477];
  v5 = v1[459];
  sub_C3C74();
  swift_getKeyPath();
  v1[485] = OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager___observationRegistrar;
  v1[453] = v5;
  v1[486] = sub_9A060(&qword_108F28, type metadata accessor for InsightsDataManager, &unk_D39B8);
  sub_C3F44();

  v6 = OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__referenceDate;
  swift_beginAccess();
  sub_B954(v5 + v6, v4, &qword_104800, &qword_CDE60);
  v7 = *(v2 + 48);
  if (v7(v4, 1, v3) == 1)
  {
    v8 = v1[478];
    v9 = v1[477];
    (*(v1[479] + 16))(v1[480], v1[481], v8);
    if (v7(v9, 1, v8) != 1)
    {
      sub_C060(v1[477], &qword_104800, &qword_CDE60);
    }
  }

  else
  {
    (*(v1[479] + 32))(v1[480], v1[477], v1[478]);
  }

  v10 = v1[480];
  v11 = v1[459];
  v12 = swift_task_alloc();
  v1[487] = v12;
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  swift_asyncLet_begin();
  v13 = swift_task_alloc();
  v1[488] = v13;
  *(v13 + 16) = v11;
  *(v13 + 24) = v10;
  swift_asyncLet_begin();
  v14 = swift_task_alloc();
  v1[489] = v14;
  *(v14 + 16) = v11;
  *(v14 + 24) = v10;
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  v15 = v1[476];

  return _swift_asyncLet_get(v1 + 162, v15, sub_8B9C0, v1 + 418);
}

uint64_t sub_8B9DC()
{
  v1 = v0[480];
  v2 = v0[475];
  v3 = v0[459];
  sub_9A3FC(v0[476], v2, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
  v4 = swift_task_alloc();
  v0[490] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2, v0 + 407, sub_8BAB8, v0 + 424);
}

uint64_t sub_8BAB8()
{
  v1 = *(v0 + 3800);
  v2 = *(v0 + 3792);
  *(v0 + 3928) = *(v0 + 3256);
  *(v0 + 3936) = *(v0 + 3264);
  *(v0 + 3952) = *(v0 + 3280);
  sub_9A3FC(v1, v2, type metadata accessor for InsightsDataManager.EntrySummaryGroup);

  v3 = *(v0 + 3776);

  return _swift_asyncLet_get(v0 + 1936, v3, sub_8BB5C, v0 + 3440);
}

uint64_t sub_8BB5C()
{
  sub_9A3FC(*(v0 + 3776), *(v0 + 3768), type metadata accessor for InsightsDataManager.Streaks);

  return _swift_asyncLet_get(v0 + 656, v0 + 3288, sub_8BBE0, v0 + 3488);
}

uint64_t sub_8BBE0()
{
  v0[495] = v0[411];
  v0[496] = v0[412];
  v0[497] = v0[413];
  v0[498] = v0[414];

  return _swift_asyncLet_get(v0 + 322, v0 + 423, sub_8BC78, v0 + 442);
}

uint64_t sub_8BC94()
{
  v14 = *(v0 + 3976);
  v15 = *(v0 + 3984);
  v12 = *(v0 + 3960);
  v13 = *(v0 + 3968);
  v1 = *(v0 + 3952);
  v2 = *(v0 + 3944);
  v9 = *(v0 + 3928);
  v10 = *(v0 + 3792);
  v11 = *(v0 + 3768);
  v3 = *(v0 + 3672);
  v16 = *(v0 + 3384);
  swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v9;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  *(v0 + 3432) = v3;

  sub_C3F34();

  swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v10;
  *(v0 + 3480) = v3;
  sub_C3F34();

  sub_A19B0(v10, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
  sub_B2DA4(v11);
  swift_getKeyPath();
  v6 = swift_task_alloc();
  v6[2] = v3;
  v6[3] = v12;
  v6[4] = v13;
  v6[5] = v14;
  v6[6] = v15;
  *(v0 + 3528) = v3;
  sub_C3F34();

  swift_getKeyPath();
  v7 = swift_task_alloc();
  *(v7 + 16) = v3;
  *(v7 + 24) = v16;
  *(v0 + 3576) = v3;
  sub_C3F34();

  return _swift_asyncLet_finish(v0 + 656, v0 + 3288, sub_8BFA8, v0 + 3584);
}

uint64_t sub_8BFC4()
{
  v1 = *(v0 + 3800);

  sub_A19B0(v1, type metadata accessor for InsightsDataManager.EntrySummaryGroup);

  return _swift_asyncLet_finish(v0 + 2576, v0 + 3384, sub_8C050, v0 + 3632);
}

uint64_t sub_8C0A8()
{

  v1 = *(v0 + 3776);

  return _swift_asyncLet_finish(v0 + 1936, v1, sub_8C114, v0 + 3728);
}

uint64_t sub_8C130()
{

  v1 = *(v0 + 3808);

  return _swift_asyncLet_finish(v0 + 1296, v1, sub_8C19C, v0 + 3216);
}

uint64_t sub_8C1B8()
{
  v1 = v0[481];
  v2 = v0[480];
  v3 = v0[479];
  v4 = v0[478];
  v5 = v0[459];

  sub_8C2F0(v1, v5);
  v6 = *(v3 + 8);
  v6(v1, v4);
  v6(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_8C2F0(uint64_t a1, uint64_t a2)
{
  Update = type metadata accessor for InsightsDataManager.LastUpdate(0);
  v4 = Update - 8;
  __chkstk_darwin(Update);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_C3CB4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_C3C74();
  sub_C3B64();
  v12 = v11;
  (*(v8 + 16))(v6, v10, v7);
  v13 = *(a2 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager_options);

  v14 = sub_A15DC(&off_F0A68, v13);
  *&v6[*(v4 + 28)] = v12;
  *&v6[*(v4 + 32)] = v14;
  swift_getKeyPath();
  v21 = a2;
  v22 = v6;
  v23 = a2;
  sub_9A060(&qword_108F28, type metadata accessor for InsightsDataManager, &unk_D39B8);
  sub_C3F34();

  sub_A19B0(v6, type metadata accessor for InsightsDataManager.LastUpdate);
  sub_89140();
  if (qword_1042C0 != -1)
  {
    swift_once();
  }

  v15 = sub_C4CD4();
  sub_B680(v15, qword_109040);
  v16 = sub_C4CB4();
  v17 = sub_C5A64();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = v12;
    _os_log_impl(&dword_0, v16, v17, "Insights update took %g seconds", v18, 0xCu);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_8C600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v3[9] = type metadata accessor for UniformDateBins(0);
  v3[10] = swift_task_alloc();
  v4 = sub_C3EA4();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_8C6F4, 0, 0);
}

uint64_t sub_8C6F4()
{
  *(v0 + 112) = sub_C5774();
  *(v0 + 120) = sub_C5764();
  v2 = sub_C5724();

  return _swift_task_switch(sub_8C78C, v2, v1);
}

uint64_t sub_8C78C()
{
  v1 = *(v0 + 56);

  *(v0 + 128) = *(v1 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager_options);

  return _swift_task_switch(sub_8C814, 0, 0);
}

uint64_t sub_8C814()
{
  v1 = sub_A1DE8(&off_F0A90, v0[16]);

  if (v1)
  {
    v3 = v0[9];
    v2 = v0[10];
    v4 = v0[6];
    v5 = type metadata accessor for CalendarBinningUnit(0);
    v6 = *(*(v5 - 8) + 56);
    v6(v2, 1, 1, v5);
    *(v2 + *(v3 + 20)) = 0;
    *(v2 + *(v3 + 24)) = 1;
    sub_996CC(v2, &qword_108F30, &qword_D26E8, v4);
    v7 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
    v8 = v4 + v7[5];
    *v8 = 0;
    *(v8 + 8) = 1;
    v9 = v7[6];
    v6(v2, 1, 1, v5);
    *(v2 + *(v3 + 20)) = 0;
    *(v2 + *(v3 + 24)) = 1;
    sub_996CC(v2, &qword_108F30, &qword_D26E8, v4 + v9);
    v10 = v7[7];
    v6(v2, 1, 1, v5);
    *(v2 + *(v3 + 20)) = 0;
    *(v2 + *(v3 + 24)) = 1;
    sub_996CC(v2, &qword_108F30, &qword_D26E8, v4 + v10);
    v11 = v4 + v7[8];
    *v11 = 0;
    *(v11 + 8) = 1;
    sub_C3B54();

    v12 = v0[1];

    return v12();
  }

  else
  {
    v0[17] = sub_C5764();
    v15 = sub_C5724();

    return _swift_task_switch(sub_8CA88, v15, v14);
  }
}

uint64_t sub_8CA88()
{

  *(v0 + 144) = sub_B30B8();

  return _swift_task_switch(sub_8CAFC, 0, 0);
}

uint64_t sub_8CAFC(uint64_t a1)
{
  *(v1 + 152) = sub_C5764();
  v3 = sub_C5724();

  return _swift_task_switch(sub_8CB88, v3, v2);
}

uint64_t sub_8CB88()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[7];

  swift_getKeyPath();
  v0[5] = v4;
  sub_9A060(&qword_108F28, type metadata accessor for InsightsDataManager, &unk_D39B8);
  sub_C3F44();

  v5 = OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__calendar;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_8CCFC;
  v7 = v0[18];
  v8 = v0[13];
  v9 = v0[8];
  v10 = v0[6];

  return sub_8CE9C(v10, v7, v8, v9);
}

uint64_t sub_8CCFC()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  v5 = *v0;

  (*(v3 + 8))(v2, v4);

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_8CE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = _s5MonthVMa(0);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_C5C64();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_C3EA4();
  v4[12] = v7;
  v8 = *(v7 - 8);
  v4[13] = v8;
  v4[14] = *(v8 + 64);
  v4[15] = swift_task_alloc();
  v4[16] = sub_3CB0(&qword_109138, &qword_D2C00);
  v4[17] = swift_task_alloc();
  v9 = sub_C3CB4();
  v4[18] = v9;
  v10 = *(v9 - 8);
  v4[19] = v10;
  v4[20] = *(v10 + 64);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = sub_3CB0(&qword_109140, &qword_D2C08);
  v4[24] = swift_task_alloc();
  v4[25] = sub_3CB0(&qword_109148, &qword_D2C10);
  v4[26] = swift_task_alloc();
  v4[27] = sub_3CB0(&qword_109150, &qword_D2C18);
  v4[28] = swift_task_alloc();
  v4[29] = type metadata accessor for UniformDateBins(0);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_8D1B0, 0, 0);
}

uint64_t sub_8D1B0(__n128 a1)
{
  v2 = *(v1 + 232);
  v3 = *(v1 + 240);
  v26 = *(v1 + 168);
  v29 = *(v1 + 160);
  v34 = *(v1 + 152);
  v24 = *(v1 + 144);
  v25 = *(v1 + 104);
  v27 = *(v1 + 96);
  v28 = *(v1 + 120);
  v33 = *(v1 + 88);
  v31 = *(v1 + 80);
  v32 = *(v1 + 72);
  v22 = *(v1 + 40);
  v23 = *(v1 + 32);
  v4 = *(v1 + 16);
  v30 = *(v1 + 24);
  v5 = type metadata accessor for CalendarBinningUnit(0);
  v6 = *(*(v5 - 8) + 56);
  v6(v3, 1, 1, v5);
  *(v3 + *(v2 + 20)) = 0;
  *(v3 + *(v2 + 24)) = 1;
  sub_996CC(v3, &qword_108F30, &qword_D26E8, v4);
  v7 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
  v8 = v4 + v7[5];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v7[6];
  *(v1 + 288) = v9;
  v6(v3, 1, 1, v5);
  *(v3 + *(v2 + 20)) = 0;
  *(v3 + *(v2 + 24)) = 1;
  sub_996CC(v3, &qword_108F30, &qword_D26E8, v4 + v9);
  v10 = v7[7];
  *(v1 + 292) = v10;
  v6(v3, 1, 1, v5);
  *(v3 + *(v2 + 20)) = 0;
  *(v3 + *(v2 + 24)) = 1;
  sub_996CC(v3, &qword_108F30, &qword_D26E8, v4 + v10);
  v11 = v4 + v7[8];
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v1 + 296) = v7[9];
  sub_C3B54();
  (*(v34 + 16))(v26, v22, v24);
  (*(v25 + 16))(v28, v23, v27);
  v12 = (*(v34 + 80) + 24) & ~*(v34 + 80);
  v13 = (v29 + *(v25 + 80) + v12) & ~*(v25 + 80);
  v14 = swift_allocObject();
  *(v1 + 248) = v14;
  *(v14 + 16) = v30;
  v15 = *(v34 + 32);
  *(v1 + 256) = v15;
  *(v1 + 264) = (v34 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v15(v14 + v12, v26, v24);
  (*(v25 + 32))(v14 + v13, v28, v27);
  (*(v31 + 104))(v33, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v32);
  v16 = v30;
  v17 = swift_task_alloc();
  *(v1 + 272) = v17;
  *v17 = v1;
  v17[1] = sub_8D540;
  v19 = *(v1 + 128);
  v18 = *(v1 + 136);
  v20 = *(v1 + 88);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v18, v20, sub_A6470, v14, v19);
}

uint64_t sub_8D540()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 280) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_8DD38;
  }

  else
  {
    v5 = sub_8D6D4;
  }

  return _swift_task_switch(v5, 0, 0);
}

void *sub_8D6D4()
{
  v75 = v0[32];
  v1 = v0[28];
  v72 = v0[27];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[22];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];
  v8 = v7[12];
  v9 = v7[16];
  v10 = v7[20];
  sub_E9D4(v6, v1, &qword_109150, &qword_D2C18);
  sub_E9D4(v6 + v8, v2, &qword_109148, &qword_D2C10);
  sub_E9D4(v6 + v9, v3, &qword_109140, &qword_D2C08);
  v75(v4, v6 + v10, v5);
  v11 = *(v1 + *(v72 + 32));
  sub_3CB0(&qword_109158, qword_D2C20);
  result = sub_C60F4();
  v13 = result;
  v14 = 0;
  v15 = 1 << *(v11 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v11 + 64);
  v18 = (v15 + 63) >> 6;
  for (i = result + 8; v17; v13[2] = v30)
  {
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v21 = v20 | (v14 << 6);
LABEL_10:
    v24 = *(*(v11 + 48) + 8 * v21);
    v25 = *(*(v11 + 56) + 8 * v21);
    v26 = (v21 >> 3) & 0x1FFFFFFFFFFFFFF8;
    result = (*(i + v26) | (1 << v21));
    *(i + v26) = result;
    *(v13[6] + 8 * v21) = v24;
    v27 = (v13[7] + 32 * v21);
    *v27 = 1;
    v27[1] = v25;
    v27[2] = _swiftEmptyArrayStorage;
    v27[3] = _swiftEmptyArrayStorage;
    v28 = v13[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }
  }

  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (v14 >= v18)
    {
      break;
    }

    v23 = *(v11 + 64 + 8 * v14);
    ++v22;
    if (v23)
    {
      v17 = (v23 - 1) & v23;
      v21 = __clz(__rbit64(v23)) | (v14 << 6);
      goto LABEL_10;
    }
  }

  v31 = *(v79 + 224);
  v33 = *(v79 + 200);
  v32 = *(v79 + 208);
  v77 = *(v79 + 56);
  v34 = *(v79 + 16);
  v35 = *(*(v79 + 216) + 28);
  sub_C060(v34, &qword_108F30, &qword_D26E8);
  sub_9A3FC(v31, v34, type metadata accessor for UniformDateBins);
  v36 = sub_3CB0(&qword_108F30, &qword_D26E8);
  sub_B954(v31 + v35, v34 + *(v36 + 28), &qword_108F48, &unk_D3430);
  v69 = v36;
  *(v34 + *(v36 + 32)) = v13;
  v37 = *(v32 + *(v33 + 32));
  result = sub_C60F4();
  v38 = 0;
  v39 = 1 << *(v37 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v37 + 64;
  v42 = v40 & *(v37 + 64);
  v43 = (v39 + 63) >> 6;
  v70 = result + 8;
  v73 = v37;
  if (!v42)
  {
LABEL_17:
    v46 = v38;
    while (1)
    {
      v38 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_29;
      }

      if (v38 >= v43)
      {
        v78 = *(v79 + 296);
        v71 = *(v79 + 224);
        v56 = *(v79 + 208);
        v57 = *(v79 + 184);
        v58 = *(v79 + 192);
        v76 = *(v79 + 176);
        v68 = *(v79 + 152);
        v74 = *(v79 + 144);
        v67 = *(v79 + 16);
        v59 = v67 + *(v79 + 292);
        v60 = v67 + *(v79 + 288);
        v61 = *(*(v79 + 200) + 28);
        v62 = result;
        sub_C060(v60, &qword_108F30, &qword_D26E8);
        sub_9A3FC(v56, v60, type metadata accessor for UniformDateBins);
        sub_B954(v56 + v61, v60 + *(v69 + 28), &qword_108F48, &unk_D3430);
        *(v60 + *(v69 + 32)) = v62;
        v63 = swift_task_alloc();
        *(v63 + 16) = v56;
        v64 = *(v57 + 28);
        v65 = sub_A211C(sub_A6544, v63, *(v58 + *(v57 + 32)));

        sub_C060(v59, &qword_108F30, &qword_D26E8);
        sub_9A3FC(v58, v59, type metadata accessor for UniformDateBins);
        sub_B954(v58 + v64, v59 + *(v69 + 28), &qword_108F48, &unk_D3430);
        *(v59 + *(v69 + 32)) = v65;
        sub_C060(v58, &qword_109140, &qword_D2C08);
        sub_C060(v71, &qword_109150, &qword_D2C18);
        (*(v68 + 40))(v67 + v78, v76, v74);
        sub_C060(v56, &qword_109148, &qword_D2C10);

        v66 = *(v79 + 8);

        return v66();
      }

      v47 = *(v41 + 8 * v38);
      ++v46;
      if (v47)
      {
        v44 = result;
        v45 = __clz(__rbit64(v47));
        v42 = (v47 - 1) & v47;
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v44 = result;
    v45 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
LABEL_22:
    v48 = v45 | (v38 << 6);
    v49 = *(v79 + 64);
    v50 = *(*(v73 + 48) + 8 * v48);
    sub_9A3FC(*(v73 + 56) + *(v77 + 72) * v48, v49, _s5MonthVMa);
    v51 = sub_C3EB4();
    v52 = *v49;
    result = sub_A19B0(v49, _s5MonthVMa);
    *(v70 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
    *(v44[6] + 8 * v48) = v50;
    v53 = (v44[7] + 32 * v48);
    *v53 = v51;
    v53[1] = v52;
    v53[2] = _swiftEmptyArrayStorage;
    v53[3] = _swiftEmptyArrayStorage;
    v54 = v44[2];
    v29 = __OFADD__(v54, 1);
    v55 = v54 + 1;
    if (v29)
    {
      break;
    }

    result = v44;
    v44[2] = v55;
    if (!v42)
    {
      goto LABEL_17;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_8DD38()
{
  if (qword_1042C0 != -1)
  {
    swift_once();
  }

  v1 = sub_C4CD4();
  sub_B680(v1, qword_109040);
  swift_errorRetain();
  v2 = sub_C4CB4();
  v3 = sub_C5A44();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "Failed to fetch entries by entry date: %@", v4, 0xCu);
    sub_C060(v5, &qword_1050F0, &unk_CF5A0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_8DF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_8DF80, 0, 0);
}

uint64_t sub_8DF80()
{
  *(v0 + 40) = sub_C5774();
  *(v0 + 48) = sub_C5764();
  v2 = sub_C5724();

  return _swift_task_switch(sub_8E018, v2, v1);
}

uint64_t sub_8E018()
{
  v1 = *(v0 + 24);

  *(v0 + 56) = *(v1 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager_options);

  return _swift_task_switch(sub_8E0A0, 0, 0);
}

uint64_t sub_8E0A0()
{
  v1 = sub_87DF4(3u, v0[7]);

  if (v1)
  {
    v0[8] = sub_C5764();
    v3 = sub_C5724();

    return _swift_task_switch(sub_8E468, v3, v2);
  }

  else
  {
    v4 = v0[2];
    v5 = sub_C3CB4();
    v6 = *(*(v5 - 8) + 56);
    v6(v4, 1, 1, v5);
    v7 = type metadata accessor for StreakSummary(0);
    v6(v4 + v7[5], 1, 1, v5);
    v6(v4 + v7[6], 1, 1, v5);
    *(v4 + v7[7]) = 0;
    v8 = type metadata accessor for InsightsDataManager.Streaks(0);
    v9 = v4 + v8[5];
    v6(v9, 1, 1, v5);
    v6(v9 + v7[5], 1, 1, v5);
    v6(v9 + v7[6], 1, 1, v5);
    *(v9 + v7[7]) = 0;
    v10 = v4 + v8[6];
    v6(v10, 1, 1, v5);
    v6(v10 + v7[5], 1, 1, v5);
    v6(v10 + v7[6], 1, 1, v5);
    *(v10 + v7[7]) = 0;
    v11 = v4 + v8[7];
    v6(v11, 1, 1, v5);
    v6(v11 + v7[5], 1, 1, v5);
    v6(v11 + v7[6], 1, 1, v5);
    *(v11 + v7[7]) = 0;
    v12 = v4 + v8[8];
    v6(v12, 1, 1, v5);
    v6(v12 + v7[5], 1, 1, v5);
    v6(v12 + v7[6], 1, 1, v5);
    *(v12 + v7[7]) = 0;
    v13 = v4 + v8[9];
    v6(v13, 1, 1, v5);
    v6(v13 + v7[5], 1, 1, v5);
    v6(v13 + v7[6], 1, 1, v5);
    *(v13 + v7[7]) = 0;
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_8E468()
{

  v1 = sub_B30B8();
  v0[9] = v1;
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_8E51C;
  v3 = v0[4];
  v4 = v0[2];

  return sub_8E62C(v4, v1, v3);
}

uint64_t sub_8E51C()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_8E62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_C5C64();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_C3EA4();
  v3[11] = v5;
  v6 = *(v5 - 8);
  v3[12] = v6;
  v3[13] = *(v6 + 64);
  v3[14] = swift_task_alloc();
  v7 = sub_C3CB4();
  v3[15] = v7;
  v8 = *(v7 - 8);
  v3[16] = v8;
  v3[17] = *(v8 + 64);
  v3[18] = swift_task_alloc();
  sub_3CB0(&qword_109108, &qword_D2B70);
  v3[19] = swift_task_alloc();
  sub_3CB0(&qword_109110, qword_D2B78);
  v3[20] = swift_task_alloc();
  v9 = sub_C36C4();
  v3[21] = v9;
  v10 = *(v9 - 8);
  v3[22] = v10;
  v3[23] = *(v10 + 64);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_8E8B0, 0, 0);
}

uint64_t sub_8E8B0()
{
  if (qword_104250 != -1)
  {
    swift_once();
  }

  v38 = v0[27];
  v24 = v0[26];
  v42 = v0[25];
  v43 = v0[24];
  v31 = v0[23];
  v1 = v0[20];
  v37 = v0[21];
  v2 = v0[19];
  v39 = v0[18];
  v28 = v0[22];
  v29 = v0[17];
  v27 = v0[16];
  v40 = v0[14];
  v41 = v0[15];
  v3 = v0[12];
  v30 = v0[13];
  v36 = v3;
  v4 = v0[11];
  v33 = v0[9];
  v34 = v0[8];
  v35 = v0[10];
  v26 = v0[7];
  v32 = v0[6];
  v25 = sub_B680(v4, qword_115548);
  v5 = *(v3 + 56);
  v5(v1, 1, 1, v4);
  v6 = sub_C3F24();
  v7 = *(*(v6 - 8) + 56);
  v7(v2, 1, 1, v6);
  sub_C36B4();
  v5(v1, 1, 1, v4);
  v7(v2, 1, 1, v6);
  sub_C36B4();
  type metadata accessor for InsightsDataManager.Streaks(0);
  v23 = swift_allocBox();
  v0[28] = v23;
  v0[29] = v8;
  sub_B280C(v8);
  (*(v27 + 16))(v39, v26, v41);
  (*(v3 + 16))(v40, v25, v4);
  v9 = *(v28 + 16);
  v9(v42, v38, v37);
  v9(v43, v24, v37);
  v10 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v11 = (v29 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (*(v36 + 80) + v11 + 8) & ~*(v36 + 80);
  v13 = (v30 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v28 + 80);
  v15 = (v14 + v13 + 8) & ~v14;
  v16 = (v31 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  v0[30] = v17;
  (*(v27 + 32))(v17 + v10, v39, v41);
  *(v17 + v11) = v32;
  (*(v36 + 32))(v17 + v12, v40, v4);
  *(v17 + v13) = v23;
  v18 = *(v28 + 32);
  v18(v17 + v15, v42, v37);
  v18(v17 + v16, v43, v37);
  (*(v33 + 104))(v35, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v34);
  v19 = v32;

  v20 = swift_task_alloc();
  v0[31] = v20;
  *v20 = v0;
  v20[1] = sub_8EDB8;
  v21 = v0[10];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v20, v21, sub_A60F8, v17, &type metadata for () + 8);
}

uint64_t sub_8EDB8()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(*v1 + 256) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_8F0A4;
  }

  else
  {
    v5 = sub_8EF4C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_8EF4C()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[21];
  v4 = v0[5];
  v5 = *(v0[22] + 8);
  v5(v0[26], v3);
  v5(v2, v3);
  swift_beginAccess();
  sub_9A3FC(v1, v4, type metadata accessor for InsightsDataManager.Streaks);

  v6 = v0[1];

  return v6();
}

uint64_t sub_8F0A4()
{
  if (qword_1042C0 != -1)
  {
    swift_once();
  }

  v1 = sub_C4CD4();
  sub_B680(v1, qword_109040);
  swift_errorRetain();
  v2 = sub_C4CB4();
  v3 = sub_C5A44();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "Failed to fetch events for streaks: %@", v4, 0xCu);
    sub_C060(v5, &qword_1050F0, &unk_CF5A0);
  }

  v7 = v0[29];
  v8 = v0[27];
  v9 = v0[21];
  v10 = v0[5];
  v11 = *(v0[22] + 8);
  v11(v0[26], v9);
  v11(v8, v9);
  swift_beginAccess();
  sub_9A3FC(v7, v10, type metadata accessor for InsightsDataManager.Streaks);

  v12 = v0[1];

  return v12();
}

uint64_t sub_8F328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_C3EA4();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_8F3EC, 0, 0);
}

uint64_t sub_8F3EC()
{
  *(v0 + 96) = sub_C5774();
  *(v0 + 104) = sub_C5764();
  v2 = sub_C5724();

  return _swift_task_switch(sub_8F484, v2, v1);
}

uint64_t sub_8F484()
{
  v1 = *(v0 + 56);

  *(v0 + 112) = *(v1 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager_options);

  return _swift_task_switch(sub_8F50C, 0, 0);
}

uint64_t sub_8F50C()
{
  v1 = sub_87DF4(2u, v0[14]);

  if (v1)
  {
    v0[15] = sub_C5764();
    v3 = sub_C5724();

    return _swift_task_switch(sub_8F608, v3, v2);
  }

  else
  {
    v4 = v0[6];
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = _swiftEmptyArrayStorage;

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_8F608()
{

  *(v0 + 128) = sub_8FA80();

  return _swift_task_switch(sub_8F67C, 0, 0);
}