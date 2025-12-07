void sub_100B37820(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  v10 = &_swiftEmptyArrayStorage[4];
  if (v4)
  {
    while (1)
    {
      v11 = v8;
LABEL_8:
      v12 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v13 = __clz(__rbit64(v4)) | (v11 << 6);
      v14 = (*(a1 + 48) + 16 * v13);
      v15 = v14[1];
      v33 = *v14;
      v34 = v7;
      v32 = *(*(a1 + 56) + 8 * v13);
      if (v6)
      {

        v16 = v9;
        v17 = __OFSUB__(v6--, 1);
        if (v17)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v18 = *(v9 + 3);
        if (((v18 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_35;
        }

        v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
        if (v19 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        sub_1000BC4D4(&qword_1016B5C90, &qword_1013D7310);
        v16 = swift_allocObject();
        v21 = j__malloc_size(v16);
        v22 = v21 - 32;
        if (v21 < 32)
        {
          v22 = v21 - 1;
        }

        v23 = v22 >> 5;
        *(v16 + 2) = v20;
        *(v16 + 3) = 2 * (v22 >> 5);
        v24 = v16 + 32;
        v25 = *(v9 + 3) >> 1;
        v10 = &v16[32 * v25 + 32];
        v26 = (v23 & 0x7FFFFFFFFFFFFFFFLL) - v25;
        if (*(v9 + 2))
        {
          v27 = v9 + 32;
          if (v16 != v9 || v24 >= &v27[32 * v25])
          {
            memmove(v24, v27, 32 * v25);
          }

          *(v9 + 2) = 0;
        }

        else
        {
        }

        v17 = __OFSUB__(v26, 1);
        v6 = v26 - 1;
        if (v17)
        {
          goto LABEL_34;
        }
      }

      v4 &= v4 - 1;
      *v10 = v34;
      *(v10 + 1) = v33;
      *(v10 + 2) = v15;
      *(v10 + 3) = v32;
      v10 += 32;
      v9 = v16;
      v7 = v12;
      v8 = v11;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v11 >= v5)
      {
        break;
      }

      v4 = *(v1 + 8 * v11);
      ++v8;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    v28 = *(v9 + 3);
    if (v28 < 2)
    {
      return;
    }

    v29 = v28 >> 1;
    v17 = __OFSUB__(v29, v6);
    v30 = v29 - v6;
    if (!v17)
    {
      *(v9 + 2) = v30;
      return;
    }
  }

  __break(1u);
}

uint64_t sub_100B37A58(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v93 = a2;
  v94 = a3;
  v100 = type metadata accessor for Row();
  v83 = *(v100 - 8);
  __chkstk_darwin(v100);
  v92 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v91 = (&v81 - v9);
  v10 = __chkstk_darwin(v8);
  v12 = &v81 - v11;
  __chkstk_darwin(v10);
  v14 = &v81 - v13;
  v15 = sub_1000BC4D4(&qword_1016B5CC0, &qword_1013D7370);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v81 - v19;
  v21 = type metadata accessor for StandaloneBeacon(0);
  v22 = *(v21 - 8);
  v98 = v21;
  v99 = v22;
  __chkstk_darwin(v21);
  v95 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
  v25 = v24;
  v81 = v18;
  v82 = v7;
  if (!v24)
  {
    v31 = _swiftEmptyArrayStorage;
LABEL_11:
    v32 = *(v99 + 80);
    v33 = v31[3];

    v97 = dispatch thunk of _AnySequenceBox._makeIterator()();

    if (v25 < 0)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v34 = v33 >> 1;
    v101 = v31;
    v87 = v32;
    v88 = (v32 + 32) & ~v32;
    v35 = v31 + v88;
    v96 = v20;
    if (v25)
    {
      v36 = v82;
      v37 = (v83 + 48);
      v84 = (v83 + 8);
      v85 = (v83 + 32);
      v89 = (v99 + 48);
      v90 = (v99 + 56);
      v34 -= v25;
      v38 = v81;
      v86 = (v83 + 48);
      do
      {
        v39 = v91;
        dispatch thunk of _AnyIteratorBoxBase.next()();
        sub_1000D2AD8(v39, v36, &qword_101699D68, &unk_1013B6450);
        v40 = 1;
        if ((*v37)(v36, 1, v100) != 1)
        {
          v41 = v38;
          v42 = v92;
          v43 = v36;
          v44 = v36;
          v45 = v14;
          v46 = v12;
          v47 = v100;
          (*v85)(v92, v43, v100);
          v93(v42);
          v48 = v42;
          v38 = v41;
          v37 = v86;
          v49 = v47;
          v12 = v46;
          v14 = v45;
          v36 = v44;
          (*v84)(v48, v49);
          v40 = 0;
        }

        v50 = v40;
        v51 = v98;
        (*v90)(v38, v50, 1, v98);
        result = (*v89)(v38, 1, v51);
        if (result == 1)
        {
          goto LABEL_58;
        }

        sub_100029420(v38, v35, type metadata accessor for StandaloneBeacon);
        v35 += *(v99 + 72);
        --v25;
      }

      while (v25);
      v20 = v96;
    }

    v52 = (v83 + 48);
    v90 = (v83 + 8);
    v91 = (v83 + 32);
    v53 = (v99 + 56);
    v54 = (v99 + 48);
    v55 = v95;
    while (1)
    {
      dispatch thunk of _AnyIteratorBoxBase.next()();
      sub_1000D2AD8(v14, v12, &qword_101699D68, &unk_1013B6450);
      v56 = 1;
      if ((*v52)(v12, 1, v100) != 1)
      {
        v57 = v92;
        v58 = v100;
        (*v91)(v92, v12, v100);
        v93(v57);
        v59 = v57;
        v60 = v58;
        v55 = v95;
        v20 = v96;
        (*v90)(v59, v60);
        v56 = 0;
      }

      v61 = v56;
      v62 = v98;
      (*v53)(v20, v61, 1, v98);
      if ((*v54)(v20, 1, v62) == 1)
      {

        sub_10000B3A8(v20, &qword_1016B5CC0, &qword_1013D7370);
        result = v101;
        v78 = *(v101 + 24);
        if (v78 < 2)
        {
          return result;
        }

        v79 = v78 >> 1;
        v64 = __OFSUB__(v79, v34);
        v80 = v79 - v34;
        if (!v64)
        {
          *(v101 + 16) = v80;
          return result;
        }

LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      result = sub_100029420(v20, v55, type metadata accessor for StandaloneBeacon);
      if (v34)
      {
        v63 = v101;
        v64 = __OFSUB__(v34--, 1);
        if (v64)
        {
          goto LABEL_50;
        }

        goto LABEL_45;
      }

      v65 = *(v101 + 24);
      if (((v65 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_51;
      }

      v66 = v65 & 0xFFFFFFFFFFFFFFFELL;
      if (v66 <= 1)
      {
        v67 = 1;
      }

      else
      {
        v67 = v66;
      }

      sub_1000BC4D4(&qword_1016B5CC8, &qword_1013D7378);
      v68 = *(v99 + 72);
      v69 = v88;
      v63 = swift_allocObject();
      result = j__malloc_size(v63);
      if (!v68)
      {
        goto LABEL_52;
      }

      v70 = result - v69;
      if (result - v69 == 0x8000000000000000 && v68 == -1)
      {
        goto LABEL_53;
      }

      v72 = v70 / v68;
      v63[2] = v67;
      v63[3] = 2 * (v70 / v68);
      v73 = v63 + v69;
      v74 = v101;
      v75 = *(v101 + 24) >> 1;
      v76 = v75 * v68;
      if (*(v101 + 16))
      {
        break;
      }

LABEL_44:
      v35 = &v73[v76];
      v77 = (v72 & 0x7FFFFFFFFFFFFFFFLL) - v75;

      v55 = v95;
      v20 = v96;
      v64 = __OFSUB__(v77, 1);
      v34 = v77 - 1;
      if (v64)
      {
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

LABEL_45:
      sub_100029420(v55, v35, type metadata accessor for StandaloneBeacon);
      v35 += *(v99 + 72);
      v101 = v63;
    }

    if (v63 < v101 || v73 >= v101 + v88 + v76)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v63 == v101)
      {
LABEL_43:
        *(v74 + 16) = 0;
        goto LABEL_44;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v74 = v101;
    goto LABEL_43;
  }

  if (v24 <= 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  sub_1000BC4D4(&qword_1016B5CC8, &qword_1013D7378);
  v26 = *(v99 + 72);
  v27 = (*(v99 + 80) + 32) & ~*(v99 + 80);
  v28 = swift_allocObject();
  result = j__malloc_size(v28);
  if (!v26)
  {
    goto LABEL_56;
  }

  if (result - v27 != 0x8000000000000000 || v26 != -1)
  {
    v28[2] = v25;
    v28[3] = 2 * ((result - v27) / v26);
    goto LABEL_10;
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

void *sub_100B38224(char **a1)
{
  v115 = a1;
  v1 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v1 - 8);
  v103 = v81 - v2;
  v102 = type metadata accessor for URL();
  v106 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v4 - 8);
  v6 = v81 - v5;
  v118 = type metadata accessor for DirectorySequence();
  v111 = *(v118 - 8);
  __chkstk_darwin(v118);
  v110 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016B5470, &unk_1013D7380);
  v9 = __chkstk_darwin(v8 - 8);
  v100 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v81 - v11;
  v117 = sub_1000BC4D4(&qword_1016B5478, &qword_1013D6730);
  v114 = *(v117 - 8);
  v13 = __chkstk_darwin(v117);
  v116 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v105 = v81 - v15;
  v16 = sub_1000BC4D4(&qword_1016A78B8, &unk_1013D6710);
  __chkstk_darwin(v16 - 8);
  v18 = v81 - v17;
  v19 = sub_1000BC4D4(&qword_1016A78A8, &unk_1013D66E0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v112 = v81 - v21;
  v22 = sub_1000BC4D4(&qword_10169EF98, &unk_1013D66D0);
  __chkstk_darwin(v22 - 8);
  v88 = v81 - v23;
  v89 = type metadata accessor for OwnedDeviceKeyRecord(0);
  v24 = *(v89 - 8);
  __chkstk_darwin(v89);
  v95 = v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000BC4D4(&qword_1016A78B0, &unk_1013EB2A0);
  __chkstk_darwin(v26 - 8);
  v28 = v81 - v27;
  v29 = *(v24 + 80);
  v30 = v19;
  sub_1000D2A70(v115, v81 - v27, &qword_1016A78B0, &unk_1013EB2A0);
  v94 = v28;
  sub_1000D2A70(v28, v18, &qword_1016A78B8, &unk_1013D6710);
  v31 = *(v20 + 48);
  v87 = v20 + 48;
  v86 = v31;
  v32 = v31(v18, 1, v19);
  v33 = _swiftEmptyArrayStorage;
  v90 = v24;
  if (v32 == 1)
  {
    v96 = 0;
LABEL_37:
    sub_10000B3A8(v18, &qword_1016A78B8, &unk_1013D6710);
    v57 = v88;
    (*(v90 + 56))(v88, 1, 1, v89);
    v58 = v33;
  }

  else
  {
    v34 = v24;
    v96 = 0;
    v109 = 0;
    v81[1] = v29;
    v81[0] = (v29 + 32) & ~v29;
    v35 = _swiftEmptyArrayStorage + v81[0];
    v115 = (v111 + 48);
    v113 = (v111 + 32);
    v108 = (v106 + 6);
    v99 = (v106 + 4);
    v107 = (v111 + 8);
    v98 = (v106 + 1);
    v97 = (v111 + 56);
    v104 = (v114 + 56);
    v106 = (v114 + 48);
    v85 = (v34 + 56);
    v82 = (v20 + 56);
    v84 = (v34 + 48);
    v36 = _swiftEmptyArrayStorage;
    v37 = &qword_1013D6730;
    v38 = v112;
    v83 = v18;
    v91 = v19;
    while (1)
    {
      v92 = v35;
      v93 = v36;
      sub_1000D2AD8(v18, v38, &qword_1016A78A8, &unk_1013D66E0);
      v39 = *(v30 + 40);
      sub_1000D2A70(v38 + v39, v6, &qword_1016A5970, &unk_1013B3470);
      v114 = *v115;
      if ((v114)(v6, 1, v118) == 1)
      {
LABEL_12:
        sub_10000B3A8(v6, &qword_1016A5970, &unk_1013B3470);
        (*v104)(v12, 1, 1, v117);
LABEL_14:
        sub_10000B3A8(v38, &qword_1016A78A8, &unk_1013D66E0);
        sub_10000B3A8(v12, &qword_1016B5470, &unk_1013D7380);
        v55 = v94;
        sub_10000B3A8(v94, &qword_1016A78B8, &unk_1013D6710);
        v56 = 1;
        (*v82)(v55, 1, 1, v91);
        v57 = v88;
      }

      else
      {
        v111 = *v113;
        v41 = v102;
        v40 = v103;
        while (1)
        {
          v42 = v37;
          v43 = v110;
          (v111)(v110, v6, v118);
          DirectorySequence.next()();
          if ((*v108)(v40, 1, v41) == 1)
          {
            v44 = v118;
            (*v107)(v43, v118);
            sub_10000B3A8(v40, &unk_101696AC0, &qword_101390A60);
            sub_10000B3A8(v38 + v39, &qword_1016A5970, &unk_1013B3470);
            (*v97)(v38 + v39, 1, 1, v44);
            (*v104)(v12, 1, 1, v117);
          }

          else
          {
            v45 = v6;
            v46 = v101;
            (*v99)(v101, v40, v41);
            v47 = objc_autoreleasePoolPush();
            v48 = v12;
            v49 = v100;
            v50 = v109;
            sub_1012C46D0(v46, v112, v100);
            v109 = v50;
            v51 = v47;
            v41 = v102;
            v40 = v103;
            objc_autoreleasePoolPop(v51);
            (*v107)(v43, v118);
            v52 = v49;
            v12 = v48;
            v38 = v112;
            sub_1000D2AD8(v52, v12, &qword_1016B5470, &unk_1013D7380);
            v53 = v46;
            v6 = v45;
            (*v98)(v53, v41);
          }

          if ((*v106)(v12, 1, v117) == 1)
          {
            v37 = v42;
            goto LABEL_14;
          }

          v54 = v105;
          sub_1000D2AD8(v12, v105, &qword_1016B5478, v42);
          v37 = v42;
          sub_1000D2AD8(v54, v116, &qword_1016B5478, v42);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            break;
          }

          sub_10000B3A8(v116, &qword_1016B5478, v42);
          sub_1000D2A70(v38 + v39, v6, &qword_1016A5970, &unk_1013B3470);
          if ((v114)(v6, 1, v118) == 1)
          {
            goto LABEL_12;
          }
        }

        sub_10000B3A8(v38, &qword_1016A78A8, &unk_1013D66E0);
        v57 = v88;
        sub_100029420(v116, v88, type metadata accessor for OwnedDeviceKeyRecord);
        v56 = 0;
      }

      v58 = v93;
      v59 = v92;
      v60 = v56;
      v61 = v89;
      (*v85)(v57, v60, 1, v89);
      if ((*v84)(v57, 1, v61) == 1)
      {
        break;
      }

      result = sub_100029420(v57, v95, type metadata accessor for OwnedDeviceKeyRecord);
      if (v96)
      {
        v33 = v58;
        v18 = v83;
        v30 = v91;
        v63 = v96 - 1;
        if (__OFSUB__(v96, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        v64 = v58[3];
        if (((v64 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_43;
        }

        v65 = v64 & 0xFFFFFFFFFFFFFFFELL;
        if (v65 <= 1)
        {
          v66 = 1;
        }

        else
        {
          v66 = v65;
        }

        sub_1000BC4D4(&qword_1016B3BB8, &qword_1013D7390);
        v67 = *(v90 + 72);
        v68 = v81[0];
        v33 = swift_allocObject();
        result = j__malloc_size(v33);
        if (!v67)
        {
          goto LABEL_44;
        }

        v69 = result - v68;
        v70 = v68;
        if ((result - v68) == 0x8000000000000000 && v67 == -1)
        {
          goto LABEL_45;
        }

        v71 = v69 / v67;
        v33[2] = v66;
        v33[3] = 2 * (v69 / v67);
        v72 = v33 + v70;
        v73 = v58[3] >> 1;
        v74 = v73 * v67;
        if (v58[2])
        {
          if (v33 < v58 || v72 >= v58 + v70 + v74)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v33 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v58[2] = 0;
        }

        v59 = &v72[v74];
        v75 = (v71 & 0x7FFFFFFFFFFFFFFFLL) - v73;

        v18 = v83;
        v30 = v91;
        v38 = v112;
        v63 = v75 - 1;
        if (__OFSUB__(v75, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }
      }

      v96 = v63;
      sub_100029420(v95, v59, type metadata accessor for OwnedDeviceKeyRecord);
      v35 = (v59 + *(v90 + 72));
      sub_1000D2A70(v94, v18, &qword_1016A78B8, &unk_1013D6710);
      v76 = v86(v18, 1, v30);
      v36 = v33;
      if (v76 == 1)
      {
        goto LABEL_37;
      }
    }
  }

  sub_10000B3A8(v94, &qword_1016A78B0, &unk_1013EB2A0);
  result = sub_10000B3A8(v57, &qword_10169EF98, &unk_1013D66D0);
  v77 = v58[3];
  if (v77 < 2)
  {
    return v58;
  }

  v78 = v77 >> 1;
  v79 = __OFSUB__(v78, v96);
  v80 = v78 - v96;
  if (!v79)
  {
    v58[2] = v80;
    return v58;
  }

LABEL_46:
  __break(1u);
  return result;
}

void *sub_100B38FD8(char **a1)
{
  v115 = a1;
  v1 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v1 - 8);
  v103 = v81 - v2;
  v102 = type metadata accessor for URL();
  v106 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v4 - 8);
  v6 = v81 - v5;
  v118 = type metadata accessor for DirectorySequence();
  v111 = *(v118 - 8);
  __chkstk_darwin(v118);
  v110 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016B5CD0, &qword_1013D7398);
  v9 = __chkstk_darwin(v8 - 8);
  v100 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v81 - v11;
  v117 = sub_1000BC4D4(&qword_1016B5CD8, &unk_1013D73A0);
  v114 = *(v117 - 8);
  v13 = __chkstk_darwin(v117);
  v116 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v105 = v81 - v15;
  v16 = sub_1000BC4D4(&qword_1016B5520, &qword_1013D69F0);
  __chkstk_darwin(v16 - 8);
  v18 = v81 - v17;
  v19 = sub_1000BC4D4(&qword_1016B5510, &unk_1013D73B0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v112 = v81 - v21;
  v22 = sub_1000BC4D4(&qword_101699BB0, &qword_1013B35F0);
  __chkstk_darwin(v22 - 8);
  v88 = v81 - v23;
  v89 = type metadata accessor for SharingCircleSecret(0);
  v24 = *(v89 - 8);
  __chkstk_darwin(v89);
  v95 = v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000BC4D4(&qword_1016B5518, &unk_1013D69D0);
  __chkstk_darwin(v26 - 8);
  v28 = v81 - v27;
  v29 = *(v24 + 80);
  v30 = v19;
  sub_1000D2A70(v115, v81 - v27, &qword_1016B5518, &unk_1013D69D0);
  v94 = v28;
  sub_1000D2A70(v28, v18, &qword_1016B5520, &qword_1013D69F0);
  v31 = *(v20 + 48);
  v87 = v20 + 48;
  v86 = v31;
  v32 = v31(v18, 1, v19);
  v33 = _swiftEmptyArrayStorage;
  v90 = v24;
  if (v32 == 1)
  {
    v96 = 0;
LABEL_37:
    sub_10000B3A8(v18, &qword_1016B5520, &qword_1013D69F0);
    v57 = v88;
    (*(v90 + 56))(v88, 1, 1, v89);
    v58 = v33;
  }

  else
  {
    v34 = v24;
    v96 = 0;
    v109 = 0;
    v81[1] = v29;
    v81[0] = (v29 + 32) & ~v29;
    v35 = _swiftEmptyArrayStorage + v81[0];
    v115 = (v111 + 48);
    v113 = (v111 + 32);
    v108 = (v106 + 6);
    v99 = (v106 + 4);
    v107 = (v111 + 8);
    v98 = (v106 + 1);
    v97 = (v111 + 56);
    v104 = (v114 + 56);
    v106 = (v114 + 48);
    v85 = (v34 + 56);
    v82 = (v20 + 56);
    v84 = (v34 + 48);
    v36 = _swiftEmptyArrayStorage;
    v37 = &unk_1013D73A0;
    v38 = v112;
    v83 = v18;
    v91 = v19;
    while (1)
    {
      v92 = v35;
      v93 = v36;
      sub_1000D2AD8(v18, v38, &qword_1016B5510, &unk_1013D73B0);
      v39 = *(v30 + 40);
      sub_1000D2A70(v38 + v39, v6, &qword_1016A5970, &unk_1013B3470);
      v114 = *v115;
      if ((v114)(v6, 1, v118) == 1)
      {
LABEL_12:
        sub_10000B3A8(v6, &qword_1016A5970, &unk_1013B3470);
        (*v104)(v12, 1, 1, v117);
LABEL_14:
        sub_10000B3A8(v38, &qword_1016B5510, &unk_1013D73B0);
        sub_10000B3A8(v12, &qword_1016B5CD0, &qword_1013D7398);
        v55 = v94;
        sub_10000B3A8(v94, &qword_1016B5520, &qword_1013D69F0);
        v56 = 1;
        (*v82)(v55, 1, 1, v91);
        v57 = v88;
      }

      else
      {
        v111 = *v113;
        v41 = v102;
        v40 = v103;
        while (1)
        {
          v42 = v37;
          v43 = v110;
          (v111)(v110, v6, v118);
          DirectorySequence.next()();
          if ((*v108)(v40, 1, v41) == 1)
          {
            v44 = v118;
            (*v107)(v43, v118);
            sub_10000B3A8(v40, &unk_101696AC0, &qword_101390A60);
            sub_10000B3A8(v38 + v39, &qword_1016A5970, &unk_1013B3470);
            (*v97)(v38 + v39, 1, 1, v44);
            (*v104)(v12, 1, 1, v117);
          }

          else
          {
            v45 = v6;
            v46 = v101;
            (*v99)(v101, v40, v41);
            v47 = objc_autoreleasePoolPush();
            v48 = v12;
            v49 = v100;
            v50 = v109;
            sub_1012C4774(v46, v112, v100);
            v109 = v50;
            v51 = v47;
            v41 = v102;
            v40 = v103;
            objc_autoreleasePoolPop(v51);
            (*v107)(v43, v118);
            v52 = v49;
            v12 = v48;
            v38 = v112;
            sub_1000D2AD8(v52, v12, &qword_1016B5CD0, &qword_1013D7398);
            v53 = v46;
            v6 = v45;
            (*v98)(v53, v41);
          }

          if ((*v106)(v12, 1, v117) == 1)
          {
            v37 = v42;
            goto LABEL_14;
          }

          v54 = v105;
          sub_1000D2AD8(v12, v105, &qword_1016B5CD8, v42);
          v37 = v42;
          sub_1000D2AD8(v54, v116, &qword_1016B5CD8, v42);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            break;
          }

          sub_10000B3A8(v116, &qword_1016B5CD8, v42);
          sub_1000D2A70(v38 + v39, v6, &qword_1016A5970, &unk_1013B3470);
          if ((v114)(v6, 1, v118) == 1)
          {
            goto LABEL_12;
          }
        }

        sub_10000B3A8(v38, &qword_1016B5510, &unk_1013D73B0);
        v57 = v88;
        sub_100029420(v116, v88, type metadata accessor for SharingCircleSecret);
        v56 = 0;
      }

      v58 = v93;
      v59 = v92;
      v60 = v56;
      v61 = v89;
      (*v85)(v57, v60, 1, v89);
      if ((*v84)(v57, 1, v61) == 1)
      {
        break;
      }

      result = sub_100029420(v57, v95, type metadata accessor for SharingCircleSecret);
      if (v96)
      {
        v33 = v58;
        v18 = v83;
        v30 = v91;
        v63 = v96 - 1;
        if (__OFSUB__(v96, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        v64 = v58[3];
        if (((v64 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_43;
        }

        v65 = v64 & 0xFFFFFFFFFFFFFFFELL;
        if (v65 <= 1)
        {
          v66 = 1;
        }

        else
        {
          v66 = v65;
        }

        sub_1000BC4D4(&qword_101698D88, &qword_101390910);
        v67 = *(v90 + 72);
        v68 = v81[0];
        v33 = swift_allocObject();
        result = j__malloc_size(v33);
        if (!v67)
        {
          goto LABEL_44;
        }

        v69 = result - v68;
        v70 = v68;
        if ((result - v68) == 0x8000000000000000 && v67 == -1)
        {
          goto LABEL_45;
        }

        v71 = v69 / v67;
        v33[2] = v66;
        v33[3] = 2 * (v69 / v67);
        v72 = v33 + v70;
        v73 = v58[3] >> 1;
        v74 = v73 * v67;
        if (v58[2])
        {
          if (v33 < v58 || v72 >= v58 + v70 + v74)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v33 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v58[2] = 0;
        }

        v59 = &v72[v74];
        v75 = (v71 & 0x7FFFFFFFFFFFFFFFLL) - v73;

        v18 = v83;
        v30 = v91;
        v38 = v112;
        v63 = v75 - 1;
        if (__OFSUB__(v75, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }
      }

      v96 = v63;
      sub_100029420(v95, v59, type metadata accessor for SharingCircleSecret);
      v35 = (v59 + *(v90 + 72));
      sub_1000D2A70(v94, v18, &qword_1016B5520, &qword_1013D69F0);
      v76 = v86(v18, 1, v30);
      v36 = v33;
      if (v76 == 1)
      {
        goto LABEL_37;
      }
    }
  }

  sub_10000B3A8(v94, &qword_1016B5518, &unk_1013D69D0);
  result = sub_10000B3A8(v57, &qword_101699BB0, &qword_1013B35F0);
  v77 = v58[3];
  if (v77 < 2)
  {
    return v58;
  }

  v78 = v77 >> 1;
  v79 = __OFSUB__(v78, v96);
  v80 = v78 - v96;
  if (!v79)
  {
    v58[2] = v80;
    return v58;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_100B39D8C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v2 - 8);
  v4 = &v26[-v3];
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for BeaconStoreFileRecord(0);
  sub_1000D2A70(a1 + *(v9 + 20), v4, &unk_101696AC0, &qword_101390A60);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10000B3A8(v4, &unk_101696AC0, &qword_101390A60);
  }

  (*(v6 + 32))(v8, v4, v5);
  v11 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  v27 = 0;
  v15 = [v11 removeItemAtURL:v13 error:&v27];

  if (v15)
  {
    v16 = *(v6 + 8);
    v17 = v27;
    return v16(v8, v5);
  }

  else
  {
    v18 = v27;
    v19 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v20 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v21 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_101385D80;
    v27 = v19;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_100008C00();
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v21, "Could not delete tombstoned record %@", 37, 2, v22);

    return (*(v6 + 8))(v8, v5);
  }
}

void *sub_100B3A0F8(uint64_t a1)
{
  v2 = type metadata accessor for BeaconStoreFileRecord(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v54 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v53 = &v44 - v6;
  v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v7 - 8);
  v57 = &v44 - v8;
  v59 = type metadata accessor for UUID();
  v9 = *(v59 - 8);
  __chkstk_darwin(v59);
  v52 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v11 - 8);
  v13 = &v44 - v12;
  v64 = type metadata accessor for URL();
  v14 = *(v64 - 8);
  v15 = __chkstk_darwin(v64);
  v51 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v58 = &v44 - v18;
  __chkstk_darwin(v17);
  v63 = &v44 - v19;
  v20 = [objc_opt_self() defaultManager];
  v21 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v65 = v21;
  if (v21)
  {
    v48 = v3;
    v49 = v2;
    v50 = a1;
    v61 = (v14 + 48);
    v62 = (v14 + 56);
    v60 = (v14 + 32);
    v66 = 0x80000001013541B0;
    v67 = (v14 + 8);
    v56 = (v9 + 48);
    v47 = (v9 + 32);
    v46 = (v14 + 16);
    v45 = (v9 + 8);
    v55 = _swiftEmptyArrayStorage;
    v22 = v63;
    v23 = v64;
    while (1)
    {
      if ([v65 nextObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v68 = 0u;
        v69 = 0u;
      }

      v70 = v68;
      v71 = v69;
      if (!*(&v69 + 1))
      {

        v42 = v55;
        goto LABEL_22;
      }

      v24 = swift_dynamicCast();
      v25 = *v62;
      (*v62)(v13, v24 ^ 1u, 1, v23);
      if ((*v61)(v13, 1, v23) == 1)
      {

        v42 = v55;
        goto LABEL_24;
      }

      (*v60)(v22, v13, v23);
      if (URL.pathExtension.getter() == 0xD000000000000010 && v66 == v26)
      {

LABEL_13:
        v28 = v13;
        v29 = v67;
        v30 = v58;
        v22 = v63;
        URL.deletingPathExtension()();
        URL.lastPathComponent.getter();
        v31 = *v29;
        v32 = v30;
        v23 = v64;
        (*v29)(v32, v64);
        v33 = v57;
        UUID.init(uuidString:)();

        if ((*v56)(v33, 1, v59) == 1)
        {
          v31(v22, v23);
          sub_10000B3A8(v33, &qword_1016980D0, &unk_10138F3B0);
          v13 = v28;
        }

        else
        {
          (*v47)(v52, v33, v59);
          v44 = objc_autoreleasePoolPush();
          UUID.uuidString.getter();
          v34 = v58;
          URL.appendingPathComponent(_:)();

          v35 = v51;
          URL.appendingPathExtension(_:)();
          v31(v34, v23);
          objc_autoreleasePoolPop(v44);
          v36 = *v46;
          v37 = v53;
          (*v46)(v53, v35, v23);
          v38 = *(v49 + 20);
          v36(v37 + v38, v22, v23);
          v25(v37 + v38, 0, 1, v23);
          sub_100034F3C(v37, v54, type metadata accessor for BeaconStoreFileRecord);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v55 = sub_100A5C0A0(0, v55[2] + 1, 1, v55);
          }

          v13 = v28;
          v40 = v55[2];
          v39 = v55[3];
          v22 = v63;
          if (v40 >= v39 >> 1)
          {
            v55 = sub_100A5C0A0((v39 > 1), v40 + 1, 1, v55);
          }

          sub_100B3B210(v53);
          v31(v51, v23);
          (*v45)(v52, v59);
          v31(v22, v23);
          v41 = v55;
          v55[2] = v40 + 1;
          sub_100029420(v54, v41 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v40, type metadata accessor for BeaconStoreFileRecord);
        }
      }

      else
      {
        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v27)
        {
          goto LABEL_13;
        }

        v22 = v63;
        v23 = v64;
        (*v67)(v63, v64);
      }
    }
  }

  v70 = 0u;
  v71 = 0u;
  v42 = _swiftEmptyArrayStorage;
  v23 = v64;
LABEL_22:
  sub_10000B3A8(&v70, &unk_1016A0B10, &qword_10139BF40);
  (*(v14 + 56))(v13, 1, 1, v23);
LABEL_24:
  sub_10000B3A8(v13, &unk_101696AC0, &qword_101390A60);
  return v42;
}

uint64_t sub_100B3A9AC(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v2 - 8);
  v4 = &v29[-v3];
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for BeaconStoreFileRecord(0);
  sub_1000D2A70(a1 + *(v9 + 20), v4, &unk_101696AC0, &qword_101390A60);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10000B3A8(v4, &unk_101696AC0, &qword_101390A60);
  }

  (*(v6 + 32))(v8, v4, v5);
  v11 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  URL._bridgeToObjectiveC()(v15);
  v17 = v16;
  v30 = 0;
  v18 = [v11 moveItemAtURL:v14 toURL:v16 error:&v30];

  if (v18)
  {
    v19 = *(v6 + 8);
    v20 = v30;
    return v19(v8, v5);
  }

  else
  {
    v21 = v30;
    v22 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v23 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v24 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_101385D80;
    v30 = v22;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v26 = String.init<A>(describing:)();
    v28 = v27;
    *(v25 + 56) = &type metadata for String;
    *(v25 + 64) = sub_100008C00();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "Could not restore record %@", 27, 2, v25);

    return (*(v6 + 8))(v8, v5);
  }
}

void sub_100B3AD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_autoreleasePoolPush();
  sub_100B2F280(&v5, &v6);
  objc_autoreleasePoolPop(v4);
}

void sub_100B3ADEC()
{
  v25 = [objc_opt_self() standardUserDefaults];
  v0 = [v25 dictionaryRepresentation];
  v1 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  v26 = v1;

  v7 = 0;
  while (v5)
  {
LABEL_12:
    v10 = (*(v26 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v5)))));
    v12 = *v10;
    v11 = v10[1];
    v13 = qword_101694C38;

    if (v13 != -1)
    {
      swift_once();
    }

    v5 &= v5 - 1;
    v14 = off_1016B58E0;
    if (*(off_1016B58E0 + 2) && (Hasher.init(_seed:)(), String.hash(into:)(), v15 = Hasher._finalize()(), v16 = -1 << *(v14 + 32), v17 = v15 & ~v16, ((*(v14 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v17) & 1) != 0))
    {
      v18 = ~v16;
      while (1)
      {
        v19 = (v14[6] + 16 * v17);
        v20 = *v19 == v12 && v19[1] == v11;
        if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v14 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v17) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_1000076D4(v21, qword_10177BA08);

      v8 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v8, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v27[0] = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_1000136BC(v12, v11, v27);
        _os_log_impl(&_mh_execute_header, v8, v22, "Ignore persisted user defaults: %s", v23, 0xCu);
        sub_100007BAC(v24);
      }
    }

    else
    {
LABEL_5:
      v8 = String._bridgeToObjectiveC()();
      [v25 removeObjectForKey:v8];
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_12;
    }
  }
}

uint64_t sub_100B3B210(uint64_t a1)
{
  v2 = type metadata accessor for BeaconStoreFileRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100B3B2A4(int a1, uint64_t a2, void (*a3)(char *, char *, uint64_t))
{
  v4 = v3;
  v70 = a3;
  v69 = a2;
  v68 = a1;
  v5 = 0;
  v6 = type metadata accessor for BeaconObservation(0);
  v89 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v67[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v87 = &v67[-v11];
  v12 = __chkstk_darwin(v10);
  v14 = &v67[-v13];
  v15 = __chkstk_darwin(v12);
  v88 = &v67[-v16];
  v17 = __chkstk_darwin(v15);
  v74 = &v67[-v18];
  __chkstk_darwin(v17);
  v81 = &v67[-v19];
  v20 = type metadata accessor for OwnedBeaconRecord(0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v67[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_100025044();
  v80 = v24[2];
  if (v80)
  {
    v25 = 0;
    v73 = *(v20 + 20);
    v79 = v3[3];
    v26 = _swiftEmptyArrayStorage;
    v27 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v78 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue;
    v77 = v24 + v27;
    v85 = v6;
    v86 = v14;
    v75 = v21;
    v82 = v23;
    v76 = v24;
    while (v25 < v24[2])
    {
      v28 = *(v21 + 72);
      v84 = v25;
      sub_100034FA4(&v77[v28 * v25], v23, type metadata accessor for OwnedBeaconRecord);
      swift_retain_n();
      v29 = objc_autoreleasePoolPush();
      sub_1000BC4D4(&unk_1016B26E0, &unk_10138C4A0);
      OS_dispatch_queue.sync<A>(execute:)();
      v30 = v91[0];
      v31 = *(v91[0] + 16);
      v83 = v5;
      if (v31 && (v32 = sub_1000210EC(&v23[v73]), (v33 & 1) != 0))
      {
        v72 = v26;
        v34 = *(*(v30 + 56) + 8 * v32);

        v26 = *(v34 + 16);
        if (v26)
        {
          v35 = sub_100034824(*(v34 + 16), 0);
          v36 = sub_1000364B4(v91, v35 + 4, v26, v34);
          sub_1000128F8(v91[0]);
          if (v36 != v26)
          {
            goto LABEL_61;
          }
        }

        else
        {

          v35 = _swiftEmptyArrayStorage;
        }

        v71 = v29;
        v5 = v4;
        v26 = sub_100034838(v35);

        v38 = v26[2];
        v39 = v86;
        if (v38)
        {
          v40 = 0;
          v37 = _swiftEmptyArrayStorage;
          while (v40 < v26[2])
          {
            v41 = (*(v89 + 80) + 32) & ~*(v89 + 80);
            v4 = *(v89 + 72);
            sub_100034FA4(v26 + v41 + v4 * v40, v39, type metadata accessor for BeaconObservation);
            v42 = *(v39 + *(v6 + 24));
            if (qword_1013D7520[v42] == 700 || qword_1013D7520[v42] == 701)
            {
              sub_100B3DB48(v39, v87);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v91[0] = v37;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_101124308(0, v37[2] + 1, 1);
                v37 = v91[0];
              }

              v45 = v37[2];
              v44 = v37[3];
              if (v45 >= v44 >> 1)
              {
                sub_101124308((v44 > 1), v45 + 1, 1);
                v37 = v91[0];
              }

              v37[2] = v45 + 1;
              sub_100B3DB48(v87, v37 + v41 + v45 * v4);
              v6 = v85;
              v39 = v86;
            }

            else
            {
              sub_100B3DC30(v39, type metadata accessor for BeaconObservation);
            }

            if (v38 == ++v40)
            {
              goto LABEL_26;
            }
          }

          goto LABEL_59;
        }

        v37 = _swiftEmptyArrayStorage;
LABEL_26:

        v4 = v5;
        v23 = v82;
        v5 = v83;
        v26 = v72;
        v21 = v75;
        v29 = v71;
      }

      else
      {

        v37 = _swiftEmptyArrayStorage;
      }

      objc_autoreleasePoolPop(v29);

      v46 = v37[2];
      if (v46)
      {
        v5 = v4;
        v4 = v26;
        v47 = (*(v89 + 80) + 32) & ~*(v89 + 80);
        v26 = (v37 + v47);
        sub_100034FA4(v37 + v47, v88, type metadata accessor for BeaconObservation);
        if (v46 != 1)
        {
          v51 = 1;
          while (v51 < v37[2])
          {
            sub_100034FA4(v26 + *(v89 + 72) * v51, v9, type metadata accessor for BeaconObservation);
            v52 = v88;
            if (static Date.< infix(_:_:)())
            {
              sub_100B3DC30(v52, type metadata accessor for BeaconObservation);
              sub_100B3DB48(v9, v52);
            }

            else
            {
              sub_100B3DC30(v9, type metadata accessor for BeaconObservation);
            }

            if (v46 == ++v51)
            {
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_59:
          __break(1u);
          break;
        }

LABEL_29:
        sub_100B3DC30(v82, type metadata accessor for OwnedBeaconRecord);

        v48 = v74;
        sub_100B3DB48(v88, v74);
        sub_100B3DB48(v48, v81);
        v26 = v4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_100A5D28C(0, v4[2] + 1, 1, v4);
        }

        v4 = v5;
        v50 = v26[2];
        v49 = v26[3];
        v5 = v83;
        if (v50 >= v49 >> 1)
        {
          v26 = sub_100A5D28C((v49 > 1), v50 + 1, 1, v26);
        }

        v26[2] = v50 + 1;
        sub_100B3DB48(v81, v26 + v47 + *(v89 + 72) * v50);
        v21 = v75;
        v23 = v82;
      }

      else
      {
        sub_100B3DC30(v23, type metadata accessor for OwnedBeaconRecord);
      }

      v25 = v84 + 1;
      v24 = v76;
      if (v84 + 1 == v80)
      {

        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    swift_once();
    goto LABEL_44;
  }

  v26 = _swiftEmptyArrayStorage;
LABEL_42:
  CurrentValueSubject.value.getter();
  if (LOBYTE(v91[0]) != 7)
  {

    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_1000076D4(v64, qword_10177B780);
    v57 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v57, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v57, v65, "SeparationStateSyncService: This is not the monitoring device, won't accept remote sync request.", v66, 2u);
    }

    goto LABEL_54;
  }

  if (qword_101694B70 != -1)
  {
    goto LABEL_62;
  }

LABEL_44:
  v53 = type metadata accessor for Logger();
  sub_1000076D4(v53, qword_10177B780);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, v54, v55, "SeparationStateSyncService: Responding to remote sync request", v56, 2u);
  }

  sub_100B3DAD8((v4 + 5), v91);
  if (v91[3])
  {
    sub_10001F280(v91, v90);
    sub_10000B3A8(v91, &qword_1016B5E88, &unk_1013D7510);
    sub_1000035D0(v90, v90[3]);
    sub_10054DBB0(v26, v68, v69, v70);
    if (v5)
    {

      sub_100007BAC(v90);
      swift_errorRetain();
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v91[0] = v60;
        *v59 = 136315138;
        v90[0] = v5;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v61 = String.init<A>(describing:)();
        v63 = sub_1000136BC(v61, v62, v91);

        *(v59 + 4) = v63;
        _os_log_impl(&_mh_execute_header, v57, v58, "SeparationStateSyncService: Failed to reply to sync request due to error: %s", v59, 0xCu);
        sub_100007BAC(v60);

LABEL_54:

        return;
      }
    }

    else
    {

      sub_100007BAC(v90);
    }
  }

  else
  {

    sub_10000B3A8(v91, &qword_1016B5E88, &unk_1013D7510);
  }
}

void sub_100B3BDC0(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  __chkstk_darwin(v3 - 8);
  v5 = &v97 - v4;
  v6 = type metadata accessor for BeaconObservation(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v117 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v104 = &v97 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v97 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v97 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v97 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v97 - v22;
  v24 = __chkstk_darwin(v21);
  v125 = &v97 - v25;
  v26 = __chkstk_darwin(v24);
  v113 = &v97 - v27;
  v28 = __chkstk_darwin(v26);
  v106 = &v97 - v29;
  v105 = v30;
  __chkstk_darwin(v28);
  v121 = v1;
  v122 = &v97 - v31;
  CurrentValueSubject.value.getter();
  if (LOBYTE(v126[0]) == 7)
  {
    if (qword_101694B70 != -1)
    {
      goto LABEL_65;
    }

    goto LABEL_3;
  }

  v98 = v17;
  v103 = v14;
  v112 = *(a1 + 16);
  if (v112)
  {
    v37 = 0;
    v38 = 0;
    v39 = *(v7 + 80);
    v40 = (v39 + 32) & ~v39;
    v116 = *(v121 + 24);
    v111 = a1 + v40;
    v110 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue;
    v108 = (v7 + 56);
    v107 = (v7 + 48);
    v41 = *(v7 + 72);
    v114 = v39;
    v102 = (v39 + 24) & ~v39;
    v124 = v40;
    v101 = v41 + v40;
    *&v32 = 136315138;
    v100 = v32;
    v99 = xmmword_101385D80;
    v115 = v5;
    v123 = v6;
    v109 = v23;
    do
    {
      v118 = v37;
      v44 = v122;
      sub_100034FA4(v111 + v41 * v37, v122, type metadata accessor for BeaconObservation);

      v120 = objc_autoreleasePoolPush();
      sub_1000BC4D4(&unk_1016B26E0, &unk_10138C4A0);
      OS_dispatch_queue.sync<A>(execute:)();
      v45 = v126[0];
      v46 = *(v126[0] + 16);
      v119 = v38;
      if (v46 && (v47 = sub_1000210EC(v44), (v48 & 1) != 0))
      {
        v49 = *(*(v45 + 56) + 8 * v47);

        v50 = *(v49 + 16);
        if (v50)
        {
          v51 = sub_100034824(*(v49 + 16), 0);
          v52 = sub_1000364B4(v126, v51 + 4, v50, v49);
          sub_1000128F8(v126[0]);
          if (v52 != v50)
          {
            goto LABEL_64;
          }
        }

        else
        {

          v51 = _swiftEmptyArrayStorage;
        }

        v54 = sub_100034838(v51);

        v55 = v54[2];
        if (v55)
        {
          v56 = 0;
          v57 = v54 + v124;
          v53 = _swiftEmptyArrayStorage;
          while (v56 < v54[2])
          {
            v58 = v125;
            sub_100034FA4(v57, v125, type metadata accessor for BeaconObservation);
            v59 = *(v58 + *(v6 + 24));
            if (qword_1013D7520[v59] == 700 || qword_1013D7520[v59] == 701)
            {
              sub_100B3DB48(v125, v23);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v126[0] = v53;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_101124308(0, v53[2] + 1, 1);
                v53 = v126[0];
              }

              v62 = v53[2];
              v61 = v53[3];
              if (v62 >= v61 >> 1)
              {
                sub_101124308((v61 > 1), v62 + 1, 1);
                v53 = v126[0];
              }

              v53[2] = v62 + 1;
              sub_100B3DB48(v23, v53 + v124 + v62 * v41);
              v6 = v123;
            }

            else
            {
              sub_100B3DC30(v125, type metadata accessor for BeaconObservation);
            }

            ++v56;
            v57 += v41;
            if (v55 == v56)
            {
              goto LABEL_31;
            }
          }

LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          swift_once();
LABEL_3:
          v33 = type metadata accessor for Logger();
          sub_1000076D4(v33, qword_10177B780);
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            *v36 = 0;
            _os_log_impl(&_mh_execute_header, v34, v35, "SeparationStateSyncService: This is the monitoring device, won't accept forwarded state.", v36, 2u);
          }

          return;
        }

        v53 = _swiftEmptyArrayStorage;
LABEL_31:

        v5 = v115;
        v44 = v122;
      }

      else
      {

        v53 = _swiftEmptyArrayStorage;
      }

      objc_autoreleasePoolPop(v120);

      v63 = v53[2];
      v64 = v113;
      if (v63)
      {
        sub_100034FA4(v53 + v124, v113, type metadata accessor for BeaconObservation);
        if (v63 != 1)
        {
          v76 = v53 + v101;
          v77 = 1;
          while (1)
          {
            v78 = v77 + 1;
            if (__OFADD__(v77, 1))
            {
              break;
            }

            sub_100034FA4(v76, v20, type metadata accessor for BeaconObservation);
            if (static Date.< infix(_:_:)())
            {
              sub_100B3DC30(v64, type metadata accessor for BeaconObservation);
              sub_100B3DB48(v20, v64);
            }

            else
            {
              sub_100B3DC30(v20, type metadata accessor for BeaconObservation);
            }

            ++v77;
            v76 += v41;
            if (v78 == v63)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
          goto LABEL_63;
        }

LABEL_34:
        sub_100B3DB48(v64, v5);
        (*v108)(v5, 0, 1, v6);

        v44 = v122;
      }

      else
      {
        (*v108)(v5, 1, 1, v6);
      }

      if ((*v107)(v5, 1, v6) == 1)
      {
        sub_10000B3A8(v5, &qword_1016A42E0, &qword_1013B0010);
      }

      else
      {
        v65 = v106;
        sub_100B3DB48(v5, v106);
        if (static Date.> infix(_:_:)())
        {
          if (qword_101694B70 != -1)
          {
            swift_once();
          }

          v66 = type metadata accessor for Logger();
          sub_1000076D4(v66, qword_10177B780);
          v67 = v98;
          sub_100034FA4(v44, v98, type metadata accessor for BeaconObservation);
          v68 = Logger.logObject.getter();
          v69 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            v120 = swift_slowAlloc();
            v126[0] = v120;
            *v70 = v100;
            type metadata accessor for UUID();
            sub_1002FFBAC();
            v71 = dispatch thunk of CustomStringConvertible.description.getter();
            v73 = v72;
            sub_100B3DC30(v67, type metadata accessor for BeaconObservation);
            v74 = sub_1000136BC(v71, v73, v126);

            *(v70 + 4) = v74;
            _os_log_impl(&_mh_execute_header, v68, v69, "SeparationStateSyncService: We already have a newer observation for %s, ignoring.", v70, 0xCu);
            sub_100007BAC(v120);

            sub_100B3DC30(v106, type metadata accessor for BeaconObservation);
            v75 = v122;
          }

          else
          {

            sub_100B3DC30(v67, type metadata accessor for BeaconObservation);
            sub_100B3DC30(v106, type metadata accessor for BeaconObservation);
            v75 = v44;
          }

          sub_100B3DC30(v75, type metadata accessor for BeaconObservation);
          v5 = v115;
          v23 = v109;
          v43 = v118;
          v38 = v119;
          goto LABEL_10;
        }

        sub_100B3DC30(v65, type metadata accessor for BeaconObservation);
      }

      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v79 = type metadata accessor for Logger();
      sub_1000076D4(v79, qword_10177B780);
      v80 = v103;
      sub_100034FA4(v44, v103, type metadata accessor for BeaconObservation);
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v126[0] = v84;
        *v83 = v100;
        type metadata accessor for UUID();
        sub_1002FFBAC();
        v85 = dispatch thunk of CustomStringConvertible.description.getter();
        v87 = v86;
        sub_100B3DC30(v80, type metadata accessor for BeaconObservation);
        v88 = sub_1000136BC(v85, v87, v126);

        *(v83 + 4) = v88;
        _os_log_impl(&_mh_execute_header, v81, v82, "SeparationStateSyncService: Received remote observation for %s", v83, 0xCu);
        sub_100007BAC(v84);

        v44 = v122;
      }

      else
      {

        sub_100B3DC30(v80, type metadata accessor for BeaconObservation);
      }

      v89 = v121;
      v90 = v104;
      sub_100034FA4(v44, v104, type metadata accessor for BeaconObservation);
      sub_100034FA4(v90, v117, type metadata accessor for BeaconObservation);
      v91 = v102;
      v92 = swift_allocObject();
      *(v92 + 16) = v89;
      sub_100B3DB48(v90, v92 + v91);

      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      v38 = v119;
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v93 = v126[0];
      v23 = v109;
      if (qword_101694FA8 != -1)
      {
        swift_once();
      }

      v126[0] = 0x7365547265646E75;
      v126[1] = 0xE900000000000074;
      SynchronousCache.cachedValue<A>(key:computeBlock:)();
      if (v127 == 1)
      {
        sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
        v94 = swift_allocObject();
        *(v94 + 16) = v99;
        v120 = v93;
        v95 = v117;
        sub_100034FA4(v117, v94 + v124, type metadata accessor for BeaconObservation);
        v96 = type metadata accessor for Transaction();
        __chkstk_darwin(v96);
        *(&v97 - 4) = v116;
        *(&v97 - 3) = v94;
        *(&v97 - 2) = 0;
        *(&v97 - 1) = 0;
        static Transaction.named<A>(_:with:)();

        v6 = v123;
        sub_100B3DC30(v95, type metadata accessor for BeaconObservation);
      }

      else
      {
        v42 = type metadata accessor for Transaction();
        __chkstk_darwin(v42);
        *(&v97 - 4) = v93;
        *(&v97 - 3) = sub_100B3DBAC;
        *(&v97 - 2) = v92;
        static Transaction.named<A>(_:with:)();

        sub_100B3DC30(v117, type metadata accessor for BeaconObservation);
      }

      sub_100B3DC30(v122, type metadata accessor for BeaconObservation);
      v5 = v115;
      v43 = v118;
LABEL_10:
      v37 = v43 + 1;
    }

    while (v37 != v112);
  }
}

uint64_t sub_100B3CD38(uint64_t a1, uint64_t a2)
{
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v3 = *(type metadata accessor for BeaconObservation(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101385D80;
  sub_100034FA4(a2, v5 + v4, type metadata accessor for BeaconObservation);
  type metadata accessor for Transaction();
  static Transaction.named<A>(_:with:)();
}

uint64_t sub_100B3CE78()
{

  sub_10000B3A8(v0 + 40, &qword_1016B5E88, &unk_1013D7510);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd26SeparationStateSyncManager_observationStoreSubscription, &unk_1016B2820, &qword_1013D3710);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SeparationStateSyncManager(uint64_t a1)
{
  result = qword_1016B5D70;
  if (!qword_1016B5D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100B3CF70(uint64_t a1)
{
  sub_100B3D01C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100B3D01C(uint64_t a1)
{
  if (!qword_1016B1E78)
  {
    sub_1000BC580(&unk_1016B1E80, &qword_10138CDE0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1016B1E78);
    }
  }
}

void sub_100B3D080(uint64_t a1)
{
  v2 = *(a1 + *(type metadata accessor for BeaconObservation(0) + 24));
  if (sub_1005C8B3C(v2, &off_101609F88) || sub_1005C8B3C(v2, &off_101609FB0))
  {
    CurrentValueSubject.value.getter();
    if (v7 == 7)
    {
      if (sub_1005C8B3C(v2, &off_10160A028))
      {
        sub_100B3D204(a1);
      }

      else if (sub_1005C8B3C(v2, &off_10160A050))
      {
        sub_100B3D6F8(a1);
      }
    }

    else
    {
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_1000076D4(v3, qword_10177B780);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "SeparationStateSyncService: Not a monitoring device, won't update separation state.", v6, 2u);
      }
    }
  }
}

uint64_t sub_100B3D204(uint64_t a1)
{
  v3 = type metadata accessor for BeaconObservation(0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v31 - v8;
  v10 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  __chkstk_darwin(v10 - 8);
  v12 = v31 - v11;
  result = sub_1005C8B3C(*(a1 + *(v3 + 24)), &off_10160A000);
  if (result)
  {
    v14 = *(v1 + 24);
    v15 = swift_allocObject();
    *(v15 + 16) = &off_101609FD8;
    v16 = sub_100035730(a1, sub_100319F00, v15);

    sub_1012BB138(v16, v12);

    if ((*(v4 + 48))(v12, 1, v3) == 1)
    {
      return sub_10000B3A8(v12, &qword_1016A42E0, &qword_1013B0010);
    }

    else
    {
      v17 = v12[*(v3 + 24)];
      result = sub_100B3DC30(v12, type metadata accessor for BeaconObservation);
      if (v17 == 41)
      {
        v18 = type metadata accessor for UUID();
        (*(*(v18 - 8) + 16))(v9, a1, v18);
        Date.addingTimeInterval(_:)();
        v9[*(v3 + 24)] = 42;
        if (qword_101694B70 != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        sub_1000076D4(v19, qword_10177B780);
        sub_100034FA4(a1, v7, type metadata accessor for BeaconObservation);
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v31[0] = v23;
          *v22 = 136315138;
          sub_1002FFBAC();
          v24 = dispatch thunk of CustomStringConvertible.description.getter();
          v26 = v25;
          sub_100B3DC30(v7, type metadata accessor for BeaconObservation);
          v27 = sub_1000136BC(v24, v26, v31);

          *(v22 + 4) = v27;
          _os_log_impl(&_mh_execute_header, v20, v21, "SeparationStateSyncService: Detected reunite event for %s.", v22, 0xCu);
          sub_100007BAC(v23);
        }

        else
        {

          sub_100B3DC30(v7, type metadata accessor for BeaconObservation);
        }

        sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
        v28 = (*(v4 + 80) + 32) & ~*(v4 + 80);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_101385D80;
        sub_100034FA4(v9, v29 + v28, type metadata accessor for BeaconObservation);
        v30 = type metadata accessor for Transaction();
        __chkstk_darwin(v30);
        v31[-4] = v14;
        v31[-3] = v29;
        v31[-2] = 0;
        v31[-1] = 0;
        static Transaction.named<A>(_:with:)();

        return sub_100B3DC30(v9, type metadata accessor for BeaconObservation);
      }
    }
  }

  return result;
}

uint64_t sub_100B3D6F8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for BeaconObservation(0);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177B780);
  sub_100034FA4(a1, v6, type metadata accessor for BeaconObservation);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v10 = 136315138;
    type metadata accessor for UUID();
    sub_1002FFBAC();
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_100B3DC30(v6, type metadata accessor for BeaconObservation);
    v15 = sub_1000136BC(v12, v14, v19);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "SeparationStateSyncService: Forwarding Separation State Update for %s.", v10, 0xCu);
    sub_100007BAC(v11);
  }

  else
  {

    sub_100B3DC30(v6, type metadata accessor for BeaconObservation);
  }

  sub_100B3DAD8(v2 + 40, v19);
  if (!v19[3])
  {
    return sub_10000B3A8(v19, &qword_1016B5E88, &unk_1013D7510);
  }

  sub_10001F280(v19, v18);
  sub_10000B3A8(v19, &qword_1016B5E88, &unk_1013D7510);
  sub_1000035D0(v18, v18[3]);
  sub_10054F5EC(a1);
  return sub_100007BAC(v18);
}

uint64_t sub_100B3DAD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B5E88, &unk_1013D7510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B3DB48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconObservation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B3DBAC()
{
  v1 = *(type metadata accessor for BeaconObservation(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100B3CD38(v2, v3);
}

uint64_t sub_100B3DC30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100B3DCA8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BAA0);
  sub_1000076D4(v0, qword_10177BAA0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100B3DD28(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return _swift_task_switch(sub_100B3DD48, v1, 0);
}

uint64_t sub_100B3DD48()
{
  sub_1000D2A70(*(v0 + 104) + 144, v0 + 56, &qword_1016B6108, &unk_1013D7910);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 96);
    sub_10000A748((v0 + 56), v0 + 16);
    sub_10000A748((v0 + 16), v1);
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_10000B3A8(v0 + 56, &qword_1016B6108, &unk_1013D7910);
    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_100B3DE68;

    return daemon.getter();
  }
}

uint64_t sub_100B3DE68(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[15] = a1;

  v3 = swift_task_alloc();
  v2[16] = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for FamilyCircleService();
  v2[17] = v5;
  v6 = sub_100B5AB90(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100B5AB90(&unk_1016AF840, 255, type metadata accessor for FamilyCircleService, &unk_1013E4DC8);
  *v3 = v9;
  v3[1] = sub_100B3E050;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100B3E050(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = *(v4 + 104);
    v6 = sub_100B3E1C4;
  }

  else
  {
    v7 = *(v4 + 104);

    *(v4 + 152) = a1;
    v6 = sub_100B3E190;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100B3E190()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 96);
  v2[3] = *(v0 + 136);
  v2[4] = &off_10164F7C0;
  *v2 = v1;
  return (*(v0 + 8))();
}

uint64_t sub_100B3E1C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B3E228(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016B1630, &qword_10138CA48);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v14 - v9;
  sub_1000D2A70(a1, v14 - v9, &unk_1016B1630, &qword_10138CA48);
  v11 = *(v5 + 56);
  sub_1000D2A70(a2, v8, &unk_1016B1630, &qword_10138CA48);
  v12 = *(v5 + 56);
  LOBYTE(a2) = sub_100B3E39C(v10, &v10[v11], v8, &v8[v12]);
  sub_10002FF48(&v8[v12], type metadata accessor for MemberSharingCircle);
  sub_10000B3A8(v8, &unk_101698BC0, &qword_10138C440);
  sub_10002FF48(&v10[v11], type metadata accessor for MemberSharingCircle);
  sub_10000B3A8(v10, &unk_101698BC0, &qword_10138C440);
  return a2 & 1;
}

BOOL sub_100B3E39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v32 = a2;
  v5 = type metadata accessor for MemberSharingCircle(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v29 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  __chkstk_darwin(v8 - 8);
  v31 = (&v29 - v9);
  v10 = sub_1000BC4D4(&qword_1016B60A8, &qword_1013D7868);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v29 - v12;
  v14 = sub_1000BC4D4(&qword_1016B60F0, &qword_1013D78D8);
  v15 = v14 - 8;
  v16 = __chkstk_darwin(v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v29 - v19;
  sub_1000D2A70(a1, &v29 - v19, &unk_101698BC0, &qword_10138C440);
  v30 = *(v15 + 56);
  sub_100B5AAA0(v32, &v20[v30], type metadata accessor for MemberSharingCircle);
  sub_1000D2A70(v33, v18, &unk_101698BC0, &qword_10138C440);
  v21 = *(v15 + 56);
  sub_100B5AAA0(v34, &v18[v21], type metadata accessor for MemberSharingCircle);
  v22 = *(v11 + 56);
  sub_1000D2A70(v20, v13, &unk_101698BC0, &qword_10138C440);
  sub_1000D2A70(v18, &v13[v22], &unk_101698BC0, &qword_10138C440);
  v23 = *(v6 + 48);
  if (v23(v13, 1, v5) == 1)
  {
    if (v23(&v13[v22], 1, v5) == 1)
    {
      sub_10000B3A8(v13, &unk_101698BC0, &qword_10138C440);
LABEL_9:
      v25 = sub_1003287CC(&v20[v30], &v18[v21]);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v24 = v31;
  sub_1000D2A70(v13, v31, &unk_101698BC0, &qword_10138C440);
  if (v23(&v13[v22], 1, v5) == 1)
  {
    sub_10002FF48(v24, type metadata accessor for MemberSharingCircle);
LABEL_6:
    sub_10000B3A8(v13, &qword_1016B60A8, &qword_1013D7868);
    goto LABEL_7;
  }

  v26 = v29;
  sub_100038EDC(&v13[v22], v29, type metadata accessor for MemberSharingCircle);
  v27 = sub_1003287CC(v24, v26);
  sub_10002FF48(v26, type metadata accessor for MemberSharingCircle);
  sub_10002FF48(v24, type metadata accessor for MemberSharingCircle);
  sub_10000B3A8(v13, &unk_101698BC0, &qword_10138C440);
  if (v27)
  {
    goto LABEL_9;
  }

LABEL_7:
  v25 = 0;
LABEL_10:
  sub_10000B3A8(v18, &qword_1016B60F0, &qword_1013D78D8);
  sub_10000B3A8(v20, &qword_1016B60F0, &qword_1013D78D8);
  return v25;
}

BOOL sub_100B3E7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v32 = a2;
  v5 = type metadata accessor for SharedBeaconRecord(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v29 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v8 - 8);
  v31 = &v29 - v9;
  v10 = sub_1000BC4D4(&qword_1016B60E0, &qword_1013D78C8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v29 - v12;
  v14 = sub_1000BC4D4(&qword_1016B60E8, &qword_1013D78D0);
  v15 = v14 - 8;
  v16 = __chkstk_darwin(v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v29 - v19;
  sub_1000D2A70(a1, &v29 - v19, &unk_101698C30, &unk_101392630);
  v30 = *(v15 + 56);
  sub_100B5AAA0(v32, &v20[v30], type metadata accessor for SharedBeaconRecord);
  sub_1000D2A70(v33, v18, &unk_101698C30, &unk_101392630);
  v21 = *(v15 + 56);
  sub_100B5AAA0(v34, &v18[v21], type metadata accessor for SharedBeaconRecord);
  v22 = *(v11 + 56);
  sub_1000D2A70(v20, v13, &unk_101698C30, &unk_101392630);
  sub_1000D2A70(v18, &v13[v22], &unk_101698C30, &unk_101392630);
  v23 = *(v6 + 48);
  if (v23(v13, 1, v5) == 1)
  {
    if (v23(&v13[v22], 1, v5) == 1)
    {
      sub_10000B3A8(v13, &unk_101698C30, &unk_101392630);
LABEL_9:
      v25 = sub_1011DB3D8(&v20[v30], &v18[v21]);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v24 = v31;
  sub_1000D2A70(v13, v31, &unk_101698C30, &unk_101392630);
  if (v23(&v13[v22], 1, v5) == 1)
  {
    sub_10002FF48(v24, type metadata accessor for SharedBeaconRecord);
LABEL_6:
    sub_10000B3A8(v13, &qword_1016B60E0, &qword_1013D78C8);
    goto LABEL_7;
  }

  v26 = v29;
  sub_100038EDC(&v13[v22], v29, type metadata accessor for SharedBeaconRecord);
  v27 = sub_1011DB3D8(v24, v26);
  sub_10002FF48(v26, type metadata accessor for SharedBeaconRecord);
  sub_10002FF48(v24, type metadata accessor for SharedBeaconRecord);
  sub_10000B3A8(v13, &unk_101698C30, &unk_101392630);
  if (v27)
  {
    goto LABEL_9;
  }

LABEL_7:
  v25 = 0;
LABEL_10:
  sub_10000B3A8(v18, &qword_1016B60E8, &qword_1013D78D0);
  sub_10000B3A8(v20, &qword_1016B60E8, &qword_1013D78D0);
  return v25;
}

BOOL sub_100B3EBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v32 = a2;
  v5 = type metadata accessor for OwnerSharingCircle(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v29 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  __chkstk_darwin(v8 - 8);
  v31 = &v29 - v9;
  v10 = sub_1000BC4D4(&qword_1016B60F8, &qword_1013D78E0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v29 - v12;
  v14 = sub_1000BC4D4(&qword_1016B6100, &qword_1013D78E8);
  v15 = v14 - 8;
  v16 = __chkstk_darwin(v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v29 - v19;
  sub_1000D2A70(a1, &v29 - v19, &unk_1016AFA00, &qword_10138C4D0);
  v30 = *(v15 + 56);
  sub_100B5AAA0(v32, &v20[v30], type metadata accessor for OwnerSharingCircle);
  sub_1000D2A70(v33, v18, &unk_1016AFA00, &qword_10138C4D0);
  v21 = *(v15 + 56);
  sub_100B5AAA0(v34, &v18[v21], type metadata accessor for OwnerSharingCircle);
  v22 = *(v11 + 56);
  sub_1000D2A70(v20, v13, &unk_1016AFA00, &qword_10138C4D0);
  sub_1000D2A70(v18, &v13[v22], &unk_1016AFA00, &qword_10138C4D0);
  v23 = *(v6 + 48);
  if (v23(v13, 1, v5) == 1)
  {
    if (v23(&v13[v22], 1, v5) == 1)
    {
      sub_10000B3A8(v13, &unk_1016AFA00, &qword_10138C4D0);
LABEL_9:
      v25 = sub_100E11AF8(&v20[v30], &v18[v21]);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v24 = v31;
  sub_1000D2A70(v13, v31, &unk_1016AFA00, &qword_10138C4D0);
  if (v23(&v13[v22], 1, v5) == 1)
  {
    sub_10002FF48(v24, type metadata accessor for OwnerSharingCircle);
LABEL_6:
    sub_10000B3A8(v13, &qword_1016B60F8, &qword_1013D78E0);
    goto LABEL_7;
  }

  v26 = v29;
  sub_100038EDC(&v13[v22], v29, type metadata accessor for OwnerSharingCircle);
  v27 = sub_100E11AF8(v24, v26);
  sub_10002FF48(v26, type metadata accessor for OwnerSharingCircle);
  sub_10002FF48(v24, type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v13, &unk_1016AFA00, &qword_10138C4D0);
  if (v27)
  {
    goto LABEL_9;
  }

LABEL_7:
  v25 = 0;
LABEL_10:
  sub_10000B3A8(v18, &qword_1016B6100, &qword_1013D78E8);
  sub_10000B3A8(v20, &qword_1016B6100, &qword_1013D78E8);
  return v25;
}

uint64_t sub_100B3EFF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016B15C0, &unk_1013D7870);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v14 - v9;
  sub_1000D2A70(a1, v14 - v9, &unk_1016B15C0, &unk_1013D7870);
  v11 = *(v5 + 56);
  sub_1000D2A70(a2, v8, &unk_1016B15C0, &unk_1013D7870);
  v12 = *(v5 + 56);
  LOBYTE(a2) = sub_100B3E7B8(v10, &v10[v11], v8, &v8[v12]);
  sub_10002FF48(&v8[v12], type metadata accessor for SharedBeaconRecord);
  sub_10000B3A8(v8, &unk_101698C30, &unk_101392630);
  sub_10002FF48(&v10[v11], type metadata accessor for SharedBeaconRecord);
  sub_10000B3A8(v10, &unk_101698C30, &unk_101392630);
  return a2 & 1;
}

uint64_t sub_100B3F164(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016B1610, &qword_10138CA38);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v14 - v9;
  sub_1000D2A70(a1, v14 - v9, &unk_1016B1610, &qword_10138CA38);
  v11 = *(v5 + 56);
  sub_1000D2A70(a2, v8, &unk_1016B1610, &qword_10138CA38);
  v12 = *(v5 + 56);
  LOBYTE(a2) = sub_100B3EBD4(v10, &v10[v11], v8, &v8[v12]);
  sub_10002FF48(&v8[v12], type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v8, &unk_1016AFA00, &qword_10138C4D0);
  sub_10002FF48(&v10[v11], type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v10, &unk_1016AFA00, &qword_10138C4D0);
  return a2 & 1;
}

uint64_t sub_100B3F2D8(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 144) = a2;
  *(v4 + 152) = v3;
  *(v4 + 549) = a3;
  *(v4 + 136) = a1;
  v6 = type metadata accessor for MemberSharingCircle(0);
  *(v4 + 160) = v6;
  *(v4 + 168) = swift_task_alloc();
  type metadata accessor for Endianness();
  *(v4 + 176) = swift_task_alloc();
  v7 = type metadata accessor for BeaconProductInfoRecord(0);
  *(v4 + 184) = v7;
  *(v4 + 192) = *(v7 - 8);
  *(v4 + 200) = swift_task_alloc();
  v8 = type metadata accessor for SharedBeaconRecord(0);
  *(v4 + 208) = v8;
  *(v4 + 216) = *(v8 - 8);
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  v9 = type metadata accessor for MemberPeerTrust(0);
  *(v4 + 240) = v9;
  *(v4 + 248) = *(v9 - 8);
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  *(v4 + 288) = swift_task_alloc();
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v4 + 344) = v10;
  v11 = *(v10 - 8);
  *(v4 + 352) = v11;
  *(v4 + 360) = *(v11 + 64);
  *(v4 + 368) = swift_task_alloc();
  *(v4 + 376) = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  *(v4 + 384) = swift_task_alloc();
  *(v4 + 392) = swift_task_alloc();
  *(v4 + 400) = swift_task_alloc();
  v12 = *(v6 + 24);
  *(v4 + 552) = v12;
  v13 = swift_task_alloc();
  *(v4 + 408) = v13;
  *v13 = v4;
  v13[1] = sub_100B3F688;

  return sub_100B57904(a1 + v12);
}

uint64_t sub_100B3F688(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  *(v3 + 416) = a1;
  *(v3 + 424) = a2;

  return _swift_task_switch(sub_100B3F7A0, v4, 0);
}

uint64_t sub_100B3F7A0()
{
  v1 = *(*(v0 + 152) + 136);
  *(v0 + 432) = v1;
  return _swift_task_switch(sub_100B3F7C4, v1, 0);
}

uint64_t sub_100B3F7C4()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 552);
  v3 = *(v0 + 368);
  v4 = *(v0 + 344);
  v5 = *(v0 + 352);
  v6 = *(v0 + 136);
  v7 = *(v5 + 16);
  *(v0 + 440) = v7;
  *(v0 + 448) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6 + v2, v4);
  v8 = *(v5 + 80);
  *(v0 + 556) = v8;
  v9 = (v8 + 24) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 456) = v10;
  *(v10 + 16) = v1;
  v11 = *(v5 + 32);
  *(v0 + 464) = v11;
  *(v0 + 472) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v9, v3, v4);

  v12 = swift_task_alloc();
  *(v0 + 480) = v12;
  *v12 = v0;
  v12[1] = sub_100B3F950;
  v13 = *(v0 + 400);
  v14 = *(v0 + 376);

  return unsafeBlocking<A>(context:_:)(v13, 0xD000000000000010, 0x800000010134A8C0, sub_100B5AC84, v10, v14);
}

uint64_t sub_100B3F950()
{
  v1 = *(*v0 + 432);

  return _swift_task_switch(sub_100B3FA7C, v1, 0);
}

uint64_t sub_100B3FA7C()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 432);
  v3 = *(v0 + 368);
  v4 = *(v0 + 344);
  v5 = (*(v0 + 556) + 24) & ~*(v0 + 556);
  (*(v0 + 440))(v3, *(v0 + 136) + *(v0 + 552), v4);
  v6 = swift_allocObject();
  *(v0 + 488) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 496) = v7;
  *v7 = v0;
  v7[1] = sub_100B3FBD4;
  v8 = *(v0 + 336);
  v9 = *(v0 + 312);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100B5AC8C, v6, v9);
}

uint64_t sub_100B3FBD4()
{
  v1 = *v0;
  v2 = *(*v0 + 432);
  v3 = *(*v0 + 160);

  *(v1 + 560) = *(v3 + 32);

  return _swift_task_switch(sub_100B3FD24, v2, 0);
}

uint64_t sub_100B3FD24()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 432);
  v3 = *(v0 + 368);
  v4 = *(v0 + 344);
  v5 = (*(v0 + 556) + 24) & ~*(v0 + 556);
  (*(v0 + 440))(v3, *(v0 + 136) + *(v0 + 560), v4);
  v6 = swift_allocObject();
  *(v0 + 504) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 512) = v7;
  *v7 = v0;
  v7[1] = sub_100B3FE7C;
  v8 = *(v0 + 304);
  v9 = *(v0 + 280);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100B5AC88, v6, v9);
}

uint64_t sub_100B3FE7C()
{
  v1 = *(*v0 + 152);

  return _swift_task_switch(sub_100B3FFA8, v1, 0);
}

uint64_t sub_100B3FFA8()
{
  v1 = sub_10016642C();
  v0[65] = v1;
  v0[13] = v1;
  v2 = swift_task_alloc();
  v0[66] = v2;
  v3 = sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  v4 = sub_100014084(&qword_10169CDC8, &unk_1016BF350, &unk_1013E4AF0);
  *v2 = v0;
  v2[1] = sub_100B400B8;
  v5 = v0[30];
  v6 = v0[19];

  return Sequence.asyncCompactMap<A>(_:)(&unk_1013D7900, v6, v3, v5, v4);
}

uint64_t sub_100B400B8(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 536) = a1;

  if (v1)
  {
  }

  else
  {
    v5 = *(v3 + 152);

    return _swift_task_switch(sub_100B401FC, v5, 0);
  }
}

void sub_100B401FC()
{
  v180 = v0;
  v1 = *(v0 + 424);
  if (!v1)
  {

LABEL_9:
    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 400);
    v15 = *(v0 + 384);
    v16 = *(v0 + 336);
    v17 = *(v0 + 320);
    v18 = *(v0 + 304);
    v19 = *(v0 + 288);
    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177BAA0);
    sub_1000D2A70(v18, v19, &qword_101698C10, &unk_10138C1E0);
    sub_1000D2A70(v14, v15, &unk_101698C30, &unk_101392630);
    sub_1000D2A70(v16, v17, &unk_1016AF8C0, &unk_1013A07A0);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v172 = v22;
      v23 = *(v0 + 549);
      v24 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      *v24 = 136316162;
      loga = v21;
      v179[0] = v168;
      if (v23)
      {
        v25 = 0;
        v26 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 112) = *(v0 + 144);
        v25 = dispatch thunk of CustomStringConvertible.description.getter();
        v26 = v29;
      }

      v30 = v1 != 0;
      v31 = *(v0 + 288);
      v32 = *(v0 + 248);
      v157 = *(v0 + 240);
      v33 = *(v0 + 216);
      v158 = *(v0 + 208);
      v159 = *(v0 + 384);
      v34 = *(v0 + 192);
      v161 = *(v0 + 184);
      v164 = *(v0 + 320);
      v35 = sub_1000136BC(v25, v26, v179);

      *(v24 + 4) = v35;
      *(v24 + 12) = 1024;

      *(v24 + 14) = v30;

      *(v24 + 18) = 1024;
      v36 = (*(v32 + 48))(v31, 1, v157) != 1;
      sub_10000B3A8(v31, &qword_101698C10, &unk_10138C1E0);
      *(v24 + 20) = v36;
      *(v24 + 24) = 1024;
      LODWORD(v31) = (*(v33 + 48))(v159, 1, v158) != 1;
      sub_10000B3A8(v159, &unk_101698C30, &unk_101392630);
      *(v24 + 26) = v31;
      *(v24 + 30) = 1024;
      LODWORD(v34) = (*(v34 + 48))(v164, 1, v161) != 1;
      sub_10000B3A8(v164, &unk_1016AF8C0, &unk_1013A07A0);
      *(v24 + 32) = v34;
      _os_log_impl(&_mh_execute_header, loga, v172, "%s Can't post Share Suggestion Notification! beaconName(%{BOOL}d), ownerPeerTrust(%{BOOL}d), sharedBeacon(%{BOOL}d), productInfo(%{BOOL}d).", v24, 0x24u);
      sub_100007BAC(v168);
    }

    else
    {
      v27 = *(v0 + 384);
      v28 = *(v0 + 288);
      sub_10000B3A8(*(v0 + 320), &unk_1016AF8C0, &unk_1013A07A0);
      sub_10000B3A8(v27, &unk_101698C30, &unk_101392630);
      sub_10000B3A8(v28, &qword_101698C10, &unk_10138C1E0);
      swift_bridgeObjectRelease_n();
    }

    v37 = *(v0 + 400);
    v38 = *(v0 + 336);
    v39 = *(v0 + 304);
    sub_100B58A3C();
    swift_allocError();
    *v40 = 0;
    swift_willThrow();
    sub_10000B3A8(v39, &qword_101698C10, &unk_10138C1E0);
    sub_10000B3A8(v38, &unk_1016AF8C0, &unk_1013A07A0);
    sub_10000B3A8(v37, &unk_101698C30, &unk_101392630);

    v41 = *(v0 + 8);
    goto LABEL_18;
  }

  log = *(v0 + 424);
  v2 = *(v0 + 296);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  sub_1000D2A70(*(v0 + 304), v2, &qword_101698C10, &unk_10138C1E0);
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    v5 = *(v0 + 296);

    v6 = &qword_101698C10;
    v7 = &unk_10138C1E0;
LABEL_7:
    v13 = v5;
LABEL_8:
    sub_10000B3A8(v13, v6, v7);
    v1 = log;
    goto LABEL_9;
  }

  v9 = *(v0 + 392);
  v8 = *(v0 + 400);
  v11 = *(v0 + 208);
  v10 = *(v0 + 216);
  sub_100038EDC(*(v0 + 296), *(v0 + 272), type metadata accessor for MemberPeerTrust);
  sub_1000D2A70(v8, v9, &unk_101698C30, &unk_101392630);
  if ((*(v10 + 48))(v9, 1, v11) == 1)
  {
    v5 = *(v0 + 392);
    v12 = *(v0 + 272);

    sub_10002FF48(v12, type metadata accessor for MemberPeerTrust);
    v6 = &unk_101698C30;
    v7 = &unk_101392630;
    goto LABEL_7;
  }

  v43 = *(v0 + 328);
  v42 = *(v0 + 336);
  v45 = *(v0 + 184);
  v44 = *(v0 + 192);
  sub_100038EDC(*(v0 + 392), *(v0 + 232), type metadata accessor for SharedBeaconRecord);
  sub_1000D2A70(v42, v43, &unk_1016AF8C0, &unk_1013A07A0);
  if ((*(v44 + 48))(v43, 1, v45) == 1)
  {
    v46 = *(v0 + 328);
    v47 = *(v0 + 272);
    sub_10002FF48(*(v0 + 232), type metadata accessor for SharedBeaconRecord);

    sub_10002FF48(v47, type metadata accessor for MemberPeerTrust);
    v6 = &unk_1016AF8C0;
    v7 = &unk_1013A07A0;
    v13 = v46;
    goto LABEL_8;
  }

  v48 = *(v0 + 200);
  v49 = *(v0 + 184);
  sub_100038EDC(*(v0 + 328), v48, type metadata accessor for BeaconProductInfoRecord);
  v50 = *(v0 + 536);
  if (*(v48 + *(v49 + 36)))
  {

    if (qword_101694C50 != -1)
    {
LABEL_96:
      swift_once();
    }

    v51 = *(v0 + 168);
    v52 = *(v0 + 136);
    v53 = type metadata accessor for Logger();
    sub_1000076D4(v53, qword_10177BAA0);
    sub_100B5AAA0(v52, v51, type metadata accessor for MemberSharingCircle);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = *(v0 + 549);
      v57 = swift_slowAlloc();
      v179[0] = swift_slowAlloc();
      *v57 = 136315651;
      if (v56)
      {
        v58 = 0;
        v59 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 128) = *(v0 + 144);
        v58 = dispatch thunk of CustomStringConvertible.description.getter();
        v59 = v107;
      }

      v174 = *(v0 + 336);
      logb = *(v0 + 400);
      v166 = *(v0 + 232);
      v170 = *(v0 + 304);
      v162 = *(v0 + 200);
      v108 = *(v0 + 168);
      v109 = sub_1000136BC(v58, v59, v179);

      *(v57 + 4) = v109;
      *(v57 + 12) = 2160;
      *(v57 + 14) = 1752392040;
      *(v57 + 22) = 2081;
      sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v110 = dispatch thunk of CustomStringConvertible.description.getter();
      v112 = v111;
      sub_10002FF48(v108, type metadata accessor for MemberSharingCircle);
      v113 = sub_1000136BC(v110, v112, v179);

      *(v57 + 24) = v113;
      _os_log_impl(&_mh_execute_header, v54, v55, "%s Hiding beacon %{private,mask.hash}s because productInfo has hidden flag set.", v57, 0x20u);
      swift_arrayDestroy();

      sub_10002FF48(v162, type metadata accessor for BeaconProductInfoRecord);
      sub_10002FF48(v166, type metadata accessor for SharedBeaconRecord);
      sub_10000B3A8(v170, &qword_101698C10, &unk_10138C1E0);
      sub_10000B3A8(v174, &unk_1016AF8C0, &unk_1013A07A0);
      v95 = logb;
    }

    else
    {
      v89 = *(v0 + 400);
      v90 = *(v0 + 336);
      v91 = *(v0 + 304);
      v92 = *(v0 + 232);
      v93 = *(v0 + 200);
      v94 = *(v0 + 168);

      sub_10002FF48(v94, type metadata accessor for MemberSharingCircle);
      sub_10002FF48(v93, type metadata accessor for BeaconProductInfoRecord);
      sub_10002FF48(v92, type metadata accessor for SharedBeaconRecord);
      sub_10000B3A8(v91, &qword_101698C10, &unk_10138C1E0);
      sub_10000B3A8(v90, &unk_1016AF8C0, &unk_1013A07A0);
      v95 = v89;
    }

    sub_10000B3A8(v95, &unk_101698C30, &unk_101392630);
    v114 = *(v0 + 272);
    goto LABEL_94;
  }

  v173 = *(v50 + 16);
  if (!v173)
  {
    v61 = _swiftEmptyArrayStorage;
LABEL_56:

    v96 = v61[2];

    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v98 = *(v0 + 224);
    v97 = *(v0 + 232);
    v99 = type metadata accessor for Logger();
    sub_1000076D4(v99, qword_10177BAA0);
    sub_100B5AAA0(v97, v98, type metadata accessor for SharedBeaconRecord);
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = *(v0 + 549);
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v179[0] = v104;
      *v103 = 136315650;
      if (v102)
      {
        v105 = 0;
        v106 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 120) = *(v0 + 144);
        v105 = dispatch thunk of CustomStringConvertible.description.getter();
        v106 = v115;
      }

      v116 = *(v0 + 224);
      v117 = *(v0 + 208);
      v118 = sub_1000136BC(v105, v106, v179);

      *(v103 + 4) = v118;
      *(v103 + 12) = 1024;
      v119 = *(v0 + 224);
      v121 = *(v116 + *(v117 + 44)) == 76 && (v120 = *(v119 + *(*(v0 + 208) + 48)), !HIDWORD(v120)) && (v120 == 21760 || v120 == 22034);
      sub_10002FF48(v119, type metadata accessor for SharedBeaconRecord);
      *(v103 + 14) = v121;
      *(v103 + 18) = 1024;
      *(v103 + 20) = v96 != 0;
      _os_log_impl(&_mh_execute_header, v100, v101, "%s post Share Suggestion Notification,\nisAirTag:%{BOOL}d,\nisContainBlockedMembers:%{BOOL}d", v103, 0x18u);
      sub_100007BAC(v104);
    }

    else
    {
      sub_10002FF48(*(v0 + 224), type metadata accessor for SharedBeaconRecord);
    }

    v123 = *(v0 + 200);
    v124 = *(v0 + 184);
    v125 = (*(v0 + 272) + *(*(v0 + 240) + 32));
    v126 = v125[1];
    v175 = *v125;
    v127 = *(v123 + *(v124 + 112));
    if (v127 == 2)
    {
      v128 = (v123 + *(v124 + 24));
      v129 = v128[1];
      *(v0 + 88) = *v128;
      *(v0 + 96) = v129;
      sub_1000DF96C();

      v130 = Data.init<A>(hexString:)();
      if (v131 >> 60 == 15)
      {
        goto LABEL_90;
      }

      v132 = v130;
      v133 = v131;
      sub_100017D5C(v130, v131);
      v134 = sub_100314594(v132, v133);
      if (v135 >> 60 == 15)
      {
        sub_100006654(v132, v133);
        goto LABEL_90;
      }

      v136 = v134;
      v137 = v135;
      sub_100313B54(v134, v135);
      static Endianness.current.getter();
      sub_10012BF24();
      FixedWidthInteger.init(data:ofEndianness:)();
      sub_100006654(v136, v137);
      sub_100006654(v132, v133);
      if (*(v0 + 548))
      {
        v138 = 0;
      }

      else
      {
        v138 = *(v0 + 544);
      }

      if (sub_100B8A580(v138) >= 2u)
      {
LABEL_90:
        if (v96)
        {
          goto LABEL_91;
        }

LABEL_92:
        v139 = v126;
        v140 = type metadata accessor for ItemShareInviteReceivedUserNotification(0);
        v141 = &off_101648B28;
        goto LABEL_93;
      }

      LOBYTE(v127) = 1;
    }

    if (v96)
    {
      if ((v127 & 1) == 0)
      {
LABEL_91:
        v139 = v126;
        v140 = type metadata accessor for ItemShareInviteReceivedWithBlockedMembersUserNotification(0);
        v141 = &off_101648B90;
        goto LABEL_93;
      }

      v139 = v126;
      v140 = type metadata accessor for ItemShareInviteReceivedAirTagWithBlockedMembersUserNotification(0);
      v141 = &off_101648AC0;
    }

    else
    {
      if ((v127 & 1) == 0)
      {
        goto LABEL_92;
      }

      v139 = v126;
      v140 = type metadata accessor for ItemShareInviteReceivedAirTagUserNotification(0);
      v141 = &off_101648A58;
    }

LABEL_93:
    v142 = *(v0 + 416);
    v163 = *(v0 + 336);
    v167 = *(v0 + 400);
    v160 = *(v0 + 304);
    v171 = *(v0 + 272);
    v143 = *(v0 + 232);
    v144 = *(v0 + 200);
    v145 = *(v0 + 184);
    v146 = *(v0 + 136);
    *(v0 + 40) = v140;
    *(v0 + 48) = v141;
    v147 = sub_1000280DC((v0 + 16));
    sub_100B5AAA0(v146, v147, type metadata accessor for MemberSharingCircle);
    v148 = (v144 + *(v145 + 44));
    v150 = *v148;
    v149 = v148[1];
    v151 = (v147 + v140[5]);
    *v151 = v142;
    v151[1] = log;
    v152 = (v147 + v140[6]);
    *v152 = v175;
    v152[1] = v139;
    v153 = (v147 + v140[7]);
    *v153 = v150;
    v153[1] = v149;

    swift_unownedRetainStrong();
    v154 = *(v0 + 40);
    v155 = *(v0 + 48);
    v156 = sub_1000035D0((v0 + 16), v154);

    sub_100E1EF8C(v156, 0, 0, v154, v155);

    sub_10002FF48(v144, type metadata accessor for BeaconProductInfoRecord);
    sub_10002FF48(v143, type metadata accessor for SharedBeaconRecord);
    sub_10000B3A8(v160, &qword_101698C10, &unk_10138C1E0);
    sub_10000B3A8(v163, &unk_1016AF8C0, &unk_1013A07A0);
    sub_10000B3A8(v167, &unk_101698C30, &unk_101392630);
    sub_100007BAC((v0 + 16));
    v114 = v171;
LABEL_94:
    sub_10002FF48(v114, type metadata accessor for MemberPeerTrust);

    v41 = *(v0 + 8);
LABEL_18:

    v41();
    return;
  }

  v60 = 0;
  v165 = *(v0 + 240);
  v169 = *(v0 + 248);
  v61 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v60 >= *(v50 + 16))
    {
      __break(1u);
      goto LABEL_96;
    }

    v62 = *(v0 + 264);
    v63 = (*(v169 + 80) + 32) & ~*(v169 + 80);
    v64 = *(v169 + 72);
    sub_100B5AAA0(*(v0 + 536) + v63 + v64 * v60, v62, type metadata accessor for MemberPeerTrust);
    v65 = (v62 + *(v165 + 32));
    v66 = *v65;
    v67 = v65[1];
    v68 = HIBYTE(v67) & 0xF;
    if ((v67 & 0x2000000000000000) == 0)
    {
      v68 = v66 & 0xFFFFFFFFFFFFLL;
    }

    if (!v68)
    {
      goto LABEL_30;
    }

    *(v0 + 56) = v66;
    *(v0 + 64) = v67;
    *(v0 + 72) = 64;
    *(v0 + 80) = 0xE100000000000000;
    sub_1000DF96C();
    v69 = StringProtocol.contains<A>(_:)();
    v70 = String._bridgeToObjectiveC()();
    if ((v69 & 1) == 0)
    {
      break;
    }

    v71 = IDSCopyIDForEmailAddress();

    if (!v71)
    {
      goto LABEL_99;
    }

    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v73;

    v75 = sub_100EB3708(0, v72, v74);
    v76 = [v75 destination];

    if (!v76)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = String._bridgeToObjectiveC()();
    }

    v77 = CMFItemCreateWithEmailAddress();

    if (!v77)
    {
      goto LABEL_98;
    }

LABEL_47:
    IsItemBlocked = CMFBlockListIsItemBlocked();
    swift_unknownObjectRelease();

    if (IsItemBlocked)
    {
      sub_100038EDC(*(v0 + 264), *(v0 + 256), type metadata accessor for MemberPeerTrust);
      v179[0] = v61;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_101124260(0, v61[2] + 1, 1);
        v61 = v179[0];
      }

      v87 = v61[2];
      v86 = v61[3];
      if (v87 >= v86 >> 1)
      {
        sub_101124260((v86 > 1), v87 + 1, 1);
        v61 = v179[0];
      }

      v88 = *(v0 + 256);
      v61[2] = v87 + 1;
      sub_100038EDC(v88, v61 + v63 + v87 * v64, type metadata accessor for MemberPeerTrust);
      goto LABEL_31;
    }

LABEL_30:
    sub_10002FF48(*(v0 + 264), type metadata accessor for MemberPeerTrust);
LABEL_31:
    if (v173 == ++v60)
    {
      goto LABEL_56;
    }
  }

  v78 = IDSCopyIDForPhoneNumber();

  if (v78)
  {
    v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v80;

    v82 = sub_100EB3708(1, v79, v81);
    v83 = [v82 destination];

    if (!v83)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = String._bridgeToObjectiveC()();
    }

    v84 = CFPhoneNumberCreate();

    if (!CMFItemCreateWithPhoneNumber())
    {
      goto LABEL_100;
    }

    goto LABEL_47;
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
}

uint64_t sub_100B41634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100B41700, 0, 0);
}

uint64_t sub_100B41700()
{
  v1 = *(*(v0 + 32) + 136);
  *(v0 + 72) = v1;
  return _swift_task_switch(sub_100B41724, v1, 0);
}

uint64_t sub_100B41724()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[5];
  (*(v3 + 16))(v2, v0[3], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[10] = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  v0[11] = v7;
  v8 = sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  *v7 = v0;
  v7[1] = sub_100B4189C;
  v9 = v0[2];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100B5AC88, v6, v8);
}

uint64_t sub_100B4189C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100B419CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[51] = a4;
  v5[52] = v4;
  v5[49] = a2;
  v5[50] = a3;
  v5[48] = a1;
  v5[53] = type metadata accessor for OwnerSharingCircle(0);
  v5[54] = swift_task_alloc();
  v5[55] = type metadata accessor for ItemShareRequestReceivedUserNotification(0);
  v5[56] = swift_task_alloc();
  v6 = type metadata accessor for BeaconProductInfoRecord(0);
  v5[57] = v6;
  v5[58] = *(v6 - 8);
  v5[59] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_101698C18, &qword_101390740);
  v5[60] = v7;
  v5[61] = *(v7 - 8);
  v5[62] = swift_task_alloc();
  v5[63] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169D398, &qword_10139ADE8);
  v5[64] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5[65] = swift_task_alloc();
  v5[66] = swift_task_alloc();
  v5[67] = swift_task_alloc();
  v5[68] = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  v5[69] = swift_task_alloc();
  v5[70] = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
  v5[71] = swift_task_alloc();
  v5[72] = swift_task_alloc();
  v5[73] = swift_task_alloc();
  v8 = type metadata accessor for OwnerPeerTrust(0);
  v5[74] = v8;
  v5[75] = *(v8 - 8);
  v5[76] = swift_task_alloc();
  v5[77] = swift_task_alloc();
  v5[78] = swift_task_alloc();
  v5[79] = swift_task_alloc();
  v5[80] = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v5[81] = swift_task_alloc();
  v5[82] = swift_task_alloc();
  v5[83] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v5[84] = v9;
  v10 = *(v9 - 8);
  v5[85] = v10;
  v5[86] = *(v10 + 64);
  v5[87] = swift_task_alloc();
  v5[88] = swift_task_alloc();
  v5[89] = swift_task_alloc();
  v5[90] = swift_task_alloc();
  v5[91] = swift_task_alloc();

  return _swift_task_switch(sub_100B41DE8, v4, 0);
}

uint64_t sub_100B41DE8()
{
  v1 = *(v0[52] + 184);
  if (v1)
  {
    v0[96] = v1;
    swift_unknownObjectRetain();
    v2 = swift_task_alloc();
    v0[97] = v2;
    *v2 = v0;
    v2[1] = sub_100B42224;

    return sub_100B3DD28((v0 + 8));
  }

  else
  {
    v4 = swift_task_alloc();
    v0[92] = v4;
    *v4 = v0;
    v4[1] = sub_100B41F00;

    return daemon.getter();
  }
}

uint64_t sub_100B41F00(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 744) = a1;

  v3 = swift_task_alloc();
  *(v2 + 752) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for PeerTrustService();
  v6 = sub_100B5AB90(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100B5AB90(&qword_1016B1190, 255, type metadata accessor for PeerTrustService, &unk_1013EBD00);
  *v3 = v9;
  v3[1] = sub_100B420E4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100B420E4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 760) = v1;

  if (v1)
  {
    v5 = *(v4 + 416);
    v6 = sub_100B4248C;
  }

  else
  {
    v7 = *(v4 + 416);

    *(v4 + 792) = a1;
    v6 = sub_100B423B4;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100B42224()
{
  v2 = *v1;
  *(v2 + 784) = v0;

  if (v0)
  {
    v3 = *(v2 + 416);

    return _swift_task_switch(sub_100B48C18, v3, 0);
  }

  else
  {
    v4 = *(v2 + 384);
    v5 = *(*(v2 + 424) + 24);
    *(v2 + 1024) = v5;
    v6 = swift_task_alloc();
    *(v2 + 800) = v6;
    *v6 = v2;
    v6[1] = sub_100B4265C;

    return sub_100B57904(v4 + v5);
  }
}

uint64_t sub_100B423B4()
{
  sub_100B5AB90(&qword_10169EF00, 255, type metadata accessor for PeerTrustService, &unk_1013EBCB8);
  v0[96] = v0[99];
  v1 = swift_task_alloc();
  v0[97] = v1;
  *v1 = v0;
  v1[1] = sub_100B42224;

  return sub_100B3DD28((v0 + 8));
}

uint64_t sub_100B4248C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B4265C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 416);
  *(v3 + 808) = a1;
  *(v3 + 816) = a2;

  return _swift_task_switch(sub_100B42778, v4, 0);
}

uint64_t sub_100B42778()
{
  v1 = *(*(v0 + 416) + 136);
  *(v0 + 824) = v1;
  return _swift_task_switch(sub_100B4279C, v1, 0);
}

uint64_t sub_100B4279C()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 728);
  v4 = *(v0 + 680);
  v5 = *(v0 + 672);
  v6 = *(v0 + 384);
  v7 = *(v4 + 16);
  *(v0 + 832) = v7;
  *(v0 + 840) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6 + v2, v5);
  v8 = *(v4 + 80);
  *(v0 + 1028) = v8;
  v9 = (v8 + 24) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 848) = v10;
  *(v10 + 16) = v1;
  v11 = *(v4 + 32);
  *(v0 + 856) = v11;
  *(v0 + 864) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v9, v3, v5);

  v12 = swift_task_alloc();
  *(v0 + 872) = v12;
  v13 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v12 = v0;
  v12[1] = sub_100B4294C;

  return unsafeBlocking<A>(context:_:)(v0 + 104, 0xD000000000000010, 0x800000010134A8C0, sub_1000D2650, v10, v13);
}

uint64_t sub_100B4294C()
{
  v1 = *(*v0 + 824);

  return _swift_task_switch(sub_100B42A78, v1, 0);
}

uint64_t sub_100B42A78()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 824);
  v3 = *(v0 + 728);
  v4 = *(v0 + 672);
  v5 = (*(v0 + 1028) + 24) & ~*(v0 + 1028);
  (*(v0 + 832))(v3, *(v0 + 384) + *(v0 + 1024), v4);
  v6 = swift_allocObject();
  *(v0 + 880) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 888) = v7;
  *v7 = v0;
  v7[1] = sub_100B42BDC;
  v8 = *(v0 + 664);
  v9 = *(v0 + 640);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100B5AC8C, v6, v9);
}

uint64_t sub_100B42BDC()
{
  v1 = *(*v0 + 416);

  return _swift_task_switch(sub_100B42D08, v1, 0);
}

uint64_t sub_100B42D08()
{
  v1 = *(v0 + 408);
  if (v1)
  {
    v2 = *(v0 + 392);
    v3 = swift_task_alloc();
    *(v0 + 896) = v3;
    *v3 = v0;
    v3[1] = sub_100B43248;
    v4 = *(v0 + 400);

    return sub_100E86158(v2, v4, v1);
  }

  else
  {
    v6 = *(*(v0 + 384) + *(*(v0 + 424) + 32));
    v9 = *(v6 + 64);
    v8 = v6 + 64;
    v7 = v9;
    v33 = *(v0 + 560);
    v34 = *(v0 + 680);
    v10 = -1;
    v11 = -1 << *(*(*(v0 + 384) + *(*(v0 + 424) + 32)) + 32);
    if (-v11 < 64)
    {
      v10 = ~(-1 << -v11);
    }

    v12 = v10 & v7;
    v13 = (63 - v11) >> 6;
    v35 = *(*(v0 + 384) + *(*(v0 + 424) + 32));

    v14 = 0;
    if (v12)
    {
      while (1)
      {
        v15 = v14;
LABEL_12:
        v16 = *(v0 + 576);
        v17 = *(v0 + 568);
        v18 = __clz(__rbit64(v12)) | (v15 << 6);
        (*(v0 + 832))(v16, *(v35 + 48) + *(v34 + 72) * v18, *(v0 + 672));
        *(v16 + *(v33 + 48)) = *(*(v35 + 56) + v18);
        sub_1000D2AD8(v16, v17, &qword_1016BBEE0, &unk_10139CBF0);
        if (*(v17 + *(v33 + 48)) == 2)
        {
          break;
        }

        v12 &= v12 - 1;
        sub_10000B3A8(*(v0 + 568), &qword_1016BBEE0, &unk_10139CBF0);
        v14 = v15;
        if (!v12)
        {
          goto LABEL_9;
        }
      }

      v26 = *(v0 + 856);
      v27 = *(v0 + 824);
      v28 = *(v0 + 720);
      v29 = *(v0 + 712);
      v30 = *(v0 + 672);
      v31 = *(v0 + 584);
      v32 = *(v0 + 568);

      sub_1000D2AD8(v32, v31, &qword_1016BBEE0, &unk_10139CBF0);
      v26(v29, v31, v30);
      v26(v28, v29, v30);

      return _swift_task_switch(sub_100B45BD0, v27, 0);
    }

    else
    {
      while (1)
      {
LABEL_9:
        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
          goto LABEL_25;
        }

        if (v15 >= v13)
        {
          break;
        }

        v12 = *(v8 + 8 * v15);
        ++v14;
        if (v12)
        {
          goto LABEL_12;
        }
      }

      if (qword_101694C50 == -1)
      {
        goto LABEL_16;
      }

LABEL_25:
      swift_once();
LABEL_16:
      v19 = type metadata accessor for Logger();
      sub_1000076D4(v19, qword_10177BAA0);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      v22 = os_log_type_enabled(v20, v21);
      v23 = *(v0 + 664);
      if (v22)
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Can't post Request Received Notification! invalid member destination.", v24, 2u);
      }

      swift_unknownObjectRelease();
      sub_10000B3A8(v23, &unk_1016AF8C0, &unk_1013A07A0);
      sub_10000B3A8(v0 + 104, &qword_101696920, &unk_10138B200);
      sub_100007BAC((v0 + 64));

      v25 = *(v0 + 8);

      return v25();
    }
  }
}

uint64_t sub_100B43248(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 904) = a1;

  v4 = *(v3 + 416);
  if (v1)
  {

    v5 = sub_100B439C4;
  }

  else
  {
    v5 = sub_100B43388;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100B43388()
{
  v1 = *(v0 + 904);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 624);
    v3 = *(v0 + 616);
    v4 = *(v0 + 424);
    v5 = *(v0 + 384);
    v6 = *(*(v0 + 600) + 80);
    sub_100B5AAA0(v1 + ((v6 + 32) & ~v6), v3, type metadata accessor for OwnerPeerTrust);

    sub_100038EDC(v3, v2, type metadata accessor for OwnerPeerTrust);
    v7 = *(v5 + *(v4 + 32));
    if (*(v7 + 16))
    {
      v8 = sub_1000210EC(*(v0 + 624) + *(*(v0 + 592) + 20));
      if ((v9 & 1) != 0 && *(*(v7 + 56) + v8) == 2)
      {
        v10 = *(v0 + 408);
        v11 = *(v0 + 392);
        sub_100B5AAA0(*(v0 + 624), *(v0 + 632), type metadata accessor for OwnerPeerTrust);
        sub_1000035D0((v0 + 64), *(v0 + 88));
        v12 = swift_task_alloc();
        *(v0 + 912) = v12;
        *v12 = v0;
        v12[1] = sub_100B43E74;
        v13 = *(v0 + 400);

        return sub_100D4C7CC(v11, v13, v10);
      }
    }

    sub_10002FF48(*(v0 + 624), type metadata accessor for OwnerPeerTrust);
  }

  else
  {
  }

  v15 = *(*(v0 + 384) + *(*(v0 + 424) + 32));
  v18 = *(v15 + 64);
  v17 = v15 + 64;
  v16 = v18;
  v42 = *(v0 + 560);
  v43 = *(v0 + 680);
  v19 = -1;
  v20 = -1 << *(*(*(v0 + 384) + *(*(v0 + 424) + 32)) + 32);
  if (-v20 < 64)
  {
    v19 = ~(-1 << -v20);
  }

  v21 = v19 & v16;
  v22 = (63 - v20) >> 6;
  v44 = *(*(v0 + 384) + *(*(v0 + 424) + 32));

  v23 = 0;
  if (v21)
  {
    while (1)
    {
      v24 = v23;
LABEL_17:
      v25 = *(v0 + 576);
      v26 = *(v0 + 568);
      v27 = __clz(__rbit64(v21)) | (v24 << 6);
      (*(v0 + 832))(v25, *(v44 + 48) + *(v43 + 72) * v27, *(v0 + 672));
      *(v25 + *(v42 + 48)) = *(*(v44 + 56) + v27);
      sub_1000D2AD8(v25, v26, &qword_1016BBEE0, &unk_10139CBF0);
      if (*(v26 + *(v42 + 48)) == 2)
      {
        break;
      }

      v21 &= v21 - 1;
      sub_10000B3A8(*(v0 + 568), &qword_1016BBEE0, &unk_10139CBF0);
      v23 = v24;
      if (!v21)
      {
        goto LABEL_14;
      }
    }

    v35 = *(v0 + 856);
    v36 = *(v0 + 824);
    v37 = *(v0 + 720);
    v38 = *(v0 + 712);
    v39 = *(v0 + 672);
    v40 = *(v0 + 584);
    v41 = *(v0 + 568);

    sub_1000D2AD8(v41, v40, &qword_1016BBEE0, &unk_10139CBF0);
    v35(v38, v40, v39);
    v35(v37, v38, v39);

    return _swift_task_switch(sub_100B45BD0, v36, 0);
  }

  else
  {
    while (1)
    {
LABEL_14:
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v24 >= v22)
      {
        break;
      }

      v21 = *(v17 + 8 * v24);
      ++v23;
      if (v21)
      {
        goto LABEL_17;
      }
    }

    if (qword_101694C50 == -1)
    {
      goto LABEL_21;
    }

LABEL_30:
    swift_once();
LABEL_21:
    v28 = type metadata accessor for Logger();
    sub_1000076D4(v28, qword_10177BAA0);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 664);
    if (v31)
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Can't post Request Received Notification! invalid member destination.", v33, 2u);
    }

    swift_unknownObjectRelease();
    sub_10000B3A8(v32, &unk_1016AF8C0, &unk_1013A07A0);
    sub_10000B3A8(v0 + 104, &qword_101696920, &unk_10138B200);
    sub_100007BAC((v0 + 64));

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_100B439C4()
{
  v1 = *(*(v0 + 384) + *(*(v0 + 424) + 32));
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v29 = *(v0 + 560);
  v30 = *(v0 + 680);
  v5 = -1;
  v6 = -1 << *(*(*(v0 + 384) + *(*(v0 + 424) + 32)) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v31 = *(*(v0 + 384) + *(*(v0 + 424) + 32));

  v9 = 0;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = *(v0 + 576);
      v12 = *(v0 + 568);
      v13 = __clz(__rbit64(v7)) | (v10 << 6);
      (*(v0 + 832))(v11, *(v31 + 48) + *(v30 + 72) * v13, *(v0 + 672));
      *(v11 + *(v29 + 48)) = *(*(v31 + 56) + v13);
      sub_1000D2AD8(v11, v12, &qword_1016BBEE0, &unk_10139CBF0);
      if (*(v12 + *(v29 + 48)) == 2)
      {
        break;
      }

      v7 &= v7 - 1;
      sub_10000B3A8(*(v0 + 568), &qword_1016BBEE0, &unk_10139CBF0);
      v9 = v10;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    v22 = *(v0 + 856);
    v23 = *(v0 + 824);
    v24 = *(v0 + 720);
    v25 = *(v0 + 712);
    v26 = *(v0 + 672);
    v27 = *(v0 + 584);
    v28 = *(v0 + 568);

    sub_1000D2AD8(v28, v27, &qword_1016BBEE0, &unk_10139CBF0);
    v22(v25, v27, v26);
    v22(v24, v25, v26);

    return _swift_task_switch(sub_100B45BD0, v23, 0);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      if (v10 >= v8)
      {
        break;
      }

      v7 = *(v3 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    if (qword_101694C50 == -1)
    {
      goto LABEL_12;
    }

LABEL_21:
    swift_once();
LABEL_12:
    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177BAA0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 664);
    if (v17)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Can't post Request Received Notification! invalid member destination.", v19, 2u);
    }

    swift_unknownObjectRelease();
    sub_10000B3A8(v18, &unk_1016AF8C0, &unk_1013A07A0);
    sub_10000B3A8(v0 + 104, &qword_101696920, &unk_10138B200);
    sub_100007BAC((v0 + 64));

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_100B43E74(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[115] = v2;

  v7 = v6[52];
  if (v2)
  {

    v8 = sub_100B45314;
  }

  else
  {
    v6[116] = a2;
    v6[117] = a1;
    v8 = sub_100B43FC4;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100B43FC4()
{
  v134 = v0;
  aBlock = v0 + 2;
  v116 = v0[116];
  v114 = v0[117];
  sub_10002FF48(v0[78], type metadata accessor for OwnerPeerTrust);
  v118 = v0[85];
  v121 = v0[60];
  v1 = v0[48];
  v2 = sub_10016632C();
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = sub_1001BE474(_swiftEmptyDictionarySingleton, sub_100B5AC54, v3, v2);

  v5 = v4 + 64;
  v6 = -1;
  v7 = -1 << *(v4 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v4 + 64);
  v9 = (63 - v7) >> 6;

  v10 = 0;
  if (!v8)
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
        v17 = v0[64];
        v19 = v0[60];
        v18 = v0[61];

        (*(v18 + 56))(v17, 1, 1, v19);
        goto LABEL_12;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_49;
  }

  while (1)
  {
    v11 = v10;
LABEL_8:
    v12 = v0[104];
    v13 = v0[84];
    v14 = v0[63];
    v15 = v0;
    v127 = v0[62];
    v16 = *(v118 + 72) * (__clz(__rbit64(v8)) | (v11 << 6));
    v12(v14, *(v4 + 48) + v16, v13);
    v12(v14 + *(v121 + 48), *(v4 + 56) + v16, v13);
    sub_1000D2AD8(v14, v127, &qword_101698C18, &qword_101390740);
    if (static UUID.== infix(_:_:)())
    {
      break;
    }

    v8 &= v8 - 1;
    sub_10000B3A8(v15[62], &qword_101698C18, &qword_101390740);
    v10 = v11;
    v0 = v15;
    v5 = v4 + 64;
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v63 = v15[64];
  v64 = v15[61];
  v65 = v15[62];
  v66 = v15[60];

  sub_1000D2AD8(v65, v63, &qword_101698C18, &qword_101390740);
  (*(v64 + 56))(v63, 0, 1, v66);
  v0 = v15;
LABEL_12:
  v20 = v0[64];
  v22 = v0[60];
  v21 = v0[61];

  if ((*(v21 + 48))(v20, 1, v22) == 1)
  {
    v23 = v0[85];
    v24 = v0[84];
    v25 = v0[67];
    sub_10000B3A8(v0[64], &qword_10169D398, &qword_10139ADE8);
    (*(v23 + 56))(v25, 1, 1, v24);
  }

  else
  {
    v26 = v0[85];
    v27 = v0[84];
    v28 = v0[67];
    v29 = v0[64];
    v30 = *(v121 + 48);
    (v0[107])(v28, v29, v27);
    (*(v26 + 56))(v28, 0, 1, v27);
    (*(v26 + 8))(v29 + v30, v27);
  }

  v11 = v0[102];
  v9 = v116;
  if (!v11)
  {
LABEL_25:
    if (qword_101694C50 == -1)
    {
LABEL_26:
      v41 = v0[83];
      v42 = v0[81];
      v43 = v0[67];
      v44 = v0[65];
      v45 = type metadata accessor for Logger();
      sub_1000076D4(v45, qword_10177BAA0);
      sub_1000D2A70((v0 + 13), (v0 + 18), &qword_101696920, &unk_10138B200);
      sub_1000D2A70(v43, v44, &qword_1016980D0, &unk_10138F3B0);
      sub_1000D2A70(v41, v42, &unk_1016AF8C0, &unk_1013A07A0);

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = v11 != 0;
        v49 = v0[85];
        v124 = v0[84];
        v50 = v0[65];
        v51 = v0[58];
        v128 = v0[57];
        v131 = v0[81];
        v52 = swift_slowAlloc();
        *v52 = 67110144;

        *(v52 + 4) = v48;

        *(v52 + 8) = 1024;

        *(v52 + 10) = v9 != 0;

        *(v52 + 14) = 1024;
        v53 = v0[21] != 0;
        sub_10000B3A8((v0 + 18), &qword_101696920, &unk_10138B200);
        *(v52 + 16) = v53;
        *(v52 + 20) = 1024;
        v54 = (*(v49 + 48))(v50, 1, v124) != 1;
        sub_10000B3A8(v50, &qword_1016980D0, &unk_10138F3B0);
        *(v52 + 22) = v54;
        *(v52 + 26) = 1024;
        v55 = (*(v51 + 48))(v131, 1, v128) != 1;
        sub_10000B3A8(v131, &unk_1016AF8C0, &unk_1013A07A0);
        *(v52 + 28) = v55;
        _os_log_impl(&_mh_execute_header, v46, v47, "Can't post Request Received Notification! beaconName(%{BOOL}d), memberName(%{BOOL}d), beaconRecord(%{BOOL}d), clientShareIdentifier(%{BOOL}d), productInfo(%{BOOL}d).", v52, 0x20u);
      }

      else
      {
        v56 = v0[65];
        sub_10000B3A8(v0[81], &unk_1016AF8C0, &unk_1013A07A0);
        sub_10000B3A8(v56, &qword_1016980D0, &unk_10138F3B0);
        sub_10000B3A8((v0 + 18), &qword_101696920, &unk_10138B200);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      v57 = v0[83];
      v58 = v0[79];
      v59 = v0[67];
      sub_100B58A3C();
      swift_allocError();
      *v60 = 0;
      swift_willThrow();
      swift_unknownObjectRelease();
      sub_10000B3A8(v59, &qword_1016980D0, &unk_10138F3B0);
      sub_10000B3A8(v57, &unk_1016AF8C0, &unk_1013A07A0);
      sub_10000B3A8((v0 + 13), &qword_101696920, &unk_10138B200);
      sub_10002FF48(v58, type metadata accessor for OwnerPeerTrust);
      sub_100007BAC(v0 + 8);

      v61 = v0[1];
      goto LABEL_30;
    }

LABEL_49:
    swift_once();
    goto LABEL_26;
  }

  sub_1000D2A70((v0 + 13), (v0 + 28), &qword_101696920, &unk_10138B200);
  if (!v0[31])
  {
    sub_10000B3A8((v0 + 28), &qword_101696920, &unk_10138B200);
    goto LABEL_25;
  }

  sub_10000A748(v0 + 14, (v0 + 23));
  if (!v116)
  {
    sub_100007BAC(v0 + 23);
    goto LABEL_25;
  }

  v31 = v0[85];
  v32 = v0[84];
  v33 = v0[66];
  sub_1000D2A70(v0[67], v33, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v31 + 48))(v33, 1, v32) == 1)
  {
    v34 = v0[66];
    sub_100007BAC(v0 + 23);
    v35 = &qword_1016980D0;
    v36 = &unk_10138F3B0;
LABEL_24:
    sub_10000B3A8(v34, v35, v36);
    v9 = v116;
    goto LABEL_25;
  }

  v37 = v0[83];
  v38 = v0[82];
  v40 = v0[57];
  v39 = v0[58];
  (v0[107])(v0[87], v0[66], v0[84]);
  sub_1000D2A70(v37, v38, &unk_1016AF8C0, &unk_1013A07A0);
  if ((*(v39 + 48))(v38, 1, v40) == 1)
  {
    v34 = v0[82];
    (*(v0[85] + 8))(v0[87], v0[84]);
    sub_100007BAC(v0 + 23);
    v35 = &unk_1016AF8C0;
    v36 = &unk_1013A07A0;
    goto LABEL_24;
  }

  v67 = v0[59];
  v68 = v0[57];
  sub_100038EDC(v0[82], v67, type metadata accessor for BeaconProductInfoRecord);
  if (*(v67 + *(v68 + 36)))
  {

    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v69 = v0[54];
    v70 = v0[48];
    v71 = type metadata accessor for Logger();
    sub_1000076D4(v71, qword_10177BAA0);
    sub_100B5AAA0(v70, v69, type metadata accessor for OwnerSharingCircle);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();
    v74 = os_log_type_enabled(v72, v73);
    v75 = v0[87];
    v76 = v0[85];
    v77 = v0[84];
    v78 = v0[83];
    v79 = v0[67];
    v80 = v0[59];
    v81 = v0[54];
    if (v74)
    {
      v129 = v0[83];
      v125 = v0[67];
      v82 = swift_slowAlloc();
      v122 = v75;
      v83 = swift_slowAlloc();
      v133 = v83;
      *v82 = 141558275;
      *(v82 + 4) = 1752392040;
      *(v82 + 12) = 2081;
      sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v84 = dispatch thunk of CustomStringConvertible.description.getter();
      v119 = v80;
      v86 = v85;
      sub_10002FF48(v81, type metadata accessor for OwnerSharingCircle);
      v87 = sub_1000136BC(v84, v86, &v133);

      *(v82 + 14) = v87;
      _os_log_impl(&_mh_execute_header, v72, v73, "Hiding beacon %{private,mask.hash}s because productInfo has hidden flag set.", v82, 0x16u);
      sub_100007BAC(v83);

      swift_unknownObjectRelease();
      sub_10002FF48(v119, type metadata accessor for BeaconProductInfoRecord);
      (*(v76 + 8))(v122, v77);
      sub_100007BAC(v0 + 23);
      sub_10000B3A8(v125, &qword_1016980D0, &unk_10138F3B0);
      v88 = v129;
    }

    else
    {

      swift_unknownObjectRelease();
      sub_10002FF48(v81, type metadata accessor for OwnerSharingCircle);
      sub_10002FF48(v80, type metadata accessor for BeaconProductInfoRecord);
      (*(v76 + 8))(v75, v77);
      sub_100007BAC(v0 + 23);
      sub_10000B3A8(v79, &qword_1016980D0, &unk_10138F3B0);
      v88 = v78;
    }

    sub_10000B3A8(v88, &unk_1016AF8C0, &unk_1013A07A0);
    sub_10000B3A8((v0 + 13), &qword_101696920, &unk_10138B200);
    v96 = v0[79];
  }

  else
  {
    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    sub_1000076D4(v89, qword_10177BAA0);
    sub_10001F280((v0 + 23), (v0 + 33));
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 67109120;
      v94 = v0[36];
      v93 = v0[37];
      sub_1000035D0(v0 + 33, v94);
      v95 = (*(v93 + 96))(v94, v93) & 1;
      sub_100007BAC(v0 + 33);
      *(v92 + 4) = v95;
      _os_log_impl(&_mh_execute_header, v90, v91, "post Request Received Notification, isAirTag:%{BOOL}d", v92, 8u);
    }

    else
    {
      sub_100007BAC(v0 + 33);
    }

    v97 = v0[101];
    v123 = v0[87];
    v98 = v0[85];
    v120 = v0[84];
    v130 = v0[83];
    v132 = v0[79];
    v126 = v0[67];
    v99 = v0[59];
    v117 = v99;
    v100 = v0[55];
    v101 = v0[56];
    (v0[104])(&v101[v100[6]]);
    sub_100B5AAA0(v99, &v101[v100[9]], type metadata accessor for BeaconProductInfoRecord);
    *v101 = 25089;
    v102 = &v101[v100[7]];
    *v102 = v114;
    *(v102 + 1) = v116;
    v103 = &v101[v100[8]];
    *v103 = v97;
    *(v103 + 1) = v11;
    swift_unownedRetainStrong();
    v0[41] = v100;
    v0[42] = &off_10161BF20;
    v104 = sub_1000280DC(v0 + 38);
    sub_100B5AAA0(v101, v104, type metadata accessor for ItemShareRequestReceivedUserNotification);
    v105 = objc_allocWithZone(UNUserNotificationCenter);
    v106 = String._bridgeToObjectiveC()();

    v107 = [v105 initWithBundleIdentifier:v106];

    v108 = sub_10111B74C(v104);
    UUID.uuidString.getter();
    v109 = v108;
    v110 = String._bridgeToObjectiveC()();

    v111 = [objc_opt_self() requestWithIdentifier:v110 content:v109 trigger:0 destinations:7];

    sub_10001F280((v0 + 38), (v0 + 43));
    v112 = swift_allocObject();
    sub_10000A748((v0 + 43), v112 + 16);
    *(v112 + 56) = 0;
    *(v112 + 64) = 0;
    v0[6] = sub_1007A9F68;
    v0[7] = v112;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_10077732C;
    v0[5] = &unk_1016492D0;
    v113 = _Block_copy(aBlock);

    [v107 addNotificationRequest:v111 withCompletionHandler:v113];

    _Block_release(v113);
    sub_100007BAC(v0 + 38);

    swift_unknownObjectRelease();
    sub_10002FF48(v101, type metadata accessor for ItemShareRequestReceivedUserNotification);
    sub_10002FF48(v117, type metadata accessor for BeaconProductInfoRecord);
    (*(v98 + 8))(v123, v120);
    sub_100007BAC(v0 + 23);
    sub_10000B3A8(v126, &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v130, &unk_1016AF8C0, &unk_1013A07A0);
    sub_10000B3A8((v0 + 13), &qword_101696920, &unk_10138B200);
    v96 = v132;
  }

  sub_10002FF48(v96, type metadata accessor for OwnerPeerTrust);
  sub_100007BAC(v0 + 8);

  v61 = v0[1];
LABEL_30:

  return v61();
}

uint64_t sub_100B45314()
{
  sub_10002FF48(v0[78], type metadata accessor for OwnerPeerTrust);
  v62 = v0[85];
  v63 = v0[60];
  v1 = v0[48];
  v2 = sub_10016632C();
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = sub_1001BE474(_swiftEmptyDictionarySingleton, sub_100B5AC54, v3, v2);

  v5 = v4 + 64;
  v6 = -1;
  v7 = -1 << *(v4 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v4 + 64);
  v9 = (63 - v7) >> 6;

  v10 = 0;
  v60 = v4 + 64;
  v61 = v4;
  if (!v8)
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
        v17 = v0[64];
        v19 = v0[60];
        v18 = v0[61];

        (*(v18 + 56))(v17, 1, 1, v19);
        goto LABEL_12;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  while (1)
  {
    v11 = v10;
LABEL_8:
    v12 = v0[104];
    v13 = v0[84];
    v14 = v0[63];
    v64 = v0[62];
    v15 = v0;
    v16 = *(v62 + 72) * (__clz(__rbit64(v8)) | (v11 << 6));
    v12(v14, *(v4 + 48) + v16, v13);
    v12(v14 + *(v63 + 48), *(v4 + 56) + v16, v13);
    sub_1000D2AD8(v14, v64, &qword_101698C18, &qword_101390740);
    if (static UUID.== infix(_:_:)())
    {
      break;
    }

    v8 &= v8 - 1;
    sub_10000B3A8(v15[62], &qword_101698C18, &qword_101390740);
    v10 = v11;
    v0 = v15;
    v5 = v60;
    v4 = v61;
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v56 = v15[64];
  v58 = v15[61];
  v57 = v15[62];
  v59 = v15[60];

  sub_1000D2AD8(v57, v56, &qword_101698C18, &qword_101390740);
  (*(v58 + 56))(v56, 0, 1, v59);
  v0 = v15;
LABEL_12:
  v20 = v0[64];
  v22 = v0[60];
  v21 = v0[61];

  if ((*(v21 + 48))(v20, 1, v22) == 1)
  {
    v23 = v0;
    v24 = v0[85];
    v25 = v23[84];
    v26 = v23[67];
    sub_10000B3A8(v23[64], &qword_10169D398, &qword_10139ADE8);
    (*(v24 + 56))(v26, 1, 1, v25);
  }

  else
  {
    v27 = v0[107];
    v23 = v0;
    v28 = v0[85];
    v29 = v23[84];
    v30 = v23[67];
    v31 = v23[64];
    v32 = *(v63 + 48);
    v27(v30, v31, v29);
    (*(v28 + 56))(v30, 0, 1, v29);
    (*(v28 + 8))(v31 + v32, v29);
  }

  v8 = v23[102];
  v0 = v23;
  if (v8)
  {
    sub_1000D2A70((v23 + 13), (v23 + 28), &qword_101696920, &unk_10138B200);
    if (v23[31])
    {
      sub_10000A748(v23 + 14, (v23 + 23));
      sub_100007BAC(v23 + 23);
    }

    else
    {
      sub_10000B3A8((v23 + 28), &qword_101696920, &unk_10138B200);
    }
  }

  if (qword_101694C50 != -1)
  {
LABEL_28:
    swift_once();
  }

  v33 = v0[83];
  v34 = v0[81];
  v35 = v0[67];
  v36 = v0[65];
  v37 = type metadata accessor for Logger();
  sub_1000076D4(v37, qword_10177BAA0);
  sub_1000D2A70((v0 + 13), (v0 + 18), &qword_101696920, &unk_10138B200);
  sub_1000D2A70(v35, v36, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v33, v34, &unk_1016AF8C0, &unk_1013A07A0);

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = v8 != 0;
    v41 = v0[85];
    v42 = v0[81];
    v43 = v0[65];
    v44 = v0[58];
    v65 = v0[84];
    v66 = v0[57];
    v45 = swift_slowAlloc();
    *v45 = 67110144;

    *(v45 + 4) = v40;

    *(v45 + 8) = 1024;

    *(v45 + 10) = 0;

    *(v45 + 14) = 1024;
    v46 = v0[21] != 0;
    sub_10000B3A8((v0 + 18), &qword_101696920, &unk_10138B200);
    *(v45 + 16) = v46;
    *(v45 + 20) = 1024;
    v47 = (*(v41 + 48))(v43, 1, v65) != 1;
    sub_10000B3A8(v43, &qword_1016980D0, &unk_10138F3B0);
    *(v45 + 22) = v47;
    *(v45 + 26) = 1024;
    v48 = (*(v44 + 48))(v42, 1, v66) != 1;
    sub_10000B3A8(v42, &unk_1016AF8C0, &unk_1013A07A0);
    *(v45 + 28) = v48;
    _os_log_impl(&_mh_execute_header, v38, v39, "Can't post Request Received Notification! beaconName(%{BOOL}d), memberName(%{BOOL}d), beaconRecord(%{BOOL}d), clientShareIdentifier(%{BOOL}d), productInfo(%{BOOL}d).", v45, 0x20u);
  }

  else
  {
    v49 = v0[65];
    sub_10000B3A8(v0[81], &unk_1016AF8C0, &unk_1013A07A0);
    sub_10000B3A8(v49, &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8((v0 + 18), &qword_101696920, &unk_10138B200);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v50 = v0[83];
  v51 = v0[79];
  v52 = v0[67];
  sub_100B58A3C();
  swift_allocError();
  *v53 = 0;
  swift_willThrow();
  swift_unknownObjectRelease();
  sub_10000B3A8(v52, &qword_1016980D0, &unk_10138F3B0);
  sub_10000B3A8(v50, &unk_1016AF8C0, &unk_1013A07A0);
  sub_10000B3A8((v0 + 13), &qword_101696920, &unk_10138B200);
  sub_10002FF48(v51, type metadata accessor for OwnerPeerTrust);
  sub_100007BAC(v0 + 8);

  v54 = v0[1];

  return v54();
}

uint64_t sub_100B45BD0()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 824);
  v3 = *(v0 + 728);
  v4 = *(v0 + 672);
  v5 = (*(v0 + 1028) + 24) & ~*(v0 + 1028);
  (*(v0 + 832))(v3, *(v0 + 720), v4);
  v6 = swift_allocObject();
  *(v0 + 944) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 952) = v7;
  *v7 = v0;
  v7[1] = sub_100B45D2C;
  v8 = *(v0 + 552);
  v9 = *(v0 + 544);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100B5A9DC, v6, v9);
}

uint64_t sub_100B45D2C()
{
  v1 = *(*v0 + 416);

  return _swift_task_switch(sub_100B45E58, v1, 0);
}

uint64_t sub_100B45E58()
{
  v33 = v0;
  v1 = v0[74];
  v2 = v0[69];
  if ((*(v0[75] + 48))(v2, 1, v1) == 1)
  {

    sub_10000B3A8(v2, &qword_101697798, &unk_10138C4F0);
    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v3 = v0[104];
    v4 = v0[90];
    v5 = v0[88];
    v6 = v0[84];
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177BAA0);
    v3(v5, v4, v6);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[88];
    v12 = v0[85];
    v13 = v0[84];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = v31;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      v18 = v13;
      v19 = *(v12 + 8);
      v19(v11, v18);
      v20 = sub_1000136BC(v15, v17, &v32);

      *(v14 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v8, v9, "Can't post Request Received Notification!\nNo peer trust for %{private,mask.hash}s", v14, 0x16u);
      sub_100007BAC(v31);
    }

    else
    {

      v25 = v13;
      v19 = *(v12 + 8);
      v19(v11, v25);
    }

    v26 = v0[90];
    v27 = v0[84];
    v28 = v0[83];
    sub_100B58A3C();
    swift_allocError();
    *v29 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    v19(v26, v27);
    sub_10000B3A8(v28, &unk_1016AF8C0, &unk_1013A07A0);
    sub_10000B3A8((v0 + 13), &qword_101696920, &unk_10138B200);
    sub_100007BAC(v0 + 8);

    v30 = v0[1];

    return v30();
  }

  else
  {
    v21 = v0[76];
    sub_100038EDC(v2, v21, type metadata accessor for OwnerPeerTrust);
    v22 = *(v1 + 28);
    v23 = swift_task_alloc();
    v0[120] = v23;
    *v23 = v0;
    v23[1] = sub_100B46394;

    return sub_100E8BEF8(v21 + v22);
  }
}

uint64_t sub_100B46394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[121] = a1;
  v5[122] = a2;
  v5[123] = a3;

  if (v3)
  {
    v6 = v5[52];

    v7 = sub_100B46B74;
    v8 = v6;
  }

  else
  {
    v8 = v5[52];
    v7 = sub_100B464E0;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100B464E0()
{
  v32 = v0;
  v1 = *(v0 + 984);
  if (v1)
  {
    v2 = *(v0 + 968);
    sub_100B5AAA0(*(v0 + 608), *(v0 + 632), type metadata accessor for OwnerPeerTrust);
    sub_1000035D0((v0 + 64), *(v0 + 88));
    v3 = swift_task_alloc();
    *(v0 + 992) = v3;
    *v3 = v0;
    v3[1] = sub_100B469F8;
    v4 = *(v0 + 976);

    return sub_100D4C7CC(v2, v4, v1);
  }

  else
  {
    sub_10002FF48(*(v0 + 608), type metadata accessor for OwnerPeerTrust);

    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 832);
    v7 = *(v0 + 720);
    v8 = *(v0 + 704);
    v9 = *(v0 + 672);
    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177BAA0);
    v6(v8, v7, v9);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 704);
    v15 = *(v0 + 680);
    v16 = *(v0 + 672);
    if (v13)
    {
      v17 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v17 = 141558275;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v21 = v16;
      v22 = *(v15 + 8);
      v22(v14, v21);
      v23 = sub_1000136BC(v18, v20, &v31);

      *(v17 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v11, v12, "Can't post Request Received Notification!\nNo peer trust for %{private,mask.hash}s", v17, 0x16u);
      sub_100007BAC(v30);
    }

    else
    {

      v24 = v16;
      v22 = *(v15 + 8);
      v22(v14, v24);
    }

    v25 = *(v0 + 720);
    v26 = *(v0 + 672);
    v27 = *(v0 + 664);
    sub_100B58A3C();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    v22(v25, v26);
    sub_10000B3A8(v27, &unk_1016AF8C0, &unk_1013A07A0);
    sub_10000B3A8(v0 + 104, &qword_101696920, &unk_10138B200);
    sub_100007BAC((v0 + 64));

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_100B469F8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[125] = v2;

  v7 = v6[52];
  if (v2)
  {

    v8 = sub_100B48338;
  }

  else
  {

    v6[126] = a2;
    v6[127] = a1;
    v8 = sub_100B46FC4;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100B46B74()
{
  v28 = v0;
  sub_10002FF48(v0[76], type metadata accessor for OwnerPeerTrust);
  if (qword_101694C50 != -1)
  {
    swift_once();
  }

  v1 = v0[104];
  v2 = v0[90];
  v3 = v0[88];
  v4 = v0[84];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177BAA0);
  v1(v3, v2, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[88];
  v10 = v0[85];
  v11 = v0[84];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v16 = v11;
    v17 = *(v10 + 8);
    v17(v9, v16);
    v18 = sub_1000136BC(v13, v15, &v27);

    *(v12 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "Can't post Request Received Notification!\nNo peer trust for %{private,mask.hash}s", v12, 0x16u);
    sub_100007BAC(v26);
  }

  else
  {

    v19 = v11;
    v17 = *(v10 + 8);
    v17(v9, v19);
  }

  v20 = v0[90];
  v21 = v0[84];
  v22 = v0[83];
  sub_100B58A3C();
  swift_allocError();
  *v23 = 0;
  swift_willThrow();
  swift_unknownObjectRelease();
  v17(v20, v21);
  sub_10000B3A8(v22, &unk_1016AF8C0, &unk_1013A07A0);
  sub_10000B3A8((v0 + 13), &qword_101696920, &unk_10138B200);
  sub_100007BAC(v0 + 8);

  v24 = v0[1];

  return v24();
}

uint64_t sub_100B46FC4()
{
  v137 = v0;
  aBlock = v0 + 2;
  v119 = v0[126];
  v117 = v0[127];
  v1 = v0[90];
  v2 = v0[85];
  v3 = v0[84];
  sub_10002FF48(v0[76], type metadata accessor for OwnerPeerTrust);
  (*(v2 + 8))(v1, v3);
  v121 = v0[85];
  v124 = v0[60];
  v4 = v0[48];
  v5 = sub_10016632C();
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  v7 = sub_1001BE474(_swiftEmptyDictionarySingleton, sub_100B5AC54, v6, v5);

  v8 = v7 + 64;
  v9 = -1;
  v10 = -1 << *(v7 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v7 + 64);
  v12 = (63 - v10) >> 6;

  v13 = 0;
  if (!v11)
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {
        v20 = v0[64];
        v22 = v0[60];
        v21 = v0[61];

        (*(v21 + 56))(v20, 1, 1, v22);
        goto LABEL_12;
      }

      v11 = *(v8 + 8 * v14);
      ++v13;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_49;
  }

  while (1)
  {
    v14 = v13;
LABEL_8:
    v15 = v0[104];
    v16 = v0[84];
    v17 = v0[63];
    v18 = v0;
    v130 = v0[62];
    v19 = *(v121 + 72) * (__clz(__rbit64(v11)) | (v14 << 6));
    v15(v17, *(v7 + 48) + v19, v16);
    v15(v17 + *(v124 + 48), *(v7 + 56) + v19, v16);
    sub_1000D2AD8(v17, v130, &qword_101698C18, &qword_101390740);
    if (static UUID.== infix(_:_:)())
    {
      break;
    }

    v11 &= v11 - 1;
    sub_10000B3A8(v18[62], &qword_101698C18, &qword_101390740);
    v13 = v14;
    v0 = v18;
    v8 = v7 + 64;
    if (!v11)
    {
      goto LABEL_5;
    }
  }

  v66 = v18[64];
  v67 = v18[61];
  v68 = v18[62];
  v69 = v18[60];

  sub_1000D2AD8(v68, v66, &qword_101698C18, &qword_101390740);
  (*(v67 + 56))(v66, 0, 1, v69);
  v0 = v18;
LABEL_12:
  v23 = v0[64];
  v25 = v0[60];
  v24 = v0[61];

  if ((*(v24 + 48))(v23, 1, v25) == 1)
  {
    v26 = v0[85];
    v27 = v0[84];
    v28 = v0[67];
    sub_10000B3A8(v0[64], &qword_10169D398, &qword_10139ADE8);
    (*(v26 + 56))(v28, 1, 1, v27);
  }

  else
  {
    v29 = v0[85];
    v30 = v0[84];
    v31 = v0[67];
    v32 = v0[64];
    v33 = *(v124 + 48);
    (v0[107])(v31, v32, v30);
    (*(v29 + 56))(v31, 0, 1, v30);
    (*(v29 + 8))(v32 + v33, v30);
  }

  v14 = v0[102];
  v12 = v119;
  if (!v14)
  {
LABEL_25:
    if (qword_101694C50 == -1)
    {
LABEL_26:
      v44 = v0[83];
      v45 = v0[81];
      v46 = v0[67];
      v47 = v0[65];
      v48 = type metadata accessor for Logger();
      sub_1000076D4(v48, qword_10177BAA0);
      sub_1000D2A70((v0 + 13), (v0 + 18), &qword_101696920, &unk_10138B200);
      sub_1000D2A70(v46, v47, &qword_1016980D0, &unk_10138F3B0);
      sub_1000D2A70(v44, v45, &unk_1016AF8C0, &unk_1013A07A0);

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = v14 != 0;
        v52 = v0[85];
        v127 = v0[84];
        v53 = v0[65];
        v54 = v0[58];
        v131 = v0[57];
        v134 = v0[81];
        v55 = swift_slowAlloc();
        *v55 = 67110144;

        *(v55 + 4) = v51;

        *(v55 + 8) = 1024;

        *(v55 + 10) = v12 != 0;

        *(v55 + 14) = 1024;
        v56 = v0[21] != 0;
        sub_10000B3A8((v0 + 18), &qword_101696920, &unk_10138B200);
        *(v55 + 16) = v56;
        *(v55 + 20) = 1024;
        v57 = (*(v52 + 48))(v53, 1, v127) != 1;
        sub_10000B3A8(v53, &qword_1016980D0, &unk_10138F3B0);
        *(v55 + 22) = v57;
        *(v55 + 26) = 1024;
        v58 = (*(v54 + 48))(v134, 1, v131) != 1;
        sub_10000B3A8(v134, &unk_1016AF8C0, &unk_1013A07A0);
        *(v55 + 28) = v58;
        _os_log_impl(&_mh_execute_header, v49, v50, "Can't post Request Received Notification! beaconName(%{BOOL}d), memberName(%{BOOL}d), beaconRecord(%{BOOL}d), clientShareIdentifier(%{BOOL}d), productInfo(%{BOOL}d).", v55, 0x20u);
      }

      else
      {
        v59 = v0[65];
        sub_10000B3A8(v0[81], &unk_1016AF8C0, &unk_1013A07A0);
        sub_10000B3A8(v59, &qword_1016980D0, &unk_10138F3B0);
        sub_10000B3A8((v0 + 18), &qword_101696920, &unk_10138B200);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      v60 = v0[83];
      v61 = v0[79];
      v62 = v0[67];
      sub_100B58A3C();
      swift_allocError();
      *v63 = 0;
      swift_willThrow();
      swift_unknownObjectRelease();
      sub_10000B3A8(v62, &qword_1016980D0, &unk_10138F3B0);
      sub_10000B3A8(v60, &unk_1016AF8C0, &unk_1013A07A0);
      sub_10000B3A8((v0 + 13), &qword_101696920, &unk_10138B200);
      sub_10002FF48(v61, type metadata accessor for OwnerPeerTrust);
      sub_100007BAC(v0 + 8);

      v64 = v0[1];
      goto LABEL_30;
    }

LABEL_49:
    swift_once();
    goto LABEL_26;
  }

  sub_1000D2A70((v0 + 13), (v0 + 28), &qword_101696920, &unk_10138B200);
  if (!v0[31])
  {
    sub_10000B3A8((v0 + 28), &qword_101696920, &unk_10138B200);
    goto LABEL_25;
  }

  sub_10000A748(v0 + 14, (v0 + 23));
  if (!v119)
  {
    sub_100007BAC(v0 + 23);
    goto LABEL_25;
  }

  v34 = v0[85];
  v35 = v0[84];
  v36 = v0[66];
  sub_1000D2A70(v0[67], v36, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v34 + 48))(v36, 1, v35) == 1)
  {
    v37 = v0[66];
    sub_100007BAC(v0 + 23);
    v38 = &qword_1016980D0;
    v39 = &unk_10138F3B0;
LABEL_24:
    sub_10000B3A8(v37, v38, v39);
    v12 = v119;
    goto LABEL_25;
  }

  v40 = v0[83];
  v41 = v0[82];
  v43 = v0[57];
  v42 = v0[58];
  (v0[107])(v0[87], v0[66], v0[84]);
  sub_1000D2A70(v40, v41, &unk_1016AF8C0, &unk_1013A07A0);
  if ((*(v42 + 48))(v41, 1, v43) == 1)
  {
    v37 = v0[82];
    (*(v0[85] + 8))(v0[87], v0[84]);
    sub_100007BAC(v0 + 23);
    v38 = &unk_1016AF8C0;
    v39 = &unk_1013A07A0;
    goto LABEL_24;
  }

  v70 = v0[59];
  v71 = v0[57];
  sub_100038EDC(v0[82], v70, type metadata accessor for BeaconProductInfoRecord);
  if (*(v70 + *(v71 + 36)))
  {

    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v72 = v0[54];
    v73 = v0[48];
    v74 = type metadata accessor for Logger();
    sub_1000076D4(v74, qword_10177BAA0);
    sub_100B5AAA0(v73, v72, type metadata accessor for OwnerSharingCircle);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();
    v77 = os_log_type_enabled(v75, v76);
    v78 = v0[87];
    v79 = v0[85];
    v80 = v0[84];
    v81 = v0[83];
    v82 = v0[67];
    v83 = v0[59];
    v84 = v0[54];
    if (v77)
    {
      v132 = v0[83];
      v128 = v0[67];
      v85 = swift_slowAlloc();
      v125 = v78;
      v86 = swift_slowAlloc();
      v136 = v86;
      *v85 = 141558275;
      *(v85 + 4) = 1752392040;
      *(v85 + 12) = 2081;
      sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v87 = dispatch thunk of CustomStringConvertible.description.getter();
      v122 = v83;
      v89 = v88;
      sub_10002FF48(v84, type metadata accessor for OwnerSharingCircle);
      v90 = sub_1000136BC(v87, v89, &v136);

      *(v85 + 14) = v90;
      _os_log_impl(&_mh_execute_header, v75, v76, "Hiding beacon %{private,mask.hash}s because productInfo has hidden flag set.", v85, 0x16u);
      sub_100007BAC(v86);

      swift_unknownObjectRelease();
      sub_10002FF48(v122, type metadata accessor for BeaconProductInfoRecord);
      (*(v79 + 8))(v125, v80);
      sub_100007BAC(v0 + 23);
      sub_10000B3A8(v128, &qword_1016980D0, &unk_10138F3B0);
      v91 = v132;
    }

    else
    {

      swift_unknownObjectRelease();
      sub_10002FF48(v84, type metadata accessor for OwnerSharingCircle);
      sub_10002FF48(v83, type metadata accessor for BeaconProductInfoRecord);
      (*(v79 + 8))(v78, v80);
      sub_100007BAC(v0 + 23);
      sub_10000B3A8(v82, &qword_1016980D0, &unk_10138F3B0);
      v91 = v81;
    }

    sub_10000B3A8(v91, &unk_1016AF8C0, &unk_1013A07A0);
    sub_10000B3A8((v0 + 13), &qword_101696920, &unk_10138B200);
    v99 = v0[79];
  }

  else
  {
    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v92 = type metadata accessor for Logger();
    sub_1000076D4(v92, qword_10177BAA0);
    sub_10001F280((v0 + 23), (v0 + 33));
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 67109120;
      v97 = v0[36];
      v96 = v0[37];
      sub_1000035D0(v0 + 33, v97);
      v98 = (*(v96 + 96))(v97, v96) & 1;
      sub_100007BAC(v0 + 33);
      *(v95 + 4) = v98;
      _os_log_impl(&_mh_execute_header, v93, v94, "post Request Received Notification, isAirTag:%{BOOL}d", v95, 8u);
    }

    else
    {
      sub_100007BAC(v0 + 33);
    }

    v100 = v0[101];
    v126 = v0[87];
    v101 = v0[85];
    v123 = v0[84];
    v133 = v0[83];
    v135 = v0[79];
    v129 = v0[67];
    v102 = v0[59];
    v120 = v102;
    v103 = v0[55];
    v104 = v0[56];
    (v0[104])(&v104[v103[6]]);
    sub_100B5AAA0(v102, &v104[v103[9]], type metadata accessor for BeaconProductInfoRecord);
    *v104 = 25089;
    v105 = &v104[v103[7]];
    *v105 = v117;
    *(v105 + 1) = v119;
    v106 = &v104[v103[8]];
    *v106 = v100;
    *(v106 + 1) = v14;
    swift_unownedRetainStrong();
    v0[41] = v103;
    v0[42] = &off_10161BF20;
    v107 = sub_1000280DC(v0 + 38);
    sub_100B5AAA0(v104, v107, type metadata accessor for ItemShareRequestReceivedUserNotification);
    v108 = objc_allocWithZone(UNUserNotificationCenter);
    v109 = String._bridgeToObjectiveC()();

    v110 = [v108 initWithBundleIdentifier:v109];

    v111 = sub_10111B74C(v107);
    UUID.uuidString.getter();
    v112 = v111;
    v113 = String._bridgeToObjectiveC()();

    v114 = [objc_opt_self() requestWithIdentifier:v113 content:v112 trigger:0 destinations:7];

    sub_10001F280((v0 + 38), (v0 + 43));
    v115 = swift_allocObject();
    sub_10000A748((v0 + 43), v115 + 16);
    *(v115 + 56) = 0;
    *(v115 + 64) = 0;
    v0[6] = sub_1007A9F68;
    v0[7] = v115;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_10077732C;
    v0[5] = &unk_1016492D0;
    v116 = _Block_copy(aBlock);

    [v110 addNotificationRequest:v114 withCompletionHandler:v116];

    _Block_release(v116);
    sub_100007BAC(v0 + 38);

    swift_unknownObjectRelease();
    sub_10002FF48(v104, type metadata accessor for ItemShareRequestReceivedUserNotification);
    sub_10002FF48(v120, type metadata accessor for BeaconProductInfoRecord);
    (*(v101 + 8))(v126, v123);
    sub_100007BAC(v0 + 23);
    sub_10000B3A8(v129, &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v133, &unk_1016AF8C0, &unk_1013A07A0);
    sub_10000B3A8((v0 + 13), &qword_101696920, &unk_10138B200);
    v99 = v135;
  }

  sub_10002FF48(v99, type metadata accessor for OwnerPeerTrust);
  sub_100007BAC(v0 + 8);

  v64 = v0[1];
LABEL_30:

  return v64();
}

uint64_t sub_100B48338()
{
  v1 = v0[90];
  v2 = v0[85];
  v3 = v0[84];
  sub_10002FF48(v0[76], type metadata accessor for OwnerPeerTrust);
  (*(v2 + 8))(v1, v3);
  v65 = v0[85];
  v66 = v0[60];
  v4 = v0[48];
  v5 = sub_10016632C();
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  v7 = sub_1001BE474(_swiftEmptyDictionarySingleton, sub_100B5AC54, v6, v5);

  v8 = v7 + 64;
  v9 = -1;
  v10 = -1 << *(v7 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v7 + 64);
  v12 = (63 - v10) >> 6;

  v13 = 0;
  v63 = v7 + 64;
  v64 = v7;
  if (!v11)
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {
        v20 = v0[64];
        v22 = v0[60];
        v21 = v0[61];

        (*(v21 + 56))(v20, 1, 1, v22);
        goto LABEL_12;
      }

      v11 = *(v8 + 8 * v14);
      ++v13;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  while (1)
  {
    v14 = v13;
LABEL_8:
    v15 = v0[104];
    v16 = v0[84];
    v17 = v0[63];
    v67 = v0[62];
    v18 = v0;
    v19 = *(v65 + 72) * (__clz(__rbit64(v11)) | (v14 << 6));
    v15(v17, *(v7 + 48) + v19, v16);
    v15(v17 + *(v66 + 48), *(v7 + 56) + v19, v16);
    sub_1000D2AD8(v17, v67, &qword_101698C18, &qword_101390740);
    if (static UUID.== infix(_:_:)())
    {
      break;
    }

    v11 &= v11 - 1;
    sub_10000B3A8(v18[62], &qword_101698C18, &qword_101390740);
    v13 = v14;
    v0 = v18;
    v8 = v63;
    v7 = v64;
    if (!v11)
    {
      goto LABEL_5;
    }
  }

  v59 = v18[64];
  v61 = v18[61];
  v60 = v18[62];
  v62 = v18[60];

  sub_1000D2AD8(v60, v59, &qword_101698C18, &qword_101390740);
  (*(v61 + 56))(v59, 0, 1, v62);
  v0 = v18;
LABEL_12:
  v23 = v0[64];
  v25 = v0[60];
  v24 = v0[61];

  if ((*(v24 + 48))(v23, 1, v25) == 1)
  {
    v26 = v0;
    v27 = v0[85];
    v28 = v26[84];
    v29 = v26[67];
    sub_10000B3A8(v26[64], &qword_10169D398, &qword_10139ADE8);
    (*(v27 + 56))(v29, 1, 1, v28);
  }

  else
  {
    v30 = v0[107];
    v26 = v0;
    v31 = v0[85];
    v32 = v26[84];
    v33 = v26[67];
    v34 = v26[64];
    v35 = *(v66 + 48);
    v30(v33, v34, v32);
    (*(v31 + 56))(v33, 0, 1, v32);
    (*(v31 + 8))(v34 + v35, v32);
  }

  v11 = v26[102];
  v0 = v26;
  if (v11)
  {
    sub_1000D2A70((v26 + 13), (v26 + 28), &qword_101696920, &unk_10138B200);
    if (v26[31])
    {
      sub_10000A748(v26 + 14, (v26 + 23));
      sub_100007BAC(v26 + 23);
    }

    else
    {
      sub_10000B3A8((v26 + 28), &qword_101696920, &unk_10138B200);
    }
  }

  if (qword_101694C50 != -1)
  {
LABEL_28:
    swift_once();
  }

  v36 = v0[83];
  v37 = v0[81];
  v38 = v0[67];
  v39 = v0[65];
  v40 = type metadata accessor for Logger();
  sub_1000076D4(v40, qword_10177BAA0);
  sub_1000D2A70((v0 + 13), (v0 + 18), &qword_101696920, &unk_10138B200);
  sub_1000D2A70(v38, v39, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v36, v37, &unk_1016AF8C0, &unk_1013A07A0);

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = v11 != 0;
    v44 = v0[85];
    v45 = v0[81];
    v46 = v0[65];
    v47 = v0[58];
    v68 = v0[84];
    v69 = v0[57];
    v48 = swift_slowAlloc();
    *v48 = 67110144;

    *(v48 + 4) = v43;

    *(v48 + 8) = 1024;

    *(v48 + 10) = 0;

    *(v48 + 14) = 1024;
    v49 = v0[21] != 0;
    sub_10000B3A8((v0 + 18), &qword_101696920, &unk_10138B200);
    *(v48 + 16) = v49;
    *(v48 + 20) = 1024;
    v50 = (*(v44 + 48))(v46, 1, v68) != 1;
    sub_10000B3A8(v46, &qword_1016980D0, &unk_10138F3B0);
    *(v48 + 22) = v50;
    *(v48 + 26) = 1024;
    v51 = (*(v47 + 48))(v45, 1, v69) != 1;
    sub_10000B3A8(v45, &unk_1016AF8C0, &unk_1013A07A0);
    *(v48 + 28) = v51;
    _os_log_impl(&_mh_execute_header, v41, v42, "Can't post Request Received Notification! beaconName(%{BOOL}d), memberName(%{BOOL}d), beaconRecord(%{BOOL}d), clientShareIdentifier(%{BOOL}d), productInfo(%{BOOL}d).", v48, 0x20u);
  }

  else
  {
    v52 = v0[65];
    sub_10000B3A8(v0[81], &unk_1016AF8C0, &unk_1013A07A0);
    sub_10000B3A8(v52, &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8((v0 + 18), &qword_101696920, &unk_10138B200);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v53 = v0[83];
  v54 = v0[79];
  v55 = v0[67];
  sub_100B58A3C();
  swift_allocError();
  *v56 = 0;
  swift_willThrow();
  swift_unknownObjectRelease();
  sub_10000B3A8(v55, &qword_1016980D0, &unk_10138F3B0);
  sub_10000B3A8(v53, &unk_1016AF8C0, &unk_1013A07A0);
  sub_10000B3A8((v0 + 13), &qword_101696920, &unk_10138B200);
  sub_10002FF48(v54, type metadata accessor for OwnerPeerTrust);
  sub_100007BAC(v0 + 8);

  v57 = v0[1];

  return v57();
}

uint64_t sub_100B48C18()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B48DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 128) = a5;
  *(v6 + 136) = v5;
  *(v6 + 112) = a3;
  *(v6 + 120) = a4;
  *(v6 + 96) = a1;
  *(v6 + 104) = a2;
  v8 = type metadata accessor for MemberSharingCircle(0);
  *(v6 + 144) = v8;
  *(v6 + 152) = swift_task_alloc();
  type metadata accessor for Endianness();
  *(v6 + 160) = swift_task_alloc();
  v9 = type metadata accessor for BeaconProductInfoRecord(0);
  *(v6 + 168) = v9;
  *(v6 + 176) = *(v9 - 8);
  *(v6 + 184) = swift_task_alloc();
  v10 = type metadata accessor for MemberPeerTrust(0);
  *(v6 + 192) = v10;
  *(v6 + 200) = *(v10 - 8);
  *(v6 + 208) = swift_task_alloc();
  v11 = type metadata accessor for SharedBeaconRecord(0);
  *(v6 + 216) = v11;
  *(v6 + 224) = *(v11 - 8);
  *(v6 + 232) = swift_task_alloc();
  *(v6 + 240) = swift_task_alloc();
  *(v6 + 248) = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  *(v6 + 312) = v12;
  v13 = *(v12 - 8);
  *(v6 + 320) = v13;
  *(v6 + 328) = *(v13 + 64);
  *(v6 + 336) = swift_task_alloc();
  *(v6 + 344) = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  v14 = *(v8 + 24);
  *(v6 + 488) = v14;
  v15 = swift_task_alloc();
  *(v6 + 376) = v15;
  *v15 = v6;
  v15[1] = sub_100B49180;

  return sub_100B57904(a2 + v14);
}

uint64_t sub_100B49180(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[7] = v2;
  v4[8] = a1;
  v4[9] = a2;
  v5 = v3[17];
  v4[48] = a2;

  return _swift_task_switch(sub_100B4929C, v5, 0);
}

uint64_t sub_100B4929C()
{
  v1 = *(*(v0 + 136) + 136);
  *(v0 + 392) = v1;
  return _swift_task_switch(sub_100B492C0, v1, 0);
}

uint64_t sub_100B492C0()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 488);
  v3 = *(v0 + 336);
  v4 = *(v0 + 312);
  v5 = *(v0 + 320);
  v6 = *(v0 + 104);
  v7 = *(v5 + 16);
  *(v0 + 400) = v7;
  *(v0 + 408) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6 + v2, v4);
  v8 = *(v5 + 80);
  *(v0 + 492) = v8;
  v9 = (v8 + 24) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 416) = v10;
  *(v10 + 16) = v1;
  v11 = *(v5 + 32);
  *(v0 + 424) = v11;
  *(v0 + 432) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v9, v3, v4);

  v12 = swift_task_alloc();
  *(v0 + 440) = v12;
  *v12 = v0;
  v12[1] = sub_100B4944C;
  v13 = *(v0 + 368);
  v14 = *(v0 + 344);

  return unsafeBlocking<A>(context:_:)(v13, 0xD000000000000010, 0x800000010134A8C0, sub_100B5AC84, v10, v14);
}

uint64_t sub_100B4944C()
{
  v1 = *v0;
  v2 = *(*v0 + 392);
  v3 = *(*v0 + 144);

  *(v1 + 496) = *(v3 + 32);

  return _swift_task_switch(sub_100B4959C, v2, 0);
}

uint64_t sub_100B4959C()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 392);
  v3 = *(v0 + 336);
  v4 = *(v0 + 312);
  v5 = (*(v0 + 492) + 24) & ~*(v0 + 492);
  (*(v0 + 400))(v3, *(v0 + 104) + *(v0 + 496), v4);
  v6 = swift_allocObject();
  *(v0 + 448) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 456) = v7;
  *v7 = v0;
  v7[1] = sub_100B496F4;
  v8 = *(v0 + 304);
  v9 = *(v0 + 280);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100B5AC88, v6, v9);
}

uint64_t sub_100B496F4()
{
  v1 = *(*v0 + 392);

  return _swift_task_switch(sub_100B49820, v1, 0);
}

uint64_t sub_100B49820()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 392);
  v3 = *(v0 + 336);
  v4 = *(v0 + 312);
  v5 = (*(v0 + 492) + 24) & ~*(v0 + 492);
  (*(v0 + 400))(v3, *(v0 + 104) + *(v0 + 488), v4);
  v6 = swift_allocObject();
  *(v0 + 464) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 472) = v7;
  *v7 = v0;
  v7[1] = sub_100B49978;
  v8 = *(v0 + 272);
  v9 = *(v0 + 248);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100B5A9C4, v6, v9);
}

uint64_t sub_100B49978()
{
  v1 = *(*v0 + 136);

  return _swift_task_switch(sub_100B49AA4, v1, 0);
}

uint64_t sub_100B49AA4()
{
  v136 = v0;
  v1 = *(v0 + 384);
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = *(v0 + 360);
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  sub_1000D2A70(*(v0 + 368), v2, &unk_101698C30, &unk_101392630);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = *(v0 + 360);
  if (v5 == 1)
  {
    v7 = &unk_101698C30;
    v8 = &unk_101392630;
LABEL_9:
    sub_10000B3A8(v6, v7, v8);
LABEL_10:
    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 368);
    v22 = *(v0 + 352);
    v23 = *(v0 + 304);
    v24 = *(v0 + 288);
    v25 = *(v0 + 272);
    v26 = *(v0 + 256);
    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177BAA0);
    sub_1000D2A70(v21, v22, &unk_101698C30, &unk_101392630);
    sub_1000D2A70(v23, v24, &qword_101698C10, &unk_10138C1E0);
    sub_1000D2A70(v25, v26, &unk_1016AF8C0, &unk_1013A07A0);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 352);
    v32 = *(v0 + 288);
    v33 = *(v0 + 256);
    if (v30)
    {
      v131 = v29;
      v34 = v1 != 0;
      v133 = v28;
      v35 = *(v0 + 224);
      v128 = *(v0 + 216);
      v36 = *(v0 + 200);
      v37 = *(v0 + 176);
      v129 = *(v0 + 192);
      v130 = *(v0 + 168);
      v38 = swift_slowAlloc();
      *v38 = 67109888;

      *(v38 + 4) = v34;

      *(v38 + 8) = 1024;
      LODWORD(v35) = (*(v35 + 48))(v31, 1, v128) != 1;
      sub_10000B3A8(v31, &unk_101698C30, &unk_101392630);
      *(v38 + 10) = v35;
      *(v38 + 14) = 1024;
      LODWORD(v35) = (*(v36 + 48))(v32, 1, v129) != 1;
      sub_10000B3A8(v32, &qword_101698C10, &unk_10138C1E0);
      *(v38 + 16) = v35;
      *(v38 + 20) = 1024;
      LODWORD(v35) = (*(v37 + 48))(v33, 1, v130) != 1;
      sub_10000B3A8(v33, &unk_1016AF8C0, &unk_1013A07A0);
      *(v38 + 22) = v35;
      v28 = v133;
      _os_log_impl(&_mh_execute_header, v133, v131, "Can't create Transparency Notification! beaconName(%{BOOL}d), beaconRecord(%{BOOL}d), ownerPeerTrust(%{BOOL}d), productInfo(%{BOOL}d).", v38, 0x1Au);
    }

    else
    {
      sub_10000B3A8(*(v0 + 256), &unk_1016AF8C0, &unk_1013A07A0);
      sub_10000B3A8(v32, &qword_101698C10, &unk_10138C1E0);
      sub_10000B3A8(v31, &unk_101698C30, &unk_101392630);
      swift_bridgeObjectRelease_n();
    }

    v39 = *(v0 + 368);
    v40 = *(v0 + 304);
    v41 = *(v0 + 272);
    sub_100B58A3C();
    swift_allocError();
    *v42 = 0;
    swift_willThrow();
    sub_10000B3A8(v41, &unk_1016AF8C0, &unk_1013A07A0);
    sub_10000B3A8(v40, &qword_101698C10, &unk_10138C1E0);
    sub_10000B3A8(v39, &unk_101698C30, &unk_101392630);
LABEL_16:

    v43 = *(v0 + 8);
    goto LABEL_17;
  }

  v10 = *(v0 + 296);
  v9 = *(v0 + 304);
  v11 = *(v0 + 192);
  v12 = *(v0 + 200);
  sub_100038EDC(v6, *(v0 + 240), type metadata accessor for SharedBeaconRecord);
  sub_1000D2A70(v9, v10, &qword_101698C10, &unk_10138C1E0);
  v13 = (*(v12 + 48))(v10, 1, v11);
  v14 = *(v0 + 296);
  if (v13 == 1)
  {
    sub_10002FF48(*(v0 + 240), type metadata accessor for SharedBeaconRecord);
    v7 = &qword_101698C10;
    v8 = &unk_10138C1E0;
LABEL_8:
    v6 = v14;
    goto LABEL_9;
  }

  v16 = *(v0 + 264);
  v15 = *(v0 + 272);
  v17 = *(v0 + 168);
  v18 = *(v0 + 176);
  sub_100038EDC(*(v0 + 296), *(v0 + 208), type metadata accessor for MemberPeerTrust);
  sub_1000D2A70(v15, v16, &unk_1016AF8C0, &unk_1013A07A0);
  v19 = (*(v18 + 48))(v16, 1, v17);
  v14 = *(v0 + 264);
  if (v19 == 1)
  {
    v20 = *(v0 + 208);
    sub_10002FF48(*(v0 + 240), type metadata accessor for SharedBeaconRecord);
    sub_10002FF48(v20, type metadata accessor for MemberPeerTrust);
    v7 = &unk_1016AF8C0;
    v8 = &unk_1013A07A0;
    goto LABEL_8;
  }

  v45 = *(v0 + 184);
  v46 = *(v0 + 168);
  sub_100038EDC(*(v0 + 264), v45, type metadata accessor for BeaconProductInfoRecord);
  if (*(v45 + *(v46 + 36)))
  {

    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v47 = *(v0 + 152);
    v48 = *(v0 + 104);
    v49 = type metadata accessor for Logger();
    sub_1000076D4(v49, qword_10177BAA0);
    sub_100B5AAA0(v48, v47, type metadata accessor for MemberSharingCircle);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = *(v0 + 152);
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v135[0] = v54;
      *v53 = 141558275;
      *(v53 + 4) = 1752392040;
      *(v53 + 12) = 2081;
      sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      sub_10002FF48(v52, type metadata accessor for MemberSharingCircle);
      v58 = sub_1000136BC(v55, v57, v135);

      *(v53 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v50, v51, "Hiding beacon %{private,mask.hash}s because productInfo has hidden flag set.", v53, 0x16u);
      sub_100007BAC(v54);
    }

    else
    {
      v65 = *(v0 + 152);

      sub_10002FF48(v65, type metadata accessor for MemberSharingCircle);
    }

    v66 = *(v0 + 368);
    v67 = *(v0 + 304);
    v68 = *(v0 + 272);
    v69 = *(v0 + 240);
    v70 = *(v0 + 208);
    v71 = *(v0 + 184);
    sub_100B58A3C();
    swift_allocError();
    *v72 = 2;
    swift_willThrow();
    sub_10002FF48(v71, type metadata accessor for BeaconProductInfoRecord);
    sub_10002FF48(v69, type metadata accessor for SharedBeaconRecord);
    sub_10000B3A8(v68, &unk_1016AF8C0, &unk_1013A07A0);
    sub_10000B3A8(v67, &qword_101698C10, &unk_10138C1E0);
    sub_10000B3A8(v66, &unk_101698C30, &unk_101392630);
    sub_10002FF48(v70, type metadata accessor for MemberPeerTrust);
    goto LABEL_16;
  }

  v60 = *(v0 + 120);
  v59 = *(v0 + 128);

  _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0(v60, v59);
  if (v63)
  {
    v64 = sub_100B5DEBC(v61, v62, v63);
  }

  else
  {
    v64 = 0;
  }

  if (qword_101694C50 != -1)
  {
    swift_once();
  }

  v74 = *(v0 + 232);
  v73 = *(v0 + 240);
  v75 = type metadata accessor for Logger();
  sub_1000076D4(v75, qword_10177BAA0);
  sub_100B5AAA0(v73, v74, type metadata accessor for SharedBeaconRecord);
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.default.getter();
  v78 = os_log_type_enabled(v76, v77);
  v79 = *(v0 + 232);
  if (v78)
  {
    v80 = *(v0 + 216);
    v81 = swift_slowAlloc();
    *v81 = 67109376;
    v82 = *(v0 + 232);
    v84 = *(v79 + *(v80 + 44)) == 76 && (v83 = *(v82 + *(*(v0 + 216) + 48)), !HIDWORD(v83)) && (v83 == 21760 || v83 == 22034);
    sub_10002FF48(v82, type metadata accessor for SharedBeaconRecord);
    *(v81 + 4) = v84;
    *(v81 + 8) = 1024;
    *(v81 + 10) = v64 & 1;
    _os_log_impl(&_mh_execute_header, v76, v77, "create Transparency Notification,\nisAirTag:%{BOOL}d,\nisContainBlockedMembers:%{BOOL}d", v81, 0xEu);
  }

  else
  {
    sub_10002FF48(*(v0 + 232), type metadata accessor for SharedBeaconRecord);
  }

  v86 = *(v0 + 208);
  v88 = *(v0 + 184);
  v87 = *(v0 + 192);
  v89 = *(v0 + 168);

  v90 = (v86 + *(v87 + 32));
  v132 = *v90;
  v134 = v90[1];
  v91 = *(v88 + *(v89 + 112));
  if (v91 == 2)
  {
    v92 = (*(v0 + 184) + *(*(v0 + 168) + 24));
    v93 = v92[1];
    *(v0 + 80) = *v92;
    *(v0 + 88) = v93;
    sub_1000DF96C();

    v94 = Data.init<A>(hexString:)();
    if (v95 >> 60 == 15)
    {
      goto LABEL_56;
    }

    v96 = v94;
    v97 = v95;
    sub_100017D5C(v94, v95);
    v98 = sub_100314594(v96, v97);
    if (v99 >> 60 == 15)
    {
      sub_100006654(v96, v97);
      goto LABEL_56;
    }

    v102 = v98;
    v103 = v99;
    sub_100313B54(v98, v99);
    static Endianness.current.getter();
    sub_10012BF24();
    FixedWidthInteger.init(data:ofEndianness:)();
    sub_100006654(v102, v103);
    sub_100006654(v96, v97);
    if (*(v0 + 484))
    {
      v104 = 0;
    }

    else
    {
      v104 = *(v0 + 480);
    }

    if ((sub_100B8A580(v104) & 0xFE) == 2)
    {
      goto LABEL_56;
    }

LABEL_49:
    if (v64)
    {
      updated = type metadata accessor for ItemShareAirTagCircleUpdateWithBlockedContactUserNotification(0);
      v101 = &off_101617B00;
    }

    else
    {
      updated = type metadata accessor for ItemShareAirTagCircleUpdateUserNotification(0);
      v101 = &off_101617B40;
    }

    goto LABEL_59;
  }

  if (v91)
  {
    goto LABEL_49;
  }

LABEL_56:
  if (v64)
  {
    updated = type metadata accessor for ItemShareCircleUpdateWithBlockedContactUserNotification(0);
    v101 = &off_101617B80;
  }

  else
  {
    updated = type metadata accessor for ItemShareCircleUpdateUserNotification(0);
    v101 = &off_101617BC0;
  }

LABEL_59:
  v120 = *(v0 + 400);
  v121 = *(v0 + 64);
  v119 = *(v0 + 312);
  v125 = *(v0 + 304);
  v126 = *(v0 + 368);
  v122 = *(v0 + 240);
  v123 = *(v0 + 272);
  v127 = *(v0 + 208);
  v105 = *(v0 + 184);
  v106 = *(v0 + 168);
  v107 = *(v0 + 120);
  v108 = *(v0 + 128);
  v109 = *(v0 + 104);
  v110 = *(v0 + 112);
  v124 = *(v0 + 96);
  *(v0 + 40) = updated;
  *(v0 + 48) = v101;
  v111 = sub_1000280DC((v0 + 16));
  sub_100B5AAA0(v109, v111, type metadata accessor for MemberSharingCircle);
  v120(v111 + updated[6], v110, v119);
  v112 = (v105 + *(v106 + 44));
  v114 = *v112;
  v113 = v112[1];
  v115 = (v111 + updated[5]);
  *v115 = v121;
  v115[1] = v1;
  v116 = (v111 + updated[7]);
  *v116 = v107;
  v116[1] = v108;
  v117 = (v111 + updated[8]);
  *v117 = v132;
  v117[1] = v134;
  v118 = (v111 + updated[9]);
  *v118 = v114;
  v118[1] = v113;

  sub_10002FF48(v105, type metadata accessor for BeaconProductInfoRecord);
  sub_10002FF48(v122, type metadata accessor for SharedBeaconRecord);
  sub_10000B3A8(v123, &unk_1016AF8C0, &unk_1013A07A0);
  sub_10000B3A8(v125, &qword_101698C10, &unk_10138C1E0);
  sub_10000B3A8(v126, &unk_101698C30, &unk_101392630);
  sub_10000A748((v0 + 16), v124);
  sub_10002FF48(v127, type metadata accessor for MemberPeerTrust);

  v43 = *(v0 + 8);
LABEL_17:

  return v43();
}

uint64_t sub_100B4A974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 56) = v4;
  v10 = swift_task_alloc();
  *(v5 + 64) = v10;
  *v10 = v5;
  v10[1] = sub_100B4AA3C;

  return sub_100B48DE8(v5 + 16, a1, a2, a3, a4);
}

uint64_t sub_100B4AA3C()
{
  v2 = *(*v1 + 56);
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_10095CD5C;
  }

  else
  {
    v3 = sub_100B4AB64;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_100B4AB64()
{
  if (qword_101694C50 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BAA0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Post Transparency Notification", v4, 2u);
  }

  swift_unownedRetainStrong();
  v5 = v0[5];
  v6 = v0[6];
  v7 = sub_1000035D0(v0 + 2, v5);
  sub_100E1EF8C(v7, 0, 0, v5, *(v6 + 8));

  sub_100007BAC(v0 + 2);
  v8 = v0[1];

  return v8();
}

void sub_100B4ACC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    v3 = _swiftEmptyArrayStorage;
    v4 = *(a1 + 16);
    do
    {
      sub_1000D2A70(v2, &v27, &qword_1016A9F18, &qword_1013D78F0);
      v23 = v27;
      v24 = v28;
      v25 = v29;
      if (*(&v28 + 1))
      {
        sub_10000A748(&v23, v26);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_100A5BB04(0, v3[2] + 1, 1, v3);
        }

        v6 = v3[2];
        v5 = v3[3];
        if (v6 >= v5 >> 1)
        {
          v3 = sub_100A5BB04((v5 > 1), v6 + 1, 1, v3);
        }

        v3[2] = v6 + 1;
        sub_10000A748(v26, &v3[5 * v6 + 4]);
      }

      else
      {
        sub_10000B3A8(&v23, &qword_1016A9F18, &qword_1013D78F0);
      }

      v2 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v7 = v3[2];
  if (v7)
  {
    v8 = (v3 + 4);
    do
    {
      sub_10001F280(v8, &v27);
      swift_unownedRetainStrong();
      v9 = *(&v28 + 1);
      v10 = v29;
      v11 = sub_1000035D0(&v27, *(&v28 + 1));
      sub_100E1EF8C(v11, 0, 0, v9, *(v10 + 8));

      sub_100007BAC(&v27);
      v8 += 40;
      --v7;
    }

    while (v7);
  }

  if (qword_101694C50 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177BAA0);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v21 = v14;
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    v16 = _swiftEmptyArrayStorage;
    if (v1)
    {
      v17 = a1 + 32;
      do
      {
        sub_1000D2A70(v17, &v27, &qword_1016A9F18, &qword_1013D78F0);
        v23 = v27;
        v24 = v28;
        v25 = v29;
        if (*(&v28 + 1))
        {
          sub_10000A748(&v23, v26);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_100A5BB04(0, v16[2] + 1, 1, v16);
          }

          v19 = v16[2];
          v18 = v16[3];
          if (v19 >= v18 >> 1)
          {
            v16 = sub_100A5BB04((v18 > 1), v19 + 1, 1, v16);
          }

          v16[2] = v19 + 1;
          sub_10000A748(v26, &v16[5 * v19 + 4]);
        }

        else
        {
          sub_10000B3A8(&v23, &qword_1016A9F18, &qword_1013D78F0);
        }

        v17 += 40;
        --v1;
      }

      while (v1);
    }

    v20 = v16[2];

    *(v15 + 4) = v20;

    _os_log_impl(&_mh_execute_header, v13, v21, "postTransparencyNotifications, notifications count = %ld", v15, 0xCu);
  }

  else
  {
  }
}

uint64_t sub_100B4B064(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_100B4B084, 0, 0);
}

uint64_t sub_100B4B084()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_100B4B178;

    return sub_100B4B2BC();
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_100B4B178()
{

  return _swift_task_switch(sub_100B4B290, 0, 0);
}

uint64_t sub_100B4B2DC()
{
  v23 = v0;
  v1 = qword_101698690;
  v0[23] = qword_101698690;
  v2 = v1 + 1;
  if (v1 == -1)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_5;
  }

  if (v2 >= 0x3E8)
  {
    v2 = 1;
  }

  qword_101698690 = v2;
  if (qword_101694C50 != -1)
  {
    goto LABEL_12;
  }

LABEL_5:
  v3 = type metadata accessor for Logger();
  v0[24] = sub_1000076D4(v3, qword_10177BAA0);
  swift_retain_n();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[22];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315650;
    v0[21] = v1;
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = sub_1000136BC(v10, v11, &v22);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    swift_beginAccess();
    v13 = *(*(v7 + 224) + 16);

    *(v8 + 14) = v13;

    *(v8 + 22) = 2048;
    swift_beginAccess();
    v14 = *(*(v7 + 208) + 16);

    *(v8 + 24) = v14;

    _os_log_impl(&_mh_execute_header, v4, v5, "%s Evaluate notification posting for saved records.\nOwned pairs count: %ld, Member pairs count: %ld.", v8, 0x20u);
    sub_100007BAC(v9);
  }

  else
  {
  }

  v15 = v0[22];
  swift_beginAccess();
  v16 = *(v15 + 224);
  v0[25] = v16;
  v0[17] = v16;

  v17 = swift_task_alloc();
  v0[26] = v17;
  v18 = sub_1000BC4D4(&qword_1016B60B0, &qword_1013D7890);
  v19 = sub_100014084(&qword_1016B60B8, &qword_1016B60B0, &qword_1013D7890);
  *v17 = v0;
  v17[1] = sub_100B4B5E8;
  v20 = v0[22];

  return Sequence.asyncForEach(_:)(&unk_1013D7888, v20, v18, v19);
}

uint64_t sub_100B4B5E8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 176);

    return _swift_task_switch(sub_100B4B728, v4, 0);
  }
}

uint64_t sub_100B4B728()
{
  v1 = v0[22];
  swift_beginAccess();
  v2 = *(v1 + 208);
  v0[27] = v2;
  v0[18] = v2;

  v3 = swift_task_alloc();
  v0[28] = v3;
  v4 = sub_1000BC4D4(&qword_1016B60C0, &qword_1013D78A8);
  v5 = sub_100014084(&qword_1016B60C8, &qword_1016B60C0, &qword_1013D78A8);
  *v3 = v0;
  v3[1] = sub_100B4B850;
  v6 = v0[22];

  return Sequence.asyncForEach(_:)(&unk_1013D78A0, v6, v4, v5);
}

uint64_t sub_100B4B850()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 176);

    return _swift_task_switch(sub_100B4B990, v4, 0);
  }
}

uint64_t sub_100B4B990()
{
  v2 = v0[22];
  v1 = v0[23];
  swift_beginAccess();
  v3 = *(v2 + 216);
  v0[29] = v3;
  v0[19] = v3;
  v4 = swift_task_alloc();
  v0[30] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = 0;

  v5 = swift_task_alloc();
  v0[31] = v5;
  v6 = sub_1000BC4D4(&qword_1016B60D0, &qword_1013D78C0);
  v7 = sub_100014084(&qword_1016B60D8, &qword_1016B60D0, &qword_1013D78C0);
  *v5 = v0;
  v5[1] = sub_100B4BAD4;

  return Sequence.asyncForEach(_:)(&unk_1013D78B8, v4, v6, v7);
}

uint64_t sub_100B4BAD4()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 176);

    return _swift_task_switch(sub_100B4BC1C, v4, 0);
  }
}

uint64_t sub_100B4BC1C()
{
  v16 = v0;
  swift_retain_n();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[22];
    v4 = v0[23];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315906;
    v0[20] = v4;
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = sub_1000136BC(v7, v8, &v15);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    v10 = *(v3[28] + 16);

    *(v5 + 14) = v10;

    *(v5 + 22) = 2048;
    v11 = *(v3[26] + 16);

    *(v5 + 24) = v11;

    *(v5 + 32) = 2048;
    v12 = *(v3[27] + 16);

    *(v5 + 34) = v12;

    _os_log_impl(&_mh_execute_header, v1, v2, "%s After notification posting evaluation:\n    ownerCirclePairs: %ld,\n    memberCirclePairs: %ld,\n    sharedBeaconsPairs: %ld.", v5, 0x2Au);
    sub_100007BAC(v6);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100B4BDEC(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v2[7] = sub_1000BC4D4(&unk_1016B1610, &qword_10138CA38);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100B4BEA4, 0, 0);
}

uint64_t sub_100B4BEA4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  sub_1000D2A70(*(v0 + 40), v1, &unk_1016B1610, &qword_10138CA38);
  v3 = *(v2 + 48);
  *(v0 + 104) = v3;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_100B4BF74;
  v5 = *(v0 + 80);

  return sub_100B52794(v5, v1 + v3);
}

uint64_t sub_100B4BF74()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_100B4C314;
  }

  else
  {
    v4 = *(v2 + 80);
    sub_10002FF48(v4 + *(v2 + 104), type metadata accessor for OwnerSharingCircle);
    sub_10000B3A8(v4, &unk_1016AFA00, &qword_10138C4D0);
    v3 = sub_100B4C0C4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100B4C0C4()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  sub_1000D2A70(*(v0 + 40), *(v0 + 72), &unk_1016B1610, &qword_10138CA38);
  *(v0 + 108) = *(v1 + 48);

  return _swift_task_switch(sub_100B4C14C, v2, 0);
}

uint64_t sub_100B4C14C()
{
  v1 = *(v0 + 108);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  sub_1000D2A70(v2, v3, &unk_1016AFA00, &qword_10138C4D0);
  sub_100B5AAA0(v2 + v1, v3 + *(v5 + 48), type metadata accessor for OwnerSharingCircle);
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  swift_beginAccess();
  result = sub_100B58AAC(sub_100B5A9A4, v6, &unk_1016B1610, &qword_10138CA38, sub_10060743C);
  v8 = *(*(v4 + 224) + 16);
  if (v8 < result)
  {
    __break(1u);
  }

  else
  {
    v9 = *(v0 + 108);
    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    sub_100A1A2C0(result, v8);
    swift_endAccess();

    sub_10000B3A8(v11, &unk_1016B1610, &qword_10138CA38);
    sub_10002FF48(v10 + v9, type metadata accessor for OwnerSharingCircle);
    sub_10000B3A8(v10, &unk_1016AFA00, &qword_10138C4D0);

    v12 = *(v0 + 8);

    return v12();
  }

  return result;
}

uint64_t sub_100B4C314()
{
  v1 = *(v0 + 80);
  sub_10002FF48(v1 + *(v0 + 104), type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v1, &unk_1016AFA00, &qword_10138C4D0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100B4C3D4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v2[7] = sub_1000BC4D4(&unk_1016B1630, &qword_10138CA48);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100B4C48C, 0, 0);
}

uint64_t sub_100B4C48C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  sub_1000D2A70(*(v0 + 40), v1, &unk_1016B1630, &qword_10138CA48);
  v3 = *(v2 + 48);
  *(v0 + 104) = v3;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_100B4C55C;
  v5 = *(v0 + 80);

  return sub_100B50908(v5, v1 + v3);
}

uint64_t sub_100B4C55C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_100B4C8FC;
  }

  else
  {
    v4 = *(v2 + 80);
    sub_10002FF48(v4 + *(v2 + 104), type metadata accessor for MemberSharingCircle);
    sub_10000B3A8(v4, &unk_101698BC0, &qword_10138C440);
    v3 = sub_100B4C6AC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100B4C6AC()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  sub_1000D2A70(*(v0 + 40), *(v0 + 72), &unk_1016B1630, &qword_10138CA48);
  *(v0 + 108) = *(v1 + 48);

  return _swift_task_switch(sub_100B4C734, v2, 0);
}

uint64_t sub_100B4C734()
{
  v1 = *(v0 + 108);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  sub_1000D2A70(v2, v3, &unk_101698BC0, &qword_10138C440);
  sub_100B5AAA0(v2 + v1, v3 + *(v5 + 48), type metadata accessor for MemberSharingCircle);
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  swift_beginAccess();
  result = sub_100B58AAC(sub_100B5A984, v6, &unk_1016B1630, &qword_10138CA48, sub_100607414);
  v8 = *(*(v4 + 208) + 16);
  if (v8 < result)
  {
    __break(1u);
  }

  else
  {
    v9 = *(v0 + 108);
    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    sub_100A1A3D0(result, v8);
    swift_endAccess();

    sub_10000B3A8(v11, &unk_1016B1630, &qword_10138CA48);
    sub_10002FF48(v10 + v9, type metadata accessor for MemberSharingCircle);
    sub_10000B3A8(v10, &unk_101698BC0, &qword_10138C440);

    v12 = *(v0 + 8);

    return v12();
  }

  return result;
}

uint64_t sub_100B4C8FC()
{
  v1 = *(v0 + 80);
  sub_10002FF48(v1 + *(v0 + 104), type metadata accessor for MemberSharingCircle);
  sub_10000B3A8(v1, &unk_101698BC0, &qword_10138C440);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100B4C9BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 120) = a4;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 40) = a1;
  *(v4 + 64) = sub_1000BC4D4(&unk_1016B15C0, &unk_1013D7870);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_100B4CA7C, 0, 0);
}

uint64_t sub_100B4CA7C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 120);
  sub_1000D2A70(*(v0 + 40), v1, &unk_1016B15C0, &unk_1013D7870);
  v4 = *(v2 + 48);
  *(v0 + 112) = v4;
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_100B4CB54;
  v6 = *(v0 + 88);
  v7 = *(v0 + 56);

  return sub_100B4CFB8(v6, v1 + v4, v7, v3 & 1);
}

uint64_t sub_100B4CB54()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_100B4CEF8;
  }

  else
  {
    v4 = *(v2 + 88);
    sub_10002FF48(v4 + *(v2 + 112), type metadata accessor for SharedBeaconRecord);
    sub_10000B3A8(v4, &unk_101698C30, &unk_101392630);
    v3 = sub_100B4CCA4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100B4CCA4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  sub_1000D2A70(*(v0 + 40), *(v0 + 80), &unk_1016B15C0, &unk_1013D7870);
  *(v0 + 116) = *(v1 + 48);

  return _swift_task_switch(sub_100B4CD2C, v2, 0);
}

uint64_t sub_100B4CD2C()
{
  v1 = *(v0 + 116);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);
  sub_1000D2A70(v2, v3, &unk_101698C30, &unk_101392630);
  sub_100B5AAA0(v2 + v1, v3 + *(v4 + 48), type metadata accessor for SharedBeaconRecord);
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  swift_beginAccess();
  result = sub_100B58AAC(sub_100B5A964, v6, &unk_1016B15C0, &unk_1013D7870, sub_100607428);
  v8 = *(*(v5 + 216) + 16);
  if (v8 < result)
  {
    __break(1u);
  }

  else
  {
    v9 = *(v0 + 116);
    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    sub_100A1A544(result, v8);
    swift_endAccess();

    sub_10000B3A8(v11, &unk_1016B15C0, &unk_1013D7870);
    sub_10002FF48(v10 + v9, type metadata accessor for SharedBeaconRecord);
    sub_10000B3A8(v10, &unk_101698C30, &unk_101392630);

    v12 = *(v0 + 8);

    return v12();
  }

  return result;
}

uint64_t sub_100B4CEF8()
{
  v1 = *(v0 + 88);
  sub_10002FF48(v1 + *(v0 + 112), type metadata accessor for SharedBeaconRecord);
  sub_10000B3A8(v1, &unk_101698C30, &unk_101392630);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100B4CFB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 676) = a4;
  *(v5 + 176) = a3;
  *(v5 + 184) = v4;
  *(v5 + 192) = sub_1000BC4D4(&qword_1016B60A8, &qword_1013D7868);
  *(v5 + 200) = swift_task_alloc();
  sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  v8 = type metadata accessor for SharedBeaconRecord(0);
  *(v5 + 232) = v8;
  *(v5 + 240) = *(v8 - 8);
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  v9 = type metadata accessor for MemberSharingCircle(0);
  *(v5 + 272) = v9;
  *(v5 + 280) = *(v9 - 8);
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();
  *(v5 + 304) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v5 + 312) = v10;
  v11 = *(v10 - 8);
  *(v5 + 320) = v11;
  *(v5 + 328) = *(v11 + 64);
  *(v5 + 336) = swift_task_alloc();
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  v12 = sub_1000BC4D4(&unk_1016B15C0, &unk_1013D7870);
  *(v5 + 376) = v12;
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = swift_task_alloc();
  v13 = swift_task_alloc();
  *(v5 + 408) = v13;
  sub_1000D2A70(a1, v13, &unk_101698C30, &unk_101392630);
  sub_100B5AAA0(a2, v13 + *(v12 + 48), type metadata accessor for SharedBeaconRecord);

  return _swift_task_switch(sub_100B4D318, v4, 0);
}

uint64_t sub_100B4D318()
{
  v1 = v0[50];
  v2 = v0[47];
  v3 = v0[29];
  sub_1000D2A70(v0[51], v1, &unk_1016B15C0, &unk_1013D7870);
  v4 = v1 + *(v2 + 48);
  LODWORD(v2) = *(v4 + *(v3 + 64));
  sub_10002FF48(v4, type metadata accessor for SharedBeaconRecord);
  sub_10000B3A8(v1, &unk_101698C30, &unk_101392630);
  v5 = v0[51];
  if (v2 == 2)
  {
    v6 = v0[49];
    v7 = v0[46];
    v8 = v0[47];
    v9 = v0[29];
    v10 = v0[30];
    sub_1000D2A70(v0[51], v6, &unk_1016B15C0, &unk_1013D7870);
    v11 = *(v8 + 48);
    sub_1000D2AD8(v6, v7, &unk_101698C30, &unk_101392630);
    v12 = *(v10 + 48);
    v0[52] = v12;
    v0[53] = (v10 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v13 = v12(v7, 1, v9);
    v14 = v0[46];
    if (v13 == 1)
    {
      sub_10002FF48(v6 + v11, type metadata accessor for SharedBeaconRecord);
      sub_10000B3A8(v14, &unk_101698C30, &unk_101392630);
    }

    else
    {
      v15 = *(v14 + *(v3 + 64));
      sub_10002FF48(v0[46], type metadata accessor for SharedBeaconRecord);
      sub_10002FF48(v6 + v11, type metadata accessor for SharedBeaconRecord);
      if (v15 == 4)
      {
        v5 = v0[51];
        v16 = v0[29];
LABEL_7:
        v17 = v0[50];
        v18 = v0[47];
        v19 = v0[43];
        v20 = v0[39];
        v21 = v0[40];
        v22 = *(v0[23] + 136);
        v0[54] = v22;
        sub_1000D2A70(v5, v17, &unk_1016B15C0, &unk_1013D7870);
        v23 = v17 + *(v18 + 48);
        v24 = *(v16 + 20);
        v25 = *(v21 + 16);
        v0[55] = v25;
        v0[56] = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v25(v19, v23 + v24, v20);
        sub_10002FF48(v23, type metadata accessor for SharedBeaconRecord);

        return _swift_task_switch(sub_100B4D6DC, v22, 0);
      }
    }

    v5 = v0[51];
    v16 = v0[29];
    if (v12(v5, 1, v16) == 1)
    {
      goto LABEL_7;
    }
  }

  sub_10000B3A8(v5, &unk_1016B15C0, &unk_1013D7870);

  v26 = v0[1];

  return v26();
}

uint64_t sub_100B4D6DC()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  v4 = *(v0 + 312);
  (*(v0 + 440))(v2, *(v0 + 344), v4);
  v5 = *(v3 + 80);
  *(v0 + 664) = v5;
  v6 = (v5 + 24) & ~v5;
  v7 = swift_allocObject();
  *(v0 + 456) = v7;
  *(v7 + 16) = v1;
  v8 = *(v3 + 32);
  *(v0 + 464) = v8;
  *(v0 + 472) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v8(v7 + v6, v2, v4);

  v9 = swift_task_alloc();
  *(v0 + 480) = v9;
  v10 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v9 = v0;
  v9[1] = sub_100B4D85C;

  return unsafeBlocking<A>(context:_:)(v0 + 96, 0xD000000000000010, 0x800000010134A8C0, sub_10062CA88, v7, v10);
}

uint64_t sub_100B4D85C()
{
  v1 = *(*v0 + 432);

  return _swift_task_switch(sub_100B4D988, v1, 0);
}

uint64_t sub_100B4D988()
{
  v1 = v0[50];
  v2 = v0[43];
  v3 = v0[39];
  v4 = v0[40];
  v5 = v0[23];
  v6 = *(v4 + 8);
  v0[61] = v6;
  v0[62] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  v0[63] = v0[12];
  sub_10000B3A8(v1, &unk_101698C30, &unk_101392630);

  return _swift_task_switch(sub_100B4DA34, v5, 0);
}

uint64_t sub_100B4DA34()
{
  v54 = v0;
  v1 = *(v0 + 504);
  v2 = v1[2];
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  if (v2 >= 2)
  {
    if (qword_101694C50 != -1)
    {
LABEL_30:
      swift_once();
    }

    v4 = *(v0 + 408);
    v5 = *(v0 + 384);
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177BAA0);
    sub_1000D2A70(v4, v5, &unk_1016B15C0, &unk_1013D7870);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 676);
      v10 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v10 = 136315651;
      log = v7;
      v51 = v8;
      v49 = v1;
      if (v9)
      {
        v11 = 0;
        v12 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 168) = *(v0 + 176);
        v11 = dispatch thunk of CustomStringConvertible.description.getter();
        v12 = v14;
      }

      v50 = *(v0 + 488);
      v48 = *(v0 + 440);
      v15 = *(v0 + 400);
      v16 = *(v0 + 376);
      v17 = *(v0 + 384);
      v18 = *(v0 + 344);
      v19 = *(v0 + 312);
      v20 = *(v0 + 232);
      v21 = sub_1000136BC(v11, v12, &v53);

      *(v10 + 4) = v21;
      *(v10 + 12) = 2160;
      *(v10 + 14) = 1752392040;
      *(v10 + 22) = 2081;
      sub_1000D2A70(v17, v15, &unk_1016B15C0, &unk_1013D7870);
      v22 = v15 + *(v16 + 48);
      v48(v18, v22 + *(v20 + 20), v19);
      sub_10002FF48(v22, type metadata accessor for SharedBeaconRecord);
      sub_10000B3A8(v15, &unk_101698C30, &unk_101392630);
      sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      v50(v18, v19);
      sub_10000B3A8(v17, &unk_1016B15C0, &unk_1013D7870);
      v26 = sub_1000136BC(v23, v25, &v53);

      *(v10 + 24) = v26;
      _os_log_impl(&_mh_execute_header, log, v51, "%s Several explicit shares for a beacon %{private,mask.hash}s!", v10, 0x20u);
      swift_arrayDestroy();

      p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
      v1 = v49;
    }

    else
    {
      v13 = *(v0 + 384);

      sub_10000B3A8(v13, &unk_1016B15C0, &unk_1013D7870);
    }

    v2 = v1[2];
  }

  *(v0 + 512) = v2;
  if (v2)
  {
    v27 = 0;
    *(v0 + 668) = *(*(v0 + 280) + 80);
    while (1)
    {
      *(v0 + 520) = v27;
      v29 = *(v0 + 504);
      if (v27 >= *(v29 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v30 = *(v0 + 304);
      v31 = *(v0 + 272);
      v32 = v29 + ((*(v0 + 668) + 32) & ~*(v0 + 668));
      v33 = *(*(v0 + 280) + 72);
      *(v0 + 528) = v33;
      sub_100B5AAA0(v32 + v33 * v27, v30, type metadata accessor for MemberSharingCircle);
      if (!*(v30 + *(v31 + 40)))
      {
        break;
      }

      if (p_weak_ivar_lyt[394] != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_1000076D4(v34, qword_10177BAA0);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v1 = p_weak_ivar_lyt;
        v37 = *(v0 + 676);
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *(v0 + 104) = v39;
        *v38 = 136315138;
        if (v37)
        {
          v40 = 0;
          v41 = 0xE000000000000000;
        }

        else
        {
          *(v0 + 112) = *(v0 + 176);
          v40 = dispatch thunk of CustomStringConvertible.description.getter();
          v41 = v42;
        }

        v43 = *(v0 + 304);
        v44 = sub_1000136BC(v40, v41, (v0 + 104));

        *(v38 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v35, v36, "%s Member sharing circle has been accepted already, skip notification posting.", v38, 0xCu);
        sub_100007BAC(v39);

        sub_10002FF48(v43, type metadata accessor for MemberSharingCircle);
        p_weak_ivar_lyt = v1;
      }

      else
      {
        v28 = *(v0 + 304);

        sub_10002FF48(v28, type metadata accessor for MemberSharingCircle);
      }

      v27 = *(v0 + 520) + 1;
      if (v27 == *(v0 + 512))
      {
        goto LABEL_23;
      }
    }

    v47 = *(v0 + 432);
    *(v0 + 672) = *(*(v0 + 272) + 24);

    return _swift_task_switch(sub_100B4E128, v47, 0);
  }

  else
  {
LABEL_23:

    sub_10000B3A8(*(v0 + 408), &unk_1016B15C0, &unk_1013D7870);

    v45 = *(v0 + 8);

    return v45();
  }
}

uint64_t sub_100B4E128()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 432);
  v3 = *(v0 + 344);
  v4 = *(v0 + 312);
  v5 = (*(v0 + 664) + 24) & ~*(v0 + 664);
  (*(v0 + 440))(v3, *(v0 + 304) + *(v0 + 672), v4);
  v6 = swift_allocObject();
  *(v0 + 536) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 544) = v7;
  *v7 = v0;
  v7[1] = sub_100B4E27C;
  v9 = *(v0 + 352);
  v8 = *(v0 + 360);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100B5AC84, v6, v9);
}

uint64_t sub_100B4E27C()
{
  v1 = *(*v0 + 184);

  return _swift_task_switch(sub_100B4E3A8, v1, 0);
}

uint64_t sub_100B4E3A8()
{
  v1 = *(v0 + 360);
  if ((*(v0 + 416))(v1, 1, *(v0 + 232)) == 1)
  {
    sub_10000B3A8(v1, &unk_101698C30, &unk_101392630);
    if (qword_101694C50 != -1)
    {
LABEL_32:
      swift_once();
    }

    v3 = *(v0 + 296);
    v2 = *(v0 + 304);
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177BAA0);
    sub_100B5AAA0(v2, v3, type metadata accessor for MemberSharingCircle);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 676);
      v8 = swift_slowAlloc();
      *(v0 + 120) = swift_slowAlloc();
      *v8 = 136315651;
      if (v7)
      {
        v9 = 0;
        v10 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 128) = *(v0 + 176);
        v9 = dispatch thunk of CustomStringConvertible.description.getter();
        v10 = v15;
      }

      v43 = *(v0 + 304);
      v16 = *(v0 + 296);
      v17 = sub_1000136BC(v9, v10, (v0 + 120));

      *(v8 + 4) = v17;
      *(v8 + 12) = 2160;
      *(v8 + 14) = 1752392040;
      *(v8 + 22) = 2081;
      sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      sub_10002FF48(v16, type metadata accessor for MemberSharingCircle);
      v21 = sub_1000136BC(v18, v20, (v0 + 120));

      *(v8 + 24) = v21;
      _os_log_impl(&_mh_execute_header, v5, v6, "%s Can't post share suggestion notification, because there is no Shared beacon record available for beacon %{private,mask.hash}s", v8, 0x20u);
      swift_arrayDestroy();

      v14 = v43;
    }

    else
    {
      v13 = *(v0 + 296);
      v12 = *(v0 + 304);

      sub_10002FF48(v13, type metadata accessor for MemberSharingCircle);
      v14 = v12;
    }

    sub_10002FF48(v14, type metadata accessor for MemberSharingCircle);
    v22 = *(v0 + 520) + 1;
    if (v22 == *(v0 + 512))
    {
LABEL_13:

      sub_10000B3A8(*(v0 + 408), &unk_1016B15C0, &unk_1013D7870);

      v23 = *(v0 + 8);

      return v23();
    }

    else
    {
      while (1)
      {
        *(v0 + 520) = v22;
        v26 = *(v0 + 504);
        if (v22 >= *(v26 + 16))
        {
          __break(1u);
          goto LABEL_32;
        }

        v27 = *(v0 + 304);
        v28 = *(v0 + 272);
        v29 = v26 + ((*(v0 + 668) + 32) & ~*(v0 + 668));
        v30 = *(*(v0 + 280) + 72);
        *(v0 + 528) = v30;
        sub_100B5AAA0(v29 + v30 * v22, v27, type metadata accessor for MemberSharingCircle);
        if (!*(v27 + *(v28 + 40)))
        {
          break;
        }

        if (qword_101694C50 != -1)
        {
          swift_once();
        }

        sub_1000076D4(v4, qword_10177BAA0);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = *(v0 + 676);
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *(v0 + 104) = v35;
          *v34 = 136315138;
          if (v33)
          {
            v36 = 0;
            v37 = 0xE000000000000000;
          }

          else
          {
            *(v0 + 112) = *(v0 + 176);
            v36 = dispatch thunk of CustomStringConvertible.description.getter();
            v37 = v38;
          }

          v39 = *(v0 + 304);
          v40 = sub_1000136BC(v36, v37, (v0 + 104));

          *(v34 + 4) = v40;
          _os_log_impl(&_mh_execute_header, v31, v32, "%s Member sharing circle has been accepted already, skip notification posting.", v34, 0xCu);
          sub_100007BAC(v35);

          v25 = v39;
        }

        else
        {
          v24 = *(v0 + 304);

          v25 = v24;
        }

        sub_10002FF48(v25, type metadata accessor for MemberSharingCircle);
        v22 = *(v0 + 520) + 1;
        if (v22 == *(v0 + 512))
        {
          goto LABEL_13;
        }
      }

      v41 = *(v0 + 432);
      *(v0 + 672) = *(*(v0 + 272) + 24);

      return _swift_task_switch(sub_100B4E128, v41, 0);
    }
  }

  else
  {
    sub_100038EDC(v1, *(v0 + 264), type metadata accessor for SharedBeaconRecord);
    v11 = swift_task_alloc();
    *(v0 + 552) = v11;
    *v11 = v0;
    v11[1] = sub_100B4EAC8;

    return daemon.getter();
  }
}

uint64_t sub_100B4EAC8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[70] = a1;

  v3 = swift_task_alloc();
  v2[71] = v3;
  v4 = type metadata accessor for Daemon();
  v2[72] = v4;
  v5 = type metadata accessor for LegacyServiceContainer();
  v6 = sub_100B5AB90(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100B5AB90(&unk_101698D70, 255, type metadata accessor for LegacyServiceContainer, &unk_1014015E0);
  *v3 = v9;
  v3[1] = sub_100B4ECB0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100B4ECB0(uint64_t a1)
{
  v4 = *v2;
  v4[73] = a1;
  v4[74] = v1;

  if (v1)
  {

    v4[80] = v1;
    v5 = v4[23];
    v6 = sub_100B4FA9C;
  }

  else
  {
    v6 = sub_100B4EDF0;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100B4EDF0()
{
  v1 = v0[74];
  sub_10001B108();
  v0[75] = v2;
  v0[76] = v1;
  sub_100B5AB90(&qword_1016969E0, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v5 = sub_100B4FA20;
  }

  else
  {
    v5 = sub_100B4EED0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100B4EED0()
{
  v1 = *(v0 + 184);

  return _swift_task_switch(sub_100B4EF48, v1, 0);
}

uint64_t sub_100B4EF48()
{
  v1 = v0[33];
  v0[5] = v0[29];
  v0[6] = sub_100B5AB90(&qword_101698D80, 255, type metadata accessor for SharedBeaconRecord, &unk_10140BB3C);
  v2 = sub_1000280DC(v0 + 2);
  sub_100B5AAA0(v1, v2, type metadata accessor for SharedBeaconRecord);

  return _swift_task_switch(sub_100B4F018, 0, 0);
}

uint64_t sub_100B4F018()
{
  v1 = *(v0 + 676);
  v2 = *(v0 + 176);
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(v0 + 16, v0 + 56);
  v4 = swift_allocObject();
  *(v0 + 616) = v4;
  sub_10000A748((v0 + 56), v4 + 16);
  *(v4 + 56) = v3;
  *(v4 + 64) = v2;
  *(v4 + 72) = v1 & 1;
  v5 = swift_task_alloc();
  *(v0 + 624) = v5;
  *v5 = v0;
  v5[1] = sub_100B4F154;

  return withTimeout<A>(_:block:)(v5, 0x40AAD21B3B700000, 3, &unk_101390908, v4, &type metadata for () + 1);
}

uint64_t sub_100B4F154()
{
  *(*v1 + 632) = v0;

  if (v0)
  {
    v2 = sub_100B4F608;
  }

  else
  {

    v2 = sub_100B4F270;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100B4F270()
{
  v1 = *(v0 + 184);
  sub_100007BAC((v0 + 16));

  return _swift_task_switch(sub_100B4F2DC, v1, 0);
}

uint64_t sub_100B4F2DC()
{
  if (qword_101694C50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177BAA0);
  sub_100B5AAA0(v2, v1, type metadata accessor for SharedBeaconRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 676);
    v7 = swift_slowAlloc();
    *(v0 + 152) = swift_slowAlloc();
    *v7 = 136315651;
    if (v6)
    {
      v8 = 0;
      v9 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 160) = *(v0 + 176);
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v9 = v11;
    }

    v12 = *(v0 + 256);
    v13 = sub_1000136BC(v8, v9, (v0 + 152));

    *(v7 + 4) = v13;
    *(v7 + 12) = 2160;
    *(v7 + 14) = 1752392040;
    *(v7 + 22) = 2081;
    sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_10002FF48(v12, type metadata accessor for SharedBeaconRecord);
    v17 = sub_1000136BC(v14, v16, (v0 + 152));

    *(v7 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Fetched product info for beacon %{private,mask.hash}s", v7, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v10 = *(v0 + 256);

    sub_10002FF48(v10, type metadata accessor for SharedBeaconRecord);
  }

  v18 = *(v0 + 676);
  v19 = swift_task_alloc();
  *(v0 + 648) = v19;
  *v19 = v0;
  v19[1] = sub_100B4FE38;
  v20 = *(v0 + 304);
  v21 = *(v0 + 176);

  return sub_100B3F2D8(v20, v21, v18 & 1);
}

uint64_t sub_100B4F608()
{
  v1 = *(v0 + 184);

  return _swift_task_switch(sub_100B4F674, v1, 0);
}

uint64_t sub_100B4F674()
{

  sub_100007BAC((v0 + 16));
  if (qword_101694C50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177BAA0);
  sub_100B5AAA0(v1, v2, type metadata accessor for SharedBeaconRecord);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 676);
    v7 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *(v0 + 136) = swift_slowAlloc();
    *v7 = 136315907;
    if (v6)
    {
      v8 = 0;
      v9 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 144) = *(v0 + 176);
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v9 = v11;
    }

    v12 = *(v0 + 248);
    v13 = sub_1000136BC(v8, v9, (v0 + 136));

    *(v7 + 4) = v13;
    *(v7 + 12) = 2160;
    *(v7 + 14) = 1752392040;
    *(v7 + 22) = 2081;
    sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_10002FF48(v12, type metadata accessor for SharedBeaconRecord);
    v17 = sub_1000136BC(v14, v16, (v0 + 136));

    *(v7 + 24) = v17;
    *(v7 + 32) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 34) = v18;
    *v24 = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Failed to fetch product info for beacon %{private,mask.hash}s error = %{public}@!", v7, 0x2Au);
    sub_10000B3A8(v24, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v10 = *(v0 + 248);

    sub_10002FF48(v10, type metadata accessor for SharedBeaconRecord);
  }

  v19 = *(v0 + 676);
  v20 = swift_task_alloc();
  *(v0 + 648) = v20;
  *v20 = v0;
  v20[1] = sub_100B4FE38;
  v21 = *(v0 + 304);
  v22 = *(v0 + 176);

  return sub_100B3F2D8(v21, v22, v19 & 1);
}

uint64_t sub_100B4FA20()
{

  v0[80] = v0[76];
  v1 = v0[23];

  return _swift_task_switch(sub_100B4FA9C, v1, 0);
}

uint64_t sub_100B4FA9C()
{
  if (qword_101694C50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177BAA0);
  sub_100B5AAA0(v1, v2, type metadata accessor for SharedBeaconRecord);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 676);
    v7 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *(v0 + 136) = swift_slowAlloc();
    *v7 = 136315907;
    if (v6)
    {
      v8 = 0;
      v9 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 144) = *(v0 + 176);
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v9 = v11;
    }

    v12 = *(v0 + 248);
    v13 = sub_1000136BC(v8, v9, (v0 + 136));

    *(v7 + 4) = v13;
    *(v7 + 12) = 2160;
    *(v7 + 14) = 1752392040;
    *(v7 + 22) = 2081;
    sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_10002FF48(v12, type metadata accessor for SharedBeaconRecord);
    v17 = sub_1000136BC(v14, v16, (v0 + 136));

    *(v7 + 24) = v17;
    *(v7 + 32) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 34) = v18;
    *v24 = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Failed to fetch product info for beacon %{private,mask.hash}s error = %{public}@!", v7, 0x2Au);
    sub_10000B3A8(v24, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v10 = *(v0 + 248);

    sub_10002FF48(v10, type metadata accessor for SharedBeaconRecord);
  }

  v19 = *(v0 + 676);
  v20 = swift_task_alloc();
  *(v0 + 648) = v20;
  *v20 = v0;
  v20[1] = sub_100B4FE38;
  v21 = *(v0 + 304);
  v22 = *(v0 + 176);

  return sub_100B3F2D8(v21, v22, v19 & 1);
}

uint64_t sub_100B4FE38()
{
  v2 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v3 = *(v2 + 184);
    v4 = sub_100B500FC;
  }

  else
  {
    v5 = *(v2 + 184);

    v4 = sub_100B4FF60;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100B4FF60()
{
  v1 = v0[38];
  sub_10002FF48(v0[33], type metadata accessor for SharedBeaconRecord);
  sub_10002FF48(v1, type metadata accessor for MemberSharingCircle);
  sub_10000B3A8(v0[51], &unk_1016B15C0, &unk_1013D7870);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100B500FC()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 512);
  v3 = sub_10002FF48(*(v0 + 264), type metadata accessor for SharedBeaconRecord);
  if (v2 > *(v1 + 16))
  {
LABEL_31:
    __break(1u);
    return _swift_task_switch(v3, v4, v5);
  }

  v6 = *(v0 + 304);
  v7 = *(v0 + 272);
  v8 = *(v0 + 280);
  v10 = *(v0 + 216);
  v9 = *(v0 + 224);
  v11 = *(v0 + 200);
  v49 = *(v0 + 192);
  sub_100B5AAA0(*(v0 + 504) + ((*(v0 + 668) + 32) & ~*(v0 + 668)) + (*(v0 + 512) - 1) * *(v0 + 528), v9, type metadata accessor for MemberSharingCircle);
  v12 = *(v8 + 56);
  v12(v9, 0, 1, v7);
  sub_100B5AAA0(v6, v10, type metadata accessor for MemberSharingCircle);
  v12(v10, 0, 1, v7);
  v13 = *(v49 + 48);
  sub_1000D2A70(v9, v11, &unk_101698BC0, &qword_10138C440);
  sub_1000D2A70(v10, v11 + v13, &unk_101698BC0, &qword_10138C440);
  v14 = *(v8 + 48);
  v15 = v14(v11, 1, v7);
  v16 = *(v0 + 272);
  if (v15 == 1)
  {
    v17 = *(v0 + 224);
    sub_10000B3A8(*(v0 + 216), &unk_101698BC0, &qword_10138C440);
    sub_10000B3A8(v17, &unk_101698BC0, &qword_10138C440);
    if (v14(v11 + v13, 1, v16) == 1)
    {
      sub_10000B3A8(*(v0 + 200), &unk_101698BC0, &qword_10138C440);
LABEL_23:
      v46 = *(v0 + 408);
      v47 = *(v0 + 304);

      swift_willThrow();
      sub_10002FF48(v47, type metadata accessor for MemberSharingCircle);
      sub_10000B3A8(v46, &unk_1016B15C0, &unk_1013D7870);

      v21 = *(v0 + 8);
      goto LABEL_24;
    }

    goto LABEL_7;
  }

  sub_1000D2A70(*(v0 + 200), *(v0 + 208), &unk_101698BC0, &qword_10138C440);
  if (v14(v11 + v13, 1, v16) == 1)
  {
    v18 = *(v0 + 224);
    v19 = *(v0 + 208);
    sub_10000B3A8(*(v0 + 216), &unk_101698BC0, &qword_10138C440);
    sub_10000B3A8(v18, &unk_101698BC0, &qword_10138C440);
    sub_10002FF48(v19, type metadata accessor for MemberSharingCircle);
LABEL_7:
    sub_10000B3A8(*(v0 + 200), &qword_1016B60A8, &qword_1013D7868);
    goto LABEL_8;
  }

  v40 = *(v0 + 288);
  v42 = *(v0 + 216);
  v41 = *(v0 + 224);
  v44 = *(v0 + 200);
  v43 = *(v0 + 208);
  sub_100038EDC(v11 + v13, v40, type metadata accessor for MemberSharingCircle);
  v45 = sub_1003287CC(v43, v40);
  sub_10002FF48(v40, type metadata accessor for MemberSharingCircle);
  sub_10000B3A8(v42, &unk_101698BC0, &qword_10138C440);
  sub_10000B3A8(v41, &unk_101698BC0, &qword_10138C440);
  sub_10002FF48(v43, type metadata accessor for MemberSharingCircle);
  sub_10000B3A8(v44, &unk_101698BC0, &qword_10138C440);
  if (v45)
  {
    goto LABEL_23;
  }

LABEL_8:
  sub_10002FF48(*(v0 + 304), type metadata accessor for MemberSharingCircle);

  v20 = *(v0 + 520) + 1;
  if (v20 != *(v0 + 512))
  {
    while (1)
    {
      *(v0 + 520) = v20;
      v24 = *(v0 + 504);
      if (v20 >= *(v24 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }

      v25 = *(v0 + 304);
      v26 = *(v0 + 272);
      v27 = v24 + ((*(v0 + 668) + 32) & ~*(v0 + 668));
      v28 = *(*(v0 + 280) + 72);
      *(v0 + 528) = v28;
      sub_100B5AAA0(v27 + v28 * v20, v25, type metadata accessor for MemberSharingCircle);
      if (!*(v25 + *(v26 + 40)))
      {
        break;
      }

      if (qword_101694C50 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_1000076D4(v29, qword_10177BAA0);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = *(v0 + 676);
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *(v0 + 104) = v34;
        *v33 = 136315138;
        if (v32)
        {
          v35 = 0;
          v36 = 0xE000000000000000;
        }

        else
        {
          *(v0 + 112) = *(v0 + 176);
          v35 = dispatch thunk of CustomStringConvertible.description.getter();
          v36 = v37;
        }

        v38 = *(v0 + 304);
        v39 = sub_1000136BC(v35, v36, (v0 + 104));

        *(v33 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v30, v31, "%s Member sharing circle has been accepted already, skip notification posting.", v33, 0xCu);
        sub_100007BAC(v34);

        v23 = v38;
      }

      else
      {
        v22 = *(v0 + 304);

        v23 = v22;
      }

      v3 = sub_10002FF48(v23, type metadata accessor for MemberSharingCircle);
      v20 = *(v0 + 520) + 1;
      if (v20 == *(v0 + 512))
      {
        goto LABEL_9;
      }
    }

    v4 = *(v0 + 432);
    *(v0 + 672) = *(*(v0 + 272) + 24);
    v3 = sub_100B4E128;
    v5 = 0;

    return _swift_task_switch(v3, v4, v5);
  }

LABEL_9:

  sub_10000B3A8(*(v0 + 408), &unk_1016B15C0, &unk_1013D7870);

  v21 = *(v0 + 8);
LABEL_24:

  return v21();
}

uint64_t sub_100B50908(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  *(v3 + 32) = swift_task_alloc();
  v6 = type metadata accessor for MemberPeerTrust(0);
  *(v3 + 40) = v6;
  *(v3 + 48) = *(v6 - 8);
  *(v3 + 56) = swift_task_alloc();
  sub_1000BC4D4(&unk_1016BBF00, &unk_1013D7858);
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();
  sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  *(v3 + 96) = v7;
  v8 = *(v7 - 8);
  *(v3 + 104) = v8;
  *(v3 + 112) = *(v8 + 64);
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  *(v3 + 160) = swift_task_alloc();
  v9 = type metadata accessor for SharedBeaconRecord(0);
  *(v3 + 168) = v9;
  *(v3 + 176) = *(v9 - 8);
  *(v3 + 184) = swift_task_alloc();
  v10 = sub_1000BC4D4(&unk_1016B1630, &qword_10138CA48);
  *(v3 + 192) = v10;
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  v11 = swift_task_alloc();
  *(v3 + 232) = v11;
  sub_1000D2A70(a1, v11, &unk_101698BC0, &qword_10138C440);
  v12 = *(v10 + 48);
  *(v3 + 384) = v12;
  sub_100B5AAA0(a2, v11 + v12, type metadata accessor for MemberSharingCircle);

  return _swift_task_switch(sub_100B50C88, v2, 0);
}

uint64_t sub_100B50C88()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[24];
  v4 = v0[18];
  v5 = v0[12];
  v6 = v0[13];
  v7 = *(v0[2] + 136);
  v0[30] = v7;
  sub_1000D2A70(v1, v2, &unk_1016B1630, &qword_10138CA48);
  v8 = v2 + *(v3 + 48);
  v9 = type metadata accessor for MemberSharingCircle(0);
  v0[31] = v9;
  v10 = *(v9 + 24);
  v11 = *(v6 + 16);
  v0[32] = v11;
  v0[33] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v4, v8 + v10, v5);
  sub_10002FF48(v8, type metadata accessor for MemberSharingCircle);

  return _swift_task_switch(sub_100B50D88, v7, 0);
}

uint64_t sub_100B50D88()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 136);
  v3 = *(v0 + 104);
  v4 = *(v0 + 96);
  (*(v0 + 256))(v2, *(v0 + 144), v4);
  v5 = *(v3 + 80);
  *(v0 + 388) = v5;
  v6 = (v5 + 24) & ~v5;
  v7 = swift_allocObject();
  *(v0 + 272) = v7;
  *(v7 + 16) = v1;
  v8 = *(v3 + 32);
  *(v0 + 280) = v8;
  *(v0 + 288) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v8(v7 + v6, v2, v4);

  v9 = swift_task_alloc();
  *(v0 + 296) = v9;
  *v9 = v0;
  v9[1] = sub_100B50EF0;
  v11 = *(v0 + 152);
  v10 = *(v0 + 160);

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_100B5A754, v7, v11);
}

uint64_t sub_100B50EF0()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 104);
  v5 = *(*v0 + 96);
  v6 = *(*v0 + 16);

  v7 = *(v4 + 8);
  *(v1 + 304) = v7;
  *(v1 + 312) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v3, v5);
  sub_10000B3A8(v2, &unk_101698BC0, &qword_10138C440);

  return _swift_task_switch(sub_100B510C0, v6, 0);
}

uint64_t sub_100B510C0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);
  if ((*(*(v0 + 176) + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(*(v0 + 232), &unk_1016B1630, &qword_10138CA48);
    v3 = &unk_101698C30;
    v4 = &unk_101392630;
LABEL_10:
    sub_10000B3A8(v2, v3, v4);

    v25 = *(v0 + 8);

    return v25();
  }

  v5 = *(v0 + 184);
  sub_100038EDC(v2, v5, type metadata accessor for SharedBeaconRecord);
  if (*(v5 + *(v1 + 64)) != 2)
  {
    v2 = *(v0 + 232);
    sub_10002FF48(*(v0 + 184), type metadata accessor for SharedBeaconRecord);
    v3 = &unk_1016B1630;
    v4 = &qword_10138CA48;
    goto LABEL_10;
  }

  v6 = *(v0 + 248);
  v7 = *(v0 + 216);
  v8 = *(v0 + 192);
  v9 = *(v0 + 88);
  sub_1000D2A70(*(v0 + 232), v7, &unk_1016B1630, &qword_10138CA48);
  v10 = *(v8 + 48);
  sub_1000D2AD8(v7, v9, &unk_101698BC0, &qword_10138C440);
  v11 = *(*(v6 - 8) + 48);
  if (v11(v9, 1, v6) == 1)
  {
    v12 = *(v0 + 232);
    v13 = *(v0 + 208);
    v14 = *(v0 + 192);
    v15 = *(v0 + 88);
    sub_10002FF48(v7 + v10, type metadata accessor for MemberSharingCircle);
    sub_10000B3A8(v15, &unk_101698BC0, &qword_10138C440);
    sub_1000D2A70(v12, v13, &unk_1016B1630, &qword_10138CA48);
    sub_10002FF48(v13 + *(v14 + 48), type metadata accessor for MemberSharingCircle);
    goto LABEL_8;
  }

  v75 = v11;
  v16 = *(v0 + 248);
  v17 = *(v0 + 232);
  v18 = *(v0 + 208);
  v19 = *(v0 + 192);
  v20 = *(v0 + 88);
  v21 = *(v20 + *(v16 + 40));
  sub_10002FF48(v20, type metadata accessor for MemberSharingCircle);
  sub_10002FF48(v7 + v10, type metadata accessor for MemberSharingCircle);
  sub_1000D2A70(v17, v18, &unk_1016B1630, &qword_10138CA48);
  v22 = v18 + *(v19 + 48);
  v23 = *(v22 + *(v16 + 40));
  sub_10002FF48(v22, type metadata accessor for MemberSharingCircle);
  if (v21 != 1 || v23 != 1)
  {
LABEL_8:
    v24 = *(v0 + 184);
LABEL_9:
    sub_10002FF48(v24, type metadata accessor for SharedBeaconRecord);
    v2 = *(v0 + 208);
    sub_10000B3A8(*(v0 + 232), &unk_1016B1630, &qword_10138CA48);
    v3 = &unk_101698BC0;
    v4 = &qword_10138C440;
    goto LABEL_10;
  }

  v27 = *(v0 + 248);
  v29 = *(v0 + 192);
  v28 = *(v0 + 200);
  v30 = *(v0 + 80);
  sub_1000D2A70(*(v0 + 232), v28, &unk_1016B1630, &qword_10138CA48);
  v31 = *(v29 + 48);
  sub_1000D2AD8(v28, v30, &unk_101698BC0, &qword_10138C440);
  if (v75(v30, 1, v27) == 1)
  {
    v32 = *(v0 + 80);
    sub_10002FF48(v28 + v31, type metadata accessor for MemberSharingCircle);
    sub_10000B3A8(v32, &unk_101698BC0, &qword_10138C440);
    v33 = sub_100908888(_swiftEmptyArrayStorage);
  }

  else
  {
    v34 = *(v0 + 80);
    v33 = *(v34 + *(*(v0 + 248) + 36));

    sub_10002FF48(v34, type metadata accessor for MemberSharingCircle);
    sub_10002FF48(v28 + v31, type metadata accessor for MemberSharingCircle);
  }

  *(v0 + 320) = v33;
  v35 = *(v0 + 248);
  v36 = *(v0 + 224);
  v37 = *(v0 + 192);
  sub_1000D2A70(*(v0 + 232), v36, &unk_1016B1630, &qword_10138CA48);
  v38 = v36 + *(v37 + 48);
  *(v0 + 328) = *(v38 + *(v35 + 36));

  sub_10002FF48(v38, type metadata accessor for MemberSharingCircle);
  v39 = sub_10000B3A8(v36, &unk_101698BC0, &qword_10138C440);
  v42 = 0;
  v43 = *(v33 + 32);
  *(v0 + 392) = v43;
  v44 = 1 << v43;
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v33 + 64);
  v47 = &qword_1016AAE68;
  v48 = &unk_1013BEB10;
  while (v46)
  {
    v49 = *(v0 + 320);
LABEL_31:
    v74 = *(v0 + 280);
    v54 = *(v0 + 144);
    v55 = *(v0 + 96);
    v56 = *(v0 + 64);
    v57 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
    v58 = v57 | (v42 << 6);
    (*(v0 + 256))(v54, *(v49 + 48) + *(*(v0 + 104) + 72) * v58, v55);
    v73 = *(*(v49 + 56) + v58);
    v59 = sub_1000BC4D4(v47, v48);
    v60 = v48;
    v61 = v47;
    v62 = *(v59 + 48);
    v74(v56, v54, v55);
    *(v56 + v62) = v73;
    v47 = v61;
    v48 = v60;
    (*(*(v59 - 8) + 56))(v56, 0, 1, v59);
LABEL_32:
    *(v0 + 336) = v46;
    *(v0 + 344) = v42;
    v63 = *(v0 + 72);
    sub_1000D2AD8(*(v0 + 64), v63, &unk_1016BBF00, &unk_1013D7858);
    v64 = sub_1000BC4D4(v47, v48);
    v65 = (*(*(v64 - 8) + 48))(v63, 1, v64);
    v66 = *(v0 + 328);
    if (v65 == 1)
    {
      v72 = *(v0 + 184);

      v24 = v72;
      goto LABEL_9;
    }

    v67 = *(*(v0 + 72) + *(v64 + 48));
    (*(v0 + 280))(*(v0 + 128));
    if (*(v66 + 16))
    {
      v68 = sub_1000210EC(*(v0 + 128));
      if ((v69 & 1) != 0 && !v67 && *(*(*(v0 + 328) + 56) + v68) == 1)
      {
        v40 = *(v0 + 240);
        v39 = sub_100B518FC;
        v41 = 0;

        return _swift_task_switch(v39, v40, v41);
      }
    }

    v39 = (*(v0 + 304))(*(v0 + 128), *(v0 + 96));
  }

  v50 = ((1 << *(v0 + 392)) + 63) >> 6;
  if (v50 <= (v42 + 1))
  {
    v51 = v42 + 1;
  }

  else
  {
    v51 = ((1 << *(v0 + 392)) + 63) >> 6;
  }

  v52 = v51 - 1;
  while (1)
  {
    v53 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v53 >= v50)
    {
      v70 = *(v0 + 64);
      v71 = sub_1000BC4D4(v47, v48);
      (*(*(v71 - 8) + 56))(v70, 1, 1, v71);
      v46 = 0;
      v42 = v52;
      goto LABEL_32;
    }

    v49 = *(v0 + 320);
    v46 = *(v49 + 8 * v53 + 64);
    ++v42;
    if (v46)
    {
      v42 = v53;
      goto LABEL_31;
    }
  }

  __break(1u);
  return _swift_task_switch(v39, v40, v41);
}

uint64_t sub_100B518FC()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 240);
  v3 = *(v0 + 144);
  v4 = *(v0 + 96);
  v5 = (*(v0 + 388) + 24) & ~*(v0 + 388);
  (*(v0 + 256))(v3, *(v0 + 128), v4);
  v6 = swift_allocObject();
  *(v0 + 352) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 360) = v7;
  *v7 = v0;
  v7[1] = sub_100B51A4C;
  v9 = *(v0 + 24);
  v8 = *(v0 + 32);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100B5A76C, v6, v9);
}

uint64_t sub_100B51A4C()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_100B51B78, v1, 0);
}

uint64_t sub_100B51B78()
{
  v37 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);
  if ((*(*(v0 + 48) + 48))(v2, 1, v1) == 1)
  {

    sub_10000B3A8(v2, &qword_101698C10, &unk_10138C1E0);
    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 256);
    v4 = *(v0 + 120);
    v5 = *(v0 + 128);
    v6 = *(v0 + 96);
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177BAA0);
    v3(v4, v5, v6);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 304);
    v12 = *(v0 + 120);
    v13 = *(v0 + 96);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v36 = v15;
      *v14 = 136380675;
      sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      v11(v12, v13);
      v19 = sub_1000136BC(v16, v18, &v36);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "Can't post transparency notification due to no member peer trust for %{private}s identifier.", v14, 0xCu);
      sub_100007BAC(v15);
    }

    else
    {

      v11(v12, v13);
    }

    v29 = *(v0 + 304);
    v30 = *(v0 + 232);
    v31 = *(v0 + 184);
    v32 = *(v0 + 128);
    v33 = *(v0 + 96);
    sub_100B58A3C();
    swift_allocError();
    *v34 = 0;
    swift_willThrow();

    v29(v32, v33);
    sub_10002FF48(v31, type metadata accessor for SharedBeaconRecord);
    sub_10000B3A8(v30, &unk_1016B1630, &qword_10138CA48);
    sub_10000B3A8(*(v0 + 208), &unk_101698BC0, &qword_10138C440);

    v35 = *(v0 + 8);

    return v35();
  }

  else
  {
    v20 = *(v0 + 384);
    v21 = *(v0 + 232);
    v22 = *(v0 + 56);
    sub_100038EDC(v2, v22, type metadata accessor for MemberPeerTrust);
    v23 = *(v1 + 20);
    v24 = (v22 + *(v1 + 32));
    v26 = *v24;
    v25 = v24[1];
    v27 = swift_task_alloc();
    *(v0 + 368) = v27;
    *v27 = v0;
    v27[1] = sub_100B52018;

    return sub_100B4A974(v21 + v20, v22 + v23, v26, v25);
  }
}

uint64_t sub_100B52018()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);

    v4 = sub_100B525B8;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 16);
    v4 = sub_100B52140;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100B52140()
{
  v1 = *(v0 + 56);
  (*(v0 + 304))(*(v0 + 128), *(v0 + 96));
  v2 = sub_10002FF48(v1, type metadata accessor for MemberPeerTrust);
  v5 = *(v0 + 336);
  v6 = *(v0 + 344);
  v7 = &qword_1016AAE68;
  v8 = &unk_1013BEB10;
  while (1)
  {
    if (!v5)
    {
      v10 = ((1 << *(v0 + 392)) + 63) >> 6;
      if (v10 <= (v6 + 1))
      {
        v11 = v6 + 1;
      }

      else
      {
        v11 = ((1 << *(v0 + 392)) + 63) >> 6;
      }

      v12 = v11 - 1;
      while (1)
      {
        v13 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v13 >= v10)
        {
          v30 = *(v0 + 64);
          v31 = sub_1000BC4D4(v7, v8);
          (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
          v5 = 0;
          v6 = v12;
          goto LABEL_14;
        }

        v9 = *(v0 + 320);
        v5 = *(v9 + 8 * v13 + 64);
        ++v6;
        if (v5)
        {
          v6 = v13;
          goto LABEL_13;
        }
      }

      __break(1u);
      return _swift_task_switch(v2, v3, v4);
    }

    v9 = *(v0 + 320);
LABEL_13:
    v37 = *(v0 + 280);
    v14 = *(v0 + 144);
    v15 = *(v0 + 96);
    v16 = *(v0 + 64);
    v17 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v18 = v17 | (v6 << 6);
    (*(v0 + 256))(v14, *(v9 + 48) + *(*(v0 + 104) + 72) * v18, v15);
    v36 = *(*(v9 + 56) + v18);
    v19 = sub_1000BC4D4(v7, v8);
    v20 = v8;
    v21 = v7;
    v22 = *(v19 + 48);
    v37(v16, v14, v15);
    *(v16 + v22) = v36;
    v7 = v21;
    v8 = v20;
    (*(*(v19 - 8) + 56))(v16, 0, 1, v19);
LABEL_14:
    *(v0 + 336) = v5;
    *(v0 + 344) = v6;
    v23 = *(v0 + 72);
    sub_1000D2AD8(*(v0 + 64), v23, &unk_1016BBF00, &unk_1013D7858);
    v24 = sub_1000BC4D4(v7, v8);
    v25 = (*(*(v24 - 8) + 48))(v23, 1, v24);
    v26 = *(v0 + 328);
    if (v25 == 1)
    {
      break;
    }

    v27 = *(*(v0 + 72) + *(v24 + 48));
    (*(v0 + 280))(*(v0 + 128));
    if (*(v26 + 16))
    {
      v28 = sub_1000210EC(*(v0 + 128));
      if ((v29 & 1) != 0 && !v27 && *(*(*(v0 + 328) + 56) + v28) == 1)
      {
        v3 = *(v0 + 240);
        v2 = sub_100B518FC;
        v4 = 0;

        return _swift_task_switch(v2, v3, v4);
      }
    }

    v2 = (*(v0 + 304))(*(v0 + 128), *(v0 + 96));
  }

  v32 = *(v0 + 184);

  sub_10002FF48(v32, type metadata accessor for SharedBeaconRecord);
  v33 = *(v0 + 208);
  sub_10000B3A8(*(v0 + 232), &unk_1016B1630, &qword_10138CA48);
  sub_10000B3A8(v33, &unk_101698BC0, &qword_10138C440);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_100B525B8()
{
  v1 = v0[38];
  v2 = v0[29];
  v3 = v0[23];
  v4 = v0[16];
  v5 = v0[12];
  v6 = v0[7];

  v1(v4, v5);
  sub_10002FF48(v3, type metadata accessor for SharedBeaconRecord);
  sub_10000B3A8(v2, &unk_1016B1630, &qword_10138CA48);
  sub_10002FF48(v6, type metadata accessor for MemberPeerTrust);
  sub_10000B3A8(v0[26], &unk_101698BC0, &qword_10138C440);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100B52794(uint64_t a1, uint64_t a2)
{
  *(v3 + 24) = v2;
  v6 = type metadata accessor for UUID();
  *(v3 + 32) = v6;
  v7 = *(v6 - 8);
  *(v3 + 40) = v7;
  *(v3 + 48) = *(v7 + 64);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  v8 = sub_1000BC4D4(&unk_1016B1610, &qword_10138CA38);
  *(v3 + 72) = v8;
  *(v3 + 80) = swift_task_alloc();
  v9 = swift_task_alloc();
  *(v3 + 88) = v9;
  sub_1000D2A70(a1, v9, &unk_1016AFA00, &qword_10138C4D0);
  v10 = *(v8 + 48);
  *(v3 + 168) = v10;
  sub_100B5AAA0(a2, v9 + v10, type metadata accessor for OwnerSharingCircle);

  return _swift_task_switch(sub_100B52918, v2, 0);
}

uint64_t sub_100B52918()
{
  v1 = v0[11];
  v2 = type metadata accessor for OwnerSharingCircle(0);
  if ((*(*(v2 - 1) + 48))(v1, 1, v2) == 1 && (v4 = v0[9], v3 = v0[10], sub_1000D2A70(v1, v3, &unk_1016B1610, &qword_10138CA38), v5 = v3 + *(v4 + 48), LODWORD(v4) = *(v5 + v2[7]), sub_10002FF48(v5, type metadata accessor for OwnerSharingCircle), sub_10000B3A8(v3, &unk_1016AFA00, &qword_10138C4D0), v1 = v0[11], v4 == 2) && (v7 = v0[9], v6 = v0[10], sub_1000D2A70(v0[11], v6, &unk_1016B1610, &qword_10138CA38), v8 = v6 + *(v7 + 48), LODWORD(v7) = *(v8 + v2[9]), sub_10002FF48(v8, type metadata accessor for OwnerSharingCircle), sub_10000B3A8(v6, &unk_1016AFA00, &qword_10138C4D0), v1 = v0[11], v7 == 2))
  {
    v10 = v0[9];
    v9 = v0[10];
    v11 = v0[8];
    v12 = v0[4];
    v13 = v0[5];
    v14 = v0[3];
    sub_100B5A68C();
    sub_100B5A6E0();
    v15 = static CaseIterable<>.allMembers.getter();
    v0[12] = sub_100616F34(&off_10160D050, v15);
    v16 = *(v14 + 136);
    v0[13] = v16;
    sub_1000D2A70(v1, v9, &unk_1016B1610, &qword_10138CA38);
    v17 = v9 + *(v10 + 48);
    v18 = v2[6];
    v19 = *(v13 + 16);
    v0[14] = v19;
    v0[15] = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v19(v11, v17 + v18, v12);
    sub_10002FF48(v17, type metadata accessor for OwnerSharingCircle);

    return _swift_task_switch(sub_100B52BFC, v16, 0);
  }

  else
  {
    sub_10000B3A8(v1, &unk_1016B1610, &qword_10138CA38);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_100B52BFC()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 56);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 32);
  (*(v0 + 112))(v3, *(v0 + 64), v6);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = (v4 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v0 + 128) = v9;
  *(v9 + 16) = v1;
  (*(v5 + 32))(v9 + v7, v3, v6);
  *(v9 + v8) = v2;

  v10 = swift_task_alloc();
  *(v0 + 136) = v10;
  v11 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v10 = v0;
  v10[1] = sub_100B52D80;

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1001BD71C, v9, v11);
}

uint64_t sub_100B52D80()
{
  v1 = *(*v0 + 104);

  return _swift_task_switch(sub_100B52EAC, v1, 0);
}

uint64_t sub_100B52EAC()
{
  v1 = v0[10];
  v2 = v0[3];
  (*(v0[5] + 8))(v0[8], v0[4]);
  v0[18] = v0[2];
  sub_10000B3A8(v1, &unk_1016AFA00, &qword_10138C4D0);

  return _swift_task_switch(sub_100B52F4C, v2, 0);
}

uint64_t sub_100B52F4C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 88);
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  v4 = sub_10013CF58(sub_100B5A734, v3, v1);

  v5 = v4[2];

  if (v5)
  {
    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177BAA0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Beacon already requested by the sharee!", v9, 2u);
    }

    sub_10000B3A8(*(v0 + 88), &unk_1016B1610, &qword_10138CA38);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 168);
    v13 = *(v0 + 88);
    v14 = swift_task_alloc();
    *(v0 + 152) = v14;
    *v14 = v0;
    v14[1] = sub_100B53190;

    return sub_100B419CC(v13 + v12, 0, 0, 0);
  }
}

uint64_t sub_100B53190()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100B53360;
  }

  else
  {
    v4 = sub_100B532BC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100B532BC()
{
  sub_10000B3A8(*(v0 + 88), &unk_1016B1610, &qword_10138CA38);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B53360()
{
  sub_10000B3A8(*(v0 + 88), &unk_1016B1610, &qword_10138CA38);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B53404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v20 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_1016B1610, &qword_10138CA38);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for OwnerSharingCircle(0);
  v10 = *(a1 + v9[8]);
  v21 = a2;
  sub_1000D2A70(a2, v8, &unk_1016B1610, &qword_10138CA38);
  v11 = &v8[*(v6 + 48)];
  v12 = *(v11 + v9[8]);

  sub_10002FF48(v11, type metadata accessor for OwnerSharingCircle);
  v13 = sub_100DE7CB4(v10, v12);

  sub_10000B3A8(v8, &unk_1016AFA00, &qword_10138C4D0);
  v14 = 0;
  if (*(a1 + v9[9]) == 2 && (v13 & 1) != 0)
  {
    sub_1000D2A70(v21, v8, &unk_1016B1610, &qword_10138CA38);
    v15 = &v8[*(v6 + 48)];
    v16 = v22;
    v17 = v20;
    (*(v22 + 16))(v20, v15 + v9[5], v4);
    sub_10002FF48(v15, type metadata accessor for OwnerSharingCircle);
    sub_100B5AB90(&qword_1016984A0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    LOBYTE(v15) = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v16 + 8))(v17, v4);
    v14 = v15 ^ 1;
    sub_10000B3A8(v8, &unk_1016AFA00, &qword_10138C4D0);
  }

  return v14 & 1;
}

uint64_t sub_100B536D0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for DelegatedShareStartUserNotification(0);
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v2[11] = *(v4 + 64);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v2[15] = swift_task_alloc();
  v5 = type metadata accessor for MemberSharingCircle(0);
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_100B5386C, v1, 0);
}

uint64_t sub_100B5386C()
{
  v1 = *(*(v0 + 48) + 136);
  *(v0 + 152) = v1;
  return _swift_task_switch(sub_100B53890, v1, 0);
}

uint64_t sub_100B53890()
{
  v1 = v0[19];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[9];
  v5 = v0[5];
  v6 = *(v3 + 16);
  v0[20] = v6;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[22] = v8;
  *(v8 + 16) = v1;
  (*(v3 + 32))(v8 + v7, v2, v4);

  v9 = swift_task_alloc();
  v0[23] = v9;
  *v9 = v0;
  v9[1] = sub_100B53A00;
  v11 = v0[14];
  v10 = v0[15];

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_100B5A674, v8, v11);
}

uint64_t sub_100B53A00()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_100B53B2C, v1, 0);
}

uint64_t sub_100B53B2C()
{
  v1 = v0[16];
  v2 = v0[15];
  if ((*(v0[17] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_101698BC0, &qword_10138C440);
    sub_100B58A3C();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[18];
    sub_100038EDC(v2, v6, type metadata accessor for MemberSharingCircle);
    v7 = *(v1 + 24);
    v8 = swift_task_alloc();
    v0[24] = v8;
    *v8 = v0;
    v8[1] = sub_100B53CEC;

    return sub_100B57904(v6 + v7);
  }
}

uint64_t sub_100B53CEC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v5 = v3[6];
  v4[25] = a2;

  return _swift_task_switch(sub_100B53E08, v5, 0);
}

uint64_t sub_100B53E08()
{
  v29 = v0;
  v1 = *(v0 + 200);
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 64);
    v4 = *(v0 + 56);
    (*(v0 + 160))(v3, *(v0 + 40), *(v0 + 72));
    v5 = (v3 + *(v4 + 20));
    *v5 = v2;
    v5[1] = v1;
    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 160);
    v7 = *(v0 + 96);
    v8 = *(v0 + 72);
    v9 = *(v0 + 40);
    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177BAA0);
    v6(v7, v9, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 96);
    v15 = *(v0 + 72);
    v16 = *(v0 + 80);
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28 = v18;
      *v17 = 141558275;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v16 + 8))(v14, v15);
      v22 = sub_1000136BC(v19, v21, &v28);

      *(v17 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v11, v12, "Post transparency notification for delegation start, share id: %{private,mask.hash}s", v17, 0x16u);
      sub_100007BAC(v18);
    }

    else
    {

      (*(v16 + 8))(v14, v15);
    }

    v25 = *(v0 + 144);
    v26 = *(v0 + 64);
    swift_unownedRetainStrong();
    sub_100B58F18(v26, 0, 0);

    sub_10002FF48(v26, type metadata accessor for DelegatedShareStartUserNotification);
    sub_10002FF48(v25, type metadata accessor for MemberSharingCircle);

    v24 = *(v0 + 8);
  }

  else
  {
    sub_10002FF48(*(v0 + 144), type metadata accessor for MemberSharingCircle);
    sub_100B58A3C();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();

    v24 = *(v0 + 8);
  }

  return v24();
}

uint64_t sub_100B541A8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for OwnerSharingCircle(0);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for DelegatedShareExpirationUserNotification(0);
  v2[9] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169D398, &qword_10139ADE8);
  v2[10] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v2[11] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v2[14] = *(v4 + 64);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_100B543A0, v1, 0);
}

uint64_t sub_100B543A0()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 24) + 136);
  *(v0 + 152) = v2;
  *(v0 + 208) = *(v1 + 24);
  return _swift_task_switch(sub_100B543CC, v2, 0);
}

uint64_t sub_100B543CC()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 96);
  v6 = *(v0 + 16);
  v7 = *(v4 + 16);
  *(v0 + 160) = v7;
  *(v0 + 168) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6 + v1, v5);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v0 + 176) = v9;
  *(v9 + 16) = v2;
  v10 = *(v4 + 32);
  *(v0 + 184) = v10;
  *(v0 + 192) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v3, v5);

  v11 = swift_task_alloc();
  *(v0 + 200) = v11;
  *v11 = v0;
  v11[1] = sub_100B54550;
  v13 = *(v0 + 136);
  v12 = *(v0 + 144);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100B5AC80, v9, v13);
}

uint64_t sub_100B54550()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_100B5467C, v1, 0);
}

uint64_t sub_100B5467C()
{
  v74 = v0;
  v1 = *(v0 + 144);
  v2 = type metadata accessor for BeaconNamingRecord(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_1016B29E0, &unk_1013B70E0);
    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 40);
    v4 = *(v0 + 16);
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177BAA0);
    sub_100B5AAA0(v4, v3, type metadata accessor for OwnerSharingCircle);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 40);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v73[0] = v10;
      *v9 = 141558275;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      sub_10002FF48(v8, type metadata accessor for OwnerSharingCircle);
      v14 = sub_1000136BC(v11, v13, v73);

      *(v9 + 14) = v14;
      v15 = "Error posting notification for expired delegation - invalid beacon name %{private,mask.hash}s";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v6, v7, v15, v9, 0x16u);
      sub_100007BAC(v10);

LABEL_18:
      sub_100B58A3C();
      swift_allocError();
      *v44 = 0;
      swift_willThrow();

      v45 = *(v0 + 8);
      goto LABEL_19;
    }

    v29 = *(v0 + 40);
    goto LABEL_17;
  }

  v16 = *(v0 + 80);
  v17 = *(v0 + 16);
  v18 = (v1 + *(v2 + 32));
  v20 = *v18;
  v19 = v18[1];

  sub_10002FF48(v1, type metadata accessor for BeaconNamingRecord);
  v21 = sub_10016632C();
  v22 = swift_task_alloc();
  *(v22 + 16) = v17;
  v23 = sub_1001BE474(_swiftEmptyDictionarySingleton, sub_100B5AC54, v22, v21);

  sub_10112C704(v23, v16);

  v24 = sub_1000BC4D4(&qword_101698C18, &qword_101390740);
  if ((*(*(v24 - 8) + 48))(v16, 1, v24) == 1)
  {
    v25 = *(v0 + 96);
    v26 = *(v0 + 104);
    v28 = *(v0 + 80);
    v27 = *(v0 + 88);

    sub_10000B3A8(v28, &qword_10169D398, &qword_10139ADE8);
    (*(v26 + 56))(v27, 1, 1, v25);
LABEL_11:
    sub_10000B3A8(*(v0 + 88), &qword_1016980D0, &unk_10138F3B0);
    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v36 = *(v0 + 48);
    v37 = *(v0 + 16);
    v38 = type metadata accessor for Logger();
    sub_1000076D4(v38, qword_10177BAA0);
    sub_100B5AAA0(v37, v36, type metadata accessor for OwnerSharingCircle);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v39 = *(v0 + 48);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v73[0] = v10;
      *v9 = 141558275;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      sub_10002FF48(v39, type metadata accessor for OwnerSharingCircle);
      v43 = sub_1000136BC(v40, v42, v73);

      *(v9 + 14) = v43;
      v15 = "Error posting notification for expired delegation - invalid client share identifier %{private,mask.hash}s";
      goto LABEL_15;
    }

    v29 = *(v0 + 48);
LABEL_17:

    sub_10002FF48(v29, type metadata accessor for OwnerSharingCircle);
    goto LABEL_18;
  }

  v30 = *(v0 + 96);
  v31 = *(v0 + 104);
  v33 = *(v0 + 80);
  v32 = *(v0 + 88);
  v34 = *(v24 + 48);
  (*(v0 + 184))(v32, v33, v30);
  (*(v31 + 56))(v32, 0, 1, v30);
  v35 = *(v31 + 8);
  v35(v33 + v34, v30);
  if ((*(v31 + 48))(v32, 1, v30) == 1)
  {

    goto LABEL_11;
  }

  v72 = v35;
  v47 = *(v0 + 160);
  v71 = v20;
  v48 = *(v0 + 208);
  v49 = *(v0 + 120);
  v50 = *(v0 + 96);
  v52 = *(v0 + 64);
  v51 = *(v0 + 72);
  v53 = *(v0 + 16);
  (*(v0 + 184))(v49, *(v0 + 88), v50);
  v47(v51, v49, v50);
  v47(v51 + *(v52 + 20), v53 + v48, v50);
  v54 = (v51 + *(v52 + 24));
  *v54 = v71;
  v54[1] = v19;
  if (qword_101694C50 != -1)
  {
    swift_once();
  }

  v55 = *(v0 + 56);
  v56 = *(v0 + 16);
  v57 = type metadata accessor for Logger();
  sub_1000076D4(v57, qword_10177BAA0);
  sub_100B5AAA0(v56, v55, type metadata accessor for OwnerSharingCircle);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = *(v0 + 56);
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v73[0] = v62;
    *v61 = 141558275;
    *(v61 + 4) = 1752392040;
    *(v61 + 12) = 2081;
    sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    v65 = v64;
    sub_10002FF48(v60, type metadata accessor for OwnerSharingCircle);
    v66 = sub_1000136BC(v63, v65, v73);

    *(v61 + 14) = v66;
    _os_log_impl(&_mh_execute_header, v58, v59, "Post transparency notification for expired Delegation %{private,mask.hash}s", v61, 0x16u);
    sub_100007BAC(v62);
  }

  else
  {
    v67 = *(v0 + 56);

    sub_10002FF48(v67, type metadata accessor for OwnerSharingCircle);
  }

  v68 = *(v0 + 120);
  v69 = *(v0 + 96);
  v70 = *(v0 + 72);
  swift_unownedRetainStrong();
  sub_100B59D1C(v70, 0, 0);

  sub_10002FF48(v70, type metadata accessor for DelegatedShareExpirationUserNotification);
  v72(v68, v69);

  v45 = *(v0 + 8);
LABEL_19:

  return v45();
}