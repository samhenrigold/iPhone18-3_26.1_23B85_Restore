uint64_t sub_10004C1A0(uint64_t a1, Swift::Int64 a2, uint64_t *a3, uint64_t a4)
{
  v7 = sub_1000899A8();
  __chkstk_darwin(v7);
  v9 = *a3;
  v10 = a3[1];
  (*(v11 + 16))(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  v17._countAndFlagsBits = sub_10008A2D8();
  v13 = v12;
  v16._countAndFlagsBits = v9;
  v16._object = v10;
  v17._object = v13;
  sub_1000894D8(a2, v16, v17);
}

void sub_10004C318(uint64_t a1, Swift::Int64 a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  v6._rawValue = *(a3 + *(_s15ActionParameterVMa(0) + 36));
  v7.value._countAndFlagsBits = v4;
  v7.value._object = v5;
  sub_100089558(a2, v7, v6);
}

void sub_10004C380(int a1, id a2, Swift::Int64 a3)
{
  if (a2)
  {
    v4 = [a2 backingActionIdentifiers];
    v5 = sub_10008A328();

    v15 = *(v5 + 16);
    if (v15)
    {
      v6 = 0;
      v7 = v5 + 40;
      while (v6 < *(v5 + 16))
      {

        v8 = sub_10008A238();

        v9 = WFLinkActionIdentifierFromShortcutsActionIdentifier();

        if (v9)
        {
          v10 = [v9 actionIdentifier];
          v11 = sub_10008A268();
          v13 = v12;

          v16._countAndFlagsBits = v11;
          v16._object = v13;
          sub_1000895A8(a3, v16);
          if (v3)
          {

            goto LABEL_11;
          }
        }

        ++v6;
        v7 += 16;
        if (v15 == v6)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_11:
    }
  }
}

void sub_10004C4EC(uint64_t a1, unint64_t a2, void *a3, Swift::Int64 a4)
{
  v5 = v4;
  v127 = a4;
  v117 = a3;
  v121 = a1;
  v116 = sub_100089008();
  v123 = *(v116 - 8);
  v7 = __chkstk_darwin(v116);
  v9 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v107 = &v100 - v10;
  v126 = sub_100088A68();
  v122 = *(v126 - 8);
  v11 = __chkstk_darwin(v126);
  v110 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v120 = &v100 - v14;
  __chkstk_darwin(v13);
  v102 = &v100 - v15;
  v129 = _swiftEmptyArrayStorage;
  v16 = sub_10008391C();
  v17 = 0;
  v128 = a2 & 0xC000000000000001;
  v124 = a2 & 0xFFFFFFFFFFFFFF8;
  v125 = a2;
  v118 = v9;
  while (1)
  {
    if (v16 == v17)
    {
      v27 = v129;
      v106 = sub_10008391C();
      if (v106)
      {
        v104 = sub_100011D84(0, &qword_1000A65D8, NSOrderedSet_ptr);
        v28 = 0;
        v105 = v27 & 0xC000000000000001;
        v101 = v27 + 32;
        v125 = (v122 + 8);
        v114 = (v123 + 1);
        v115 = WFLogCategoryToolKitIndexing;
        *&v29 = 136316162;
        v109 = v29;
        *&v29 = 136315906;
        v100 = v29;
        v103 = v27;
        while (2)
        {
          v30 = v105;
          sub_10004F878(v28, v105 == 0, v27);
          if (v30)
          {
            v31 = sub_10008A928();
          }

          else
          {
            v31 = *(v101 + 8 * v28);
          }

          v32 = v31;
          v33 = v107;
          v108 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            goto LABEL_45;
          }

          v34 = [v117 localizedCategoryWithContext:v31];
          v111 = v32;
          if (v34)
          {
            v35 = v34;
            v36 = v5;
            v37 = sub_10008A268();
            v39 = v38;

            v40 = [v32 locale];
            v41 = v32;
            v42 = v102;
            sub_100088A48();

            v43 = sub_100088A08();
            v45 = v44;
            v124 = *v125;
            (v124)(v42, v126);
            v130._countAndFlagsBits = v43;
            v130._object = v45;
            v132._countAndFlagsBits = v37;
            v132._object = v39;
            sub_100089498(v127, v130, v132);
            v128 = v36;
            if (v36)
            {

              sub_100088F28();

              v46 = v117;
              v47 = v41;
              v48 = v33;
              v49 = sub_100088FF8();
              v50 = sub_10008A5D8();

              if (os_log_type_enabled(v49, v50))
              {
                v51 = swift_slowAlloc();
                v129 = swift_slowAlloc();
                *v51 = v100;
                v52 = sub_100080D2C(v37, v39, &v129);

                *(v51 + 4) = v52;
                *(v51 + 12) = 2080;
                v53 = [v46 identifier];
                v54 = sub_10008A268();
                v56 = v55;

                v57 = sub_100080D2C(v54, v56, &v129);

                *(v51 + 14) = v57;
                *(v51 + 22) = 2048;
                *(v51 + 24) = v127;
                *(v51 + 32) = 2080;
                v58 = [v47 locale];
                v59 = v110;
                sub_100088A48();

                v60 = sub_100088A08();
                v62 = v61;
                (v124)(v59, v126);
                v63 = sub_100080D2C(v60, v62, &v129);

                *(v51 + 34) = v63;
                _os_log_impl(&_mh_execute_header, v49, v50, "Failed to index category %s for action: %s (%lld) in locale: %s", v51, 0x2Au);
                swift_arrayDestroy();

                v32 = v111;

                (*v114)(v107, v116);
              }

              else
              {
                v32 = v41;

                (*v114)(v48, v116);
              }

              v5 = 0;
            }

            else
            {

              v5 = v128;
              v32 = v41;
            }
          }

          v64 = [v117 localizedKeywordsWithContext:{v32, v100}];
          v65 = sub_10008A328();

          v66 = sub_10004D074(v65);

          v67 = sub_10004D174(v66);
          v68 = sub_10001806C();

          v69 = 0;
          v122 = v68[2];
          v123 = v68;
          v70 = (v68 + 5);
          while (v122 != v69)
          {
            if (v69 >= v123[2])
            {
              __break(1u);
              goto LABEL_43;
            }

            v72 = *(v70 - 1);
            v71 = *v70;
            v128 = v70;

            v73 = [v32 locale];
            v74 = v120;
            sub_100088A48();

            v75 = v32;
            v76 = sub_100088A08();
            v78 = v77;
            v124 = *v125;
            (v124)(v74, v126);
            v131._countAndFlagsBits = v76;
            v131._object = v78;
            v133._countAndFlagsBits = v72;
            v133._object = v71;
            sub_1000894E8(v127, v131, v133, v69);
            if (v5)
            {

              sub_100088F28();

              v79 = v117;
              v80 = v75;
              swift_errorRetain();
              v81 = sub_100088FF8();
              v82 = sub_10008A5D8();

              v119 = v82;
              if (os_log_type_enabled(v81, v82))
              {
                v83 = swift_slowAlloc();
                v113 = swift_slowAlloc();
                v129 = swift_slowAlloc();
                *v83 = v109;
                v84 = sub_100080D2C(v72, v71, &v129);
                v112 = v81;
                v85 = v84;

                *(v83 + 4) = v85;
                *(v83 + 12) = 2080;
                v86 = [v79 identifier];
                v87 = sub_10008A268();
                v89 = v88;

                v90 = sub_100080D2C(v87, v89, &v129);

                *(v83 + 14) = v90;
                *(v83 + 22) = 2048;
                *(v83 + 24) = v127;
                *(v83 + 32) = 2080;
                v91 = [v80 locale];
                v92 = v110;
                sub_100088A48();

                v93 = sub_100088A08();
                v95 = v94;
                (v124)(v92, v126);
                v96 = sub_100080D2C(v93, v95, &v129);

                *(v83 + 34) = v96;
                *(v83 + 42) = 2112;
                swift_errorRetain();
                v97 = _swift_stdlib_bridgeErrorToNSError();
                *(v83 + 44) = v97;
                v98 = v112;
                v99 = v113;
                *v113 = v97;
                _os_log_impl(&_mh_execute_header, v98, v119, "Failed to index keyword %s for action: %s (%lld) in locale: %s, %@", v83, 0x34u);
                sub_100017954(v99, &qword_1000A6460, &qword_10008D878);

                swift_arrayDestroy();

                v32 = v111;
              }

              else
              {
                v32 = v75;
              }

              (*v114)(v118, v116);
              v5 = 0;
            }

            else
            {

              v32 = v75;
            }

            v70 = (v128 + 16);
            ++v69;
          }

          v28 = v108;
          v27 = v103;
          if (v108 != v106)
          {
            continue;
          }

          break;
        }
      }

      return;
    }

    if (v128)
    {
      v18 = sub_10008A928();
    }

    else
    {
      if (v17 >= *(v124 + 16))
      {
        goto LABEL_44;
      }

      v18 = v125[v17 + 4];
    }

    v19 = v18;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    v20 = [v18 localizationUsage];
    v21 = sub_10008A268();
    v23 = v22;
    if (v21 == sub_10008A268() && v23 == v24)
    {
    }

    else
    {
      v26 = sub_10008AA68();

      if ((v26 & 1) == 0)
      {

        goto LABEL_15;
      }
    }

    sub_10008A948();
    sub_10008A978();
    sub_10008A988();
    sub_10008A958();
LABEL_15:
    ++v17;
    v5 = v4;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

void *sub_10004D074(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_100081E10(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_100081E10((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_10000A6AC(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id sub_10004D174(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = sub_10008A318().super.isa;

  v3 = [v1 initWithArray:isa];

  return v3;
}

uint64_t sub_10004D1EC(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = result;
  v8 = 0;
  v9 = *(a2 + 16);
  while (v9 != v8)
  {
    v10 = *(sub_100089918() - 8);
    result = sub_100014590(a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8, v7, 0, a4);
    if (v4)
    {
      break;
    }

    ++v8;
  }

  return result;
}

void sub_10004D2D0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (**a5)(char *, uint64_t))
{
  v65 = a5;
  v63 = a3;
  v64 = a4;
  v61 = a2;
  v6 = sub_100089AE8();
  v55 = *(v6 - 8);
  __chkstk_darwin(v6);
  v51 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100008DC0(&qword_1000A6490, &qword_10008D898);
  __chkstk_darwin(v8);
  v53 = (&v48 - v9);
  v10 = sub_100008DC0(&qword_1000A6498, &qword_10008D8A0);
  v11 = __chkstk_darwin(v10 - 8);
  v67 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v62 = &v48 - v13;
  v14 = sub_10008A088();
  __chkstk_darwin(v14 - 8);
  v15 = sub_10008A128();
  __chkstk_darwin(v15 - 8);
  v16 = sub_10008A508();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = 0;
  memset(v70, 0, sizeof(v70));
  sub_10008A118();
  sub_10008A4D8();
  sub_10008A4F8();
  sub_10008A4C8();
  v20 = v66;
  v21 = sub_100088AA8();
  if (v20)
  {
    (*(v17 + 8))(v19, v16);
  }

  else
  {
    v58 = a1;
    v59 = v17;
    v54 = v21;
    v60 = v16;
    v22 = v63;
    v23 = sub_10001BEBC(v63);
    v24 = _swiftEmptyArrayStorage;
    v66 = v8;
    v50 = v19;
    if (v23)
    {
      v25 = v23;
      v49 = v6;
      v72 = _swiftEmptyArrayStorage;
      sub_100081D00(0, v23 & ~(v23 >> 63), 0);
      v26 = v51;
      v56 = v25;
      if ((v25 & 0x8000000000000000) == 0)
      {
        v27 = 0;
        v24 = v72;
        v57 = v22 & 0xC000000000000001;
        v52 = v22 & 0xFFFFFFFFFFFFFF8;
        v28 = v65;
        while (1)
        {
          v29 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          if (v57)
          {
            v30 = sub_10008A928();
          }

          else
          {
            if (v27 >= *(v52 + 16))
            {
              goto LABEL_28;
            }

            v30 = *(v63 + 8 * v27 + 32);
          }

          v69 = v30;
          sub_10004DA30(&v69, v58, v64, v28, &v68, v70);

          v31 = *&v70[0];
          v32 = *(v70 + 8);
          v72 = v24;
          v34 = v24[2];
          v33 = v24[3];
          if (v34 >= v33 >> 1)
          {
            v48 = *(v70 + 8);
            sub_100081D00((v33 > 1), v34 + 1, 1);
            v32 = v48;
            v24 = v72;
          }

          v24[2] = v34 + 1;
          v35 = &v24[3 * v34];
          v35[4] = v31;
          *(v35 + 5) = v32;
          ++v27;
          v28 = v65;
          v8 = v66;
          if (v29 == v56)
          {
            v6 = v49;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
      }

      __break(1u);
    }

    else
    {
      v26 = v51;
LABEL_16:
      v36 = 0;
      v37 = *(v54 + 16);
      v63 = v55 + 16;
      v64 = v37;
      v38 = (v55 + 32);
      v65 = (v55 + 8);
      v39 = v67;
      while (1)
      {
        if (v36 == v37)
        {
          v40 = 1;
          v36 = v37;
        }

        else
        {
          if ((v36 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          if (v36 >= *(v54 + 16))
          {
            goto LABEL_27;
          }

          v41 = v55;
          v42 = v54 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v36;
          v43 = *(v8 + 48);
          v44 = v53;
          *v53 = v36;
          (*(v41 + 16))(v44 + v43, v42, v6);
          sub_10005BFBC();
          v40 = 0;
          ++v36;
          v39 = v67;
        }

        sub_100009158(v39, v40, 1, v8);
        v45 = v62;
        sub_10005BFBC();
        if (sub_100008E78(v45, 1, v8) == 1)
        {
          break;
        }

        v46 = *v45;
        v47 = (*v38)(v26, &v45[*(v8 + 48)], v6);
        *&v70[0] = v61;
        __chkstk_darwin(v47);
        *(&v48 - 4) = v26;
        *(&v48 - 3) = v24;
        *(&v48 - 2) = v46;
        sub_100089378();
        sub_1000893A8();
        (*v65)(v26, v6);
        v8 = v66;
        v39 = v67;
        v37 = v64;
      }

      (*(v59 + 8))(v50, v60);
    }
  }
}

uint64_t sub_10004DA30@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v35 = a5;
  v40 = a3;
  v45 = a4;
  v38 = a6;
  v39 = a2;
  v7 = sub_10008A088();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10008A128();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10008A508();
  v36 = *(v9 - 8);
  v37 = v9;
  __chkstk_darwin(v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100088A68();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v34 - v17;
  v19 = *a1;
  v20 = [v19 locale];
  sub_100088A48();

  sub_100088A08();

  v21 = *(v13 + 8);
  v21(v18, v12);
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  sub_10008A118();
  v22 = v19;
  sub_10008A4D8();
  sub_10008A4C8();
  v23 = [v22 locale];
  sub_100088A48();

  v24 = sub_100088A08();
  v26 = v25;
  v21(v16, v12);
  v27 = v38;
  *v38 = v24;
  v27[1] = v26;
  v28 = v27;
  v29 = v41;
  v30 = sub_100088AA8();
  v31 = (v36 + 8);
  if (v29)
  {
    (*v31)(v11, v37);

    *v35 = v29;
  }

  else
  {
    v33 = v30;
    result = (*v31)(v11, v37);
    v28[2] = v33;
  }

  return result;
}

void *sub_10004DD74(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v47 = a4;
  v55 = a3;
  v44 = sub_100089AE8();
  v48 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100089CF8();
  v54 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100008DC0(&qword_1000A64A0, &qword_10008D8A8);
  __chkstk_darwin(v10);
  v12 = &v42 - v11;
  v13 = sub_100008DC0(&qword_1000A64A8, &qword_10008D8B0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v42 - v17;
  v58 = a2;
  v19 = v57;
  result = sub_1000896D8();
  if (v19)
  {
    return result;
  }

  v46 = v12;
  v53 = v7;
  v57 = &v42;
  v21 = v59;
  __chkstk_darwin(result);
  *(&v42 - 2) = a2;
  *(&v42 - 1) = v21;
  sub_1000896D8();
  v56 = v21;
  v57 = a1;
  result = sub_100089A88();
  v22 = 0;
  v23 = result[2];
  v25 = v53;
  v24 = v54;
  v45 = v54 + 16;
  v50 = (v54 + 32);
  v51 = (v54 + 8);
  v52 = result;
  for (i = v23; ; v23 = i)
  {
    v26 = v55;
    if (v22 == v23)
    {
      v27 = 1;
      v22 = v23;
      goto LABEL_8;
    }

    v28 = v46;
    if ((v22 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v22 >= result[2])
    {
      goto LABEL_17;
    }

    v29 = result + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22;
    v30 = *(v10 + 48);
    *v46 = v22;
    (*(v24 + 16))(&v28[v30], v29, v53);
    sub_10005BFBC();
    v27 = 0;
    ++v22;
    v25 = v53;
LABEL_8:
    sub_100009158(v16, v27, 1, v10);
    sub_10005BFBC();
    if (sub_100008E78(v18, 1, v10) == 1)
    {

      v34 = *(v26 + 16);
      v54 = v48 + 16;
      v35 = (v48 + 8);
      v36 = v26 + 48;
      v37 = v43;
      v38 = v44;
      while (v34)
      {
        if ((v47 & 0x8000000000000000) != 0)
        {
          goto LABEL_18;
        }

        if (*(*v36 + 16) <= v47)
        {
          goto LABEL_19;
        }

        v40 = *(v36 - 16);
        v39 = *(v36 - 8);
        v41 = (*(v48 + 16))(v37, *v36 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v47, v38);
        __chkstk_darwin(v41);
        *(&v42 - 4) = v56;
        *(&v42 - 3) = v40;
        *(&v42 - 2) = v39;
        *(&v42 - 1) = v37;

        sub_1000896D8();

        result = (*v35)(v37, v38);
        v36 += 24;
        --v34;
      }

      return result;
    }

    v31 = *v18;
    v32 = (*v50)(v9, &v18[*(v10 + 48)], v25);
    __chkstk_darwin(v32);
    v33 = v56;
    *(&v42 - 4) = v9;
    *(&v42 - 3) = v33;
    *(&v42 - 2) = v31;
    sub_1000896D8();
    (*v51)(v9, v25);
    v24 = v54;
    result = v52;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_10004E374@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v15 = a1;
  v14 = a2;
  v17 = sub_100089888();
  v2 = *(v17 - 8);
  __chkstk_darwin(v17);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100089828();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100089AB8();
  sub_100089AD8();
  sub_100089AA8();
  sub_100089A78();
  v9 = v16;
  v10 = sub_100089488();
  if (v9)
  {

    (*(v2 + 8))(v4, v17);
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    v12 = v10;

    (*(v2 + 8))(v4, v17);
    result = (*(v6 + 8))(v8, v5);
    *v14 = v12;
  }

  return result;
}

uint64_t sub_10004E590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v27 = a3;
  v4 = sub_1000899A8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100089888();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100089A78();
  v12 = v4;
  v13 = sub_100089868();
  result = (*(v9 + 8))(v11, v8);
  v15 = 0;
  v17 = v13 + 56;
  v16 = *(v13 + 56);
  v28 = v13;
  v18 = 1 << *(v13 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v16;
  v21 = (v18 + 63) >> 6;
  v24 = v5 + 16;
  v25 = v5;
  v22 = (v5 + 8);
  if ((v19 & v16) != 0)
  {
    while (1)
    {
      v23 = v15;
LABEL_8:
      (*(v25 + 16))(v7, *(v28 + 48) + *(v25 + 72) * (__clz(__rbit64(v20)) | (v23 << 6)), v12);
      sub_100089568();
      if (v3)
      {
        break;
      }

      v20 &= v20 - 1;
      result = (*v22)(v7, v12);
      v15 = v23;
      if (!v20)
      {
        goto LABEL_5;
      }
    }

    (*v22)(v7, v12);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v23 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v23 >= v21)
      {
      }

      v20 = *(v17 + 8 * v23);
      ++v15;
      if (v20)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10004E81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  v31 = a4;
  v28 = a3;
  v4 = sub_100089C48();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v37 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100008DC0(&qword_1000A64B0, &qword_10008D8B8);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_100089888();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v36 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  v15 = sub_1000899A8();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v35 = &v26 - v20;
  sub_100089CE8();
  v21 = sub_100089868();
  v22 = *(v10 + 8);
  v32 = v9;
  v29 = v10 + 8;
  v26 = v22;
  v22(v14, v9);
  sub_10006357C(v21, v8);

  if (sub_100008E78(v8, 1, v15) == 1)
  {
    sub_100017954(v8, &qword_1000A64B0, &qword_10008D8B8);
    result = sub_10008A9C8();
    __break(1u);
  }

  else
  {
    v23 = v35;
    (*(v16 + 32))(v35, v8, v15);
    sub_100089CB8();
    v24 = *(v16 + 16);
    v27 = v15;
    v24(v19, v23, v15);
    sub_10008A2D8();
    sub_100089CE8();
    sub_100089C68();
    sub_100089CD8();
    sub_100089538();

    (*(v33 + 8))(v37, v34);
    v26(v36, v32);
    return (*(v16 + 8))(v35, v27);
  }

  return result;
}

uint64_t sub_10004EC64(uint64_t a1, Swift::Int64 a2, uint64_t a3, void *a4, uint64_t a5)
{
  v42 = a1;
  v9 = sub_100089CF8();
  v44 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100089AC8();
  v14 = v13;
  v43 = a5;
  v15 = sub_100089A98();
  v33.value._countAndFlagsBits = v16;
  v40 = a2;
  v41 = a3;
  v46._countAndFlagsBits = a3;
  v39 = a4;
  v46._object = a4;
  v48._countAndFlagsBits = v12;
  v48._object = v14;
  v50.value._countAndFlagsBits = 0;
  v50.value._object = 0;
  v17 = v45;
  sub_100089598(a2, v46, v48, v50, v15, v33);
  if (v17)
  {
  }

  else
  {
    v38 = v11;
    v45 = 0;

    result = sub_100089A88();
    v19 = 0;
    v20 = *(result + 16);
    v36 = result;
    v37 = v20;
    v21 = v44;
    v35[1] = v44 + 8;
    v35[2] = v44 + 16;
    while (1)
    {
      v22 = v38;
      if (v37 == v19)
      {
      }

      if (v19 >= *(result + 16))
      {
        break;
      }

      v23 = v19;
      (*(v21 + 16))(v38, result + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v19, v9);
      v24 = v22;
      v44 = sub_100089CB8();
      v26 = v25;
      v43 = sub_100089CC8();
      v28 = v27;
      v29 = sub_100089C58();
      v31 = v30;
      (*(v21 + 8))(v24, v9);
      v34.value._countAndFlagsBits = v31;
      v49._object = v39;
      v51._countAndFlagsBits = v43;
      v47._countAndFlagsBits = v44;
      v47._object = v26;
      v49._countAndFlagsBits = v41;
      v51._object = v28;
      v32 = v45;
      sub_100089618(v40, v47, v49, v51, v29, v34);
      v45 = v32;
      if (v32)
      {
      }

      v19 = v23 + 1;

      result = v36;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10004EF08(uint64_t a1)
{
  sub_100088A08();
  sub_10008A2B8();

  type metadata accessor for ToolKitIndexer.LocaleWithUsage(0);
  sub_10008A268();
  sub_10008A2B8();
}

uint64_t sub_10004EF94(uint64_t a1, uint64_t a2)
{
  v2 = sub_100088A08();
  v4 = v3;
  if (v2 == sub_100088A08() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_10008AA68();

    v8 = 0;
    if ((v7 & 1) == 0)
    {
      return v8 & 1;
    }
  }

  type metadata accessor for ToolKitIndexer.LocaleWithUsage(0);
  v9 = sub_10008A268();
  v11 = v10;
  if (v9 == sub_10008A268() && v11 == v12)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10008AA68();
  }

  return v8 & 1;
}

Swift::Int sub_10004F0E8()
{
  sub_10008AB08();
  sub_100088A08();
  sub_10008A2B8();

  type metadata accessor for ToolKitIndexer.LocaleWithUsage(0);
  sub_10008A268();
  sub_10008A2B8();

  return sub_10008AB28();
}

Swift::Int sub_10004F180(uint64_t a1, uint64_t a2)
{
  sub_10008AB08();
  sub_100088A08();
  sub_10008A2B8();

  sub_10008A268();
  sub_10008A2B8();

  return sub_10008AB28();
}

id sub_10004F2E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_10008A238();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithLanguageCode:v3];

  return v4;
}

id sub_10004F348(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  isa = sub_100088A18().super.isa;
  v9 = [v4 initWithLocale:isa stringLocalizer:a2 localizationUsage:a3];

  v10 = sub_100088A68();
  (*(*(v10 - 8) + 8))(a1, v10);
  return v9;
}

uint64_t sub_10004F3F4(void (*a1)(uint64_t))
{
  v2 = sub_100089158();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v4);
  sub_10005AE38(&qword_1000A6570, &type metadata accessor for ToolVisibilityFlag);
  v7 = sub_10008AA28();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t sub_10004F51C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {

    return a2();
  }

  return result;
}

void *sub_10004F5AC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100008DC0(&unk_1000A5A30, &unk_10008CA00);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *sub_10004F650(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100008DC0(a3, a4);
  v8 = sub_10006028C();
  v9 = a5(v8);
  sub_100017A0C(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = j__malloc_size(v14);
  if (v11)
  {
    if ((result - v13) != 0x8000000000000000 || v11 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * ((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10004F858(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_10004F878(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10004F89C()
{
  v1 = v0;
  v2 = sub_1000813A4();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  v6 = *(*v0 + 24);
  sub_100008DC0(&qword_1000A6480, &qword_10008D888);
  sub_10008A9A8(isUniquelyReferenced_nonNull_native, v6);
  v7 = *(v11 + 48);
  v8 = sub_1000899A8();
  (*(*(v8 - 8) + 8))(v7 + *(*(v8 - 8) + 72) * v4, v8);
  v9 = *(*(v11 + 56) + 16 * v4);
  sub_10005AE38(&qword_1000A6428, &type metadata accessor for TypeIdentifier);
  sub_10008A9B8();
  *v1 = v11;
  return v9;
}

uint64_t sub_10004F9E0(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100081474(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v7 = *(*v1 + 24);
  sub_100008DC0(&qword_1000A6470, &qword_10008D880);
  sub_10008A9A8(isUniquelyReferenced_nonNull_native, v7);
  v8 = *(v12 + 48);
  v9 = type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey(0);
  sub_10005B2EC(v8 + *(*(v9 - 8) + 72) * v5, type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey);
  v10 = *(*(v12 + 56) + 16 * v5);
  sub_10005AE38(&qword_1000A6478, type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey);
  sub_10008A9B8();
  *v2 = v12;
  return v10;
}

unint64_t sub_10004FB24(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100081308(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v11;
  v17 = v12;
  sub_100008DC0(&qword_1000A6488, &qword_10008D890);
  result = sub_10008A9A8(a4 & 1, v15);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_100081308(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_11:
    result = sub_10008AAA8();
    __break(1u);
    return result;
  }

  v16 = result;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    *(v20[7] + 8 * v16) = a1;
  }

  else
  {
    sub_10004FFC4(v16, a2, a3, a1, v20);
  }

  return result;
}

uint64_t sub_10004FC4C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a2;
  v9 = sub_1000899A8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v14 = sub_1000813A4();
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_11;
  }

  v19 = v14;
  v20 = v15;
  sub_100008DC0(&qword_1000A6480, &qword_10008D888);
  if (!sub_10008A9A8(a4 & 1, v18))
  {
    goto LABEL_5;
  }

  v21 = sub_1000813A4();
  if ((v20 & 1) != (v22 & 1))
  {
LABEL_11:
    result = sub_10008AAA8();
    __break(1u);
    return result;
  }

  v19 = v21;
LABEL_5:
  v23 = *v5;
  if (v20)
  {
    v24 = (v23[7] + 16 * v19);
    v25 = v28;
    *v24 = a1;
    v24[1] = v25;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_10005000C(v19, v12, a1, v28, v23);
  }
}

uint64_t sub_10004FE20(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey(0);
  __chkstk_darwin(v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v14 = sub_100081474(a3);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_11;
  }

  v19 = v14;
  v20 = v15;
  sub_100008DC0(&qword_1000A6470, &qword_10008D880);
  if (!sub_10008A9A8(a4 & 1, v18))
  {
    goto LABEL_5;
  }

  v21 = sub_100081474(a3);
  if ((v20 & 1) != (v22 & 1))
  {
LABEL_11:
    result = sub_10008AAA8();
    __break(1u);
    return result;
  }

  v19 = v21;
LABEL_5:
  v23 = *v5;
  if (v20)
  {
    v24 = (v23[7] + 16 * v19);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_10005B654(a3, v12);
    return sub_1000500CC(v19, v12, a1, a2, v23);
  }
}

unint64_t sub_10004FFC4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_10005000C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_1000899A8();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_1000500CC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey(0);
  result = sub_10005B6A8(a2, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_100050188(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_10008D640;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1000501EC(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_100050BE8(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_100050318(uint64_t a1)
{
  v3 = sub_100008DC0(&qword_1000A6518, &qword_10008D908);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  v6 = sub_100089A08();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    v18[0] = v7 + 8;
    v18[1] = v7 + 16;

    for (i = 0; v13; result = sub_100017954(v5, &qword_1000A6518, &qword_10008D908))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v7 + 16))(v10, *(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v6);
      sub_100050D10(v10, v5);
      (*(v7 + 8))(v10, v6);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_100050534(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100008DC0(&qword_1000A5EC8, &unk_10008D488);
    v2 = sub_10008A8E8();
    v15 = v2;
    sub_10008A878();
    while (1)
    {
      if (!sub_10008A8A8())
      {

        return v2;
      }

      sub_100011D84(0, &qword_1000A5EA8, WFAction_ptr);
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_100051204(v3 + 1);
      }

      v2 = v15;
      result = sub_10008A758(*(v15 + 40));
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void *sub_100050710(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a2[2])
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v47 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;

    v15 = 0;
    v49 = v12;
    v50 = v7;
    v51 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        sub_10008AB08();

        sub_10008A2B8();
        v20 = sub_10008AB28();
        v21 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v20 & v21;
          v4 = (v20 & v21) >> 6;
          v8 = 1 << (v20 & v21);
          if ((v8 & v13[v4]) == 0)
          {
            break;
          }

          v22 = (v5[6] + 16 * v7);
          v23 = *v22 == v3 && v22[1] == v2;
          if (v23 || (sub_10008AA68() & 1) != 0)
          {
            v53 = v47;
            v54 = v16;
            v55 = v11;
            v3 = v50;
            v12 = v51;
            v52[0] = v51;
            v52[1] = v50;

            v25 = *(v5 + 32);
            v44 = ((1 << v25) + 63) >> 6;
            v2 = 8 * v44;
            if ((v25 & 0x3Fu) > 0xD)
            {
              goto LABEL_49;
            }

            while (1)
            {
              v45 = &v43;
              __chkstk_darwin(v24);
              v7 = &v43 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, v5 + 7, v2);
              v26 = *(v7 + 8 * v4) & ~v8;
              v27 = v5[2];
              v48 = v7;
              *(v7 + 8 * v4) = v26;
              v28 = v27 - 1;
              v29 = v49;
              while (1)
              {
                v46 = v28;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v31 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v32 = (*(v12 + 48) + ((v16 << 10) | (16 * v31)));
                v2 = *v32;
                v33 = v32[1];
                sub_10008AB08();

                sub_10008A2B8();
                v34 = sub_10008AB28();
                v35 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v34 & v35;
                  v7 = (v34 & v35) >> 6;
                  v8 = 1 << (v34 & v35);
                  if ((v8 & v13[v7]) == 0)
                  {

                    v3 = v50;
                    v12 = v51;
                    v29 = v49;
                    goto LABEL_24;
                  }

                  v36 = (v5[6] + 16 * v4);
                  if (*v36 == v2 && v36[1] == v33)
                  {
                    break;
                  }

                  v38 = sub_10008AA68();
                  v34 = v4 + 1;
                }

                while ((v38 & 1) == 0);

                v39 = v48[v7];
                v48[v7] = v39 & ~v8;
                v3 = v50;
                v12 = v51;
                v29 = v49;
                if ((v39 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v28 = v46 - 1;
                if (__OFSUB__(v46, 1))
                {
                  __break(1u);
                }

                if (v46 == 1)
                {

                  v5 = &_swiftEmptySetSingleton;
                  goto LABEL_43;
                }
              }

              while (1)
              {
                v30 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v30 >= v29)
                {
                  v5 = sub_100010B3C(v48, v44, v46, v5);
                  goto LABEL_43;
                }

                v11 = *(v3 + 8 * v30);
                ++v16;
                if (v11)
                {
                  v16 = v30;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v41 = swift_slowAlloc();
            v42 = sub_1000529FC(v41, v44, v5 + 7, v44, v5, v7, v52);

            v12 = v52[0];
            v47 = v53;
            v5 = v42;
LABEL_43:
            v14 = v12;
            goto LABEL_45;
          }

          v20 = v7 + 1;
        }

        v15 = v16;
        v7 = v50;
        v14 = v51;
        v12 = v49;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_48;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_45:
    sub_100011E9C(v14);
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v5;
}

uint64_t sub_100050BE8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_10008AB08();
  sub_10008A2B8();
  v6 = sub_10008AB28();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_10008AA68() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100052A84();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_10005482C(v8);
  *v2 = v15;
  return v13;
}

uint64_t sub_100050D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_100089A08();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = *v2;
  sub_10005AE38(&qword_1000A6610, &type metadata accessor for RuntimePlatform);
  v25 = a1;
  v9 = sub_10008A208();
  v24 = v8;
  v10 = ~(-1 << *(v8 + 32));
  while (1)
  {
    v11 = v9 & v10;
    if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
    {
      v14 = 1;
      v15 = v23;
      return sub_100009158(v15, v14, 1, v4);
    }

    v12 = *(v5 + 72) * v11;
    (*(v5 + 16))(v7, *(v24 + 48) + v12, v4);
    sub_10005AE38(&qword_1000A6618, &type metadata accessor for RuntimePlatform);
    v13 = sub_10008A228();
    (*(v5 + 8))(v7, v4);
    if (v13)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16 = v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v16;
  v26 = *v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100052F40(&type metadata accessor for RuntimePlatform);
    v18 = v26;
  }

  v19 = *(v18 + 48) + v12;
  v15 = v23;
  (*(v5 + 32))(v23, v19, v4);
  sub_1000549E4(v11);
  v14 = 0;
  *v16 = v26;
  return sub_100009158(v15, v14, 1, v4);
}

uint64_t sub_100050FA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100008DC0(&unk_1000A6440, &qword_10008D4A0);
  result = sub_10008A8D8();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_100050188(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_10008AB08();
    sub_10008A2B8();
    result = sub_10008AB28();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_100051204(uint64_t a1)
{
  sub_1000611A4();
  v2 = v1;
  v3 = *v1;
  sub_100008DC0(&qword_1000A5EC8, &unk_10008D488);
  sub_10005E428();
  v4 = sub_10008A8D8();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    sub_10006110C();
    return;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = v4 + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      ++v14;
      if (v7[v6])
      {
        sub_10005D470();
        v10 = v16 & v15;
        goto LABEL_12;
      }
    }

    if (1 << *(v3 + 32) >= 64)
    {
      v28 = sub_10005F65C();
      sub_100050188(v28, v29, v30);
    }

    else
    {
      sub_10005EB04();
      *v7 = v27;
    }

    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    v18 = sub_10008A758(*(v5 + 40));
    v19 = -1 << *(v5 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v5 + 48) + 8 * v22) = v17;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_100051404(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for ToolKitIndexer.LocaleWithUsage(0);
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100008DC0(&unk_1000A66E0, &unk_10008D9E0);
  result = sub_10008A8D8();
  v8 = result;
  if (!*(v6 + 16))
  {
LABEL_27:

    *v2 = v8;
    return result;
  }

  v29 = v1;
  v9 = 0;
  v10 = (v6 + 56);
  v11 = 1 << *(v6 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v6 + 56);
  v14 = (v11 + 63) >> 6;
  v15 = result + 56;
  if (!v13)
  {
LABEL_7:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      sub_100050188(0, (v28 + 63) >> 6, v6 + 56);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v29;
    *(v6 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_12:
    v19 = *(v30 + 72);
    sub_10005B6A8(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5);
    sub_10008AB08();
    sub_100088A08();
    sub_10008A2B8();

    sub_10008A268();
    sub_10008A2B8();

    result = sub_10008AB28();
    v20 = -1 << *(v8 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = sub_10005B6A8(v5, *(v8 + 48) + v23 * v19);
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v15 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100051758(uint64_t a1)
{
  v2 = v1;
  v36 = sub_100089A08();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100008DC0(&unk_1000A6620, &qword_10008D978);
  result = sub_10008A8D8();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_100050188(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_10005AE38(&qword_1000A6610, &type metadata accessor for RuntimePlatform);
    result = sub_10008A208();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100051AB0(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1000897A8();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100008DC0(&qword_1000A6648, &qword_10008D990);
  result = sub_10008A8D8();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_100050188(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_10005AE38(&qword_1000A6638, &type metadata accessor for TypedValue);
    result = sub_10008A208();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100051E08(uint64_t a1)
{
  v2 = v1;
  v36 = sub_100089888();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100008DC0(&unk_1000A6670, &qword_10008D9A8);
  result = sub_10008A8D8();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_100050188(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_10005AE38(&qword_1000A6660, &type metadata accessor for TypeInstance);
    result = sub_10008A208();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100052160(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1000899A8();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100008DC0(&qword_1000A6680, &qword_10008D9B0);
  result = sub_10008A8D8();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_100050188(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_10005AE38(&qword_1000A6428, &type metadata accessor for TypeIdentifier);
    result = sub_10008A208();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1000524B8(uint64_t a1)
{
  v2 = v1;
  v36 = sub_100089918();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100008DC0(&qword_1000A6698, &qword_10008D9B8);
  result = sub_10008A8D8();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_100050188(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_10005AE38(&qword_1000A6688, &type metadata accessor for TypeDefinition);
    result = sub_10008A208();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t *sub_100052810(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    sub_10008AB08();

    sub_10008A2B8();
    v16 = sub_10008AB28();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = sub_10008AA68();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = v27[v19];
    v27[v19] = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return &_swiftEmptySetSingleton;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_100010B3C(v27, a2, v26, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

unint64_t *sub_1000529FC(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_100052810(a1, a2, a5, a6, a7);

  return v12;
}

void *sub_100052A84()
{
  v1 = v0;
  sub_100008DC0(&unk_1000A6440, &qword_10008D4A0);
  v2 = *v0;
  v3 = sub_10008A8C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_100052BDC()
{
  v1 = v0;
  sub_100008DC0(&qword_1000A5EC8, &unk_10008D488);
  v2 = *v0;
  v3 = sub_10008A8C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100052D2C()
{
  v1 = v0;
  v2 = type metadata accessor for ToolKitIndexer.LocaleWithUsage(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008DC0(&unk_1000A66E0, &unk_10008D9E0);
  v6 = *v0;
  v7 = sub_10008A8C8();
  v8 = v7;
  if (*(v6 + 16))
  {
    v23 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_10005B654(*(v6 + 48) + v21, v5);
        result = sub_10005B6A8(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

void sub_100052F40(uint64_t a1)
{
  sub_1000611A4();
  v2 = v1;
  v4 = v3(0);
  sub_100012368();
  v6 = v5;
  sub_1000602BC();
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  v10 = sub_10005EC4C();
  sub_100008DC0(v10, v11);
  v12 = *v1;
  v13 = sub_10008A8C8();
  v14 = v13;
  if (*(v12 + 16))
  {
    v29 = v2;
    v15 = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || v15 >= v12 + 56 + 8 * v16)
    {
      memmove(v15, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v30 = v6 + 32;
    v31 = v6 + 16;
    while (v21)
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v27 = *(v6 + 72) * (v23 | (v18 << 6));
      (*(v6 + 16))(v9, *(v12 + 48) + v27, v4);
      (*(v6 + 32))(*(v14 + 48) + v27, v9, v4);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v2 = v29;
        goto LABEL_21;
      }

      ++v24;
      if (*(v12 + 56 + 8 * v18))
      {
        sub_10005D470();
        v21 = v26 & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v2 = v14;
    sub_10006110C();
  }
}

uint64_t sub_10005314C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100008DC0(&unk_1000A6440, &qword_10008D4A0);
  result = sub_10008A8D8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_10008AB08();

        sub_10008A2B8();
        result = sub_10008AB28();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100053380(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100008DC0(&qword_1000A5EC8, &unk_10008D488);
  result = sub_10008A8D8();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(v5 + 40);
        v16 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = sub_10008A758(v15);
        v17 = -1 << *(v5 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v16;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v25;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100053590(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for ToolKitIndexer.LocaleWithUsage(0);
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100008DC0(&unk_1000A66E0, &unk_10008D9E0);
  result = sub_10008A8D8();
  v8 = result;
  if (*(v6 + 16))
  {
    v27 = v1;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_12:
        v18 = *(v28 + 72);
        sub_10005B654(*(v6 + 48) + v18 * (v15 | (v9 << 6)), v5);
        sub_10008AB08();
        sub_100088A08();
        sub_10008A2B8();

        sub_10008A268();
        sub_10008A2B8();

        result = sub_10008AB28();
        v19 = -1 << *(v8 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        result = sub_10005B6A8(v5, *(v8 + 48) + v22 * v18);
        ++*(v8 + 16);
        if (!v12)
        {
          goto LABEL_7;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v9;
      while (1)
      {
        v9 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v9 >= v13)
        {

          v2 = v27;
          goto LABEL_25;
        }

        v17 = *(v6 + 56 + 8 * v9);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v12 = (v17 - 1) & v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1000538B4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_100089A08();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100008DC0(&unk_1000A6620, &qword_10008D978);
  v7 = sub_10008A8D8();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_10005AE38(&qword_1000A6610, &type metadata accessor for RuntimePlatform);
        result = sub_10008A208();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_100053BCC(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1000897A8();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100008DC0(&qword_1000A6648, &qword_10008D990);
  v7 = sub_10008A8D8();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_10005AE38(&qword_1000A6638, &type metadata accessor for TypedValue);
        result = sub_10008A208();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_100053EE4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_100089888();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100008DC0(&unk_1000A6670, &qword_10008D9A8);
  v7 = sub_10008A8D8();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_10005AE38(&qword_1000A6660, &type metadata accessor for TypeInstance);
        result = sub_10008A208();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1000541FC(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1000899A8();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100008DC0(&qword_1000A6680, &qword_10008D9B0);
  v7 = sub_10008A8D8();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_10005AE38(&qword_1000A6428, &type metadata accessor for TypeIdentifier);
        result = sub_10008A208();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_100054514(uint64_t a1)
{
  v2 = v1;
  v33 = sub_100089918();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100008DC0(&qword_1000A6698, &qword_10008D9B8);
  v7 = sub_10008A8D8();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_10005AE38(&qword_1000A6688, &type metadata accessor for TypeDefinition);
        result = sub_10008A208();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

unint64_t sub_10005482C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_10008A858();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_10008AB08();

        sub_10008A2B8();
        v10 = sub_10008AB28();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1000549E4(int64_t a1)
{
  v3 = sub_100089A08();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_10008A858();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v37 = (v13 + 1) & v12;
      v15 = *(v4 + 16);
      v14 = v4 + 16;
      v36 = v15;
      v16 = *(v14 + 56);
      v38 = v14;
      v39 = v16;
      v17 = v12;
      v18 = (v14 - 8);
      v19 = v8;
      while (1)
      {
        v20 = v9;
        v21 = v39 * v11;
        v22 = v17;
        v36(v7, *(v19 + 48) + v39 * v11, v3);
        v23 = v19;
        sub_10005AE38(&qword_1000A6610, &type metadata accessor for RuntimePlatform);
        v24 = sub_10008A208();
        (*v18)(v7, v3);
        v17 = v22;
        v25 = v24 & v22;
        if (a1 >= v37)
        {
          if (v25 < v37 || a1 < v25)
          {
LABEL_20:
            v19 = v23;
            goto LABEL_24;
          }
        }

        else if (v25 < v37 && a1 < v25)
        {
          goto LABEL_20;
        }

        v19 = v23;
        v27 = *(v23 + 48);
        v28 = v39 * a1;
        v29 = v27 + v39 * a1;
        v30 = v27 + v21 + v39;
        if (v39 * a1 < v21 || v29 >= v30)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v17 = v22;
          a1 = v11;
          goto LABEL_24;
        }

        a1 = v11;
        if (v28 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v11 = (v11 + 1) & v17;
        v9 = v20;
        if (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v19 = v8;
LABEL_28:
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v19 = v8;
  }

  v33 = *(v19 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v35;
    ++*(v19 + 36);
  }

  return result;
}

BOOL sub_100054CF0(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_10008AB08();
  sub_10008A2B8();
  v8 = sub_10008AB28();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_10008AA68() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_100056B28(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_100054E3C(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    sub_10005F0DC();
    v9 = sub_10008A898();

    if (v9)
    {

      sub_100011D84(0, &qword_1000A5EA8, WFAction_ptr);
      sub_10005ED24();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
    }

    else
    {
      result = sub_10008A888();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v17 = sub_100050534(v7, result + 1);
        v18 = v17[2];
        if (v17[3] <= v18)
        {
          sub_100051204(v18 + 1);
        }

        v19 = v8;
        sub_100010AB8(v19, v17);

        *v3 = v17;
LABEL_16:
        *a1 = v19;
        return 1;
      }
    }
  }

  else
  {
    sub_100011D84(0, &qword_1000A5EA8, WFAction_ptr);
    sub_10008A758(*(v6 + 40));
    sub_10005EB04();
    v13 = ~v12;
    while (1)
    {
      v14 = v11 & v13;
      if (((*(v6 + 56 + (((v11 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v13)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = *v3;
        v19 = a2;
        sub_100056C90(v19, v14, isUniquelyReferenced_nonNull_native);
        *v3 = v24;
        goto LABEL_16;
      }

      v15 = *(*(v6 + 48) + 8 * v14);
      v16 = sub_10008A768();

      if (v16)
      {
        break;
      }

      v11 = v14 + 1;
    }

    v21 = *(*(v6 + 48) + 8 * v14);
    *a1 = v21;
    v22 = v21;
    return 0;
  }

  return result;
}

uint64_t sub_100055054(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v4 = type metadata accessor for ToolKitIndexer.LocaleWithUsage(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v34 = &v33 - v9;
  v35 = v2;
  v10 = *v2;
  sub_10008AB08();
  sub_100088A08();
  sub_10008A2B8();

  v38 = v4;
  v39 = a2;
  v37 = *(a2 + *(v4 + 20));
  sub_10008A268();
  sub_10008A2B8();

  v11 = sub_10008AB28();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_16:
    v28 = v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v39;
    v31 = v34;
    sub_10005B654(v39, v34);
    v40 = *v28;
    sub_100056DF4(v31, v13, isUniquelyReferenced_nonNull_native);
    *v28 = v40;
    sub_10005B6A8(v30, v36);
    return 1;
  }

  v14 = ~v12;
  v15 = *(v5 + 72);
  while (1)
  {
    sub_10005B654(*(v10 + 48) + v15 * v13, v8);
    v16 = sub_100088A08();
    v18 = v17;
    if (v16 == sub_100088A08() && v18 == v19)
    {
    }

    else
    {
      v21 = sub_10008AA68();

      if ((v21 & 1) == 0)
      {
        sub_10005B2EC(v8, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
        goto LABEL_15;
      }
    }

    v22 = sub_10008A268();
    v24 = v23;
    if (v22 == sub_10008A268() && v24 == v25)
    {
      break;
    }

    v27 = sub_10008AA68();

    sub_10005B2EC(v8, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
    if (v27)
    {
      goto LABEL_18;
    }

LABEL_15:
    v13 = (v13 + 1) & v14;
    if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  sub_10005B2EC(v8, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
LABEL_18:
  sub_10005B2EC(v39, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
  sub_10005B654(*(v10 + 48) + v15 * v13, v36);
  return 0;
}

BOOL sub_100055410(char *a1, char *a2)
{
  v22 = a1;
  v4 = sub_100089A08();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_10005AE38(&qword_1000A6610, &type metadata accessor for RuntimePlatform);
  v27 = a2;
  v9 = sub_10008A208();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_100057180(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_10005AE38(&qword_1000A6618, &type metadata accessor for RuntimePlatform);
    v15 = sub_10008A228();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

BOOL sub_1000556D8(char *a1, char *a2)
{
  v22 = a1;
  v4 = sub_1000897A8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_10005AE38(&qword_1000A6638, &type metadata accessor for TypedValue);
  v27 = a2;
  v9 = sub_10008A208();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_100057430(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_10005AE38(&qword_1000A6640, &type metadata accessor for TypedValue);
    v15 = sub_10008A228();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

BOOL sub_1000559A0(char *a1, char *a2)
{
  v22 = a1;
  v4 = sub_100089888();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_10005AE38(&qword_1000A6660, &type metadata accessor for TypeInstance);
  v27 = a2;
  v9 = sub_10008A208();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_1000576E0(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_10005AE38(&qword_1000A6668, &type metadata accessor for TypeInstance);
    v15 = sub_10008A228();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

BOOL sub_100055C68(char *a1, char *a2)
{
  v22 = a1;
  v4 = sub_1000899A8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_10005AE38(&qword_1000A6428, &type metadata accessor for TypeIdentifier);
  v27 = a2;
  v9 = sub_10008A208();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_100057990(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_10005AE38(&qword_1000A6C80, &type metadata accessor for TypeIdentifier);
    v15 = sub_10008A228();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

BOOL sub_100055F30(char *a1, char *a2)
{
  v22 = a1;
  v4 = sub_100089918();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_10005AE38(&qword_1000A6688, &type metadata accessor for TypeDefinition);
  v27 = a2;
  v9 = sub_10008A208();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_100057C40(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_10005AE38(&qword_1000A6690, &type metadata accessor for TypeDefinition);
    v15 = sub_10008A228();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

void sub_1000561F8(unint64_t a1)
{
  v1 = a1;
  if (sub_10001BEBC(a1))
  {
    sub_100008DC0(&qword_1000A5EC8, &unk_10008D488);
    sub_10005E028();
    v2 = sub_10008A8F8();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v22 = sub_10008391C();
  if (v22)
  {
    v3 = 0;
    v4 = v2 + 7;
    v20 = v1;
    v21 = v1 & 0xC000000000000001;
    v19 = v1 + 32;
    while (1)
    {
      sub_10004F878(v3, v21 == 0, v1);
      if (v21)
      {
        sub_10005E810();
        v5 = sub_10008A928();
      }

      else
      {
        v5 = *(v19 + 8 * v3);
      }

      v6 = v5;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      sub_10008A758(v2[5]);
      sub_10005EB04();
      v10 = ~v9;
      while (1)
      {
        v11 = v8 & v10;
        v12 = (v8 & v10) >> 6;
        v13 = v4[v12];
        v14 = 1 << (v8 & v10);
        if ((v14 & v13) == 0)
        {
          break;
        }

        sub_100011D84(0, &qword_1000A5EA8, WFAction_ptr);
        v15 = *(v2[6] + 8 * v11);
        v16 = sub_10008A768();

        if (v16)
        {

          goto LABEL_17;
        }

        v8 = v11 + 1;
      }

      v4[v12] = v14 | v13;
      *(v2[6] + 8 * v11) = v6;
      v17 = v2[2];
      v7 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      v2[2] = v18;
LABEL_17:
      v1 = v20;
      if (v3 == v22)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

_BYTE *sub_1000563B0(uint64_t a1)
{
  v39 = type metadata accessor for ToolKitIndexer.LocaleWithUsage(0);
  v37 = *(v39 - 8);
  v2 = __chkstk_darwin(v39);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v34 - v5;
  if (!*(a1 + 16))
  {
    v8 = &_swiftEmptySetSingleton;
    goto LABEL_28;
  }

  sub_100008DC0(&unk_1000A66E0, &unk_10008D9E0);
  result = sub_10008A8F8();
  v8 = result;
  v36 = *(a1 + 16);
  if (!v36)
  {
    goto LABEL_28;
  }

  v9 = 0;
  v40 = result + 56;
  v10 = *(v37 + 80);
  v34 = a1;
  v35 = a1 + ((v10 + 32) & ~v10);
  while (1)
  {
    if (v9 >= *(a1 + 16))
    {
      __break(1u);
      goto LABEL_30;
    }

    v11 = *(v37 + 72);
    sub_10005B654(v35 + v11 * v9, v6);
    sub_10008AB08();
    sub_100088A08();
    sub_10008A2B8();

    sub_10008A268();
    sub_10008A2B8();

    v12 = sub_10008AB28();
    v13 = -1 << v8[32];
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    v16 = *&v40[8 * (v14 >> 6)];
    v17 = 1 << v14;
    if (((1 << v14) & v16) == 0)
    {
      break;
    }

    v38 = v9;
    v18 = ~v13;
    while (1)
    {
      sub_10005B654(*(v8 + 6) + v14 * v11, v4);
      v19 = sub_100088A08();
      v21 = v20;
      if (v19 == sub_100088A08() && v21 == v22)
      {
      }

      else
      {
        v24 = sub_10008AA68();

        if ((v24 & 1) == 0)
        {
          sub_10005B2EC(v4, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
          goto LABEL_19;
        }
      }

      v25 = sub_10008A268();
      v27 = v26;
      if (v25 == sub_10008A268() && v27 == v28)
      {
        break;
      }

      v30 = sub_10008AA68();

      sub_10005B2EC(v4, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
      if (v30)
      {
        goto LABEL_24;
      }

LABEL_19:
      v14 = (v14 + 1) & v18;
      v15 = v14 >> 6;
      v16 = *&v40[8 * (v14 >> 6)];
      v17 = 1 << v14;
      if ((v16 & (1 << v14)) == 0)
      {
        a1 = v34;
        v9 = v38;
        goto LABEL_21;
      }
    }

    sub_10005B2EC(v4, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
LABEL_24:
    result = sub_10005B2EC(v6, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
    a1 = v34;
    v9 = v38;
LABEL_25:
    if (++v9 == v36)
    {
LABEL_28:

      return v8;
    }
  }

LABEL_21:
  *&v40[8 * v15] = v16 | v17;
  result = sub_10005B6A8(v6, *(v8 + 6) + v14 * v11);
  v31 = *(v8 + 2);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (!v32)
  {
    *(v8 + 2) = v33;
    goto LABEL_25;
  }

LABEL_30:
  __break(1u);
  return result;
}

_BYTE *sub_1000567E4(uint64_t a1)
{
  v2 = sub_100089A08();
  v32 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v36 = &v27 - v6;
  if (!*(a1 + 16))
  {
    v8 = &_swiftEmptySetSingleton;
    goto LABEL_15;
  }

  sub_100008DC0(&unk_1000A6620, &qword_10008D978);
  result = sub_10008A8F8();
  v8 = result;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_15:

    return v8;
  }

  v9 = 0;
  v35 = result + 56;
  v10 = *(v32 + 80);
  v29 = a1;
  v30 = a1 + ((v10 + 32) & ~v10);
  v34 = v32 + 16;
  v11 = (v32 + 8);
  v28 = (v32 + 32);
  while (v9 < *(a1 + 16))
  {
    v12 = *(v32 + 72);
    v33 = v9 + 1;
    v13 = *(v32 + 16);
    v13(v36, v30 + v12 * v9, v2);
    sub_10005AE38(&qword_1000A6610, &type metadata accessor for RuntimePlatform);
    v14 = sub_10008A208();
    v15 = ~(-1 << v8[32]);
    while (1)
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *&v35[8 * v17];
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) == 0)
      {
        break;
      }

      v20 = v8;
      v13(v5, *(v8 + 6) + v16 * v12, v2);
      sub_10005AE38(&qword_1000A6618, &type metadata accessor for RuntimePlatform);
      v21 = sub_10008A228();
      v22 = *v11;
      (*v11)(v5, v2);
      if (v21)
      {
        result = (v22)(v36, v2);
        v8 = v20;
        goto LABEL_12;
      }

      v14 = v16 + 1;
      v8 = v20;
    }

    v23 = v36;
    *&v35[8 * v17] = v19 | v18;
    result = (*v28)(*(v8 + 6) + v16 * v12, v23, v2);
    v24 = *(v8 + 2);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    *(v8 + 2) = v26;
LABEL_12:
    v9 = v33;
    a1 = v29;
    if (v33 == v31)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_100056B28(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_100050FA8(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_10005314C(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_10008AB08();
      sub_10008A2B8();
      result = sub_10008AB28();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_10008AA68() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_100052A84();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_10008AA98();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

unint64_t sub_100056C90(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100051204(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_100053380(v6 + 1);
LABEL_8:
      v8 = *v3;
      result = sub_10008A758(*(*v3 + 40));
      v9 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v9;
        if (((*(v8 + 56 + (((result & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v9)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_100011D84(0, &qword_1000A5EA8, WFAction_ptr);
        v10 = *(*(v8 + 48) + 8 * a2);
        v11 = sub_10008A768();

        if (v11)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_100052BDC();
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_15:
    result = sub_10008AA98();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v15;
  }

  return result;
}

uint64_t sub_100056DF4(uint64_t a1, unint64_t a2, char a3)
{
  v38 = type metadata accessor for ToolKitIndexer.LocaleWithUsage(0);
  v7 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v35 = v7;
  v36 = v3;
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100051404(v10 + 1);
    }

    else
    {
      if (v11 > v10)
      {
        sub_100052D2C();
        goto LABEL_23;
      }

      sub_100053590(v10 + 1);
    }

    v12 = *v3;
    sub_10008AB08();
    sub_100088A08();
    sub_10008A2B8();

    v37 = *(a1 + *(v38 + 20));
    sub_10008A268();
    sub_10008A2B8();

    v13 = sub_10008AB28();
    v14 = -1 << *(v12 + 32);
    a2 = v13 & ~v14;
    if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v15 = ~v14;
      v16 = *(v7 + 72);
      do
      {
        sub_10005B654(*(v12 + 48) + v16 * a2, v9);
        v17 = sub_100088A08();
        v19 = v18;
        if (v17 == sub_100088A08() && v19 == v20)
        {
        }

        else
        {
          v22 = sub_10008AA68();

          if ((v22 & 1) == 0)
          {
            sub_10005B2EC(v9, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
            goto LABEL_22;
          }
        }

        v23 = sub_10008A268();
        v25 = v24;
        if (v23 == sub_10008A268() && v25 == v26)
        {
          goto LABEL_26;
        }

        v28 = sub_10008AA68();

        sub_10005B2EC(v9, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
        if (v28)
        {
          goto LABEL_27;
        }

LABEL_22:
        a2 = (a2 + 1) & v15;
      }

      while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_23:
  v29 = *v36;
  *(*v36 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_10005B6A8(a1, *(v29 + 48) + *(v35 + 72) * a2);
  v31 = *(v29 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
LABEL_26:

    sub_10005B2EC(v9, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
LABEL_27:
    result = sub_10008AA98();
    __break(1u);
  }

  else
  {
    *(v29 + 16) = v33;
  }

  return result;
}

uint64_t sub_100057180(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_100089A08();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100051758(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_1000538B4(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_10005AE38(&qword_1000A6610, &type metadata accessor for RuntimePlatform);
      v13 = sub_10008A208();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_10005AE38(&qword_1000A6618, &type metadata accessor for RuntimePlatform);
        v15 = sub_10008A228();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_100052F40(&type metadata accessor for RuntimePlatform);
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_10008AA98();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_100057430(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_1000897A8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100051AB0(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_100053BCC(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_10005AE38(&qword_1000A6638, &type metadata accessor for TypedValue);
      v13 = sub_10008A208();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_10005AE38(&qword_1000A6640, &type metadata accessor for TypedValue);
        v15 = sub_10008A228();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_100052F40(&type metadata accessor for TypedValue);
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_10008AA98();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_1000576E0(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_100089888();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100051E08(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_100053EE4(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_10005AE38(&qword_1000A6660, &type metadata accessor for TypeInstance);
      v13 = sub_10008A208();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_10005AE38(&qword_1000A6668, &type metadata accessor for TypeInstance);
        v15 = sub_10008A228();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_100052F40(&type metadata accessor for TypeInstance);
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_10008AA98();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_100057990(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_1000899A8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100052160(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_1000541FC(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_10005AE38(&qword_1000A6428, &type metadata accessor for TypeIdentifier);
      v13 = sub_10008A208();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_10005AE38(&qword_1000A6C80, &type metadata accessor for TypeIdentifier);
        v15 = sub_10008A228();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_100052F40(&type metadata accessor for TypeIdentifier);
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_10008AA98();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_100057C40(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_100089918();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1000524B8(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_100054514(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_10005AE38(&qword_1000A6688, &type metadata accessor for TypeDefinition);
      v13 = sub_10008A208();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_10005AE38(&qword_1000A6690, &type metadata accessor for TypeDefinition);
        v15 = sub_10008A228();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_100052F40(&type metadata accessor for TypeDefinition);
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_10008AA98();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_100057EF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

Swift::Int sub_100057F68(uint64_t *a1)
{
  v2 = *(type metadata accessor for ToolKitIndexer.LocaleWithUsage(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_10005BE70(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_100058130(v7, type metadata accessor for ToolKitIndexer.LocaleWithUsage, sub_1000587F8, sub_10005827C);
  *a1 = v3;
  return result;
}

Swift::Int sub_10005804C(uint64_t *a1)
{
  v2 = *(sub_100089A08() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_10005BE84(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_100058130(v7, &type metadata accessor for RuntimePlatform, sub_100059128, sub_1000584D8);
  *a1 = v3;
  return result;
}

Swift::Int sub_100058130(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_10008AA18(v8);
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = _swiftEmptyArrayStorage;
      }

      else
      {
        a2(0);
        v12 = sub_10008A358();
        v12[2] = v11;
      }

      v13 = a2(0);
      sub_10005E3B0(v13);
      sub_10005D9C4();
      v15[0] = v12 + v14;
      v15[1] = v11;
      a3(v15, v16, a1, v10);
      v12[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_10005827C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ToolKitIndexer.LocaleWithUsage(0);
  v9 = __chkstk_darwin(v8);
  v39 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v30 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v30 - v16;
  v32 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v37 = -v19;
    v38 = v18;
    v21 = a1 - a3;
    v31 = v19;
    v22 = v18 + v19 * a3;
    while (2)
    {
      v35 = v20;
      v36 = a3;
      v33 = v22;
      v34 = v21;
      do
      {
        sub_10005B654(v22, v17);
        sub_10005B654(v20, v13);
        v23 = *(v8 + 24);
        v24 = v8;
        v25 = *&v17[v23];
        v26 = *&v13[v23];
        sub_10005B2EC(v13, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
        result = sub_10005B2EC(v17, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
        v27 = v25 < v26;
        v8 = v24;
        if (!v27)
        {
          break;
        }

        if (!v38)
        {
          __break(1u);
          return result;
        }

        v28 = v39;
        sub_10005B6A8(v22, v39);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_10005B6A8(v28, v20);
        v20 += v37;
        v22 += v37;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v36 + 1;
      v20 = v35 + v31;
      v21 = v34 - 1;
      v22 = v33 + v31;
      if (v36 + 1 != v32)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1000584D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_100089A08();
  v9 = __chkstk_darwin(v8);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  result = __chkstk_darwin(v11);
  v16 = &v40 - v15;
  v42 = a2;
  if (a3 != a2)
  {
    v17 = v14;
    v18 = *a4;
    v20 = *(v13 + 16);
    v19 = v13 + 16;
    v21 = *(v19 + 56);
    v51 = (v19 - 8);
    v52 = v20;
    v53 = v19;
    v48 = (v19 + 16);
    v49 = v18;
    v22 = v18 + v21 * (a3 - 1);
    v47 = -v21;
    v23 = a1 - a3;
    v41 = v21;
    v24 = v18 + v21 * a3;
    while (2)
    {
      v45 = v22;
      v46 = a3;
      v43 = v24;
      v44 = v23;
      v25 = v22;
      while (1)
      {
        v26 = v52;
        v52(v16, v24, v8);
        v26(v17, v25, v8);
        v27 = sub_1000899E8();
        v28 = v16;
        v29 = v17;
        v31 = v30;
        if (v27 == sub_1000899E8() && v31 == v32)
        {
          break;
        }

        v34 = sub_10008AA68();

        v35 = *v51;
        (*v51)(v29, v8);
        result = (v35)(v28, v8);
        v17 = v29;
        v16 = v28;
        if (v34)
        {
          if (!v49)
          {
            __break(1u);
            return result;
          }

          v36 = *v48;
          v37 = v50;
          (*v48)(v50, v24, v8);
          swift_arrayInitWithTakeFrontToBack();
          result = (v36)(v25, v37, v8);
          v25 += v47;
          v24 += v47;
          if (!__CFADD__(v23++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v39 = *v51;
      (*v51)(v29, v8);
      result = (v39)(v28, v8);
      v17 = v29;
      v16 = v28;
LABEL_14:
      a3 = v46 + 1;
      v22 = v45 + v41;
      v23 = v44 - 1;
      v24 = v43 + v41;
      if (v46 + 1 != v42)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1000587F8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v115 = a1;
  v6 = type metadata accessor for ToolKitIndexer.LocaleWithUsage(0);
  v121 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v117 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v127 = &v112 - v10;
  v11 = __chkstk_darwin(v9);
  v130 = &v112 - v12;
  __chkstk_darwin(v11);
  v129 = &v112 - v13;
  v123 = a3;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = _swiftEmptyArrayStorage;
LABEL_100:
    v130 = *v115;
    if (!v130)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v124;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_102:
      v104 = v16 + 16;
      v105 = *(v16 + 2);
      while (v105 >= 2)
      {
        if (!*v123)
        {
          goto LABEL_138;
        }

        v106 = v6;
        v107 = v16;
        v6 = &v16[16 * v105];
        v108 = *v6;
        v109 = &v104[2 * v105];
        v110 = v109[1];
        sub_100059CEC(*v123 + *(v121 + 72) * *v6, *v123 + *(v121 + 72) * *v109, *v123 + *(v121 + 72) * v110, v130);
        v16 = v106;
        if (v106)
        {
          break;
        }

        if (v110 < v108)
        {
          goto LABEL_126;
        }

        if (v105 - 2 >= *v104)
        {
          goto LABEL_127;
        }

        *v6 = v108;
        *(v6 + 8) = v110;
        v111 = *v104 - v105;
        if (*v104 < v105)
        {
          goto LABEL_128;
        }

        v105 = *v104 - 1;
        memmove(v109, v109 + 2, 16 * v111);
        *v104 = v105;
        v6 = 0;
        v16 = v107;
      }

LABEL_110:

      return;
    }

LABEL_135:
    v16 = sub_10005A7D4(v16);
    goto LABEL_102;
  }

  v112 = a4;
  v15 = 0;
  v16 = _swiftEmptyArrayStorage;
  v128 = v6;
  while (1)
  {
    v17 = v15++;
    if (v15 < v14)
    {
      v113 = v16;
      v18 = *v123;
      v19 = *(v121 + 72);
      v20 = *v123 + v19 * v15;
      v21 = v15;
      v22 = v129;
      v120 = v14;
      sub_10005B654(v20, v129);
      v23 = v130;
      sub_10005B654(v18 + v19 * v17, v130);
      v24 = *(v6 + 24);
      v25 = *(v22 + v24);
      v118 = *(v23 + v24);
      v119 = v25;
      sub_10005B2EC(v23, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
      v26 = v22;
      v15 = v21;
      sub_10005B2EC(v26, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
      v27 = v120;
      v114 = v17;
      v28 = (v17 + 2);
      v122 = v19;
      v29 = v18 + v19 * (v17 + 2);
      while (1)
      {
        v16 = v28;
        v30 = v15 + 1;
        if (v30 >= v27)
        {
          break;
        }

        LODWORD(v126) = v119 < v118;
        v125 = v30;
        v31 = v129;
        sub_10005B654(v29, v129);
        v32 = v130;
        sub_10005B654(v20, v130);
        v33 = *(v6 + 24);
        v34 = *(v31 + v33);
        v35 = *(v32 + v33);
        sub_10005B2EC(v32, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
        v36 = v31;
        v15 = v125;
        sub_10005B2EC(v36, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
        v27 = v120;
        v29 += v122;
        v20 += v122;
        v28 = v16 + 1;
        if (((v126 ^ (v34 >= v35)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v15 = v27;
LABEL_9:
      if (v119 < v118)
      {
        v17 = v114;
        if (v15 < v114)
        {
          goto LABEL_132;
        }

        if (v114 >= v15)
        {
          v16 = v113;
          goto LABEL_30;
        }

        if (v27 >= v16)
        {
          v37 = v16;
        }

        else
        {
          v37 = v27;
        }

        v38 = v122 * (v37 - 1);
        v39 = v122 * v37;
        v40 = v114 * v122;
        v41 = v114;
        v42 = v15;
        do
        {
          if (v41 != --v42)
          {
            v43 = *v123;
            if (!*v123)
            {
              goto LABEL_139;
            }

            sub_10005B6A8(v43 + v40, v117);
            v44 = v40 < v38 || v43 + v40 >= (v43 + v39);
            if (v44)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v40 != v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_10005B6A8(v117, v43 + v38);
          }

          ++v41;
          v38 -= v122;
          v39 -= v122;
          v40 += v122;
        }

        while (v41 < v42);
      }

      v16 = v113;
      v17 = v114;
    }

LABEL_30:
    v45 = v123[1];
    if (v15 < v45)
    {
      if (__OFSUB__(v15, v17))
      {
        goto LABEL_131;
      }

      if (v15 - v17 < v112)
      {
        break;
      }
    }

LABEL_48:
    if (v15 < v17)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100080408();
      v16 = v101;
    }

    v59 = *(v16 + 2);
    v60 = v59 + 1;
    if (v59 >= *(v16 + 3) >> 1)
    {
      sub_100080408();
      v16 = v102;
    }

    *(v16 + 2) = v60;
    v61 = v16 + 32;
    v62 = &v16[16 * v59 + 32];
    *v62 = v17;
    *(v62 + 1) = v15;
    v126 = *v115;
    if (!v126)
    {
      goto LABEL_140;
    }

    if (v59)
    {
      while (1)
      {
        v63 = v60 - 1;
        v64 = &v61[16 * v60 - 16];
        v65 = &v16[16 * v60];
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v66 = *(v16 + 4);
          v67 = *(v16 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_68:
          if (v69)
          {
            goto LABEL_117;
          }

          v81 = *v65;
          v80 = *(v65 + 1);
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_120;
          }

          v85 = *(v64 + 1);
          v86 = v85 - *v64;
          if (__OFSUB__(v85, *v64))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v83, v86))
          {
            goto LABEL_125;
          }

          if (v83 + v86 >= v68)
          {
            if (v68 < v86)
            {
              v63 = v60 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v60 < 2)
        {
          goto LABEL_119;
        }

        v88 = *v65;
        v87 = *(v65 + 1);
        v76 = __OFSUB__(v87, v88);
        v83 = v87 - v88;
        v84 = v76;
LABEL_83:
        if (v84)
        {
          goto LABEL_122;
        }

        v90 = *v64;
        v89 = *(v64 + 1);
        v76 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v76)
        {
          goto LABEL_124;
        }

        if (v91 < v83)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v63 - 1 >= v60)
        {
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v123)
        {
          goto LABEL_137;
        }

        v95 = &v61[16 * v63 - 16];
        v96 = *v95;
        v97 = &v61[16 * v63];
        v98 = *(v97 + 1);
        v99 = v124;
        sub_100059CEC(*v123 + *(v121 + 72) * *v95, *v123 + *(v121 + 72) * *v97, *v123 + *(v121 + 72) * v98, v126);
        v6 = v99;
        if (v99)
        {
          goto LABEL_110;
        }

        if (v98 < v96)
        {
          goto LABEL_112;
        }

        v124 = 0;
        v6 = v16;
        v16 = *(v16 + 2);
        if (v63 > v16)
        {
          goto LABEL_113;
        }

        *v95 = v96;
        *(v95 + 1) = v98;
        if (v63 >= v16)
        {
          goto LABEL_114;
        }

        v60 = (v16 - 1);
        memmove(&v61[16 * v63], v97 + 16, 16 * &v16[-v63 - 1]);
        *(v6 + 16) = v16 - 1;
        v100 = v16 > 2;
        v16 = v6;
        v6 = v128;
        if (!v100)
        {
          goto LABEL_97;
        }
      }

      v70 = &v61[16 * v60];
      v71 = *(v70 - 8);
      v72 = *(v70 - 7);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_115;
      }

      v75 = *(v70 - 6);
      v74 = *(v70 - 5);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_116;
      }

      v77 = *(v65 + 1);
      v78 = v77 - *v65;
      if (__OFSUB__(v77, *v65))
      {
        goto LABEL_118;
      }

      v76 = __OFADD__(v68, v78);
      v79 = v68 + v78;
      if (v76)
      {
        goto LABEL_121;
      }

      if (v79 >= v73)
      {
        v93 = *v64;
        v92 = *(v64 + 1);
        v76 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v76)
        {
          goto LABEL_129;
        }

        if (v68 < v94)
        {
          v63 = v60 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v14 = v123[1];
    if (v15 >= v14)
    {
      goto LABEL_100;
    }
  }

  v46 = v17 + v112;
  if (__OFADD__(v17, v112))
  {
    goto LABEL_133;
  }

  if (v46 >= v45)
  {
    v46 = v123[1];
  }

  if (v46 < v17)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v15 == v46)
  {
    goto LABEL_48;
  }

  v113 = v16;
  v114 = v17;
  v47 = *(v121 + 72);
  v48 = *v123 + v47 * (v15 - 1);
  v49 = -v47;
  v50 = v17 - v15;
  v126 = *v123;
  v116 = v47;
  v51 = v126 + v15 * v47;
  v118 = v46;
LABEL_39:
  v125 = v15;
  v119 = v51;
  v120 = v50;
  v122 = v48;
  v52 = v48;
  while (1)
  {
    v53 = v129;
    sub_10005B654(v51, v129);
    v54 = v130;
    sub_10005B654(v52, v130);
    v55 = *(v6 + 24);
    v56 = *(v53 + v55);
    v57 = *(v54 + v55);
    sub_10005B2EC(v54, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
    sub_10005B2EC(v53, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
    if (v56 >= v57)
    {
      v6 = v128;
LABEL_46:
      v15 = v125 + 1;
      v48 = v122 + v116;
      v50 = v120 - 1;
      v51 = v119 + v116;
      if (v125 + 1 == v118)
      {
        v15 = v118;
        v16 = v113;
        v17 = v114;
        goto LABEL_48;
      }

      goto LABEL_39;
    }

    if (!v126)
    {
      break;
    }

    v58 = v127;
    sub_10005B6A8(v51, v127);
    v6 = v128;
    swift_arrayInitWithTakeFrontToBack();
    sub_10005B6A8(v58, v52);
    v52 += v49;
    v51 += v49;
    v44 = __CFADD__(v50++, 1);
    if (v44)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

void sub_100059128(unint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v145 = a1;
  v8 = sub_100089A08();
  v9 = __chkstk_darwin(v8);
  v150 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v163 = &v141 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v141 - v14;
  v16 = __chkstk_darwin(v13);
  v17 = __chkstk_darwin(v16);
  v159 = &v141 - v18;
  v19 = __chkstk_darwin(v17);
  v158 = &v141 - v20;
  v21 = __chkstk_darwin(v19);
  __chkstk_darwin(v21);
  v26 = &v141 - v22;
  v156 = v23;
  v157 = a3;
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = _swiftEmptyArrayStorage;
LABEL_114:
    v168 = *v145;
    if (!v168)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v164 = v24;
  v141 = a4;
  v28 = 0;
  v168 = v23 + 16;
  v166 = (v23 + 32);
  v167 = (v23 + 8);
  v29 = _swiftEmptyArrayStorage;
  v160 = v8;
  v152 = v15;
  v142 = v25;
  v144 = &v141 - v22;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v147 = v28;
    if (v28 + 1 < v27)
    {
      v162 = v27;
      v143 = v29;
      v32 = v26;
      v33 = *v157;
      v34 = *(v23 + 72);
      v35 = v25;
      v155 = v28 + 1;
      v36 = v28;
      v37 = &v33[v34 * (v28 + 1)];
      v38 = *(v23 + 16);
      v38(v32, v37, v8);
      v39 = &v33[v34 * v36];
      v40 = v144;
      v154 = v38;
      v38(v35, v39, v8);
      LODWORD(v161) = sub_10004A2F8();
      if (v5)
      {
        v140 = *v167;
        (*v167)(v35, v8);
        (v140)(v40, v8);
LABEL_124:

        return;
      }

      v146 = 0;
      v29 = v167;
      v41 = *v167;
      (*v167)(v35, v8);
      v153 = v41;
      (v41)(v40, v8);
      v42 = v147 + 2;
      v43 = &v33[v34 * (v147 + 2)];
      v31 = v155;
      v44 = v34;
      v165 = v34;
      v45 = v162;
      while (1)
      {
        v46 = v42;
        if (v31 + 1 >= v45)
        {
          break;
        }

        v47 = v31;
        v48 = v160;
        v5 = v154;
        (v154)(v158, v43, v160);
        v5(v159, v37, v48);
        v49 = sub_1000899E8();
        v51 = v50;
        if (v49 == sub_1000899E8() && v51 == v52)
        {
          v54 = 0;
        }

        else
        {
          v54 = sub_10008AA68();
        }

        v55 = v160;
        v29 = v153;
        (v153)(v159, v160);
        (v29)(v158, v55);
        v44 = v165;
        v43 += v165;
        v37 += v165;
        v31 = v47 + 1;
        v42 = v46 + 1;
        v45 = v162;
        if ((v161 ^ v54))
        {
          goto LABEL_16;
        }
      }

      v31 = v45;
LABEL_16:
      if (v161)
      {
        v30 = v147;
        if (v31 < v147)
        {
          goto LABEL_149;
        }

        v5 = v146;
        if (v147 >= v31)
        {
          v23 = v156;
          v29 = v143;
          v8 = v160;
          v15 = v152;
          goto LABEL_39;
        }

        if (v45 >= v46)
        {
          v56 = v46;
        }

        else
        {
          v56 = v45;
        }

        v57 = v44 * (v56 - 1);
        v58 = v44 * v56;
        v59 = v147;
        v60 = v147 * v44;
        v61 = v31;
        do
        {
          if (v59 != --v61)
          {
            v62 = *v157;
            if (!*v157)
            {
              goto LABEL_154;
            }

            v63 = v160;
            v162 = *v166;
            v162(v150, &v62[v60], v160);
            v64 = v60 < v57 || &v62[v60] >= &v62[v58];
            if (v64)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v60 != v57)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v162(&v62[v57], v150, v63);
            v5 = v146;
            v44 = v165;
          }

          ++v59;
          v57 -= v44;
          v58 -= v44;
          v60 += v44;
        }

        while (v59 < v61);
      }

      else
      {
        v5 = v146;
      }

      v23 = v156;
      v29 = v143;
      v8 = v160;
      v15 = v152;
      v30 = v147;
    }

LABEL_39:
    v65 = v157[1];
    if (v31 < v65)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_146;
      }

      if (v31 - v30 < v141)
      {
        break;
      }
    }

LABEL_62:
    if (v31 < v30)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100080408();
      v29 = v131;
    }

    v88 = *(v29 + 2);
    v87 = *(v29 + 3);
    v89 = v88 + 1;
    v155 = v31;
    if (v88 >= v87 >> 1)
    {
      sub_100080408();
      v29 = v132;
    }

    *(v29 + 2) = v89;
    v90 = v29 + 32;
    v91 = &v29[16 * v88 + 32];
    v92 = v155;
    *v91 = v147;
    *(v91 + 1) = v92;
    v165 = *v145;
    if (!v165)
    {
      goto LABEL_155;
    }

    if (v88)
    {
      while (1)
      {
        v93 = v89 - 1;
        v94 = &v90[16 * v89 - 16];
        v95 = &v29[16 * v89];
        if (v89 >= 4)
        {
          break;
        }

        if (v89 == 3)
        {
          v96 = *(v29 + 4);
          v97 = *(v29 + 5);
          v106 = __OFSUB__(v97, v96);
          v98 = v97 - v96;
          v99 = v106;
LABEL_82:
          if (v99)
          {
            goto LABEL_132;
          }

          v111 = *v95;
          v110 = *(v95 + 1);
          v112 = __OFSUB__(v110, v111);
          v113 = v110 - v111;
          v114 = v112;
          if (v112)
          {
            goto LABEL_135;
          }

          v115 = *(v94 + 1);
          v116 = v115 - *v94;
          if (__OFSUB__(v115, *v94))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v113, v116))
          {
            goto LABEL_140;
          }

          if (v113 + v116 >= v98)
          {
            if (v98 < v116)
            {
              v93 = v89 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v89 < 2)
        {
          goto LABEL_134;
        }

        v118 = *v95;
        v117 = *(v95 + 1);
        v106 = __OFSUB__(v117, v118);
        v113 = v117 - v118;
        v114 = v106;
LABEL_97:
        if (v114)
        {
          goto LABEL_137;
        }

        v120 = *v94;
        v119 = *(v94 + 1);
        v106 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v106)
        {
          goto LABEL_139;
        }

        if (v121 < v113)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v93 - 1 >= v89)
        {
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v157)
        {
          goto LABEL_152;
        }

        v125 = v29;
        v126 = &v90[16 * v93 - 16];
        v29 = *v126;
        v127 = &v90[16 * v93];
        v128 = *(v127 + 1);
        sub_10005A1B8(&(*v157)[*(v156 + 72) * *v126], &(*v157)[*(v156 + 72) * *v127], &(*v157)[*(v156 + 72) * v128], v165);
        if (v5)
        {
          goto LABEL_124;
        }

        if (v128 < v29)
        {
          goto LABEL_127;
        }

        v129 = *(v125 + 2);
        if (v93 > v129)
        {
          goto LABEL_128;
        }

        *v126 = v29;
        *(v126 + 1) = v128;
        if (v93 >= v129)
        {
          goto LABEL_129;
        }

        v89 = v129 - 1;
        memmove(&v90[16 * v93], v127 + 16, 16 * (v129 - 1 - v93));
        v29 = v125;
        *(v125 + 2) = v129 - 1;
        v130 = v129 > 2;
        v15 = v152;
        if (!v130)
        {
          goto LABEL_111;
        }
      }

      v100 = &v90[16 * v89];
      v101 = *(v100 - 8);
      v102 = *(v100 - 7);
      v106 = __OFSUB__(v102, v101);
      v103 = v102 - v101;
      if (v106)
      {
        goto LABEL_130;
      }

      v105 = *(v100 - 6);
      v104 = *(v100 - 5);
      v106 = __OFSUB__(v104, v105);
      v98 = v104 - v105;
      v99 = v106;
      if (v106)
      {
        goto LABEL_131;
      }

      v107 = *(v95 + 1);
      v108 = v107 - *v95;
      if (__OFSUB__(v107, *v95))
      {
        goto LABEL_133;
      }

      v106 = __OFADD__(v98, v108);
      v109 = v98 + v108;
      if (v106)
      {
        goto LABEL_136;
      }

      if (v109 >= v103)
      {
        v123 = *v94;
        v122 = *(v94 + 1);
        v106 = __OFSUB__(v122, v123);
        v124 = v122 - v123;
        if (v106)
        {
          goto LABEL_144;
        }

        if (v98 < v124)
        {
          v93 = v89 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v23 = v156;
    v27 = v157[1];
    v28 = v155;
    v8 = v160;
    v25 = v142;
    v26 = v144;
    if (v155 >= v27)
    {
      goto LABEL_114;
    }
  }

  v66 = (v30 + v141);
  if (__OFADD__(v30, v141))
  {
    goto LABEL_147;
  }

  if (v66 >= v65)
  {
    v66 = v157[1];
  }

  if (v66 < v30)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v29 = sub_10005A7D4(v29);
LABEL_116:
    v133 = v29 + 16;
    v134 = *(v29 + 2);
    while (v134 >= 2)
    {
      if (!*v157)
      {
        goto LABEL_153;
      }

      v135 = v29;
      v29 += 16 * v134;
      v136 = *v29;
      v137 = &v133[2 * v134];
      v138 = v137[1];
      sub_10005A1B8(&(*v157)[*(v156 + 72) * *v29], &(*v157)[*(v156 + 72) * *v137], &(*v157)[*(v156 + 72) * v138], v168);
      if (v5)
      {
        break;
      }

      if (v138 < v136)
      {
        goto LABEL_141;
      }

      if (v134 - 2 >= *v133)
      {
        goto LABEL_142;
      }

      *v29 = v136;
      *(v29 + 1) = v138;
      v139 = *v133 - v134;
      if (*v133 < v134)
      {
        goto LABEL_143;
      }

      v134 = *v133 - 1;
      memmove(v137, v137 + 2, 16 * v139);
      *v133 = v134;
      v29 = v135;
    }

    goto LABEL_124;
  }

  if (v31 == v66)
  {
    goto LABEL_62;
  }

  v143 = v29;
  v146 = v5;
  v67 = *v157;
  v68 = *(v23 + 72);
  v165 = *(v23 + 16);
  v69 = &v67[v68 * (v31 - 1)];
  v161 = -v68;
  v162 = v67;
  v70 = (v30 - v31);
  v148 = v68;
  v149 = v66;
  v71 = &v67[v31 * v68];
  v72 = v164;
LABEL_48:
  v154 = v69;
  v155 = v31;
  v151 = v71;
  v153 = v70;
  while (1)
  {
    v73 = v165;
    (v165)(v72, v71, v8);
    v73(v15, v69, v8);
    v74 = v15;
    v75 = sub_1000899E8();
    v76 = v8;
    v78 = v77;
    if (v75 == sub_1000899E8() && v78 == v79)
    {

      v86 = *v167;
      (*v167)(v74, v76);
      (v86)(v72, v76);
      v8 = v76;
      v15 = v74;
      goto LABEL_60;
    }

    v81 = v72;
    v82 = sub_10008AA68();

    v83 = *v167;
    (*v167)(v74, v76);
    (v83)(v81, v76);
    v8 = v76;
    v15 = v74;
    if ((v82 & 1) == 0)
    {
      v72 = v164;
LABEL_60:
      v31 = v155 + 1;
      v69 = &v154[v148];
      v70 = v153 - 1;
      v71 = &v151[v148];
      if ((v155 + 1) == v149)
      {
        v31 = v149;
        v5 = v146;
        v29 = v143;
        v30 = v147;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    if (!v162)
    {
      break;
    }

    v84 = *v166;
    v85 = v163;
    (*v166)(v163, v71, v76);
    swift_arrayInitWithTakeFrontToBack();
    v84(v69, v85, v76);
    v69 += v161;
    v71 += v161;
    v64 = __CFADD__(v70++, 1);
    v72 = v164;
    if (v64)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

uint64_t sub_100059CEC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v63 = type metadata accessor for ToolKitIndexer.LocaleWithUsage(0);
  v8 = __chkstk_darwin(v63);
  v61 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v62 = &v53 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_61;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v18 = v14 / v13;
  v66 = a1;
  v65 = a4;
  v19 = v16 / v13;
  if (v14 / v13 >= v16 / v13)
  {
    sub_100080B48(a2, v16 / v13, a4);
    v34 = a4 + v19 * v13;
    v35 = -v13;
    v36 = v34;
    v57 = a1;
    v58 = a4;
    v56 = -v13;
LABEL_37:
    v59 = a2;
    v60 = a2 + v35;
    v37 = a3;
    v38 = v36;
    v55 = v36;
    while (1)
    {
      if (v34 <= a4)
      {
        v66 = a2;
        v64 = v38;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v54 = v38;
      v39 = v37 + v35;
      v40 = v34 + v35;
      v41 = v62;
      v42 = v37;
      sub_10005B654(v34 + v35, v62);
      v43 = v34;
      v44 = v61;
      sub_10005B654(v60, v61);
      v45 = *(v63 + 24);
      v46 = *(v41 + v45);
      v47 = v44;
      v48 = *(v44 + v45);
      sub_10005B2EC(v47, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
      sub_10005B2EC(v41, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
      if (v46 < v48)
      {
        v34 = v43;
        v51 = v42 < v59 || v39 >= v59;
        a3 = v39;
        if (v51)
        {
          a2 = v60;
          swift_arrayInitWithTakeFrontToBack();
          v36 = v54;
          a1 = v57;
          a4 = v58;
          v35 = v56;
        }

        else
        {
          v36 = v54;
          v15 = v42 == v59;
          v52 = v60;
          a2 = v60;
          a1 = v57;
          a4 = v58;
          v35 = v56;
          if (!v15)
          {
            v36 = v54;
            swift_arrayInitWithTakeBackToFront();
            a2 = v52;
          }
        }

        goto LABEL_37;
      }

      v49 = v42 < v43 || v39 >= v43;
      v50 = v39;
      if (v49)
      {
        swift_arrayInitWithTakeFrontToBack();
        v37 = v39;
        v34 = v40;
        v38 = v40;
        a4 = v58;
        a2 = v59;
        v35 = v56;
        a1 = v57;
        v36 = v55;
      }

      else
      {
        v38 = v40;
        v15 = v43 == v42;
        v37 = v39;
        v34 = v40;
        a4 = v58;
        a2 = v59;
        v35 = v56;
        a1 = v57;
        v36 = v55;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          v37 = v50;
          v34 = v40;
          v38 = v40;
        }
      }
    }

    v66 = a2;
    v64 = v36;
  }

  else
  {
    sub_100080B48(a1, v14 / v13, a4);
    v59 = a3;
    v60 = a4 + v18 * v13;
    v64 = v60;
    while (a4 < v60 && a2 < a3)
    {
      v21 = v13;
      v22 = a1;
      v23 = v62;
      sub_10005B654(a2, v62);
      v24 = a4;
      v25 = a4;
      v26 = v61;
      sub_10005B654(v24, v61);
      v27 = *(v63 + 24);
      v28 = *(v23 + v27);
      v29 = a2;
      v30 = *(v26 + v27);
      sub_10005B2EC(v26, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
      sub_10005B2EC(v23, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
      if (v28 >= v30)
      {
        a2 = v29;
        v13 = v21;
        a4 = v25 + v21;
        v31 = v22;
        if (v22 < v25 || v22 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v59;
        }

        else
        {
          a3 = v59;
          if (v22 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v65 = v25 + v21;
      }

      else
      {
        a2 = v29 + v21;
        v31 = v22;
        v32 = v22 < v29 || v22 >= a2;
        a4 = v25;
        if (v32)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v59;
        }

        else
        {
          a3 = v59;
          if (v22 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v13 = v21;
      }

      a1 = v31 + v13;
      v66 = a1;
    }
  }

LABEL_59:
  sub_10005A7E8(&v66, &v65, &v64, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
  return 1;
}

uint64_t sub_10005A1B8(char *a1, unint64_t a2, char *a3, unint64_t a4)
{
  v8 = sub_100089A08();
  v9 = __chkstk_darwin(v8);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v70 = &v64 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v64 - v14;
  result = __chkstk_darwin(v13);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v21 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v21)
  {
    goto LABEL_72;
  }

  v22 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_73;
  }

  v24 = (a2 - a1) / v20;
  v77 = a1;
  v76 = a4;
  v72 = (v17 + 8);
  v73 = (v17 + 16);
  v25 = v22 / v20;
  if (v24 < v22 / v20)
  {
    v68 = &v64 - v18;
    v70 = v15;
    sub_100080B60(a1, (a2 - a1) / v20, a4);
    v71 = (a4 + v24 * v20);
    v75 = v71;
    v26 = a4;
    v27 = v20;
    v67 = v8;
    v69 = a3;
    while (1)
    {
      if (v26 >= v71 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v29 = a1;
      v30 = *v73;
      v31 = v68;
      v32 = a2;
      (*v73)(v68, a2, v8);
      v74 = v26;
      v33 = v70;
      v30();
      v34 = sub_1000899E8();
      v36 = v35;
      if (v34 == sub_1000899E8() && v36 == v37)
      {

        v44 = *v72;
        (*v72)(v33, v8);
        v44(v31, v8);
      }

      else
      {
        v39 = sub_10008AA68();

        v40 = *v72;
        (*v72)(v33, v8);
        v40(v31, v8);
        if (v39)
        {
          v41 = v32;
          a2 = v32 + v27;
          v42 = v29;
          if (v29 < v32 || v29 >= a2)
          {
            v8 = v67;
            swift_arrayInitWithTakeFrontToBack();
            a3 = v69;
          }

          else
          {
            a3 = v69;
            v8 = v67;
            if (v29 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v74;
          goto LABEL_40;
        }
      }

      v26 = v74 + v27;
      v42 = v29;
      v45 = v29 < v74 || v29 >= v26;
      a2 = v32;
      if (v45)
      {
        v8 = v67;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v69;
      }

      else
      {
        a3 = v69;
        v8 = v67;
        if (v29 != v74)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v76 = v26;
LABEL_40:
      a1 = (v42 + v27);
      v77 = a1;
    }
  }

  sub_100080B60(a2, v22 / v20, a4);
  v74 = a4;
  v46 = a4 + v25 * v20;
  v47 = -v20;
  v48 = v46;
  v68 = -v20;
LABEL_42:
  v69 = a2;
  v67 = a2 + v47;
  v49 = a3;
  v65 = v48;
  while (1)
  {
    if (v46 <= v74)
    {
      v77 = v69;
      v75 = v48;
      goto LABEL_70;
    }

    if (v69 <= a1)
    {
      break;
    }

    v66 = v48;
    v50 = v46 + v47;
    v51 = *v73;
    (*v73)(v70, v46 + v47, v8);
    (v51)(v71, v67, v8);
    v52 = sub_1000899E8();
    v54 = v53;
    if (v52 == sub_1000899E8() && v54 == v55)
    {
      v57 = 0;
    }

    else
    {
      v57 = sub_10008AA68();
    }

    v58 = &v49[v68];
    v59 = *v72;
    (*v72)(v71, v8);
    v59(v70, v8);
    if (v57)
    {
      v61 = v49 < v69 || v58 >= v69;
      a3 = v58;
      if (v61)
      {
        a2 = v67;
        swift_arrayInitWithTakeFrontToBack();
        v48 = v66;
        v47 = v68;
      }

      else
      {
        v63 = v66;
        v62 = v67;
        v48 = v66;
        v21 = v49 == v69;
        a2 = v67;
        v47 = v68;
        if (!v21)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v62;
          v48 = v63;
        }
      }

      goto LABEL_42;
    }

    if (v49 < v46 || v58 >= v46)
    {
      swift_arrayInitWithTakeFrontToBack();
      v49 = v58;
      v46 = v50;
      v48 = v50;
      v47 = v68;
    }

    else
    {
      v48 = v50;
      v21 = v46 == v49;
      v49 = v58;
      v46 = v50;
      v47 = v68;
      if (!v21)
      {
        swift_arrayInitWithTakeBackToFront();
        v49 = v58;
        v46 = v50;
        v48 = v50;
      }
    }
  }

  v77 = v69;
  v75 = v65;
LABEL_70:
  sub_10005A7E8(&v77, &v76, &v75, &type metadata accessor for RuntimePlatform);
  return 1;
}

void sub_10005A7E8(unint64_t *a1, unint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  a4(0);
  sub_100017A1C();
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  v10 = v5 + (v6 - v5) / v8 * v8;
  if (v4 < v5 || v4 >= v10)
  {
    sub_100012498();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    sub_100012498();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_10005A8BC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100008DC0(&qword_1000A6600, &unk_10008E360);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_10005A9BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  isa = sub_10008A1B8().super.isa;

  [a4 postNotificationName:a1 object:a2 userInfo:isa];
}

uint64_t sub_10005AA58()
{
  sub_10005EC9C();
  sub_10006028C();
  v2 = sub_1000889E8();
  sub_10005E3B0(v2);
  v3 = *(v0 + 24);
  swift_task_alloc();
  sub_100012480();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_1000105E8;
  sub_10005E3A4();

  return sub_10001DCF0(v6, v7, v8, v3, v9);
}

uint64_t sub_10005AB3C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10005AB50(a1, a2);
  }

  return a1;
}

uint64_t sub_10005AB50(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_10005ABA8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10005ABBC(a1, a2);
  }

  return a1;
}

uint64_t sub_10005ABBC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10005AC80(uint64_t a1)
{
  result = sub_1000899A8();
  if (v2 <= 0x3F)
  {
    result = sub_100088A68();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 sub_10005AD04(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10005AD10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005AD64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_10005ADC0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_10005AE38(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_10005E028();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005AE98(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_10008A268();
  }

  return sub_1000125C0();
}

uint64_t sub_10005AEF4(void *a1)
{
  v2 = [a1 availabilityAnnotations];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for LNPlatformName(0);
  sub_100011D84(0, &unk_1000A65B0, LNAvailabilityAnnotation_ptr);
  sub_10005AE38(&qword_1000A5B28, type metadata accessor for LNPlatformName);
  v3 = sub_10008A1C8();

  return v3;
}

uint64_t sub_10005AFC0(uint64_t a1, uint64_t a2)
{
  v2 = sub_10008A268();
  v4 = v3;
  if (v2 == sub_10008A268() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    sub_10005EAE0();
    v7 = sub_10008AA68();
  }

  return v7 & 1;
}

void *sub_10005B040(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10005B1BC(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10005B208()
{
  sub_100012604();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000105E8;
  v2 = sub_1000124C8();

  return v3(v2);
}

uint64_t sub_10005B2EC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100017A1C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10005B4C0(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100011D84(255, a2, a3);
    sub_10005E028();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005B500(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_10005B518(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_10005B530(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10005B540()
{
  result = qword_1000A64D8;
  if (!qword_1000A64D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A64D8);
  }

  return result;
}

uint64_t sub_10005B594(uint64_t result, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
  }

  return v2;
}

_BYTE **sub_10005B5CC(_BYTE **result)
{
  v2 = *result;
  *v2 = *(v1 + 16);
  *result = v2 + 1;
  return result;
}

uint64_t sub_10005B610()
{
  v1 = *(v0 + 16);
  swift_errorRetain();
  return v1;
}

uint64_t sub_10005B654(uint64_t a1, uint64_t a2)
{
  v3 = sub_100012578();
  v4(v3);
  sub_10001238C();
  v5 = sub_1000125C0();
  v6(v5);
  return a2;
}

uint64_t sub_10005B6A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_100012578();
  v4(v3);
  sub_10001238C();
  v5 = sub_1000125C0();
  v6(v5);
  return a2;
}

void *sub_10005B714()
{
  sub_100009B94();
  sub_10005ED48();
  return sub_10004A66C(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_10005B78C()
{
  sub_100009B94();
  sub_10005ED48();
  return sub_10004BBA0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14);
}

unint64_t sub_10005B920()
{
  result = qword_1000A65F0;
  if (!qword_1000A65F0)
  {
    sub_100010924(&qword_1000A65E8, &qword_10008D958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A65F0);
  }

  return result;
}

uint64_t sub_10005B984(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ToolKitIndexer.LocaleWithUsage(0);
  v34 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v33 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v32 = &v29 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
    v18 = 0;
    a3 = 0;
LABEL_20:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v18;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = -1 << *(a4 + 32);
    v30 = a1;
    v17 = 0;
    v18 = 0;
    v19 = (63 - v14) >> 6;
    v31 = a3;
    while (v17 < a3)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_24;
      }

      if (!v16)
      {
        while (1)
        {
          v21 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v21 >= v19)
          {
            v16 = 0;
            a3 = v17;
            v14 = v29;
            a1 = v30;
            goto LABEL_20;
          }

          v16 = *(v13 + 8 * v21);
          ++v18;
          if (v16)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v21 = v18;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v33;
      v26 = *(v34 + 72);
      sub_10005B654(v24 + v26 * (v22 | (v21 << 6)), v33);
      v27 = v25;
      v28 = v32;
      sub_10005B6A8(v27, v32);
      result = sub_10005B6A8(v28, a2);
      a3 = v31;
      if (v20 == v31)
      {
        v18 = v21;
        v14 = v29;
        a1 = v30;
        a4 = v23;
        goto LABEL_20;
      }

      a2 += v26;
      v17 = v20;
      v18 = v21;
      a4 = v23;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10005BBD8(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_100089A08();
  v9 = *(v8 - 8);
  v41 = v8;
  v42 = v9;
  v10 = __chkstk_darwin(v8);
  v40 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v39 = &v32 - v12;
  v14 = a4 + 56;
  v13 = *(a4 + 56);
  v38 = -1 << *(a4 + 32);
  if (-v38 < 64)
  {
    v15 = ~(-1 << -v38);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v13;
  if (!a2)
  {
    v19 = 0;
    result = 0;
LABEL_22:
    v31 = ~v38;
    *a1 = a4;
    a1[1] = v14;
    a1[2] = v31;
    a1[3] = v19;
    a1[4] = v16;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v19 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = a1;
    v34 = a4 + 56;
    v18 = 0;
    v19 = 0;
    v20 = (63 - v38) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    v37 = result;
    while (v18 < result)
    {
      if (__OFADD__(v18, 1))
      {
        goto LABEL_26;
      }

      if (!v16)
      {
        v14 = v34;
        while (1)
        {
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v21 >= v20)
          {
            v16 = 0;
            result = v18;
            a1 = v33;
            goto LABEL_22;
          }

          v16 = *(v34 + 8 * v21);
          ++v19;
          if (v16)
          {
            v43 = v18 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v43 = v18 + 1;
      v21 = v19;
LABEL_17:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = a4;
      v24 = *(a4 + 48);
      v26 = v41;
      v25 = v42;
      v27 = *(v42 + 72);
      v28 = v40;
      (*(v42 + 16))(v40, v24 + v27 * (v22 | (v21 << 6)), v41);
      v29 = *(v25 + 32);
      v30 = v39;
      v29(v39, v28, v26);
      v29(a2, v30, v26);
      result = v37;
      v18 = v43;
      if (v43 == v37)
      {
        v19 = v21;
        a1 = v33;
        v14 = v34;
        a4 = v23;
        goto LABEL_22;
      }

      a2 += v27;
      v19 = v21;
      a4 = v23;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10005BE98(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10005BF68()
{
  sub_10005F538();
  sub_100008DC0(v1, v2);
  sub_10001238C();
  v3 = sub_1000125C0();
  v4(v3);
  return v0;
}

uint64_t sub_10005BFBC()
{
  sub_10005F538();
  sub_100008DC0(v1, v2);
  sub_10001238C();
  v3 = sub_1000125C0();
  v4(v3);
  return v0;
}

void sub_10005C09C(uint64_t a1)
{
  sub_100088A68();
  if (v1 <= 0x3F)
  {
    type metadata accessor for WFLocalizationUsage(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10005C130(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005C170(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10005C1FC(uint64_t a1)
{
  sub_10005C318(319, &qword_1000A6828, &type metadata accessor for ParameterRelationshipDefinition);
  if (v1 <= 0x3F)
  {
    sub_100089888();
    if (v2 <= 0x3F)
    {
      sub_100089C48();
      if (v3 <= 0x3F)
      {
        sub_10005C318(319, &qword_1000A6830, &type metadata accessor for SampleInvocationDefinition);
        if (v4 <= 0x3F)
        {
          sub_10005C368();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10005C318(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_10005E028();
    v4 = sub_10008A378();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10005C368()
{
  if (!qword_1000A6838)
  {
    v0 = sub_10008A378();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A6838);
    }
  }
}

uint64_t sub_10005C3B8(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_10005C3D4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10005C3E8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005C428(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_10005C46C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_10005C494(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_10005C4B0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10005C4C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005C504(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10005C548(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_10005C574()
{
  result = qword_1000A6888;
  if (!qword_1000A6888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6888);
  }

  return result;
}

uint64_t sub_10005C85C(uint64_t result)
{
  *(result + 16) = sub_10005C5D8;
  *(result + 24) = v1;
  return result;
}

void sub_10005C94C(int a1@<W8>)
{
  *(v3 - 216) = a1;
  *(v3 - 224) = v2 + 32;
  *(v3 - 192) = v1;
}

uint64_t sub_10005C99C(uint64_t result)
{
  *(result + 16) = sub_10005C5E0;
  *(result + 24) = v1;
  return result;
}