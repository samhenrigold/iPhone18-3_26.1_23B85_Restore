int main(int argc, const char **argv, const char **envp)
{
  qword_1000109B0 = [objc_allocWithZone(type metadata accessor for ServiceDelegate()) init];
  qword_1000109B8 = [objc_opt_self() serviceListener];
  [qword_1000109B8 setDelegate:qword_1000109B0];
  [qword_1000109B8 resume];
  return 0;
}

id sub_1000019B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_100001B34()
{
  sub_1000041BC(0, &qword_100010618, &type metadata accessor for FormatContentSlotItemAuxiliary, &type metadata accessor for Optional);
  __chkstk_darwin(v0 - 8);
  v2 = &v93 - v1;
  v119 = sub_100007D6C();
  v140 = *(v119 - 8);
  __chkstk_darwin(v119);
  v118 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007D3C();
  v117 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v134 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v126 = &v93 - v7;
  v132 = sub_100007CFC();
  v128 = *(v132 - 8);
  __chkstk_darwin(v132);
  v127 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_100007CBC();
  v111 = *(v114 - 8);
  __chkstk_darwin(v114);
  v113 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_100007D2C();
  v102 = *(v104 - 8);
  __chkstk_darwin(v104);
  v103 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for CuratedTodayFeedGroupConfigDataLite(0);
  __chkstk_darwin(v141);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000041BC(0, &qword_1000105E8, sub_100003F28, &type metadata accessor for Optional);
  __chkstk_darwin(v13 - 8);
  v15 = &v93 - v14;
  v16 = sub_100007C8C();
  v101 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v19 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v93 - v20;
  sub_100004270(v15);
  sub_100003F28(0);
  v23 = v22;
  v24 = *(v22 - 8);
  if ((*(v24 + 48))(v15, 1, v22) == 1)
  {
    sub_10000403C(v15, &qword_1000105E8, sub_100003F28);
    return &_swiftEmptyArrayStorage;
  }

  sub_100007BFC();
  (*(v24 + 8))(v15, v23);
  v26 = v101;
  (*(v101 + 16))(v19, &v12[*(v141 + 20)], v16);
  sub_100003E2C(v12, type metadata accessor for CuratedTodayFeedGroupConfigDataLite);
  (*(v26 + 32))(v21, v19, v16);
  result = sub_100007C7C();
  v97 = *(result + 2);
  if (!v97)
  {
    v92 = v26;

    v105 = &_swiftEmptyArrayStorage;
    goto LABEL_81;
  }

  v93 = v21;
  v94 = v16;
  v27 = 0;
  v99 = &result[(*(v102 + 80) + 32) & ~*(v102 + 80)];
  v98 = v102 + 16;
  v108 = v111 + 16;
  v125 = v128 + 16;
  v28 = (v117 + 88);
  LODWORD(v141) = enum case for FormatContentSlotItemObject.article(_:);
  v136 = (v117 + 8);
  v135 = (v117 + 96);
  v124 = (v140 + 48);
  v121 = (v140 + 32);
  v139 = v117 + 16;
  v120 = (v140 + 8);
  v123 = (v128 + 8);
  v106 = (v111 + 8);
  v96 = (v102 + 8);
  v105 = &_swiftEmptyArrayStorage;
  v29 = v119;
  v30 = v118;
  v137 = (v117 + 88);
  v138 = v4;
  v31 = v127;
  v116 = v2;
  v95 = result;
LABEL_5:
  if (v27 >= *(result + 2))
  {
    goto LABEL_92;
  }

  v32 = *(v102 + 72);
  v100 = v27;
  (*(v102 + 16))(v103, &v99[v32 * v27], v104);
  result = sub_100007D1C();
  v110 = *(result + 2);
  if (!v110)
  {

    v82 = &_swiftEmptyArrayStorage;
    goto LABEL_65;
  }

  v33 = 0;
  v109 = &result[(*(v111 + 80) + 32) & ~*(v111 + 80)];
  v34 = &_swiftEmptyArrayStorage;
  v107 = result;
  while (1)
  {
    if (v33 >= *(result + 2))
    {
      goto LABEL_87;
    }

    v115 = v34;
    v37 = *(v111 + 72);
    v112 = v33;
    (*(v111 + 16))(v113, &v109[v37 * v33], v114);
    result = sub_100007CAC();
    v130 = *(result + 2);
    if (v130)
    {
      break;
    }

    v39 = &_swiftEmptyArrayStorage;
LABEL_51:

    (*v106)(v113, v114);
    v74 = *(v39 + 2);
    result = v115;
    v75 = *(v115 + 2);
    v76 = v75 + v74;
    if (__OFADD__(v75, v74))
    {
      goto LABEL_88;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v77 = v115;
    if ((result & 1) == 0 || v76 > *(v115 + 3) >> 1)
    {
      if (v75 <= v76)
      {
        v78 = v75 + v74;
      }

      else
      {
        v78 = v75;
      }

      result = sub_1000036B0(result, v78, 1, v115);
      v77 = result;
    }

    if (*(v39 + 2))
    {
      if ((*(v77 + 3) >> 1) - *(v77 + 2) < v74)
      {
        goto LABEL_90;
      }

      v79 = v77;
      swift_arrayInitWithCopy();

      v34 = v79;
      result = v107;
      v36 = v112;
      if (v74)
      {
        v80 = *(v79 + 2);
        v72 = __OFADD__(v80, v74);
        v81 = v80 + v74;
        if (v72)
        {
          goto LABEL_91;
        }

        *(v79 + 2) = v81;
      }
    }

    else
    {
      v35 = v77;

      v34 = v35;
      result = v107;
      v36 = v112;
      if (v74)
      {
        goto LABEL_89;
      }
    }

    v33 = v36 + 1;
    if (v33 == v110)
    {
      v82 = v34;

LABEL_65:
      (*v96)(v103, v104);
      v83 = *(v82 + 2);
      result = v105;
      v84 = *(v105 + 2);
      v85 = v84 + v83;
      if (__OFADD__(v84, v83))
      {
        goto LABEL_93;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v86 = v105;
      if (!result || v85 > *(v105 + 3) >> 1)
      {
        if (v84 <= v85)
        {
          v87 = v84 + v83;
        }

        else
        {
          v87 = v84;
        }

        result = sub_1000036B0(result, v87, 1, v105);
        v86 = result;
      }

      v88 = *(v82 + 2);
      v105 = v86;
      if (v88)
      {
        if ((*(v86 + 3) >> 1) - *(v86 + 2) < v83)
        {
          goto LABEL_95;
        }

        swift_arrayInitWithCopy();

        result = v95;
        v89 = v100;
        if (v83)
        {
          v90 = *(v105 + 2);
          v72 = __OFADD__(v90, v83);
          v91 = v90 + v83;
          if (v72)
          {
            goto LABEL_96;
          }

          *(v105 + 2) = v91;
        }
      }

      else
      {

        result = v95;
        v89 = v100;
        if (v83)
        {
          goto LABEL_94;
        }
      }

      v27 = v89 + 1;
      if (v27 == v97)
      {

        v16 = v94;
        v92 = v101;
        v21 = v93;
LABEL_81:
        (*(v92 + 8))(v21, v16);
        return v105;
      }

      goto LABEL_5;
    }
  }

  v38 = 0;
  v39 = &_swiftEmptyArrayStorage;
  v129 = result;
  while (v38 < *(result + 2))
  {
    v133 = v39;
    v40 = &result[(*(v128 + 80) + 32) & ~*(v128 + 80)];
    v41 = *(v128 + 72);
    v131 = v38;
    (*(v128 + 16))(v31, &v40[v41 * v38], v132);
    v42 = v126;
    sub_100007CDC();
    v140 = *v28;
    v43 = (v140)(v42, v4);
    if (v43 == v141)
    {
      (*v135)(v42, v4);
      v44 = sub_100007C5C();
      v46 = v45;
      v47 = sub_1000036B0(0, 1, 1, &_swiftEmptyArrayStorage);
      v49 = *(v47 + 2);
      v48 = *(v47 + 3);
      if (v49 >= v48 >> 1)
      {
        v47 = sub_1000036B0((v48 > 1), v49 + 1, 1, v47);
      }

      *(v47 + 2) = v49 + 1;
      v50 = &v47[16 * v49];
      *(v50 + 4) = v44;
      *(v50 + 5) = v46;
      v28 = v137;
      v4 = v138;
      v31 = v127;
    }

    else
    {
      (*v136)(v42, v4);
      v47 = &_swiftEmptyArrayStorage;
    }

    sub_100007CEC();
    if ((*v124)(v2, 1, v29) == 1)
    {
      sub_10000403C(v2, &qword_100010618, &type metadata accessor for FormatContentSlotItemAuxiliary);
    }

    else
    {
      (*v121)(v30, v2, v29);
      v51 = sub_100007D5C();
      v52 = *(v51 + 16);
      if (v52)
      {
        v53 = *(v117 + 80);
        v122 = v51;
        v54 = v51 + ((v53 + 32) & ~v53);
        v55 = *(v117 + 72);
        v56 = *(v117 + 16);
        v57 = v134;
        v56(v134, v54, v4);
        while (1)
        {
          v58 = (v140)(v57, v4);
          if (v58 == v141)
          {
            (*v135)(v57, v4);
            v59 = sub_100007C5C();
            v61 = v60;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_1000036B0(0, *(v47 + 2) + 1, 1, v47);
            }

            v63 = *(v47 + 2);
            v62 = *(v47 + 3);
            if (v63 >= v62 >> 1)
            {
              v47 = sub_1000036B0((v62 > 1), v63 + 1, 1, v47);
            }

            *(v47 + 2) = v63 + 1;
            v64 = &v47[16 * v63];
            *(v64 + 4) = v59;
            *(v64 + 5) = v61;
            v28 = v137;
            v4 = v138;
            v57 = v134;
          }

          else
          {
            (*v136)(v57, v4);
          }

          v54 += v55;
          if (!--v52)
          {
            break;
          }

          v56(v57, v54, v4);
        }

        v2 = v116;
        v29 = v119;
        v30 = v118;
      }

      else
      {
      }

      (*v120)(v30, v29);
      v31 = v127;
    }

    (*v123)(v31, v132);
    v65 = *(v47 + 2);
    result = v133;
    v66 = *(v133 + 2);
    v67 = v66 + v65;
    if (__OFADD__(v66, v65))
    {
      goto LABEL_83;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v68 = v133;
    if ((result & 1) != 0 && v67 <= *(v133 + 3) >> 1)
    {
      if (*(v47 + 2))
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v66 <= v67)
      {
        v69 = v66 + v65;
      }

      else
      {
        v69 = v66;
      }

      result = sub_1000036B0(result, v69, 1, v133);
      v68 = result;
      if (*(v47 + 2))
      {
LABEL_46:
        if ((*(v68 + 3) >> 1) - *(v68 + 2) < v65)
        {
          goto LABEL_85;
        }

        v70 = v68;
        swift_arrayInitWithCopy();

        v39 = v70;
        if (v65)
        {
          v71 = *(v70 + 2);
          v72 = __OFADD__(v71, v65);
          v73 = v71 + v65;
          if (v72)
          {
            goto LABEL_86;
          }

          *(v70 + 2) = v73;
        }

        goto LABEL_14;
      }
    }

    v39 = v68;

    if (v65)
    {
      goto LABEL_84;
    }

LABEL_14:
    v38 = v131 + 1;
    result = v129;
    if (v131 + 1 == v130)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

void *sub_100002A94()
{
  sub_1000041BC(0, &qword_1000105C8, &type metadata accessor for URL, &type metadata accessor for Optional);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v67 = &v62 - v4;
  v76 = sub_100007B6C();
  v79 = *(v76 - 8);
  v5 = __chkstk_darwin(v76);
  v75 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v72 = &v62 - v7;
  v74 = sub_100007D2C();
  v78 = *(v74 - 8);
  __chkstk_darwin(v74);
  v73 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E8C(0, &qword_1000105D0, &type metadata accessor for FormatFileReference);
  v71 = v9;
  v77 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v62 - v10;
  sub_100003E8C(0, &qword_1000105E0, &type metadata accessor for FormatFileReferenceCollection);
  v70 = v12;
  v68 = *(v12 - 8);
  __chkstk_darwin(v12);
  v69 = &v62 - v13;
  v66 = type metadata accessor for CuratedTodayFeedGroupConfigDataLite(0);
  __chkstk_darwin(v66);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000041BC(0, &qword_1000105E8, sub_100003F28, &type metadata accessor for Optional);
  __chkstk_darwin(v16 - 8);
  v18 = &v62 - v17;
  v19 = sub_100007C8C();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v65 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v62 - v23;
  sub_100004270(v18);
  sub_100003F28(0);
  v26 = v25;
  v27 = *(v25 - 8);
  if ((*(v27 + 48))(v18, 1, v25) == 1)
  {
    sub_10000403C(v18, &qword_1000105E8, sub_100003F28);
    return &_swiftEmptyArrayStorage;
  }

  else
  {
    sub_100007BFC();
    (*(v27 + 8))(v18, v26);
    v29 = v65;
    (*(v20 + 16))(v65, &v15[*(v66 + 20)], v19);
    sub_100003E2C(v15, type metadata accessor for CuratedTodayFeedGroupConfigDataLite);
    (*(v20 + 32))(v24, v29, v19);
    v80 = &_swiftEmptyArrayStorage;
    v30 = v69;
    sub_100007C6C();
    v31 = v70;
    v32 = sub_100007D4C();
    (*(v68 + 8))(v30, v31);
    KeyPath = swift_getKeyPath();
    v34 = *(v32 + 16);
    v66 = v3;
    v63 = v20;
    v64 = v19;
    v62 = v24;
    if (v34)
    {
      v35 = v76;
      v69 = *(v77 + 16);
      v70 = KeyPath;
      v36 = *(v77 + 80);
      v65 = v32;
      v37 = v32 + ((v36 + 32) & ~v36);
      v68 = *(v77 + 72);
      v77 += 16;
      v38 = (v77 - 8);
      v39 = (v79 + 48);
      v40 = (v79 + 32);
      v41 = &_swiftEmptyArrayStorage;
      v42 = v67;
      do
      {
        v43 = v71;
        (v69)(v11, v37, v71);
        swift_getAtKeyPath();
        (*v38)(v11, v43);
        if ((*v39)(v42, 1, v35) == 1)
        {
          sub_10000403C(v42, &qword_1000105C8, &type metadata accessor for URL);
        }

        else
        {
          v44 = *v40;
          (*v40)(v72, v42, v35);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_1000037B0(0, *(v41 + 2) + 1, 1, v41);
          }

          v46 = *(v41 + 2);
          v45 = *(v41 + 3);
          if (v46 >= v45 >> 1)
          {
            v41 = sub_1000037B0((v45 > 1), v46 + 1, 1, v41);
          }

          *(v41 + 2) = v46 + 1;
          v35 = v76;
          v44(&v41[((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v46], v72, v76);
          v42 = v67;
        }

        v37 += v68;
        --v34;
      }

      while (v34);

      v3 = v66;
      v20 = v63;
      v19 = v64;
      v24 = v62;
    }

    else
    {

      v41 = &_swiftEmptyArrayStorage;
      v35 = v76;
    }

    sub_1000034E8(v41);
    v47 = sub_100007C7C();
    v48 = swift_getKeyPath();
    v49 = *(v47 + 16);
    if (v49)
    {
      v50 = *(v78 + 16);
      v51 = *(v78 + 80);
      v70 = v47;
      v52 = v47 + ((v51 + 32) & ~v51);
      v71 = *(v78 + 72);
      v72 = v50;
      v77 = v48;
      v78 += 16;
      v53 = (v78 - 8);
      v54 = (v79 + 48);
      v55 = (v79 + 32);
      v56 = &_swiftEmptyArrayStorage;
      v57 = v73;
      do
      {
        v58 = v74;
        (v72)(v57, v52, v74);
        swift_getAtKeyPath();
        (*v53)(v57, v58);
        if ((*v54)(v3, 1, v35) == 1)
        {
          sub_10000403C(v3, &qword_1000105C8, &type metadata accessor for URL);
        }

        else
        {
          v59 = *v55;
          (*v55)(v75, v3, v35);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v56 = sub_1000037B0(0, *(v56 + 2) + 1, 1, v56);
          }

          v61 = *(v56 + 2);
          v60 = *(v56 + 3);
          if (v61 >= v60 >> 1)
          {
            v56 = sub_1000037B0((v60 > 1), v61 + 1, 1, v56);
          }

          *(v56 + 2) = v61 + 1;
          v35 = v76;
          v59(&v56[((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v61], v75, v76);
          v3 = v66;
        }

        v52 += v71;
        --v49;
      }

      while (v49);

      v20 = v63;
      v19 = v64;
      v24 = v62;
    }

    else
    {

      v56 = &_swiftEmptyArrayStorage;
    }

    sub_1000034E8(v56);
    (*(v20 + 8))(v24, v19);
    return v80;
  }
}

uint64_t sub_1000034E8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1000037B0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_100007B6C();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_100003654(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

char *sub_1000036B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004220();
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000037B0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000041BC(0, &qword_100010608, &type metadata accessor for URL, &type metadata accessor for _ContiguousArrayStorage);
  v10 = *(sub_100007B6C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100007B6C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

id sub_1000039AC(uint64_t a1, uint64_t a2)
{
  sub_1000041BC(0, &qword_1000105B8, &type metadata accessor for Date, &type metadata accessor for Optional);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_100007BAC();
  v24 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TodayConfigLite(0);
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007C4C();
  swift_allocObject();
  v12 = sub_100007C3C();
  sub_100003FF4(&qword_1000105C0, type metadata accessor for TodayConfigLite, &unk_1000085D0);
  sub_100007BBC();

  if (!v2)
  {
    sub_100003D98(v11, v5);
    v13 = v24;
    v14 = *(v24 + 48);
    v15 = v14(v5, 1, v6);
    v23 = v6;
    if (v15 == 1)
    {
      sub_100007B9C();
      if (v14(v5, 1, v6) != 1)
      {
        sub_10000403C(v5, &qword_1000105B8, &type metadata accessor for Date);
      }
    }

    else
    {
      (*(v13 + 32))(v8, v5, v6);
    }

    sub_100001B34();
    sub_100002A94();
    v16 = objc_allocWithZone(NDTodayFeedConfig);
    v17 = v8;
    isa = sub_100007B8C().super.isa;
    v19 = sub_100007DBC().super.isa;

    sub_100007B6C();
    v20 = sub_100007DBC().super.isa;

    v12 = [v16 initWithPublishDate:isa topStoriesArticleIDs:v19 topStoriesPackageURLs:v20];

    (*(v24 + 8))(v17, v23);
    sub_100003E2C(v11, type metadata accessor for TodayConfigLite);
  }

  return v12;
}

uint64_t sub_100003D44(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100003D98(uint64_t a1, uint64_t a2)
{
  sub_1000041BC(0, &qword_1000105B8, &type metadata accessor for Date, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003E2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100003E8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_100007C9C();
    v7 = sub_100003FF4(&qword_1000105D8, &type metadata accessor for FormatPackage, &protocol conformance descriptor for FormatPackage);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100003F28(uint64_t a1)
{
  if (!qword_1000105F0)
  {
    type metadata accessor for CuratedTodayFeedGroupConfigDataLite(255);
    sub_100003FF4(&qword_1000105F8, type metadata accessor for CuratedTodayFeedGroupConfigDataLite, &unk_100008A5C);
    sub_100003FF4(&qword_100010600, type metadata accessor for CuratedTodayFeedGroupConfigDataLite, &unk_100008A34);
    v1 = sub_100007C2C();
    if (!v2)
    {
      atomic_store(v1, &qword_1000105F0);
    }
  }
}

uint64_t sub_100003FF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000403C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1000041BC(0, a2, a3, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1000041BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100004220()
{
  if (!qword_100010620)
  {
    v0 = sub_100007E3C();
    if (!v1)
    {
      atomic_store(v0, &qword_100010620);
    }
  }
}

uint64_t sub_100004270@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for CuratedTodayFeedGroupConfigDataLite(0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TodayFeedGroupConfigLite(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003F28(0);
  v11 = v10;
  v12 = *(v10 - 8);
  __chkstk_darwin(v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for TodayFeedConfigLite(0);
  v16 = *(v1 + *(result + 20));
  v27 = *(v16 + 16);
  if (v27)
  {
    v25 = v12;
    v26 = a1;
    v17 = 0;
    v28 = v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v29 = v7;
    v18 = (v12 + 32);
    v19 = (v12 + 8);
    while (v17 < *(v16 + 16))
    {
      sub_1000054B4(v28 + *(v29 + 72) * v17, v9, type metadata accessor for TodayFeedGroupConfigLite);
      v20 = *v18;
      (*v18)(v14, v9, v11);
      sub_100007BFC();
      if (*v5 == 0x69726F7453706F74 && v5[1] == 0xEA00000000007365)
      {
        sub_100005454(v5, type metadata accessor for CuratedTodayFeedGroupConfigDataLite);
LABEL_13:
        a1 = v26;
        v20(v26, v14, v11);
        v23 = 0;
LABEL_14:
        v12 = v25;
        return (*(v12 + 56))(a1, v23, 1, v11);
      }

      v22 = sub_100007E4C();
      sub_100005454(v5, type metadata accessor for CuratedTodayFeedGroupConfigDataLite);
      if (v22)
      {
        goto LABEL_13;
      }

      ++v17;
      result = (*v19)(v14, v11);
      if (v27 == v17)
      {
        v23 = 1;
        a1 = v26;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v23 = 1;
    return (*(v12 + 56))(a1, v23, 1, v11);
  }

  return result;
}

uint64_t sub_10000457C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for TodayFeedConfigLite(uint64_t a1)
{
  result = qword_100010680;
  if (!qword_100010680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100004624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000046E0(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_100004728(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1000046E0(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

void sub_1000047E0(uint64_t a1)
{
  sub_1000046E0(319);
  if (v1 <= 0x3F)
  {
    sub_100004894(319, &unk_100010690, type metadata accessor for TodayFeedGroupConfigLite, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100004894(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1000048F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = type metadata accessor for TodayFeedConfigLite(0);
  __chkstk_darwin(v28);
  v26 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005270(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000046E0(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005580(0, &qword_1000106E0, &type metadata accessor for SafeishKeyedDecodingContainer);
  v11 = v10;
  v12 = *(v10 - 8);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  sub_1000053C4(a1, a1[3]);
  sub_100005370();
  v15 = v29;
  sub_100007E8C();
  if (!v15)
  {
    v16 = v12;
    sub_100007BAC();
    v31 = 0;
    sub_10000457C(&qword_1000106F0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_100007BEC();
    sub_1000052A4(0);
    v18 = v17;
    v30 = 1;
    sub_10000457C(&qword_1000106F8, sub_1000052A4, &protocol conformance descriptor for SafeishArray<A>);
    v19 = v18;
    sub_100007BEC();
    v29 = v14;
    v20 = *(v18 - 8);
    if ((*(v20 + 48))(v6, 1, v18) == 1)
    {
      sub_100005454(v6, sub_100005270);
      v21 = v9;
      v22 = v26;
      sub_1000054B4(v9, v26, sub_1000046E0);
      v23 = v27;
    }

    else
    {
      v24 = sub_100007BCC();
      (*(v20 + 8))(v6, v19);
      v21 = v9;
      v22 = v26;
      sub_1000054B4(v9, v26, sub_1000046E0);
      v23 = v27;
      if (v24)
      {
LABEL_6:
        sub_100005454(v21, sub_1000046E0);
        (*(v16 + 8))(v29, v11);
        *(v22 + *(v28 + 20)) = v24;
        sub_10000551C(v22, v23);
        return sub_100005408(a1);
      }
    }

    v24 = &_swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  return sub_100005408(a1);
}

Swift::Int sub_100004DC4()
{
  v1 = *v0;
  sub_100007E5C();
  sub_100007E6C(v1);
  return sub_100007E7C();
}

Swift::Int sub_100004E38(uint64_t a1)
{
  v2 = *v1;
  sub_100007E5C();
  sub_100007E6C(v2);
  return sub_100007E7C();
}

uint64_t sub_100004E7C()
{
  if (*v0)
  {
    return 0x7370756F7267;
  }

  else
  {
    return 0x446873696C627570;
  }
}

uint64_t sub_100004EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x446873696C627570 && a2 == 0xEB00000000657461;
  if (v6 || (sub_100007E4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7370756F7267 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100007E4C();

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

uint64_t sub_100004FB0(uint64_t a1)
{
  v2 = sub_100005370();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100004FEC(uint64_t a1)
{
  v2 = sub_100005370();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100005028(void *a1)
{
  v3 = v1;
  sub_100005580(0, &qword_100010700, &type metadata accessor for KeyedEncodingContainer);
  v6 = v5;
  v7 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = &v11[-v8];
  sub_1000053C4(a1, a1[3]);
  sub_100005370();
  sub_100007EAC();
  v13 = 0;
  sub_100007BAC();
  sub_10000457C(&qword_100010708, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_100007E0C();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for TodayFeedConfigLite(0) + 20));
    v11[15] = 1;
    sub_100004894(0, &unk_100010690, type metadata accessor for TodayFeedGroupConfigLite, &type metadata accessor for Array);
    sub_1000055E4();
    sub_100007E2C();
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_1000052A4(uint64_t a1)
{
  if (!qword_1000106C8)
  {
    type metadata accessor for TodayFeedGroupConfigLite(255);
    sub_10000457C(&qword_1000106D0, type metadata accessor for TodayFeedGroupConfigLite, &unk_100008794);
    sub_10000457C(&qword_1000106D8, type metadata accessor for TodayFeedGroupConfigLite, &unk_10000876C);
    v1 = sub_100007BDC();
    if (!v2)
    {
      atomic_store(v1, &qword_1000106C8);
    }
  }
}

unint64_t sub_100005370()
{
  result = qword_1000106E8;
  if (!qword_1000106E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000106E8);
  }

  return result;
}

void *sub_1000053C4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100005408(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100005454(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000054B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000551C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayFeedConfigLite(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100005580(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_100005370();
    v7 = a3(a1, &type metadata for TodayFeedConfigLite.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1000055E4()
{
  result = qword_100010710;
  if (!qword_100010710)
  {
    sub_100004894(255, &unk_100010690, type metadata accessor for TodayFeedGroupConfigLite, &type metadata accessor for Array);
    sub_10000457C(&qword_1000106D8, type metadata accessor for TodayFeedGroupConfigLite, &unk_10000876C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010710);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TodayFeedConfigLite.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TodayFeedConfigLite.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100005838()
{
  result = qword_100010718;
  if (!qword_100010718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010718);
  }

  return result;
}

unint64_t sub_100005890()
{
  result = qword_100010720;
  if (!qword_100010720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010720);
  }

  return result;
}

unint64_t sub_1000058E8()
{
  result = qword_100010728;
  if (!qword_100010728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010728);
  }

  return result;
}

uint64_t sub_100005950(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayFeedConfigLite(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000059D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayFeedConfigLite(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for TodayConfigLite(uint64_t a1)
{
  result = qword_100010788;
  if (!qword_100010788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100005A8C(uint64_t a1)
{
  result = type metadata accessor for TodayFeedConfigLite(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100005AF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for TodayFeedConfigLite(0);
  __chkstk_darwin(v4);
  v16 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000614C(0, &qword_1000107C0, &type metadata accessor for KeyedDecodingContainer);
  v7 = v6;
  v8 = *(v6 - 8);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  sub_1000053C4(a1, a1[3]);
  sub_1000060F8();
  sub_100007E9C();
  if (!v2)
  {
    v11 = v15;
    sub_1000061B0(&qword_1000107D0, &unk_10000844C);
    v12 = v16;
    sub_100007DEC();
    (*(v8 + 8))(v10, v7);
    sub_10000551C(v12, v11);
  }

  return sub_100005408(a1);
}

Swift::Int sub_100005D10()
{
  sub_100007E5C();
  sub_100007D8C();
  return sub_100007E7C();
}

Swift::Int sub_100005D94(uint64_t a1)
{
  sub_100007E5C();
  sub_100007D8C();
  return sub_100007E7C();
}

uint64_t sub_100005DF0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10000C648;
  v7._object = v3;
  v5 = sub_100007DCC(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100005E90@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_10000C680;
  v8._object = a2;
  v6 = sub_100007DCC(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_100005EF4(uint64_t a1)
{
  v2 = sub_1000060F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100005F30(uint64_t a1)
{
  v2 = sub_1000060F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100005F84(void *a1)
{
  sub_10000614C(0, &qword_1000107D8, &type metadata accessor for KeyedEncodingContainer);
  v3 = v2;
  v4 = *(v2 - 8);
  __chkstk_darwin(v2);
  v6 = &v8 - v5;
  sub_1000053C4(a1, a1[3]);
  sub_1000060F8();
  sub_100007EAC();
  type metadata accessor for TodayFeedConfigLite(0);
  sub_1000061B0(&qword_1000107E0, "\r@");
  sub_100007E2C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1000060F8()
{
  result = qword_1000107C8;
  if (!qword_1000107C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000107C8);
  }

  return result;
}

void sub_10000614C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1000060F8();
    v7 = a3(a1, &type metadata for TodayConfigLite.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1000061B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TodayFeedConfigLite(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TodayConfigLite.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TodayConfigLite.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_1000062E0()
{
  result = qword_1000107E8;
  if (!qword_1000107E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000107E8);
  }

  return result;
}

unint64_t sub_100006338()
{
  result = qword_1000107F0;
  if (!qword_1000107F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000107F0);
  }

  return result;
}

unint64_t sub_100006390()
{
  result = qword_1000107F8;
  if (!qword_1000107F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000107F8);
  }

  return result;
}

uint64_t sub_1000063E4(uint64_t a1, uint64_t a2)
{
  sub_100003F28(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100006450(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CuratedTodayFeedGroupConfigDataLite(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003F28(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t type metadata accessor for TodayFeedGroupConfigLite(uint64_t a1)
{
  result = qword_100010870;
  if (!qword_100010870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000655C(uint64_t a1)
{
  sub_100003F28(319);
  if (v3 <= 0x3F)
  {
    v4 = v2;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
  }
}

uint64_t sub_100006600@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_100003F28(0);
  v5 = v4;
  v15 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006D40(0);
  v9 = v8;
  v18 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000053C4(a1, a1[3]);
  sub_100006D9C();
  sub_100007E9C();
  if (!v2)
  {
    v12 = v18;
    v14 = v5;
    sub_100006DF0();
    sub_100007DEC();
    sub_100006E44(a1, v17);
    type metadata accessor for CuratedTodayFeedGroupConfigDataLite(0);
    sub_100006450(&qword_1000105F8, &unk_100008A5C);
    sub_100006450(&qword_100010600, &unk_100008A34);
    sub_100007C0C();
    (*(v12 + 8))(v11, v9);
    (*(v15 + 32))(v16, v7, v14);
  }

  return sub_100005408(a1);
}

uint64_t sub_1000068F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_10000C6F0;
  v8._object = a2;
  v6 = sub_100007DCC(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_10000694C(uint64_t a1)
{
  v2 = sub_100006D9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100006988(uint64_t a1)
{
  v2 = sub_100006D9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000069DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100007E5C();
  sub_100007D8C();
  return sub_100007E7C();
}

Swift::Int sub_100006A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100007E5C();
  sub_100007D8C();
  return sub_100007E7C();
}

uint64_t sub_100006AB4@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v4 = a1[1];
  v8._object = v4;
  v6 = sub_100007DCC(a2, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_100006BE8(uint64_t a1)
{
  v2 = v1;
  sub_100003F28(0);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = __chkstk_darwin(v3);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006EA8(v2, v10);
  (*(v5 + 32))(v8, v10, v4);
  sub_100007C1C();
  return (*(v5 + 8))(v8, v4);
}

void sub_100006D40(uint64_t a1)
{
  if (!qword_1000108A0)
  {
    sub_100006D9C();
    v1 = sub_100007DFC();
    if (!v2)
    {
      atomic_store(v1, &qword_1000108A0);
    }
  }
}

unint64_t sub_100006D9C()
{
  result = qword_1000108A8;
  if (!qword_1000108A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000108A8);
  }

  return result;
}

unint64_t sub_100006DF0()
{
  result = qword_1000108B0;
  if (!qword_1000108B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000108B0);
  }

  return result;
}

uint64_t sub_100006E44(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100006EA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayFeedGroupConfigLite(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100006F38()
{
  result = qword_1000108B8;
  if (!qword_1000108B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000108B8);
  }

  return result;
}

unint64_t sub_100006F90()
{
  result = qword_1000108C0;
  if (!qword_1000108C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000108C0);
  }

  return result;
}

unint64_t sub_100006FE8()
{
  result = qword_1000108C8;
  if (!qword_1000108C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000108C8);
  }

  return result;
}

unint64_t sub_100007040()
{
  result = qword_1000108D0;
  if (!qword_1000108D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000108D0);
  }

  return result;
}

unint64_t sub_100007094()
{
  result = qword_1000108D8;
  if (!qword_1000108D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000108D8);
  }

  return result;
}

uint64_t sub_100007104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100007C8C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000071C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100007C8C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CuratedTodayFeedGroupConfigDataLite(uint64_t a1)
{
  result = qword_100010938;
  if (!qword_100010938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000072B4(uint64_t a1)
{
  result = sub_100007C8C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100007330@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  v4 = sub_100007C8C();
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000799C(0, &qword_100010970, &type metadata accessor for KeyedDecodingContainer);
  v24 = v7;
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - v9;
  sub_1000053C4(a1, a1[3]);
  sub_100007948();
  sub_100007E9C();
  if (!v2)
  {
    v11 = v8;
    v12 = v23;
    v26 = 1;
    sub_100007A00(&qword_100010980, &protocol conformance descriptor for FormatContent);
    v13 = v24;
    sub_100007DEC();
    v25 = 0;
    v15 = sub_100007DDC();
    v16 = v10;
    v18 = v17;
    (*(v11 + 8))(v16, v13);
    v19 = type metadata accessor for CuratedTodayFeedGroupConfigDataLite(0);
    v20 = v22;
    (*(v12 + 32))(v22 + *(v19 + 20), v6, v4);
    *v20 = v15;
    v20[1] = v18;
  }

  return sub_100005408(a1);
}

uint64_t sub_1000075DC(void *a1)
{
  sub_10000799C(0, &qword_100010988, &type metadata accessor for KeyedEncodingContainer);
  v4 = v3;
  v5 = *(v3 - 8);
  __chkstk_darwin(v3);
  v7 = &v9[-v6];
  sub_1000053C4(a1, a1[3]);
  sub_100007948();
  sub_100007EAC();
  v9[15] = 0;
  sub_100007E1C();
  if (!v1)
  {
    type metadata accessor for CuratedTodayFeedGroupConfigDataLite(0);
    v9[14] = 1;
    sub_100007C8C();
    sub_100007A00(&qword_100010990, &protocol conformance descriptor for FormatContent);
    sub_100007E2C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100007790()
{
  if (*v0)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 0x65707974627573;
  }
}

uint64_t sub_1000077C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65707974627573 && a2 == 0xE700000000000000;
  if (v6 || (sub_100007E4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100007E4C();

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

uint64_t sub_1000078A0(uint64_t a1)
{
  v2 = sub_100007948();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000078DC(uint64_t a1)
{
  v2 = sub_100007948();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100007948()
{
  result = qword_100010978;
  if (!qword_100010978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010978);
  }

  return result;
}

void sub_10000799C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_100007948();
    v7 = a3(a1, &type metadata for CuratedTodayFeedGroupConfigDataLite.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_100007A00(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100007C8C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100007A58()
{
  result = qword_100010998;
  if (!qword_100010998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010998);
  }

  return result;
}

unint64_t sub_100007AB0()
{
  result = qword_1000109A0;
  if (!qword_1000109A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000109A0);
  }

  return result;
}

unint64_t sub_100007B08()
{
  result = qword_1000109A8;
  if (!qword_1000109A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000109A8);
  }

  return result;
}