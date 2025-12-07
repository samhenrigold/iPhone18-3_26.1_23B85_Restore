uint64_t sub_4BD04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v128 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v130 = *(v128 - 8);
  v6 = __chkstk_darwin(v128);
  v129 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v127 = &v123 - v9;
  __chkstk_darwin(v8);
  v124 = &v123 - v10;
  v11 = sub_2B0C(&qword_229708, &unk_1BCB60);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v126 = &v123 - v16;
  v17 = __chkstk_darwin(v15);
  v125 = &v123 - v18;
  v19 = __chkstk_darwin(v17);
  v131 = &v123 - v20;
  v21 = __chkstk_darwin(v19);
  v136 = &v123 - v22;
  __chkstk_darwin(v21);
  v24 = &v123 - v23;
  v25 = _swiftEmptyArrayStorage;
  v149 = _swiftEmptyArrayStorage;
  *&v139 = a1;
  v133 = a1;

  v26 = sub_2B0C(&qword_229710, &unk_1D32C0);
  v27 = sub_42094(&qword_229718, &qword_229710, &unk_1D32C0, &protocol conformance descriptor for [A]);
  v132 = v24;
  v134 = v27;
  v135 = v26;
  result = sub_1B43C4();
  v137 = a4;
  if (a4[2])
  {
    v29 = v137;
    sub_1B57F4();
    sub_1B4884();
    result = sub_1B5844();
    v30 = v29 + 7;
    v31 = -1 << *(v29 + 32);
    v32 = result & ~v31;
    if ((*(v29 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v32))
    {
      v33 = ~v31;
      while (!*(v137[6] + v32) || *(v137[6] + v32) == 1)
      {
        v34 = sub_1B5604();

        if (v34)
        {
          goto LABEL_10;
        }

        v32 = (v32 + 1) & v33;
        if (((*(v30 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

LABEL_10:
      sub_43050(v132, v14, &qword_229708, &unk_1BCB60);
      v35 = v130;
      v36 = v128;
      if ((*(v130 + 48))(v14, 1, v128) != 1)
      {
        v84 = v129;
        (*(v35 + 32))(v129, v14, v36);
        sub_2B0C(&qword_229758, &unk_1BCBB0);
        v85 = v35;
        v86 = (sub_2B0C(&qword_229760, &qword_1CCC50) - 8);
        v87 = (*(*v86 + 80) + 32) & ~*(*v86 + 80);
        v88 = swift_allocObject();
        *(v88 + 16) = xmmword_1BCA80;
        v89 = (v88 + v87);
        v90 = v86[14];
        *v89 = 0xD000000000000014;
        *(v89 + 1) = 0x80000000001D58F0;
        (*(v85 + 16))(&v89[v90], v84, v36);
        v91 = sub_13023C(v88);
        swift_setDeallocating();
        sub_42F48(v89, &qword_229760, &qword_1CCC50);
        swift_deallocClassInstance();
        v92 = sub_500F0(v91, sub_5EEF0, 7u);

        sub_5F428(v92);
        (*(v85 + 8))(v84, v36);
LABEL_66:
        sub_42F48(v132, &qword_229708, &unk_1BCB60);
        return v149;
      }

      result = sub_42F48(v14, &qword_229708, &unk_1BCB60);
    }
  }

LABEL_12:
  v37 = *(v133 + 16);
  if (!v37)
  {
    *&v139 = _swiftEmptyArrayStorage;
    sub_1B43C4();
LABEL_43:
    *&v139 = v25;
    v75 = v131;
    sub_1B43C4();
    v76 = v137;
    if (!v137[2])
    {
      goto LABEL_64;
    }

    sub_1B57F4();
    sub_1B4884();
    v77 = sub_1B5844();
    v78 = v76 + 7;
    v79 = -1 << *(v76 + 32);
    v80 = v77 & ~v79;
    if ((*(v76 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v80))
    {
      v81 = ~v79;
      while (1)
      {
        v82 = *(v76[6] + v80);
        if (v82 != 1 && v82 != 2)
        {
          break;
        }

        v83 = sub_1B5604();

        if (v83)
        {
          goto LABEL_53;
        }

        v80 = (v80 + 1) & v81;
        if (((*(v78 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
        {
          goto LABEL_55;
        }
      }

LABEL_53:
      v93 = v126;
      sub_43050(v136, v126, &qword_229708, &unk_1BCB60);
      v94 = v130;
      v95 = v128;
      if ((*(v130 + 48))(v93, 1, v128) != 1)
      {
        (*(v94 + 32))(v127, v93, v95);
        sub_2B0C(&qword_229758, &unk_1BCBB0);
        v101 = v94;
        v102 = (sub_2B0C(&qword_229760, &qword_1CCC50) - 8);
        v103 = (*(*v102 + 80) + 32) & ~*(*v102 + 80);
        v104 = swift_allocObject();
        *(v104 + 16) = xmmword_1BCA80;
        v105 = (v104 + v103);
        v106 = v102[14];
        *v105 = 0xD000000000000014;
        *(v105 + 1) = 0x80000000001D58F0;
        v76 = v137;
        (*(v101 + 16))(&v105[v106], v127, v95);
        v107 = sub_13023C(v104);
        swift_setDeallocating();
        v108 = v105;
        v75 = v131;
        sub_42F48(v108, &qword_229760, &qword_1CCC50);
        swift_deallocClassInstance();
        v109 = sub_500F0(v107, sub_5EEF0, 7u);

        sub_5F428(v109);
        (*(v130 + 8))(v127, v95);
        if (!v76[2])
        {
          goto LABEL_64;
        }

LABEL_56:
        sub_1B57F4();
        sub_1B4884();
        v96 = sub_1B5844();
        v97 = -1 << *(v76 + 32);
        v98 = v96 & ~v97;
        if ((*(v78 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98))
        {
          v99 = ~v97;
          while (!*(v76[6] + v98) || *(v76[6] + v98) == 2)
          {
            v100 = sub_1B5604();

            if (v100)
            {
              goto LABEL_68;
            }

            v98 = (v98 + 1) & v99;
            if (((*(v78 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98) & 1) == 0)
            {
              goto LABEL_64;
            }
          }

LABEL_68:
          v111 = v125;
          sub_43050(v75, v125, &qword_229708, &unk_1BCB60);
          v112 = v130;
          v113 = v128;
          if ((*(v130 + 48))(v111, 1, v128) == 1)
          {
            sub_42F48(v75, &qword_229708, &unk_1BCB60);
            sub_42F48(v136, &qword_229708, &unk_1BCB60);
            sub_42F48(v132, &qword_229708, &unk_1BCB60);
            v132 = v111;
            goto LABEL_66;
          }

          v114 = v124;
          (*(v112 + 32))(v124, v111, v113);
          sub_2B0C(&qword_229758, &unk_1BCBB0);
          v115 = (sub_2B0C(&qword_229760, &qword_1CCC50) - 8);
          v116 = v75;
          v117 = (*(*v115 + 80) + 32) & ~*(*v115 + 80);
          v118 = swift_allocObject();
          *(v118 + 16) = xmmword_1BCA80;
          v119 = (v118 + v117);
          v120 = v115[14];
          *v119 = 0xD000000000000014;
          *(v119 + 1) = 0x80000000001D58F0;
          (*(v112 + 16))(&v119[v120], v114, v113);
          v121 = sub_13023C(v118);
          swift_setDeallocating();
          sub_42F48(v119, &qword_229760, &qword_1CCC50);
          swift_deallocClassInstance();
          v122 = sub_500F0(v121, sub_5EEF0, 7u);

          sub_5F428(v122);
          (*(v112 + 8))(v114, v113);
          v110 = v116;
          goto LABEL_65;
        }

LABEL_64:
        v110 = v75;
LABEL_65:
        sub_42F48(v110, &qword_229708, &unk_1BCB60);
        sub_42F48(v136, &qword_229708, &unk_1BCB60);
        goto LABEL_66;
      }

      sub_42F48(v93, &qword_229708, &unk_1BCB60);
    }

LABEL_55:
    if (!v76[2])
    {
      goto LABEL_64;
    }

    goto LABEL_56;
  }

  v38 = 0;
  v39 = (v133 + 32);
  v40 = _swiftEmptyArrayStorage;
  v129 = (v133 + 32);
  do
  {
    v41 = &v39[136 * v38];
    v42 = v38;
    while (1)
    {
      if (v42 >= v37)
      {
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v43 = *(v41 + 7);
      v145 = *(v41 + 6);
      v146 = v43;
      v147 = v41[128];
      v44 = *(v41 + 3);
      v141 = *(v41 + 2);
      v142 = v44;
      v45 = *(v41 + 5);
      v143 = *(v41 + 4);
      v144 = v45;
      v46 = *(v41 + 1);
      v139 = *v41;
      v140 = v46;
      v38 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        goto LABEL_72;
      }

      if ((BYTE8(v139) & 1) == 0)
      {
        break;
      }

      v47 = sub_1B5604();
      sub_429F8(&v139, v138);

      if (v47)
      {
        goto LABEL_22;
      }

      result = sub_5C740(&v139);
      ++v42;
      v41 += 136;
      if (v38 == v37)
      {
        goto LABEL_27;
      }
    }

    sub_429F8(&v139, v138);

LABEL_22:
    result = swift_isUniquelyReferenced_nonNull_native();
    v148 = v40;
    if ((result & 1) == 0)
    {
      result = sub_37574(0, v40[2] + 1, 1);
      v40 = v148;
    }

    v39 = v129;
    v49 = v40[2];
    v48 = v40[3];
    if (v49 >= v48 >> 1)
    {
      result = sub_37574((v48 > 1), v49 + 1, 1);
      v40 = v148;
    }

    v40[2] = v49 + 1;
    v50 = &v40[17 * v49];
    *(v50 + 2) = v139;
    v51 = v140;
    v52 = v141;
    v53 = v143;
    *(v50 + 5) = v142;
    *(v50 + 6) = v53;
    *(v50 + 3) = v51;
    *(v50 + 4) = v52;
    v54 = v144;
    v55 = v145;
    v56 = v146;
    *(v50 + 160) = v147;
    *(v50 + 8) = v55;
    *(v50 + 9) = v56;
    *(v50 + 7) = v54;
  }

  while (v38 != v37);
LABEL_27:
  *&v139 = v40;
  result = sub_1B43C4();
  v57 = 0;
  v58 = v133 + 32;
  v25 = _swiftEmptyArrayStorage;
  v133 += 32;
LABEL_28:
  v59 = v58 + 136 * v57;
  v60 = v57;
  while (v60 < v37)
  {
    v61 = *(v59 + 112);
    v145 = *(v59 + 96);
    v146 = v61;
    v147 = *(v59 + 128);
    v62 = *(v59 + 48);
    v141 = *(v59 + 32);
    v142 = v62;
    v63 = *(v59 + 80);
    v143 = *(v59 + 64);
    v144 = v63;
    v64 = *(v59 + 16);
    v139 = *v59;
    v140 = v64;
    v57 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      goto LABEL_74;
    }

    if (BYTE8(v139))
    {
      sub_429F8(&v139, v138);

LABEL_36:
      result = swift_isUniquelyReferenced_nonNull_native();
      v148 = v25;
      if ((result & 1) == 0)
      {
        result = sub_37574(0, v25[2] + 1, 1);
        v25 = v148;
      }

      v67 = v25[2];
      v66 = v25[3];
      if (v67 >= v66 >> 1)
      {
        result = sub_37574((v66 > 1), v67 + 1, 1);
        v25 = v148;
      }

      v25[2] = v67 + 1;
      v68 = &v25[17 * v67];
      *(v68 + 2) = v139;
      v69 = v140;
      v70 = v141;
      v71 = v143;
      *(v68 + 5) = v142;
      *(v68 + 6) = v71;
      *(v68 + 3) = v69;
      *(v68 + 4) = v70;
      v72 = v144;
      v73 = v145;
      v74 = v146;
      *(v68 + 160) = v147;
      *(v68 + 8) = v73;
      *(v68 + 9) = v74;
      *(v68 + 7) = v72;
      v58 = v133;
      if (v57 != v37)
      {
        goto LABEL_28;
      }

      goto LABEL_43;
    }

    v65 = sub_1B5604();
    sub_429F8(&v139, v138);

    if (v65)
    {
      goto LABEL_36;
    }

    result = sub_5C740(&v139);
    ++v60;
    v59 += 136;
    if (v57 == v37)
    {
      goto LABEL_43;
    }
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
  return result;
}

uint64_t sub_4CC3C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v128 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v130 = *(v128 - 8);
  v6 = __chkstk_darwin(v128);
  v129 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v127 = &v123 - v9;
  __chkstk_darwin(v8);
  v124 = &v123 - v10;
  v11 = sub_2B0C(&qword_229708, &unk_1BCB60);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v126 = &v123 - v16;
  v17 = __chkstk_darwin(v15);
  v125 = &v123 - v18;
  v19 = __chkstk_darwin(v17);
  v131 = &v123 - v20;
  v21 = __chkstk_darwin(v19);
  v136 = &v123 - v22;
  __chkstk_darwin(v21);
  v24 = &v123 - v23;
  v25 = _swiftEmptyArrayStorage;
  v149 = _swiftEmptyArrayStorage;
  *&v139 = a1;
  v133 = a1;

  v26 = sub_2B0C(&qword_229710, &unk_1D32C0);
  v27 = sub_42094(&qword_229718, &qword_229710, &unk_1D32C0, &protocol conformance descriptor for [A]);
  v132 = v24;
  v134 = v27;
  v135 = v26;
  result = sub_1B43C4();
  v137 = a4;
  if (a4[2])
  {
    v29 = v137;
    sub_1B57F4();
    sub_1B4884();
    result = sub_1B5844();
    v30 = v29 + 7;
    v31 = -1 << *(v29 + 32);
    v32 = result & ~v31;
    if ((*(v29 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v32))
    {
      v33 = ~v31;
      while (!*(v137[6] + v32) || *(v137[6] + v32) == 1)
      {
        v34 = sub_1B5604();

        if (v34)
        {
          goto LABEL_10;
        }

        v32 = (v32 + 1) & v33;
        if (((*(v30 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

LABEL_10:
      sub_43050(v132, v14, &qword_229708, &unk_1BCB60);
      v35 = v130;
      v36 = v128;
      if ((*(v130 + 48))(v14, 1, v128) != 1)
      {
        v84 = v129;
        (*(v35 + 32))(v129, v14, v36);
        sub_2B0C(&qword_229758, &unk_1BCBB0);
        v85 = v35;
        v86 = (sub_2B0C(&qword_229760, &qword_1CCC50) - 8);
        v87 = (*(*v86 + 80) + 32) & ~*(*v86 + 80);
        v88 = swift_allocObject();
        *(v88 + 16) = xmmword_1BCA80;
        v89 = (v88 + v87);
        v90 = v86[14];
        *v89 = 0xD000000000000016;
        *(v89 + 1) = 0x80000000001D5910;
        (*(v85 + 16))(&v89[v90], v84, v36);
        v91 = sub_13023C(v88);
        swift_setDeallocating();
        sub_42F48(v89, &qword_229760, &qword_1CCC50);
        swift_deallocClassInstance();
        v92 = sub_500F0(v91, sub_5EEF0, 8u);

        sub_5F428(v92);
        (*(v85 + 8))(v84, v36);
LABEL_66:
        sub_42F48(v132, &qword_229708, &unk_1BCB60);
        return v149;
      }

      result = sub_42F48(v14, &qword_229708, &unk_1BCB60);
    }
  }

LABEL_12:
  v37 = *(v133 + 16);
  if (!v37)
  {
    *&v139 = _swiftEmptyArrayStorage;
    sub_1B43C4();
LABEL_43:
    *&v139 = v25;
    v75 = v131;
    sub_1B43C4();
    v76 = v137;
    if (!v137[2])
    {
      goto LABEL_64;
    }

    sub_1B57F4();
    sub_1B4884();
    v77 = sub_1B5844();
    v78 = v76 + 7;
    v79 = -1 << *(v76 + 32);
    v80 = v77 & ~v79;
    if ((*(v76 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v80))
    {
      v81 = ~v79;
      while (1)
      {
        v82 = *(v76[6] + v80);
        if (v82 != 1 && v82 != 2)
        {
          break;
        }

        v83 = sub_1B5604();

        if (v83)
        {
          goto LABEL_53;
        }

        v80 = (v80 + 1) & v81;
        if (((*(v78 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
        {
          goto LABEL_55;
        }
      }

LABEL_53:
      v93 = v126;
      sub_43050(v136, v126, &qword_229708, &unk_1BCB60);
      v94 = v130;
      v95 = v128;
      if ((*(v130 + 48))(v93, 1, v128) != 1)
      {
        (*(v94 + 32))(v127, v93, v95);
        sub_2B0C(&qword_229758, &unk_1BCBB0);
        v101 = v94;
        v102 = (sub_2B0C(&qword_229760, &qword_1CCC50) - 8);
        v103 = (*(*v102 + 80) + 32) & ~*(*v102 + 80);
        v104 = swift_allocObject();
        *(v104 + 16) = xmmword_1BCA80;
        v105 = (v104 + v103);
        v106 = v102[14];
        *v105 = 0xD000000000000016;
        *(v105 + 1) = 0x80000000001D5910;
        v76 = v137;
        (*(v101 + 16))(&v105[v106], v127, v95);
        v107 = sub_13023C(v104);
        swift_setDeallocating();
        v108 = v105;
        v75 = v131;
        sub_42F48(v108, &qword_229760, &qword_1CCC50);
        swift_deallocClassInstance();
        v109 = sub_500F0(v107, sub_5EEF0, 8u);

        sub_5F428(v109);
        (*(v130 + 8))(v127, v95);
        if (!v76[2])
        {
          goto LABEL_64;
        }

LABEL_56:
        sub_1B57F4();
        sub_1B4884();
        v96 = sub_1B5844();
        v97 = -1 << *(v76 + 32);
        v98 = v96 & ~v97;
        if ((*(v78 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98))
        {
          v99 = ~v97;
          while (!*(v76[6] + v98) || *(v76[6] + v98) == 2)
          {
            v100 = sub_1B5604();

            if (v100)
            {
              goto LABEL_68;
            }

            v98 = (v98 + 1) & v99;
            if (((*(v78 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98) & 1) == 0)
            {
              goto LABEL_64;
            }
          }

LABEL_68:
          v111 = v125;
          sub_43050(v75, v125, &qword_229708, &unk_1BCB60);
          v112 = v130;
          v113 = v128;
          if ((*(v130 + 48))(v111, 1, v128) == 1)
          {
            sub_42F48(v75, &qword_229708, &unk_1BCB60);
            sub_42F48(v136, &qword_229708, &unk_1BCB60);
            sub_42F48(v132, &qword_229708, &unk_1BCB60);
            v132 = v111;
            goto LABEL_66;
          }

          v114 = v124;
          (*(v112 + 32))(v124, v111, v113);
          sub_2B0C(&qword_229758, &unk_1BCBB0);
          v115 = (sub_2B0C(&qword_229760, &qword_1CCC50) - 8);
          v116 = v75;
          v117 = (*(*v115 + 80) + 32) & ~*(*v115 + 80);
          v118 = swift_allocObject();
          *(v118 + 16) = xmmword_1BCA80;
          v119 = (v118 + v117);
          v120 = v115[14];
          *v119 = 0xD000000000000016;
          *(v119 + 1) = 0x80000000001D5910;
          (*(v112 + 16))(&v119[v120], v114, v113);
          v121 = sub_13023C(v118);
          swift_setDeallocating();
          sub_42F48(v119, &qword_229760, &qword_1CCC50);
          swift_deallocClassInstance();
          v122 = sub_500F0(v121, sub_5EEF0, 8u);

          sub_5F428(v122);
          (*(v112 + 8))(v114, v113);
          v110 = v116;
          goto LABEL_65;
        }

LABEL_64:
        v110 = v75;
LABEL_65:
        sub_42F48(v110, &qword_229708, &unk_1BCB60);
        sub_42F48(v136, &qword_229708, &unk_1BCB60);
        goto LABEL_66;
      }

      sub_42F48(v93, &qword_229708, &unk_1BCB60);
    }

LABEL_55:
    if (!v76[2])
    {
      goto LABEL_64;
    }

    goto LABEL_56;
  }

  v38 = 0;
  v39 = (v133 + 32);
  v40 = _swiftEmptyArrayStorage;
  v129 = (v133 + 32);
  do
  {
    v41 = &v39[136 * v38];
    v42 = v38;
    while (1)
    {
      if (v42 >= v37)
      {
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v43 = *(v41 + 7);
      v145 = *(v41 + 6);
      v146 = v43;
      v147 = v41[128];
      v44 = *(v41 + 3);
      v141 = *(v41 + 2);
      v142 = v44;
      v45 = *(v41 + 5);
      v143 = *(v41 + 4);
      v144 = v45;
      v46 = *(v41 + 1);
      v139 = *v41;
      v140 = v46;
      v38 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        goto LABEL_72;
      }

      if ((BYTE8(v139) & 1) == 0)
      {
        break;
      }

      v47 = sub_1B5604();
      sub_429F8(&v139, v138);

      if (v47)
      {
        goto LABEL_22;
      }

      result = sub_5C740(&v139);
      ++v42;
      v41 += 136;
      if (v38 == v37)
      {
        goto LABEL_27;
      }
    }

    sub_429F8(&v139, v138);

LABEL_22:
    result = swift_isUniquelyReferenced_nonNull_native();
    v148 = v40;
    if ((result & 1) == 0)
    {
      result = sub_37574(0, v40[2] + 1, 1);
      v40 = v148;
    }

    v39 = v129;
    v49 = v40[2];
    v48 = v40[3];
    if (v49 >= v48 >> 1)
    {
      result = sub_37574((v48 > 1), v49 + 1, 1);
      v40 = v148;
    }

    v40[2] = v49 + 1;
    v50 = &v40[17 * v49];
    *(v50 + 2) = v139;
    v51 = v140;
    v52 = v141;
    v53 = v143;
    *(v50 + 5) = v142;
    *(v50 + 6) = v53;
    *(v50 + 3) = v51;
    *(v50 + 4) = v52;
    v54 = v144;
    v55 = v145;
    v56 = v146;
    *(v50 + 160) = v147;
    *(v50 + 8) = v55;
    *(v50 + 9) = v56;
    *(v50 + 7) = v54;
  }

  while (v38 != v37);
LABEL_27:
  *&v139 = v40;
  result = sub_1B43C4();
  v57 = 0;
  v58 = v133 + 32;
  v25 = _swiftEmptyArrayStorage;
  v133 += 32;
LABEL_28:
  v59 = v58 + 136 * v57;
  v60 = v57;
  while (v60 < v37)
  {
    v61 = *(v59 + 112);
    v145 = *(v59 + 96);
    v146 = v61;
    v147 = *(v59 + 128);
    v62 = *(v59 + 48);
    v141 = *(v59 + 32);
    v142 = v62;
    v63 = *(v59 + 80);
    v143 = *(v59 + 64);
    v144 = v63;
    v64 = *(v59 + 16);
    v139 = *v59;
    v140 = v64;
    v57 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      goto LABEL_74;
    }

    if (BYTE8(v139))
    {
      sub_429F8(&v139, v138);

LABEL_36:
      result = swift_isUniquelyReferenced_nonNull_native();
      v148 = v25;
      if ((result & 1) == 0)
      {
        result = sub_37574(0, v25[2] + 1, 1);
        v25 = v148;
      }

      v67 = v25[2];
      v66 = v25[3];
      if (v67 >= v66 >> 1)
      {
        result = sub_37574((v66 > 1), v67 + 1, 1);
        v25 = v148;
      }

      v25[2] = v67 + 1;
      v68 = &v25[17 * v67];
      *(v68 + 2) = v139;
      v69 = v140;
      v70 = v141;
      v71 = v143;
      *(v68 + 5) = v142;
      *(v68 + 6) = v71;
      *(v68 + 3) = v69;
      *(v68 + 4) = v70;
      v72 = v144;
      v73 = v145;
      v74 = v146;
      *(v68 + 160) = v147;
      *(v68 + 8) = v73;
      *(v68 + 9) = v74;
      *(v68 + 7) = v72;
      v58 = v133;
      if (v57 != v37)
      {
        goto LABEL_28;
      }

      goto LABEL_43;
    }

    v65 = sub_1B5604();
    sub_429F8(&v139, v138);

    if (v65)
    {
      goto LABEL_36;
    }

    result = sub_5C740(&v139);
    ++v60;
    v59 += 136;
    if (v57 == v37)
    {
      goto LABEL_43;
    }
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
  return result;
}

uint64_t sub_4DB8C(uint64_t *a1, __int128 *a2)
{
  v112 = a1;
  v3 = sub_2B0C(&qword_229728, &unk_1D14A0);
  v110 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v103 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v98 = (&v89 - v6);
  v7 = sub_2B0C(&qword_229708, &unk_1BCB60);
  __chkstk_darwin(v7 - 8);
  v9 = &v89 - v8;
  v10 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v102 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v97 = &v89 - v15;
  v16 = __chkstk_darwin(v14);
  v96 = &v89 - v17;
  __chkstk_darwin(v16);
  v95 = &v89 - v18;
  v19 = sub_2B0C(&qword_229778, &qword_1BCBD0);
  v20 = __chkstk_darwin(v19 - 8);
  v105 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v111 = &v89 - v22;
  v23 = a2[7];
  v123 = a2[6];
  v124 = v23;
  v125 = *(a2 + 128);
  v24 = a2[3];
  v119 = a2[2];
  v120 = v24;
  v25 = a2[5];
  v121 = a2[4];
  v122 = v25;
  v26 = a2[1];
  v117 = *a2;
  v118 = v26;
  if (v120)
  {
    v27 = v120;
  }

  else
  {
    v27 = sub_130214(_swiftEmptyArrayStorage);
  }

  v28 = *(v27 + 64);
  v90 = v27 + 64;
  v29 = 1 << *(v27 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v28;
  v32 = (v29 + 63) >> 6;
  v126 = (v110 + 56);
  v113 = (v110 + 48);
  v100 = (v11 + 32);
  v101 = (v11 + 16);
  v99 = (v11 + 8);
  v104 = (v11 + 48);

  v33 = 0;
  v106 = v9;
  v34 = v111;
  v91 = v32;
  v92 = v27;
  do
  {
LABEL_8:
    if (!v31)
    {
      do
      {
        v35 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_52;
        }

        if (v35 >= v32)
        {
        }

        v31 = *(v90 + 8 * v35);
        ++v33;
      }

      while (!v31);
      v33 = v35;
    }

    v36 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v37 = v36 | (v33 << 6);
    v38 = *(*(v27 + 56) + 8 * v37);
    v109 = *(v38 + 16);
  }

  while (!v109);
  v93 = v33;
  v94 = v31;
  v108 = *(*(v27 + 48) + v37);

  v39 = 0;
  v40 = 32;
  v107 = v38;
  while (v39 < *(v38 + 16))
  {
    memcpy(v116, (v38 + v40), 0x231uLL);
    v41 = *v112;
    if (*(*v112 + 16))
    {
      sub_4299C(v116, v114);
      v42 = sub_3ABBC(v116);
      if (v43)
      {
        v44 = v110;
        v45 = v111;
        sub_43050(*(v41 + 56) + *(v110 + 72) * v42, v111, &qword_229728, &unk_1D14A0);
        v46 = *(v44 + 56);
        v34 = v45;
        v46(v45, 0, 1, v3);
      }

      else
      {
        v46 = *v126;
        v34 = v111;
        (*v126)(v111, 1, 1, v3);
      }
    }

    else
    {
      v46 = *v126;
      (*v126)(v34, 1, 1, v3);
      sub_4299C(v116, v114);
    }

    v47 = *v113;
    v48 = (*v113)(v34, 1, v3);
    v49 = v34;
    v50 = _swiftEmptySetSingleton;
    if (!v48)
    {
      v50 = *v49;
    }

    sub_42F48(v49, &qword_229778, &qword_1BCBD0);
    v115 = v50;
    sub_1122C4(v114, v108);
    if (*(v41 + 16) && (v51 = sub_3ABBC(v116), (v52 & 1) != 0))
    {
      v53 = v105;
      sub_43050(*(v41 + 56) + *(v110 + 72) * v51, v105, &qword_229728, &unk_1D14A0);
      v54 = 0;
    }

    else
    {
      v54 = 1;
      v53 = v105;
    }

    v46(v53, v54, 1, v3);
    if (v47(v53, 1, v3))
    {
      sub_42F48(v53, &qword_229778, &qword_1BCBD0);
      v55 = _swiftEmptyArrayStorage;
    }

    else
    {
      v56 = v53;
      v57 = *v101;
      v58 = v96;
      (*v101)(v96, v56 + *(v3 + 48), v10);
      sub_42F48(v56, &qword_229778, &qword_1BCBD0);
      v59 = v95;
      (*v100)(v95, v58, v10);
      v57(v97, v59, v10);
      sub_42094(&qword_2296E8, &qword_2296B8, &unk_1BCAF0, &protocol conformance descriptor for NonEmpty<A>);
      v55 = sub_1B49B4();
      (*v99)(v59, v10);
    }

    v60 = v106;
    sub_429F8(&v117, v114);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_33358(0, *(v55 + 2) + 1, 1, v55);
    }

    v62 = *(v55 + 2);
    v61 = *(v55 + 3);
    if (v62 >= v61 >> 1)
    {
      v55 = sub_33358((v61 > 1), v62 + 1, 1, v55);
    }

    *(v55 + 2) = v62 + 1;
    v63 = &v55[136 * v62];
    *(v63 + 2) = v117;
    v64 = v118;
    v65 = v119;
    v66 = v121;
    *(v63 + 5) = v120;
    *(v63 + 6) = v66;
    *(v63 + 3) = v64;
    *(v63 + 4) = v65;
    v67 = v122;
    v68 = v123;
    v69 = v124;
    v63[160] = v125;
    *(v63 + 8) = v68;
    *(v63 + 9) = v69;
    *(v63 + 7) = v67;
    v114[0] = v55;
    sub_2B0C(&qword_229710, &unk_1D32C0);
    sub_42094(&qword_229718, &qword_229710, &unk_1D32C0, &protocol conformance descriptor for [A]);
    sub_1B43C4();
    if ((*v104)(v60, 1, v10) != 1)
    {
      v70 = v102;
      (*v100)(v102, v60, v10);
      v71 = *(v3 + 48);
      v72 = v98;
      *v98 = v115;
      (*v101)((v72 + v71), v70, v10);
      sub_5ED18(v72, v103, &qword_229728, &unk_1D14A0);
      v73 = v112;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = *v73;
      v114[0] = v75;
      v77 = sub_3ABBC(v116);
      v78 = *(v75 + 16);
      v79 = (v76 & 1) == 0;
      v80 = v78 + v79;
      if (__OFADD__(v78, v79))
      {
        goto LABEL_51;
      }

      v81 = v76;
      if (*(v75 + 24) >= v80)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v76 & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        else
        {
          sub_185A54();
          if ((v81 & 1) == 0)
          {
            goto LABEL_41;
          }
        }
      }

      else
      {
        sub_17E830(v80, isUniquelyReferenced_nonNull_native);
        v82 = sub_3ABBC(v116);
        if ((v81 & 1) != (v83 & 1))
        {
          goto LABEL_54;
        }

        v77 = v82;
        if ((v81 & 1) == 0)
        {
LABEL_41:
          v84 = v114[0];
          *(v114[0] + 8 * (v77 >> 6) + 64) |= 1 << v77;
          memcpy((v84[6] + 568 * v77), v116, 0x231uLL);
          sub_5ED18(v103, v84[7] + *(v110 + 72) * v77, &qword_229728, &unk_1D14A0);
          v85 = v84[2];
          v86 = __OFADD__(v85, 1);
          v87 = v85 + 1;
          if (v86)
          {
            goto LABEL_53;
          }

          v84[2] = v87;
          goto LABEL_46;
        }
      }

      sub_2601C(v116);
      v84 = v114[0];
      sub_5E96C(v103, *(v114[0] + 56) + *(v110 + 72) * v77);
LABEL_46:
      (*v99)(v102, v10);
      *v112 = v84;
      goto LABEL_16;
    }

    sub_2601C(v116);
    sub_42F48(v60, &qword_229708, &unk_1BCB60);
LABEL_16:
    v38 = v107;
    ++v39;
    v40 += 568;
    v34 = v111;
    if (v109 == v39)
    {

      v32 = v91;
      v27 = v92;
      v33 = v93;
      v31 = v94;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  result = sub_1B5784();
  __break(1u);
  return result;
}

void *sub_4E600(uint64_t a1, void (*a2)(void **, __int128 *))
{
  v4 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  __chkstk_darwin(v4);
  v6 = _swiftEmptyDictionarySingleton;
  v46 = _swiftEmptyDictionarySingleton;
  (*(v7 + 16))(&v23 - v5, a1, v4);
  sub_42094(&qword_2296E8, &qword_2296B8, &unk_1BCAF0, &protocol conformance descriptor for NonEmpty<A>);
  sub_1B4974();
  v9 = v44;
  v8 = v45;
  v10 = *(v44 + 16);
  if (v45 == v10)
  {
LABEL_6:

    return v6;
  }

  else
  {
    while ((v8 & 0x8000000000000000) == 0)
    {
      if (v8 >= *(v9 + 16))
      {
        goto LABEL_8;
      }

      v11 = v9 + 32 + 136 * v8;
      v42[0] = *v11;
      v12 = *(v11 + 16);
      v13 = *(v11 + 32);
      v14 = *(v11 + 64);
      v42[3] = *(v11 + 48);
      v42[4] = v14;
      v42[1] = v12;
      v42[2] = v13;
      v15 = *(v11 + 80);
      v16 = *(v11 + 96);
      v17 = *(v11 + 112);
      v43 = *(v11 + 128);
      v42[6] = v16;
      v42[7] = v17;
      v42[5] = v15;
      v45 = v8 + 1;
      v18 = *(v11 + 112);
      v39 = *(v11 + 96);
      v40 = v18;
      v41 = *(v11 + 128);
      v19 = *(v11 + 48);
      v35 = *(v11 + 32);
      v36 = v19;
      v20 = *(v11 + 80);
      v37 = *(v11 + 64);
      v38 = v20;
      v21 = *(v11 + 16);
      v33 = *v11;
      v34 = v21;
      sub_429F8(v42, &v24);
      a2(&v46, &v33);
      v30 = v39;
      v31 = v40;
      v32 = v41;
      v26 = v35;
      v27 = v36;
      v28 = v37;
      v29 = v38;
      v24 = v33;
      v25 = v34;
      sub_5C740(&v24);
      v8 = v45;
      if (v45 == v10)
      {
        v6 = v46;
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    __break(1u);

    v30 = v39;
    v31 = v40;
    v32 = v41;
    v26 = v35;
    v27 = v36;
    v28 = v37;
    v29 = v38;
    v24 = v33;
    v25 = v34;
    sub_5C740(&v24);

    __break(1u);
  }

  return result;
}

uint64_t sub_4E894(uint64_t *a1, __int128 *a2)
{
  v69 = a1;
  v3 = sub_2B0C(&qword_229708, &unk_1BCB60);
  v4 = __chkstk_darwin(v3 - 8);
  v61 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v66 = &v52 - v6;
  v80 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v7 = __chkstk_darwin(v80);
  v60 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v57 = &v52 - v10;
  v11 = __chkstk_darwin(v9);
  v56 = &v52 - v12;
  __chkstk_darwin(v11);
  v55 = &v52 - v14;
  v15 = a2[3];
  v73 = a2[2];
  v74 = v15;
  v79 = *(a2 + 128);
  v16 = a2[7];
  v77 = a2[6];
  v78 = v16;
  v17 = a2[5];
  v75 = a2[4];
  v76 = v17;
  v18 = v75 + 56;
  v19 = 1 << *(v75 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = a2[1];
  v22 = v20 & *(v75 + 56);
  v23 = (v19 + 63) >> 6;
  v71 = *a2;
  v72 = v21;
  v63 = (v13 + 32);
  v64 = (v13 + 16);
  v62 = (v13 + 8);
  v65 = (v13 + 48);
  v58 = v13;
  v59 = (v13 + 56);
  v67 = v75;

  v25 = 0;
  v53 = v23;
  v54 = v18;
  v26 = v80;
  if (v22)
  {
    while (1)
    {
      v27 = v25;
LABEL_8:
      v28 = *(*(v67 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v22)))));
      v29 = *v69;
      v30 = *(*v69 + 16);
      v68 = v28;
      if (v30 && (v31 = sub_43124(v28), (v32 & 1) != 0))
      {
        v33 = v58;
        v34 = *(v58 + 16);
        v34(v56, *(v29 + 56) + *(v58 + 72) * v31, v26);
        v35 = v55;
        (*(v33 + 32))();
        v34(v57, v35, v26);
        v23 = v53;
        sub_42094(&qword_2296E8, &qword_2296B8, &unk_1BCAF0, &protocol conformance descriptor for NonEmpty<A>);
        v36 = sub_1B49B4();
        v37 = v35;
        v18 = v54;
        (*(v33 + 8))(v37, v26);
      }

      else
      {
        v36 = _swiftEmptyArrayStorage;
      }

      sub_429F8(&v71, &v70);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_33358(0, *(v36 + 2) + 1, 1, v36);
      }

      v39 = *(v36 + 2);
      v38 = *(v36 + 3);
      if (v39 >= v38 >> 1)
      {
        v36 = sub_33358((v38 > 1), v39 + 1, 1, v36);
      }

      v22 &= v22 - 1;
      *(v36 + 2) = v39 + 1;
      v40 = &v36[136 * v39];
      *(v40 + 2) = v71;
      v41 = v72;
      v42 = v73;
      v43 = v75;
      *(v40 + 5) = v74;
      *(v40 + 6) = v43;
      *(v40 + 3) = v41;
      *(v40 + 4) = v42;
      v44 = v76;
      v45 = v77;
      v46 = v78;
      v40[160] = v79;
      *(v40 + 8) = v45;
      *(v40 + 9) = v46;
      *(v40 + 7) = v44;
      v70 = v36;
      sub_2B0C(&qword_229710, &unk_1D32C0);
      sub_42094(&qword_229718, &qword_229710, &unk_1D32C0, &protocol conformance descriptor for [A]);
      v47 = v66;
      sub_1B43C4();
      if ((*v65)(v47, 1, v80) == 1)
      {
        result = sub_42F48(v47, &qword_229708, &unk_1BCB60);
        v25 = v27;
        if (!v22)
        {
          break;
        }
      }

      else
      {
        v48 = v60;
        v49 = v47;
        v50 = v80;
        (*v63)(v60, v49, v80);
        v51 = v61;
        (*v64)(v61, v48, v50);
        (*v59)(v51, 0, 1, v50);
        sub_49948(v51, v68);
        result = (*v62)(v48, v50);
        v25 = v27;
        if (!v22)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= v23)
    {
    }

    v22 = *(v18 + 8 * v27);
    ++v25;
    if (v22)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_4EE5C(uint64_t *a1, __int128 *a2)
{
  v69 = a1;
  v3 = sub_2B0C(&qword_229708, &unk_1BCB60);
  v4 = __chkstk_darwin(v3 - 8);
  v61 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v66 = &v52 - v6;
  v80 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v7 = __chkstk_darwin(v80);
  v60 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v57 = &v52 - v10;
  v11 = __chkstk_darwin(v9);
  v56 = &v52 - v12;
  __chkstk_darwin(v11);
  v55 = &v52 - v14;
  v15 = a2[3];
  v73 = a2[2];
  v74 = v15;
  v79 = *(a2 + 128);
  v16 = a2[7];
  v77 = a2[6];
  v78 = v16;
  v17 = a2[5];
  v75 = a2[4];
  v76 = v17;
  v18 = *(&v75 + 1) + 56;
  v19 = 1 << *(*(&v75 + 1) + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = a2[1];
  v22 = v20 & *(*(&v75 + 1) + 56);
  v23 = (v19 + 63) >> 6;
  v71 = *a2;
  v72 = v21;
  v63 = (v13 + 32);
  v64 = (v13 + 16);
  v62 = (v13 + 8);
  v65 = (v13 + 48);
  v58 = v13;
  v59 = (v13 + 56);
  v67 = *(&v75 + 1);

  v25 = 0;
  v53 = v23;
  v54 = v18;
  v26 = v80;
  if (v22)
  {
    while (1)
    {
      v27 = v25;
LABEL_8:
      v28 = *(*(v67 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v22)))));
      v29 = *v69;
      v30 = *(*v69 + 16);
      v68 = v28;
      if (v30 && (v31 = sub_43124(v28), (v32 & 1) != 0))
      {
        v33 = v58;
        v34 = *(v58 + 16);
        v34(v56, *(v29 + 56) + *(v58 + 72) * v31, v26);
        v35 = v55;
        (*(v33 + 32))();
        v34(v57, v35, v26);
        v23 = v53;
        sub_42094(&qword_2296E8, &qword_2296B8, &unk_1BCAF0, &protocol conformance descriptor for NonEmpty<A>);
        v36 = sub_1B49B4();
        v37 = v35;
        v18 = v54;
        (*(v33 + 8))(v37, v26);
      }

      else
      {
        v36 = _swiftEmptyArrayStorage;
      }

      sub_429F8(&v71, &v70);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_33358(0, *(v36 + 2) + 1, 1, v36);
      }

      v39 = *(v36 + 2);
      v38 = *(v36 + 3);
      if (v39 >= v38 >> 1)
      {
        v36 = sub_33358((v38 > 1), v39 + 1, 1, v36);
      }

      v22 &= v22 - 1;
      *(v36 + 2) = v39 + 1;
      v40 = &v36[136 * v39];
      *(v40 + 2) = v71;
      v41 = v72;
      v42 = v73;
      v43 = v75;
      *(v40 + 5) = v74;
      *(v40 + 6) = v43;
      *(v40 + 3) = v41;
      *(v40 + 4) = v42;
      v44 = v76;
      v45 = v77;
      v46 = v78;
      v40[160] = v79;
      *(v40 + 8) = v45;
      *(v40 + 9) = v46;
      *(v40 + 7) = v44;
      v70 = v36;
      sub_2B0C(&qword_229710, &unk_1D32C0);
      sub_42094(&qword_229718, &qword_229710, &unk_1D32C0, &protocol conformance descriptor for [A]);
      v47 = v66;
      sub_1B43C4();
      if ((*v65)(v47, 1, v80) == 1)
      {
        result = sub_42F48(v47, &qword_229708, &unk_1BCB60);
        v25 = v27;
        if (!v22)
        {
          break;
        }
      }

      else
      {
        v48 = v60;
        v49 = v47;
        v50 = v80;
        (*v63)(v60, v49, v80);
        v51 = v61;
        (*v64)(v61, v48, v50);
        (*v59)(v51, 0, 1, v50);
        sub_49948(v51, v68);
        result = (*v62)(v48, v50);
        v25 = v27;
        if (!v22)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= v23)
    {
    }

    v22 = *(v18 + 8 * v27);
    ++v25;
    if (v22)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_4F40C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = a2;
  }

  v5 = sub_4F46C(v4, a1);
  v6 = sub_44DC0(v5);

  return v6;
}

void *sub_4F46C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  __dst[0] = sub_453FC(a2);

  sub_50984(__dst);

  sub_43174();
  v6 = v5 >> 1;
  v7 = (v5 >> 1) - v4;
  if (__OFSUB__(v5 >> 1, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v7)
  {
    swift_unknownObjectRelease();
    v10 = _swiftEmptyArrayStorage;
LABEL_14:

    v16 = sub_5E79C(v2, v10, sub_5E0E0, sub_5E0E0);
    swift_bridgeObjectRelease_n();
    return v16;
  }

  v8 = v3;
  v9 = v4;
  v21 = _swiftEmptyArrayStorage;
  sub_3749C(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v18 = v2;
    if (v9 < v6)
    {
      v10 = v21;
      v11 = (v8 + 576 * v9);
      v12 = v9 + 1;
      while (1)
      {
        memcpy(__dst, v11, sizeof(__dst));
        sub_43050(__dst, v19, &qword_229228, &qword_1BCB80);
        v21 = v10;
        v14 = v10[2];
        v13 = v10[3];
        if (v14 >= v13 >> 1)
        {
          sub_3749C((v13 > 1), v14 + 1, 1);
          v10 = v21;
        }

        v10[2] = v14 + 1;
        memcpy(&v10[71 * v14 + 4], __dst, 0x231uLL);
        if (v6 == v12)
        {
          break;
        }

        if (v12 >= v9)
        {
          v11 += 576;
          if (v12++ < v6)
          {
            continue;
          }
        }

        goto LABEL_15;
      }

      swift_unknownObjectRelease();
      v2 = v18;
      goto LABEL_14;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_4F674@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v4 = a1[3];
  v8 = a1[2];
  v3 = v8;
  v9 = v4;
  *a2 = v7[0];
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
  return sub_42BA4(v7, &v6);
}

void *sub_4F6C4(uint64_t a1, uint64_t a2)
{
  v62 = sub_2B0C(&qword_229738, &unk_1BCB90);
  v4 = __chkstk_darwin(v62);
  v61 = (v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v60 = v54 - v6;
  v7 = *(a2 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v54[1] = a1;
    v67 = _swiftEmptyArrayStorage;
    sub_37638(0, v7, 0);
    v9 = v67;
    v10 = a2 + 64;
    v11 = sub_1B4F84();
    v12 = 0;
    v13 = *(a2 + 36);
    v55 = a2 + 72;
    v56 = v7;
    v57 = v13;
    v58 = a2 + 64;
    v59 = a2;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a2 + 32))
    {
      if ((*(v10 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_36;
      }

      if (v13 != *(a2 + 36))
      {
        goto LABEL_37;
      }

      v64 = v11 >> 6;
      v65 = 1 << v11;
      v63 = v12;
      v16 = v62;
      v17 = *(v62 + 48);
      v18 = *(a2 + 48);
      v19 = *(a2 + 56);
      v20 = *(v18 + 8 * v11);
      v21 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
      v22 = *(v21 - 8);
      v23 = v9;
      v24 = v60;
      (*(v22 + 16))(&v60[v17], v19 + *(v22 + 72) * v11, v21);
      v25 = v61;
      v66 = v20;
      *v61 = v20;
      v26 = &v24[v17];
      v9 = v23;
      (*(v22 + 32))(v25 + *(v16 + 48), v26, v21);
      v27 = sub_1B4374();
      sub_42F48(v25, &qword_229738, &unk_1BCB90);
      v67 = v23;
      v29 = *(v23 + 2);
      v28 = *(v23 + 3);
      if (v29 >= v28 >> 1)
      {
        sub_37638((v28 > 1), v29 + 1, 1);
        v9 = v67;
      }

      *(v9 + 2) = v29 + 1;
      v30 = &v9[16 * v29];
      *(v30 + 4) = v66;
      *(v30 + 5) = v27;
      a2 = v59;
      v14 = 1 << *(v59 + 32);
      if (v11 >= v14)
      {
        goto LABEL_38;
      }

      v10 = v58;
      v31 = *(v58 + 8 * v64);
      if ((v31 & v65) == 0)
      {
        goto LABEL_39;
      }

      LODWORD(v13) = v57;
      if (v57 != *(v59 + 36))
      {
        goto LABEL_40;
      }

      v32 = v31 & (-2 << (v11 & 0x3F));
      if (v32)
      {
        v14 = __clz(__rbit64(v32)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v15 = v56;
      }

      else
      {
        v33 = v64 << 6;
        v34 = v64 + 1;
        v15 = v56;
        v35 = (v55 + 8 * v64);
        while (v34 < (v14 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            sub_42FF0(v11, v57, 0);
            v14 = __clz(__rbit64(v36)) + v33;
            goto LABEL_4;
          }
        }

        sub_42FF0(v11, v57, 0);
      }

LABEL_4:
      v12 = v63 + 1;
      v11 = v14;
      if (v63 + 1 == v15)
      {
        v8 = _swiftEmptyArrayStorage;
        goto LABEL_22;
      }
    }

    goto LABEL_35;
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_22:
  v38 = a2;
  v67 = v9;

  sub_50B18(&v67);

  sub_43174();
  v42 = v41 >> 1;
  v43 = (v41 >> 1) - v40;
  if (__OFSUB__(v41 >> 1, v40))
  {
    goto LABEL_41;
  }

  if (!v43)
  {
LABEL_33:
    swift_unknownObjectRelease();

    v52 = sub_5E79C(v38, v8, sub_5E494, sub_5E494);
    swift_bridgeObjectRelease_n();
    return v52;
  }

  v44 = v39;
  v45 = v40;
  v67 = _swiftEmptyArrayStorage;
  sub_3741C(0, v43 & ~(v43 >> 63), 0);
  if ((v43 & 0x8000000000000000) == 0)
  {
    v8 = v67;
    if (v45 <= v42)
    {
      v46 = v42;
    }

    else
    {
      v46 = v45;
    }

    v47 = v46 - v45;
    v48 = (v44 + 16 * v45);
    while (v47)
    {
      v49 = *v48;
      v67 = v8;
      v51 = *(v8 + 2);
      v50 = *(v8 + 3);
      if (v51 >= v50 >> 1)
      {
        sub_3741C((v50 > 1), v51 + 1, 1);
        v8 = v67;
      }

      *(v8 + 2) = v51 + 1;
      *&v8[8 * v51 + 32] = v49;
      --v47;
      v48 += 2;
      if (!--v43)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  __break(1u);

  __break(1u);
  return result;
}

void *sub_4FBC4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v63 = a6;
  v62 = a5;
  v61 = sub_2B0C(&qword_229738, &unk_1BCB90);
  v9 = __chkstk_darwin(v61);
  v60 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v59 = (&v50 - v12);
  __chkstk_darwin(v11);
  v58 = &v50 - v13;
  v14 = type metadata accessor for CollectionRecommendation(0);
  v56 = *(v14 - 8);
  v57 = v14;
  __chkstk_darwin(v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v17 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v17 = a2;
  }

  v18 = sub_4F6C4(v17, a1);
  v19 = *(v18 + 2);
  if (v19)
  {
    v69 = _swiftEmptyArrayStorage;
    sub_375B4(0, v19, 0);
    v20 = v69;
    v21 = v18 + 64;
    result = sub_1B4F84();
    v23 = result;
    v24 = 0;
    v25 = *(v18 + 9);
    v51 = v18 + 72;
    v52 = v19;
    v53 = v25;
    v54 = v18 + 64;
    v55 = v18;
    while ((v23 & 0x8000000000000000) == 0 && v23 < 1 << v18[32])
    {
      if ((*&v21[8 * (v23 >> 6)] & (1 << v23)) == 0)
      {
        goto LABEL_27;
      }

      if (v25 != *(v18 + 9))
      {
        goto LABEL_28;
      }

      v65 = 1 << v23;
      v66 = v23 >> 6;
      v64 = v24;
      v27 = v61;
      v28 = *(v61 + 48);
      v68 = v20;
      v29 = *(v18 + 7);
      v30 = *(*(v18 + 6) + 8 * v23);
      v31 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
      v32 = *(v31 - 8);
      v33 = v29 + *(v32 + 72) * v23;
      v34 = v16;
      v35 = v58;
      (*(v32 + 16))(&v58[v28], v33, v31);
      v36 = v59;
      *v59 = v30;
      (*(v32 + 32))(v36 + *(v27 + 48), &v35[v28], v31);
      v37 = sub_2B0C(&qword_229740, &qword_1C6EE0);
      v67 = *(v37 + 48);
      v38 = *(v37 + 64);
      sub_1B4364();
      v39 = v60;
      sub_5ED18(v36, v60, &qword_229738, &unk_1BCB90);
      v40 = *(v27 + 48);
      *&v34[v67] = *v39;
      v34[v38] = 2;
      v16 = v34;
      v20 = v68;
      swift_storeEnumTagMultiPayload();
      (*(v32 + 8))(&v39[v40], v31);
      v69 = v20;
      v42 = v20[2];
      v41 = v20[3];
      if (v42 >= v41 >> 1)
      {
        sub_375B4((v41 > 1), v42 + 1, 1);
        v20 = v69;
      }

      v20[2] = v42 + 1;
      result = sub_5EB94(v16, v20 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v42, type metadata accessor for CollectionRecommendation);
      v18 = v55;
      v26 = 1 << v55[32];
      if (v23 >= v26)
      {
        goto LABEL_29;
      }

      v21 = v54;
      v43 = *&v54[8 * v66];
      if ((v43 & v65) == 0)
      {
        goto LABEL_30;
      }

      LODWORD(v25) = v53;
      if (v53 != *(v55 + 9))
      {
        goto LABEL_31;
      }

      v44 = v43 & (-2 << (v23 & 0x3F));
      if (v44)
      {
        v26 = __clz(__rbit64(v44)) | v23 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v45 = v66 << 6;
        v46 = v66 + 1;
        v47 = &v51[8 * v66];
        while (v46 < (v26 + 63) >> 6)
        {
          v49 = *v47++;
          v48 = v49;
          v45 += 64;
          ++v46;
          if (v49)
          {
            result = sub_42FF0(v23, v53, 0);
            v26 = __clz(__rbit64(v48)) + v45;
            goto LABEL_7;
          }
        }

        result = sub_42FF0(v23, v53, 0);
      }

LABEL_7:
      v24 = v64 + 1;
      v23 = v26;
      if (v64 + 1 == v52)
      {

        return v20;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

void *sub_500F0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v55 = a3;
  v54 = a2;
  v53 = sub_2B0C(&qword_229768, &unk_1BCBC0);
  v4 = __chkstk_darwin(v53);
  v52 = (&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v51 = &v44 - v6;
  v7 = type metadata accessor for CollectionRecommendation(0);
  v49 = *(v7 - 8);
  v50 = v7;
  __chkstk_darwin(v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v12 = v9;
  v61 = _swiftEmptyArrayStorage;
  sub_375B4(0, v10, 0);
  v11 = v61;
  v13 = a1 + 64;
  result = sub_1B4F84();
  v15 = result;
  v16 = 0;
  v17 = 0;
  v18 = *(a1 + 36);
  v44 = a1 + 72;
  v45 = v10;
  v46 = v18;
  v47 = a1 + 64;
  v48 = a1;
  while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
  {
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
    {
      goto LABEL_22;
    }

    if (v18 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v57 = 1 << v15;
    v58 = v15 >> 6;
    v56 = v16;
    v59 = v17;
    v20 = v53;
    v21 = *(v53 + 48);
    v22 = *(a1 + 56);
    v23 = (*(a1 + 48) + 16 * v15);
    v25 = *v23;
    v24 = v23[1];
    v26 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
    v27 = *(v26 - 8);
    v60 = v11;
    v28 = v27;
    v29 = v22 + *(v27 + 72) * v15;
    v30 = v51;
    (*(v27 + 16))(&v51[v21], v29, v26);
    v31 = v52;
    *v52 = v25;
    *(v31 + 8) = v24;
    (*(v28 + 32))(v31 + *(v20 + 48), &v30[v21], v26);
    v32 = v12;
    v33 = *(sub_2B0C(&qword_229770, &qword_1C6F30) + 48);

    v34 = v59;
    sub_1B4364();
    v17 = v34;
    v11 = v60;
    sub_42F48(v31, &qword_229768, &unk_1BCBC0);
    *(v32 + v33) = 2;
    v12 = v32;
    swift_storeEnumTagMultiPayload();
    v61 = v11;
    v36 = v11[2];
    v35 = v11[3];
    if (v36 >= v35 >> 1)
    {
      sub_375B4((v35 > 1), v36 + 1, 1);
      v11 = v61;
    }

    v11[2] = v36 + 1;
    result = sub_5EB94(v12, v11 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v36, type metadata accessor for CollectionRecommendation);
    a1 = v48;
    v19 = 1 << *(v48 + 32);
    if (v15 >= v19)
    {
      goto LABEL_24;
    }

    v13 = v47;
    v37 = *(v47 + 8 * v58);
    if ((v37 & v57) == 0)
    {
      goto LABEL_25;
    }

    LODWORD(v18) = v46;
    if (v46 != *(v48 + 36))
    {
      goto LABEL_26;
    }

    v38 = v37 & (-2 << (v15 & 0x3F));
    if (v38)
    {
      v19 = __clz(__rbit64(v38)) | v15 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v39 = v58 << 6;
      v40 = v58 + 1;
      v41 = (v44 + 8 * v58);
      while (v40 < (v19 + 63) >> 6)
      {
        v43 = *v41++;
        v42 = v43;
        v39 += 64;
        ++v40;
        if (v43)
        {
          result = sub_42FF0(v15, v46, 0);
          v19 = __clz(__rbit64(v42)) + v39;
          goto LABEL_4;
        }
      }

      result = sub_42FF0(v15, v46, 0);
    }

LABEL_4:
    v16 = v56 + 1;
    v15 = v19;
    if (v56 + 1 == v45)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_5059C()
{
  sub_2BF8((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_5061C(uint64_t (*a1)(_BYTE *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    v8 = v5 - 1;
    while (1)
    {
      memcpy(__dst, v7, 0x231uLL);
      memcpy(__src, v7, 0x231uLL);
      sub_4299C(__dst, v12);
      v9 = a1(__src);
      if (v3)
      {
        break;
      }

      v4 = v9;
      memcpy(v12, __src, 0x231uLL);
      sub_2601C(v12);
      v10 = v8-- == 0;
      v7 += 568;
      if ((v4 | v10))
      {
        return v4 & 1;
      }
    }

    memcpy(v12, __src, 0x231uLL);
    sub_2601C(v12);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_50718(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

Swift::Int sub_507C4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_56B58(v2);
  }

  v3 = *(v2 + 2);
  v41[0] = (v2 + 32);
  v41[1] = v3;
  result = sub_1B5584(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 168;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 + 7) >= *(v12 - 10))
          {
            break;
          }

          v13 = v12 - 136;
          v32 = *v12;
          v14 = *(v12 + 1);
          v15 = *(v12 + 2);
          v16 = *(v12 + 4);
          v35 = *(v12 + 3);
          v36 = v16;
          v33 = v14;
          v34 = v15;
          v17 = *(v12 + 5);
          v18 = *(v12 + 6);
          v19 = *(v12 + 7);
          v40 = v12[128];
          v38 = v18;
          v39 = v19;
          v37 = v17;
          v20 = *(v12 - 88);
          *(v12 + 2) = *(v12 - 104);
          *(v12 + 3) = v20;
          *(v12 + 16) = *(v12 - 1);
          v21 = *(v12 - 24);
          *(v12 + 6) = *(v12 - 40);
          *(v12 + 7) = v21;
          v22 = *(v12 - 56);
          *(v12 + 4) = *(v12 - 72);
          *(v12 + 5) = v22;
          v23 = *(v12 - 120);
          *v12 = *(v12 - 136);
          *(v12 + 1) = v23;
          *v13 = v32;
          v24 = v33;
          v25 = v34;
          v26 = v36;
          *(v13 + 3) = v35;
          *(v13 + 4) = v26;
          *(v13 + 1) = v24;
          *(v13 + 2) = v25;
          v27 = v37;
          v28 = v38;
          v29 = v39;
          v13[128] = v40;
          *(v13 + 6) = v28;
          *(v13 + 7) = v29;
          *(v13 + 5) = v27;
          v12 -= 136;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 136;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1B4B34();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    *&v32 = v7 + 4;
    *(&v32 + 1) = v6;
    sub_51544(&v32, v31, v41, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

void *sub_50984(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_56B6C(v2);
  }

  v3 = v2[2];
  v15[0] = (v2 + 4);
  v15[1] = v3;
  result = sub_1B5584(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2;
      do
      {
        v11 = v8;
        v12 = v10;
        do
        {
          if (v12[75] >= v12[147])
          {
            break;
          }

          memcpy(__dst, v12 + 76, sizeof(__dst));
          memcpy(v12 + 76, v12 + 4, 0x240uLL);
          result = memcpy(v12 + 4, __dst, 0x240uLL);
          v12 -= 72;
        }

        while (!__CFADD__(v11++, 1));
        ++v9;
        v10 += 72;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_2B0C(&qword_229228, &qword_1BCB80);
      v7 = sub_1B4B34();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    __dst[0] = v7 + 4;
    __dst[1] = v6;
    sub_51B9C(__dst, v16, v15, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

Swift::Int sub_50B18(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_56B80(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1B5584(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[16 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 1) >= v11)
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 16;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_2B0C(&qword_229750, &qword_1BCBA8);
      v7 = sub_1B4B34();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_5218C(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

unint64_t sub_50C90()
{
  result = qword_2296C8;
  if (!qword_2296C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2296C8);
  }

  return result;
}

uint64_t sub_50CE4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_50D24()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_50D7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_226C;

  return sub_48390(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_50E58(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_50E90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = sub_350C0(*(a1 + 16), 0);
  v4 = sub_3EB38(&v7, v3 + 4, v1, a1);
  v5 = v7;

  sub_417B8(v5);
  if (v4 != v1)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void sub_50F4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      sub_2B0C(&qword_229238, &qword_1C09C0);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_5101C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_2B0C(&qword_229208, &qword_1BC2E8);
      v7 = *(type metadata accessor for CollectionRecommendation(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for CollectionRecommendation(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_511BC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_2B0C(&qword_229368, &qword_1BC408);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 + 31;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 6);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_51294(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_2B0C(&qword_229258, &unk_1BCC20);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_5136C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_2B0C(&qword_229200, &qword_1BC2E0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 136);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_51454(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_2B0C(&qword_229218, &unk_1C0210);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 568);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_51544(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_52E40(v7);
      v7 = result;
    }

    v81 = v7 + 2;
    v82 = v7[2];
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = &v7[2 * v82];
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_52708((*a3 + 136 * *v83), (*a3 + 136 * *v85), (*a3 + 136 * v86), v90);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 136 * v6 + 56);
      v10 = 136 * v8;
      v11 = *a3 + 136 * v8;
      v12 = *(v11 + 56);
      v13 = v8 + 2;
      v14 = (v11 + 192);
      while (v5 != v13)
      {
        v15 = *v14;
        v16 = v14[17];
        v14 += 17;
        ++v13;
        if (v9 < v12 == v16 >= v15)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 136 * v6 - 136;
        v18 = v6;
        v19 = v8;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = v21 + v17;
            v103 = *(v21 + v10 + 96);
            v105 = *(v21 + v10 + 112);
            v107 = *(v21 + v10 + 128);
            v95 = *(v21 + v10 + 32);
            v97 = *(v21 + v10 + 48);
            v99 = *(v21 + v10 + 64);
            v101 = *(v21 + v10 + 80);
            v91 = *(v21 + v10);
            v93 = *(v21 + v10 + 16);
            result = memmove((v21 + v10), (v21 + v17), 0x88uLL);
            *(v20 + 96) = v103;
            *(v20 + 112) = v105;
            *(v20 + 128) = v107;
            *(v20 + 32) = v95;
            *(v20 + 48) = v97;
            *(v20 + 64) = v99;
            *(v20 + 80) = v101;
            *v20 = v91;
            *(v20 + 16) = v93;
          }

          ++v19;
          v17 -= 136;
          v10 += 136;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_32F04(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v34 = v7[2];
    v33 = v7[3];
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      result = sub_32F04((v33 > 1), v34 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v35;
    v36 = v7 + 4;
    v37 = &v7[2 * v34 + 4];
    *v37 = v8;
    v37[1] = v6;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v34)
    {
      while (1)
      {
        v38 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v39 = v7[4];
          v40 = v7[5];
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = &v7[2 * v35];
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = &v36[2 * v38];
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v38 = v35 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v35 < 2)
        {
          goto LABEL_112;
        }

        v65 = &v7[2 * v35];
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = &v36[2 * v38];
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v38 - 1 >= v35)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = &v36[2 * v38 - 2];
        v77 = *v76;
        v78 = &v36[2 * v38];
        v79 = v78[1];
        sub_52708((*a3 + 136 * *v76), (*a3 + 136 * *v78), (*a3 + 136 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v38 > v7[2])
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = v7[2];
        if (v38 >= v80)
        {
          goto LABEL_101;
        }

        v35 = v80 - 1;
        result = memmove(&v36[2 * v38], v78 + 2, 16 * (v80 - 1 - v38));
        v7[2] = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = &v36[2 * v35];
      v44 = *(v43 - 8);
      v45 = *(v43 - 7);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 6);
      v47 = *(v43 - 5);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = &v7[2 * v35];
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = &v36[2 * v38];
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v38 = v35 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 136 * v6;
  v24 = v8 - v6;
LABEL_30:
  v25 = v24;
  v26 = v23;
  while (1)
  {
    if (*(v26 + 56) >= *(v26 - 80))
    {
LABEL_29:
      ++v6;
      v23 += 136;
      --v24;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    v27 = v26 - 136;
    v104 = *(v26 + 96);
    v106 = *(v26 + 112);
    v108 = *(v26 + 128);
    v96 = *(v26 + 32);
    v98 = *(v26 + 48);
    v100 = *(v26 + 64);
    v102 = *(v26 + 80);
    v92 = *v26;
    v94 = *(v26 + 16);
    v28 = *(v26 - 56);
    *(v26 + 64) = *(v26 - 72);
    *(v26 + 80) = v28;
    v29 = *(v26 - 24);
    *(v26 + 96) = *(v26 - 40);
    *(v26 + 112) = v29;
    *(v26 + 128) = *(v26 - 8);
    v30 = *(v26 - 88);
    *(v26 + 32) = *(v26 - 104);
    *(v26 + 48) = v30;
    v31 = *(v26 - 120);
    *v26 = *(v26 - 136);
    *(v26 + 16) = v31;
    *(v27 + 64) = v100;
    *(v27 + 80) = v102;
    *(v27 + 96) = v104;
    *(v27 + 112) = v106;
    *(v27 + 128) = v108;
    *(v27 + 32) = v96;
    *(v27 + 48) = v98;
    v26 -= 136;
    *v27 = v92;
    *(v27 + 16) = v94;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_51B9C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v88 = a3;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_90:
    v86 = *v85;
    if (!*v85)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_124:
      result = sub_52E40(v7);
      v7 = result;
    }

    v76 = v7 + 2;
    v77 = v7[2];
    if (v77 >= 2)
    {
      while (*v88)
      {
        v78 = &v7[2 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_52938((*v88 + 576 * *v78), (*v88 + 576 * *v80), (*v88 + 576 * v81), v86);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_116;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_117;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_118;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_128;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*v88 + 576 * v6 + 568);
      v10 = 576 * v8;
      v11 = *v88 + 576 * v8;
      v12 = *(v11 + 568);
      v13 = v8 + 2;
      v14 = (v11 + 1720);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v17 = (v12 < v9) ^ (v15 >= *v14);
        ++v13;
        v14 += 72;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_121;
      }

      if (v8 < v6)
      {
        v18 = 576 * v6 - 576;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v21 = *v88;
            if (!*v88)
            {
              goto LABEL_127;
            }

            memcpy(__dst, (v21 + v10), sizeof(__dst));
            memmove((v21 + v10), (v21 + v18), 0x240uLL);
            result = memcpy((v21 + v18), __dst, 0x240uLL);
          }

          ++v20;
          v18 -= 576;
          v10 += 576;
        }

        while (v20 < v19);
        v5 = v88[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_120;
      }

      if (v6 - v8 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v6 < v8)
    {
      goto LABEL_119;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_32F04(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v29 = v7[2];
    v28 = v7[3];
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      result = sub_32F04((v28 > 1), v29 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v30;
    v31 = v7 + 4;
    v32 = &v7[2 * v29 + 4];
    *v32 = v8;
    v32[1] = v6;
    v86 = *v85;
    if (!*v85)
    {
      goto LABEL_129;
    }

    if (v29)
    {
      while (1)
      {
        v33 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v34 = v7[4];
          v35 = v7[5];
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_59:
          if (v37)
          {
            goto LABEL_106;
          }

          v50 = &v7[2 * v30];
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_108;
          }

          v56 = &v31[2 * v33];
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_113;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v33 = v30 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v30 < 2)
        {
          goto LABEL_114;
        }

        v60 = &v7[2 * v30];
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_74:
        if (v55)
        {
          goto LABEL_110;
        }

        v63 = &v31[2 * v33];
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_112;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_81:
        if (v33 - 1 >= v30)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
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
          goto LABEL_123;
        }

        if (!*v88)
        {
          goto LABEL_126;
        }

        v71 = &v31[2 * v33 - 2];
        v72 = *v71;
        v73 = &v31[2 * v33];
        v74 = v73[1];
        sub_52938((*v88 + 576 * *v71), (*v88 + 576 * *v73), (*v88 + 576 * v74), v86);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_101;
        }

        if (v33 > v7[2])
        {
          goto LABEL_102;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = v7[2];
        if (v33 >= v75)
        {
          goto LABEL_103;
        }

        v30 = v75 - 1;
        result = memmove(&v31[2 * v33], v73 + 2, 16 * (v75 - 1 - v33));
        v7[2] = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = &v31[2 * v30];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_104;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_105;
      }

      v45 = &v7[2 * v30];
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_107;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_109;
      }

      if (v49 >= v41)
      {
        v67 = &v31[2 * v33];
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_115;
        }

        if (v36 < v70)
        {
          v33 = v30 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_3:
    v5 = v88[1];
    if (v6 >= v5)
    {
      goto LABEL_90;
    }
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_122;
  }

  v86 = v7;
  if (v8 + a4 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = (v8 + a4);
  }

  if (v7 < v8)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v6 == v7)
  {
LABEL_38:
    v7 = v86;
    goto LABEL_39;
  }

  v22 = *v88;
  v23 = *v88 + 576 * v6 - 576;
  v83 = v8;
  v24 = v8 - v6;
LABEL_31:
  v25 = v24;
  v26 = v23;
  while (1)
  {
    if (v26[71] >= v26[143])
    {
LABEL_30:
      ++v6;
      v23 += 576;
      --v24;
      if (v6 != v7)
      {
        goto LABEL_31;
      }

      v6 = v7;
      v8 = v83;
      goto LABEL_38;
    }

    if (!v22)
    {
      break;
    }

    memcpy(__dst, v26 + 72, sizeof(__dst));
    memcpy(v26 + 72, v26, 0x240uLL);
    result = memcpy(v26, __dst, 0x240uLL);
    v26 -= 72;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_30;
    }
  }

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
  return result;
}

uint64_t sub_5218C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v86 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v86;
    if (!*v86)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_52E40(v8);
      v8 = result;
    }

    v78 = v8 + 2;
    v79 = v8[2];
    if (v79 >= 2)
    {
      while (*a3)
      {
        v80 = &v8[2 * v79];
        v81 = *v80;
        v82 = &v78[2 * v79];
        v83 = v82[1];
        sub_52BB0((*a3 + 16 * *v80), (*a3 + 16 * *v82), (*a3 + 16 * v83), v5);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_114;
        }

        if (v79 - 2 >= *v78)
        {
          goto LABEL_115;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *v78 - v79;
        if (*v78 < v79)
        {
          goto LABEL_116;
        }

        v79 = *v78 - 1;
        result = memmove(v82, v82 + 2, 16 * v84);
        *v78 = v79;
        if (v79 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v85 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = (v13 < v10) ^ (v16 >= v17);
        ++v14;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 16 * v7 - 16;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = *(v23 + v11);
            *(v23 + v11) = *(v23 + v19);
            *(v23 + v19) = v22;
          }

          ++v21;
          v19 -= 16;
          v11 += 16;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_32F04(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v32 = v8[3];
    v33 = v5 + 1;
    if (v5 >= v32 >> 1)
    {
      result = sub_32F04((v32 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v33;
    v34 = v8 + 4;
    v35 = &v8[2 * v5 + 4];
    *v35 = v9;
    v35[1] = v7;
    v87 = *v86;
    if (!*v86)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v36 = v8[4];
          v37 = v8[5];
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_104;
          }

          v52 = &v8[2 * v33];
          v54 = *v52;
          v53 = v52[1];
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v34[2 * v5];
          v60 = *v58;
          v59 = v58[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_111;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v5 = v33 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v33 < 2)
        {
          goto LABEL_112;
        }

        v62 = &v8[2 * v33];
        v64 = *v62;
        v63 = v62[1];
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_72:
        if (v57)
        {
          goto LABEL_108;
        }

        v65 = &v34[2 * v5];
        v67 = *v65;
        v66 = v65[1];
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_110;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v33)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v73 = &v34[2 * v5 - 2];
        v74 = *v73;
        v75 = &v34[2 * v5];
        v76 = v75[1];
        sub_52BB0((*a3 + 16 * *v73), (*a3 + 16 * *v75), (*a3 + 16 * v76), v87);
        if (v4)
        {
        }

        if (v76 < v74)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v73 = v74;
        v73[1] = v76;
        v77 = v8[2];
        if (v5 >= v77)
        {
          goto LABEL_101;
        }

        v33 = v77 - 1;
        result = memmove(&v34[2 * v5], v75 + 2, 16 * (v77 - 1 - v5));
        v8[2] = v77 - 1;
        if (v77 <= 2)
        {
          goto LABEL_3;
        }
      }

      v40 = &v34[2 * v33];
      v41 = *(v40 - 8);
      v42 = *(v40 - 7);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_102;
      }

      v45 = *(v40 - 6);
      v44 = *(v40 - 5);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_103;
      }

      v47 = &v8[2 * v33];
      v49 = *v47;
      v48 = v47[1];
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_105;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v34[2 * v5];
        v71 = *v69;
        v70 = v69[1];
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_113;
        }

        if (v38 < v72)
        {
          v5 = v33 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v85;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v24 = *a3;
  v25 = *a3 + 16 * v7;
  v26 = v9 - v7;
LABEL_30:
  v27 = *(v24 + 16 * v7 + 8);
  v28 = v26;
  v29 = v25;
  while (1)
  {
    if (*(v29 - 1) >= v27)
    {
LABEL_29:
      ++v7;
      v25 += 16;
      --v26;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v24)
    {
      break;
    }

    v30 = *v29;
    *v29 = *(v29 - 1);
    *(v29 - 1) = v27;
    *(v29 - 2) = v30;
    v29 -= 2;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_52708(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 136;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 136;
  if (v9 < v11)
  {
    v12 = 17 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12 * 8);
    }

    v13 = &v4[v12];
    if (v8 < 136)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[7] < v4[7])
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 17;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 17;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 17;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v14, 0x88uLL);
    goto LABEL_9;
  }

  v16 = 17 * v11;
  if (a4 != __src || &__src[v16] <= a4)
  {
    memmove(a4, __src, 136 * v11);
  }

  v13 = &v4[v16];
  if (v10 >= 136 && v6 > v7)
  {
LABEL_20:
    v5 -= 17;
    do
    {
      v17 = v5 + 17;
      if (*(v13 - 10) < *(v6 - 10))
      {
        v19 = v6 - 17;
        if (v17 != v6)
        {
          memmove(v5, v6 - 17, 0x88uLL);
        }

        if (v13 <= v4 || (v6 -= 17, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = (v13 - 17);
      if (v17 != v13)
      {
        memmove(v5, v13 - 17, 0x88uLL);
      }

      v5 -= 17;
      v13 -= 17;
    }

    while (v18 > v4);
    v13 = v18;
  }

LABEL_31:
  v20 = 17 * ((v13 - v4) / 136);
  if (v6 != v4 || v6 >= &v4[v20])
  {
    memmove(v6, v4, v20 * 8);
  }

  return 1;
}

uint64_t sub_52938(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 576;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 576;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[576 * v9] <= a4)
    {
      memmove(a4, __dst, 576 * v9);
    }

    v12 = &v4[576 * v9];
    if (v8 < 576)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v4 + 71) < *(v6 + 71))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 576;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 576;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 576;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x240uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[576 * v11] <= a4)
  {
    memmove(a4, __src, 576 * v11);
  }

  v12 = &v4[576 * v11];
  if (v10 >= 576 && v6 > v7)
  {
LABEL_20:
    v5 -= 576;
    do
    {
      v15 = v5 + 576;
      if (*(v6 - 1) < *(v12 - 1))
      {
        v17 = v6 - 576;
        if (v15 != v6)
        {
          memmove(v5, v6 - 576, 0x240uLL);
        }

        if (v12 <= v4 || (v6 -= 576, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v16 = (v12 - 576);
      if (v15 != v12)
      {
        memmove(v5, v12 - 576, 0x240uLL);
      }

      v5 -= 576;
      v12 -= 576;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v18 = (v12 - v4) / 576;
  if (v6 != v4 || v6 >= &v4[576 * v18])
  {
    memmove(v6, v4, 576 * v18);
  }

  return 1;
}

uint64_t sub_52BB0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*(v4 + 1) < *(v6 + 1))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 16;
    do
    {
      v17 = v5 + 16;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v19 = v6 - 16;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 16, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 16;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 -= 16;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v20 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

uint64_t sub_52DB4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_52E40(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_52E54(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B4F94() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1B57E4();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_2B0C(&qword_2296B8, &unk_1BCAF0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_53018(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B4F94() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1B57E4();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          result = v15 + 88 * v3;
          v16 = (v15 + 88 * v6);
          if (v3 != v6 || result >= v16 + 88)
          {
            result = memmove(result, v16, 0x58uLL);
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_5318C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B4F94() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1B57E4();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_53300(int64_t a1, uint64_t a2)
{
  v4 = sub_1B40F4();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_1B4F94();
    v14 = v12;
    v37 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = *(v15 + 56);
    v35 = (v15 - 8);
    v36 = v16;
    do
    {
      v17 = v9;
      v18 = v38 * v11;
      v19 = v14;
      v20 = v15;
      v36(v8, *(a2 + 48) + v38 * v11, v4);
      sub_5ED80();
      v21 = sub_1B4744();
      result = (*v35)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v37)
      {
        if (v22 >= v37 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v38 * a1;
          v26 = v25 + v18 + v38;
          v27 = v38 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v38 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 16 * a1);
          v31 = (v29 + 16 * v11);
          if (a1 != v11 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v37 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(a2 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v34;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_535B8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B4F94() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1B57E4();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_53728(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B4F94() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v6);
      result = sub_1B57E4();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v11 + 8 * v3);
          if (v3 != v6 || v16 >= v12 + 1)
          {
            *v16 = *v12;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 48 * v3);
          v19 = (v17 + 48 * v6);
          if (v3 != v6 || v18 >= v19 + 3)
          {
            v9 = *v19;
            v10 = v19[2];
            v18[1] = v19[1];
            v18[2] = v10;
            *v18 = v9;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_538A4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B4F94() + 1) & ~v5;
    do
    {
      sub_1B57F4();

      sub_1B4884();
      v9 = sub_1B5844();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_53A54(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1B4204();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_3A734(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_184C48();
      goto LABEL_7;
    }

    sub_17C6A0(v17, a3 & 1);
    v28 = sub_3A734(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_15B7EC(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1B5784();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_1B41D4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

void *sub_53C58(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_43124(a2);
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
      sub_184F9C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_17CB48(v14, a3 & 1);
    v9 = sub_43124(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1B5784();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 384 * v9);

    return memcpy(v20, a1, 0x179uLL);
  }

  else
  {

    return sub_15B8E0(v9, a2, a1, v19);
  }
}

uint64_t sub_53E00(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_43124(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1854E4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_17D824(v14, a3 & 1);
    v9 = sub_43124(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1B5784();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v15)
  {
    *(*(*v4 + 56) + 8 * v9) = a1;
  }

  else
  {

    return sub_15C8E0();
  }
}

uint64_t sub_53F64(uint64_t a1, char a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(unint64_t, void, uint64_t, uint64_t))
{
  v9 = v6;
  v13 = *v6;
  v14 = sub_3A9D8(a2 & 1);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      a4();
      v14 = v22;
      goto LABEL_8;
    }

    a5(v19, a3 & 1);
    v14 = sub_3A9D8(a2 & 1);
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_16:
      result = sub_1B5784();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v9;
  if (v20)
  {
    *(*(v24 + 56) + 8 * v14) = a1;
  }

  else
  {

    return a6(v14, a2 & 1, a1, v24);
  }
}

unint64_t sub_540BC(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_43124(a2);
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
      sub_1858C4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_17E550(v14, a3 & 1);
    v9 = sub_43124(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1B5784();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + (v9 << 6);

    return sub_5EA74(a1, v20);
  }

  else
  {

    return sub_15B958(v9, a2, a1, v19);
  }
}

uint64_t sub_541DC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_43124(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_185CAC();
      goto LABEL_7;
    }

    sub_17DB3C(v13, a3 & 1);
    v24 = sub_43124(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1B5784();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_15B9AC(v10, a2, a1, v16);
}

uint64_t sub_543D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(void), uint64_t (*a7)(unint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v32 = a6;
  v33 = a7;
  v31 = a5;
  v8 = v7;
  v34 = a2;
  v12 = sub_1B40F4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v7;
  v18 = sub_3AC78(a3);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      v31();
      goto LABEL_9;
    }

    v32();
    v24 = sub_3AC78(a3);
    if ((v22 & 1) == (v25 & 1))
    {
      v18 = v24;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1B5784();
    __break(1u);
    return result;
  }

LABEL_9:
  v26 = v34;
  v27 = a1;
  v28 = *v8;
  if (v22)
  {
    v29 = (*(v28 + 56) + 16 * v18);
    *v29 = v27;
    v29[1] = v26;
  }

  else
  {
    (*(v13 + 16))(v15, a3, v12);
    return v33(v18, v15, v27, v26, v28);
  }
}

uint64_t sub_54618(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v6;
  v13 = *v6;
  result = sub_43124(a2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = result;
      a4();
      result = v22;
      goto LABEL_8;
    }

    a5(v19, a3 & 1);
    result = sub_43124(a2);
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_14:
      result = sub_1B5784();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v9;
  if (v20)
  {
    *(*(v24 + 56) + 8 * result) = a1;
  }

  else
  {

    return a6(result, a2, a1, v24);
  }

  return result;
}

unint64_t sub_54758(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_43124(a2);
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
      sub_187658();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1820C4(v14, a3 & 1);
    v9 = sub_43124(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1B5784();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 40 * v9;

    return sub_5EAD0(a1, v20);
  }

  else
  {

    return sub_15BC2C(v9, a2, a1, v19);
  }
}

uint64_t sub_548FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_3A678(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_3A678(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_1B5784();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

uint64_t sub_54A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_3A678(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_1885F0();
      v13 = v21;
      goto LABEL_8;
    }

    sub_184460(v18, a5 & 1);
    v13 = sub_3A678(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_1B5784();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_15BD28(v13, a3, a4, a1, a2, v23);
  }
}

void *sub_54BB8(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_43124(a2);
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
      sub_187328();
      v9 = v17;
      goto LABEL_8;
    }

    sub_17D114(v14, a3 & 1);
    v9 = sub_43124(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1B5784();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 568 * v9;

    return sub_5EBFC(a1, v20);
  }

  else
  {

    return sub_15BD78(v9, a2, a1, v19);
  }
}

uint64_t sub_54CDC(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_3AB0C(a2 & 1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_187DC0();
      v9 = v17;
      goto LABEL_8;
    }

    sub_183284(v14, a3 & 1);
    v9 = sub_3AB0C(a2 & 1);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1B5784();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v15)
  {
    *(*(*v4 + 56) + 8 * v9) = a1;
  }

  else
  {

    return sub_15C8DC();
  }
}

void *sub_54E00(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v9 = &v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_55274(v12, v7, v5, a3);

  if (!v3)
  {
    return v13;
  }

  return result;
}

unint64_t *sub_54F70(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v18 = result;
  v4 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    if (*(*(a3 + 56) + 136 * v14 + 8) == 1)
    {

LABEL_15:
      *(v18 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_5565C(v18, a2, v4, a3);
      }
    }

    else
    {
      v15 = sub_1B5604();

      if (v15)
      {
        goto LABEL_15;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_5565C(v18, a2, v4, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_550F4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v18 = result;
  v4 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    if (*(*(a3 + 56) + 136 * v14 + 8))
    {
      v15 = sub_1B5604();

      if (v15)
      {
        goto LABEL_15;
      }
    }

    else
    {

LABEL_15:
      *(v18 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_5565C(v18, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_5565C(v18, a2, v4, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_55274(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

void *sub_552FC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

void *sub_55394(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_55438(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_2B0C(&qword_2297B0, &unk_1D14D0);
  result = sub_1B52B4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    memcpy(__dst, (*(v4 + 56) + 384 * v16), sizeof(__dst));
    result = sub_1B57E4();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
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
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    result = memcpy((*(v9 + 56) + 384 * v21), __dst, 0x179uLL);
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_5565C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_2B0C(&qword_229700, &qword_1BCB58);
  result = sub_1B52B4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  if (v10)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v16 = v13 | (v11 << 6);
      v17 = *(*(v4 + 48) + 8 * v16);
      v18 = *(v4 + 56) + 136 * v16;
      v19 = *(v18 + 16);
      v20 = *(v18 + 32);
      v21 = *(v18 + 64);
      v45 = *(v18 + 48);
      v46 = v21;
      v44 = v20;
      v23 = *(v18 + 96);
      v22 = *(v18 + 112);
      v24 = *(v18 + 80);
      v50 = *(v18 + 128);
      v48 = v23;
      v49 = v22;
      v47 = v24;
      v42 = *v18;
      v43 = v19;
      result = sub_1B57E4();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
      {
        break;
      }

      v28 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v12 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      *(*(v9 + 48) + 8 * v28) = v17;
      v33 = *(v9 + 56) + 136 * v28;
      *v33 = v42;
      v34 = v43;
      v35 = v44;
      v36 = v46;
      *(v33 + 48) = v45;
      *(v33 + 64) = v36;
      *(v33 + 16) = v34;
      *(v33 + 32) = v35;
      v37 = v47;
      v38 = v48;
      v39 = v49;
      *(v33 + 128) = v50;
      *(v33 + 96) = v38;
      *(v33 + 112) = v39;
      *(v33 + 80) = v37;
      ++*(v9 + 16);
      if (__OFSUB__(v5--, 1))
      {
        goto LABEL_34;
      }

      if (!v5)
      {
        sub_429F8(&v42, v41);
        return v9;
      }

      result = sub_429F8(&v42, v41);
      if (!v10)
      {
        goto LABEL_10;
      }
    }

    v29 = 0;
    v30 = (63 - v25) >> 6;
    while (++v27 != v30 || (v29 & 1) == 0)
    {
      v31 = v27 == v30;
      if (v27 == v30)
      {
        v27 = 0;
      }

      v29 |= v31;
      v32 = *(v12 + 8 * v27);
      if (v32 != -1)
      {
        v28 = __clz(__rbit64(~v32)) + (v27 << 6);
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_10:
    v14 = v11;
    while (1)
    {
      v11 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v11 >= a2)
      {
        return v9;
      }

      v15 = a1[v11];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

void *sub_558E4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_2B0C(&qword_229728, &unk_1D14A0);
  v30 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v29 = &v25 - v9;
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_2B0C(&qword_229730, &qword_1BCB88);
  result = sub_1B52B4();
  v28 = result;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  v12 = 0;
  v26 = a1;
  v27 = v28 + 8;
  v13 = v28 + 8;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v31 = (v11 - 1) & v11;
LABEL_16:
    v17 = v14 | (v12 << 6);
    memcpy(v35, (a4[6] + 568 * v17), 0x231uLL);
    v18 = a4;
    v19 = a4[7];
    v20 = v29;
    v21 = *(v30 + 72);
    sub_43050(v19 + v21 * v17, v29, &qword_229728, &unk_1D14A0);
    v22 = v28;
    memcpy(v34, v35, sizeof(v34));
    sub_1B57F4();
    sub_4299C(v35, &v32);
    SeedBook.hash(into:)(&v33);
    sub_1B5844();
    v23 = sub_1B4FA4();
    *(v13 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    memcpy((v22[6] + 568 * v23), v35, 0x231uLL);
    result = sub_5ED18(v20, v22[7] + v23 * v21, &qword_229728, &unk_1D14A0);
    ++v22[2];
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    a4 = v18;
    a1 = v26;
    v11 = v31;
    if (!a3)
    {
      return v28;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      return v28;
    }

    v16 = a1[v12];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v31 = (v16 - 1) & v16;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_55BB0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = a1;
  v43 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v7 = *(v43 - 8);
  v8 = __chkstk_darwin(v43);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v39 = &v34 - v10;
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_2B0C(&qword_229748, &qword_1BCBA0);
  result = sub_1B52B4();
  v12 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v38;
  }

  v14 = 0;
  v36 = a4;
  v37 = v7 + 16;
  v15 = result + 64;
  v35 = v7;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v40 = (v13 - 1) & v13;
LABEL_16:
    v19 = v16 | (v14 << 6);
    v20 = a4[7];
    v21 = *(a4[6] + 8 * v19);
    v41 = *(v7 + 72);
    v22 = v39;
    v23 = v43;
    (*(v7 + 16))(v39, v20 + v41 * v19, v43);
    v24 = *(v7 + 32);
    v24(v42, v22, v23);
    result = sub_1B57E4();
    v25 = -1 << *(v12 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v15 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(*(v12 + 48) + 8 * v28) = v21;
    result = (v24)(*(v12 + 56) + v28 * v41, v42, v43);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v7 = v35;
    a4 = v36;
    v13 = v40;
    if (!a3)
    {
      return v12;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      return v12;
    }

    v18 = v38[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v40 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_55EE4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for AttributeAffinityResult(0);
  v37 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v39 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v36 = &v34 - v11;
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_2B0C(&qword_2297A0, &qword_1BCC00);
  result = sub_1B52B4();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v35 = a4;
  v17 = v36;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v38 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[7];
    v23 = *(a4[6] + 8 * v21);
    v24 = *(v37 + 72);
    sub_5EB2C(v22 + v24 * v21, v17, type metadata accessor for AttributeAffinityResult);
    sub_5EB94(v17, v39, type metadata accessor for AttributeAffinityResult);
    result = sub_1B57E4();
    v25 = -1 << *(v13 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v16 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(*(v13 + 48) + 8 * v28) = v23;
    result = sub_5EB94(v39, *(v13 + 56) + v28 * v24, type metadata accessor for AttributeAffinityResult);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v35;
    v14 = v38;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = a1[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v38 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_561EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_2B0C(&qword_2297C0, &qword_1BCC38);
  result = sub_1B52B4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  if (v10)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v16 = v13 | (v11 << 6);
      v17 = *(*(v4 + 48) + 8 * v16);
      v18 = *(v4 + 56) + 88 * v16;
      v20 = *(v18 + 48);
      v19 = *(v18 + 64);
      v21 = *(v18 + 80);
      v40 = *(v18 + 32);
      v43 = v21;
      v41 = v20;
      v42 = v19;
      v22 = *(v18 + 16);
      v38 = *v18;
      v39 = v22;
      result = sub_1B57E4();
      v23 = -1 << *(v9 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        break;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      *(*(v9 + 48) + 8 * v26) = v17;
      v31 = *(v9 + 56) + 88 * v26;
      v32 = v39;
      *v31 = v38;
      *(v31 + 16) = v32;
      v33 = v40;
      v34 = v41;
      v35 = v42;
      *(v31 + 80) = v43;
      *(v31 + 48) = v34;
      *(v31 + 64) = v35;
      *(v31 + 32) = v33;
      ++*(v9 + 16);
      if (__OFSUB__(v5--, 1))
      {
        goto LABEL_34;
      }

      if (!v5)
      {
        sub_5EDD8(&v38, v37);
        return v9;
      }

      result = sub_5EDD8(&v38, v37);
      if (!v10)
      {
        goto LABEL_10;
      }
    }

    v27 = 0;
    v28 = (63 - v23) >> 6;
    while (++v25 != v28 || (v27 & 1) == 0)
    {
      v29 = v25 == v28;
      if (v25 == v28)
      {
        v25 = 0;
      }

      v27 |= v29;
      v30 = *(v12 + 8 * v25);
      if (v30 != -1)
      {
        v26 = __clz(__rbit64(~v30)) + (v25 << 6);
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_10:
    v14 = v11;
    while (1)
    {
      v11 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v11 >= a2)
      {
        return v9;
      }

      v15 = a1[v11];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_56454(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_2B0C(&qword_2297B8, &qword_1BCC30);
  result = sub_1B52B4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = (*(v4 + 56) + 16 * v16);
    v19 = v18[1];
    v30 = *v18;
    result = sub_1B57E4();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
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
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v9 + 48) + 8 * v23) = v17;
    v28 = (*(v9 + 56) + 16 * v23);
    *v28 = v30;
    v28[1] = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_56670(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) != a3)
  {
    sub_2B0C(&qword_2297A8, &qword_1BCC08);
    v8 = sub_1B52B4();
    v9 = v8;
    if (a2 < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = *a1;
    }

    v11 = 0;
    v12 = v8 + 64;
    v32 = v4;
    while (1)
    {
      if (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        goto LABEL_16;
      }

      v14 = v11;
      do
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          JUMPOUT(0x56A70);
        }

        if (v11 >= a2)
        {
          return v9;
        }

        v15 = a1[v11];
        ++v14;
      }

      while (!v15);
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
LABEL_16:
      v16 = v13 | (v11 << 6);
      v17 = *(v4 + 56);
      v18 = *(*(v4 + 48) + v16);
      v19 = (v17 + 24 * v16);
      v33 = *(v19 + 8);
      v34 = *v19;
      v35 = v19[2];
      sub_1B57F4();

      sub_1B4884();

      v20 = sub_1B5844();
      v21 = -1 << *(v9 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) != 0)
      {
        v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = 0;
        v26 = (63 - v21) >> 6;
        do
        {
          if (++v23 == v26 && (v25 & 1) != 0)
          {
            goto LABEL_31;
          }

          v27 = v23 == v26;
          if (v23 == v26)
          {
            v23 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v23);
        }

        while (v28 == -1);
        v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      }

      *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      *(*(v9 + 48) + v24) = v18;
      v29 = *(v9 + 56) + 24 * v24;
      *v29 = v34;
      *(v29 + 8) = v33;
      *(v29 + 16) = v35;
      ++*(v9 + 16);
      if (__OFSUB__(v5--, 1))
      {
        goto LABEL_32;
      }

      v4 = v32;
      if (!v5)
      {
        return v9;
      }
    }
  }

  return v4;
}

uint64_t sub_56C34(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  sub_1B5744();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = v9[2];
  if ((v8 + 136 * v6 + 136 * v7) != &v9[17 * v10 + 4])
  {

    goto LABEL_9;
  }

  v11 = v9[3];

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_35274(v4 - v14, v2);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = result + 32;
        result = swift_arrayInitWithCopy();
        if (!__OFSUB__(0, v14))
        {
          v16 = *(v5 + 16);
          v13 = __OFADD__(v14, v16);
          v17 = v14 + v16;
          if (!v13)
          {
            if (v17 >= v14)
            {
              if ((v17 & 0x8000000000000000) == 0)
              {
                v18 = (2 * v17) | 1;
                result = swift_unknownObjectRelease();
                v1[1] = v15 - 136 * v14;
                v1[2] = v14;
                v1[3] = v18;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_56DC0(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_37;
  }

  v30 = result;
  v8 = v4[2];
  v7 = v4[3];
  v9 = ((v7 >> 1) - v8);
  if (__OFSUB__(v7 >> 1, v8))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v15 = v9;
    goto LABEL_10;
  }

  v12 = v4[1];
  sub_1B5744();
  swift_unknownObjectRetain();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = _swiftEmptyArrayStorage;
  }

  v14 = v13[2];
  if ((v12 + 136 * v8 + 136 * v9) != &v13[17 * v14 + 4])
  {

    goto LABEL_8;
  }

  v16 = v13[3];

  v17 = (v16 >> 1) - v14;
  v18 = __OFADD__(v9, v17);
  v15 = (v9 + v17);
  if (v18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_10:
  result = (v9 + v6);
  if (__OFADD__(v9, v6))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v15 < result)
  {
    if ((v15 + 0x800000000000000) < 0)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v19 = (2 * v15);
    if (v19 > result)
    {
      result = v19;
    }
  }

  result = sub_56C34(result);
  v21 = v4[2];
  v20 = v4[3];
  v22 = (v20 >> 1) - v21;
  if (__OFSUB__(v20 >> 1, v21))
  {
    goto LABEL_39;
  }

  v23 = v4[1] + 136 * v21 + 136 * v22;
  if ((v20 & 1) == 0)
  {
LABEL_21:
    v26 = v22;
    goto LABEL_23;
  }

  sub_1B5744();
  swift_unknownObjectRetain();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    v24 = _swiftEmptyArrayStorage;
  }

  v25 = v24[2];
  if (v23 != &v24[17 * v25 + 4])
  {

    goto LABEL_21;
  }

  v27 = v24[3];

  v28 = (v27 >> 1) - v25;
  v18 = __OFADD__(v22, v28);
  v26 = v22 + v28;
  if (v18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_23:
  v29 = v26 - v22;
  if (__OFSUB__(v26, v22))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v5 == a3)
  {
    if (v6 <= 0)
    {
      v6 = 0;
      v5 = a3;
      goto LABEL_31;
    }

    goto LABEL_41;
  }

  if (v29 < v6)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  swift_arrayInitWithCopy();
  if (v6 > 0)
  {
    result = (v22 + v6);
    if (__OFADD__(v22, v6))
    {
LABEL_46:
      __break(1u);
      return result;
    }

    sub_5732C(result);
  }

LABEL_31:
  if (v6 == v29)
  {
    v32[0] = v30;
    v32[1] = a2;
    v32[2] = a3;
    v32[3] = a4;
    v32[4] = v5;
    return sub_573E4(v32);
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t *sub_5704C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_32;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v13 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v14 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v11 = __OFSUB__(v14, v13);
  v15 = v14 - v13;
  if (v11)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v34 = v15;
  v17 = (v9 + 32);
  v18 = 136 * a2;
  v19 = v9 + 32 + 136 * a2;
  v32 = v13;
  v33 = (v19 + 136 * a3);
  result = sub_57C5C(v7);
  v36 = v9 + 32;
  if (result)
  {
    v20 = result;
    v31 = v9;
    v21 = v4[2];
    v22 = (v4[1] + 136 * v21);
    v23 = &v22[v18];
    swift_arrayDestroy();
    if (v17 != v22 || v17 >= v23)
    {
      memmove(v17, v22, v18);
    }

    swift_arrayDestroy();
    a4(v19, a3);
    v24 = &v23[136 * v34];
    if (v33 != v24 || v33 >= &v24[136 * v32])
    {
      memmove(v33, v24, 136 * v32);
    }

    swift_arrayDestroy();
    *(v20 + 16) = 0;

    v9 = v31;
  }

  else
  {
    v21 = v4[2];
    v26 = v21 + a2;
    if (__OFADD__(v21, a2))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v26 < v21)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v26, v21))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    swift_arrayInitWithCopy();
    result = a4(v36 + 136 * a2, a3);
    v27 = v26 + v34;
    if (__OFADD__(v26, v34))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v28 = v4[3] >> 1;
    if (v28 < v27)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (__OFSUB__(v28, v27))
    {
LABEL_45:
      __break(1u);
      return result;
    }

    swift_arrayInitWithCopy();
  }

  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v21))
  {
    goto LABEL_36;
  }

  v29 = *(v9 + 16);
  v11 = __OFADD__(v21, v29);
  v30 = v21 + v29;
  if (v11)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v30 < v21)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v30 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *v4 = v9;
  v4[1] = v36 - 136 * v21;
  v4[2] = v21;
  v4[3] = (2 * v30) | 1;
}

void *sub_5732C(void *result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  sub_1B5744();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = _swiftEmptyArrayStorage;
  }

  v8 = result[2];
  v5 = __OFADD__(v8, v7);
  v9 = &v7[v8];
  if (v5)
  {
    goto LABEL_13;
  }

  result[2] = v9;

  v10 = &v7[v4];
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *(v1 + 24) = v3 & 1 | (2 * v10);
  return result;
}

void *sub_573E4(void *result)
{
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = (v4 >> 1) - v3;
  if (!__OFSUB__(v4 >> 1, v3))
  {
    v54 = result[2];
    v55 = result[1];
    v6 = result[4];
    v7 = result[3] >> 1;
    v53 = result;
    if (v6 == v7)
    {
      sub_5E9F4(&v95);
      v110 = v101;
      v111 = v102;
      v112 = v103;
      v106 = v97;
      v107 = v98;
      v108 = v99;
      v109 = v100;
      __dst = v95;
      v105 = v96;
    }

    else
    {
      if (v6 < result[2] || v6 >= v7)
      {
        goto LABEL_60;
      }

      v9 = (v55 + 136 * v6);
      v95 = *v9;
      v10 = v9[1];
      v11 = v9[2];
      v12 = v9[4];
      v98 = v9[3];
      v99 = v12;
      v96 = v10;
      v97 = v11;
      v13 = v9[5];
      v14 = v9[6];
      v15 = v9[7];
      v103 = *(v9 + 128);
      v101 = v14;
      v102 = v15;
      v100 = v13;
      memmove(&__dst, v9, 0x81uLL);
      ++v6;
      AuthorRecommendationSource.id.getter();
      sub_429F8(&v95, &v86);
    }

    v101 = v110;
    v102 = v111;
    v103 = v112;
    v97 = v106;
    v98 = v107;
    v99 = v108;
    v100 = v109;
    v95 = __dst;
    v96 = v105;
    result = sub_5E9DC(&v95);
    if (result == 1)
    {
LABEL_11:
      sub_42F48(v53, &qword_229788, &qword_1BCBD8);
      v92 = v110;
      v93 = v111;
      v94 = v112;
      v88 = v106;
      v89 = v107;
      v90 = v108;
      v91 = v109;
      v86 = __dst;
      v87 = v105;
      return sub_42F48(&v86, &qword_229790, &unk_1BCBE0);
    }

    v16 = v3;
    v17 = v4;
    v18 = v6;
    v19 = v2;
    v58 = v2;
    while (!__OFADD__(v5, 1))
    {
      v85 = sub_57A74(v5, v5 + 1, *v19, v19[1], v16, v17);
      v20 = sub_57C40();
      sub_5704C(&v85, v5, 0, v20);

      v21 = v19[2];
      v22 = v19[3];
      if (__OFSUB__(v22 >> 1, v21))
      {
        goto LABEL_52;
      }

      v60 = (v22 >> 1) - v21;
      v61 = v19[3];
      v23 = v19[1];
      v59 = v19[2];
      v24 = 17 * v21;
      v56 = v23;
      v57 = v22 >> 1;
      if (v22)
      {
        sub_1B5744();
        swift_unknownObjectRetain();
        v25 = swift_dynamicCastClass();
        if (!v25)
        {
          swift_unknownObjectRelease();
          v25 = _swiftEmptyArrayStorage;
        }

        v26 = v25[2];
        v27 = 8 * v24;
        v28 = v23 + v27;
        v29 = v60;
        if ((v28 + 136 * v60) == &v25[17 * v26 + 4])
        {
          v31 = v25[3];

          v32 = (v31 >> 1) - v26;
          v30 = v60 + v32;
          if (__OFADD__(v60, v32))
          {
            goto LABEL_58;
          }
        }

        else
        {

          v30 = v60;
        }
      }

      else
      {
        v27 = 136 * v21;
        v29 = (v22 >> 1) - v21;
        v30 = v29;
      }

      v82 = v110;
      v83 = v111;
      v78 = v106;
      v79 = v107;
      v80 = v108;
      v81 = v109;
      v76 = __dst;
      v77 = v105;
      v92 = v110;
      v93 = v111;
      v88 = v106;
      v89 = v107;
      v90 = v108;
      v91 = v109;
      v84 = v112;
      v94 = v112;
      v86 = __dst;
      v87 = v105;
      result = sub_5E9DC(&v86);
      v33 = v18;
      if (result == 1)
      {
LABEL_42:
        v49 = __OFSUB__(v5, v29);
        v48 = v5 - v29;
        if (v49)
        {
          goto LABEL_53;
        }
      }

      else if (v5 >= v30)
      {
        v49 = __OFSUB__(v5, v29);
        v48 = v5 - v29;
        if (v49)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v34 = v56 + v27;
        while (2)
        {
          v35 = v34 + 136 * v5;
          v36 = v5 + 1;
          while (1)
          {
            v5 = v36;
            v72[6] = v110;
            v72[7] = v111;
            v73 = v112;
            v72[2] = v106;
            v72[3] = v107;
            v72[4] = v108;
            v72[5] = v109;
            v72[0] = __dst;
            v72[1] = v105;
            v74[6] = v82;
            v74[7] = v83;
            v75 = v84;
            v74[2] = v78;
            v74[3] = v79;
            v74[4] = v80;
            v74[5] = v81;
            v74[0] = v76;
            v74[1] = v77;
            sub_429F8(v74, &v63);
            result = sub_42F48(v72, &qword_229790, &unk_1BCBE0);
            v37 = v83;
            *(v35 + 96) = v82;
            *(v35 + 112) = v37;
            *(v35 + 128) = v84;
            v38 = v79;
            *(v35 + 32) = v78;
            *(v35 + 48) = v38;
            v39 = v81;
            *(v35 + 64) = v80;
            *(v35 + 80) = v39;
            v40 = v77;
            *v35 = v76;
            *(v35 + 16) = v40;
            if (v18 != v7)
            {
              break;
            }

            sub_5E9F4(&v63);
            v110 = v69;
            v111 = v70;
            v112 = v71;
            v106 = v65;
            v107 = v66;
            v108 = v67;
            v109 = v68;
            __dst = v63;
            v105 = v64;
            v82 = v69;
            v83 = v70;
            v84 = v71;
            v78 = v65;
            v79 = v66;
            v80 = v67;
            v81 = v68;
            v76 = v63;
            v77 = v64;
            v92 = v69;
            v93 = v70;
            v94 = v71;
            v88 = v65;
            v89 = v66;
            v90 = v67;
            v91 = v68;
            v86 = v63;
            v87 = v64;
            result = sub_5E9DC(&v86);
            if (result != 1)
            {
              v35 += 136;
              v36 = v5 + 1;
              if (v5 < v30)
              {
                continue;
              }
            }

            v18 = v7;
            goto LABEL_36;
          }

          if (v33 < v54 || v18 >= v7)
          {
            goto LABEL_57;
          }

          v41 = (v55 + 136 * v18);
          v63 = *v41;
          v42 = v41[1];
          v43 = v41[2];
          v44 = v41[4];
          v66 = v41[3];
          v67 = v44;
          v64 = v42;
          v65 = v43;
          v45 = v41[5];
          v46 = v41[6];
          v47 = v41[7];
          v71 = *(v41 + 128);
          v69 = v46;
          v70 = v47;
          v68 = v45;
          memmove(&__dst, v41, 0x81uLL);
          ++v18;
          AuthorRecommendationSource.id.getter();
          sub_429F8(&v63, v62);
          v82 = v110;
          v83 = v111;
          v78 = v106;
          v79 = v107;
          v80 = v108;
          v81 = v109;
          v76 = __dst;
          v77 = v105;
          v92 = v110;
          v93 = v111;
          v88 = v106;
          v89 = v107;
          v90 = v108;
          v91 = v109;
          v84 = v112;
          v94 = v112;
          v86 = __dst;
          v87 = v105;
          result = sub_5E9DC(&v86);
          if (result != 1)
          {
            v29 = v60;
            if (v5 < v30)
            {
              continue;
            }

            goto LABEL_42;
          }

          break;
        }

LABEL_36:
        v48 = v5 - v60;
        if (__OFSUB__(v5, v60))
        {
          goto LABEL_53;
        }
      }

      if (v48)
      {
        sub_1B5744();
        swift_unknownObjectRetain();
        result = swift_dynamicCastClass();
        if (!result)
        {
          swift_unknownObjectRelease();
          result = _swiftEmptyArrayStorage;
        }

        v50 = result[2];
        v49 = __OFADD__(v50, v48);
        v51 = v50 + v48;
        if (v49)
        {
          goto LABEL_54;
        }

        result[2] = v51;

        v52 = v57 + v48;
        if (__OFADD__(v57, v48))
        {
          goto LABEL_55;
        }

        if ((v52 & 0x8000000000000000) != 0)
        {
          goto LABEL_56;
        }

        v61 = v61 & 1 | (2 * v52);
        v58[3] = v61;
      }

      v101 = v110;
      v102 = v111;
      v103 = v112;
      v97 = v106;
      v98 = v107;
      v99 = v108;
      v100 = v109;
      v95 = __dst;
      v96 = v105;
      result = sub_5E9DC(&v95);
      v19 = v58;
      v16 = v59;
      v17 = v61;
      if (result == 1)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
  }

  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

void *sub_57A74(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_1B5744();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = v11[2];
  v13 = a4 + 136 * a5 + 136 * v8;
  if (v13 == &v11[17 * v12 + 4])
  {
    v15 = v11[3];

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = _swiftEmptyArrayStorage;
    }

    v18 = v17[2];
    if (v13 == &v17[17 * v18 + 4])
    {
      v20 = v17[3];

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = _swiftEmptyArrayStorage;
  }

  v19 = v17[2];
  if (v13 == &v17[17 * v19 + 4])
  {
    v23 = v17[3];

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_35274(v6, v25);
}

void *sub_57C5C(uint64_t a1)
{
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v6 = v1[2];
  v5 = v1[3];
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v1[1];
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1B5744();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = v9[2];
  if ((v8 + 136 * v6 + 136 * v7) != &v9[17 * v10 + 4])
  {

LABEL_8:
    v11 = v7;
    goto LABEL_10;
  }

  v12 = v9[3];

  v13 = (v12 >> 1) - v10;
  v14 = __OFADD__(v7, v13);
  v11 = v7 + v13;
  if (v14)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v11 < a1)
  {
    return 0;
  }

  sub_1B5744();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = _swiftEmptyArrayStorage;
  }

  v15 = (v8 + 136 * v6 - result - 32) / 136;
  v14 = __OFADD__(v7, v15);
  v5 = v7 + v15;
  if (v14)
  {
    goto LABEL_18;
  }

  v4 = result[2];
  if (v5 < v4)
  {
LABEL_19:
    v16 = result;
    sub_58120(v5, v4, 0);
    return v16;
  }

  return result;
}

uint64_t sub_57DD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 3);
  v8[0] = *(a1 + 1);
  v8[1] = v3;
  v5 = *(a1 + 7);
  v9 = *(a1 + 5);
  v4 = v9;
  v10 = v5;
  *(a2 + 8) = v8[0];
  *(a2 + 24) = v3;
  *(a2 + 40) = v4;
  *(a2 + 56) = v5;
  *a2 = v2;
  return sub_42BA4(v8, &v7);
}

uint64_t sub_57E30(char **a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_52E40(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v24[16 * v9];
      v6 = *v12;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      v25 = (v10 + 8 * *v12);
      v15 = (v10 + 8 * *v13);
      v16 = (v10 + 8 * v14);

      sub_581F4(v25, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v12 = v6;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

Swift::Int sub_57FD8(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1B5584(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        v8 = sub_1B4B34();
        v8[2] = v7;
      }

      v9[0] = v8 + 4;
      v9[1] = v7;

      sub_58700(v9, v10, a1, v6, a2);

      v8[2] = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_58F90(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

unint64_t sub_58120(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 136 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 136 * a3;
  v13 = (v7 + 32 + 136 * a2);
  v14 = 136 * v12;
  v15 = v13 + 136 * v12;
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_581F4(uint64_t *a1, uint64_t *a2, char *a3, uint64_t *a4, uint64_t a5)
{
  v67 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v63 = *(v67 - 8);
  v10 = __chkstk_darwin(v67);
  v61 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v62 = &v55 - v13;
  v14 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v14 = a2 - a1;
  }

  v15 = v14 >> 3;
  v16 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v16 = a3 - a2;
  }

  v17 = v16 >> 3;
  if (v15 < v16 >> 3)
  {
    if (a4 != a1 || &a1[v15] <= a4)
    {
      result = memmove(a4, a1, 8 * v15);
    }

    v18 = &a4[v15];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v58 = v63 + 8;
      v59 = v63 + 16;
      v64 = v18;
      v65 = a3;
      while (1)
      {
        if (!*(a5 + 16))
        {
          __break(1u);
          goto LABEL_50;
        }

        v60 = a1;
        v19 = *a4;
        result = sub_43124(*a2);
        if ((v20 & 1) == 0)
        {
          goto LABEL_51;
        }

        v66 = a2;
        v21 = a4;
        v22 = v62;
        v23 = v63;
        v24 = *(v63 + 72);
        v25 = *(v63 + 16);
        v26 = v67;
        v25(v62, *(a5 + 56) + v24 * result, v67);
        v27 = sub_1B4374();
        v28 = *(v23 + 8);
        result = v28(v22, v26);
        if (!*(a5 + 16))
        {
          goto LABEL_53;
        }

        result = sub_43124(v19);
        if ((v29 & 1) == 0)
        {
          goto LABEL_55;
        }

        v30 = *(a5 + 56) + result * v24;
        v31 = v61;
        v32 = v67;
        v25(v61, v30, v67);
        v33 = sub_1B4374();
        result = v28(v31, v32);
        if (v33 >= v27)
        {
          break;
        }

        v34 = v66;
        a2 = v66 + 1;
        v35 = v60;
        a4 = v21;
        v18 = v64;
        if (v60 != v66)
        {
          goto LABEL_20;
        }

LABEL_21:
        a1 = v35 + 1;
        if (a4 >= v18 || a2 >= v65)
        {
          goto LABEL_23;
        }
      }

      v34 = v21;
      a4 = v21 + 1;
      v35 = v60;
      a2 = v66;
      v18 = v64;
      if (v60 == v21)
      {
        goto LABEL_21;
      }

LABEL_20:
      *v35 = *v34;
      goto LABEL_21;
    }

LABEL_23:
    a2 = a1;
    goto LABEL_45;
  }

  if (a4 != a2 || &a2[v17] <= a4)
  {
    result = memmove(a4, a2, 8 * v17);
  }

  v18 = &a4[v17];
  if (a3 - a2 < 8 || a2 <= a1)
  {
LABEL_45:
    if (a2 != a4 || a2 >= (a4 + ((v18 - a4 + (v18 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(a2, a4, 8 * (v18 - a4));
    }

    return 1;
  }

  v58 = v63 + 8;
  v59 = v63 + 16;
  v60 = a1;
  v56 = a4;
LABEL_30:
  v36 = a2 - 1;
  v37 = (a3 - 8);
  v66 = a2;
  v57 = a2 - 1;
  while (*(a5 + 16))
  {
    v65 = v37;
    v38 = v18 - 1;
    v39 = *v36;
    result = sub_43124(*(v18 - 1));
    if ((v40 & 1) == 0)
    {
      goto LABEL_52;
    }

    v64 = v18;
    v41 = v62;
    v42 = v63;
    v43 = *(v63 + 72);
    v44 = *(v63 + 16);
    v45 = v67;
    v44(v62, *(a5 + 56) + v43 * result, v67);
    v46 = sub_1B4374();
    v47 = *(v42 + 8);
    result = v47(v41, v45);
    if (!*(a5 + 16))
    {
      goto LABEL_54;
    }

    result = sub_43124(v39);
    if ((v48 & 1) == 0)
    {
      goto LABEL_56;
    }

    v49 = *(a5 + 56) + result * v43;
    v50 = v61;
    v51 = v67;
    v44(v61, v49, v67);
    v52 = sub_1B4374();
    result = v47(v50, v51);
    if (v52 < v46)
    {
      a3 = v65;
      a4 = v56;
      v54 = v57;
      v18 = v64;
      if (v65 + 1 != v66)
      {
        *v65 = *v57;
      }

      if (v18 <= a4 || (a2 = v54, v54 <= v60))
      {
        a2 = v54;
        goto LABEL_45;
      }

      goto LABEL_30;
    }

    v53 = v65;
    a4 = v56;
    v36 = v57;
    if (v65 + 1 != v64)
    {
      *v65 = *v38;
    }

    v37 = v53 - 1;
    v18 = v38;
    a2 = v66;
    if (v38 <= a4)
    {
      v18 = v38;
      goto LABEL_45;
    }
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_58700(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v133 = a1;
  v148 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v8 = __chkstk_darwin(v148);
  v143 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v144 = &v130 - v11;
  v151 = _swiftEmptyArrayStorage;
  v138 = a3;
  v12 = a3[1];
  if (v12 >= 1)
  {
    v142 = v10;
    v146 = v10 + 8;
    v147 = v10 + 16;
    swift_bridgeObjectRetain_n();
    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    v136 = a4;
LABEL_5:
    v15 = v13;
    if (v13 + 1 >= v12)
    {
      v39 = v13 + 1;
    }

    else
    {
      v16 = *v138;
      v17 = *(*v138 + 8 * (v13 + 1));
      v149 = *(*v138 + 8 * v13);
      v150 = v17;
      v18 = v140;
      LODWORD(v141) = sub_49CA8(&v150, &v149, a5);
      v140 = v18;
      if (v18)
      {
        goto LABEL_105;
      }

      v139 = v12;
      v131 = v13;
      v132 = v14;
      v19 = (v13 + 2);
      v20 = (v16 + 8 * v13 + 16);
      while (v139 != v19)
      {
        if (!*(a5 + 16))
        {
          goto LABEL_112;
        }

        v21 = *(v20 - 1);
        v22 = sub_43124(*v20);
        if ((v23 & 1) == 0)
        {
          goto LABEL_113;
        }

        v145 = v19;
        v24 = a5;
        v25 = v142;
        v26 = *(v142 + 72);
        v27 = *(a5 + 56) + v26 * v22;
        v28 = *(v142 + 16);
        v29 = v144;
        v30 = v148;
        v28(v144, v27, v148);
        v31 = sub_1B4374();
        v32 = *(v25 + 8);
        v32(v29, v30);
        if (!*(v24 + 16))
        {
          goto LABEL_114;
        }

        v33 = sub_43124(v21);
        if ((v34 & 1) == 0)
        {
          goto LABEL_115;
        }

        v35 = *(v24 + 56) + v33 * v26;
        v36 = v143;
        v37 = v148;
        v28(v143, v35, v148);
        v38 = sub_1B4374();
        v32(v36, v37);
        v19 = (v145 + 1);
        ++v20;
        a5 = v24;
        if (((v141 ^ (v38 >= v31)) & 1) == 0)
        {
          v39 = v145;
          goto LABEL_17;
        }
      }

      v39 = v139;
LABEL_17:
      a4 = v136;
      v15 = v131;
      v14 = v132;
      if (v141)
      {
        if (v39 < v131)
        {
          goto LABEL_135;
        }

        if (v131 < v39)
        {
          v40 = v39 - 1;
          v41 = v131;
          do
          {
            if (v41 != v40)
            {
              v43 = *v138;
              if (!*v138)
              {
                goto LABEL_138;
              }

              v44 = *(v43 + 8 * v41);
              *(v43 + 8 * v41) = *(v43 + 8 * v40);
              *(v43 + 8 * v40) = v44;
            }
          }

          while (++v41 < v40--);
        }
      }
    }

    v45 = v138[1];
    if (v39 >= v45)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v39, v15))
    {
      goto LABEL_132;
    }

    if (v39 - v15 >= a4)
    {
LABEL_35:
      v13 = v39;
      if (v39 < v15)
      {
        goto LABEL_131;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v15, a4))
    {
      goto LABEL_133;
    }

    if (v15 + a4 >= v45)
    {
      v46 = v138[1];
    }

    else
    {
      v46 = v15 + a4;
    }

    if (v46 < v15)
    {
      goto LABEL_134;
    }

    if (v39 == v46)
    {
      goto LABEL_35;
    }

    v131 = v15;
    v132 = v14;
    v141 = *v138;
    v103 = (v141 + 8 * v39 - 8);
    v104 = (v15 - v39);
    v137 = v46;
LABEL_88:
    v139 = v39;
    v134 = v104;
    v135 = v103;
    v105 = v104;
    while (*(a5 + 16))
    {
      v106 = v103->i64[0];
      v107 = sub_43124(v103->i64[1]);
      if ((v108 & 1) == 0)
      {
        goto LABEL_109;
      }

      v145 = v105;
      v109 = a5;
      v110 = v142;
      v111 = *(v142 + 72);
      v112 = *(a5 + 56) + v111 * v107;
      v113 = *(v142 + 16);
      v114 = v144;
      v115 = v148;
      v113(v144, v112, v148);
      v116 = sub_1B4374();
      v117 = *(v110 + 8);
      v117(v114, v115);
      if (!*(v109 + 16))
      {
        goto LABEL_110;
      }

      v118 = sub_43124(v106);
      if ((v119 & 1) == 0)
      {
        goto LABEL_111;
      }

      v120 = *(v109 + 56) + v118 * v111;
      v121 = v143;
      v122 = v148;
      v113(v143, v120, v148);
      v123 = sub_1B4374();
      v117(v121, v122);
      if (v123 >= v116)
      {
        a5 = v109;
LABEL_87:
        v39 = v139 + 1;
        v103 = &v135->u64[1];
        v104 = (v134 - 1);
        v13 = v137;
        if ((v139 + 1) != v137)
        {
          goto LABEL_88;
        }

        a4 = v136;
        v15 = v131;
        v14 = v132;
        if (v137 < v131)
        {
          goto LABEL_131;
        }

LABEL_36:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_32F04(0, *(v14 + 2) + 1, 1, v14);
        }

        v48 = *(v14 + 2);
        v47 = *(v14 + 3);
        v49 = v48 + 1;
        if (v48 >= v47 >> 1)
        {
          v14 = sub_32F04((v47 > 1), v48 + 1, 1, v14);
        }

        *(v14 + 2) = v49;
        v50 = v14 + 32;
        v51 = &v14[16 * v48 + 32];
        *v51 = v15;
        *(v51 + 1) = v13;
        v151 = v14;
        v145 = *v133;
        if (!v145)
        {
          goto LABEL_139;
        }

        if (v48)
        {
          v137 = v13;
          v141 = (v14 + 32);
          while (1)
          {
            v52 = v49 - 1;
            if (v49 >= 4)
            {
              break;
            }

            if (v49 == 3)
            {
              v53 = *(v14 + 4);
              v54 = *(v14 + 5);
              v63 = __OFSUB__(v54, v53);
              v55 = v54 - v53;
              v56 = v63;
LABEL_56:
              if (v56)
              {
                goto LABEL_122;
              }

              v69 = &v14[16 * v49];
              v71 = *v69;
              v70 = *(v69 + 1);
              v72 = __OFSUB__(v70, v71);
              v73 = v70 - v71;
              v74 = v72;
              if (v72)
              {
                goto LABEL_125;
              }

              v75 = &v50[16 * v52];
              v77 = *v75;
              v76 = *(v75 + 1);
              v63 = __OFSUB__(v76, v77);
              v78 = v76 - v77;
              if (v63)
              {
                goto LABEL_128;
              }

              if (__OFADD__(v73, v78))
              {
                goto LABEL_129;
              }

              if (v73 + v78 >= v55)
              {
                if (v55 < v78)
                {
                  v52 = v49 - 2;
                }

                goto LABEL_77;
              }

              goto LABEL_70;
            }

            v79 = &v14[16 * v49];
            v81 = *v79;
            v80 = *(v79 + 1);
            v63 = __OFSUB__(v80, v81);
            v73 = v80 - v81;
            v74 = v63;
LABEL_70:
            if (v74)
            {
              goto LABEL_124;
            }

            v82 = &v50[16 * v52];
            v84 = *v82;
            v83 = *(v82 + 1);
            v63 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v63)
            {
              goto LABEL_127;
            }

            if (v85 < v73)
            {
              goto LABEL_3;
            }

LABEL_77:
            if (v52 - 1 >= v49)
            {
              goto LABEL_116;
            }

            v90 = *v138;
            if (!*v138)
            {
              goto LABEL_137;
            }

            v91 = v14;
            v92 = &v50[16 * v52 - 16];
            v93 = *v92;
            v94 = v52;
            v95 = &v50[16 * v52];
            v96 = *(v95 + 1);
            v97 = (v90 + 8 * *v92);
            v98 = (v90 + 8 * *v95);
            v99 = (v90 + 8 * v96);

            v100 = v97;
            v101 = v140;
            sub_581F4(v100, v98, v99, v145, a5);
            v140 = v101;
            if (v101)
            {

              v151 = v91;
LABEL_105:
              swift_bridgeObjectRelease_n();
            }

            if (v96 < v93)
            {
              goto LABEL_117;
            }

            v102 = *(v91 + 2);
            if (v94 > v102)
            {
              goto LABEL_118;
            }

            *v92 = v93;
            *(v92 + 1) = v96;
            if (v94 >= v102)
            {
              goto LABEL_119;
            }

            v49 = v102 - 1;
            memmove(v95, v95 + 16, 16 * (v102 - 1 - v94));
            v14 = v91;
            *(v91 + 2) = v102 - 1;
            a4 = v136;
            v13 = v137;
            v50 = v141;
            if (v102 <= 2)
            {
LABEL_3:
              v151 = v14;
              goto LABEL_4;
            }
          }

          v57 = &v50[16 * v49];
          v58 = *(v57 - 8);
          v59 = *(v57 - 7);
          v63 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          if (v63)
          {
            goto LABEL_120;
          }

          v62 = *(v57 - 6);
          v61 = *(v57 - 5);
          v63 = __OFSUB__(v61, v62);
          v55 = v61 - v62;
          v56 = v63;
          if (v63)
          {
            goto LABEL_121;
          }

          v64 = &v14[16 * v49];
          v66 = *v64;
          v65 = *(v64 + 1);
          v63 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v63)
          {
            goto LABEL_123;
          }

          v63 = __OFADD__(v55, v67);
          v68 = v55 + v67;
          if (v63)
          {
            goto LABEL_126;
          }

          if (v68 >= v60)
          {
            v86 = &v50[16 * v52];
            v88 = *v86;
            v87 = *(v86 + 1);
            v63 = __OFSUB__(v87, v88);
            v89 = v87 - v88;
            if (v63)
            {
              goto LABEL_130;
            }

            if (v55 < v89)
            {
              v52 = v49 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_56;
        }

LABEL_4:
        v12 = v138[1];
        if (v13 >= v12)
        {
          goto LABEL_101;
        }

        goto LABEL_5;
      }

      v124 = v145;
      if (!v141)
      {
        goto LABEL_136;
      }

      *v103 = vextq_s8(*v103, *v103, 8uLL);
      v103 = (v103 - 8);
      v125 = __CFADD__(v124, 1);
      v105 = (v124 + 1);
      a5 = v109;
      if (v125)
      {
        goto LABEL_87;
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
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_137:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_138:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_139:
    swift_bridgeObjectRelease_n();
    __break(1u);
    goto LABEL_140;
  }

  swift_bridgeObjectRetain_n();
LABEL_101:
  v126 = *v133;
  if (!*v133)
  {
LABEL_140:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
    return result;
  }

  v127 = v126;
  v128 = v140;
  sub_57E30(&v151, v127, v138, a5);
  if (v128)
  {

    goto LABEL_105;
  }

  swift_bridgeObjectRelease_n();
}