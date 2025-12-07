uint64_t sub_100054E4C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100005740(&qword_1000A6920, &qword_10008D888);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  v62 = 1;
  v59 = 1;
  v9 = a1[3];
  v38 = a1;
  sub_10000626C(a1, v9);
  sub_1000554E0();
  sub_100085A68();
  if (v2)
  {
    v63 = v2;
    v37 = 0;
    sub_100006304(v38);
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = v62;
    *v53 = *v61;
    *&v53[3] = *&v61[3];
    v54 = v37;
    v55 = 2;
    *v56 = *v60;
    *&v56[3] = *&v60[3];
    v57 = 0;
    v58 = v59;
    return sub_100053DF0(&v45);
  }

  else
  {
    LOBYTE(v39) = 0;
    sub_100055534();
    sub_1000857D8();
    v36 = v45;
    v34 = v46;
    v35 = v47;
    LOBYTE(v39) = 1;
    sub_1000857D8();
    v37 = a2;
    v12 = v45;
    v11 = v46;
    v13 = v47;
    LOBYTE(v45) = 2;
    v32 = sub_1000857C8();
    v30 = v12;
    v31 = v11;
    v33 = v13;
    v62 = v14 & 1;
    sub_100005740(&qword_1000A6938, &qword_10008D890);
    LOBYTE(v39) = 3;
    sub_100055588(&qword_1000A6940, &qword_1000A6948, &unk_10008D7F0, &protocol conformance descriptor for <A> [A]);
    sub_1000857D8();
    v15 = v45;
    LOBYTE(v45) = 4;
    HIDWORD(v29) = sub_1000857A8();
    v16 = v15;
    v44 = 5;
    v17 = sub_1000857C8();
    v63 = 0;
    v19 = v18;
    v20 = v17;
    (*(v6 + 8))(v8, v5);
    v19 &= 1u;
    v59 = v19;
    *&v39 = v36;
    v21 = v34;
    *(&v39 + 1) = v34;
    v22 = v35;
    *&v40 = v35;
    v23 = v30;
    *(&v40 + 1) = v30;
    v24 = v31;
    *&v41 = v31;
    *(&v41 + 1) = v33;
    *&v42 = v32;
    v25 = v62;
    BYTE8(v42) = v62;
    *v43 = v15;
    LOBYTE(v15) = BYTE4(v29);
    v43[8] = BYTE4(v29);
    *&v43[16] = v20;
    v43[24] = v19;
    sub_100053E20(&v39, &v45);
    sub_100006304(v38);
    v45 = v36;
    v46 = v21;
    v47 = v22;
    v48 = v23;
    v49 = v24;
    v50 = v33;
    v51 = v32;
    v52 = v25;
    v54 = v16;
    v55 = v15;
    v57 = v20;
    v58 = v19;
    result = sub_100053DF0(&v45);
    v26 = v42;
    v27 = v37;
    v37[2] = v41;
    v27[3] = v26;
    v27[4] = *v43;
    *(v27 + 73) = *&v43[9];
    v28 = v40;
    *v27 = v39;
    v27[1] = v28;
  }

  return result;
}

unint64_t sub_1000554E0()
{
  result = qword_1000A6928;
  if (!qword_1000A6928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6928);
  }

  return result;
}

unint64_t sub_100055534()
{
  result = qword_1000A6930;
  if (!qword_1000A6930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6930);
  }

  return result;
}

uint64_t sub_100055588(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100011888(&qword_1000A6938, &qword_10008D890);
    sub_100054AF8(a2, _s14AudioRecordingV8FragmentVMa, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100055624()
{
  result = qword_1000A6958;
  if (!qword_1000A6958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6958);
  }

  return result;
}

uint64_t sub_10005569C(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_100055730(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000557F4()
{
  result = qword_1000A6970;
  if (!qword_1000A6970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6970);
  }

  return result;
}

unint64_t sub_10005584C()
{
  result = qword_1000A6978;
  if (!qword_1000A6978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6978);
  }

  return result;
}

unint64_t sub_1000558A4()
{
  result = qword_1000A6980;
  if (!qword_1000A6980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6980);
  }

  return result;
}

unint64_t sub_1000558FC()
{
  result = qword_1000A6988;
  if (!qword_1000A6988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6988);
  }

  return result;
}

unint64_t sub_100055954()
{
  result = qword_1000A6990;
  if (!qword_1000A6990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6990);
  }

  return result;
}

unint64_t sub_1000559AC()
{
  result = qword_1000A6998;
  if (!qword_1000A6998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6998);
  }

  return result;
}

unint64_t sub_100055A04()
{
  result = qword_1000A69A0;
  if (!qword_1000A69A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A69A0);
  }

  return result;
}

unint64_t sub_100055A5C()
{
  result = qword_1000A69A8;
  if (!qword_1000A69A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A69A8);
  }

  return result;
}

unint64_t sub_100055AB4()
{
  result = qword_1000A69B0;
  if (!qword_1000A69B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A69B0);
  }

  return result;
}

uint64_t sub_100055B08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_100085948() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074 || (sub_100085948() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697263736E617274 && a2 == 0xEA00000000007470 || (sub_100085948() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000871B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_100085948();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100055C88(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_100085948() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_100085948() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_100085948() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72656B61657073 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_100085948();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100055E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100084918();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  sub_1000848F8();
  v11(v10, a3, a4);
  return (*(v8 + 8))(v10, v7);
}

id sub_100055F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v85 = a3;
  v4 = v3;
  v6 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  __chkstk_darwin(v6 - 8);
  v83 = &v74 - v7;
  v8 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v9 = __chkstk_darwin(v8 - 8);
  v82 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v74 - v11;
  v13 = sub_1000848B8();
  v81 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v74 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v74 - v21;
  __chkstk_darwin(v20);
  v24 = &v74 - v23;
  ObjectType = swift_getObjectType();
  v26 = v84;
  v27 = (*(a2 + 40))(v4[1], v4[2], v85, ObjectType, a2);
  v28 = v27;
  if (!v26)
  {
    v76 = v22;
    v77 = v24;
    v29 = v81;
    v78 = v16;
    v79 = 0;
    v84 = v27;
    v30 = v4[9];
    v75 = v19;
    if (v30)
    {
      v31 = sub_100085068();
    }

    else
    {
      v31 = 0;
    }

    v32 = v29;
    [v84 setTypeUTI:v31];

    v33 = type metadata accessor for ICAttachmentArchiveModel(0);
    sub_100005888(v4 + v33[12], v12, &qword_1000A5490, &qword_10008CD80);
    v34 = *(v29 + 48);
    v35 = v13;
    v36 = v34(v12, 1, v13);
    v80 = v4;
    if (v36 == 1)
    {
      v37 = v76;
      sub_1000848A8();
      v38 = v34(v12, 1, v35) == 1;
      v39 = v12;
      v40 = v77;
      v41 = v34;
      if (!v38)
      {
        sub_1000058F0(v39, &qword_1000A5490, &qword_10008CD80);
      }
    }

    else
    {
      v37 = v76;
      (*(v32 + 32))(v76, v12, v35);
      v40 = v77;
      v41 = v34;
    }

    sub_100084858();
    v42 = *(v32 + 8);
    v42(v37, v35);
    v43.super.isa = sub_100084848().super.isa;
    v44 = v40;
    isa = v43.super.isa;
    v42(v44, v35);
    [v84 setCreationDate:isa];

    v46 = v82;
    sub_100005888(v80 + v33[13], v82, &qword_1000A5490, &qword_10008CD80);
    if (v41(v46, 1, v35) == 1)
    {
      v47 = v78;
      sub_1000848A8();
      v48 = v41(v46, 1, v35);
      v49 = v83;
      if (v48 != 1)
      {
        sub_1000058F0(v46, &qword_1000A5490, &qword_10008CD80);
      }
    }

    else
    {
      v47 = v78;
      (*(v32 + 32))(v78, v46, v35);
      v49 = v83;
    }

    v50 = v75;
    sub_100084858();
    v42(v47, v35);
    v51 = sub_100084848().super.isa;
    v42(v50, v35);
    v28 = v84;
    [v84 setModificationDate:v51];

    v52 = v80;
    if (*(v80 + v33[15] + 8))
    {
      v53 = sub_100085068();
    }

    else
    {
      v53 = 0;
    }

    [v28 setTitle:v53];

    v54 = v52 + v33[16];
    v55 = 0.0;
    v56 = 0.0;
    v57 = 0.0;
    v58 = 0.0;
    if ((*(v54 + 32) & 1) == 0)
    {
      v57 = *(v54 + 16);
      v58 = *(v54 + 24);
      v55 = *v54;
      v56 = *(v54 + 8);
    }

    [v28 setBounds:{v55, v56, v57, v58}];
    v59 = v52 + v33[17];
    if ((*(v59 + 64) & 1) == 0)
    {
      v61 = *(v59 + 48);
      v60 = *(v59 + 56);
      v63 = *(v59 + 32);
      v62 = *(v59 + 40);
      v65 = *(v59 + 16);
      v64 = *(v59 + 24);
      v66 = *(v59 + 8);
      [v28 setCroppingQuadTopLeftX:*v59];
      [v28 setCroppingQuadTopLeftY:v66];
      [v28 setCroppingQuadTopRightX:v65];
      [v28 setCroppingQuadTopRightY:v64];
      [v28 setCroppingQuadBottomRightX:v63];
      [v28 setCroppingQuadBottomRightY:v62];
      [v28 setCroppingQuadBottomLeftX:v61];
      [v28 setCroppingQuadBottomLeftY:v60];
    }

    [v28 setOrientation:word_10008E3D6[*(v52 + v33[18])]];
    [v28 setImageFilterType:word_10008E3E0[*(v52 + v33[19])]];
    sub_100005888(v52 + v33[20], v49, &qword_1000A56E8, &qword_10008D350);
    v67 = sub_1000847C8();
    v68 = *(v67 - 8);
    if ((*(v68 + 48))(v49, 1, v67) == 1)
    {
      sub_1000058F0(v49, &qword_1000A56E8, &qword_10008D350);
      v69 = 0;
    }

    else
    {
      sub_1000846A8();
      (*(v68 + 8))(v49, v67);
      v28 = v84;
      v69 = sub_100085068();
    }

    [v28 setUrlString:v69];

    if (*(v52 + v33[21] + 8) >> 60 == 15)
    {
      v70 = 0;
    }

    else
    {
      v70 = sub_1000847F8().super.isa;
    }

    [v28 setSynapseData:v70];

    v71 = *(v52 + v33[27]);
    if (v71 <= 1)
    {
      v72 = v71 != 0;
LABEL_30:
      [v28 setPreferredViewSize:v72];
      return v28;
    }

    if (v71 == 2)
    {
      v72 = 2;
      goto LABEL_30;
    }
  }

  return v28;
}

void sub_100056734(void *a1, __objc2_class_ro *a2, uint64_t a3, char *a4, __objc2_class_ro *a5, void (*a6)(char *, uint64_t))
{
  v153 = a6;
  v147 = a5;
  v149 = a4;
  v148 = a2;
  v151 = sub_1000847C8();
  v150 = *(v151 - 8);
  v8 = __chkstk_darwin(v151);
  v10 = &v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v139 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v139 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v139 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v139 - v21;
  __chkstk_darwin(v20);
  v24 = &v139 - v23;
  v25 = [a1 attachmentModel];
  objc_opt_self();
  v155 = swift_dynamicCastObjCClass();
  if (!v155)
  {
    v142 = v22;
    v143 = v16;
    v140 = v13;
    v144 = a1;
    v139 = v10;
    v146 = v24;
    v145 = v19;
    v40 = v150;
    objc_opt_self();
    v155 = swift_dynamicCastObjCClass();
    if (v155)
    {
      v41 = *(&v152->ivar_base_size + *(type metadata accessor for ICAttachmentArchiveModel(0) + 56));
      v141 = v25;
      v42 = v25;
      if (v41 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        isa = sub_1000847F8().super.isa;
      }

      v82 = v151;
      v83 = v142;
      [v144 setMergeableData:isa];

      v84 = v155;
      v85 = [v155 paperBundleDatabaseSubdirectoryURL];
      sub_100084768();

      sub_1000846E8();
      v86 = *&v40->ivar_base_size;
      v86(v83, v82);
      sub_100084718();

      v87 = [v84 paperBundleAssetsSubdirectoryURL];
      sub_100084768();

      sub_1000846E8();
      v153 = v86;
      v86(v83, v82);
      v88 = v84;
      sub_100084718();

      swift_getObjectType();
      v89 = [v84 paperBundleURL];
      v90 = v143;
      sub_100084768();

      v91 = v154;
      sub_1000849C8();
      if (v91)
      {
        v92 = v151;
        v93 = v153;
        v97 = v141;
        v153(v90, v151);
        v93(v145, v92);
        v93(v146, v92);
        if (qword_1000A5430 != -1)
        {
          swift_once();
        }

        v98 = sub_100084FB8();
        sub_10000B614(v98, qword_1000A69B8);
        swift_errorRetain();
        v99 = sub_100084FA8();
        v100 = sub_100085378();

        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          v162 = v102;
          *v101 = 136315138;
          swift_getErrorValue();
          v103 = sub_100085988();
          v105 = sub_100038A4C(v103, v104, &v162);

          *(v101 + 4) = v105;
          _os_log_impl(&_mh_execute_header, v99, v100, "Cannot import paper attachment database and assets — skipping {error: %s}", v101, 0xCu);
          sub_100006304(v102);
        }

        else
        {
        }
      }

      else
      {
        v94 = v153;
        v153(v90, v151);
        v95 = [v88 paperBundleDatabaseSubdirectoryURL];
        v96 = v140;
        sub_100084768();

        sub_100084A18();
        v94(v96, v151);
        v127 = [v88 paperBundleAssetsSubdirectoryURL];
        sub_100084768();

        sub_100084A18();
        v138 = v151;
        v94(v139, v151);
        v94(v145, v138);
        v94(v146, v138);
      }

      return;
    }

    objc_opt_self();
    v66 = swift_dynamicCastObjCClass();
    if (!v66)
    {
      v120 = v154;
      objc_opt_self();
      v121 = swift_dynamicCastObjCClass();
      if (!v121)
      {

        if (*(&v152->ivar_base_size + *(type metadata accessor for ICAttachmentArchiveModel(0) + 56)) >> 60 != 15)
        {
          v121 = sub_1000847F8().super.isa;
        }

        v134 = v144;
        [v144 setMergeableData:v121];

        [v134 attachmentModel];
        return;
      }

      v51 = v25;
      v54 = v121;
      v122 = [(__objc2_class_ro *)v121 audioDocument];
      if (v122)
      {
        v123 = v122;
        v25 = [v122 document];

        v124 = v152 + *(type metadata accessor for ICAttachmentArchiveModel(0) + 112);
        v125 = *(v124 + 1);
        if (v125 == 1)
        {
          v126 = 0;
        }

        else
        {
          v156 = *v124;
          v157 = v125;
          v135 = *(v124 + 4);
          v160 = *(v124 + 3);
          *v161 = v135;
          *&v161[9] = *(v124 + 73);
          v136 = *(v124 + 1);
          v159 = *(v124 + 2);
          v158 = v136;
          v137 = [(__objc2_class_ro *)v121 audioDocument];
          if (!v137)
          {
LABEL_121:
            __break(1u);
            return;
          }

          v16 = v137;
          v52 = sub_100051DE8(v137, v144, &off_10009EA20, a3, v153);
          if (v120)
          {

            return;
          }

LABEL_106:
          v126 = v52;
        }

        [(__objc2_class_ro *)v25 setRootObject:v126];

        swift_unknownObjectRelease();
        [(__objc2_class_ro *)v54 writeMergeableData];

        return;
      }

LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    v67 = v66;
    v68 = type metadata accessor for ICAttachmentArchiveModel(0);
    v69 = *(&v152->flags + *(v68 + 92));
    if (!v69)
    {
      return;
    }

    v145 = v68;
    v147 = v25;
    v70 = [v67 table];
    v71 = [v70 rowCount];

    if ((v71 & 0x8000000000000000) != 0)
    {
LABEL_116:
      __break(1u);
    }

    else
    {
      for (; v71; --v71)
      {
        v72 = [v67 table];
        [v72 removeRowAtIndex:0];
      }

      v73 = [v67 table];
      v74 = [v73 columnCount];

      if ((v74 & 0x8000000000000000) == 0)
      {
        for (; v74; --v74)
        {
          v75 = [v67 table];
          [v75 removeColumnAtIndex:0];
        }

        v76 = [v67 table];

        v77 = [v67 table];
        v78 = v77;
        v148 = *(v69 + 2);
        if (!v148)
        {

LABEL_95:
          v129 = *(&v152->flags + *(v145 + 24));
          if (v129 != 2)
          {
            v130 = v129 & 1;
            v131 = [v67 table];
            v132 = [v131 isRightToLeft];

            if (v132 != v130)
            {
              v133 = [v67 table];
              [v133 reverseColumnDirection];
            }
          }

          [v67 writeMergeableData];

          return;
        }

        v79 = *(v69 + 4);
        v149 = v69 + 32;

        v80 = 0;
        v81 = v153;
        v146 = v69;
        while (1)
        {
          if (v80 >= *(v69 + 2))
          {
            __break(1u);
            goto LABEL_116;
          }

          v106 = *(*&v149[8 * v80] + 16);

          v155 = v106;
          if (v106)
          {
            break;
          }

LABEL_80:
          v80 = (v80 + 1);

          v69 = v146;
          if (v80 == v148)
          {
            goto LABEL_95;
          }
        }

        v108 = 0;
        v29 = v107 + 48;
        v150 = v80;
        v151 = v107;
        while (1)
        {
          if (v108 >= *(v107 + 16))
          {
            goto LABEL_113;
          }

          v110 = *(v29 - 16);
          v109 = *(v29 - 8);
          v111 = *v29;

          v112 = v67;
          v113 = [v67 attachment];
          if (!v113)
          {
            goto LABEL_118;
          }

          v114 = v113;
          v115 = sub_10003E764(_swiftEmptyArrayStorage);
          v116 = v154;
          v117 = sub_10001FFC0(v115, v114, &off_10009EA20, v81, v110, v109, v111);
          if (v116)
          {

            v128 = v147;

            return;
          }

          v118 = v117;
          v154 = 0;

          v67 = v112;
          v119 = [v112 table];
          v80 = v150;
          [v119 setAttributedString:v118 columnIndex:v108 rowIndex:v150];

          v29 += 24;
          ++v108;
          v81 = v153;
          v107 = v151;
          if (v155 == v108)
          {
            goto LABEL_80;
          }
        }
      }
    }

    __break(1u);
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v26 = v25;
  v27 = [a1 managedObjectContext];
  if (!v27)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v153 = v27;
  v28 = *(&v152->flags + *(type metadata accessor for ICAttachmentArchiveModel(0) + 100));
  v29 = _swiftEmptyArrayStorage;
  v30 = v155;
  if (v28)
  {
    v162 = _swiftEmptyArrayStorage;
    v31 = *(v28 + 16);
    v151 = v26;
    if (v31)
    {
      v25 = 0;
      v32 = (v28 + 40);
      v150 = (v31 - 1);
      v33 = _swiftEmptyArrayStorage;
      v152 = (v28 + 40);
      while (1)
      {
        v34 = v32 + 16 * v25;
        v35 = v25;
        while (1)
        {
          if (v35 >= *(v28 + 16))
          {
            goto LABEL_110;
          }

          if (!*(a3 + 16))
          {
            goto LABEL_7;
          }

          v36 = *(v34 - 1);
          v16 = *v34;

          v29 = a3;
          v37 = sub_100039138(v36, v16);
          if (v38)
          {
            break;
          }

LABEL_7:
          v35 = (v35 + 1);
          v34 += 16;
          if (v31 == v35)
          {
            v26 = v151;
            goto LABEL_20;
          }
        }

        v39 = *(*(a3 + 56) + 8 * v37);

        v29 = &v162;
        sub_1000851F8();
        if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100085228();
        }

        v25 = (&v35->flags + 1);
        sub_100085258();
        v33 = v162;
        v26 = v151;
        v32 = v152;
        if (v150 == v35)
        {
LABEL_20:
          if (!(v33 >> 62))
          {
            goto LABEL_21;
          }

LABEL_60:
          v29 = sub_100085718();
          goto LABEL_22;
        }
      }
    }

    v33 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage >> 62)
    {
      goto LABEL_60;
    }

LABEL_21:
    v29 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_22:
    v152 = v26;
    if (v29)
    {
      v44 = 0;
      v25 = &ICArchiveNotesPreviewer;
      do
      {
        if ((v33 & 0xC000000000000001) != 0)
        {
          v45 = sub_100085648();
        }

        else
        {
          if (v44 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_112;
          }

          v45 = *(v33 + 8 * v44 + 32);
        }

        v46 = v45;
        v16 = (v44 + 1);
        if (__OFADD__(v44, 1))
        {
          goto LABEL_111;
        }

        [v155 addSubAttachment:v45];

        ++v44;
      }

      while (v16 != v29);
    }

    v47 = v152;

    v30 = v155;
    v26 = v151;
  }

  v152 = v26;
  [v30 writeMergeableData];
  v162 = _swiftEmptyArrayStorage;
  v48 = 1 << *(a3 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(a3 + 64);
  v51 = ((v48 + 63) >> 6);

  v53 = 0;
  v54 = &ICArchiveNotesPreviewer;
  if (v50)
  {
    goto LABEL_41;
  }

  while (1)
  {
LABEL_37:
    v55 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
      goto LABEL_106;
    }

    if (v55 >= v51)
    {
      break;
    }

    v50 = *(a3 + 64 + 8 * v55);
    ++v53;
    if (v50)
    {
      while (1)
      {
        v56 = __clz(__rbit64(v50));
        v50 &= v50 - 1;
        v25 = *(*(a3 + 56) + ((v55 << 9) | (8 * v56)));
        v57 = [(__objc2_class_ro *)v25 parentAttachment];
        if (v57)
        {
          v58 = v57;

          v53 = v55;
          if (!v50)
          {
            goto LABEL_37;
          }
        }

        else
        {
          sub_100085678();
          v16 = *(v162 + 16);
          sub_1000856A8();
          sub_1000856B8();
          v52 = sub_100085688();
          v53 = v55;
          if (!v50)
          {
            goto LABEL_37;
          }
        }

LABEL_41:
        v55 = v53;
      }
    }
  }

  v29 = v162;
  if ((v162 & 0x8000000000000000) != 0 || (v162 & 0x4000000000000000) != 0)
  {
    goto LABEL_114;
  }

  for (i = *(v162 + 16); ; i = sub_100085718())
  {
    v60 = v153;
    if (!i)
    {
      break;
    }

    v61 = 0;
    while (1)
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v62 = sub_100085648();
      }

      else
      {
        if (v61 >= *(v29 + 16))
        {
          goto LABEL_109;
        }

        v62 = *(v29 + 8 * v61 + 32);
      }

      v63 = v62;
      v64 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      [v60 deleteObject:v62];

      ++v61;
      if (v64 == i)
      {
        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    ;
  }

LABEL_57:

  v65 = v152;
}

uint64_t sub_1000578A4()
{
  v0 = sub_100084FB8();
  sub_10000B64C(v0, qword_1000A69B8);
  sub_10000B614(v0, qword_1000A69B8);
  return sub_100084F98();
}

unint64_t sub_1000578F0(char a1)
{
  result = 0x6E65644965707974;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6954746E65726170;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
    case 21:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0x6C6946616964656DLL;
      break;
    case 8:
      result = 0x4164657461657263;
      break;
    case 9:
      result = 0x6465696669646F6DLL;
      break;
    case 10:
      result = 1635017060;
      break;
    case 11:
      result = 0x656C746974;
      break;
    case 12:
      result = 0x73646E756F62;
      break;
    case 13:
      result = 0x676E6970706F7263;
      break;
    case 14:
      result = 0x7461746E6569726FLL;
      break;
    case 15:
      result = 0x6C69466567616D69;
      break;
    case 16:
      result = 7107189;
      break;
    case 17:
      result = 0x4474657070696E73;
      break;
    case 18:
      result = 0x616E6964726F6F63;
      break;
    case 19:
      result = 1937207154;
      break;
    case 20:
      result = 0x5474686769527369;
      break;
    case 22:
      result = 0x65746F75516C7275;
      break;
    case 23:
      result = 0xD000000000000011;
      break;
    case 24:
      result = 0x6365526F69647561;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100057C2C(void *a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A6BA0, &unk_10008E078);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v27 - v7;
  sub_10000626C(a1, a1[3]);
  sub_10005C8D4();
  sub_100085A78();
  LOBYTE(v35) = *v3;
  LOBYTE(v30) = 0;
  sub_100040CF8();
  sub_1000858D8();
  if (!v2)
  {
    LOBYTE(v35) = 1;
    sub_100085898();
    LOBYTE(v35) = 2;
    sub_100085848();
    LOBYTE(v35) = 3;
    sub_100085848();
    LOBYTE(v35) = 4;
    sub_100085858();
    LOBYTE(v35) = 5;
    sub_100085858();
    LOBYTE(v35) = 6;
    sub_100085848();
    LOBYTE(v35) = 7;
    sub_100085848();
    v46 = type metadata accessor for ICAttachmentArchiveModel(0);
    LOBYTE(v35) = 8;
    sub_1000848B8();
    sub_10005DEDC(&qword_1000A5630, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_100085888();
    LOBYTE(v35) = 9;
    sub_100085888();
    v9 = &v3[v46[14]];
    v10 = v9[1];
    *&v35 = *v9;
    *(&v35 + 1) = v10;
    LOBYTE(v30) = 10;
    sub_10005C928(v35, v10);
    sub_1000064B8();
    sub_100085888();
    sub_10001C19C(v35, *(&v35 + 1));
    LOBYTE(v35) = 11;
    sub_100085848();
    v11 = &v3[v46[16]];
    v12 = v11[32];
    v13 = *(v11 + 1);
    v43 = *v11;
    v44 = v13;
    v45 = v12;
    v42 = 12;
    type metadata accessor for CGRect(0);
    sub_10005DEDC(&qword_1000A6BB0, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
    sub_100085888();
    v14 = &v3[v46[17]];
    v15 = *(v14 + 3);
    v37 = *(v14 + 2);
    v38 = v15;
    v39[0] = v14[64];
    v16 = *(v14 + 1);
    v35 = *v14;
    v36 = v16;
    LOBYTE(v30) = 13;
    sub_10005C93C();
    sub_100085888();
    LOBYTE(v35) = v3[v46[18]];
    LOBYTE(v30) = 14;
    sub_10005C990();
    sub_100085888();
    LOBYTE(v35) = v3[v46[19]];
    LOBYTE(v30) = 15;
    sub_10005C9E4();
    sub_100085888();
    LOBYTE(v35) = 16;
    sub_1000847C8();
    sub_10005DEDC(&qword_1000A6180, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    sub_100085888();
    v17 = &v3[v46[21]];
    v18 = v17[1];
    *&v35 = *v17;
    *(&v35 + 1) = v18;
    LOBYTE(v30) = 17;
    sub_10005C928(v35, v18);
    sub_100085888();
    sub_10001C19C(v35, *(&v35 + 1));
    v19 = &v3[v46[22]];
    v20 = v19[16];
    v35 = *v19;
    LOBYTE(v36) = v20;
    LOBYTE(v30) = 18;
    sub_10005CA38();
    sub_100085888();
    *&v35 = *&v3[v46[23]];
    LOBYTE(v30) = 19;
    sub_100005740(&qword_1000A6A78, &unk_10008DC10);
    sub_10005CC10(&qword_1000A6BD8, sub_10005CA8C, &protocol conformance descriptor for <A> [A]);
    sub_100085888();
    LOBYTE(v35) = 20;
    sub_100085858();
    *&v35 = *&v3[v46[25]];
    LOBYTE(v30) = 21;
    sub_100005740(&qword_1000A6588, &qword_10008CE68);
    sub_100041558(&qword_1000A6590, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_100085888();
    LOBYTE(v35) = 22;
    sub_100085848();
    v41 = v3[v46[27]];
    v40 = 23;
    sub_10005CAC0();
    sub_100085888();
    v21 = &v3[v46[28]];
    v22 = v21[3];
    v23 = v21[1];
    v37 = v21[2];
    v38 = v22;
    v24 = v21[3];
    *v39 = v21[4];
    *&v39[9] = *(v21 + 73);
    v25 = v21[1];
    v35 = *v21;
    v36 = v25;
    v32 = v37;
    v33 = v24;
    v34[0] = v21[4];
    *(v34 + 9) = *(v21 + 73);
    v30 = v35;
    v31 = v23;
    v29 = 24;
    sub_100005888(&v35, v27, &qword_1000A69D0, &unk_10008DBE0);
    sub_10005CB14();
    sub_100085888();
    v27[2] = v32;
    v27[3] = v33;
    *v28 = v34[0];
    *&v28[9] = *(v34 + 9);
    v27[0] = v30;
    v27[1] = v31;
    sub_1000058F0(v27, &qword_1000A69D0, &unk_10008DBE0);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10005850C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a1;
  v78 = a2;
  v2 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  __chkstk_darwin(v2 - 8);
  v77 = v76 - v3;
  v4 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v5 = __chkstk_darwin(v4 - 8);
  v79 = v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v80 = v76 - v7;
  v8 = sub_100005740(&qword_1000A6BF8, &qword_10008E088);
  v81 = *(v8 - 8);
  v82 = v8;
  __chkstk_darwin(v8);
  v10 = v76 - v9;
  v11 = type metadata accessor for ICAttachmentArchiveModel(0);
  v12 = __chkstk_darwin(v11);
  v14 = v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 48);
  v16 = sub_1000848B8();
  v17 = *(*(v16 - 8) + 56);
  v89 = v15;
  v17(&v14[v15], 1, 1, v16);
  v88 = v11[13];
  v17(&v14[v88], 1, 1, v16);
  v18 = &v14[v11[14]];
  v91 = xmmword_10008DBD0;
  v87 = v18;
  *v18 = xmmword_10008DBD0;
  v19 = &v14[v11[17]];
  v111 = 1;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 2) = 0u;
  *(v19 + 3) = 0u;
  v19[64] = 1;
  v20 = v11[20];
  v21 = sub_1000847C8();
  v22 = *(*(v21 - 8) + 56);
  v86 = v20;
  v22(&v14[v20], 1, 1, v21);
  v85 = &v14[v11[21]];
  *v85 = v91;
  v23 = v11[28];
  *&v91 = v14;
  v24 = &v14[v23];
  *v24 = xmmword_10008B800;
  *(v24 + 1) = 0u;
  *(v24 + 2) = 0u;
  *(v24 + 3) = 0u;
  *(v24 + 4) = 0u;
  v84 = &v14[v23];
  *(v24 + 73) = 0u;
  sub_10000626C(v112, v112[3]);
  sub_10005C8D4();
  v83 = v10;
  v25 = v90;
  sub_100085A68();
  if (v25)
  {
    v90 = v25;
    sub_100006304(v112);
    swift_bridgeObjectRelease_n();
LABEL_4:

    v28 = v91;
    sub_1000058F0(v91 + v89, &qword_1000A5490, &qword_10008CD80);
    sub_1000058F0(v28 + v88, &qword_1000A5490, &qword_10008CD80);
    sub_10001C19C(*v87, *(v87 + 1));

    sub_1000058F0(v28 + v86, &qword_1000A56E8, &qword_10008D350);
    sub_10001C19C(*v85, *(v85 + 1));

    v29 = *(v84 + 3);
    v108 = *(v84 + 2);
    v109 = v29;
    v110[0] = *(v84 + 4);
    *(v110 + 9) = *(v84 + 73);
    v30 = *(v84 + 1);
    v106 = *v84;
    v107 = v30;
    return sub_1000058F0(&v106, &qword_1000A69D0, &unk_10008DBE0);
  }

  v76[5] = v16;
  v26 = v80;
  LOBYTE(v97[0]) = 0;
  sub_100041428();
  sub_100085828();
  v27 = v91;
  *v91 = v106;
  LOBYTE(v106) = 1;
  *(v27 + 8) = sub_1000857E8();
  *(v27 + 16) = v32;
  LOBYTE(v106) = 2;
  *(v27 + 24) = sub_100085798();
  *(v27 + 32) = v33;
  v76[4] = v33;
  LOBYTE(v106) = 3;
  *(v27 + 40) = sub_100085798();
  *(v27 + 48) = v34;
  v76[3] = v34;
  LOBYTE(v106) = 4;
  *(v27 + 56) = sub_1000857A8();
  LOBYTE(v106) = 5;
  *(v27 + 57) = sub_1000857A8();
  LOBYTE(v106) = 6;
  *(v27 + 64) = sub_100085798();
  *(v27 + 72) = v35;
  v76[2] = v35;
  LOBYTE(v106) = 7;
  *(v27 + 80) = sub_100085798();
  *(v27 + 88) = v36;
  v76[1] = v36;
  LOBYTE(v106) = 8;
  v76[0] = sub_10005DEDC(&qword_1000A55F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1000857D8();
  v90 = 0;
  sub_100005820(v26, v91 + v89, &qword_1000A5490, &qword_10008CD80);
  LOBYTE(v106) = 9;
  v37 = v90;
  sub_1000857D8();
  v90 = v37;
  if (v37 || (sub_100005820(v79, v91 + v88, &qword_1000A5490, &qword_10008CD80), LOBYTE(v97[0]) = 10, sub_100006350(), v38 = v90, sub_1000857D8(), (v90 = v38) != 0) || (v39 = v106, v40 = v87, sub_10001C19C(*v87, *(v87 + 1)), *v40 = v39, LOBYTE(v106) = 11, v41 = v90, v42 = sub_100085798(), v80 = v43, (v90 = v41) != 0))
  {
    (*(v81 + 8))(v83, v82);
    v80 = 0;
LABEL_9:
    sub_100006304(v112);

    goto LABEL_4;
  }

  v44 = (v91 + v11[15]);
  v45 = v80;
  *v44 = v42;
  v44[1] = v45;
  type metadata accessor for CGRect(0);
  LOBYTE(v97[0]) = 12;
  sub_10005DEDC(&qword_1000A6C00, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  v46 = v90;
  sub_1000857D8();
  v90 = v46;
  if (v46 || (v47 = v91 + v11[16], v48 = v108, v49 = v107, *v47 = v106, *(v47 + 16) = v49, *(v47 + 32) = v48, v100 = 13, sub_10005CB68(), v50 = v90, sub_1000857D8(), (v90 = v50) != 0) || (v51 = v102, v52 = v104, *(v19 + 2) = v103, *(v19 + 3) = v52, v19[64] = v105, *v19 = v101, *(v19 + 1) = v51, LOBYTE(v97[0]) = 14, sub_10005C66C(), v53 = v90, sub_1000857D8(), (v90 = v53) != 0) || (*(v91 + v11[18]) = v106, LOBYTE(v97[0]) = 15, sub_10005C760(), v54 = v90, sub_1000857D8(), (v90 = v54) != 0) || (*(v91 + v11[19]) = v106, LOBYTE(v106) = 16, sub_10005DEDC(&qword_1000A6140, &type metadata accessor for URL, &protocol conformance descriptor for URL), v55 = v90, sub_1000857D8(), (v90 = v55) != 0) || (sub_100005820(v77, v91 + v86, &qword_1000A56E8, &qword_10008D350), LOBYTE(v97[0]) = 17, v56 = v90, sub_1000857D8(), (v90 = v56) != 0) || (v57 = v106, v58 = v85, sub_10001C19C(*v85, *(v85 + 1)), *v58 = v57, LOBYTE(v97[0]) = 18, sub_10005CBBC(), v59 = v90, sub_1000857D8(), (v90 = v59) != 0) || (v60 = v91 + v11[22], v61 = v107, *v60 = v106, *(v60 + 16) = v61, sub_100005740(&qword_1000A6A78, &unk_10008DC10), LOBYTE(v97[0]) = 19, sub_10005CC10(&qword_1000A6C18, sub_10005CC88, &protocol conformance descriptor for <A> [A]), v62 = v90, sub_1000857D8(), (v90 = v62) != 0) || (*(v91 + v11[23]) = v106, LOBYTE(v106) = 20, v63 = sub_1000857A8(), v90 = 0, *(v91 + v11[24]) = v63, sub_100005740(&qword_1000A6588, &qword_10008CE68), LOBYTE(v97[0]) = 21, sub_100041558(&qword_1000A65C0, &protocol witness table for String, &protocol conformance descriptor for <A> [A]), v64 = v90, sub_1000857D8(), (v90 = v64) != 0) || (*(v91 + v11[25]) = v106, LOBYTE(v106) = 22, v65 = sub_100085798(), v90 = 0, v66 = (v91 + v11[26]), *v66 = v65, v66[1] = v67, LOBYTE(v97[0]) = 23, sub_10005CD34(), v68 = v90, sub_1000857D8(), (v90 = v68) != 0) || (*(v91 + v11[27]) = v106, v99 = 24, sub_10005CD88(), v69 = v90, sub_1000857D8(), (v90 = v69) != 0))
  {
    (*(v81 + 8))(v83, v82);
    goto LABEL_9;
  }

  (*(v81 + 8))(v83, v82);
  v94 = v108;
  v95 = v109;
  v96[0] = v110[0];
  *(v96 + 9) = *(v110 + 9);
  v92 = v106;
  v93 = v107;
  v70 = v84;
  v71 = *(v84 + 3);
  v97[2] = *(v84 + 2);
  v97[3] = v71;
  v98[0] = *(v84 + 4);
  *(v98 + 9) = *(v84 + 73);
  v72 = *(v84 + 1);
  v97[0] = *v84;
  v97[1] = v72;
  sub_1000058F0(v97, &qword_1000A69D0, &unk_10008DBE0);
  v73 = v95;
  v70[2] = v94;
  v70[3] = v73;
  v70[4] = v96[0];
  *(v70 + 73) = *(v96 + 9);
  v74 = v93;
  *v70 = v92;
  v70[1] = v74;
  v75 = v91;
  sub_10005CDDC(v91, v78);
  sub_100006304(v112);
  return sub_10005CE40(v75);
}

uint64_t sub_1000593C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10005CE9C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000593F4(uint64_t a1)
{
  v2 = sub_10005C8D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100059430(uint64_t a1)
{
  v2 = sub_10005C8D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10005946C(void *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v158 = a2;
  v5 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  __chkstk_darwin(v5 - 8);
  v157 = &v140 - v6;
  v7 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v8 = __chkstk_darwin(v7 - 8);
  v154 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v140 - v10;
  *a3 = 4;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 514;
  v12 = type metadata accessor for ICAttachmentArchiveModel(0);
  v13 = v12[12];
  v14 = sub_1000848B8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v17 = v15 + 56;
  v151 = v13;
  v16(a3 + v13, 1, 1, v14);
  v152 = v12[13];
  v153 = v16;
  v159 = v17;
  v16(a3 + v152, 1, 1, v14);
  v18 = (a3 + v12[14]);
  v150 = xmmword_10008DBD0;
  v142 = v18;
  *v18 = xmmword_10008DBD0;
  v19 = a3 + v12[17];
  v166 = 1;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0u;
  *(v19 + 48) = 0u;
  *(v19 + 64) = 1;
  v20 = v12[20];
  v21 = sub_1000847C8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v155 = v20;
  v146 = v23;
  v147 = v21;
  v145 = v22 + 56;
  (v23)(a3 + v20, 1, 1);
  v156 = (a3 + v12[21]);
  *v156 = v150;
  v24 = a3 + v12[22];
  *v24 = 0;
  *(v24 + 8) = 0;
  *&v150 = v24;
  *(v24 + 16) = 1;
  v143 = v12[23];
  *(a3 + v143) = 0;
  v144 = v12[24];
  *(a3 + v144) = 2;
  v148 = v12[25];
  *(a3 + v148) = 0;
  v149 = v12[27];
  *(a3 + v149) = 3;
  v25 = (a3 + v12[28]);
  *v25 = xmmword_10008B800;
  v25[1] = 0u;
  v25[2] = 0u;
  v25[3] = 0u;
  v25[4] = 0u;
  v141 = v25;
  *(v25 + 73) = 0u;
  v26 = [a1 identifier];
  if (v26)
  {
    v27 = v26;
    v28 = sub_100085098();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0xE000000000000000;
  }

  *(a3 + 8) = v28;
  *(a3 + 16) = v30;
  v31 = [a1 typeUTI];
  if (v31)
  {
    v32 = v31;
    v33 = sub_100085098();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  v36 = v153;
  *(a3 + 64) = v33;
  *(a3 + 72) = v35;
  v37 = a1;
  v38 = sub_10005B670();
  v40 = v39;

  *(a3 + 80) = v38;
  *(a3 + 88) = v40;
  v41 = [v37 creationDate];
  if (v41)
  {
    v42 = v41;
    sub_100084888();

    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  v44 = v154;
  v45 = 1;
  v36(v11, v43, 1, v14);
  sub_100005820(v11, a3 + v151, &qword_1000A5490, &qword_10008CD80);
  v46 = [v37 modificationDate];
  if (v46)
  {
    v47 = v46;
    sub_100084888();

    v45 = 0;
  }

  v36(v44, v45, 1, v14);
  sub_100005820(v44, a3 + v152, &qword_1000A5490, &qword_10008CD80);
  v48 = [v37 title];
  if (v48)
  {
    v49 = v48;
    v50 = sub_100085098();
    v52 = v51;
  }

  else
  {
    v50 = 0;
    v52 = 0;
  }

  v53 = (a3 + v12[15]);
  *v53 = v50;
  v53[1] = v52;
  v159 = v52;
  [v37 bounds];
  v168.origin.x = 0.0;
  v168.origin.y = 0.0;
  v168.size.width = 0.0;
  v168.size.height = 0.0;
  v54 = CGRectEqualToRect(v167, v168);
  v55 = 0uLL;
  v56 = 0uLL;
  if (!v54)
  {
    [v37 bounds];
    *(&v55 + 1) = v57;
    *(&v56 + 1) = v58;
  }

  v59 = a3 + v12[16];
  v60 = v12[18];
  *v59 = v55;
  *(v59 + 16) = v56;
  *(v59 + 32) = v54;
  v61 = v37;
  sub_10005B880(v61, v162);
  v62 = v162[3];
  *(v19 + 32) = v162[2];
  *(v19 + 48) = v62;
  *(v19 + 64) = v163;
  v63 = v162[1];
  *v19 = v162[0];
  *(v19 + 16) = v63;
  *(a3 + v60) = sub_10005BA64([v61 orientation]);
  v64 = [v61 urlString];
  if (v64)
  {
    v65 = v64;
    sub_100085098();

    v66 = v157;
    sub_1000847B8();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v66 = v157;
    v146(v157, 1, 1, v147);
  }

  v67 = v158;
  sub_100005820(v66, a3 + v155, &qword_1000A56E8, &qword_10008D350);
  v68 = [v61 synapseData];
  if (v68)
  {
    v69 = v68;
    v70 = sub_100084808();
    v72 = v71;
  }

  else
  {
    v70 = 0;
    v72 = 0xF000000000000000;
  }

  v73 = v156;
  sub_10001C19C(*v156, v156[1]);
  *v73 = v70;
  v73[1] = v72;
  v74 = [v61 synapseBasedMetadata];
  if (v74 && (v75 = v74, v76 = [v74 selectedText], v75, v76))
  {
    v77 = sub_100085098();
    v79 = v78;
  }

  else
  {
    v77 = 0;
    v79 = 0;
  }

  v80 = (a3 + v12[26]);
  *v80 = v77;
  v80[1] = v79;
  v81 = [v61 imageFilterType];
  v82 = 0x403020105uLL >> (8 * v81);
  if (v81 >= 5)
  {
    LOBYTE(v82) = 5;
  }

  *(a3 + v12[19]) = v82;
  v83 = [v61 mergeablePreferredViewSize];
  if (v83)
  {
    v84 = v83;
    v85 = sub_100084808();
    v87 = v86;

    sub_10000650C(v85, v87);
    v88 = sub_1000810EC([v61 preferredViewSize]);
    *(a3 + v149) = v88;
  }

  v89 = [v61 location];
  if (v89)
  {
    v90 = v89;
    [v90 latitude];
    v92 = v91;
    [v90 longitude];
    v94 = v93;

    v95 = v150;
    *v150 = v92;
    *(v95 + 8) = v94;
    *(v95 + 16) = 0;
  }

  v96 = [v61 tableModel];
  if (v96)
  {
    if ((*v67 & 1) == 0)
    {
      v108 = v96;
      v109 = sub_10005BB60(v96, v67);
      *(a3 + v143) = v109;
      v110 = [v108 table];
      v111 = [v110 isRightToLeft];

      sub_100030518(v67);
      *(a3 + v144) = v111;
      if ((*(v67 + 59) & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_38;
    }
  }

  v97 = [v61 attachmentModel];
  objc_opt_self();
  v98 = swift_dynamicCastObjCClass();
  if (v98)
  {
    v99 = [v98 subAttachmentIdentifiers];
    v100 = sub_100085208();

    sub_100030518(v67);
    *(a3 + v148) = v100;
    if (*(v67 + 59))
    {
      goto LABEL_38;
    }

LABEL_42:

    return;
  }

  v117 = [v61 audioModel];
  if (!v117)
  {
    goto LABEL_53;
  }

  v118 = v117;
  v119 = [v117 audioDocument];

  if (!v119)
  {
    __break(1u);
    return;
  }

  v120 = sub_1000853A8();

  if (v120)
  {
    v121 = v61;
    sub_100011A6C(v67, v164);
    sub_100053740(v120, v121, v67, v164);
    v122 = v141;
    v123 = v141[3];
    v160[2] = v141[2];
    v160[3] = v123;
    v161[0] = v141[4];
    *(v161 + 9) = *(v141 + 73);
    v124 = v141[1];
    v160[0] = *v141;
    v160[1] = v124;
    sub_1000058F0(v160, &qword_1000A69D0, &unk_10008DBE0);
    sub_100030518(v67);
    v125 = v164[3];
    v122[2] = v164[2];
    v122[3] = v125;
    v122[4] = v165[0];
    *(v122 + 73) = *(v165 + 9);
    v126 = v164[1];
    *v122 = v164[0];
    v122[1] = v126;
    if ((*(v67 + 59) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
LABEL_53:
    v127 = [v61 mergeableData];
    if (v127)
    {
      v128 = v127;
      v129 = sub_100084808();
      v131 = v130;
    }

    else
    {
      v129 = 0;
      v131 = 0xF000000000000000;
    }

    v139 = v142;
    sub_10001C19C(*v142, v142[1]);
    sub_100030518(v67);
    *v139 = v129;
    v139[1] = v131;
    if ((*(v67 + 59) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

LABEL_38:
  v101 = v61;
  v102 = [v101 note];
  if (v102 && (v103 = v102, v104 = [v102 identifier], v103, v104))
  {
    v105 = sub_100085098();
    v107 = v106;
  }

  else
  {
    v105 = 0;
    v107 = 0;
  }

  *(a3 + 24) = v105;
  *(a3 + 32) = v107;
  v112 = [v101 note];

  if (v112)
  {
    v113 = &ICArchiveNotesPreviewer;
    v114 = [v112 title];

    if (v114)
    {
      v112 = sub_100085098();
      v116 = v115;
    }

    else
    {
      v112 = 0;
      v116 = 0;
    }
  }

  else
  {
    v116 = 0;
    v113 = &ICArchiveNotesPreviewer;
  }

  *(a3 + 40) = v112;
  *(a3 + 48) = v116;
  v132 = [v101 v113[23].base_meths];
  if (v132)
  {
    v133 = v132;
    v134 = sub_100085098();
    v136 = v135;
  }

  else
  {

    v134 = 0;
    v136 = 0;
  }

  *v53 = v134;
  v53[1] = v136;
  v137 = v101;
  *(a3 + 56) = [v137 markedForDeletion];
  v138 = [v137 isPasswordProtected];

  *(a3 + 57) = v138;
}

uint64_t type metadata accessor for ICAttachmentArchiveModel(uint64_t a1)
{
  result = qword_1000A6A30;
  if (!qword_1000A6A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005A048(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _OWORD *a5, void **a6)
{
  v28 = a6;
  v9 = sub_100084918();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v31 = _swiftEmptyArrayStorage;
  v13 = [a4 table];
  (*(v10 + 16))(v12, a1, v9);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = ((v15 + 68) & 0xFFFFFFFFFFFFFFF8);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  (*(v10 + 32))(v17 + v14, v12, v9);
  v18 = (v17 + v15);
  v19 = a5[1];
  *v18 = *a5;
  v18[1] = v19;
  v18[2] = a5[2];
  *(v18 + 45) = *(a5 + 45);
  *(v16 + v17) = &v31;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_10005BED4;
  *(v20 + 24) = v17;
  aBlock[4] = sub_10005E3B8;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100055E30;
  aBlock[3] = &unk_1000A07C0;
  v21 = _Block_copy(aBlock);
  v22 = a4;
  sub_100011A6C(a5, v29);

  [v13 enumerateColumnsWithBlock:v21];

  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    isEscapingClosureAtFileLocation = v31;
    v16 = v28;
    a4 = *v28;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v16 = a4;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  a4 = sub_10000F5BC(0, a4[2] + 1, 1, a4);
  *v16 = a4;
LABEL_3:
  v26 = a4[2];
  v25 = a4[3];
  if (v26 >= v25 >> 1)
  {
    a4 = sub_10000F5BC((v25 > 1), v26 + 1, 1, a4);
    *v16 = a4;
  }

  a4[2] = v26 + 1;
  a4[v26 + 4] = isEscapingClosureAtFileLocation;
}

void sub_10005A37C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, char **a7)
{
  v10 = sub_100084918();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = [a4 table];
  isa = sub_1000848E8().super.isa;
  v16 = sub_1000848E8().super.isa;
  v17 = [v14 mergeableStringForColumnID:isa rowID:v16];

  if (!v17)
  {
    sub_100084908();
    v18 = objc_allocWithZone(ICTTMergeableAttributedString);
    v19 = sub_1000848E8().super.isa;
    (*(v11 + 8))(v13, v10);
    v17 = [v18 initWithReplicaID:v19];
  }

  v20 = [a4 attachment];
  if (v20)
  {
    v21 = v20;
    sub_100011A6C(a6, v34);
    v22 = v17;
    v23 = sub_10002FF98(v22, v21, a6);
    v25 = v24;
    v27 = v26;
    v28 = *a7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a7 = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = sub_10000F6F0(0, *(v28 + 2) + 1, 1, v28);
      *a7 = v28;
    }

    v31 = *(v28 + 2);
    v30 = *(v28 + 3);
    if (v31 >= v30 >> 1)
    {
      *a7 = sub_10000F6F0((v30 > 1), v31 + 1, 1, v28);
    }

    v32 = *a7;
    *(v32 + 2) = v31 + 1;
    v33 = &v32[24 * v31];
    *(v33 + 4) = v23;
    *(v33 + 5) = v25;
    *(v33 + 6) = v27;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10005A5DC(void *a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A6C88, &qword_10008E0A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000626C(a1, a1[3]);
  sub_10005DE88();
  sub_100085A78();
  v12 = *v3;
  v11 = 0;
  type metadata accessor for CGPoint(0);
  sub_10005DEDC(&qword_1000A6C90, type metadata accessor for CGPoint, &protocol conformance descriptor for CGPoint);
  sub_1000858D8();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v12 = v3[1];
  v11 = 1;
  sub_1000858D8();
  v12 = v3[2];
  v11 = 2;
  sub_1000858D8();
  v12 = v3[3];
  v11 = 3;
  sub_1000858D8();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10005A820()
{
  v1 = 0x7466654C706F74;
  v2 = 0x69526D6F74746F62;
  if (*v0 != 2)
  {
    v2 = 0x654C6D6F74746F62;
  }

  if (*v0)
  {
    v1 = 0x7468676952706F74;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10005A8A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10005D680(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10005A8D0(uint64_t a1)
{
  v2 = sub_10005DE88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005A90C(uint64_t a1)
{
  v2 = sub_10005DE88();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10005A948@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10005D7F0(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

Swift::Int sub_10005A9B0()
{
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_10005AA54(uint64_t a1)
{
  sub_100085118();
}

Swift::Int sub_10005AAE4(uint64_t a1)
{
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

unint64_t sub_10005AB84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005DA9C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10005ABB4(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 20565;
  v4 = 0xE400000000000000;
  v5 = 1413891404;
  if (*v1 != 2)
  {
    v5 = 0x5448474952;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 1314344772;
    v2 = 0xE400000000000000;
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

uint64_t sub_10005AD2C(void *a1, double a2, double a3)
{
  v5 = sub_100005740(&qword_1000A6C48, &qword_10008E098);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000626C(a1, a1[3]);
  sub_10005DCE4();
  sub_100085A78();
  v12 = 0;
  sub_1000858B8();
  if (!v3)
  {
    v11 = 1;
    sub_1000858B8();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_10005AEC0()
{
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_10005AFB0(uint64_t a1)
{
  sub_100085118();
}

Swift::Int sub_10005B08C(uint64_t a1)
{
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

unint64_t sub_10005B178@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005DAE8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10005B1A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x4F544F4850;
  v5 = 0xE900000000000045;
  v6 = 0x4C41435359415247;
  v7 = 0xEF45544948575F44;
  v8 = 0x4E415F4B43414C42;
  if (v2 != 3)
  {
    v8 = 0x414F424554494857;
    v7 = 0xEA00000000004452;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x524F4C4F43;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_10005B340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a5();
  a6();

  return sub_100084A28();
}

uint64_t sub_10005B400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a5();
  a6();

  return sub_100084A48();
}

uint64_t sub_10005B48C()
{
  if (*v0)
  {
    return 0x64757469676E6F6CLL;
  }

  else
  {
    return 0x656475746974616CLL;
  }
}

uint64_t sub_10005B4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_100085948() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100085948();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10005B5B0(uint64_t a1)
{
  v2 = sub_10005DCE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005B5EC(uint64_t a1)
{
  v2 = sub_10005DCE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10005B628(double *a1@<X8>, void *a2@<X0>)
{
  v4 = sub_10005DB34(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v5;
  }
}

id sub_10005B670()
{
  result = sub_100068858();
  v2 = v1;
  if (v1)
  {
    v3 = result;
    v17 = result;
    v18 = v1;
    __chkstk_darwin(result);
    v16[2] = &v17;
    v4 = sub_10001CF34(sub_10004FB28, v16, &off_10009DCC0);
    swift_arrayDestroy();
    if (v4)
    {
      v17 = v3;
      v18 = v2;
      v21 = 46;
      v22 = 0xE100000000000000;
      sub_10001D33C();
      v5 = sub_1000854F8();

      v17 = sub_10001CD08(1uLL, v5);
      v18 = v6;
      v19 = v7;
      v20 = v8;

      sub_100005740(&qword_1000A5BE8, &unk_10008B7F0);
      sub_10003ECF4(&qword_1000A5BF0, &qword_1000A5BE8, &unk_10008B7F0, &protocol conformance descriptor for ArraySlice<A>);
      v9 = sub_100085038();
      v11 = v10;
      swift_unknownObjectRelease();
      v12 = *(v5 + 16);
      if (v12)
      {
        v13 = (v5 + 16 + 16 * v12);
        v14 = *v13;
        v15 = v13[1];

        v17 = v9;
        v18 = v11;
        v23._countAndFlagsBits = 3027488;
        v23._object = 0xE300000000000000;
        sub_100085158(v23);
        v24._countAndFlagsBits = v14;
        v24._object = v15;
        sub_100085158(v24);
      }

      else
      {

        v17 = v9;
        v18 = v11;
        v25._countAndFlagsBits = 12832;
        v25._object = 0xE200000000000000;
        sub_100085158(v25);
      }

      return v17;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

void sub_10005B880(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 croppingQuadTopLeftX];
  if (v4 == 0.0 && ([a1 croppingQuadTopLeftY], v5 == 1.0) && (objc_msgSend(a1, "croppingQuadTopRightX"), v6 == 1.0) && (objc_msgSend(a1, "croppingQuadTopRightY"), v7 == 1.0) && (objc_msgSend(a1, "croppingQuadBottomRightX"), v8 == 1.0) && (objc_msgSend(a1, "croppingQuadBottomRightY"), v9 == 0.0) && (objc_msgSend(a1, "croppingQuadBottomLeftX"), v10 == 0.0) && (objc_msgSend(a1, "croppingQuadBottomLeftY"), v11 == 0.0))
  {

    v12 = 1;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  else
  {
    [a1 croppingQuadTopLeftX];
    v32 = v17;
    [a1 croppingQuadTopLeftY];
    v31 = v18;
    [a1 croppingQuadTopRightX];
    v29 = v19;
    [a1 croppingQuadTopRightY];
    v30 = v20;
    [a1 croppingQuadBottomRightX];
    v27 = v21;
    [a1 croppingQuadBottomRightY];
    v28 = v22;
    [a1 croppingQuadBottomLeftX];
    v25 = v23;
    [a1 croppingQuadBottomLeftY];
    v26 = v24;

    *&v14 = v29;
    *&v13 = v32;
    v12 = 0;
    *(&v13 + 1) = v31;
    *(&v14 + 1) = v30;
    *&v15 = v27;
    *(&v15 + 1) = v28;
    *&v16 = v25;
    *(&v16 + 1) = v26;
  }

  *a2 = v13;
  *(a2 + 16) = v14;
  *(a2 + 32) = v15;
  *(a2 + 48) = v16;
  *(a2 + 64) = v12;
}

uint64_t sub_10005BA64(unint64_t a1)
{
  if (a1 < 4)
  {
    return 0x3020104u >> (8 * a1);
  }

  if (qword_1000A5430 != -1)
  {
    swift_once();
  }

  v2 = sub_100084FB8();
  sub_10000B614(v2, qword_1000A69B8);
  v3 = sub_100084FA8();
  v4 = sub_100085388();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unknown drawing orientation — returning nil", v5, 2u);
  }

  return 4;
}

void *sub_10005BB60(void *a1, _OWORD *a2)
{
  v14 = _swiftEmptyArrayStorage;
  v4 = [a1 table];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = a2[1];
  *(v5 + 24) = *a2;
  *(v5 + 40) = v6;
  *(v5 + 56) = a2[2];
  *(v5 + 69) = *(a2 + 45);
  *(v5 + 88) = &v14;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10005BD78;
  *(v7 + 24) = v5;
  aBlock[4] = sub_10005BD98;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100055E30;
  aBlock[3] = &unk_1000A0748;
  v8 = _Block_copy(aBlock);
  v9 = a1;
  sub_100011A6C(a2, v12);

  [v4 enumerateRowsWithBlock:v8];

  _Block_release(v8);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v11 = v14;

    return v11;
  }

  return result;
}

uint64_t sub_10005BD20()
{
  if (*(v0 + 40) != 1)
  {
  }

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10005BDC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005BDD8()
{
  v1 = sub_100084918();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 16) != 1)
  {
  }

  return _swift_deallocObject(v0, ((v5 + 68) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_10005BED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_100084918() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + 16);
  v11 = *(v3 + ((v9 + 68) & 0xFFFFFFFFFFFFFFF8));

  sub_10005A37C(a1, a2, a3, v10, v3 + v8, v3 + v9, v11);
}

uint64_t sub_10005BFAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 80);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10005C0FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 80);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10005C238(uint64_t a1)
{
  sub_1000341B8(319, &qword_1000A5538, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_1000341B8(319, &unk_1000A5880, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      sub_10005C524(319, &qword_1000A5518, &type metadata accessor for Date);
      if (v3 <= 0x3F)
      {
        sub_1000341B8(319, &qword_1000A6A40, &type metadata for Data);
        if (v4 <= 0x3F)
        {
          sub_10005C524(319, &qword_1000A6A48, type metadata accessor for CGRect);
          if (v5 <= 0x3F)
          {
            sub_1000341B8(319, &qword_1000A6A50, &type metadata for ICAttachmentArchiveModel.Cropping);
            if (v6 <= 0x3F)
            {
              sub_1000341B8(319, &qword_1000A6A58, &type metadata for ICAttachmentArchiveModel.Orientations);
              if (v7 <= 0x3F)
              {
                sub_1000341B8(319, &qword_1000A6A60, &type metadata for ICAttachmentArchiveModel.ImageFilters);
                if (v8 <= 0x3F)
                {
                  sub_10005C524(319, &qword_1000A5FC8, &type metadata accessor for URL);
                  if (v9 <= 0x3F)
                  {
                    sub_1000341B8(319, &qword_1000A6A68, &type metadata for ICAttachmentArchiveModel.Coordinate);
                    if (v10 <= 0x3F)
                    {
                      sub_10005C578(319, &qword_1000A6A70, &qword_1000A6A78, &unk_10008DC10);
                      if (v11 <= 0x3F)
                      {
                        sub_10005C578(319, &qword_1000A6A80, &qword_1000A6588, &qword_10008CE68);
                        if (v12 <= 0x3F)
                        {
                          sub_1000341B8(319, &qword_1000A6A88, &type metadata for ICNoteArchiveModel.AttachmentViewTypes);
                          if (v13 <= 0x3F)
                          {
                            sub_1000341B8(319, &unk_1000A6A90, &_s14AudioRecordingVN);
                            if (v14 <= 0x3F)
                            {
                              swift_cvw_initStructMetadataWithLayoutString();
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
    }
  }
}

void sub_10005C524(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000854E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10005C578(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100011888(a3, a4);
    v5 = sub_1000854E8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10005C5FC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005C61C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

unint64_t sub_10005C66C()
{
  result = qword_1000A6B20;
  if (!qword_1000A6B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6B20);
  }

  return result;
}

unint64_t sub_10005C708()
{
  result = qword_1000A6B38;
  if (!qword_1000A6B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6B38);
  }

  return result;
}

unint64_t sub_10005C760()
{
  result = qword_1000A6B40;
  if (!qword_1000A6B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6B40);
  }

  return result;
}

unint64_t sub_10005C7FC()
{
  result = qword_1000A6B58;
  if (!qword_1000A6B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6B58);
  }

  return result;
}

uint64_t sub_10005C850(uint64_t a1)
{
  *(a1 + 8) = sub_10005DEDC(&qword_1000A66F0, type metadata accessor for ICAttachmentArchiveModel, &unk_10008E024);
  result = sub_10005DEDC(&qword_1000A6B98, type metadata accessor for ICAttachmentArchiveModel, &unk_10008E04C);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10005C8D4()
{
  result = qword_1000A6BA8;
  if (!qword_1000A6BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6BA8);
  }

  return result;
}

void sub_10005C928(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_100006464(a1, a2);
  }
}

unint64_t sub_10005C93C()
{
  result = qword_1000A6BB8;
  if (!qword_1000A6BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6BB8);
  }

  return result;
}

unint64_t sub_10005C990()
{
  result = qword_1000A6BC0;
  if (!qword_1000A6BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6BC0);
  }

  return result;
}

unint64_t sub_10005C9E4()
{
  result = qword_1000A6BC8;
  if (!qword_1000A6BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6BC8);
  }

  return result;
}

unint64_t sub_10005CA38()
{
  result = qword_1000A6BD0;
  if (!qword_1000A6BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6BD0);
  }

  return result;
}

unint64_t sub_10005CAC0()
{
  result = qword_1000A6BE8;
  if (!qword_1000A6BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6BE8);
  }

  return result;
}

unint64_t sub_10005CB14()
{
  result = qword_1000A6BF0;
  if (!qword_1000A6BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6BF0);
  }

  return result;
}

unint64_t sub_10005CB68()
{
  result = qword_1000A6C08;
  if (!qword_1000A6C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6C08);
  }

  return result;
}

unint64_t sub_10005CBBC()
{
  result = qword_1000A6C10;
  if (!qword_1000A6C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6C10);
  }

  return result;
}

uint64_t sub_10005CC10(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100011888(&qword_1000A6A78, &unk_10008DC10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005CCBC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100011888(&qword_1000A5A00, &qword_10008B520);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005CD34()
{
  result = qword_1000A6C28;
  if (!qword_1000A6C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6C28);
  }

  return result;
}

unint64_t sub_10005CD88()
{
  result = qword_1000A6C30;
  if (!qword_1000A6C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6C30);
  }

  return result;
}

uint64_t sub_10005CDDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ICAttachmentArchiveModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005CE40(uint64_t a1)
{
  v2 = type metadata accessor for ICAttachmentArchiveModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005CE9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974;
  if (v4 || (sub_100085948() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_100085948() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000871D0 == a2 || (sub_100085948() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6954746E65726170 && a2 == 0xEB00000000656C74 || (sub_100085948() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000871F0 == a2 || (sub_100085948() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100087210 == a2 || (sub_100085948() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000100086CE0 == a2 || (sub_100085948() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C6946616964656DLL && a2 == 0xED0000656D616E65 || (sub_100085948() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074 || (sub_100085948() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6465696669646F6DLL && a2 == 0xEA00000000007441 || (sub_100085948() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000 || (sub_100085948() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_100085948() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x73646E756F62 && a2 == 0xE600000000000000 || (sub_100085948() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x676E6970706F7263 && a2 == 0xE800000000000000 || (sub_100085948() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEB000000006E6F69 || (sub_100085948() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6C69466567616D69 && a2 == 0xEB00000000726574 || (sub_100085948() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_100085948() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x4474657070696E73 && a2 == 0xEB00000000617461 || (sub_100085948() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x616E6964726F6F63 && a2 == 0xEA00000000006574 || (sub_100085948() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 1937207154 && a2 == 0xE400000000000000 || (sub_100085948() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x5474686769527369 && a2 == 0xED00007466654C6FLL || (sub_100085948() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000100087230 == a2 || (sub_100085948() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x65746F75516C7275 && a2 == 0xEC00000074786554 || (sub_100085948() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100087250 == a2 || (sub_100085948() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x6365526F69647561 && a2 == 0xEE00676E6964726FLL)
  {

    return 24;
  }

  else
  {
    v6 = sub_100085948();

    if (v6)
    {
      return 24;
    }

    else
    {
      return 25;
    }
  }
}

uint64_t sub_10005D680(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7466654C706F74 && a2 == 0xE700000000000000;
  if (v4 || (sub_100085948() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7468676952706F74 && a2 == 0xE800000000000000 || (sub_100085948() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69526D6F74746F62 && a2 == 0xEB00000000746867 || (sub_100085948() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654C6D6F74746F62 && a2 == 0xEA00000000007466)
  {

    return 3;
  }

  else
  {
    v6 = sub_100085948();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10005D7F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_100005740(&qword_1000A6C70, &qword_10008E0A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_10000626C(a1, a1[3]);
  sub_10005DE88();
  sub_100085A68();
  if (v2)
  {
    return sub_100006304(a1);
  }

  type metadata accessor for CGPoint(0);
  v20 = 0;
  sub_10005DEDC(&qword_1000A6C80, type metadata accessor for CGPoint, &protocol conformance descriptor for CGPoint);
  sub_100085828();
  v9 = v18;
  v10 = v19;
  v20 = 1;
  sub_100085828();
  v11 = v18;
  v12 = v19;
  v20 = 2;
  sub_100085828();
  v13 = v18;
  v14 = v19;
  v20 = 3;
  sub_100085828();
  (*(v6 + 8))(v8, v5);
  v15 = v18;
  v16 = v19;
  result = sub_100006304(a1);
  *a2 = v9;
  a2[1] = v10;
  a2[2] = v11;
  a2[3] = v12;
  a2[4] = v13;
  a2[5] = v14;
  a2[6] = v15;
  a2[7] = v16;
  return result;
}

unint64_t sub_10005DA9C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10009E150;
  v6._object = a2;
  v4 = sub_100085788(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10005DAE8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10009E1F8;
  v6._object = a2;
  v4 = sub_100085788(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

double sub_10005DB34(void *a1)
{
  v2 = sub_100005740(&qword_1000A6C38, &qword_10008E090);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9[-v4];
  sub_10000626C(a1, a1[3]);
  sub_10005DCE4();
  sub_100085A68();
  v9[15] = 0;
  sub_100085808();
  v7 = v6;
  v9[14] = 1;
  sub_100085808();
  (*(v3 + 8))(v5, v2);
  sub_100006304(a1);
  return v7;
}

unint64_t sub_10005DCE4()
{
  result = qword_1000A6C40;
  if (!qword_1000A6C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6C40);
  }

  return result;
}

unint64_t sub_10005DD38()
{
  result = qword_1000A6C50;
  if (!qword_1000A6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6C50);
  }

  return result;
}

unint64_t sub_10005DD8C()
{
  result = qword_1000A6C58;
  if (!qword_1000A6C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6C58);
  }

  return result;
}

unint64_t sub_10005DDE0()
{
  result = qword_1000A6C60;
  if (!qword_1000A6C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6C60);
  }

  return result;
}

unint64_t sub_10005DE34()
{
  result = qword_1000A6C68;
  if (!qword_1000A6C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6C68);
  }

  return result;
}

unint64_t sub_10005DE88()
{
  result = qword_1000A6C78;
  if (!qword_1000A6C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6C78);
  }

  return result;
}

uint64_t sub_10005DEDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for ICAttachmentArchiveModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ICAttachmentArchiveModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10005E098()
{
  result = qword_1000A6C98;
  if (!qword_1000A6C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6C98);
  }

  return result;
}

unint64_t sub_10005E0F0()
{
  result = qword_1000A6CA0;
  if (!qword_1000A6CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6CA0);
  }

  return result;
}

unint64_t sub_10005E148()
{
  result = qword_1000A6CA8;
  if (!qword_1000A6CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6CA8);
  }

  return result;
}

unint64_t sub_10005E1A0()
{
  result = qword_1000A6CB0;
  if (!qword_1000A6CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6CB0);
  }

  return result;
}

unint64_t sub_10005E1F8()
{
  result = qword_1000A6CB8;
  if (!qword_1000A6CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6CB8);
  }

  return result;
}

unint64_t sub_10005E250()
{
  result = qword_1000A6CC0;
  if (!qword_1000A6CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6CC0);
  }

  return result;
}

unint64_t sub_10005E2A8()
{
  result = qword_1000A6CC8;
  if (!qword_1000A6CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6CC8);
  }

  return result;
}

unint64_t sub_10005E300()
{
  result = qword_1000A6CD0;
  if (!qword_1000A6CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6CD0);
  }

  return result;
}

unint64_t sub_10005E358()
{
  result = qword_1000A6CD8;
  if (!qword_1000A6CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6CD8);
  }

  return result;
}

uint64_t sub_10005E3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10005E4B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t _s3TagVMa(uint64_t a1)
{
  result = qword_1000A6D38;
  if (!qword_1000A6D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005E5C8(uint64_t a1)
{
  sub_100054660(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10005E63C(void *a1)
{
  v3 = sub_100005740(&qword_1000A6D88, &qword_10008E4F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000626C(a1, a1[3]);
  sub_10005F588();
  sub_100085A78();
  v8[15] = 0;
  sub_1000848B8();
  sub_10005F97C(&qword_1000A5630, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_100085888();
  if (!v1)
  {
    _s3TagVMa(0);
    v8[14] = 1;
    sub_100085898();
  }

  return (*(v4 + 8))(v6, v3);
}

Swift::Int sub_10005E7F8()
{
  v1 = v0;
  v2 = sub_1000848B8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  __chkstk_darwin(v6 - 8);
  v8 = &v10 - v7;
  sub_100085A08();
  sub_10005F5DC(v1, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_100085A28(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_100085A28(1u);
    sub_10005F97C(&qword_1000A6D90, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_100085028();
    (*(v3 + 8))(v5, v2);
  }

  _s3TagVMa(0);
  sub_100085118();
  return sub_100085A38();
}

uint64_t sub_10005E9F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  __chkstk_darwin(v4 - 8);
  v23 = &v20 - v5;
  v6 = sub_100005740(&qword_1000A6D78, &qword_10008E4F0);
  v21 = *(v6 - 8);
  v22 = v6;
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = _s3TagVMa(0);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000848B8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_10000626C(a1, a1[3]);
  sub_10005F588();
  sub_100085A68();
  if (v2)
  {
    sub_100006304(a1);
    return sub_1000058F0(v11, &qword_1000A5490, &qword_10008CD80);
  }

  else
  {
    v13 = v21;
    v25 = 0;
    sub_10005F97C(&qword_1000A55F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v14 = v22;
    sub_1000857D8();
    sub_100040A94(v23, v11);
    v24 = 1;
    v15 = sub_1000857E8();
    v17 = v16;
    (*(v13 + 8))(v8, v14);
    v18 = &v11[*(v9 + 20)];
    *v18 = v15;
    v18[1] = v17;
    sub_10001172C(v11, v20);
    sub_100006304(a1);
    return sub_10003DB2C(v11);
  }
}

uint64_t sub_10005ED04()
{
  if (*v0)
  {
    return 1954047348;
  }

  else
  {
    return 0x4164657461657263;
  }
}

uint64_t sub_10005ED3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4164657461657263 && a2 == 0xE900000000000074;
  if (v6 || (sub_100085948() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100085948();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10005EE20(uint64_t a1)
{
  v2 = sub_10005F588();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005EE5C(uint64_t a1)
{
  v2 = sub_10005F588();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005EECC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1000848B8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  __chkstk_darwin(v8 - 8);
  v10 = &v12 - v9;
  sub_10005F5DC(v3, &v12 - v9);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_100085A28(0);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_100085A28(1u);
    sub_10005F97C(&qword_1000A6D90, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_100085028();
    (*(v5 + 8))(v7, v4);
  }

  return sub_100085118();
}

Swift::Int sub_10005F0B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1000848B8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  __chkstk_darwin(v8 - 8);
  v10 = &v12 - v9;
  sub_100085A08();
  sub_10005F5DC(v3, v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_100085A28(0);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_100085A28(1u);
    sub_10005F97C(&qword_1000A6D90, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_100085028();
    (*(v5 + 8))(v7, v4);
  }

  sub_100085118();
  return sub_100085A38();
}

uint64_t sub_10005F350()
{
  v0 = _s3TagVMa(0);
  sub_10000B64C(v0, qword_1000B17C0);
  v1 = sub_10000B614(v0, qword_1000B17C0);
  v2 = sub_1000848B8();
  result = (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v4 = (v1 + *(v0 + 20));
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_10005F3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1000A5438 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = sub_10000B614(a1, qword_1000B17C0);

  return sub_10001172C(v3, a2);
}

uint64_t sub_10005F464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  __chkstk_darwin(a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000848B8();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = &v10[*(a3 + 20)];
  *v12 = a1;
  *(v12 + 1) = a2;
  sub_10003DAC8(v10, a4);
  return (*(v8 + 56))(a4, 0, 1, a3);
}

unint64_t sub_10005F588()
{
  result = qword_1000A6D80;
  if (!qword_1000A6D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6D80);
  }

  return result;
}

uint64_t sub_10005F5DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005F64C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000848B8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_100005740(&qword_1000A6D98, &qword_10008E500);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v25 - v13;
  v15 = *(v12 + 56);
  sub_10005F5DC(a1, &v25 - v13);
  sub_10005F5DC(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_10005F5DC(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_10005F97C(&qword_1000A6DA0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v18 = sub_100085058();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1000058F0(v14, &qword_1000A5490, &qword_10008CD80);
      if (v18)
      {
        goto LABEL_9;
      }

LABEL_7:
      v17 = 0;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_1000058F0(v14, &qword_1000A6D98, &qword_10008E500);
    goto LABEL_7;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000058F0(v14, &qword_1000A5490, &qword_10008CD80);
LABEL_9:
  v20 = *(_s3TagVMa(0) + 20);
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  if (v21 == *v23 && v22 == v23[1])
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_100085948();
  }

  return v17 & 1;
}

uint64_t sub_10005F97C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10005F9D8()
{
  result = qword_1000A6DA8;
  if (!qword_1000A6DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6DA8);
  }

  return result;
}

unint64_t sub_10005FA30()
{
  result = qword_1000A6DB0;
  if (!qword_1000A6DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6DB0);
  }

  return result;
}

unint64_t sub_10005FA88()
{
  result = qword_1000A6DB8;
  if (!qword_1000A6DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6DB8);
  }

  return result;
}

void sub_10005FADC(void *a1)
{
  [a1 setIsPasswordProtected:1];
  [a1 setCryptoIterationCount:*v1];
  isa = sub_1000847F8().super.isa;
  [a1 setCryptoSalt:isa];

  v4 = sub_1000847F8().super.isa;
  [a1 setCryptoInitializationVector:v4];

  v5 = sub_1000847F8().super.isa;
  [a1 setCryptoTag:v5];

  v6 = sub_1000847F8().super.isa;
  [a1 setCryptoWrappedKey:v6];

  v7 = sub_100085068();
  [a1 setPasswordHint:v7];
}

uint64_t sub_10005FBF4(void *a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A6DD0, &qword_10008E8D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_10000626C(a1, a1[3]);
  sub_100060C6C();
  sub_100085A78();
  LOBYTE(v13) = 0;
  sub_1000858E8();
  if (!v2)
  {
    v18 = *(v3 + 8);
    v13 = *(v3 + 8);
    v12 = 1;
    sub_100060D28(&v18, v11);
    sub_1000064B8();
    sub_1000858D8();
    sub_10000650C(v13, *(&v13 + 1));
    v17 = *(v3 + 24);
    v13 = *(v3 + 24);
    v12 = 2;
    sub_100060D28(&v17, v11);
    sub_1000858D8();
    sub_10000650C(v13, *(&v13 + 1));
    v16 = *(v3 + 40);
    v13 = *(v3 + 40);
    v12 = 3;
    sub_100060D28(&v16, v11);
    sub_1000858D8();
    sub_10000650C(v13, *(&v13 + 1));
    v15 = *(v3 + 56);
    v13 = *(v3 + 56);
    v12 = 4;
    sub_100060D28(&v15, v11);
    sub_1000858D8();
    sub_10000650C(v13, *(&v13 + 1));
    LOBYTE(v13) = 5;
    sub_100085898();
    v13 = *(v3 + 88);
    v14 = v13;
    v12 = 6;
    sub_100060D28(&v14, v11);
    sub_1000858D8();
    sub_10000650C(v13, *(&v13 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10005FF18()
{
  v1 = *v0;
  v2 = 0x6F69746172657469;
  v3 = 0x64726F7773736170;
  if (v1 != 5)
  {
    v3 = 1635017060;
  }

  v4 = 6775156;
  if (v1 != 3)
  {
    v4 = 0x4B64657070617277;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1953259891;
  if (v1 != 1)
  {
    v5 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10005FFF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000603D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100060020(uint64_t a1)
{
  v2 = sub_100060C6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006005C(uint64_t a1)
{
  v2 = sub_100060C6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100060098@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10006063C(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v8;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

void sub_100060110(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if ([a1 isPasswordProtected])
  {
    v35 = a3;
    v34 = [a1 cryptoIterationCount];
    v8 = [a1 cryptoSalt];
    if (v8)
    {
      v9 = v8;
      v10 = sub_100084808();
      v32 = v11;
      v33 = v10;
    }

    else
    {
      v32 = 0xC000000000000000;
      v33 = 0;
    }

    v12 = [a1 cryptoInitializationVector];
    if (v12)
    {
      v13 = v12;
      v31 = sub_100084808();
      v15 = v14;
    }

    else
    {
      v31 = 0;
      v15 = 0xC000000000000000;
    }

    v16 = [a1 cryptoTag];
    if (v16)
    {
      v17 = v16;
      v18 = sub_100084808();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0xC000000000000000;
    }

    v21 = [a1 cryptoWrappedKey];
    if (v21)
    {
      v22 = v21;
      v23 = sub_100084808();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0xC000000000000000;
    }

    v26 = [a1 passwordHint];
    if (v26)
    {
      v27 = v26;
      v28 = sub_100085098();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0xE000000000000000;
    }

    *a4 = v34;
    a4[1] = v33;
    a4[2] = v32;
    a4[3] = v31;
    a4[4] = v15;
    a4[5] = v18;
    a4[6] = v20;
    a4[7] = v23;
    a4[8] = v25;
    a4[9] = v28;
    a4[10] = v30;
    a4[11] = a2;
    a4[12] = v35;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000602E0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_1000602FC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100060328(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100060370(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000603D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F69746172657469 && a2 == 0xEE00746E756F436ELL;
  if (v4 || (sub_100085948() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953259891 && a2 == 0xE400000000000000 || (sub_100085948() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100087270 == a2 || (sub_100085948() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 6775156 && a2 == 0xE300000000000000 || (sub_100085948() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4B64657070617277 && a2 == 0xEA00000000007965 || (sub_100085948() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64726F7773736170 && a2 == 0xEC000000746E6948 || (sub_100085948() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_100085948();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_10006063C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100005740(&qword_1000A6DC0, &qword_10008E8D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_10000626C(a1, a1[3]);
  sub_100060C6C();
  sub_100085A68();
  if (v2)
  {
    return sub_100006304(a1);
  }

  LOBYTE(v41) = 0;
  v9 = sub_100085838();
  LOBYTE(v34) = 1;
  sub_100006350();
  sub_100085828();
  v32 = v41;
  v33 = v42;
  LOBYTE(v34) = 2;
  sub_100085828();
  v28 = v41;
  v29 = v42;
  LOBYTE(v34) = 3;
  sub_100085828();
  v26 = v41;
  v27 = v42;
  LOBYTE(v34) = 4;
  sub_100085828();
  v30 = v41;
  v31 = v42;
  LOBYTE(v41) = 5;
  v23 = sub_1000857E8();
  v25 = v10;
  v56 = 6;
  sub_100085828();
  v24 = 0;
  (*(v6 + 8))(v8, v5);
  v22 = v54;
  v21 = v55;
  *&v34 = v9;
  v11 = v32;
  *(&v34 + 1) = v32;
  v12 = v33;
  *&v35 = v33;
  v13 = v28;
  *(&v35 + 1) = v28;
  v14 = v29;
  *&v36 = v29;
  v15 = v26;
  *(&v36 + 1) = v26;
  v16 = v27;
  *&v37 = v27;
  *(&v37 + 1) = v30;
  *&v38 = v31;
  *(&v38 + 1) = v23;
  *&v39 = v25;
  *(&v39 + 1) = v54;
  v40 = v55;
  sub_100060CC0(&v34, &v41);
  sub_100006304(a1);
  v41 = v9;
  v42 = v11;
  v43 = v12;
  v44 = v13;
  v45 = v14;
  v46 = v15;
  v47 = v16;
  v48 = v30;
  v49 = v31;
  v50 = v23;
  v51 = v25;
  v52 = v22;
  v53 = v21;
  result = sub_100060CF8(&v41);
  v18 = v39;
  *(a2 + 64) = v38;
  *(a2 + 80) = v18;
  *(a2 + 96) = v40;
  v19 = v35;
  *a2 = v34;
  *(a2 + 16) = v19;
  v20 = v37;
  *(a2 + 32) = v36;
  *(a2 + 48) = v20;
  return result;
}

unint64_t sub_100060C6C()
{
  result = qword_1000A6DC8;
  if (!qword_1000A6DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6DC8);
  }

  return result;
}

unint64_t sub_100060D98()
{
  result = qword_1000A6DD8;
  if (!qword_1000A6DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6DD8);
  }

  return result;
}

unint64_t sub_100060DF0()
{
  result = qword_1000A6DE0;
  if (!qword_1000A6DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6DE0);
  }

  return result;
}

unint64_t sub_100060E48()
{
  result = qword_1000A6DE8;
  if (!qword_1000A6DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6DE8);
  }

  return result;
}

unint64_t sub_100060EA0()
{
  result = qword_1000A6E08;
  if (!qword_1000A6E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6E08);
  }

  return result;
}

void *sub_100060EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_100084958();
  v29 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100084998();
  v30 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005740(&qword_1000A6E98, &qword_10008EAF8);
  __chkstk_darwin(v13 - 8);
  v15 = &v27 - v14;
  ObjectType = swift_getObjectType();
  v17 = v31;
  v18 = (*(a2 + 24))(*(v4 + 8), *(v4 + 16), a3, ObjectType, a2);
  if (!v17)
  {
    v19 = v30;
    v31 = 0;
    v28 = type metadata accessor for ICFolderArchiveModel(0);
    sub_10006652C(v4 + *(v28 + 44), v15);
    v20 = type metadata accessor for ICFolderArchiveModel.Query(0);
    if ((*(*(v20 - 8) + 48))(v15, 1, v20) == 1)
    {
      sub_1000058F0(v15, &qword_1000A6E98, &qword_10008EAF8);
      v21 = 0;
    }

    else
    {
      (*(v19 + 16))(v12, v15, v10);
      (*(v29 + 16))(v9, &v15[*(v20 + 20)], v7);
      v22 = objc_allocWithZone(sub_100084CC8());
      v21 = sub_100084CA8();
      sub_1000664CC(v15, type metadata accessor for ICFolderArchiveModel.Query);
    }

    [v18 setSmartFolderQueryObjC:v21];

    if ([v18 isRenamable])
    {

      v23 = sub_100085068();

      [v18 setTitle:v23];
    }

    if ([v18 supportsCustomNoteSortType])
    {
      v24 = *(v4 + *(v28 + 48));
      if ((v24 & 0xFF00) == 0x200)
      {
        v25 = 0;
      }

      else
      {
        v25 = [objc_opt_self() folderNoteSortTypeWithOrder:qword_10008F3D8[v24] direction:(v24 >> 8) & 1];
      }

      [v18 setCustomNoteSortType:v25];
    }
  }

  return v18;
}

id sub_1000612DC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ICFolderArchiveModel(0);
  v5 = *(v2 + v4[13]);
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = 0;
  v8 = v5 + 40;
  v23 = v6 - 1;
  v24 = v5 + 40;
  do
  {
    v9 = (v8 + 16 * v7);
    v10 = v7;
    while (1)
    {
      if (v10 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (!*(a2 + 16))
      {
        goto LABEL_6;
      }

      v11 = *(v9 - 1);
      v12 = *v9;

      v13 = sub_100039138(v11, v12);
      if (v14)
      {
        if ([*(*(a2 + 56) + 8 * v13) identifier])
        {
          break;
        }
      }

LABEL_6:
      ++v10;
      v9 += 2;
      if (v6 == v10)
      {
        goto LABEL_14;
      }
    }

    sub_1000851F8();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100085228();
    }

    v7 = v10 + 1;
    v4 = sub_100085258();
    v8 = v5 + 40;
  }

  while (v23 != v10);
LABEL_14:
  v15 = [a1 subFolderIdentifiersOrderedSet];
  [v15 removeAllObjects];

  v4 = [a1 subFolderIdentifiersOrderedSet];
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_30;
  }

  v16 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v4 = v4;
    v17 = v4;
    if (!v16)
    {
      break;
    }

    v18 = 0;
    while (1)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v4 = sub_100085648();
      }

      else
      {
        if (v18 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v4 = _swiftEmptyArrayStorage[v18 + 4];
      }

      v19 = v4;
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      [v17 addObject:v4];

      ++v18;
      if (v20 == v16)
      {
        goto LABEL_25;
      }
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v22 = v4;
    v16 = sub_100085718();
    v4 = v22;
  }

LABEL_25:

  [a1 setSubFolderOrderMergeableDataDirty:1];
  [a1 saveSubFolderMergeableDataIfNeeded];
  return [a1 subFolderIdentifiersOrderedSetDocument];
}

uint64_t sub_1000615AC(uint64_t a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A5498, &qword_10008AA30);
  __chkstk_darwin(v5 - 8);
  v37 = v30 - v6;
  v7 = sub_100005740(&qword_1000A54A0, &qword_10008AA38);
  __chkstk_darwin(v7 - 8);
  v9 = v30 - v8;
  v10 = sub_100084C78();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v34 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = _s8ActivityVMa(0);
  v13 = *(v33 - 8);
  __chkstk_darwin(v33);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + *(type metadata accessor for ICFolderArchiveModel(0) + 56));
  if (!v16)
  {
    return 0;
  }

  v30[1] = a1;
  v30[2] = v2;
  v44 = _swiftEmptyArrayStorage;
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v16 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v19 = *(v13 + 72);
    v35 = (v11 + 48);
    v36 = v19;
    v31 = (v11 + 8);
    v32 = (v11 + 32);
    v38 = v15;
    while (1)
    {
      sub_100066464(v18, v15, _s8ActivityVMa);
      IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
      v24 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
      v39[0] = IsAlexandriaDemoModeEnabled;
      v39[1] = v24;
      v41 = 0;
      v42 = 0;
      v40 = 0;
      v43 = 2;
      sub_100002CD4(v39, v9);
      if ((*v35)(v9, 1, v10) == 1)
      {
        break;
      }

      v25 = v34;
      (*v32)(v34, v9, v10);
      sub_100008250(0, &qword_1000A54A8, ICCloudSyncingObject_ptr);
      v26 = v37;
      sub_1000034D0(v39, v37);
      v27 = sub_100085418();
      v28 = v26;
      v15 = v38;
      sub_1000058F0(v28, &qword_1000A5498, &qword_10008AA30);
      (*v31)(v25, v10);
      sub_1000664CC(v15, _s8ActivityVMa);
      if (v27)
      {
        goto LABEL_5;
      }

LABEL_8:
      v18 += v36;
      if (!--v17)
      {
        goto LABEL_12;
      }
    }

    sub_1000058F0(v9, &qword_1000A54A0, &qword_10008AA38);
    sub_100008250(0, &qword_1000A54A8, ICCloudSyncingObject_ptr);
    v20 = v9;
    v21 = v37;
    sub_1000034D0(v39, v37);
    v15 = v38;
    sub_100085428();
    v22 = v21;
    v9 = v20;
    sub_1000058F0(v22, &qword_1000A5498, &qword_10008AA30);
    sub_1000664CC(v15, _s8ActivityVMa);
LABEL_5:
    sub_1000851F8();
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100085228();
    }

    sub_100085258();
    goto LABEL_8;
  }

LABEL_12:
  sub_100085448();
  return sub_100085438();
}

uint64_t sub_100061A58()
{
  v0 = sub_100084FB8();
  sub_10000B64C(v0, qword_1000A6DF0);
  sub_10000B614(v0, qword_1000A6DF0);
  return sub_100084F98();
}

unint64_t sub_100061AA4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6E65644965707974;
    v7 = 0xD000000000000010;
    v8 = 0x6954746E65726170;
    if (a1 != 3)
    {
      v8 = 0xD000000000000013;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x696669746E656469;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x74726F5365746F6ELL;
    v2 = 0xD000000000000014;
    if (a1 != 9)
    {
      v2 = 0x6974697669746361;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x656C746974;
    v4 = 1701869940;
    if (a1 != 6)
    {
      v4 = 0x7972657571;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100061C24(void *a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A70D0, &qword_10008F2A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10000626C(a1, a1[3]);
  sub_100067238();
  sub_100085A78();
  LOBYTE(v11) = *v3;
  v12 = 0;
  sub_100040CF8();
  sub_1000858D8();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_100085898();
    LOBYTE(v11) = 2;
    sub_100085848();
    LOBYTE(v11) = 3;
    sub_100085848();
    LOBYTE(v11) = 4;
    sub_100085858();
    LOBYTE(v11) = 5;
    sub_100085848();
    LOBYTE(v11) = v3[80];
    v12 = 6;
    sub_10006728C();
    sub_100085888();
    v9 = type metadata accessor for ICFolderArchiveModel(0);
    LOBYTE(v11) = 7;
    type metadata accessor for ICFolderArchiveModel.Query(0);
    sub_1000651A0(&qword_1000A70E8, type metadata accessor for ICFolderArchiveModel.Query, &unk_10008EBB0);
    sub_100085888();
    LOWORD(v11) = *&v3[v9[12]];
    v12 = 8;
    sub_1000672E0();
    sub_100085888();
    v11 = *&v3[v9[13]];
    v12 = 9;
    sub_100005740(&qword_1000A6588, &qword_10008CE68);
    sub_100041558(&qword_1000A6590, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_100085888();
    v11 = *&v3[v9[14]];
    v12 = 10;
    sub_100005740(&unk_1000A6F28, &qword_10008EB50);
    sub_100067334(&qword_1000A70F8, &qword_1000A7100, &unk_10008ADAC, &protocol conformance descriptor for <A> [A]);
    sub_100085888();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10006204C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_100005740(&qword_1000A6E98, &qword_10008EAF8);
  __chkstk_darwin(v4 - 8);
  v6 = v29 - v5;
  v7 = sub_100005740(&qword_1000A7108, &qword_10008F2B0);
  v31 = *(v7 - 8);
  v32 = v7;
  __chkstk_darwin(v7);
  v9 = v29 - v8;
  v10 = type metadata accessor for ICFolderArchiveModel(0);
  v11 = __chkstk_darwin(v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 44);
  v15 = type metadata accessor for ICFolderArchiveModel.Query(0);
  v16 = *(*(v15 - 8) + 56);
  v34 = v14;
  v35 = v13;
  v16(&v13[v14], 1, 1, v15);
  v17 = a1[3];
  v33 = a1;
  sub_10000626C(a1, v17);
  sub_100067238();
  sub_100085A68();
  if (v2)
  {
    v18 = v34;
    v20 = v35;
    sub_100006304(v33);
    swift_bridgeObjectRelease_n();

    sub_1000058F0(&v20[v18], &qword_1000A6E98, &qword_10008EAF8);
  }

  else
  {
    v29[2] = v15;
    v37 = 0;
    sub_100041428();
    sub_100085828();
    v19 = v34;
    v22 = v35;
    *v35 = v36;
    LOBYTE(v36) = 1;
    *(v22 + 1) = sub_1000857E8();
    *(v22 + 2) = v23;
    LOBYTE(v36) = 2;
    *(v22 + 3) = sub_100085798();
    *(v22 + 4) = v24;
    LOBYTE(v36) = 3;
    *(v22 + 5) = sub_100085798();
    *(v22 + 6) = v25;
    v29[1] = v25;
    LOBYTE(v36) = 4;
    v22[56] = sub_1000857A8();
    LOBYTE(v36) = 5;
    *(v22 + 8) = sub_100085798();
    *(v22 + 9) = v26;
    v29[0] = v26;
    v37 = 6;
    sub_100066DB4();
    sub_1000857D8();
    v22[80] = v36;
    LOBYTE(v36) = 7;
    sub_1000651A0(&qword_1000A6E10, type metadata accessor for ICFolderArchiveModel.Query, &unk_10008EAB8);
    sub_1000857D8();
    sub_100066390(v6, &v22[v19]);
    v37 = 8;
    sub_100060EA0();
    sub_1000857D8();
    *&v22[v10[12]] = v36;
    sub_100005740(&qword_1000A6588, &qword_10008CE68);
    v37 = 9;
    sub_100041558(&qword_1000A65C0, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1000857D8();
    *&v35[v10[13]] = v36;
    sub_100005740(&unk_1000A6F28, &qword_10008EB50);
    v37 = 10;
    sub_100067334(&qword_1000A7110, &qword_1000A7118, &unk_10008ADD4, &protocol conformance descriptor for <A> [A]);
    sub_1000857D8();
    v27 = v10[14];
    (*(v31 + 8))(v9, v32);
    v28 = v35;
    *&v35[v27] = v36;
    sub_100066464(v28, v30, type metadata accessor for ICFolderArchiveModel);
    sub_100006304(v33);
    return sub_1000664CC(v28, type metadata accessor for ICFolderArchiveModel);
  }
}

uint64_t sub_100062774@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100065640(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000627A8(uint64_t a1)
{
  v2 = sub_100067238();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000627E4(uint64_t a1)
{
  v2 = sub_100067238();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100062820(void *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a2;
  v5 = _s8ActivityVMa(0);
  v83 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005740(&qword_1000A6E98, &qword_10008EAF8);
  __chkstk_darwin(v8 - 8);
  v10 = &v77 - v9;
  *a3 = 2;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 2;
  *(a3 + 80) = 3;
  v11 = type metadata accessor for ICFolderArchiveModel(0);
  v12 = *(v11 + 44);
  v13 = type metadata accessor for ICFolderArchiveModel.Query(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v78 = v12;
  v15(a3 + v12, 1, 1, v13);
  v80 = v11;
  v81 = a1;
  v17 = *(v11 + 56);
  v82 = a3;
  v77 = v17;
  *(a3 + v17) = 0;
  v18 = [a1 identifier];
  if (v18)
  {
    v19 = v18;
    v20 = sub_100085098();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xE000000000000000;
  }

  v23 = v81;
  v24 = v82;
  v82[1] = v20;
  v24[2] = v22;
  v25 = [v23 title];
  v26 = sub_100085098();
  v28 = v27;

  v24[8] = v26;
  v24[9] = v28;
  v29 = [v23 smartFolderQueryObjC];
  if (v29)
  {
    v30 = v29;
    sub_100084CB8();
    sub_100084C98();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v15(v10, v31, 1, v13);
  sub_100066390(v10, v82 + v78);
  v32 = v81;
  v33 = [v81 customNoteSortType];
  if (!v33)
  {
    goto LABEL_11;
  }

  v34 = v33;
  if ([v33 isDefault] || (v35 = sub_1000651E8(objc_msgSend(v34, "order")), v35 == 3))
  {

LABEL_11:
    v36 = 512;
    goto LABEL_12;
  }

  v51 = v35;
  v52 = sub_10006538C([v34 direction]);

  if (v52 == 2)
  {
    goto LABEL_11;
  }

  v36 = v51 | ((v52 & 1) << 8);
LABEL_12:
  *(v82 + *(v80 + 48)) = v36;
  v37 = [v32 subFolderIdentifiersOrderedSet];
  v38 = [v37 allObjects];

  sub_100008250(0, &qword_1000A64F8, NSString_ptr);
  v39 = sub_100085208();

  if (v39 >> 62)
  {
    v40 = sub_100085718();
    if (v40)
    {
      goto LABEL_14;
    }

LABEL_26:

    v42 = _swiftEmptyArrayStorage;
    goto LABEL_27;
  }

  v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v40)
  {
    goto LABEL_26;
  }

LABEL_14:
  v84 = _swiftEmptyArrayStorage;
  sub_10003BCC0(0, v40 & ~(v40 >> 63), 0);
  if (v40 < 0)
  {
    __break(1u);
    goto LABEL_52;
  }

  v41 = 0;
  v42 = v84;
  do
  {
    if ((v39 & 0xC000000000000001) != 0)
    {
      v43 = sub_100085648();
    }

    else
    {
      v43 = *(v39 + 8 * v41 + 32);
    }

    v44 = v43;
    v45 = sub_100085098();
    v47 = v46;

    v84 = v42;
    v49 = v42[2];
    v48 = v42[3];
    if (v49 >= v48 >> 1)
    {
      sub_10003BCC0((v48 > 1), v49 + 1, 1);
      v42 = v84;
    }

    ++v41;
    v42[2] = v49 + 1;
    v50 = &v42[2 * v49];
    v50[4] = v45;
    v50[5] = v47;
  }

  while (v40 != v41);

  v32 = v81;
LABEL_27:
  v37 = v79;
  *(v82 + *(v80 + 52)) = v42;
  if ((v37[56] & 1) == 0)
  {
    sub_100030518(v37);
    if (v37[59])
    {
      goto LABEL_42;
    }

LABEL_54:

    return;
  }

  v53 = v32;
  v16 = sub_100085438();

  if (!(v16 >> 62))
  {
    v54 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v54)
    {
      goto LABEL_30;
    }

    goto LABEL_53;
  }

LABEL_52:
  v54 = sub_100085718();
  if (!v54)
  {
LABEL_53:

    sub_100030518(v37);
    *(v82 + v77) = _swiftEmptyArrayStorage;
    if (v37[59])
    {
      goto LABEL_42;
    }

    goto LABEL_54;
  }

LABEL_30:
  v84 = _swiftEmptyArrayStorage;
  sub_10003BD68(0, v54 & ~(v54 >> 63), 0);
  if (v54 < 0)
  {
    __break(1u);
    return;
  }

  v55 = 0;
  v56 = v84;
  do
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v57 = sub_100085648();
    }

    else
    {
      v57 = *(v16 + 8 * v55 + 32);
    }

    sub_100001B78(v57, v7);
    v84 = v56;
    v59 = v56[2];
    v58 = v56[3];
    if (v59 >= v58 >> 1)
    {
      sub_10003BD68((v58 > 1), v59 + 1, 1);
      v56 = v84;
    }

    ++v55;
    v56[2] = v59 + 1;
    sub_100066400(v7, v56 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v59);
  }

  while (v54 != v55);

  v60 = v79;
  sub_100030518(v79);
  *(v82 + v77) = v56;
  if ((*(v60 + 59) & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_42:
  v61 = [v32 parent];
  if (v61 && (v62 = v61, v63 = [v61 identifier], v62, v63) || (v64 = objc_msgSend(v32, "account"), v63 = objc_msgSend(v64, "identifier"), v64, v63))
  {
    v65 = sub_100085098();
    v67 = v66;
  }

  else
  {
    v65 = 0;
    v67 = 0;
  }

  v68 = v82;
  v82[3] = v65;
  v68[4] = v67;
  v69 = [v32 parent];
  if (v69)
  {
    v70 = v69;
    v71 = [v69 title];
  }

  else
  {
    v70 = [v32 account];
    v71 = [v70 localizedName];
  }

  v72 = v71;

  v73 = sub_100085098();
  v75 = v74;

  v76 = v82;
  v82[5] = v73;
  v76[6] = v75;
  *(v76 + 56) = [v32 markedForDeletion];
  LOBYTE(v72) = sub_100065494([v32 folderType]);

  *(v76 + 80) = v72;
}

uint64_t sub_100062FCC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4853415254;
  if (v2 != 1)
  {
    v3 = 0x5452414D53;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x4C414D524F4ELL;
  }

  if (v2)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  v6 = 0x4853415254;
  if (*a2 != 1)
  {
    v6 = 0x5452414D53;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x4C414D524F4ELL;
  }

  if (*a2)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100085948();
  }

  return v9 & 1;
}

Swift::Int sub_1000630BC()
{
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_100063154(uint64_t a1)
{
  sub_100085118();
}

Swift::Int sub_1000631D8(uint64_t a1)
{
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

unint64_t sub_10006326C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000659CC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10006329C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x4853415254;
  if (v2 != 1)
  {
    v4 = 0x5452414D53;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x4C414D524F4ELL;
  }

  if (!v5)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_100063408(void *a1)
{
  v3 = sub_100005740(&qword_1000A7130, &qword_10008F2B8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000626C(a1, a1[3]);
  sub_10006514C();
  sub_100085A78();
  v8[15] = 0;
  sub_100084998();
  sub_1000651A0(&qword_1000A7138, &type metadata accessor for ICQueryEntity, &protocol conformance descriptor for ICQueryEntity);
  sub_1000858D8();
  if (!v1)
  {
    type metadata accessor for ICFolderArchiveModel.Query(0);
    v8[14] = 1;
    sub_100084958();
    sub_1000651A0(&qword_1000A7140, &type metadata accessor for ICQueryType, &protocol conformance descriptor for ICQueryType);
    sub_1000858D8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100063608@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = sub_100084958();
  v21 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100084998();
  v23 = *(v27 - 8);
  __chkstk_darwin(v27);
  v25 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100005740(&qword_1000A6E18, &qword_10008EAE0);
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v8 = &v19 - v7;
  v9 = type metadata accessor for ICFolderArchiveModel.Query(0);
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000626C(a1, a1[3]);
  sub_10006514C();
  sub_100085A68();
  if (v2)
  {
    return sub_100006304(a1);
  }

  v20 = v9;
  v12 = v11;
  v14 = v23;
  v13 = v24;
  v30 = 0;
  sub_1000651A0(&qword_1000A6E28, &type metadata accessor for ICQueryEntity, &protocol conformance descriptor for ICQueryEntity);
  v15 = v25;
  sub_100085828();
  v16 = *(v14 + 32);
  v19 = v12;
  v16(v12, v15, v27);
  v29 = 1;
  sub_1000651A0(&qword_1000A6E30, &type metadata accessor for ICQueryType, &protocol conformance descriptor for ICQueryType);
  sub_100085828();
  (*(v26 + 8))(v8, v28);
  v17 = v19;
  (*(v21 + 32))(v19 + *(v20 + 20), v5, v13);
  sub_100066464(v17, v22, type metadata accessor for ICFolderArchiveModel.Query);
  sub_100006304(a1);
  return sub_1000664CC(v17, type metadata accessor for ICFolderArchiveModel.Query);
}

uint64_t sub_100063A44()
{
  if (*v0)
  {
    return 1701869940;
  }

  else
  {
    return 0x797469746E65;
  }
}

uint64_t sub_100063A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x797469746E65 && a2 == 0xE600000000000000;
  if (v6 || (sub_100085948() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100085948();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100063B4C(uint64_t a1)
{
  v2 = sub_10006514C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100063B88(uint64_t a1)
{
  v2 = sub_10006514C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100063BF4()
{
  v0 = sub_100084958();
  v1 = *(v0 - 8);
  v2 = v1;
  __chkstk_darwin(v0);
  v4 = (v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_100084998();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = v8;
  v9 = type metadata accessor for ICFolderArchiveModel.Query(0);
  v21[3] = v9;
  sub_10000B64C(v9, qword_1000B17D8);
  v21[2] = sub_10000B614(v9, qword_1000B17D8);
  (*(v6 + 104))(v8, enum case for ICQueryEntity.note(_:), v5);
  v10 = swift_allocObject();
  sub_100005740(&qword_1000A6E70, &qword_10008EAE8);
  v11 = *(v1 + 72);
  v12 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10008EA00;
  v14 = (v13 + v12);
  v15 = swift_allocObject();
  *(v15 + 16) = 1;
  *v14 = v15;
  v16 = enum case for ICQueryType.deleted(_:);
  v17 = *(v2 + 104);
  v17(v14, enum case for ICQueryType.deleted(_:), v0);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v14 + v11) = v18;
  v17((v14 + v11), v16, v0);
  *(v10 + 16) = v13;
  *v4 = v10;
  v17(v4, enum case for ICQueryType.or(_:), v0);
  v19 = objc_allocWithZone(sub_100084CC8());
  v20 = sub_100084CA8();
  sub_100084CB8();
  sub_100084C98();
}

uint64_t sub_100063ED4@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_1000850C8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000850B8();
  v8 = sub_1000850A8();
  v10 = v9;

  (*(v5 + 8))(v7, v4);
  if (v10 >> 60 == 15)
  {
    v11 = type metadata accessor for ICFolderArchiveModel.Query(0);
    return (*(*(v11 - 8) + 56))(a3, 1, 1, v11);
  }

  else
  {
    sub_1000844D8();
    swift_allocObject();
    sub_1000844C8();
    sub_100084CC8();
    sub_1000651A0(&qword_1000A6E68, &type metadata accessor for ICQuery, &protocol conformance descriptor for ICQuery);
    sub_1000844B8();

    v12 = v15[1];
    sub_100084CB8();
    v13 = type metadata accessor for ICFolderArchiveModel.Query(0);
    sub_100084C98();

    sub_10001C19C(v8, v10);
    return (*(*(v13 - 8) + 56))(a3, 0, 1, v13);
  }
}

uint64_t sub_100064130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1000A5448 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = sub_10000B614(a1, qword_1000B17D8);
  return sub_100066464(v3, a2, type metadata accessor for ICFolderArchiveModel.Query);
}

uint64_t sub_1000641D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4445494649444F4DLL;
  v4 = 0xEB0000000054415FLL;
  if (v2 != 1)
  {
    v3 = 0x454C544954;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x5F44455441455243;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000005441;
  }

  v7 = 0x4445494649444F4DLL;
  v8 = 0xEB0000000054415FLL;
  if (*a2 != 1)
  {
    v7 = 0x454C544954;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x5F44455441455243;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000005441;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100085948();
  }

  return v11 & 1;
}

Swift::Int sub_1000642DC()
{
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_100064388(uint64_t a1)
{
  sub_100085118();
}

Swift::Int sub_100064420(uint64_t a1)
{
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

unint64_t sub_1000644C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100065C58(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000644F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000005441;
  v4 = 0xEB0000000054415FLL;
  v5 = 0x4445494649444F4DLL;
  if (v2 != 1)
  {
    v5 = 0x454C544954;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x5F44455441455243;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100064678(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x49444E4543534544;
  }

  else
  {
    v3 = 0x4E49444E45435341;
  }

  if (v2)
  {
    v4 = 0xE900000000000047;
  }

  else
  {
    v4 = 0xEA0000000000474ELL;
  }

  if (*a2)
  {
    v5 = 0x49444E4543534544;
  }

  else
  {
    v5 = 0x4E49444E45435341;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000474ELL;
  }

  else
  {
    v6 = 0xE900000000000047;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100085948();
  }

  return v8 & 1;
}

Swift::Int sub_100064728()
{
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_1000647B4(uint64_t a1)
{
  sub_100085118();
}

Swift::Int sub_10006482C(uint64_t a1)
{
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_1000648B4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10009E3D8;
  v8._object = v3;
  v5 = sub_100085788(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_100064914(uint64_t *a1@<X8>)
{
  v2 = 0x4E49444E45435341;
  if (*v1)
  {
    v2 = 0x49444E4543534544;
  }

  v3 = 0xE900000000000047;
  if (*v1)
  {
    v3 = 0xEA0000000000474ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100064A1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065B68();
  v5 = sub_100065BBC();

  return static ArgumentDecodable<>.defaultArgument.getter(a1, a2, v4, v5, &protocol witness table for String);
}

uint64_t sub_100064A8C(void *a1, __int16 a2)
{
  v5 = sub_100005740(&qword_1000A7148, &qword_10008F2C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000626C(a1, a1[3]);
  sub_100065E84();
  sub_100085A78();
  v10[15] = a2;
  v10[14] = 0;
  sub_100067478();
  sub_1000858D8();
  if (!v2)
  {
    v10[13] = HIBYTE(a2) & 1;
    v10[12] = 1;
    sub_1000674CC();
    sub_1000858D8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100064C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a5();
  a6();

  return sub_100084A28();
}

uint64_t sub_100064D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a5();
  a6();

  return sub_100084A48();
}

uint64_t sub_100064D94()
{
  if (*v0)
  {
    return 0x6F69746365726964;
  }

  else
  {
    return 0x726564726FLL;
  }
}

uint64_t sub_100064DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726564726FLL && a2 == 0xE500000000000000;
  if (v6 || (sub_100085948() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100085948();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100064EB0(uint64_t a1)
{
  v2 = sub_100065E84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100064EEC(uint64_t a1)
{
  v2 = sub_100065E84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100064F28@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_100065CA4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_100064F5C(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_100064A8C(a1, v2 | *v1);
}

void sub_100064F8C()
{
  v0 = [objc_allocWithZone(ICFolderCustomNoteSortType) init];
  if ([v0 isDefault] || (v1 = sub_1000651E8(objc_msgSend(v0, "order")), v1 == 3))
  {

    v2 = 0;
    v3 = 0;
  }

  else
  {
    v4 = v1;
    v3 = sub_10006538C([v0 direction]);

    if (v3 == 2)
    {
      v2 = 0;
    }

    else
    {
      v2 = v4;
    }
  }

  byte_1000B17F0 = v2;
  byte_1000B17F1 = v3 & 1;
}

uint64_t sub_10006504C@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1000A5450 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = byte_1000B17F1;
  *a1 = byte_1000B17F0;
  a1[1] = v1;
  return result;
}

uint64_t sub_1000650BC@<X0>(_WORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100065F80(a2, a3);
  *a1 = result;
  return result;
}

unint64_t sub_10006514C()
{
  result = qword_1000A6E20;
  if (!qword_1000A6E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6E20);
  }

  return result;
}

uint64_t sub_1000651A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000651E8(uint64_t result)
{
  if (result <= 1)
  {
    if (!result)
    {
      if (qword_1000A5440 != -1)
      {
        swift_once();
      }

      v6 = sub_100084FB8();
      sub_10000B614(v6, qword_1000A6DF0);
      v2 = sub_100084FA8();
      v3 = sub_100085378();
      if (!os_log_type_enabled(v2, v3))
      {
        goto LABEL_17;
      }

      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Cannot serialize default note sort order — returning nil";
      goto LABEL_16;
    }

    if (result == 1)
    {
      return result;
    }

LABEL_8:
    if (qword_1000A5440 != -1)
    {
      swift_once();
    }

    v1 = sub_100084FB8();
    sub_10000B614(v1, qword_1000A6DF0);
    v2 = sub_100084FA8();
    v3 = sub_100085388();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_17;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Unknown note sort order — returning nil";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v2, v3, v5, v4, 2u);

LABEL_17:

    return 3;
  }

  if (result != 2)
  {
    if (result == 3)
    {
      return 2;
    }

    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_10006538C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (a1 == 1)
  {
    return 1;
  }

  if (qword_1000A5440 != -1)
  {
    swift_once();
  }

  v2 = sub_100084FB8();
  sub_10000B614(v2, qword_1000A6DF0);
  v3 = sub_100084FA8();
  v4 = sub_100085388();
  if (os_log_type_enabled(v3, v4))
  {
    v1 = 2;
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unknown note sort direction — returning nil", v5, 2u);
  }

  else
  {

    return 2;
  }

  return v1;
}

uint64_t sub_100065494(unsigned __int16 a1)
{
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        if (qword_1000A5440 != -1)
        {
          swift_once();
        }

        v2 = sub_100084FB8();
        sub_10000B614(v2, qword_1000A6DF0);
        v3 = sub_100084FA8();
        v4 = sub_100085388();
        if (!os_log_type_enabled(v3, v4))
        {
          goto LABEL_16;
        }

        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "Deprecated folder type — returning nil";
        goto LABEL_15;
      }

LABEL_11:
      if (qword_1000A5440 != -1)
      {
        swift_once();
      }

      v7 = sub_100084FB8();
      sub_10000B614(v7, qword_1000A6DF0);
      v3 = sub_100084FA8();
      v4 = sub_100085388();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_16;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Unknown folder type — returning nil";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v3, v4, v6, v5, 2u);

LABEL_16:

      return 3;
    }

    return 2;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 1;
      }

      goto LABEL_11;
    }

    return 0;
  }
}

uint64_t sub_100065640(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974;
  if (v4 || (sub_100085948() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_100085948() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000871D0 == a2 || (sub_100085948() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6954746E65726170 && a2 == 0xEB00000000656C74 || (sub_100085948() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000871F0 == a2 || (sub_100085948() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_100085948() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_100085948() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7972657571 && a2 == 0xE500000000000000 || (sub_100085948() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x74726F5365746F6ELL && a2 == 0xEB00000000676E69 || (sub_100085948() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100087290 == a2 || (sub_100085948() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6974697669746361 && a2 == 0xEA00000000007365)
  {

    return 10;
  }

  else
  {
    v6 = sub_100085948();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

unint64_t sub_1000659CC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10009E2B8;
  v6._object = a2;
  v4 = sub_100085788(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100065A18()
{
  result = qword_1000A6E38;
  if (!qword_1000A6E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6E38);
  }

  return result;
}

unint64_t sub_100065A6C()
{
  result = qword_1000A6E40;
  if (!qword_1000A6E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6E40);
  }

  return result;
}

unint64_t sub_100065AC0()
{
  result = qword_1000A6E48;
  if (!qword_1000A6E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6E48);
  }

  return result;
}

unint64_t sub_100065B14()
{
  result = qword_1000A6E50;
  if (!qword_1000A6E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6E50);
  }

  return result;
}

unint64_t sub_100065B68()
{
  result = qword_1000A6E58;
  if (!qword_1000A6E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6E58);
  }

  return result;
}

unint64_t sub_100065BBC()
{
  result = qword_1000A6E60;
  if (!qword_1000A6E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6E60);
  }

  return result;
}

uint64_t sub_100065C10()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100065C58(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10009E348;
  v6._object = a2;
  v4 = sub_100085788(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100065CA4(void *a1)
{
  v3 = sub_100005740(&qword_1000A6E78, &qword_10008EAF0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-v5];
  sub_10000626C(a1, a1[3]);
  sub_100065E84();
  sub_100085A68();
  if (v1)
  {
    return sub_100006304(a1);
  }

  v11[14] = 0;
  sub_100065ED8();
  sub_100085828();
  v7 = v11[15];
  v11[12] = 1;
  sub_100065F2C();
  sub_100085828();
  (*(v4 + 8))(v6, v3);
  v9 = v11[13];
  sub_100006304(a1);
  if (v9)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  return v10 | v7;
}

unint64_t sub_100065E84()
{
  result = qword_1000A6E80;
  if (!qword_1000A6E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6E80);
  }

  return result;
}

unint64_t sub_100065ED8()
{
  result = qword_1000A6E88;
  if (!qword_1000A6E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6E88);
  }

  return result;
}

unint64_t sub_100065F2C()
{
  result = qword_1000A6E90;
  if (!qword_1000A6E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6E90);
  }

  return result;
}

uint64_t sub_100065F80(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  sub_10001D33C();
  v2 = sub_1000854F8();

  if (*(v2 + 16) == 2 && (sub_100065A18(), sub_100065A6C(), sub_100065AC0(), , result = sub_100084A28(), v4 != 3))
  {
    if (*(v2 + 16) < 2uLL)
    {
      __break(1u);
    }

    else
    {

      sub_100065B14();
      sub_100065B68();
      sub_100065BBC();
      sub_100084A28();
      if (v4 == 2)
      {
        return 512;
      }

      else
      {
        return v4 | ((v4 & 1) << 8);
      }
    }
  }

  else
  {

    return 512;
  }

  return result;
}

uint64_t sub_1000660F0(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v2 = sub_100084968();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v13 = 0xE000000000000000;
  v11 = enum case for AnsiStylings.cyan(_:);
  v6 = *(v3 + 104);
  v6(v5);
  sub_100085918();
  v7 = *(v3 + 8);
  v7(v5, v2);
  sub_100065A18();
  sub_100065A6C();
  sub_100065AC0();
  v14._countAndFlagsBits = sub_100084A48();
  sub_100085158(v14);

  v8 = enum case for AnsiStylings.reset(_:);
  (v6)(v5, enum case for AnsiStylings.reset(_:), v2);
  sub_100085918();
  v7(v5, v2);
  v15._countAndFlagsBits = 44;
  v15._object = 0xE100000000000000;
  sub_100085158(v15);
  (v6)(v5, v11, v2);
  sub_100085918();
  v7(v5, v2);
  sub_100065B14();
  sub_100065B68();
  sub_100065BBC();
  v16._countAndFlagsBits = sub_100084A48();
  sub_100085158(v16);

  (v6)(v5, v8, v2);
  sub_100085918();
  v7(v5, v2);
  return v12;
}

uint64_t sub_100066390(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005740(&qword_1000A6E98, &qword_10008EAF8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100066400(uint64_t a1, uint64_t a2)
{
  v4 = _s8ActivityVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100066464(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000664CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10006652C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005740(&qword_1000A6E98, &qword_10008EAF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000665E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100005740(&qword_1000A6E98, &qword_10008EAF8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000666B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_100005740(&qword_1000A6E98, &qword_10008EAF8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100066768(uint64_t a1)
{
  sub_1000341B8(319, &qword_1000A5538, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_1000341B8(319, &unk_1000A5880, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      sub_1000341B8(319, &qword_1000A6F08, &type metadata for ICFolderArchiveModel.Types);
      if (v3 <= 0x3F)
      {
        sub_1000668E8(319);
        if (v4 <= 0x3F)
        {
          sub_1000341B8(319, &qword_1000A6F18, &type metadata for ICFolderArchiveModel.Sorting);
          if (v5 <= 0x3F)
          {
            sub_10005C578(319, &qword_1000A6A80, &qword_1000A6588, &qword_10008CE68);
            if (v6 <= 0x3F)
            {
              sub_10005C578(319, &qword_1000A6F20, &unk_1000A6F28, &qword_10008EB50);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000668E8(uint64_t a1)
{
  if (!qword_1000A6F10)
  {
    type metadata accessor for ICFolderArchiveModel.Query(255);
    v1 = sub_1000854E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1000A6F10);
    }
  }
}

uint64_t sub_100066974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100084998();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100084958();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100066A78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100084998();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100084958();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100066B74(uint64_t a1)
{
  result = sub_100084998();
  if (v2 <= 0x3F)
  {
    result = sub_100084958();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ICFolderArchiveModel.Sorting(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ICFolderArchiveModel.Sorting(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100066D5C()
{
  result = qword_1000A7010;
  if (!qword_1000A7010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7010);
  }

  return result;
}

unint64_t sub_100066DB4()
{
  result = qword_1000A7018;
  if (!qword_1000A7018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7018);
  }

  return result;
}

unint64_t sub_100066E3C()
{
  result = qword_1000A7030;
  if (!qword_1000A7030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7030);
  }

  return result;
}

uint64_t sub_100066E90(uint64_t a1)
{
  *(a1 + 8) = sub_1000651A0(&qword_1000A6710, type metadata accessor for ICFolderArchiveModel, &unk_10008EFF4);
  result = sub_1000651A0(&qword_1000A7070, type metadata accessor for ICFolderArchiveModel, &unk_10008F01C);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100066F18()
{
  result = qword_1000A7078;
  if (!qword_1000A7078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7078);
  }

  return result;
}

unint64_t sub_100066F70()
{
  result = qword_1000A7080;
  if (!qword_1000A7080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7080);
  }

  return result;
}

unint64_t sub_100066FC8()
{
  result = qword_1000A7088;
  if (!qword_1000A7088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7088);
  }

  return result;
}

unint64_t sub_100067020()
{
  result = qword_1000A7090;
  if (!qword_1000A7090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7090);
  }

  return result;
}

unint64_t sub_100067078()
{
  result = qword_1000A7098;
  if (!qword_1000A7098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7098);
  }

  return result;
}

uint64_t sub_100067130(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100011888(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006718C()
{
  result = qword_1000A70C0;
  if (!qword_1000A70C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A70C0);
  }

  return result;
}

unint64_t sub_1000671E4()
{
  result = qword_1000A70C8;
  if (!qword_1000A70C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A70C8);
  }

  return result;
}

unint64_t sub_100067238()
{
  result = qword_1000A70D8;
  if (!qword_1000A70D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A70D8);
  }

  return result;
}

unint64_t sub_10006728C()
{
  result = qword_1000A70E0;
  if (!qword_1000A70E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A70E0);
  }

  return result;
}

unint64_t sub_1000672E0()
{
  result = qword_1000A70F0;
  if (!qword_1000A70F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A70F0);
  }

  return result;
}

uint64_t sub_100067334(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100011888(&unk_1000A6F28, &qword_10008EB50);
    sub_1000651A0(a2, _s8ActivityVMa, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000673D0()
{
  result = qword_1000A7120;
  if (!qword_1000A7120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7120);
  }

  return result;
}

unint64_t sub_100067424()
{
  result = qword_1000A7128;
  if (!qword_1000A7128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7128);
  }

  return result;
}

unint64_t sub_100067478()
{
  result = qword_1000A7150;
  if (!qword_1000A7150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7150);
  }

  return result;
}

unint64_t sub_1000674CC()
{
  result = qword_1000A7158;
  if (!qword_1000A7158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7158);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ICFolderArchiveModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ICFolderArchiveModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100067674()
{
  result = qword_1000A7160;
  if (!qword_1000A7160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7160);
  }

  return result;
}

unint64_t sub_1000676CC()
{
  result = qword_1000A7168;
  if (!qword_1000A7168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7168);
  }

  return result;
}

unint64_t sub_100067724()
{
  result = qword_1000A7170;
  if (!qword_1000A7170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7170);
  }

  return result;
}

uint64_t sub_100067784()
{
  v1 = [v0 identifier];
  if (v1)
  {
    v2 = v1;
    sub_100085098();
  }

  v3 = sub_100085068();

  if ([v0 isURL])
  {
    goto LABEL_4;
  }

  if ([v0 hasFallbackPDF])
  {
    v5 = sub_100085068();
    v6 = [v3 stringByAppendingPathExtension:v5];

    if (!v6)
    {
LABEL_7:

      return 0x2E77656976657250;
    }
  }

  else
  {
    if (![v0 hasFallbackImage])
    {
      sub_100068978();
      v9 = sub_100085068();

      v10 = [v3 stringByAppendingPathExtension:v9];

      if (!v10)
      {
LABEL_4:

        return 0;
      }

      v8 = sub_100085098();

      return v8;
    }

    v7 = sub_100085068();
    v6 = [v3 stringByAppendingPathExtension:v7];

    if (!v6)
    {
      goto LABEL_7;
    }
  }

  v8 = sub_100085098();

  return v8;
}

uint64_t sub_10006799C()
{
  v1 = [v0 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_100085098();

  return v3;
}

uint64_t sub_100067A04()
{
  v0 = sub_100084FB8();
  sub_10000B64C(v0, qword_1000A7178);
  sub_10000B614(v0, qword_1000A7178);
  return sub_100084F98();
}

uint64_t sub_100067A50@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000847C8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100067AC8()
{
  v1 = [*v0 hashtags];
  sub_100008250(0, &qword_1000A64E8, ICHashtag_ptr);
  sub_1000697DC(&qword_1000A64F0, &qword_1000A64E8, ICHashtag_ptr);
  v2 = sub_100085298();

  v3 = sub_10003F0B8(v2);

  v4 = sub_100079D24(v3);

  return v4;
}

uint64_t sub_100067BA8(uint64_t a1)
{
  v3 = *v1;
  [v3 persistPendingChanges];
  v4 = v3;
  sub_100011A6C(a1, &v7);
  sub_100040688(v4, a1, &v7);
  if (qword_1000A53F0 != -1)
  {
    swift_once();
  }

  sub_100040C50();
  v5 = sub_100084508();
  sub_100040A64(&v7);
  return v5;
}

uint64_t sub_100067C98()
{
  v1 = [v0 visibleNotesInFolder];
  sub_100008250(0, &qword_1000A56C0, ICNote_ptr);
  v2 = sub_100085208();

  if (v2 >> 62)
  {
LABEL_13:
    v3 = sub_100085718();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = sub_100085648();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_11:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_13;
          }

          v5 = *(v2 + 8 * v4 + 32);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_11;
          }
        }

        v7 = v5;
        v8 = sub_100067E04();

        sub_100039460(v8);
        ++v4;
      }

      while (v6 != v3);
    }
  }

  v9 = sub_100079D24(_swiftEmptyArrayStorage);

  return v9;
}

void *sub_100067E04()
{
  v1 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  __chkstk_darwin(v1 - 8);
  v3 = &v39 - v2;
  v4 = _s3TagVMa(0);
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v39 - v8;
  v10 = [v0 account];
  if (!v10)
  {
    return &_swiftEmptySetSingleton;
  }

  v11 = v10;
  v12 = [v0 visibleInlineAttachments];
  sub_100008250(0, &qword_1000A56A8, ICInlineAttachment_ptr);
  sub_1000697DC(&qword_1000A7198, &qword_1000A56A8, ICInlineAttachment_ptr);
  v13 = sub_100085298();

  v14 = v11;
  sub_1000694B8(v13, v14);
  v16 = v15;

  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_4;
    }

LABEL_20:

    v21 = _swiftEmptyArrayStorage;
LABEL_21:
    v38 = sub_100079D24(v21);

    return v38;
  }

  v17 = sub_100085718();
  if (!v17)
  {
    goto LABEL_20;
  }

LABEL_4:
  v18 = v16;
  v45 = _swiftEmptyArrayStorage;
  result = sub_10003BCE0(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    v21 = v45;
    v22 = v18;
    v39 = v14;
    v40 = v18 & 0xC000000000000001;
    v41 = v17;
    v42 = v18;
    do
    {
      if (v40)
      {
        v23 = sub_100085648();
      }

      else
      {
        v23 = *(v22 + 8 * v20 + 32);
      }

      v24 = v23;
      v25 = sub_1000848B8();
      v26 = *(*(v25 - 8) + 56);
      v27 = 1;
      v26(v7, 1, 1, v25);
      v28 = [v24 creationDate];
      if (v28)
      {
        v29 = v28;
        sub_100084888();

        v27 = 0;
      }

      v26(v3, v27, 1, v25);
      sub_100040A94(v3, v7);
      v30 = [v24 displayText];
      if (v30)
      {
        v31 = v30;
        v32 = sub_100085098();
        v34 = v33;
      }

      else
      {

        v32 = 0;
        v34 = 0xE000000000000000;
      }

      v35 = &v7[*(v44 + 20)];
      *v35 = v32;
      v35[1] = v34;
      sub_10003DAC8(v7, v9);
      v45 = v21;
      v37 = v21[2];
      v36 = v21[3];
      if (v37 >= v36 >> 1)
      {
        sub_10003BCE0((v36 > 1), v37 + 1, 1);
        v21 = v45;
      }

      ++v20;
      v21[2] = v37 + 1;
      sub_10003DAC8(v9, v21 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v37);
      v22 = v42;
    }

    while (v41 != v20);

    v14 = v39;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_100068258(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  v5 = sub_100085098();

  return v5;
}

uint64_t sub_1000682E8(_BYTE *a1)
{
  v3 = type metadata accessor for ICFolderArchiveModel(0);
  __chkstk_darwin(v3);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v1;
  [v6 persistPendingChanges];
  v7 = v6;
  sub_100011A6C(a1, v10);
  sub_100062820(v7, a1, v5);
  if (qword_1000A53F0 != -1)
  {
    swift_once();
  }

  sub_100069794(&qword_1000A7070, type metadata accessor for ICFolderArchiveModel, &unk_10008F01C);
  v8 = sub_100084508();
  sub_10006982C(v5, type metadata accessor for ICFolderArchiveModel);
  return v8;
}

uint64_t sub_10006845C(void (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v1;
  v5 = sub_1000850C8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for ICNoteArchiveModel(0);
  __chkstk_darwin(v9);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  [v3 persistPendingChanges];
  v12 = v3;
  sub_100011A6C(a1, v21);
  sub_10007C7F8(v12, a1, v11);
  if (*a1)
  {
    if (!*&v11[*(v9 + 100) + 8] || (, sub_1000850B8(), v9 = sub_1000850A8(), v14 = v13, , (*(v6 + 8))(v8, v5), v14 >> 60 == 15))
    {
      if (qword_1000A5458 != -1)
      {
        swift_once();
      }

      v15 = sub_100084FB8();
      sub_10000B614(v15, qword_1000A7178);
      v16 = sub_100084FA8();
      v17 = sub_100085378();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "failed to encode markdown string", v18, 2u);
      }

      v9 = 0;
    }
  }

  else
  {
    if (qword_1000A53F0 != -1)
    {
      swift_once();
    }

    sub_100069794(&qword_1000A7190, type metadata accessor for ICNoteArchiveModel, &unk_10008FDB4);
    v19 = sub_100084508();
    if (!v2)
    {
      v9 = v19;
    }
  }

  sub_10006982C(v11, type metadata accessor for ICNoteArchiveModel);
  return v9;
}

uint64_t sub_1000687A8()
{
  v1 = [*v0 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_100085098();

  return v3;
}

id sub_100068858()
{
  if ([v0 isTable])
  {
    v1 = [v0 identifier];
    if (v1)
    {
      v2 = v1;
      v3 = sub_100085098();
      v5 = v4;
    }

    else
    {
      v5 = 0xE500000000000000;
      v3 = 0x656C626154;
    }

    v10._countAndFlagsBits = v3;
    v10._object = v5;
    sub_100085158(v10);

    v11._countAndFlagsBits = 1987273518;
    v11._object = 0xE400000000000000;
    sub_100085158(v11);
    return 0;
  }

  else
  {
    result = [v0 media];
    if (result)
    {
      v7 = result;
      v8 = [result filename];

      v9 = sub_100085098();
      return v9;
    }
  }

  return result;
}

uint64_t sub_100068978()
{
  v1 = v0;
  v2 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v14 - v6;
  if ([v1 isTable])
  {
    return 7762787;
  }

  result = [v1 media];
  if (result)
  {
    v9 = result;
    v10 = [result mediaURL];

    if (v10)
    {
      sub_100084768();

      v11 = sub_1000847C8();
      (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
    }

    else
    {
      v11 = sub_1000847C8();
      (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    }

    sub_100009B9C(v5, v7);
    sub_1000847C8();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v7, 1, v11) == 1)
    {
      sub_100069450(v7);
      return 0;
    }

    else
    {
      v13 = sub_100084698();
      (*(v12 + 8))(v7, v11);
      return v13;
    }
  }

  return result;
}

uint64_t sub_100068BB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  if ([v2 isPasswordProtected] || (v7 = objc_msgSend(v2, "media")) == 0)
  {
    v11 = sub_1000847C8();
    v12 = *(*(v11 - 8) + 56);

    return v12(a1, 1, 1, v11);
  }

  else
  {
    v8 = v7;
    v9 = [v7 mediaURL];

    if (v9)
    {
      sub_100084768();

      v10 = sub_1000847C8();
      (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    }

    else
    {
      v14 = sub_1000847C8();
      (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    }

    return sub_100009B9C(v6, a1);
  }
}

id sub_100068D7C()
{
  if (![v0 isTable])
  {
    result = [v0 media];
    if (!result)
    {
      return result;
    }

    v4 = result;
    v5 = [result cryptoStrategy];

    if (!v5)
    {
      return 0;
    }

    v3 = [v5 decryptedData];
    swift_unknownObjectRelease();
    if (!v3)
    {
      return 0;
    }

LABEL_8:
    v6 = sub_100084808();

    return v6;
  }

  result = [v0 tableModel];
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = [result csvData];

  if (v3)
  {
    goto LABEL_8;
  }

  return 0;
}

void *sub_100068E88()
{
  v1 = [v0 attachmentModel];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    sub_100005740(&qword_1000A5A50, &qword_10008B570);
    sub_1000847C8();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_10008EA00;
    v5 = [v3 paperBundleDatabaseSubdirectoryURL];
    sub_100084768();

    v6 = [v3 paperBundleAssetsSubdirectoryURL];
    sub_100084768();

    v7 = sub_10007A410(v4);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  else
  {
    v7 = &_swiftEmptySetSingleton;
  }

  return v7;
}

id sub_100069028()
{
  if ([v0 attachmentType] != 14 && objc_msgSend(v0, "attachmentType") != 15)
  {
    return 0;
  }

  result = [v0 fallbackPDFData];
  if (result)
  {
    v2 = result;
    v3 = sub_100084808();

    return v3;
  }

  return result;
}

uint64_t sub_1000690BC(_BYTE *a1)
{
  v3 = type metadata accessor for ICAttachmentArchiveModel(0);
  __chkstk_darwin(v3);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  [v1 persistPendingChanges];
  v6 = [v1 media];
  if (v6)
  {
    v7 = v6;
    [v6 persistPendingChanges];
  }

  v8 = v1;
  sub_100011A6C(a1, v11);
  sub_10005946C(v8, a1, v5);
  if (qword_1000A53F0 != -1)
  {
    swift_once();
  }

  sub_100069794(&qword_1000A6B98, type metadata accessor for ICAttachmentArchiveModel, &unk_10008E04C);
  v9 = sub_100084508();
  sub_10006982C(v5, type metadata accessor for ICAttachmentArchiveModel);
  return v9;
}

uint64_t sub_100069264()
{
  v1 = *v0;
  v2 = [*v0 userTitle];
  if (!v2)
  {
    v2 = [v1 title];
    if (!v2)
    {
      return 0;
    }
  }

  v3 = v2;
  v4 = sub_100085098();

  return v4;
}

uint64_t sub_10006937C()
{
  v1 = [*v0 fallbackImageData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_100084808();

  return v3;
}

uint64_t sub_100069450(uint64_t a1)
{
  v2 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000694B8(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_100085578();
    sub_100008250(0, &qword_1000A56A8, ICInlineAttachment_ptr);
    sub_1000697DC(&qword_1000A7198, &qword_1000A56A8, ICInlineAttachment_ptr);
    sub_1000852C8();
    v2 = v20;
    v3 = v21;
    v5 = v22;
    v4 = v23;
    v6 = v24;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v4 = 0;
  }

LABEL_8:
  v10 = v4;
  v11 = v6;
  while (1)
  {
    if (v2 < 0)
    {
      if (!sub_1000855D8() || (sub_100008250(0, &qword_1000A56A8, ICInlineAttachment_ptr), swift_dynamicCast(), v14 = v19, v4 = v10, v6 = v11, !v19))
      {
LABEL_24:
        sub_100010FF4(v2);
        return;
      }

      goto LABEL_18;
    }

    v12 = v10;
    v13 = v11;
    v4 = v10;
    if (!v11)
    {
      break;
    }

LABEL_14:
    v6 = (v13 - 1) & v13;
    v14 = *(*(v2 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_24;
    }

LABEL_18:
    if (![v14 isHashtagAttachment] || (v15 = objc_msgSend(v14, "tokenContentIdentifier")) == 0)
    {

      goto LABEL_8;
    }

    v16 = v15;
    v17 = [objc_opt_self() hashtagWithStandardizedContent:v15 onlyVisible:1 account:a2];

    v10 = v4;
    v11 = v6;
    if (v17)
    {
      sub_1000851F8();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100085228();
      }

      sub_100085258();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= ((v5 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v13 = *(v3 + 8 * v4);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_100069794(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000697DC(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100008250(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10006982C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Int ICMarkdownFlavor.hashValue.getter(unsigned __int8 a1)
{
  sub_100085A08();
  sub_100085A18(a1);
  return sub_100085A38();
}

unint64_t sub_100069918()
{
  result = qword_1000A71A0;
  if (!qword_1000A71A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A71A0);
  }

  return result;
}

uint64_t sub_1000699CC()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = swift_allocObject();
  swift_weakInit();
  v8 = sub_10007A408;
  v9 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100072320;
  ObjectType = &unk_1000A1568;
  v3 = _Block_copy(aBlock);

  v4 = [v1 addObserverForName:UIApplicationDidReceiveMemoryWarningNotification object:0 queue:0 usingBlock:v3];
  _Block_release(v3);

  ObjectType = swift_getObjectType();
  aBlock[0] = v4;
  swift_beginAccess();
  sub_100005820(aBlock, v0 + 128, &qword_1000A5AD0, &unk_10008B5E0);
  return swift_endAccess();
}

uint64_t sub_100069B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[0] = a3;
  v6 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  __chkstk_darwin(v6);
  v8 = v17 - v7;
  v9 = swift_allocBox();
  v11 = v10;
  v12 = sub_1000847C8();
  v13 = *(v12 - 8);
  (*(v13 + 56))(v11, 1, 1, v12);
  v22 = 0;
  v17[4] = v11;
  v18 = v3;
  v19 = a1;
  v20 = a2;
  v21 = &v22;
  sub_100084C08();
  sub_100075E6C(&qword_1000A72F0, 255, &type metadata accessor for ICModernObjectProvider, &protocol conformance descriptor for ICModernObjectProvider);
  v14 = v17[1];
  sub_100084A58();
  if (v14)
  {
    goto LABEL_4;
  }

  v15 = v17[0];
  sub_100005888(v11, v8, &qword_1000A56E8, &qword_10008D350);
  result = (*(v13 + 48))(v8, 1, v12);
  if (result != 1)
  {
    (*(v13 + 32))(v15, v8, v12);
LABEL_4:
    sub_10006A064(v9, &v22, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100069D50(uint64_t a1)
{
  v3 = sub_1000847C8();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  if (qword_1000A53E0 != -1)
  {
    swift_once();
  }

  v9 = sub_100084FB8();
  sub_10000B614(v9, qword_1000A5AA0);
  v10 = *(v4 + 16);
  v26 = a1;
  v10(v8, a1, v3);
  v11 = sub_100084FA8();
  v12 = sub_100085368();
  v13 = os_log_type_enabled(v11, v12);
  v27 = v4;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v1;
    v28 = v23;
    *v14 = 136315138;
    sub_100075E6C(&qword_1000A5AD8, 255, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v15 = sub_100085908();
    v17 = v16;
    v18 = *(v4 + 8);
    v18(v8, v3);
    v19 = sub_100038A4C(v15, v17, &v28);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "Removing archive… {url: %s}", v14, 0xCu);
    sub_100006304(v23);
  }

  else
  {

    v18 = *(v4 + 8);
    v18(v8, v3);
  }

  swift_getObjectType();
  v20 = v25;
  sub_100084748();
  sub_1000849B8();
  return (v18)(v20, v3);
}

void sub_10006A064(uint64_t a1, uint64_t a2, void *a3)
{
  v46 = a3;
  v48 = a2;
  v3 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v4 = __chkstk_darwin(v3 - 8);
  v47 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v45 - v6;
  v8 = sub_1000847C8();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v45 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v45 - v13;
  __chkstk_darwin(v12);
  v16 = &v45 - v15;
  v17 = swift_projectBox();
  swift_beginAccess();
  v18 = v9;
  sub_100005888(v17, v7, &qword_1000A56E8, &qword_10008D350);
  v19 = *(v9 + 48);
  if (v19(v7, 1, v8) == 1)
  {
    sub_1000058F0(v7, &qword_1000A56E8, &qword_10008D350);
  }

  else
  {
    (*(v18 + 32))(v16, v7, v8);
    if ((*v48 & 1) == 0)
    {
      sub_100069D50(v16);
      v32 = v45;
      if (qword_1000A53E0 != -1)
      {
        swift_once();
      }

      v33 = sub_100084FB8();
      sub_10000B614(v33, qword_1000A5AA0);
      (*(v18 + 16))(v32, v16, v8);
      v34 = sub_100084FA8();
      v35 = sub_100085368();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v49[0] = v37;
        *v36 = 136315138;
        sub_100075E6C(&qword_1000A5AD8, 255, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v38 = sub_100085908();
        v39 = v18;
        v41 = v40;
        v42 = *(v39 + 8);
        v42(v32, v8);
        v43 = sub_100038A4C(v38, v41, v49);

        *(v36 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v34, v35, "Failed to create archive — removing temporary files {url: %s}", v36, 0xCu);
        sub_100006304(v37);

        v42(v16, v8);
      }

      else
      {

        v44 = *(v18 + 8);
        v44(v32, v8);
        v44(v16, v8);
      }

      return;
    }

    (*(v18 + 8))(v16, v8);
  }

  if (qword_1000A53E0 != -1)
  {
    swift_once();
  }

  v20 = sub_100084FB8();
  sub_10000B614(v20, qword_1000A5AA0);

  v21 = sub_100084FA8();
  v22 = sub_100085368();
  if (!os_log_type_enabled(v21, v22))
  {

    goto LABEL_11;
  }

  v48 = v18;
  v23 = swift_slowAlloc();
  v46 = swift_slowAlloc();
  v50 = v46;
  *v23 = 136315138;
  swift_beginAccess();
  v24 = v17;
  v25 = v47;
  sub_100005888(v24, v47, &qword_1000A56E8, &qword_10008D350);
  v26 = v19(v25, 1, v8);

  if (v26 != 1)
  {
    v27 = v48;
    (*(v48 + 32))(v14, v25, v8);
    sub_100075E6C(&qword_1000A5AD8, 255, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v28 = sub_100085908();
    v30 = v29;
    (*(v27 + 8))(v14, v8);
    v31 = sub_100038A4C(v28, v30, &v50);

    *(v23 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v21, v22, "Created archive {url: %s}", v23, 0xCu);
    sub_100006304(v46);

LABEL_11:

    return;
  }

  __break(1u);
}

uint64_t sub_10006A6C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v78 = a4;
  v79 = a5;
  v86 = a1;
  v7 = sub_100005740(&qword_1000A59F0, &qword_10008B510);
  v77 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v69 - v8;
  v10 = sub_100084F28();
  v81 = *(v10 - 8);
  v82 = v10;
  __chkstk_darwin(v10);
  v80 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100084EF8();
  v13 = *(v12 - 8);
  v83 = v12;
  v84 = v13;
  v14 = __chkstk_darwin(v12);
  v16 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v69 - v17;
  v19 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = v69 - v24;
  v26 = __chkstk_darwin(v23);
  v88 = v69 - v27;
  __chkstk_darwin(v26);
  v29 = v69 - v28;
  v87 = a2;
  v30 = v89;
  result = sub_10006AF24(a3, v69 - v28);
  if (!v30)
  {
    v71 = v16;
    v72 = v25;
    v70 = v22;
    v73 = v18;
    v74 = a3;
    v85 = 0;
    v32 = sub_1000847C8();
    v33 = *(v32 - 8);
    (*(v33 + 56))(v29, 0, 1, v32);
    v34 = v29;
    v35 = v86;
    sub_100005820(v34, v86, &qword_1000A56E8, &qword_10008D350);
    v36 = v88;
    v89 = *(v87 + 96);
    v37 = v32;
    sub_100005888(v35, v88, &qword_1000A56E8, &qword_10008D350);
    v75 = *(v33 + 48);
    v76 = v33 + 48;
    result = v75(v36, 1, v32);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      swift_getObjectType();
      v38 = v85;
      sub_1000849C8();
      v85 = v38;
      if (v38)
      {
        return (*(v33 + 8))(v36, v32);
      }

      v69[0] = *(v33 + 8);
      v69[1] = v33 + 8;
      (v69[0])(v36, v32);
      if (qword_1000A53E8 != -1)
      {
        goto LABEL_25;
      }

      while (1)
      {
        v39 = v82;
        v40 = sub_10000B614(v82, qword_1000A5AB8);
        v41 = v80;
        v42 = v81;
        v43 = *(v81 + 16);
        v89 = v40;
        v43(v80);
        v44 = v72;
        sub_100005888(v35, v72, &qword_1000A56E8, &qword_10008D350);
        result = v75(v44, 1, v37);
        if (result == 1)
        {
          break;
        }

        sub_1000846F8(v45);
        sub_100084F18();
        v46 = v73;
        sub_100084ED8();
        (*(v42 + 8))(v41, v39);
        v82 = v37;
        (v69[0])(v44, v37);
        v47 = sub_100084F18();
        v48 = sub_100085408();
        if (sub_1000854D8())
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          v50 = sub_100084EE8();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v47, v48, v50, "Create Archive", "", v49, 2u);
        }

        (*(v84 + 16))(v71, v46, v83);
        sub_100084F68();
        swift_allocObject();
        v81 = sub_100084F58();
        v37 = *(v74 + 16);
        if (!v37)
        {
          v51 = 0;
LABEL_15:
          if (qword_1000A53E0 != -1)
          {
            swift_once();
          }

          v58 = sub_100084FB8();
          sub_10000B614(v58, qword_1000A5AA0);
          v59 = sub_100084FA8();
          v60 = sub_100085368();
          v61 = os_log_type_enabled(v59, v60);
          v63 = v78;
          v62 = v79;
          if (v61)
          {
            v64 = swift_slowAlloc();
            *v64 = 134217984;
            *(v64 + 4) = v51;
            _os_log_impl(&_mh_execute_header, v59, v60, "Exporting notes… {noteCount: %ld}", v64, 0xCu);
          }

          [v63 setTotalUnitCount:v51];
          v65 = v70;
          sub_100005888(v86, v70, &qword_1000A56E8, &qword_10008D350);
          result = v75(v65, 1, v82);
          v66 = v84;
          if (result != 1)
          {
            v67 = v85;
            sub_10006B3F0(v65, v74, v63);
            v68 = v83;
            (v69[0])(v65, v82);
            if (!v67)
            {
              sub_100085348();
              *v62 = 1;
            }

            sub_100013B1C(v81);

            return (*(v66 + 8))(v73, v68);
          }

          goto LABEL_28;
        }

        v51 = 0;
        v52 = v77 + 16;
        v89 = *(v77 + 16);
        v53 = v74 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
        v88 = *(v77 + 72);
        v54 = (v77 + 8);
        while (1)
        {
          v55 = v52;
          v89(v9, v53, v7);
          v56 = sub_100084A98();
          v35 = v7;
          (*v54)(v9, v7);
          v57 = __OFADD__(v51, v56);
          v51 += v56;
          if (v57)
          {
            break;
          }

          v53 += v88;
          --v37;
          v52 = v55;
          if (!v37)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_25:
        swift_once();
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

uint64_t sub_10006AF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v47 = a2;
  v3 = sub_100084918();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000847C8();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v40 - v11;
  v13 = __chkstk_darwin(v10);
  v41 = &v40 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v40 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v40 - v19;
  __chkstk_darwin(v18);
  v22 = &v40 - v21;
  v23 = *(v2 + 24);
  swift_getObjectType();
  if (v23 == 1)
  {
    v24 = v50;
    result = sub_1000849F8();
    if (!v24)
    {
      v50 = 0;
      sub_100084718();
      v26 = *(v45 + 8);
      v27 = v17;
      v28 = v46;
      v26(v27, v46);
      sub_100084908();
      sub_1000848D8();
      (*(v42 + 8))(v5, v43);
      sub_100084718();

      v26(v20, v28);
      sub_10006C9DC(v44);
      v29 = sub_100085068();

      v30 = [v29 ic_sanitizedFilenameString];

      sub_100085098();
      sub_100084718();

      return (v26)(v22, v28);
    }
  }

  else
  {
    v31 = v50;
    result = sub_1000849F8();
    if (!v31)
    {
      sub_100084718();
      v32 = v46;
      v33 = *(v45 + 8);
      v33(v9, v46);
      sub_100084908();
      sub_1000848D8();
      (*(v42 + 8))(v5, v43);
      v34 = v41;
      sub_100084718();

      v33(v12, v32);
      sub_10006C9DC(v44);
      v35 = sub_100085068();
      v36 = [v35 ic_sanitizedFilenameString];

      v37 = sub_100085098();
      v39 = v38;

      v48 = v37;
      v49 = v39;
      v51._countAndFlagsBits = 46;
      v51._object = 0xE100000000000000;
      sub_100085158(v51);
      v52._countAndFlagsBits = 0x6372617365746F6ELL;
      v52._object = 0xEC00000065766968;
      sub_100085158(v52);

      sub_100084718();

      return (v33)(v34, v32);
    }
  }

  return result;
}

uint64_t sub_10006B3F0(uint64_t a1, int64_t a2, uint64_t a3)
{
  v123 = a3;
  v6 = sub_1000847C8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for ICArchiveModel(0);
  __chkstk_darwin(v118);
  v119 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_100005740(&qword_1000A72F8, &unk_10008F740);
  v11 = *(v142 - 8);
  v12 = __chkstk_darwin(v142);
  v141 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v140 = &v113 - v14;
  v126 = sub_100005740(&qword_1000A59F0, &qword_10008B510);
  v131 = *(v126 - 8);
  v15 = __chkstk_darwin(v126);
  v16 = __chkstk_darwin(v15);
  v129 = &v113 - v17;
  v18 = __chkstk_darwin(v16);
  v139 = &v113 - v19;
  __chkstk_darwin(v18);
  v153 = (&v113 - v21);
  if (*(v3 + 104))
  {
    goto LABEL_93;
  }

  v144 = v11;
  v115 = v7;
  v116 = v6;
  v124 = a1;
  *(v3 + 104) = 1;
  v22 = *(v3 + 16);
  v23 = *(a2 + 16);
  v24 = _swiftEmptyArrayStorage;
  v125 = v3;
  v121 = a2;
  v117 = v20;
  v114 = v9;
  v122 = v23;
  if (!v23)
  {
    goto LABEL_10;
  }

  *&v145 = _swiftEmptyArrayStorage;

  v25 = v23;
  sub_10003BE0C(0, v23, 0);
  v24 = v145;
  v26 = a2 + ((*(v131 + 80) + 32) & ~*(v131 + 80));
  v27 = *(v131 + 72);
  v28 = v143;
  do
  {
    sub_10007A218();
    if (v28)
    {
      v143 = v28;

LABEL_50:

LABEL_51:
      v71 = v125;
      goto LABEL_52;
    }

    *&v145 = v24;
    v30 = v24[2];
    v29 = v24[3];
    v6 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      sub_10003BE0C((v29 > 1), v30 + 1, 1);
      v24 = v145;
    }

    v24[2] = v6;
    v31 = &v24[4 * v30];
    v32 = v149;
    *(v31 + 2) = v148;
    *(v31 + 3) = v32;
    v26 += v27;
    --v25;
  }

  while (v25);
  v143 = 0;

LABEL_10:
  v33 = v24[2];
  v130 = v22;
  if (v33)
  {
    v34 = (v24 + 4);
    v35 = _swiftEmptyArrayStorage;
    v6 = &qword_1000A5AD0;
    while (1)
    {
      sub_100005888(v34, &v151, &qword_1000A5AD0, &unk_10008B5E0);
      v148 = v151;
      v149 = v152;
      if (*(&v152 + 1))
      {
        sub_100005740(&qword_1000A59C8, &qword_10008B770);
        if (swift_dynamicCast())
        {
          if (*(&v146 + 1))
          {
            sub_10001C024(&v145, &v148);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v35 = sub_10000EEA8(0, v35[2] + 1, 1, v35);
            }

            v37 = v35[2];
            v36 = v35[3];
            if (v37 >= v36 >> 1)
            {
              v35 = sub_10000EEA8((v36 > 1), v37 + 1, 1, v35);
            }

            v35[2] = v37 + 1;
            sub_10001C024(&v148, &v35[5 * v37 + 4]);
            v6 = &qword_1000A5AD0;
            goto LABEL_14;
          }
        }

        else
        {
          v147 = 0;
          v145 = 0u;
          v146 = 0u;
        }
      }

      else
      {
        sub_1000058F0(&v148, &qword_1000A5AD0, &unk_10008B5E0);
        v145 = 0u;
        v146 = 0u;
        v147 = 0;
      }

      sub_1000058F0(&v145, &qword_1000A5BA8, &qword_10008F750);
LABEL_14:
      v34 += 32;
      if (!--v33)
      {

        goto LABEL_26;
      }
    }
  }

  v35 = _swiftEmptyArrayStorage;
LABEL_26:
  *&v145 = _swiftEmptyArrayStorage;
  v38 = v35[2];
  if (v38)
  {
    v6 = (v35 + 4);
    do
    {
      sub_10001C118(v6, &v148);
      v39 = *(&v149 + 1);
      v40 = v150;
      sub_10000626C(&v148, *(&v149 + 1));
      v41 = (*(v40 + 24))(v39, v40);
      sub_100006304(&v148);
      sub_100039460(v41);
      v6 += 40;
      --v38;
    }

    while (v38);
  }

  v120 = v145;
  v42 = _swiftEmptyArrayStorage;
  v43 = v126;
  v44 = v153;
  if (v122)
  {
    v137 = *(v131 + 16);
    v128 = (*(v131 + 80) + 32) & ~*(v131 + 80);
    v45 = v121 + v128;
    v46 = *(v131 + 72);
    v136 = enum case for ICObjectReferences.Types.folder<A>(_:);
    v135 = (v144 + 104);
    v134 = (v144 + 8);
    v127 = (v131 + 8);
    v138 = v131 + 16;
    v132 = (v131 + 32);
    v47 = v122;
    v133 = v46;
    do
    {
      v144 = v47;
      v153 = v42;
      v137(v44, v45, v43);
      v48 = v140;
      v49 = v43;
      sub_100084AB8();
      v50 = v141;
      v51 = v142;
      (*v135)(v141, v136, v142);
      sub_100008250(0, &qword_1000A56C8, NSManagedObjectID_ptr);
      sub_10007A230();
      v52 = sub_100084AC8();
      v53 = *v134;
      (*v134)(v50, v51);
      v53(v48, v51);
      if (v52)
      {
        v54 = *v132;
        (*v132)(v139, v44, v49);
        v42 = v153;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v148 = v42;
        if (isUniquelyReferenced_nonNull_native)
        {
          v43 = v49;
        }

        else
        {
          sub_10003BDCC(0, v42[2] + 1, 1);
          v43 = v126;
          v42 = v148;
        }

        v57 = v42[2];
        v56 = v42[3];
        if (v57 >= v56 >> 1)
        {
          sub_10003BDCC((v56 > 1), v57 + 1, 1);
          v43 = v126;
          v42 = v148;
        }

        v42[2] = v57 + 1;
        v58 = v42 + v128 + v57 * v133;
        v6 = v133;
        v54(v58, v139, v43);
      }

      else
      {
        (*v127)(v44, v49);
        v43 = v49;
        v42 = v153;
        v6 = v133;
      }

      v45 += v6;
      v47 = v144 - 1;
    }

    while (v144 != 1);
  }

  v59 = v42[2];
  if (!v59)
  {

    v62 = _swiftEmptyArrayStorage;
LABEL_53:
    v72 = v62[2];
    v71 = v125;
    if (!v72)
    {

      v74 = _swiftEmptyArrayStorage;
LABEL_69:
      v77 = v74[2];
      if (v77)
      {
        *&v145 = _swiftEmptyArrayStorage;
        sub_10003BCC0(0, v77, 0);
        v78 = v145;
        v79 = (v74 + 4);
        do
        {
          sub_10001C118(v79, &v148);
          v80 = *(&v149 + 1);
          v81 = v150;
          sub_10000626C(&v148, *(&v149 + 1));
          v82 = (*(v81 + 8))(v80, v81);
          v84 = v83;
          sub_100006304(&v148);
          *&v145 = v78;
          v86 = v78[2];
          v85 = v78[3];
          if (v86 >= v85 >> 1)
          {
            sub_10003BCC0((v85 > 1), v86 + 1, 1);
            v78 = v145;
          }

          v78[2] = v86 + 1;
          v87 = &v78[2 * v86];
          v87[4] = v82;
          v87[5] = v84;
          v79 += 40;
          --v77;
        }

        while (v77);

        v71 = v125;
      }

      else
      {

        v78 = _swiftEmptyArrayStorage;
      }

      if (*(v71 + 24) != 1)
      {
        v96 = *(v71 + 40);
        v97 = *(v71 + 48);
        v98 = *(v71 + 56);
        v99 = *(v71 + 64);
        v100 = *(v71 + 72);
        v153 = *(v71 + 32);
        sub_10001C220(v153, v96, v97, v98, v99, v100);
        v144 = sub_100079D24(v120);

        if (!v78[2])
        {

          v78 = 0;
        }

        v101 = v118;
        v102 = *(v118 + 24);
        v103 = v119;
        sub_1000848A8();
        v104 = sub_1000848B8();
        (*(*(v104 - 8) + 56))(v103 + v102, 0, 1, v104);
        *v103 = 0;
        *(v103 + 8) = 1;
        v105 = (v103 + v101[7]);
        *v105 = v153;
        v105[1] = v96;
        v105[2] = v97;
        v105[3] = v98;
        v6 = v103;
        v105[4] = v99;
        v105[5] = v100;
        *(v103 + v101[8]) = v144;
        *(v103 + v101[9]) = v78;
        if (qword_1000A53F0 != -1)
        {
          goto LABEL_94;
        }

        goto LABEL_86;
      }

      goto LABEL_78;
    }

    v73 = (v62 + 4);
    v74 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_100005888(v73, &v151, &qword_1000A5AD0, &unk_10008B5E0);
      v148 = v151;
      v149 = v152;
      if (*(&v152 + 1))
      {
        sub_100005740(&qword_1000A59C8, &qword_10008B770);
        if (swift_dynamicCast())
        {
          if (*(&v146 + 1))
          {
            sub_10001C024(&v145, &v148);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v74 = sub_10000EEA8(0, v74[2] + 1, 1, v74);
            }

            v76 = v74[2];
            v75 = v74[3];
            if (v76 >= v75 >> 1)
            {
              v74 = sub_10000EEA8((v75 > 1), v76 + 1, 1, v74);
            }

            v74[2] = v76 + 1;
            sub_10001C024(&v148, &v74[5 * v76 + 4]);
            v71 = v125;
            goto LABEL_57;
          }
        }

        else
        {
          v147 = 0;
          v145 = 0u;
          v146 = 0u;
        }
      }

      else
      {
        sub_1000058F0(&v148, &qword_1000A5AD0, &unk_10008B5E0);
        v145 = 0u;
        v146 = 0u;
        v147 = 0;
      }

      sub_1000058F0(&v145, &qword_1000A5BA8, &qword_10008F750);
LABEL_57:
      v73 += 32;
      if (!--v72)
      {

        goto LABEL_69;
      }
    }
  }

  *&v145 = _swiftEmptyArrayStorage;

  sub_10003BE0C(0, v59, 0);
  v60 = v126;
  v61 = 0;
  v62 = v145;
  v153 = (v42 + ((*(v131 + 80) + 32) & ~*(v131 + 80)));
  v144 = v131 + 16;
  v63 = (v131 + 8);
  while (v61 < v42[2])
  {
    v64 = v129;
    (*(v131 + 16))(v129, v153 + *(v131 + 72) * v61, v60);
    v65 = v143;
    sub_10007AB0C();
    v143 = v65;
    if (v65)
    {

      (*v63)(v64, v60);

      goto LABEL_50;
    }

    (*v63)(v64, v60);
    *&v145 = v62;
    v67 = v62[2];
    v66 = v62[3];
    v6 = v67 + 1;
    if (v67 >= v66 >> 1)
    {
      sub_10003BE0C((v66 > 1), v67 + 1, 1);
      v60 = v126;
      v62 = v145;
    }

    ++v61;
    v62[2] = v6;
    v68 = &v62[4 * v67];
    v69 = v149;
    *(v68 + 2) = v148;
    *(v68 + 3) = v69;
    if (v59 == v61)
    {

      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  swift_once();
LABEL_86:
  sub_100075E6C(&qword_1000A5BC8, 255, type metadata accessor for ICArchiveModel, &unk_10008FF20);
  v106 = v143;
  v107 = sub_100084508();
  v143 = v106;
  v71 = v125;
  if (v106)
  {
    result = sub_10007A7A0(v6, type metadata accessor for ICArchiveModel);
    goto LABEL_52;
  }

  v109 = v107;
  v110 = v108;
  swift_getObjectType();
  v111 = v114;
  sub_100084718();
  v112 = v143;
  sub_1000849A8();
  v143 = v112;
  if (v112)
  {
    sub_10000650C(v109, v110);
    (*(v115 + 8))(v111, v116);
    result = sub_10007A7A0(v119, type metadata accessor for ICArchiveModel);
    goto LABEL_51;
  }

  sub_10000650C(v109, v110);
  (*(v115 + 8))(v111, v116);
  result = sub_10007A7A0(v119, type metadata accessor for ICArchiveModel);
  v71 = v125;
LABEL_78:
  v88 = v122;
  if (v122)
  {
    v89 = *(v131 + 16);
    v90 = v121 + ((*(v131 + 80) + 32) & ~*(v131 + 80));
    v91 = *(v131 + 72);
    v92 = (v131 + 8);
    v93 = v126;
    v94 = v117;
    while (1)
    {
      v89(v94, v90, v93);
      v95 = v143;
      sub_10006C4E8(v94, v124, v123);
      v143 = v95;
      if (v95)
      {
        break;
      }

      result = (*v92)(v94, v93);
      v90 += v91;
      if (!--v88)
      {
        goto LABEL_52;
      }
    }

    result = (*v92)(v94, v93);
  }

LABEL_52:
  *(v71 + 104) = 0;
  return result;
}