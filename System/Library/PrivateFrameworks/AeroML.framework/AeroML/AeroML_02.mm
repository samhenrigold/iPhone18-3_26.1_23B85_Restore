id sub_21AECB898(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_21AF097BC();

  v3 = [v1 initWithString_];

  return v3;
}

void sub_21AECB90C()
{
  sub_21AEAD0C4();
  v130 = v2;
  v140 = v3;
  v136 = sub_21AF094EC();
  sub_21AEA7C90();
  v138 = v4;
  MEMORY[0x28223BE20](v5);
  sub_21AEC7504();
  *&v144 = v6;
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v7);
  sub_21AEC774C();
  v141 = v8;
  sub_21AEAFBDC();
  v137 = sub_21AF0952C();
  sub_21AEA7C90();
  v139 = v9;
  MEMORY[0x28223BE20](v10);
  sub_21AEC7554();
  v133 = v12 - v11;
  v135 = sub_21AEA7574(&qword_27CD3D850, &qword_21AF0C618) - 8;
  sub_21AEC7728();
  MEMORY[0x28223BE20](v13);
  v15 = &v128 - v14;
  v16 = sub_21AF093FC();
  sub_21AEA7C90();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  sub_21AEC7504();
  v143 = v20;
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v21);
  sub_21AED1AFC();
  MEMORY[0x28223BE20](v22);
  sub_21AED1BF4();
  v23 = MEMORY[0x277D83B88];
  v24 = sub_21AF0974C();
  v25 = v136;
  sub_21AED1D88();
  v134 = sub_21AF0974C();
  sub_21AF093EC();
  v142 = v1;
  sub_21AF093AC();
  v26 = *(v18 + 8);
  v27 = sub_21AEC7734();
  v26(v27);
  sub_21AF093EC();
  sub_21AF093AC();
  v132 = v16;
  v131 = v18 + 8;
  v129 = v26;
  (v26)(v0, v16);
  v28 = v133;
  sub_21AF0954C();
  v29 = v139;
  v30 = sub_21AED1E38();
  v31 = v28;
  v32(v30);
  isUniquelyReferenced_nonNull_native = *(v135 + 44);
  v34 = sub_21AEC5A18();
  sub_21AED1C80();
  sub_21AF099FC();
  v29[1](v31, v23);
  v139 = v138 + 4;
  v140 = (v138 + 2);
  ++v138;
  v135 = isUniquelyReferenced_nonNull_native;
  while (1)
  {
    sub_21AED1C80();
    sub_21AF09A1C();
    if (*&v15[isUniquelyReferenced_nonNull_native] == *&v149[0])
    {
      break;
    }

    v35 = sub_21AF09A6C();
    (*v140)(v141);
    v35(v149, 0);
    v36 = v34;
    sub_21AF09A2C();
    v37 = sub_21AEC7734();
    v38(v37);
    sub_21AEC74C8();
    sub_21AF094FC();
    if (!v148)
    {
      goto LABEL_70;
    }

    sub_21AEAF9F4(&v147, v149);
    swift_dynamicCast();
    v40 = v145;
    v39 = v146;
    sub_21AED1B28();
    if (!v148)
    {
      goto LABEL_71;
    }

    sub_21AEAF9F4(&v147, v149);
    swift_dynamicCast();
    v41 = v145;
    sub_21AF0936C();
    if (v42 >= v41)
    {
      goto LABEL_31;
    }

    if (*(v24 + 16) && (v43 = sub_21AEB3974(), v45 = sub_21AED0594(v43, v44), (v46 & 1) != 0))
    {
      v47 = *(*(v24 + 56) + 8 * v45);
      v48 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        goto LABEL_62;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v149[0] = v24;
      v49 = sub_21AEB3974();
      sub_21AED0594(v49, v50);
      sub_21AED1B64();
      if (__OFADD__(v53, v54))
      {
        goto LABEL_63;
      }

      v55 = v51;
      v56 = v52;
      sub_21AEA7574(&qword_27CD3DF60, &unk_21AF0C9C0);
      sub_21AED1BE4();
      if (sub_21AF09D0C())
      {
        v57 = sub_21AEB3974();
        sub_21AED0594(v57, v58);
        sub_21AED1C04();
        isUniquelyReferenced_nonNull_native = v135;
        if (!v60)
        {
          goto LABEL_72;
        }

        v55 = v59;
      }

      else
      {
        sub_21AED1BC8();
      }

      v24 = *&v149[0];
      if ((v56 & 1) == 0)
      {
        sub_21AED1AA8(*&v149[0] + 8 * (v55 >> 6));
        sub_21AED1DF8();
        *(v77 + 8 * v55) = v48;
        v78 = *(v24 + 16);
        v75 = __OFADD__(v78, 1);
        v76 = v78 + 1;
        if (v75)
        {
          goto LABEL_64;
        }

        goto LABEL_29;
      }

      *(*(*&v149[0] + 56) + 8 * v55) = v48;
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v149[0] = v24;
      v61 = sub_21AEB3974();
      sub_21AED0594(v61, v62);
      sub_21AED1B64();
      if (__OFADD__(v65, v66))
      {
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        sub_21AF09E7C();
        __break(1u);
        return;
      }

      v67 = v63;
      v68 = v64;
      sub_21AEA7574(&qword_27CD3DF60, &unk_21AF0C9C0);
      sub_21AED1BE4();
      if (sub_21AF09D0C())
      {
        v69 = sub_21AEB3974();
        sub_21AED0594(v69, v70);
        sub_21AED1C04();
        isUniquelyReferenced_nonNull_native = v135;
        if (!v60)
        {
          goto LABEL_72;
        }

        v67 = v71;
      }

      else
      {
        sub_21AED1BC8();
      }

      v24 = *&v149[0];
      if ((v68 & 1) == 0)
      {
        sub_21AED1AA8(*&v149[0] + 8 * (v67 >> 6));
        sub_21AED1DF8();
        *(v72 + 8 * v67) = v73;
        v74 = *(v24 + 16);
        v75 = __OFADD__(v74, 1);
        v76 = v74 + 1;
        if (v75)
        {
          goto LABEL_61;
        }

LABEL_29:
        *(v24 + 16) = v76;

        goto LABEL_30;
      }

      *(*(*&v149[0] + 56) + 8 * v67) = 1;
    }

LABEL_30:
    v25 = v136;
    sub_21AED1D88();
LABEL_31:
    sub_21AF0936C();
    if (v79 < v41)
    {
      v80 = v134;
      if (*(v134 + 16) && (v81 = sub_21AEB3974(), v83 = sub_21AED0594(v81, v82), v80 = v134, (v84 & 1) != 0))
      {
        v85 = *(*(v134 + 56) + 8 * v83);
        v86 = v85 + 1;
        if (__OFADD__(v85, 1))
        {
          goto LABEL_67;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v149[0] = v80;
        v87 = sub_21AEB3974();
        sub_21AED0594(v87, v88);
        sub_21AED1B64();
        if (__OFADD__(v91, v92))
        {
          goto LABEL_68;
        }

        v93 = v89;
        LODWORD(v134) = v90;
        sub_21AEA7574(&qword_27CD3DF60, &unk_21AF0C9C0);
        sub_21AED1BE4();
        if (sub_21AF09D0C())
        {
          v94 = sub_21AEB3974();
          v96 = sub_21AED0594(v94, v95);
          v98 = v134;
          v25 = v136;
          isUniquelyReferenced_nonNull_native = v135;
          if ((v134 & 1) != (v97 & 1))
          {
            goto LABEL_72;
          }

          v93 = v96;
        }

        else
        {
          v25 = v136;
          sub_21AED1BC8();
          v98 = v134;
        }

        v134 = *&v149[0];
        if (v98)
        {
          *(*(*&v149[0] + 56) + 8 * v93) = v86;
        }

        else
        {
          sub_21AED1AA8(*&v149[0] + 8 * (v93 >> 6));
          v116 = (v115[6] + 16 * v93);
          *v116 = v40;
          v116[1] = v39;
          *(v115[7] + 8 * v93) = v86;
          v117 = v115[2];
          v75 = __OFADD__(v117, 1);
          v118 = v117 + 1;
          if (v75)
          {
            goto LABEL_69;
          }

          v115[2] = v118;
        }

        sub_21AED1D88();
        v34 = v36;
        (*v138)(v144, v25);
      }

      else
      {
        swift_isUniquelyReferenced_nonNull_native();
        *&v149[0] = v80;
        v99 = sub_21AEB3974();
        sub_21AED0594(v99, v100);
        sub_21AED1B64();
        isUniquelyReferenced_nonNull_native = v103 + v104;
        if (__OFADD__(v103, v104))
        {
          goto LABEL_65;
        }

        v105 = v101;
        v106 = v102;
        sub_21AEA7574(&qword_27CD3DF60, &unk_21AF0C9C0);
        if (sub_21AF09D0C())
        {
          v107 = sub_21AEB3974();
          sub_21AED0594(v107, v108);
          sub_21AED1C04();
          isUniquelyReferenced_nonNull_native = v135;
          if (!v60)
          {
            goto LABEL_72;
          }

          v105 = v109;
        }

        else
        {
          sub_21AED1D88();
          sub_21AED1BC8();
        }

        v134 = *&v149[0];
        if (v106)
        {
          *(*(*&v149[0] + 56) + 8 * v105) = 1;
        }

        else
        {
          sub_21AED1AA8(*&v149[0] + 8 * (v105 >> 6));
          v111 = (v110[6] + 16 * v105);
          *v111 = v40;
          v111[1] = v39;
          *(v110[7] + 8 * v105) = v112;
          v113 = v110[2];
          v75 = __OFADD__(v113, 1);
          v114 = v113 + 1;
          if (v75)
          {
            goto LABEL_66;
          }

          v110[2] = v114;
        }

        v25 = v136;
        (*v138)(v144, v136);
        v34 = v36;
      }
    }

    else
    {
      (*v138)(v144, v25);

      v34 = v36;
    }
  }

  sub_21AEC6E68(v15, &qword_27CD3D850, &qword_21AF0C618);
  if (v130)
  {
    sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
    sub_21AED1B1C();
    v119 = swift_allocObject();
    v144 = xmmword_21AF0C5D0;
    *(v119 + 16) = xmmword_21AF0C5D0;
    strcpy(v149, "Weekly dict ");
    BYTE13(v149[0]) = 0;
    HIWORD(v149[0]) = -5120;
    v120 = MEMORY[0x277D837D0];
    v121 = sub_21AF0973C();
    MEMORY[0x21CEE4A70](v121);

    v122 = v149[0];
    *(v119 + 56) = v120;
    *(v119 + 32) = v122;
    sub_21AEC76AC(v119);

    sub_21AED1B1C();
    v123 = swift_allocObject();
    *(v123 + 16) = v144;
    strcpy(v149, "Monthly dict ");
    HIWORD(v149[0]) = -4864;
    sub_21AED1E7C();
    v124 = sub_21AF0973C();
    MEMORY[0x21CEE4A70](v124);

    v125 = v149[0];
    *(v123 + 56) = v120;
    *(v123 + 32) = v125;
    sub_21AEC76AC(v123);
  }

  v126 = v132;
  v127 = v129;
  (v129)(v143, v132);
  v127(v142, v126);
  sub_21AEAD0A8();
}

void sub_21AECC428()
{
  sub_21AEAD0C4();
  LODWORD(v112) = v0;
  v104 = v1;
  sub_21AF0957C();
  sub_21AEA7C90();
  v110 = v3;
  v111 = v2;
  MEMORY[0x28223BE20](v2);
  sub_21AEAD074();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  sub_21AEC774C();
  *&v113 = v8;
  sub_21AEAFBDC();
  v99 = sub_21AF0925C();
  sub_21AEA7C90();
  v98 = v9;
  MEMORY[0x28223BE20](v10);
  sub_21AEC7504();
  v106 = v11;
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v12);
  sub_21AEC774C();
  v107 = v13;
  sub_21AEAFBDC();
  v14 = sub_21AF093FC();
  sub_21AEA7C90();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_21AEAD074();
  sub_21AED1AFC();
  MEMORY[0x28223BE20](v18);
  v100 = &v97 - v19;
  sub_21AEC76CC();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v97 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v97 - v24;
  sub_21AEA7574(&qword_27CD3D880, &qword_21AF0C650);
  v109 = sub_21AED1F08();
  v108 = sub_21AED1F08();
  sub_21AF093EC();
  sub_21AF093AC();
  v26 = *(v16 + 8);
  v26(v23, v14);
  sub_21AF093EC();
  v27 = v100;
  sub_21AF093AC();
  v114 = v26;
  v115 = v16 + 8;
  v26(v23, v14);
  v30 = *(v16 + 16);
  v28 = (v16 + 16);
  v29 = v30;
  v97 = v25;
  v30(v23, v25, v14);
  sub_21AF093EC();
  sub_21AED1DC0();
  sub_21AF0923C();
  v116 = v14;
  v30(v23, v27, v14);
  sub_21AF093EC();
  sub_21AED1DC0();
  sub_21AF0923C();
  v31 = type metadata accessor for AMLPhotosSearchPoirotMetricsUtility();
  v32 = v31;
  sub_21AEB3BEC(v104);
  v34 = v33;
  v103 = *(v33 + 16);
  if (v103)
  {
    v35 = 0;
    v101 = v33;
    v102 = v33 + 32;
    v36 = ++v110;
    while (v35 < *(v34 + 16))
    {
      v37 = (v102 + 16 * v35);
      v38 = *v37;
      v39 = v37[1];

      v29 = v113;
      sub_21AEB908C(v38, v39, v104, v112 & 1, v40, v41, v42, v43, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108);

      sub_21AEB41A0(v29);
      v28 = *(v44 + 16);
      if (v28)
      {
        v105 = v35;
        v50 = 32;
        do
        {
          v51 = v44;
          v52 = *(v44 + v50);
          v29 = v112;
          sub_21AEBCC44(v52, v113, v112 & 1, v45, v46, v47, v48, v49, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108);
          sub_21AEB4470(v6, v29 & 1);
          sub_21AEC062C(v52, v6);
          sub_21AF0935C();
          v53 = v107;
          sub_21AF0924C();
          v54 = sub_21AED1DE4();
          v55(v54);
          if (v53)
          {
            v56 = sub_21AF099BC();
            v29 = v57;

            swift_isUniquelyReferenced_nonNull_native();
            v58 = sub_21AED1D74();
            sub_21AF05334(v58, v56, v29, v59);

            v109 = v117;
          }

          sub_21AF0935C();
          v60 = v106;
          sub_21AF0924C();
          v61 = sub_21AED1DE4();
          v62(v61);
          if (v60)
          {
            v29 = sub_21AF099BC();
            v64 = v63;
            swift_isUniquelyReferenced_nonNull_native();
            v65 = sub_21AED1D74();
            sub_21AF05334(v65, v29, v64, v66);

            v32 = *v110;
            (*v110)(v6, v111);
            v108 = v117;
          }

          else
          {
            v32 = *v110;
            (*v110)(v6, v111);
          }

          v50 += 8;
          v28 = (v28 - 1);
          v44 = v51;
        }

        while (v28);

        v34 = v101;
        v35 = v105;
        v36 = v110;
      }

      else
      {

        v32 = *v36;
      }

      ++v35;
      v32(v113, v111);
      if (v35 == v103)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    if ((v112 & 1) == 0)
    {
      v79 = sub_21AED1B70();
      v28(v79);
      (v28)(v107, v32);
      v80 = sub_21AED1C5C();
      (v29)(v80);
      v81 = sub_21AED1E7C();
      (v29)(v81, v28);
LABEL_28:
      sub_21AEAD0A8();
      return;
    }

    v67 = v109 + 64;
    sub_21AED1A7C();
    sub_21AED1BD4();
    sub_21AEC7BD0();
    v112 = v68;

    v69 = 0;
    v113 = xmmword_21AF0C5D0;
    v70 = MEMORY[0x277D837D0];
    if (v28)
    {
      while (1)
      {
LABEL_20:
        sub_21AED1C8C();
        sub_21AED1E50();
        v74 = *(v73 + 8 * v72);
        sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
        sub_21AED1B1C();
        v75 = swift_allocObject();
        sub_21AED1C34(v75);

        sub_21AF09C5C();

        v117 = 0xD00000000000001BLL;
        v118 = v112;
        v76 = sub_21AED1C74();
        MEMORY[0x21CEE4A70](v76);

        MEMORY[0x21CEE4A70](8250, 0xE200000000000000);
        MEMORY[0x21CEE4B10](v74, v70);

        v77 = sub_21AED1C74();
        MEMORY[0x21CEE4A70](v77);

        v78 = v117;
        *(v31 + 56) = v70;
        sub_21AED1AB8(v78);
      }
    }

    while (1)
    {
      v71 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      if (v71 >= v6)
      {

        v82 = v108 + 64;
        sub_21AED1A7C();
        sub_21AED1BD4();
        sub_21AEC7BD0();
        v112 = v83;

        v84 = 0;
        v85 = MEMORY[0x277D837D0];
        while (1)
        {
          v86 = v84 + 1;
          if (__OFADD__(v84, 1))
          {
            goto LABEL_31;
          }

          if (v86 >= v6)
          {
            v94 = sub_21AED1B70();
            v28(v94);
            (v28)(v107, v32);
            v95 = sub_21AED1C5C();
            (v29)(v95);
            v96 = sub_21AED1E7C();
            (v29)(v96, v28);

            goto LABEL_28;
          }

          v28 = *(v82 + 8 * v86);
          ++v84;
          if (v28)
          {
            while (1)
            {
              sub_21AED1C8C();
              sub_21AED1E50();
              v89 = *(v88 + 8 * v87);
              sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
              sub_21AED1B1C();
              v90 = swift_allocObject();
              sub_21AED1C34(v90);

              sub_21AF09C5C();

              v117 = 0xD00000000000001CLL;
              v118 = v112;
              v91 = sub_21AED1C74();
              MEMORY[0x21CEE4A70](v91);

              MEMORY[0x21CEE4A70](8250, 0xE200000000000000);
              MEMORY[0x21CEE4B10](v89, v85);

              v92 = sub_21AED1C74();
              MEMORY[0x21CEE4A70](v92);

              v93 = v117;
              *(v31 + 56) = v85;
              sub_21AED1AB8(v93);
            }
          }
        }
      }

      v28 = *(v67 + 8 * v71);
      ++v69;
      if (v28)
      {
        goto LABEL_20;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_21AECCCC0()
{
  sub_21AEAD0C4();
  v159 = v1;
  v157 = v2;
  v181 = *MEMORY[0x277D85DE8];
  v170 = sub_21AF094EC();
  sub_21AEA7C90();
  v158 = v3;
  MEMORY[0x28223BE20](v4);
  sub_21AEC7504();
  v171 = v5;
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v6);
  sub_21AEC774C();
  sub_21AED1AE0(v7);
  v169 = sub_21AF0952C();
  sub_21AEA7C90();
  v156 = v8;
  MEMORY[0x28223BE20](v9);
  sub_21AEC7554();
  v155 = v11 - v10;
  v154 = sub_21AEA7574(&qword_27CD3D850, &qword_21AF0C618);
  sub_21AEC7854();
  sub_21AEC7728();
  MEMORY[0x28223BE20](v12);
  sub_21AED1AE0(v146 - v13);
  v14 = sub_21AF0930C();
  MEMORY[0x28223BE20](v14 - 8);
  sub_21AEC7554();
  v17 = v16 - v15;
  v18 = sub_21AF093FC();
  sub_21AEA7C90();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  sub_21AEAD074();
  v24 = v22 - v23;
  v26 = MEMORY[0x28223BE20](v25);
  v28 = v146 - v27;
  MEMORY[0x28223BE20](v26);
  sub_21AED1BF4();
  sub_21AF093EC();
  v164 = v0;
  sub_21AF093AC();
  v29 = *(v20 + 8);
  v29(v28, v18);
  sub_21AF093EC();
  v163 = v24;
  sub_21AF093AC();
  v161 = v20 + 8;
  v160 = v29;
  v29(v28, v18);
  v30 = sub_21AEA7574(&qword_27CD3D920, &qword_21AF0C9A0);
  v174 = sub_21AED1EC8();
  v173 = sub_21AED1EC8();
  sub_21AEA7B80(0, &qword_27CD3D928, 0x277CD9948);
  v31 = [objc_opt_self() systemPhotoLibraryURL];
  sub_21AF092CC();

  v32 = sub_21AECDE88(v17);
  *&v179 = 0;
  if (![v32 openAndWaitWithUpgrade:0 error:&v179])
  {
    v74 = v179;
    v47 = sub_21AF0927C();

    swift_willThrow();
    if (qword_27CD3D278 != -1)
    {
      goto LABEL_67;
    }

    goto LABEL_20;
  }

  v146[1] = v30;
  v152 = v18;
  v33 = v179;
  v34 = [v32 librarySpecificFetchOptions];
  [v34 setFetchLimit_];
  sub_21AEA7574(&qword_27CD3D6D8, &qword_21AF0C990);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_21AF0C080;
  *(v35 + 32) = sub_21AF097CC();
  *(v35 + 40) = v36;
  *(v35 + 48) = sub_21AF097CC();
  *(v35 + 56) = v37;
  *(v35 + 64) = sub_21AF097CC();
  *(v35 + 72) = v38;
  *(v35 + 80) = sub_21AF097CC();
  *(v35 + 88) = v39;
  *(v35 + 96) = sub_21AF097CC();
  *(v35 + 104) = v40;
  *(v35 + 112) = sub_21AF097CC();
  *(v35 + 120) = v41;
  sub_21AEF75E8(v35, v34);

  v43 = sub_21AEEF580(v42);
  v44 = objc_opt_self();
  v45 = MEMORY[0x277D837D0];
  v46 = sub_21AF0987C();
  v151 = v34;
  v47 = [v44 fetchAssetsWithLocalIdentifiers:v46 options:v34];

  v48 = [v32 librarySpecificFetchOptions];
  sub_21AEA7574(&qword_27CD3D6B0, &unk_21AF0C9B0);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_21AF0C720;
  sub_21AEA7B80(0, &unk_2812287F0, 0x277CCABB0);
  *(v49 + 32) = sub_21AF09B5C();
  *(v49 + 40) = sub_21AF09B5C();
  v50 = sub_21AEB3974();
  sub_21AEF7654(v50, v51);
  [v48 setIncludeTorsoAndFaceDetectionData_];
  v52 = objc_opt_self();
  v150 = v47;
  v149 = v48;
  v53 = [v52 fetchFacesGroupedByAssetLocalIdentifierForAssets:v47 options:v48];
  sub_21AEA7574(&qword_27CD3D930, &unk_21AF0D3B0);
  v165 = sub_21AF0972C();

  v54 = *(v43 + 16);
  v153 = v32;
  v166 = v43;
  v167 = v54;
  if (v54)
  {
    v18 = 0;
    v55 = (v43 + 40);
    v32 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v18 >= *(v166 + 16))
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        sub_21AED1A5C();
        swift_once();
LABEL_20:
        v75 = sub_21AF096CC();
        sub_21AEC78A8(v75, qword_27CD3EB60);
        v76 = v47;
        v77 = sub_21AF096AC();
        v78 = sub_21AF09A9C();

        if (os_log_type_enabled(v77, v78))
        {
          v79 = sub_21AED1D18();
          v80 = sub_21AEB39C8();
          *&v179 = v80;
          *v79 = 136315138;
          swift_getErrorValue();
          v81 = sub_21AF09E8C();
          v83 = sub_21AECFFFC(v81, v82, &v179);
          v153 = v32;
          v84 = v83;

          *(v79 + 4) = v84;
          _os_log_impl(&dword_21AE94000, v77, v78, "PhotoLibrary open fail with error: %s", v79, 0xCu);
          sub_21AEA79F0(v80);
          sub_21AEAFB90();
          sub_21AEAFB90();
        }

        else
        {
        }

        v85 = sub_21AED1DB4();
        v86 = v160;
        v160(v85, v18);
        v86(v164, v18);
        goto LABEL_62;
      }

      v47 = *(v55 - 1);
      v45 = *v55;
      v56 = *(v165 + 16);

      if (v56 && (v57 = sub_21AED0594(v47, v45), (v58 & 1) != 0))
      {
        v59 = [sub_21AED1E5C(v57) count];
      }

      else
      {
        v59 = 0;
      }

      swift_isUniquelyReferenced_nonNull_native();
      *&v179 = v32;
      sub_21AED0594(v47, v45);
      sub_21AED1B64();
      if (__OFADD__(v62, v63))
      {
        goto LABEL_64;
      }

      v64 = v60;
      v65 = v61;
      sub_21AEA7574(&qword_27CD3DF60, &unk_21AF0C9C0);
      if (sub_21AF09D0C())
      {
        v66 = sub_21AED0594(v47, v45);
        v68 = v172;
        if ((v65 & 1) != (v67 & 1))
        {
          sub_21AF09E7C();
          __break(1u);
          return;
        }

        v64 = v66;
        if ((v65 & 1) == 0)
        {
LABEL_13:
          v32 = v179;
          sub_21AED1AA8(v179 + 8 * (v64 >> 6));
          v69 = (v32[6] + 16 * v64);
          *v69 = v47;
          v69[1] = v45;
          *(v32[7] + 8 * v64) = v59;
          v70 = v32[2];
          v71 = __OFADD__(v70, 1);
          v72 = v70 + 1;
          if (v71)
          {
            goto LABEL_66;
          }

          v32[2] = v72;
          goto LABEL_17;
        }
      }

      else
      {
        v68 = v172;
        if ((v65 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v32 = v179;
      *(*(v179 + 56) + 8 * v64) = v59;
LABEL_17:
      ++v18;
      v55 += 2;
      v73 = v170;
      if (v167 == v18)
      {
        goto LABEL_25;
      }
    }
  }

  v32 = MEMORY[0x277D84F98];
  v73 = v170;
  v68 = v172;
LABEL_25:
  v162 = v32;
  if (v159)
  {
    v87 = v32 + 8;
    sub_21AED1A7C();
    sub_21AED1BD4();

    v88 = 0;
    *&v89 = 136315394;
    v147 = v89;
    v148 = v32 + 8;
    if (!v45)
    {
      goto LABEL_28;
    }

    do
    {
      v90 = v88;
LABEL_31:
      v91 = __clz(__rbit64(v45)) | (v90 << 6);
      v92 = v32[6] + 16 * v91;
      v47 = *v92;
      v93 = *(v92 + 8);
      v167 = *(v32[7] + 8 * v91);
      v94 = qword_27CD3D278;

      if (v94 != -1)
      {
        sub_21AED1A5C();
        swift_once();
      }

      v45 &= v45 - 1;
      v95 = sub_21AF096CC();
      sub_21AEC78A8(v95, qword_27CD3EB60);

      v96 = sub_21AF096AC();
      v97 = sub_21AF09A7C();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = sub_21AEB3B54();
        v99 = sub_21AEB39C8();
        *&v179 = v99;
        *v98 = v147;
        v47 = sub_21AECFFFC(v47, v93, &v179);

        *(v98 + 4) = v47;
        *(v98 + 12) = 2048;
        *(v98 + 14) = v167;
        _os_log_impl(&dword_21AE94000, v96, v97, "assetID: %s, faceCount: %ld", v98, 0x16u);
        sub_21AEA79F0(v99);
        v32 = v162;
        sub_21AEAFB90();
        v87 = v148;
        sub_21AEAFB90();
      }

      else
      {
      }

      v88 = v90;
      v73 = v170;
    }

    while (v45);
    while (1)
    {
LABEL_28:
      v90 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
        goto LABEL_65;
      }

      if (v90 >= v18)
      {
        break;
      }

      v45 = v87[v90];
      ++v88;
      if (v45)
      {
        goto LABEL_31;
      }
    }
  }

  v100 = v155;
  sub_21AF0954C();
  v101 = v156;
  v102 = v169;
  (*(v156 + 16))(v68, v100, v169);
  v103 = *(v154 + 36);
  sub_21AEC5A18();
  sub_21AF099FC();
  (*(v101 + 8))(v100, v102);
  v104 = (v158 + 16);
  v105 = (v158 + 32);
  v167 = "AMLPhotosSearchPoirotMetrics";
  v106 = (v158 + 8);
  while (1)
  {
    sub_21AF09A1C();
    if (*(v68 + v103) == v179)
    {
      break;
    }

    v107 = sub_21AF09A6C();
    v108 = v168;
    (*v104)(v168);
    v107(&v179, 0);
    v109 = v171;
    sub_21AF09A2C();
    (*v105)(v109, v108, v73);
    sub_21AF094FC();
    if (!v180)
    {
      (*v106)(v109, v73);
      sub_21AEC6E68(&v179, &qword_27CD3D330, &unk_21AF0C420);
      goto LABEL_50;
    }

    if (swift_dynamicCast())
    {
      sub_21AED1B28();
      if (!v178)
      {
        __break(1u);
      }

      sub_21AEAF9F4(&v177, &v179);
      swift_dynamicCast();
      v110 = v176;
      sub_21AF0936C();
      v68 = v172;
      if (v111 < v110)
      {
        type metadata accessor for AMLPhotosSearchBiomeMetricsUtility();
        sub_21AED1F28(&v174);
      }

      sub_21AF0936C();
      if (v112 >= v110)
      {
        v116 = sub_21AED1D60();
        v118 = *(v117 - 256);
        v119(v116, v118);
        v73 = v118;
      }

      else
      {
        type metadata accessor for AMLPhotosSearchBiomeMetricsUtility();
        sub_21AED1F28(&v173);

        v113 = sub_21AED1D60();
        v73 = *(v114 - 256);
        v115(v113, v73);
      }
    }

    else
    {
      (*v106)(v109, v73);
LABEL_50:
      v68 = v172;
    }
  }

  sub_21AEC6E68(v68, &qword_27CD3D850, &qword_21AF0C618);

  if (v159)
  {
    v120 = v152;
    if (qword_27CD3D278 != -1)
    {
      sub_21AED1A5C();
      swift_once();
    }

    v121 = sub_21AF096CC();
    sub_21AEC78A8(v121, qword_27CD3EB60);
    v122 = sub_21AF096AC();
    v123 = sub_21AF09A7C();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = sub_21AED1D18();
      v125 = sub_21AEB39C8();
      *&v179 = v125;
      *v124 = 136315138;
      sub_21AEA7C78(&v174, &v175);

      v126 = sub_21AF0973C();
      v128 = v127;

      v129 = sub_21AECFFFC(v126, v128, &v179);

      *(v124 + 4) = v129;
      _os_log_impl(&dword_21AE94000, v122, v123, "PhotoIDCountGivenFaceCountDictWeek %s", v124, 0xCu);
      sub_21AEA79F0(v125);
      sub_21AEAFB90();
      sub_21AEAFB90();
    }

    v130 = v153;
    v131 = sub_21AF096AC();
    v132 = sub_21AF09A7C();
    if (sub_21AED1CA4(v132))
    {
      v133 = sub_21AED1D18();
      v134 = sub_21AEB39C8();
      *&v179 = v134;
      *v133 = 136315138;
      sub_21AEA7C78(&v173, &v176);

      v135 = sub_21AF0973C();
      v137 = v136;

      v138 = sub_21AECFFFC(v135, v137, &v179);

      *(v133 + 4) = v138;
      sub_21AED1E88(&dword_21AE94000, v139, v140, "PhotoIDCountGivenFaceCountDictMonth %s");
      sub_21AEA79F0(v134);
      sub_21AEAFB90();
      sub_21AEAFB90();
    }

    sub_21AED1D30();
    sub_21AED1D48();

    v141 = sub_21AED1DB4();
    v142 = v160;
    v160(v141, v120);
    v142(v164, v120);
  }

  else
  {

    sub_21AED1D30();
    sub_21AED1D48();

    v143 = sub_21AED1DB4();
    v144 = v152;
    v145 = v160;
    v160(v143, v152);
    v145(v164, v144);
  }

  sub_21AEA7C78(&v174, &v179);
  sub_21AEA7C78(&v173, &v177);
LABEL_62:
  sub_21AED1DCC();
  sub_21AEAD0A8();
}

id sub_21AECDE88(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_21AF092AC();
  v4 = [v2 initWithPhotoLibraryURL_];

  v5 = sub_21AF0930C();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

void sub_21AECDF24()
{
  sub_21AEAD0C4();
  HIDWORD(v165) = v1;
  v175 = v2;
  v3 = sub_21AF094EC();
  sub_21AEA7C90();
  v176 = v4;
  MEMORY[0x28223BE20](v5);
  sub_21AEC7504();
  v192 = v6;
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v7);
  sub_21AEC774C();
  sub_21AED1AE0(v8);
  v9 = sub_21AF0952C();
  sub_21AEA7C90();
  v174 = v10;
  MEMORY[0x28223BE20](v11);
  sub_21AEC7554();
  v173 = v13 - v12;
  v172 = sub_21AEA7574(&qword_27CD3D850, &qword_21AF0C618);
  sub_21AEC7854();
  sub_21AEC7728();
  MEMORY[0x28223BE20](v14);
  v16 = &v165 - v15;
  v17 = sub_21AF093FC();
  sub_21AEA7C90();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  sub_21AEAD074();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  sub_21AED1AFC();
  MEMORY[0x28223BE20](v25);
  v27 = &v165 - v26;
  sub_21AF093EC();
  v180 = v27;
  sub_21AF093AC();
  v28 = *(v19 + 8);
  v29 = sub_21AEC7734();
  v28(v29);
  sub_21AF093EC();
  v179 = v23;
  sub_21AF093AC();
  v171 = v17;
  v170 = v19 + 8;
  v169 = v28;
  (v28)(v0, v17);
  v168 = [objc_opt_self() sharedPhotoLibrary];
  v30 = [v168 librarySpecificFetchOptions];
  [v30 setFetchLimit_];
  sub_21AEA7574(&qword_27CD3D6D8, &qword_21AF0C990);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_21AF0C080;
  *(v31 + 32) = sub_21AF097CC();
  *(v31 + 40) = v32;
  *(v31 + 48) = sub_21AF097CC();
  *(v31 + 56) = v33;
  *(v31 + 64) = sub_21AF097CC();
  *(v31 + 72) = v34;
  *(v31 + 80) = sub_21AF097CC();
  *(v31 + 88) = v35;
  *(v31 + 96) = sub_21AF097CC();
  *(v31 + 104) = v36;
  *(v31 + 112) = sub_21AF097CC();
  *(v31 + 120) = v37;
  v38 = sub_21AEC7734();
  sub_21AEF75E8(v38, v39);

  v41 = sub_21AEEF580(v40);
  v42 = objc_opt_self();
  v178 = v41;
  v43 = sub_21AF0987C();
  v167 = v30;
  v44 = [v42 fetchAssetsWithLocalIdentifiers:v43 options:v30];

  v45 = objc_opt_self();
  v166 = v44;
  v46 = [v45 fetchSceneClassificationsGroupedByAssetLocalIdentifierForAssets_];
  if (v46)
  {
    v47 = v46;
    sub_21AEA7574(&qword_27CD3DF50, &qword_21AF0C9A8);
    v48 = sub_21AF0972C();

    sub_21AF00820(v48, v49, v50, v51, v52, v53, v54, v55, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180);
    v187 = v56;
  }

  else
  {
    v187 = 0;
  }

  v202 = MEMORY[0x277D84FA0];
  v57 = *(v178 + 16);
  v181 = v3;
  v58 = v192;
  v191 = v9;
  v190 = v16;
  v185 = v57;
  if (v57)
  {
    v59 = 0;
    v60 = MEMORY[0x277D84F98];
    v184 = v178 + 32;
    v61 = v178;
    while (1)
    {
      if (v59 >= *(v61 + 16))
      {
        goto LABEL_82;
      }

      v62 = (v184 + 16 * v59);
      v64 = *v62;
      v63 = v62[1];
      v30 = v187;
      if (!v187)
      {
        break;
      }

      v65 = *(v187 + 16);

      if (!v65)
      {
        goto LABEL_33;
      }

      v66 = sub_21AED1E38();
      v68 = sub_21AED0594(v66, v67);
      if ((v69 & 1) == 0)
      {

        goto LABEL_33;
      }

      v70 = *(*(v30 + 56) + 8 * v68);

      if (!v70)
      {
        goto LABEL_33;
      }

      v186 = v60;
      LOBYTE(v30) = v70 & 0xF8;
      if (v70 >> 62)
      {
        v61 = sub_21AF09DAC();
        if (v61)
        {
LABEL_13:
          v183 = v70 & 0xFFFFFFFFFFFFFF8;
          v177 = v64;
          v71 = 0;
          v193 = (v70 & 0xC000000000000001);
          *&v189 = v70;
          v182 = v70 + 32;
          v72 = MEMORY[0x277D84F90];
          while (1)
          {
            if (v193)
            {
              v73 = MEMORY[0x21CEE4EF0](v71, v189);
            }

            else
            {
              if (v71 >= *(v183 + 16))
              {
                goto LABEL_84;
              }

              v73 = *(v182 + 8 * v71);
            }

            v74 = v73;
            v75 = __OFADD__(v71++, 1);
            if (v75)
            {
              break;
            }

            v76 = [v73 sceneIdentifier];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_21AEAC610(0, *(v72 + 16) + 1, 1, v72);
              v72 = v83;
            }

            v30 = *(v72 + 16);
            v77 = *(v72 + 24);
            v60 = (v30 + 1);
            if (v30 >= v77 >> 1)
            {
              sub_21AEAC610(v77 > 1, v30 + 1, 1, v72);
              v72 = v84;
            }

            v78 = v76;
            *(v72 + 16) = v60;
            *(v72 + 8 * v30 + 32) = v76;
            v79 = v202;
            if (*(v202 + 16))
            {
              v80 = sub_21AF09EEC();
              v81 = ~(-1 << *(v79 + 32));
              while (1)
              {
                v82 = v80 & v81;
                if (((*(v79 + 56 + (((v80 & v81) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v80 & v81)) & 1) == 0)
                {
                  break;
                }

                v80 = v82 + 1;
                if (*(*(v79 + 48) + 8 * v82) == v78)
                {
                  goto LABEL_29;
                }
              }
            }

            sub_21AEF65F0(&v198, v78);
LABEL_29:

            if (v71 == v61)
            {
              sub_21AED1E7C();

              sub_21AED1E68();
              v64 = v177;
              goto LABEL_34;
            }
          }

          __break(1u);
          goto LABEL_81;
        }
      }

      else
      {
        v61 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v61)
        {
          goto LABEL_13;
        }
      }

      v72 = MEMORY[0x277D84F90];
      sub_21AED1E68();
LABEL_34:
      swift_isUniquelyReferenced_nonNull_native();
      *&v198 = v60;
      v85 = v64;
      v86 = sub_21AED1E38();
      sub_21AED0594(v86, v87);
      sub_21AED1B64();
      if (__OFADD__(v90, v91))
      {
        goto LABEL_83;
      }

      v30 = v88;
      v92 = v89;
      sub_21AEA7574(&qword_27CD3D918, &qword_21AF0C998);
      if (sub_21AF09D0C())
      {
        v93 = sub_21AED0594(v85, v63);
        if ((v92 & 1) != (v94 & 1))
        {
LABEL_88:
          sub_21AF09E7C();
          __break(1u);
          return;
        }

        v30 = v93;
      }

      if (v92)
      {

        v60 = v198;
        *(*(v198 + 56) + 8 * v30) = v72;
      }

      else
      {
        v60 = v198;
        sub_21AED1AA8(v198 + 8 * (v30 >> 6));
        v95 = (v60[6] + 16 * v30);
        *v95 = v85;
        v95[1] = v63;
        *(v60[7] + 8 * v30) = v72;
        v96 = v60[2];
        v75 = __OFADD__(v96, 1);
        v97 = v96 + 1;
        if (v75)
        {
          goto LABEL_85;
        }

        v60[2] = v97;
      }

      ++v59;
      v58 = v192;
      if (v59 == v185)
      {
        goto LABEL_47;
      }
    }

LABEL_33:
    v72 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  v60 = MEMORY[0x277D84F98];
LABEL_47:
  v98 = v60 + 8;
  sub_21AED1A7C();
  v99 = v60;
  v102 = v101 & v100;
  v104 = (v103 + 63) >> 6;
  v186 = v99;
  swift_bridgeObjectRetain_n();
  v105 = 0;
  *&v106 = 136315394;
  v189 = v106;
  if (!v102)
  {
    goto LABEL_49;
  }

  do
  {
    v107 = v105;
LABEL_52:
    sub_21AED1E50();
    v30 = *(v109 + 8 * v108);
    v110 = qword_27CD3D278;

    if (v110 != -1)
    {
      sub_21AED1A5C();
      swift_once();
    }

    v102 &= v102 - 1;
    v111 = sub_21AF096CC();
    sub_21AEC78A8(v111, qword_27CD3EB60);

    v112 = sub_21AF096AC();
    v113 = sub_21AF09A7C();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = sub_21AEB3B54();
      v193 = swift_slowAlloc();
      *&v198 = v193;
      *v114 = v189;
      v115 = sub_21AED1D94();
      v118 = sub_21AECFFFC(v115, v116, v117);

      *(v114 + 4) = v118;
      *(v114 + 12) = 2080;
      v119 = MEMORY[0x21CEE4B10](v30, MEMORY[0x277D83B88]);
      v121 = v120;

      v30 = sub_21AECFFFC(v119, v121, &v198);

      *(v114 + 14) = v30;
      _os_log_impl(&dword_21AE94000, v112, v113, "assetID: %s, sceneCategory: %s", v114, 0x16u);
      LOBYTE(v30) = v193;
      swift_arrayDestroy();
      sub_21AEAFB90();
      sub_21AEAFB90();
    }

    else
    {
    }

    v105 = v107;
    v58 = v192;
  }

  while (v102);
LABEL_49:
  while (1)
  {
    v107 = v105 + 1;
    if (__OFADD__(v105, 1))
    {
      break;
    }

    if (v107 >= v104)
    {

      v122 = sub_21AEA7574(&qword_27CD3D920, &qword_21AF0C9A0);
      sub_21AED1DCC();
      v201 = sub_21AF0974C();
      sub_21AED1DCC();
      *&v189 = v122;
      v200 = sub_21AF0974C();
      v123 = v173;
      sub_21AF0954C();
      v124 = v174;
      v125 = v191;
      (*(v174 + 16))(v190, v123, v191);
      v126 = *(v172 + 36);
      sub_21AEC5A18();
      sub_21AF099FC();
      (*(v124 + 8))(v123, v125);
      v193 = (v176 + 16);
      v127 = (v176 + 32);
      v128 = (v176 + 8);
      v129 = v181;
      while (1)
      {
        v130 = v190;
        LOBYTE(v30) = v191;
        sub_21AF09A1C();
        if (*(v130 + v126) == v198)
        {
          break;
        }

        v131 = sub_21AF09A6C();
        v132 = v188;
        (*v193)(v188);
        v131(&v198, 0);
        sub_21AF09A2C();
        (*v127)(v58, v132, v129);
        sub_21AEC74C8();
        sub_21AF094FC();
        if (v199)
        {
          if (swift_dynamicCast())
          {
            sub_21AED1B28();
            if (!v197)
            {
              __break(1u);
              goto LABEL_88;
            }

            sub_21AEAF9F4(&v196, &v198);
            swift_dynamicCast();
            v133 = v195;
            sub_21AF0936C();
            if (v134 < v133)
            {
              type metadata accessor for AMLPhotosSearchBiomeMetricsUtility();
              sub_21AED1EE8(&v201, v135, v136, v137, v202);
            }

            sub_21AF0936C();
            if (v138 >= v133)
            {
              v142 = v192;
              v129 = v181;
              (*v128)(v192, v181);
              v58 = v142;
            }

            else
            {
              type metadata accessor for AMLPhotosSearchBiomeMetricsUtility();
              sub_21AED1EE8(&v200, v139, v140, v141, v202);

              v58 = v192;
              v129 = v181;
              (*v128)(v192, v181);
            }
          }

          else
          {
            (*v128)(v58, v129);
          }
        }

        else
        {
          (*v128)(v58, v129);
          sub_21AEC6E68(&v198, &qword_27CD3D330, &unk_21AF0C420);
        }
      }

      sub_21AEC6E68(v130, &qword_27CD3D850, &qword_21AF0C618);

      if ((v165 & 0x100000000) == 0)
      {
        sub_21AED1D30();
        sub_21AED1D48();
        goto LABEL_79;
      }

      if (qword_27CD3D278 != -1)
      {
        goto LABEL_86;
      }

      goto LABEL_73;
    }

    v102 = v98[v107];
    ++v105;
    if (v102)
    {
      goto LABEL_52;
    }
  }

LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  sub_21AED1A5C();
  swift_once();
LABEL_73:
  v143 = sub_21AF096CC();
  sub_21AEC78A8(v143, qword_27CD3EB60);
  v144 = sub_21AF096AC();
  v145 = sub_21AF09A7C();
  if (sub_21AED1CA4(v145))
  {
    v146 = sub_21AED1D18();
    v147 = sub_21AEB39C8();
    *&v198 = v147;
    *v146 = 136315138;
    sub_21AEA7C78(&v201, &v194);

    v148 = sub_21AF0973C();
    v150 = v149;

    v151 = sub_21AECFFFC(v148, v150, &v198);

    *(v146 + 4) = v151;
    _os_log_impl(&dword_21AE94000, v144, v30, "PhotoIDCountGivenSceneCategoryDictWeek %s", v146, 0xCu);
    sub_21AEA79F0(v147);
    sub_21AEAFB90();
    sub_21AEAFB90();
  }

  v152 = sub_21AF096AC();
  v153 = sub_21AF09A7C();
  if (sub_21AED1CA4(v153))
  {
    v154 = sub_21AED1D18();
    v155 = sub_21AEB39C8();
    *&v198 = v155;
    *v154 = 136315138;
    sub_21AEA7C78(&v200, &v195);

    v156 = sub_21AF0973C();
    v158 = v157;

    v159 = sub_21AECFFFC(v156, v158, &v198);

    *(v154 + 4) = v159;
    sub_21AED1E88(&dword_21AE94000, v160, v161, "PhotoIDCountGivenSceneCategoryDictMonth %s");
    sub_21AEA79F0(v155);
    sub_21AEAFB90();
    sub_21AEAFB90();
  }

  sub_21AED1D30();
  sub_21AED1D48();

LABEL_79:
  v162 = v171;
  v163 = v169;
  (v169)(v179, v171);
  v164 = sub_21AED1DB4();
  v163(v164, v162);

  sub_21AEA7C78(&v201, &v198);
  sub_21AEA7C78(&v200, &v196);
  sub_21AEAD0A8();
}

void *sub_21AECEFFC(uint64_t a1, uint64_t a2, char a3)
{
  sub_21AECB90C();
  v69 = v4;
  v70 = v5;
  v72 = a3;
  sub_21AECC428();
  v71 = v6;
  v8 = v7;
  sub_21AEA7574(&qword_27CD3D938, &unk_21AF0C9D0);
  v9 = sub_21AF0974C();
  v85 = v9;
  v84 = MEMORY[0x277D84FA0];
  v10 = v8 + 64;
  v11 = 1 << *(v8 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v8 + 64);
  v14 = (v11 + 63) >> 6;
  v77 = v8;

  v15 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v80 = _Q0;
  v73 = v14;
  v74 = v8 + 64;
  if (v13)
  {
LABEL_9:
    while (1)
    {
      sub_21AED1E50();
      v22 = v21[1];
      v78 = v13;
      v79 = *v21;
      v25 = *(v24 + 8 * v23);
      v81 = *(v25 + 16);
      if (v81)
      {
        break;
      }

      v27 = MEMORY[0x277D84F98];
LABEL_25:
      swift_isUniquelyReferenced_nonNull_native();
      v83 = v9;
      sub_21AED0594(v79, v22);
      sub_21AED1B64();
      if (__OFADD__(v40, v41))
      {
        goto LABEL_38;
      }

      v42 = v38;
      v43 = v39;
      sub_21AEA7574(&qword_27CD3D940, &qword_21AF0D3C0);
      if (sub_21AF09D0C())
      {
        v44 = sub_21AED0594(v79, v22);
        if ((v43 & 1) != (v45 & 1))
        {
          goto LABEL_40;
        }

        v42 = v44;
      }

      v9 = v83;
      if (v43)
      {
        *(v83[7] + 8 * v42) = v27;
      }

      else
      {
        sub_21AED1AA8(&v83[v42 >> 6]);
        v46 = (v9[6] + 16 * v42);
        *v46 = v79;
        v46[1] = v22;
        *(v9[7] + 8 * v42) = v27;
        v47 = v9[2];
        _VF = __OFADD__(v47, 1);
        v48 = v47 + 1;
        if (_VF)
        {
          goto LABEL_39;
        }

        v9[2] = v48;
      }

      v13 = (v78 - 1) & v78;
      v85 = v9;
      v14 = v73;
      v10 = v74;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v75 = v21[1];
    v76 = v9;

    v26 = 0;
    v27 = MEMORY[0x277D84F98];
    while (v26 < *(v25 + 16))
    {
      v28 = (v25 + 32 + 16 * v26);
      v29 = *v28;
      v30 = v28[1];
      v86[0] = v80;
      v86[1] = v80;
      v86[2] = v80;
      v86[3] = v80;

      swift_isUniquelyReferenced_nonNull_native();
      v83 = v27;
      sub_21AF05348(v86, v29, v30);
      v27 = v83;
      v31 = v84;
      if (*(v84 + 16))
      {
        sub_21AF09EFC();
        sub_21AF097EC();
        v32 = sub_21AF09F1C();
        v33 = ~(-1 << *(v31 + 32));
        while (1)
        {
          v34 = v32 & v33;
          if (((*(v31 + 56 + (((v32 & v33) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v32 & v33)) & 1) == 0)
          {
            break;
          }

          v35 = (*(v31 + 48) + 16 * v34);
          if (*v35 != v29 || v35[1] != v30)
          {
            v37 = sub_21AF09E4C();
            v32 = v34 + 1;
            if ((v37 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_22;
        }
      }

      sub_21AEF66E4(&v83, v29, v30);
LABEL_22:

      if (++v26 == v81)
      {

        v22 = v75;
        v9 = v76;
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v20 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v20 >= v14)
      {

        type metadata accessor for AMLPhotosSearchBiomeMetricsUtility();
        sub_21AEE80E8(&v85, v69, v71, 1, v72 & 1);

        sub_21AEE80E8(&v85, v70, v77, 0, v72 & 1);

        sub_21AECCCC0();
        v50 = v49;
        v52 = v51;
        v54 = v53;

        sub_21AECDF24();
        v56 = v55;
        v58 = v57;
        v82 = v59;

        v60 = sub_21AED1E2C();
        sub_21AEE681C(v60, v50, v52, v71, 1, v61);

        v62 = sub_21AED1E2C();
        sub_21AEE681C(v62, v50, v54, v77, 0, v63);

        v64 = sub_21AED1E2C();
        sub_21AEE77C0(v64, v56, v58, v71, 1, v65);

        v66 = sub_21AED1E2C();
        sub_21AEE77C0(v66, v56, v82, v77, 0, v67);

        return v85;
      }

      v13 = *(v10 + 8 * v20);
      ++v15;
      if (v13)
      {
        v15 = v20;
        goto LABEL_9;
      }
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_21AF09E7C();
  __break(1u);
  return result;
}

uint64_t sub_21AECF558()
{
  result = sub_21AF094FC();
  if (!v3)
  {
    goto LABEL_7;
  }

  sub_21AEAF9F4(&v2, &v4);
  swift_dynamicCast();
  result = v1;
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (HIDWORD(v1))
  {
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  return result;
}

void sub_21AECF600(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = sub_21AF093FC();
  sub_21AEA7C90();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_21AEAD074();
  sub_21AED1AFC();
  MEMORY[0x28223BE20](v9);
  sub_21AF093EC();
  sub_21AF0938C();
  v10 = *(v7 + 8);
  v10(v4, v5);
  sub_21AF0936C();
  v11 = sub_21AED1D94();
  (v10)(v11);
  sub_21AF093EC();
  sub_21AF0936C();
  v12 = sub_21AED1D94();
  (v10)(v12);
  sub_21AECF74C();
}

void sub_21AECF74C()
{
  sub_21AEAD0C4();
  v2 = v1;
  v3 = sub_21AF093FC();
  sub_21AEA7C90();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_21AEAD074();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  sub_21AED1BF4();
  sub_21AF0935C();
  sub_21AF0935C();
  sub_21AEC74C8();
  sub_21AF094FC();
  if (v16)
  {
    sub_21AEAF9F4(&v15, &v17);
    swift_dynamicCast();
    v11 = sub_21AF097BC();

    v12 = sub_21AF0939C();
    v13 = sub_21AF0939C();
    if (v2)
    {
      sub_21AED1D94();
      v2 = sub_21AF097BC();
    }

    [objc_opt_self() shareInformationForPhotoId:v11 startTime:v12 endTime:v13 interactionStorePath:v2];

    v14 = *(v5 + 8);
    v14(v9, v3);
    v14(v0, v3);
    sub_21AEAD0A8();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_21AECF92C(uint64_t a1, void (**a2)(uint64_t))
{
  v55 = a2;
  v58 = sub_21AF094EC();
  sub_21AEA7C90();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_21AEC7504();
  v59 = v5;
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v6);
  sub_21AEC774C();
  v56 = v7;
  sub_21AEAFBDC();
  v57 = sub_21AF0952C();
  sub_21AEA7C90();
  v54 = v8;
  MEMORY[0x28223BE20](v9);
  sub_21AEC7554();
  v12 = v11 - v10;
  v13 = sub_21AEA7574(&qword_27CD3D850, &qword_21AF0C618);
  sub_21AEC7854();
  sub_21AEC7728();
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - v15;
  v17 = sub_21AF0957C();
  sub_21AEA7C90();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  sub_21AEC7554();
  v52 = v22 - v21;
  sub_21AEC7530();
  result = sub_21AF094FC();
  if (v62)
  {
    v50 = v19;
    v51 = v17;
    sub_21AED1F48();
    sub_21AED1C14();
    swift_dynamicCast();
    v25 = v60;
    v24 = v61;
    result = sub_21AF094FC();
    if (!v62)
    {
      goto LABEL_30;
    }

    sub_21AED1F48();
    sub_21AED1C14();
    swift_dynamicCast();
    HIDWORD(v49) = v60;
    type metadata accessor for AMLPhotosSearchPoirotMetricsUtility();
    sub_21AEB908C(v25, v24, v55, 0, v26, v27, v28, v29, v24, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
    sub_21AF0954C();
    v30 = v54;
    v31 = v57;
    (*(v54 + 2))(v16, v12, v57);
    v32 = *(v13 + 36);
    sub_21AEC5A18();
    sub_21AF099FC();
    (*(v30 + 1))(v12, v31);
    v54 = "parent_cardSectionId";
    v55 = (v3 + 16);
    v33 = (v3 + 8);
    v53 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_21AF09A1C();
      if (*&v16[v32] == v63[0])
      {
        break;
      }

      v34 = sub_21AF09A6C();
      (*v55)(v56);
      v34(v63, 0);
      sub_21AF09A2C();
      v35 = sub_21AEC7734();
      v36(v35);
      result = sub_21AF094FC();
      if (!v62)
      {
        goto LABEL_28;
      }

      sub_21AED1F48();
      swift_dynamicCast();
      if (v60 == 1)
      {
        result = sub_21AF094FC();
        if (!v62)
        {
          goto LABEL_31;
        }

        sub_21AED1F48();
        sub_21AED1C14();
        swift_dynamicCast();
        v37 = v60;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21AEAC498();
          v53 = v40;
        }

        v38 = *(v53 + 16);
        if (v38 >= *(v53 + 24) >> 1)
        {
          sub_21AEAC498();
          v53 = v41;
        }

        (*v33)(v59, v58);
        v39 = v53;
        *(v53 + 16) = v38 + 1;
        *(v39 + 4 * v38 + 32) = v37;
      }

      else
      {
        (*v33)(v59, v58);
      }
    }

    sub_21AEC6E68(v16, &qword_27CD3D850, &qword_21AF0C618);

    v42 = v53;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_21AED110C();
      v42 = v47;
    }

    v44 = v50;
    v43 = v51;
    v45 = *(v42 + 16);
    v63[0] = v42 + 32;
    v63[1] = v45;
    sub_21AED0868(v63);
    for (i = 0; *(v42 + 16) != i; ++i)
    {
      if (*(v42 + 4 * i + 32) == HIDWORD(v49))
      {
        goto LABEL_21;
      }
    }

    i = 1;
LABEL_21:
    (*(v44 + 8))(v52, v43);

    result = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
    }

    else if ((result & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(result))
      {
        return result;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

id AMLPhotosSearchPoirotDataMetrics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AMLPhotosSearchPoirotDataMetrics.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMLPhotosSearchPoirotDataMetrics();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AMLPhotosSearchPoirotDataMetrics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMLPhotosSearchPoirotDataMetrics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21AECFFFC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21AED00C0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_21AEA784C(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_21AEA79F0(v11);
  return v7;
}

unint64_t sub_21AED00C0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_21AED01C0(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_21AF09CAC();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_21AED01C0(uint64_t a1, unint64_t a2)
{
  v3 = sub_21AED020C(a1, a2);
  sub_21AED0324(&unk_282C805E8);
  return v3;
}

uint64_t sub_21AED020C(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_21AF0981C())
  {
    result = sub_21AED0408(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_21AF09C4C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_21AF09CAC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21AED0324(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_21AED0478(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_21AED0408(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_21AEA7574(&qword_27CD3D948, qword_21AF0C9E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_21AED0478(char *result, int64_t a2, char a3, char *a4)
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
    sub_21AEA7574(&qword_27CD3D948, qword_21AF0C9E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_21AED0594(uint64_t a1, uint64_t a2)
{
  sub_21AF09EFC();
  sub_21AF097EC();
  sub_21AF09F1C();
  v2 = sub_21AEB3974();

  return sub_21AED0690(v2, v3, v4);
}

unint64_t sub_21AED0608(uint64_t a1)
{
  v2 = sub_21AF09EEC();

  return sub_21AED0744(a1, v2);
}

unint64_t sub_21AED064C(uint64_t a1)
{
  v2 = sub_21AF09BEC();

  return sub_21AED07A4(a1, v2);
}

unint64_t sub_21AED0690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_21AF09E4C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_21AED0744(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_21AED07A4(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_21AED1894(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x21CEE4E60](v8, a1);
    sub_21AED18F0(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_21AED0868(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21AF09E0C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_21AF098FC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_21AED09B8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21AED095C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21AED095C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 4 * a3 - 4;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 4 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 4;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_21AED09B8(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v77 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v72 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 4 * v8);
        v10 = *(*a3 + 4 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 4 * v11++) >= v12);
          v12 = *(*a3 + 4 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + 4 * v16);
                *(v17 + 4 * v16) = *(v17 + 4 * v15);
                *(v17 + 4 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 4 * v8 - 4;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 4 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (v23 >= *v25)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 4;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v74 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21AEAC638();
        v7 = v70;
      }

      v28 = v7[2];
      v29 = v28 + 1;
      if (v28 >= v7[3] >> 1)
      {
        sub_21AEAC638();
        v7 = v71;
      }

      v7[2] = v29;
      v30 = v7 + 4;
      v31 = &v7[2 * v28 + 4];
      *v31 = v6;
      v31[1] = v8;
      v75 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          v33 = &v30[2 * v29 - 2];
          v34 = &v7[2 * v29];
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_56:
            if (v38)
            {
              goto LABEL_96;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_99;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_104;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v29 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v29 < 2)
          {
            goto LABEL_98;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_71:
          if (v53)
          {
            goto LABEL_101;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_103;
          }

          if (v60 < v52)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v32 - 1 >= v29)
          {
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
LABEL_97:
            __break(1u);
LABEL_98:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v64 = &v30[2 * v32 - 2];
          v65 = *v64;
          v66 = &v30[2 * v32];
          v67 = v66[1];
          sub_21AED0F84((*a3 + 4 * *v64), (*a3 + 4 * *v66), (*a3 + 4 * v67), v75);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v67 < v65)
          {
            goto LABEL_91;
          }

          v68 = v7;
          v69 = v7[2];
          if (v32 > v69)
          {
            goto LABEL_92;
          }

          *v64 = v65;
          v64[1] = v67;
          if (v32 >= v69)
          {
            goto LABEL_93;
          }

          v29 = v69 - 1;
          memmove(&v30[2 * v32], v66 + 2, 16 * (v69 - 1 - v32));
          v68[2] = v69 - 1;
          v19 = v69 > 2;
          v7 = v68;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v39 = &v30[2 * v29];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_94;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_95;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_97;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_100;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_105;
          }

          if (v37 < v63)
          {
            v32 = v29 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v74;
      a4 = v72;
      if (v74 >= v5)
      {
        v77 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_21AED0E58(&v77, *result, a3);
LABEL_89:
}

uint64_t sub_21AED0E58(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_21AEFBBF8(v5, v7, v8, v9);
    v5 = result;
  }

  v17 = v4;
  *v4 = v5;
  v10 = (v5 + 16);
  for (i = *(v5 + 16); ; *v10 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v17 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v12 = (v5 + 16 * i);
    v13 = *v12;
    v14 = &v10[2 * i];
    v15 = v14[1];
    sub_21AED0F84((*a3 + 4 * *v12), (*a3 + 4 * *v14), (*a3 + 4 * v15), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v15 < v13)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v10)
    {
      goto LABEL_12;
    }

    *v12 = v13;
    v12[1] = v15;
    v16 = *v10 - i;
    if (*v10 < i)
    {
      goto LABEL_13;
    }

    i = *v10 - 1;
    result = memmove(v14, v14 + 2, 16 * v16);
  }

  *v17 = v5;
  __break(1u);
  return result;
}

uint64_t sub_21AED0F84(char *a1, char *a2, int *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 4;
  v9 = (a3 - a2) / 4;
  if (v8 < v9)
  {
    sub_21AEFAB80(a1, (a2 - a1) / 4, a4);
    v10 = &v4[4 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6++;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
    }

    v12 = *v4;
    v13 = v7 == v4;
    v4 += 4;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_21AEFAB80(a2, (a3 - a2) / 4, a4);
  v10 = &v4[4 * v9];
LABEL_15:
  v14 = v6 - 1;
  for (--v5; v10 > v4 && v6 > v7; --v5)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 1 == v6--;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 1))
    {
      *v5 = v16;
    }

    v10 -= 4;
  }

LABEL_28:
  v17 = (v10 - v4) / 4;
  if (v6 != v4 || v6 >= &v4[4 * v17])
  {
    memmove(v6, v4, 4 * v17);
  }

  return 1;
}

uint64_t getEnumTagSinglePayload for AMLSODAConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AMLSODAConfig.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21AED1718()
{
  result = qword_27CD3D900;
  if (!qword_27CD3D900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3D900);
  }

  return result;
}

unint64_t sub_21AED1770()
{
  result = qword_27CD3D908;
  if (!qword_27CD3D908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3D908);
  }

  return result;
}

unint64_t sub_21AED17C8()
{
  result = qword_27CD3D910;
  if (!qword_27CD3D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3D910);
  }

  return result;
}

uint64_t sub_21AED181C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_21AF09DAC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

unint64_t sub_21AED1944()
{
  result = qword_27CD3D950;
  if (!qword_27CD3D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3D950);
  }

  return result;
}

__n128 sub_21AED19A4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_21AED19B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
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

uint64_t sub_21AED19F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_21AED1AB8@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;

  return sub_21AF09EDC();
}

uint64_t sub_21AED1B28()
{

  return sub_21AF094FC();
}

id sub_21AED1B4C(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

double sub_21AED1B90@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>)
{
  v5 = *(v2 - 256) | 0x8000000000000000;

  return sub_21AEC8AA8(v3, a1, a2, v5);
}

__n128 sub_21AED1BAC(__n128 *a1)
{
  result = *(v1 - 496);
  a1[1] = result;
  *(v1 - 192) = 0;
  *(v1 - 184) = 0xE000000000000000;
  return result;
}

double sub_21AED1C34(uint64_t a1)
{
  *(a1 + 16) = *(v1 - 160);
  *(v1 - 120) = 0;
  *(v1 - 112) = 0xE000000000000000;

  return result;
}

BOOL sub_21AED1CA4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_21AED1CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2821FDB38](a1, a2, a3, v3);
}

uint64_t sub_21AED1CDC()
{

  return sub_21AF09E4C();
}

uint64_t sub_21AED1D18()
{

  return swift_slowAlloc();
}

void sub_21AED1D30()
{
  v2 = *(v0 - 464);
}

void sub_21AED1D48()
{
  v2 = *(v0 - 472);
}

void sub_21AED1DF8()
{
  v4 = (*(v0 + 48) + 16 * v3);
  *v4 = v2;
  v4[1] = v1;
}

void sub_21AED1E88(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_21AED1EA8()
{

  return sub_21AEA75BC(v0, 0, 1, v1);
}

uint64_t sub_21AED1EC8()
{

  return sub_21AF0974C();
}

uint64_t sub_21AED1EE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v7 - 312);

  return sub_21AEE706C(a1, v6, v5, v9, a5);
}

uint64_t sub_21AED1F08()
{

  return sub_21AF0974C();
}

uint64_t sub_21AED1F28(uint64_t *a1)
{

  return sub_21AEE7500(a1, v1, v2);
}

_OWORD *sub_21AED1F48()
{

  return sub_21AEAF9F4((v0 - 152), (v0 - 120));
}

void *sub_21AED2014()
{
  v1 = *(v0 + OBJC_IVAR___AMLClientDonations_arrayProvider);
  v2 = v1;
  return v1;
}

void *sub_21AED2078()
{
  v1 = *(v0 + OBJC_IVAR___AMLClientDonations_featuresConfiguration);
  v2 = v1;
  return v1;
}

void *sub_21AED20DC()
{
  v1 = *(v0 + OBJC_IVAR___AMLClientDonations_metadata);
  v2 = v1;
  return v1;
}

uint64_t sub_21AED2164()
{
  v1 = *(v0 + OBJC_IVAR___AMLClientDonations_donationTime);

  return v1;
}

id AMLClientDonations.init(featuresConfiguration:featureProvider:batchProvider:arrayProvider:metadata:donationTime:)()
{
  sub_21AED2E9C();
  if (v3)
  {
    v4 = sub_21AF097BC();
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = sub_21AED2EB8(v5, sel_initWithFeaturesConfiguration_featureProvider_batchProvider_arrayProvider_metadata_donationTime_);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v6;
}

id AMLClientDonations.init(featuresConfiguration:featureProvider:batchProvider:arrayProvider:metadata:donationTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + OBJC_IVAR___AMLClientDonations_featuresConfiguration) = a1;
  *(v7 + OBJC_IVAR___AMLClientDonations_featureProvider) = a2;
  *(v7 + OBJC_IVAR___AMLClientDonations_batchProvider) = a3;
  *(v7 + OBJC_IVAR___AMLClientDonations_arrayProvider) = a4;
  *(v7 + OBJC_IVAR___AMLClientDonations_metadata) = a5;
  v8 = (v7 + OBJC_IVAR___AMLClientDonations_donationTime);
  *v8 = a6;
  v8[1] = a7;
  v10.super_class = AMLClientDonations;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t AMLClientDonations.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 featuresConfiguration];
  v4 = [v1 featureProvider];
  v5 = [v1 batchProvider];
  v6 = [v1 arrayProvider];
  v7 = [v1 metadata];
  sub_21AED2D8C(v1);
  v8 = objc_allocWithZone(AMLClientDonations);
  v9 = sub_21AED2CF4();
  result = type metadata accessor for AMLClientDonations(v9);
  a1[3] = result;
  *a1 = v9;
  return result;
}

Swift::Void __swiftcall AMLClientDonations.encode(with:)(NSCoder with)
{
  v3 = [v1 featuresConfiguration];
  v4 = sub_21AEAFBE8();
  v5 = sub_21AED2E34();
  [v5 v6];

  v7 = [v1 featureProvider];
  v8 = sub_21AF097BC();
  v9 = sub_21AED2E34();
  [v9 v10];
  swift_unknownObjectRelease();

  v11 = [v1 batchProvider];
  sub_21AED2F18();
  v12 = sub_21AF097BC();
  v13 = sub_21AED2E34();
  [v13 v14];
  swift_unknownObjectRelease();

  v15 = [v1 arrayProvider];
  sub_21AED2F04();
  v16 = sub_21AF097BC();
  v17 = sub_21AED2E34();
  [v17 v18];

  v19 = [v1 metadata];
  v20 = sub_21AED2EE0();
  v21 = sub_21AED2E34();
  [v21 v22];

  sub_21AED2D8C(v1);
  if (v23)
  {
    v24 = sub_21AF097BC();
  }

  else
  {
    v24 = 0;
  }

  v25 = sub_21AED2E70();
  [(objc_class *)with.super.isa encodeObject:v24 forKey:v25];
  swift_unknownObjectRelease();
}

id AMLClientDonations.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v4 = sub_21AEAFBE8();
  v5 = [a1 decodeObjectForKey_];

  if (v5)
  {
    sub_21AF09B9C();
    v6 = swift_unknownObjectRelease();
  }

  else
  {
    sub_21AED2E64();
  }

  sub_21AED2E04(v6, v7, v8, v9, v10, v11, v12, v13, v122, v128, v134.receiver, v134.super_class, v135, v136, *&v137[0], *(&v137[0] + 1), v137[1]);
  if (!v14)
  {

LABEL_47:
    v33 = sub_21AEADFD8(v138);
    goto LABEL_53;
  }

  v15 = type metadata accessor for AMLFeaturesConfiguration(0);
  if ((sub_21AED2E14(v15, v16, v17, v15, v18, v19, v20, v21) & 1) == 0)
  {

LABEL_53:
    type metadata accessor for AMLClientDonations(v33);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v22 = v135;
  v23 = sub_21AF097BC();
  v24 = [a1 decodeObjectForKey_];

  if (v24)
  {
    sub_21AF09B9C();
    v25 = swift_unknownObjectRelease();
  }

  else
  {
    sub_21AED2E64();
  }

  sub_21AED2E04(v25, v26, v27, v28, v29, v30, v31, v32, v123, v129, v134.receiver, v134.super_class, v135, v136, *&v137[0], *(&v137[0] + 1), v137[1]);
  if (!v34)
  {

LABEL_46:
    goto LABEL_47;
  }

  v35 = sub_21AEA7574(&unk_27CD3DE90, &unk_21AF0C440);
  if ((sub_21AED2E14(v35, v36, v37, v35, v38, v39, v40, v41) & 1) == 0)
  {

LABEL_52:
    goto LABEL_53;
  }

  v42 = v135;
  sub_21AED2F18();
  v43 = sub_21AF097BC();
  v44 = sub_21AED2E44(v43);

  if (v44)
  {
    sub_21AF09B9C();
    v45 = swift_unknownObjectRelease();
  }

  else
  {
    sub_21AED2E64();
  }

  sub_21AED2E04(v45, v46, v47, v48, v49, v50, v51, v52, v124, v130, v134.receiver, v134.super_class, v135, v136, *&v137[0], *(&v137[0] + 1), v137[1]);
  if (!v53)
  {

LABEL_45:
    swift_unknownObjectRelease();
    goto LABEL_46;
  }

  v54 = sub_21AEA7574(&qword_27CD3D9F0, &unk_21AF0C430);
  if ((sub_21AED2E14(v54, v55, v56, v54, v57, v58, v59, v60) & 1) == 0)
  {

LABEL_51:
    swift_unknownObjectRelease();
    goto LABEL_52;
  }

  v61 = v135;
  sub_21AED2F04();
  v62 = sub_21AF097BC();
  v63 = sub_21AED2E44(v62);

  if (v63)
  {
    sub_21AF09B9C();
    v64 = swift_unknownObjectRelease();
  }

  else
  {
    sub_21AED2E64();
  }

  sub_21AED2E04(v64, v65, v66, v67, v68, v69, v70, v71, v125, v131, v134.receiver, v134.super_class, v135, v136, *&v137[0], *(&v137[0] + 1), v137[1]);
  if (!v72)
  {

LABEL_44:
    swift_unknownObjectRelease();
    goto LABEL_45;
  }

  v73 = sub_21AEA7B80(0, &qword_27CD3D9F8, 0x277CBFEB0);
  if ((sub_21AED2E14(v73, v74, v75, v73, v76, v77, v78, v79) & 1) == 0)
  {

LABEL_50:
    swift_unknownObjectRelease();
    goto LABEL_51;
  }

  v80 = v135;
  v81 = sub_21AED2EE0();
  v82 = sub_21AED2E44(v81);

  if (v82)
  {
    sub_21AF09B9C();
    v83 = swift_unknownObjectRelease();
  }

  else
  {
    sub_21AED2E64();
  }

  sub_21AED2E04(v83, v84, v85, v86, v87, v88, v89, v90, v126, v132, v134.receiver, v134.super_class, v135, v136, *&v137[0], *(&v137[0] + 1), v137[1]);
  if (!v91)
  {

LABEL_43:
    goto LABEL_44;
  }

  v92 = type metadata accessor for AMLFeaturesDonationMetadata(0);
  if ((sub_21AED2E14(v92, v93, v94, v92, v95, v96, v97, v98) & 1) == 0)
  {

LABEL_49:
    goto LABEL_50;
  }

  v99 = sub_21AED2E70();
  v100 = sub_21AED2E44(v99);

  if (v100)
  {
    sub_21AF09B9C();
    v101 = swift_unknownObjectRelease();
  }

  else
  {
    sub_21AED2E64();
  }

  *&v116 = sub_21AED2E04(v101, v102, v103, v104, v105, v106, v107, v108, v127, v135, v134.receiver, v134.super_class, v135, v136, *&v137[0], *(&v137[0] + 1), v137[1]).n128_u64[0];
  if (!v117)
  {

    goto LABEL_43;
  }

  if ((sub_21AED2E14(v109, v110, v111, MEMORY[0x277D837D0], v112, v113, v114, v115, v116) & 1) == 0)
  {

    goto LABEL_49;
  }

  *&v1[OBJC_IVAR___AMLClientDonations_featuresConfiguration] = v22;
  *&v1[OBJC_IVAR___AMLClientDonations_featureProvider] = v42;
  *&v1[OBJC_IVAR___AMLClientDonations_batchProvider] = v61;
  *&v1[OBJC_IVAR___AMLClientDonations_arrayProvider] = v80;
  *&v1[OBJC_IVAR___AMLClientDonations_metadata] = v133;
  v118 = v136;
  v119 = &v1[OBJC_IVAR___AMLClientDonations_donationTime];
  *v119 = v135;
  *(v119 + 1) = v118;
  v134.receiver = v1;
  v134.super_class = AMLClientDonations;
  v120 = objc_msgSendSuper2(&v134, sel_init);

  return v120;
}

id AMLClientDonations.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_21AED2CF4()
{
  sub_21AED2E9C();
  if (v4)
  {
    v5 = sub_21AF097BC();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_21AED2EB8(v3, sel_initWithFeaturesConfiguration_featureProvider_batchProvider_arrayProvider_metadata_donationTime_);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_21AED2D8C(void *a1)
{
  v1 = [a1 donationTime];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21AF097CC();

  return v3;
}

uint64_t sub_21AED2E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{

  return swift_dynamicCast();
}

id sub_21AED2E44(uint64_t a1)
{

  return [v1 (v2 + 2445)];
}

uint64_t sub_21AED2E70()
{

  return sub_21AF097BC();
}

id sub_21AED2EB8(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t sub_21AED2EE0()
{

  return sub_21AF097BC();
}

uint64_t type metadata accessor for AMLSODAUserHostEnvironment(uint64_t a1)
{
  result = qword_27CD3DA10;
  if (!qword_27CD3DA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AED3054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_21AF0930C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_27CD3DA08;
  *(v4 + v10) = [objc_opt_self() standardUserDefaults];
  (*(v7 + 16))(v9, a3, v6);
  v11 = sub_21AF0965C();
  (*(v7 + 8))(a3, v6);
  return v11;
}

uint64_t sub_21AED319C()
{
  v1 = *(v0 + qword_27CD3DA08);
  v2 = sub_21AF097BC();
  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_21AF09B9C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_21AEADFD8(v8);
    return 0;
  }
}

void sub_21AED32A4(uint64_t a1, char a2)
{
  v3 = *(v2 + qword_27CD3DA08);
  if (a2)
  {
    v4 = v3;
    v5 = 0;
  }

  else
  {
    v6 = v3;
    v5 = sub_21AF099AC();
  }

  v7 = sub_21AF097BC();
  [v3 setObject:v5 forKey:v7];

  swift_unknownObjectRelease();
}

void (*sub_21AED3358(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = sub_21AED319C();
  *(a1 + 8) = v3 & 1;
  return sub_21AED33A8;
}

uint64_t sub_21AED33E8()
{
  v0 = sub_21AF0966C();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_21AED3450(uint64_t (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  sub_21AEE1E2C();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_21AEA7CA4();
  v47 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_21AEA7C90();
  v49 = v14;
  sub_21AEC7728();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v34 - v17;
  MEMORY[0x28223BE20](v16);
  sub_21AEA7CA4();
  v43 = v19;
  swift_getAssociatedTypeWitness();
  sub_21AEA7C90();
  v37 = v21;
  v38 = v20;
  sub_21AEC7728();
  MEMORY[0x28223BE20](v22);
  v24 = &v34 - v23;
  v25 = sub_21AF09A0C();
  if (!v25)
  {
    return sub_21AF098EC();
  }

  v48 = v25;
  v52 = sub_21AF09CDC();
  v39 = sub_21AF09CEC();
  sub_21AF09CBC();
  result = sub_21AF099FC();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v27 = 0;
    v40 = (v49 + 16);
    v41 = v49 + 8;
    v42 = v8;
    while (!__OFADD__(v27, 1))
    {
      v49 = v27 + 1;
      v28 = sub_21AF09A6C();
      (*v40)(v18);
      v28(v51, 0);
      v29 = v50;
      v45(v18, v47);
      if (v29)
      {
        v32 = sub_21AEE2E64();
        v33(v32);
        (*(v37 + 8))(v24, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      v30 = sub_21AEE2E64();
      v31(v30);
      sub_21AF09CCC();
      result = sub_21AF09A2C();
      ++v27;
      if (v49 == v48)
      {
        (*(v37 + 8))(v24, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AMLRecommendationPipeline.contextFeatureProviders()(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  sub_21AEE2514();
  swift_getExtendedExistentialTypeMetadata();
  sub_21AEE2790();
  return sub_21AF098EC();
}

uint64_t sub_21AED3940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  sub_21AEE2CBC();
  swift_getAssociatedTypeWitness();
  swift_getExtendedExistentialTypeMetadata();
  sub_21AEE2790();
  return sub_21AF098EC();
}

uint64_t sub_21AED39D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  sub_21AEE2CBC();
  swift_getAssociatedTypeWitness();
  sub_21AEE17F4();
  swift_getExtendedExistentialTypeMetadata();
  sub_21AEE2790();
  return sub_21AF098EC();
}

uint64_t AMLRecommendationPipeline.process(context:)()
{
  sub_21AEE2818();
  v3 = v2;
  v1[134] = v0;
  v1[133] = v4;
  v1[132] = v2;
  v1[131] = v5;
  v1[135] = *(v4 + 8);
  v1[136] = swift_getAssociatedTypeWitness();
  sub_21AEE2CBC();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[137] = AssociatedTypeWitness;
  sub_21AEE252C();
  v1[138] = type metadata accessor for AMLRankingPipelineContext(v7, v8, v9, v10);
  sub_21AEE21F4();
  v1[139] = v11;
  v1[140] = sub_21AEE30A8();
  sub_21AEE252C();
  v1[141] = type metadata accessor for AMLScoringPipelineContext(v12, v13, v14, v15);
  sub_21AEE21F4();
  v1[142] = v16;
  v1[143] = sub_21AEE30A8();
  sub_21AEE1E2C();
  v1[144] = v17;
  v1[145] = sub_21AEE2D7C();
  v1[146] = swift_task_alloc();
  v1[147] = type metadata accessor for AMLCandidateWithFeatures(0, AssociatedTypeWitness, v18, v19);
  sub_21AEA7C90();
  v1[148] = v20;
  v1[149] = swift_task_alloc();
  v1[150] = swift_task_alloc();
  v1[151] = swift_task_alloc();
  v1[152] = swift_getTupleTypeMetadata2();
  v1[153] = sub_21AF09B7C();
  sub_21AEE21F4();
  v1[154] = v21;
  v1[155] = sub_21AEE2D7C();
  v1[156] = swift_task_alloc();
  v1[157] = swift_task_alloc();
  sub_21AEE268C();
  v1[158] = v22;
  v1[159] = sub_21AEE2D7C();
  v1[160] = swift_task_alloc();
  v1[161] = swift_task_alloc();
  v1[162] = swift_task_alloc();
  v1[163] = swift_task_alloc();
  v1[164] = swift_task_alloc();
  v1[165] = swift_task_alloc();
  v1[166] = swift_task_alloc();
  v1[167] = swift_task_alloc();
  v1[168] = *(v3 - 8);
  v1[169] = sub_21AEE2D7C();
  v1[170] = swift_task_alloc();
  v1[171] = swift_task_alloc();
  v1[172] = swift_task_alloc();
  v1[173] = swift_task_alloc();
  v1[174] = swift_task_alloc();
  v1[175] = swift_task_alloc();
  v1[176] = swift_task_alloc();
  v1[177] = swift_task_alloc();
  sub_21AEE246C();

  return MEMORY[0x2822009F8](v23);
}

uint64_t sub_21AED3E70()
{
  v79 = v0;
  if (qword_27CD3D2C0 != -1)
  {
    sub_21AEE1934(&qword_27CD3D2C0);
  }

  v3 = *(v0 + 1344);
  v74 = *(v0 + 1336);
  v4 = *(v0 + 1264);
  sub_21AEE2F58();
  v5 = sub_21AF096CC();
  *(v0 + 1424) = sub_21AEA7958(v5, qword_27CD3EC20);
  v6 = *(v3 + 16);
  *(v0 + 1432) = v6;
  *(v0 + 1440) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7 = sub_21AEE2034();
  (v6)(v7);
  v8 = *(v4 + 16);
  *(v0 + 1448) = v8;
  *(v0 + 1456) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v74, v2, v1);
  sub_21AEE2334();
  v6();
  v9 = sub_21AF096AC();
  v76 = sub_21AF09AAC();
  v10 = os_log_type_enabled(v9, v76);
  v11 = *(v0 + 1344);
  v12 = *(v0 + 1336);
  v13 = *(v0 + 1264);
  if (v10)
  {
    v14 = *(v0 + 1080);
    v15 = *(v0 + 1056);
    sub_21AEE2058();
    v71 = v16;
    swift_slowAlloc();
    v78 = sub_21AEE1FE4();
    *v9 = 136315394;
    v70 = v14;
    sub_21AEE2EF0();
    v69 = v17(v12, v15);
    v19 = v18;
    v20 = *(v13 + 8);
    v21 = sub_21AEC7BDC();
    v20(v21);
    v22 = *(v11 + 8);
    v23 = sub_21AEE2854();
    v22(v23);
    sub_21AECFFFC(v69, v19, &v78);
    sub_21AEE2064();

    sub_21AEE1BDC();
    (*(*(*(v70 + 8) + 8) + 16))(v15);
    v24 = sub_21AEE2064();
    v25 = v15;
    v26 = MEMORY[0x277D84F70];
    (v22)(v24, v25);
    sub_21AEEC484();

    v27 = sub_21AEE204C();
    sub_21AECFFFC(v27, v28, v29);
    sub_21AEE2180();

    *(v9 + 14) = v71;
    v30 = v9;
    sub_21AEE218C(&dword_21AE94000, v31, v76, "<requestID: %s> Processing %s");
    sub_21AEE2930(v32, v33, v26 + 8);
    sub_21AEE20A4();
    v34 = v9;
    v35 = v20;
    MEMORY[0x21CEE5A20](v34, -1, -1);
  }

  else
  {
    v22 = *(v11 + 8);
    (v22)(*(v0 + 1408), *(v0 + 1056));

    v35 = *(v13 + 8);
    v36 = sub_21AEC7BDC();
    v35(v36);
    v37 = sub_21AEE2460();
    v22(v37);
  }

  *(v0 + 1472) = v35;
  *(v0 + 1464) = v22;
  v38 = [objc_opt_self() mainBundle];
  v39 = [v38 bundleIdentifier];

  if (v39)
  {
    v40 = *(v0 + 1080);
    v41 = *(v0 + 1064);
    v42 = *(v0 + 1056);
    v77 = *(v0 + 1048);
    v72 = *(v0 + 1088);
    v43 = sub_21AF097CC();
    v73 = v44;
    v75 = v43;

    v45 = sub_21AEE2174();
    *(v0 + 1024) = v46(v45);
    v47 = swift_task_alloc();
    *(v47 + 16) = v42;
    *(v47 + 24) = v41;
    *(v0 + 848) = v72;
    sub_21AEE1A84();
    swift_getExtendedExistentialTypeMetadata();
    sub_21AEE2790();
    v48 = sub_21AF0997C();
    sub_21AEE1A6C();
    WitnessTable = swift_getWitnessTable();
    v51 = sub_21AED3450(sub_21AEE15C0, v47, v48, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v50);

    *(v0 + 1040) = v51;
    v52 = sub_21AEE2D64();
    sub_21AEA7574(v52, v53);
    sub_21AEE1684(&qword_27CD3DA20, &qword_27CD3D880, &qword_21AF0C650, MEMORY[0x277D83958]);
    v54 = sub_21AF097AC();
    v56 = v55;

    type metadata accessor for AMLFeaturesSpecification(0);
    v57 = sub_21AF0974C();
    v58 = sub_21AEDD4A4(v57);
    v59 = objc_allocWithZone(AMLFeaturesConfiguration);
    v60 = sub_21AEE0C50(v75, v73, v54, v56, 0x69737265762D6F6ELL, 0xEA00000000006E6FLL, 3, v58);
    v61 = [objc_allocWithZone(AMLPipelineLogger) initWithFeaturesConfiguration_];
    sub_21AEE2EF0();
    v62(v77, v42, v40);
    v63 = objc_allocWithZone(AMLFeaturesDonationMetadata);
    v64 = sub_21AEE2460();
    v39 = sub_21AEE0BB4(v64, v65, 0);
  }

  else
  {
    v61 = 0;
  }

  *(v0 + 1488) = v61;
  *(v0 + 1480) = v39;
  v66 = swift_task_alloc();
  *(v0 + 1496) = v66;
  *v66 = v0;
  v66[1] = sub_21AED4468;
  sub_21AEE2040(*(v0 + 1048));
  sub_21AEE2F84();

  return AMLRecommendationPipeline.contextFeatures(context:)();
}

uint64_t sub_21AED4468()
{
  sub_21AEE2AC0();
  sub_21AEE269C();
  v3 = v2;
  sub_21AEE1D9C();
  *v4 = v3;
  v5 = *v1;
  *v4 = v5;
  v3[188] = v6;
  v3[189] = v0;

  if (v0)
  {
    sub_21AEE246C();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    v8 = swift_task_alloc();
    v3[190] = v8;
    *v8 = v5;
    v8[1] = sub_21AED45D8;
    sub_21AEE2040(v3[131]);

    return AMLRecommendationPipeline.candidates(context:pipelineLogger:metadata:)();
  }
}

uint64_t sub_21AED45D8()
{
  sub_21AEE2818();
  sub_21AEE22E4();
  v4 = v3;
  sub_21AEE1D9C();
  *v5 = v4;
  v6 = *v2;
  sub_21AEE1F6C();
  *v7 = v6;
  *(v4 + 1528) = v0;

  if (!v0)
  {
    *(v4 + 1536) = v1;
  }

  sub_21AEE23FC();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_21AED46DC()
{
  v357 = (v0 + 129);
  v2 = v0[192];
  v0[110] = v2;
  v3 = MEMORY[0x277D84F90];
  v0[129] = MEMORY[0x277D84F90];
  v0[126] = v2;
  v0[193] = sub_21AF0997C();
  sub_21AEE2538();
  WitnessTable = swift_getWitnessTable();
  v0[194] = WitnessTable;
  v5 = sub_21AEB3AB4();
  MEMORY[0x21CEE4AC0](v5);
  v0[125] = v0[127];
  v0[195] = sub_21AF09D9C();
  sub_21AF09D6C();
  v6 = v0[191];
  v376 = v0;
  while (1)
  {
    sub_21AEE2F38();
    v7 = v0[154];
    v8 = v0[152];
    v0[196] = sub_21AF09D8C();
    sub_21AF09D7C();
    v0[197] = *(v7 + 32);
    v0[198] = (v7 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    sub_21AEE2334();
    v9();
    v10 = sub_21AEE2E58();
    sub_21AEA766C(v10, v11, v8);
    sub_21AEE2398();
    if (v12)
    {
      break;
    }

    sub_21AEE2BD8();
    v13 = v0[151];
    v14 = v0[148];
    sub_21AEE2BC8();
    v15 = sub_21AEE2148();
    v16(v15);
    v360 = v0 + 87;
    v17 = *(v13 + *(v3 + 28));
    swift_getObjectType();
    sub_21AEE2ACC();
    swift_unknownObjectRetain();
    sub_21AEE1DCC();
    sub_21AEE2ACC();
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
    sub_21AEE2D94();
    sub_21AEE273C();
    v0 = v376;
    *(v17 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * WitnessTable + *(v3 + 28)) = v13;
    swift_unknownObjectRelease();
    v18 = *(v1 + 56);
    v1 = (v18)(v360, v1);
    v376[121] = v1;
    *(v376 + 52) = v365;
    sub_21AEE1900();
    ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
    sub_21AEE2AA0(ExtendedExistentialTypeMetadata);
    sub_21AEE1A6C();
    swift_getWitnessTable();
    LOBYTE(v17) = sub_21AF09A4C();

    if ((v17 & 1) == 0)
    {
      v20 = sub_21AEE2B68();
      v1 = v18(v20);
      v376[200] = v1;
      v21 = sub_21AF0989C();
      v376[123] = v21;
      sub_21AED1D94();
      if (v21 != sub_21AF0992C())
      {
        v376[201] = v13;
        sub_21AEE2CB0();
        sub_21AEE204C();
        sub_21AF0990C();
        sub_21AEE20C0();
        sub_21AEE21E8();
        sub_21AF098BC();
        sub_21AEE2CB0();
        if (WitnessTable)
        {
          v369 = v376[181];
          v138 = v376[179];
          v375 = v376[178];
          v139 = v376[175];
          sub_21AEE1CE8();
          sub_21AEE2948(v140);
          sub_21AEE252C();
          sub_21AF0996C();
          v141 = sub_21AEE1B30(v376 + 11, (v376 + 17));
          v142 = v376;
          v138(v141);
          sub_21AEE2070();
          sub_21AEE2F14();
          v143();
          sub_21AEE15E0(v142 + 136, v142 + 96);
          sub_21AF096AC();
          sub_21AF09AAC();
          sub_21AEE2228();
          sub_21AEE3078(v144, v145);
          v146 = v376[184];
          v371 = v376[183];
          sub_21AEE22AC();
          if (v147)
          {
            sub_21AEE1C4C();
            v363 = v148;
            sub_21AEE2058();
            swift_slowAlloc();
            v149 = sub_21AEE1FE4();
            sub_21AEE2E08(v149);
            v150 = sub_21AEE182C(4.8151e-34);
            v151(v150);
            v152 = sub_21AEE1B70();
            v146(v152);
            v153 = sub_21AEE1DFC();
            v371(v153);
            v154 = sub_21AEE2278();
            v155 = MEMORY[0x277D84F70];
            sub_21AECFFFC(v154, &OBJC_INSTANCE_METHODS_NSCopying, v156);
            sub_21AEE2028();

            sub_21AEE1BDC();
            sub_21AEAF9B0(v376 + 12, v376[15]);
            v157 = sub_21AEE1C34();
            v159 = v158(v157);
            sub_21AEA79F0(v376 + 12);
            sub_21AEEC484();
            sub_21AEE207C();
            v160 = sub_21AEE2070();
            sub_21AECFFFC(v160, v161, v162);
            sub_21AEE2884();
            *(v139 + 14) = v159;
            sub_21AEE218C(&dword_21AE94000, v163, v6, "<requestID: %s> Processing candidate feature provider %s");
            sub_21AEE2DFC(v164, v165, v155 + 8, v166, v167, v168, v169, v170, v338, v340, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v357, v363, v369);
            swift_arrayDestroy();
            sub_21AEE2494();
            sub_21AEE2000();
          }

          else
          {
            sub_21AEE267C();
            sub_21AEA79F0(v376 + 12);

            v207 = sub_21AEE1FD8();
            v146(v207);
            v208 = sub_21AEC7734();
            v371(v208);
          }

          v209 = sub_21AEE2860();
          v210(v209);
          sub_21AEE204C();
          sub_21AF097DC();
          sub_21AEE2A04();
          v211 = sub_21AF096AC();
          v212 = sub_21AF09AAC();
          if (sub_21AEE2C98(v212))
          {
            sub_21AEE2058();
            swift_slowAlloc();
            sub_21AEE1FE4();
            *v139 = 136315394;
            v213 = v376[70];
            v214 = sub_21AEE2E8C();
            sub_21AEAF9B0(v214, v213);
            sub_21AEE2508();
            v215 = sub_21AEE2AF4();
            v216(v215);
            v217 = sub_21AEE2E8C();
            sub_21AEA79F0(v217);
            sub_21AEEC484();
            v142 = v218;

            v219 = sub_21AEE2278();
            v221 = sub_21AECFFFC(v219, v142, v220);
            sub_21AEE2664();

            sub_21AEE1BDC();
            v222 = sub_21AEE2174();
            sub_21AECFFFC(v222, v223, v224);
            sub_21AEE2180();

            *(v139 + 14) = v221;
            sub_21AEE270C(&dword_21AE94000, v225, v212, "Processing candidate feature provider %s for %s");
            swift_arrayDestroy();
            sub_21AEE23C8();
            sub_21AEE2000();
          }

          else
          {
            sub_21AEA79F0(v376 + 67);
          }

          v226 = sub_21AEE1B50((v142 + 136));
          sub_21AEE1D3C(v226);
          v227 = swift_task_alloc();
          *(v142 + 1616) = v227;
          *v227 = v142;
          v227[1] = sub_21AED6158;
          sub_21AEE1974();
          sub_21AEE289C();

          __asm { BRAA            X4, X16 }
        }

        goto LABEL_68;
      }
    }

    v22 = swift_unknownObjectRetain();
    MEMORY[0x21CEE4AD0](v22);
    sub_21AEE2BA8();
    if (v24)
    {
      sub_21AEE2E44(v23);
      sub_21AF098CC();
    }

    sub_21AEE2CC8();
    sub_21AF0991C();
    swift_unknownObjectRelease();
    v3 = v376[129];
    v25 = sub_21AEE2070();
    v26(v25);
  }

  v366 = v0[186];
  v358 = v0[185];
  v27 = v0[137];
  v370 = v0[136];

  v28 = sub_21AEE29C4();
  sub_21AEE2DCC(v28);
  v361 = v3;
  v29 = MEMORY[0x277D83988];
  v30 = swift_getWitnessTable();
  sub_21AEE2B98(v30);
  sub_21AEE1CF8();
  v31 = (v0 + 87);
  sub_21AEE2B88();
  v39 = sub_21AED3450(v32, v33, v34, v27, v35, v36, v37, v38);
  sub_21AEE29E4(v39);

  v40 = sub_21AEE2E38();
  v42 = v41(v40);
  sub_21AEE279C(v42);
  *(v43 + 816) = v370;
  v376[103] = v27;
  sub_21AEE1900();
  swift_getExtendedExistentialTypeMetadata();
  sub_21AEE2790();
  sub_21AF0997C();
  v44 = v376;
  swift_getWitnessTable();
  sub_21AF09A4C();

  sub_21AEE2B78();
  v339 = v31;
  v341 = v1;
  sub_21AEE26CC();
  AMLRecommendationPipeline.logPipelineAsync(pipelineStage:pipelineName:candidates:features:pipelineLogger:metadata:)(v45, v46, v47, v48, v49, v361, v366, v358);
  v50 = sub_21AEE2E38();
  v376[208] = v51(v50);
  v376[96] = v370;
  v376[97] = v27;
  sub_21AEE1D14();
  v52 = swift_getExtendedExistentialTypeMetadata();
  v53 = v52;
  v376[209] = v52;
  sub_21AEB3AB4();
  v54 = sub_21AF0989C();
  v376[120] = v54;
  sub_21AEB3AB4();
  if (v54 != sub_21AF0992C())
  {
    v376[210] = v361;
    sub_21AEE2098();
    sub_21AF0990C();
    sub_21AEE1BEC();
    sub_21AEE21D0();
    sub_21AF098BC();
    if (v53)
    {
      sub_21AEE1EC4();
      v74 = v376[174];
      v75 = sub_21AEE1954(40);
      sub_21AEE15E0(v75, v76 + 256);
      sub_21AEE201C();
      sub_21AF0996C();
      v77 = sub_21AEE1B30(v376 + 16, (v376 + 37));
      v31(v77);
      sub_21AEE1C84();
      sub_21AEE2F14();
      v80(v78, v79);
      sub_21AEE15E0((v376 + 37), (v376 + 42));
      v81 = sub_21AF096AC();
      sub_21AF09AAC();
      sub_21AEE2228();
      os_log_type_enabled(v81, v82);
      v83 = v376[184];
      v84 = v376[183];
      sub_21AEE2380();
      if (v85)
      {
        sub_21AEE1C4C();
        v87 = (v86 + 8);
        sub_21AEE2058();
        swift_slowAlloc();
        v88 = sub_21AEE1FE4();
        sub_21AEE2848(v88);
        v89 = sub_21AEE182C(4.8151e-34);
        v90(v89);
        v91 = sub_21AEE1CC0();
        v83(v91);
        v92 = sub_21AEE1DFC();
        v84(v92);
        v93 = sub_21AEE21DC();
        sub_21AECFFFC(v93, v94, v95);
        sub_21AEE2028();

        sub_21AEE1BDC();
        sub_21AEAF9B0(v376 + 42, v376[45]);
        v96 = sub_21AEE1C34();
        v98 = v97(v96);
        sub_21AEA79F0(v376 + 42);
        sub_21AEEC484();
        sub_21AEE207C();
        v99 = sub_21AEE2070();
        sub_21AECFFFC(v99, v100, v101);
        sub_21AEE2884();
        *(v74 + 14) = v98;
        sub_21AEE2760(&dword_21AE94000, v102, v103, "<requestID: %s> Processing batch candidate feature provider %s");
        sub_21AEE2A40();
        sub_21AEE2200();
        sub_21AEE2000();
      }

      else
      {
        sub_21AEE267C();
        sub_21AEA79F0(v376 + 42);

        v171 = sub_21AEE1FD8();
        v83(v171);
        v172 = sub_21AEC7734();
        v84(v172);
      }

      v173 = sub_21AEE1B50(v376 + 37);
      sub_21AEE1D3C(v173);
      v174 = swift_task_alloc();
      v376[211] = v174;
      *v174 = v376;
      sub_21AEE1B10(v174);
      sub_21AEE1974();
      sub_21AEE289C();

      __asm { BRAA            X4, X16 }
    }

LABEL_67:
    sub_21AEE201C();
    sub_21AF09C7C();
    __break(1u);
LABEL_68:
    sub_21AEE252C();
    sub_21AF09C7C();
    __break(1u);
LABEL_69:
    sub_21AEE201C();
    sub_21AF09C7C();
    __break(1u);
LABEL_70:
    sub_21AEE201C();
    sub_21AF09C7C();
    __break(1u);
LABEL_71:
    sub_21AEE201C();
    result = sub_21AF09C7C();
    __break(1u);
    return result;
  }

  v376[214] = v361;
  v55 = v376[205];

  sub_21AEE2D70();
  v376[119] = sub_21AF098EC();
  v376[117] = v55;
  v56 = sub_21AED1D94();
  MEMORY[0x21CEE4AC0](v56);
  v376[116] = v376[118];
  sub_21AF09D6C();
  while (1)
  {
    v57 = v44[198];
    v58 = v44[197];
    v59 = v44[155];
    v60 = v44[153];
    v61 = v44[152];
    sub_21AF09D7C();
    v62 = sub_21AEE221C();
    v58(v62);
    v63 = sub_21AEE2E58();
    if (sub_21AEA766C(v63, v64, v61) == 1)
    {
      break;
    }

    v65 = v44[155];
    v66 = v44[148];
    v67 = v44[147];
    v68 = *v65;
    v69 = *(v44[152] + 48);
    (*(v44[144] + 16))(v44[145], v65 + v69, v44[137]);
    v29 = *(v66 + 8);
    v29(v65 + v69, v67);
    if ((v361 & 0xC000000000000001) != 0)
    {
      v68 = MEMORY[0x21CEE4EF0](v68, v361);
    }

    else
    {
      if (v68 < 0)
      {
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      sub_21AEE2F6C();
      if (v24)
      {
        goto LABEL_66;
      }

      sub_21AEE30C0();
    }

    v44 = v376;
    v70 = v376[150];
    v71 = v376[147];
    sub_21AEA8470(v376[145], v68, v376[137], v70);
    v72 = sub_21AED1D94();
    v73(v72);
    sub_21AEE2174();
    sub_21AF0994C();
    v29(v70, v71);
  }

  v372 = *(v44 + 68);

  v104 = sub_21AEE2098();
  v44[215] = v105(v104);

  *(v44 + 49) = v372;
  sub_21AEE1A84();
  v44[216] = swift_getExtendedExistentialTypeMetadata();
  sub_21AEE204C();
  sub_21AF0989C();
  sub_21AEE2C4C();
  v44[115] = v60;
  sub_21AEE204C();
  if (v60 == sub_21AF0992C())
  {
    v106 = v44[132];
    v373 = *(v44 + 68);

    v107 = sub_21AEE21A8();
    v44[221] = v108(v107);

    *(v44 + 54) = v373;
    sub_21AEE1A9C();
    v44[222] = swift_getExtendedExistentialTypeMetadata();
    sub_21AEE204C();
    sub_21AF0989C();
    sub_21AEE2C4C();
    v44[111] = v60;
    sub_21AEE204C();
    if (v60 == sub_21AF0992C())
    {

      v109 = v44[119];
      v44[227] = v109;
      v110 = v44[133];
      v111 = v44[131];
      v44[113] = v109;
      v112 = *(v110 + 80);

      v374 = *(v44 + 68);
      sub_21AEE201C();
      v44[228] = v112();
      *(v44 + 50) = v374;
      sub_21AEE17F4();
      v44[229] = swift_getExtendedExistentialTypeMetadata();
      sub_21AEE204C();
      v113 = sub_21AF0989C();
      v44[114] = v113;
      sub_21AEE204C();
      if (v113 == sub_21AF0992C())
      {
        v114 = v44[227];
        v367 = v44[181];
        sub_21AEE1E74();
        sub_21AEE256C();

        v115 = sub_21AEE2138();
        (v29)(v115);
        v116 = sub_21AEE2118();
        v367(v116);
        v117 = sub_21AF096AC();
        sub_21AF09AAC();
        sub_21AEE2824();
        os_log_type_enabled(v117, v118);
        sub_21AEE22F4();
        v362 = v120;
        v368 = v119;
        v121 = v376[184];
        v122 = v376[183];
        v123 = v376[158];
        if (v124)
        {
          sub_21AEE2AD8();
          sub_21AEE2058();
          swift_slowAlloc();
          sub_21AEE2550();
          v125 = sub_21AEE1BFC(4.8151e-34);
          v126(v125);
          v127 = sub_21AEE2784();
          v121(v127);
          v128 = sub_21AEE2034();
          v122(v128);
          v129 = sub_21AEE2664();
          sub_21AECFFFC(v129, v114, v130);
          sub_21AEE2064();

          sub_21AEE1F1C();

          v132 = MEMORY[0x21CEE4B10](v131);

          v133 = sub_21AEE2460();
          sub_21AECFFFC(v133, v134, v135);
          sub_21AEE2064();

          *(v123 + 14) = v132;
          sub_21AEE262C(&dword_21AE94000, "<requestID: %s> Returning ranked suggestions: %s", v114);
          sub_21AEE2B18(v136, v137, MEMORY[0x277D84F70] + 8);
          sub_21AEE2200();
          sub_21AEE23C8();
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();

          v328 = sub_21AEE2098();
          v121(v328);
          v329 = sub_21AEE2034();
          v122(v329);
        }

        sub_21AEE24D4();
        sub_21AEE289C();

        __asm { BRAA            X2, X16 }
      }

      sub_21AEE2C80((v44 + 113), (v44 + 93));
      v44[230] = v109;
      sub_21AEE2098();
      sub_21AF0990C();
      sub_21AEE1BEC();
      sub_21AEE21D0();
      sub_21AF098BC();
      if (v111)
      {
        v364 = v44[181];
        v275 = v44[179];
        v276 = v44[161];
        v277 = sub_21AEE1954(40);
        sub_21AEE15E0(v277, v278 + 616);
        sub_21AEE201C();
        sub_21AF0996C();
        v279 = sub_21AEE1B30((v376 + 77), (v376 + 72));
        v280 = v376;
        v275(v279);
        v281 = sub_21AEE1C84();
        v364(v281);
        sub_21AEE15E0((v280 + 72), (v280 + 47));
        v282 = sub_21AF096AC();
        sub_21AF09AAC();
        sub_21AEE2924();
        os_log_type_enabled(v282, v283);
        v284 = v376[184];
        v285 = v376[183];
        sub_21AEE2E78();
        if (v287)
        {
          v359 = v376[147];
          v288 = v376[136];
          v280 = v376[135];
          v356 = v286 + 8;
          sub_21AEB39C8();
          v289 = sub_21AEE2234();
          sub_21AEE2830(v289);
          v290 = sub_21AEE1AC8(4.8152e-34);
          v291(v290);
          v292 = sub_21AEE20F8();
          v284(v292, v288);
          v293 = sub_21AEE2854();
          v285(v293);
          v294 = sub_21AEE2664();
          sub_21AECFFFC(v294, v276, v295);
          sub_21AEE2884();
          sub_21AEE1D2C();
          v296 = v280[50];
          sub_21AEAF9B0(v280 + 47, v296);
          sub_21AEE1A54();
          v298 = v297(v296);
          sub_21AEA79F0(v280 + 47);
          sub_21AEEC484();
          sub_21AEE2478();
          v299 = sub_21AEE24C8();
          sub_21AECFFFC(v299, v300, v301);
          sub_21AEE2884();
          sub_21AEE1DAC();

          sub_21AF0992C();
          sub_21AEE2658();

          *(v113 + 24) = v298;
          sub_21AEE1D50();
          sub_21AEE2B30(v302, v303, v304, v305);
          sub_21AEE2340(v306, v307, v308, v309, v310, v311, v312, v313, v339, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v356, v359, v364);
          sub_21AEE2494();
          sub_21AEE2250();
        }

        else
        {
          sub_21AEA79F0(v376 + 47);

          v332 = sub_21AEE24BC();
          (v284)(v332);
          v333 = sub_21AEE2034();
          v285(v333);
        }

        v334 = sub_21AEE1B50(v280 + 72);
        sub_21AEE1E1C(v334 + 32);
        v335 = swift_task_alloc();
        v280[231] = v335;
        *v335 = v280;
        sub_21AEE180C(v335);
        sub_21AEE1974();
        sub_21AEE289C();

        __asm { BRAA            X4, X16 }
      }

      goto LABEL_71;
    }

    sub_21AEE2098();
    sub_21AF0990C();
    sub_21AEE1BEC();
    sub_21AEE21D0();
    sub_21AF098BC();
    if ((v106 & 1) == 0)
    {
      goto LABEL_70;
    }

    sub_21AEE1EC4();
    v230 = v44[172];
    v231 = sub_21AEE1954(40);
    sub_21AEE15E0(v231, v232 + 16);
    sub_21AEE201C();
    sub_21AF0996C();
    v233 = sub_21AEE1B30(v376 + 1, (v376 + 52));
    v57(v233);
    sub_21AEE1C84();
    sub_21AEE2F14();
    v236(v234, v235);
    sub_21AEE15E0((v376 + 52), (v376 + 57));
    v237 = sub_21AF096AC();
    sub_21AF09AAC();
    sub_21AEE2228();
    os_log_type_enabled(v237, v238);
    v239 = v376[184];
    v240 = v376[183];
    sub_21AEE23B0();
    if (v241)
    {
      sub_21AEE1C4C();
      v243 = (v242 + 8);
      sub_21AEE2058();
      swift_slowAlloc();
      v244 = sub_21AEE1FE4();
      sub_21AEE2848(v244);
      v245 = sub_21AEE182C(4.8151e-34);
      v246(v245);
      v247 = sub_21AEE1CC0();
      v239(v247);
      v248 = sub_21AEE1DFC();
      v240(v248);
      v249 = sub_21AEE21DC();
      sub_21AECFFFC(v249, v250, v251);
      sub_21AEE2028();

      sub_21AEE1BDC();
      sub_21AEAF9B0(v376 + 57, v376[60]);
      v252 = sub_21AEE18E0();
      v254 = v253(v252);
      sub_21AEA79F0(v376 + 57);
      sub_21AEEC484();
      sub_21AEE207C();
      v255 = sub_21AEE2070();
      sub_21AECFFFC(v255, v256, v257);
      sub_21AEE2884();
      *(v230 + 14) = v254;
      sub_21AEE2760(&dword_21AE94000, v258, v259, "<requestID: %s> Processing ranking pipeline %s");
      sub_21AEE2A40();
      sub_21AEE2200();
      sub_21AEE2000();
    }

    else
    {
      sub_21AEE267C();
      sub_21AEA79F0(v376 + 57);

      v314 = sub_21AEE1FD8();
      v239(v314);
      v315 = sub_21AEC7734();
      v240(v315);
    }

    sub_21AEE2164();
    v316 = sub_21AEE1EE8();
    v317(v316);
    v376[223] = v376[119];
    v318 = sub_21AEE1AE4();
    sub_21AEFBF4C(v318, v319, v320, v322, v321);
    sub_21AEE1F00(v376 + 52);

    v323 = swift_task_alloc();
    v376[224] = v323;
    *v323 = v376;
    sub_21AEE18A0(v323);
    sub_21AEE1994(v376[140]);
    sub_21AEE289C();

    return AMLRankingPipeline.process(context:)(v324, v325, v326);
  }

  else
  {
    sub_21AEE2098();
    sub_21AF0990C();
    sub_21AEE1BEC();
    sub_21AEE21D0();
    sub_21AF098BC();
    if ((v59 & 1) == 0)
    {
      goto LABEL_69;
    }

    sub_21AEE1EC4();
    v177 = v44[173];
    v178 = sub_21AEE1954(40);
    sub_21AEE15E0(v178, v179 + 56);
    sub_21AEE201C();
    sub_21AF0996C();
    v180 = sub_21AEE1B30((v376 + 7), (v376 + 82));
    v57(v180);
    sub_21AEE1C84();
    sub_21AEE2F14();
    v183(v181, v182);
    sub_21AEE15E0((v376 + 82), (v376 + 62));
    v184 = sub_21AF096AC();
    sub_21AF09AAC();
    sub_21AEE2228();
    os_log_type_enabled(v184, v185);
    v186 = v376[184];
    v187 = v376[183];
    sub_21AEE23E4();
    if (v188)
    {
      sub_21AEE1C4C();
      v190 = (v189 + 8);
      sub_21AEE2058();
      swift_slowAlloc();
      v191 = sub_21AEE1FE4();
      sub_21AEE2848(v191);
      v192 = sub_21AEE182C(4.8151e-34);
      v193(v192);
      v194 = sub_21AEE1CC0();
      v186(v194);
      v195 = sub_21AEE1DFC();
      v187(v195);
      v196 = sub_21AEE21DC();
      sub_21AECFFFC(v196, v197, v198);
      sub_21AEE2028();

      sub_21AEE1BDC();
      sub_21AEAF9B0(v376 + 62, v376[65]);
      v199 = sub_21AEE18E0();
      v201 = v200(v199);
      sub_21AEA79F0(v376 + 62);
      sub_21AEEC484();
      sub_21AEE207C();
      v202 = sub_21AEE2070();
      sub_21AECFFFC(v202, v203, v204);
      sub_21AEE2884();
      *(v177 + 14) = v201;
      sub_21AEE2760(&dword_21AE94000, v205, v206, "<requestID: %s> Processing scoring pipeline %s");
      sub_21AEE2A40();
      sub_21AEE2200();
      sub_21AEE2000();
    }

    else
    {
      sub_21AEE267C();
      sub_21AEA79F0(v376 + 62);

      v260 = sub_21AEE1FD8();
      v186(v260);
      v261 = sub_21AEC7734();
      v187(v261);
    }

    sub_21AEE2164();
    v262 = sub_21AEE1EE8();
    v263(v262);
    v376[217] = v376[119];
    v264 = sub_21AEE1AE4();
    sub_21AEFC9C0(v264, v265, v266, v268, v267);
    sub_21AEE1F00(v376 + 82);

    v269 = swift_task_alloc();
    v376[218] = v269;
    *v269 = v376;
    sub_21AEE1A1C(v269);
    sub_21AEE1994(v376[143]);
    sub_21AEE289C();

    return AMLScoringPipeline.process(context:)(v270, v271, v272);
  }
}

uint64_t sub_21AED6158()
{
  sub_21AEE2818();
  v3 = v2;
  sub_21AEE269C();
  v5 = v4;
  sub_21AEE1D9C();
  *v6 = v5;
  v7 = *v1;
  sub_21AEE1F6C();
  *v8 = v7;
  *(v5 + 1624) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 1632) = v3;
  }

  sub_21AEE246C();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_21AED626C()
{
  v447 = v0;
  v3 = *(v0 + 1632);
  v4 = *(v0 + 1624);
  swift_getObjectType();
  v5 = MLFeatureProvider.merging(other:uniquingKeysWith:)(v3);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v6 = *(v0 + 1592);
  sub_21AEA79F0((v0 + 136));
  sub_21AEE24E0();
  v7 = sub_21AF0992C();
  v8 = *(v0 + 984);
  v445 = v0;
  if (v8 == v7)
  {
    v2 = v0 + 1032;
    v417 = (v0 + 1032);
LABEL_3:

    while (1)
    {
      v9 = swift_unknownObjectRetain();
      MEMORY[0x21CEE4AD0](v9);
      sub_21AEE2BA8();
      if (v11)
      {
        sub_21AEE2E44(v10);
        sub_21AF098CC();
      }

      sub_21AF0991C();
      swift_unknownObjectRelease();
      v12 = *(v0 + 1032);
      v13 = sub_21AEE2D58();
      v14(v13);
      v15 = *(v0 + 1256);
      v6 = *(v0 + 1248);
      v16 = *(v0 + 1232);
      v17 = *(v0 + 1224);
      v18 = *(v0 + 1216);
      *(v0 + 1568) = sub_21AF09D8C();
      sub_21AF09D7C();
      v19 = *(v16 + 32);
      *(v0 + 1576) = v19;
      *(v0 + 1584) = (v16 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v19(v15, v6, v17);
      sub_21AEA766C(v15, 1, v18);
      v20 = *(v0 + 1072);
      sub_21AEE2398();
      if (v21)
      {
        break;
      }

      sub_21AEE2BD8();
      v5 = *(v0 + 1208);
      v22 = *(v0 + 1184);
      v426 = v20;
      sub_21AEE2BC8();
      v0 = v22 + 32;
      v23 = sub_21AEE2148();
      v24(v23);
      sub_21AEE3018();
      sub_21AEE2ACC();
      swift_unknownObjectRetain();
      sub_21AEE1DCC();
      sub_21AEE2ACC();
      swift_unknownObjectRelease();
      swift_unknownObjectRetain();
      sub_21AEE2D94();
      sub_21AEE273C();
      sub_21AEE27D0();
      v25 = *(v17 + 56);
      v26 = sub_21AEE2D58();
      v1 = v25(v26);
      *(v0 + 968) = v1;
      *(v0 + 832) = v436;
      sub_21AEE1900();
      ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
      sub_21AEE2AA0(ExtendedExistentialTypeMetadata);
      sub_21AEE1A6C();
      swift_getWitnessTable();
      v28 = sub_21AF09A4C();

      if ((v28 & 1) == 0)
      {
        v29 = sub_21AEE2B68();
        *(v0 + 1600) = v25(v29);
        v8 = sub_21AF0989C();
        *(v0 + 984) = v8;
        sub_21AEE24E0();
        if (v8 == sub_21AF0992C())
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    sub_21AEE2978();
    v69 = sub_21AEE29C4();
    sub_21AEE2DCC(v69);
    WitnessTable = swift_getWitnessTable();
    sub_21AEE2B98(WitnessTable);
    sub_21AEE1CF8();
    v71 = (v0 + 696);
    sub_21AEE2B88();
    v79 = sub_21AED3450(v72, v73, v74, v413, v75, v76, v77, v78);
    sub_21AEE29E4(v79);

    v80 = sub_21AEC7BDC();
    v82 = v81(v80);
    sub_21AEE279C(v82);
    *(v83 + 816) = v436;
    *(v445 + 824) = v413;
    sub_21AEE1900();
    swift_getExtendedExistentialTypeMetadata();
    sub_21AEE2790();
    sub_21AF0997C();
    v84 = v445;
    swift_getWitnessTable();
    sub_21AF09A4C();

    sub_21AEE2B78();
    v380 = v0 + 696;
    v383 = v17;
    sub_21AEE26CC();
    AMLRecommendationPipeline.logPipelineAsync(pipelineStage:pipelineName:candidates:features:pipelineLogger:metadata:)(v85, v86, v87, v88, v89, v12, v426, v417);
    v90 = sub_21AEC7BDC();
    *(v445 + 1664) = v91(v90);
    *(v445 + 768) = v436;
    *(v445 + 776) = v413;
    sub_21AEE1D14();
    *(v445 + 1672) = swift_getExtendedExistentialTypeMetadata();
    v92 = sub_21AF0989C();
    *(v445 + 960) = v92;
    if (v92 != sub_21AF0992C())
    {
      *(v445 + 1680) = v12;
      sub_21AEB3980();
      sub_21AF0990C();
      sub_21AEE1BEC();
      sub_21AEE2CF8();
      sub_21AF098BC();
      v132 = *(v445 + 1664);
      if (v6)
      {
        v428 = *(v445 + 1448);
        v437 = *(v445 + 1456);
        sub_21AEE1C18();
        v133 = *(v445 + 1320);
        sub_21AEE1B84();
        v135 = sub_21AEE1A3C(v134);
        sub_21AEE15E0(v135, v136 + 256);
        sub_21AEE201C();
        sub_21AF0996C();
        sub_21AE9641C((v445 + 256), v445 + 296);
        v137 = sub_21AEE22D4();
        ((v0 + 696))(v137);
        v138 = sub_21AEE1EB0();
        v428(v138);
        sub_21AEE15E0(v0 + 992, v0 + 1032);
        v139 = sub_21AF096AC();
        sub_21AF09AAC();
        sub_21AEE2924();
        os_log_type_enabled(v139, v140);
        sub_21AEE2F4C();
        sub_21AEE2380();
        if (v141)
        {
          sub_21AEE21BC();
          v419 = v142;
          v429 = v143;
          sub_21AEE2058();
          swift_slowAlloc();
          v144 = sub_21AEE1FE4();
          sub_21AEE2E08(v144);
          v145 = sub_21AEE1D80(4.8151e-34);
          v146(v145);
          v71 = v147;
          v148 = sub_21AEE1FD8();
          v132(v148);
          v149 = sub_21AEE2BE8();
          v92(v149);
          v150 = sub_21AEE264C();
          sub_21AECFFFC(v150, v71, v151);
          sub_21AEE2664();

          sub_21AEE1BDC();
          v152 = v71[45];
          v153 = v71[46];
          sub_21AEAF9B0(v71 + 42, v152);
          sub_21AEE2508();
          v155 = v154(v152, v153);
          sub_21AEA79F0(v71 + 42);
          sub_21AEEC484();
          sub_21AEE28B8();
          v156 = sub_21AEE264C();
          sub_21AECFFFC(v156, v153, v157);
          sub_21AEE2884();
          *(v133 + 14) = v155;
          sub_21AEE2324();
          _os_log_impl(v158, v159, v160, v161, v162, 0x16u);
          sub_21AEE2A60(v163, v164, v165, v166, v167, v168, v169, v170, v380, v383, v385, v387, v389, v391, v393, v395, v397, v399, v401, v404, v406, v409, v411, v413, v419, v429, v437);
          sub_21AEE2200();
          sub_21AEE2000();
        }

        else
        {
          sub_21AEE26F0();
          sub_21AEA79F0((v0 + 1032));

          v211 = sub_21AEE1FD8();
          v132(v211);
          v212 = sub_21AED1DCC();
          v92(v212);
        }

        v213 = sub_21AEE1B50(v71 + 37);
        sub_21AEE1D3C(v213);
        v214 = swift_task_alloc();
        v71[211] = v214;
        *v214 = v71;
        sub_21AEE1B10(v214);
        sub_21AEE1974();
        sub_21AEE2290();

        __asm { BRAA            X4, X16 }
      }

      goto LABEL_68;
    }

    *(v445 + 1712) = v12;
    v93 = *(v445 + 1640);
    v94 = *(v445 + 1184);

    sub_21AEE2D70();
    *(v445 + 952) = sub_21AF098EC();
    *(v445 + 936) = v93;
    v95 = sub_21AEE221C();
    MEMORY[0x21CEE4AC0](v95);
    *(v445 + 928) = *(v445 + 944);
    sub_21AF09D6C();
    sub_21AEE2D04();
    v96 = v94 + 16;
    while (1)
    {
      v97 = *(v84 + 1576);
      v98 = *(v84 + 1248);
      v99 = *(v84 + 1240);
      v100 = *(v84 + 1224);
      v101 = *(v84 + 1216);
      sub_21AF09D7C();
      v97(v99, v98, v100);
      if (sub_21AEA766C(v99, 1, v101) == 1)
      {
        break;
      }

      v102 = *(v84 + 1240);
      v103 = *(v84 + 1184);
      v104 = *(v84 + 1176);
      v105 = *v102;
      v106 = *(*(v84 + 1216) + 48);
      (*(*(v84 + 1152) + 16))(*(v84 + 1160), v102 + v106, *(v84 + 1096));
      v107 = *(v103 + 8);
      v107(v102 + v106, v104);
      if (v441)
      {
        v111 = sub_21AEE2460();
        v105 = MEMORY[0x21CEE4EF0](v111);
      }

      else
      {
        if (v105 < 0)
        {
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        sub_21AEE2F6C();
        if (v11)
        {
          goto LABEL_66;
        }

        sub_21AEE30C0();
      }

      v84 = v445;
      sub_21AEA8470(*(v445 + 1160), v105, *(v445 + 1096), *(v445 + 1200));
      v108 = sub_21AEE221C();
      v109(v108);
      sub_21AF0994C();
      v110 = sub_21AEE2700();
      (v107)(v110);
    }

    v442 = *(v84 + 1088);

    v171 = sub_21AEB3980();
    *(v84 + 1720) = v172(v171);

    *(v84 + 784) = v442;
    sub_21AEE1A84();
    *(v84 + 1728) = swift_getExtendedExistentialTypeMetadata();
    sub_21AEC78CC();
    v173 = sub_21AF0989C();

    *(v84 + 920) = v173;
    sub_21AEC78CC();
    v174 = v84;
    if (v173 == sub_21AF0992C())
    {
      v443 = *(v84 + 1088);

      v175 = sub_21AEE2098();
      *(v84 + 1768) = v176(v175);

      *(v84 + 864) = v443;
      sub_21AEE1A9C();
      *(v84 + 1776) = swift_getExtendedExistentialTypeMetadata();
      sub_21AEB3980();
      sub_21AF0989C();
      sub_21AEE2C4C();
      *(v84 + 888) = v173;
      sub_21AEB3980();
      if (v173 == sub_21AF0992C())
      {

        v177 = *(v84 + 952);
        *(v174 + 1816) = v177;
        v178 = *(v174 + 1064);
        *(v174 + 904) = v177;
        v179 = *(v178 + 80);

        v444 = *(v174 + 1088);
        v180 = sub_21AEE2098();
        *(v174 + 1824) = v179(v180);
        *(v174 + 800) = v444;
        sub_21AEE17F4();
        *(v174 + 1832) = swift_getExtendedExistentialTypeMetadata();
        sub_21AEC78CC();
        v181 = sub_21AF0989C();
        *(v174 + 912) = v181;
        sub_21AEC78CC();
        v438 = v177;
        if (v181 == sub_21AF0992C())
        {
          v182 = *(v174 + 1816);
          sub_21AEE1E74();

          sub_21AEE2334();
          (v96)(v183, v184);
          sub_21AEE2128();
          sub_21AEE2F78();
          v187(v185, v186);
          v188 = sub_21AF096AC();
          sub_21AF09AAC();
          sub_21AEE2924();
          os_log_type_enabled(v188, v189);
          sub_21AEE22F4();
          v420 = v191;
          v430 = v190;
          v192 = *(v445 + 1472);
          v193 = *(v445 + 1464);
          v194 = *(v445 + 1272);
          v195 = *(v445 + 1264);
          if (v196)
          {
            v402 = *(v445 + 1088);
            v197 = *(v445 + 1080);
            v407 = *(v445 + 1176);
            v198 = *(v445 + 1056);
            sub_21AEE2058();
            swift_slowAlloc();
            v446[0] = sub_21AEE2550();
            *v195 = 136315394;
            sub_21AEE2EF0();
            v200 = v199(v194, v198, v197);
            v202 = v201;
            v192(v194, v402);
            v203 = sub_21AEE1DFC();
            v193(v203);
            sub_21AECFFFC(v200, v202, v446);
            sub_21AEE2028();

            sub_21AEE1F1C();

            v205 = MEMORY[0x21CEE4B10](v204, v407);

            v206 = sub_21AED1DCC();
            sub_21AECFFFC(v206, v207, v208);
            sub_21AEE2658();

            *(v195 + 14) = v205;
            sub_21AEE262C(&dword_21AE94000, "<requestID: %s> Returning ranked suggestions: %s", v182);
            sub_21AEE2B18(v209, v210, MEMORY[0x277D84F70] + 8);
            sub_21AEE2200();
            sub_21AEE23C8();
            swift_unknownObjectRelease();
          }

          else
          {
            v369 = *(v445 + 1088);
            swift_unknownObjectRelease();

            v192(v194, v369);
            v370 = sub_21AEE2460();
            v193(v370);
          }

          sub_21AEE19AC();

          sub_21AEE24D4();
          sub_21AEE2290();

          __asm { BRAA            X2, X16 }
        }

        sub_21AEE2C80(v174 + 904, v174 + 744);
        *(v174 + 1840) = v177;
        sub_21AEB3980();
        sub_21AF0990C();
        sub_21AEE1BEC();
        sub_21AEE2CF8();
        sub_21AF098BC();
        v308 = *(v174 + 1832);
        if ((v178 + 80))
        {
          v423 = *(v174 + 1448);
          v435 = *(v174 + 1456);
          sub_21AEE1C18();
          v310 = *(v309 + 1368);
          sub_21AEE1B84();
          v312 = sub_21AEE1A3C(v311);
          sub_21AEE15E0(v312, v313 + 616);
          sub_21AEE201C();
          sub_21AF0996C();
          sub_21AE9641C((v445 + 616), v445 + 576);
          v314 = sub_21AEE22D4();
          (v96)(v314);
          v315 = sub_21AEE1EB0();
          v423(v315);
          sub_21AEE15E0(v96 + 576, v96 + 376);
          v316 = sub_21AF096AC();
          sub_21AF09AAC();
          sub_21AEE2924();
          os_log_type_enabled(v316, v317);
          v318 = *(v96 + 1472);
          v319 = *(v96 + 1464);
          sub_21AEE2E78();
          if (v320)
          {
            v415 = *(v96 + 1176);
            LODWORD(v435) = v310;
            v321 = *(v96 + 1080);
            sub_21AEE2F08();
            v96 = *(v445 + 1056);
            sub_21AEB39C8();
            v424 = sub_21AEE2234();
            v446[0] = v424;
            *v181 = 136315650;
            (*(v321 + 56))(v308, v96, v321);
            v323 = v322;
            v324 = sub_21AEB3980();
            v318(v324);
            v325 = sub_21AEE1DFC();
            v319(v325);
            v326 = sub_21AEE2278();
            sub_21AECFFFC(v326, v323, v327);

            sub_21AEE1D2C();
            v328 = *(v96 + 400);
            sub_21AEAF9B0((v96 + 376), v328);
            sub_21AEE1A54();
            v330 = v329(v328);
            sub_21AEA79F0((v96 + 376));
            sub_21AEEC484();
            v332 = v331;

            v333 = sub_21AEE264C();
            sub_21AECFFFC(v333, v332, v334);
            sub_21AEE2064();

            sub_21AEE1DAC();
            sub_21AEE2DFC(v335, v336, v337, v338, v339, v340, v341, v342, v380, v383, v385, v387, v389, v391, v393, v395, v397, v399, v401, v404, v406, v409, v411, v415, v424, v435, v438);

            sub_21AF0992C();
            sub_21AEE2658();

            *(v181 + 24) = v330;
            sub_21AEE1DBC();
            sub_21AEE2B30(v343, v344, v345, v346);
            sub_21AEE2FF8(v347, v348, v349, v350, v351, v352, v353, v354, v381, v384, v386, v388, v390, v392, v394, v396, v398, v400, v403, v405, v408, v410, v412, v416, v425);
            sub_21AEE2494();
            sub_21AEE2250();
          }

          else
          {
            sub_21AEA79F0((v96 + 376));

            v373 = sub_21AEB3980();
            v318(v373);
            v374 = sub_21AEE24E0();
            v319(v374);
          }

          v375 = sub_21AEE1B50((v96 + 576));
          sub_21AEE1E1C(v375 + 32);
          v376 = swift_task_alloc();
          *(v96 + 1848) = v376;
          *v376 = v96;
          sub_21AEE180C(v376);
          sub_21AEE1974();
          sub_21AEE2290();

          __asm { BRAA            X4, X16 }
        }

        goto LABEL_71;
      }

      sub_21AEB3980();
      sub_21AF0990C();
      sub_21AEE1BEC();
      sub_21AEE2CF8();
      sub_21AF098BC();
      v255 = *(v84 + 1768);
      if ((v100 & 1) == 0)
      {
        goto LABEL_70;
      }

      v433 = *(v84 + 1448);
      v440 = *(v84 + 1456);
      sub_21AEE1C18();
      v256 = *(v445 + 1296);
      sub_21AEE1B84();
      v258 = sub_21AEE1A3C(v257);
      sub_21AEE15E0(v258, v259 + 16);
      sub_21AEE201C();
      sub_21AF0996C();
      sub_21AE9641C((v445 + 16), v445 + 416);
      v260 = sub_21AEE22D4();
      (v96)(v260);
      v261 = sub_21AEE1EB0();
      v433(v261);
      sub_21AEE15E0(v96 + 416, v96 + 456);
      v262 = sub_21AF096AC();
      sub_21AF09AAC();
      sub_21AEE2924();
      os_log_type_enabled(v262, v263);
      sub_21AEE2F4C();
      sub_21AEE23B0();
      if (v264)
      {
        sub_21AEE21BC();
        v422 = v265;
        v434 = v266;
        sub_21AEE2058();
        swift_slowAlloc();
        v267 = sub_21AEE1FE4();
        sub_21AEE2E08(v267);
        v268 = sub_21AEE1D80(4.8151e-34);
        v269(v268);
        v96 = v270;
        v271 = sub_21AEE1FD8();
        v255(v271);
        v272 = sub_21AEE2BE8();
        v173(v272);
        v273 = sub_21AEE264C();
        sub_21AECFFFC(v273, v96, v274);
        sub_21AEE2664();

        sub_21AEE1BDC();
        v275 = *(v96 + 480);
        sub_21AEAF9B0((v96 + 456), v275);
        sub_21AEE1918();
        v277 = v276(v275);
        sub_21AEA79F0((v96 + 456));
        sub_21AEEC484();
        sub_21AEE28B8();
        v278 = sub_21AEE264C();
        sub_21AECFFFC(v278, v84, v279);
        sub_21AEE2884();
        *(v256 + 14) = v277;
        sub_21AEE2324();
        _os_log_impl(v280, v281, v282, v283, v284, 0x16u);
        sub_21AEE2A60(v285, v286, v287, v288, v289, v290, v291, v292, v380, v383, v385, v387, v389, v391, v393, v395, v397, v399, v401, v404, v406, v409, v411, v413, v422, v434, v440);
        sub_21AEE2200();
        sub_21AEE2000();
      }

      else
      {
        sub_21AEE26F0();
        sub_21AEA79F0((v96 + 456));

        v355 = sub_21AEE1FD8();
        v255(v355);
        v356 = sub_21AED1DCC();
        v173(v356);
      }

      sub_21AEE2164();
      v357 = sub_21AEE2CE0();
      v358(v357);
      *(v96 + 1784) = *(v96 + 952);
      sub_21AEE24E0();
      sub_21AEE21D0();
      sub_21AEFBF4C(v359, v360, v361, v363, v362);
      sub_21AEE1F00((v96 + 416));

      v364 = swift_task_alloc();
      *(v96 + 1792) = v364;
      *v364 = v96;
      sub_21AEE18A0(v364);
      sub_21AEE1994(*(v96 + 1120));
      sub_21AEE2290();

      return AMLRankingPipeline.process(context:)(v365, v366, v367);
    }

    else
    {
      sub_21AEB3980();
      sub_21AF0990C();
      sub_21AEE1BEC();
      sub_21AEE2CF8();
      sub_21AF098BC();
      v217 = *(v84 + 1720);
      if ((v100 & 1) == 0)
      {
        goto LABEL_69;
      }

      v431 = *(v84 + 1448);
      v439 = *(v84 + 1456);
      sub_21AEE1C18();
      v218 = *(v445 + 1312);
      sub_21AEE1B84();
      v220 = sub_21AEE1A3C(v219);
      sub_21AEE15E0(v220, v221 + 56);
      sub_21AEE201C();
      sub_21AF0996C();
      sub_21AE9641C((v445 + 56), v445 + 656);
      v222 = sub_21AEE22D4();
      (v96)(v222);
      v223 = sub_21AEE1EB0();
      v431(v223);
      sub_21AEE15E0(v96 + 656, v96 + 496);
      v224 = sub_21AF096AC();
      sub_21AF09AAC();
      sub_21AEE2924();
      os_log_type_enabled(v224, v225);
      sub_21AEE2F4C();
      sub_21AEE23E4();
      if (v226)
      {
        sub_21AEE21BC();
        v421 = v227;
        v432 = v228;
        sub_21AEE2058();
        swift_slowAlloc();
        v229 = sub_21AEE1FE4();
        sub_21AEE2E08(v229);
        v230 = sub_21AEE1D80(4.8151e-34);
        v231(v230);
        v96 = v232;
        v233 = sub_21AEE1FD8();
        v217(v233);
        v234 = sub_21AEE2BE8();
        v173(v234);
        v235 = sub_21AEE264C();
        sub_21AECFFFC(v235, v96, v236);
        sub_21AEE2664();

        sub_21AEE1BDC();
        v237 = *(v96 + 520);
        sub_21AEAF9B0((v96 + 496), v237);
        sub_21AEE1918();
        v239 = v238(v237);
        sub_21AEA79F0((v96 + 496));
        sub_21AEEC484();
        sub_21AEE28B8();
        v240 = sub_21AEE264C();
        sub_21AECFFFC(v240, v84, v241);
        sub_21AEE2884();
        *(v218 + 14) = v239;
        sub_21AEE2324();
        _os_log_impl(v242, v243, v244, v245, v246, 0x16u);
        sub_21AEE2A60(v247, v248, v249, v250, v251, v252, v253, v254, v380, v383, v385, v387, v389, v391, v393, v395, v397, v399, v401, v404, v406, v409, v411, v413, v421, v432, v439);
        sub_21AEE2200();
        sub_21AEE2000();
      }

      else
      {
        sub_21AEE26F0();
        sub_21AEA79F0((v96 + 496));

        v293 = sub_21AEE1FD8();
        v217(v293);
        v294 = sub_21AED1DCC();
        v173(v294);
      }

      sub_21AEE2164();
      v295 = sub_21AEE2CE0();
      v296(v295);
      *(v96 + 1736) = *(v96 + 952);
      sub_21AEE24E0();
      sub_21AEE21D0();
      sub_21AEFC9C0(v297, v298, v299, v301, v300);
      sub_21AEE1F00((v96 + 656));

      v302 = swift_task_alloc();
      *(v96 + 1744) = v302;
      *v302 = v96;
      sub_21AEE1A1C(v302);
      sub_21AEE1994(*(v96 + 1144));
      sub_21AEE2290();

      return AMLScoringPipeline.process(context:)(v303, v304, v305);
    }
  }

  else
  {
LABEL_9:
    *(v0 + 1608) = v5;
    v30 = *(v0 + 1592);
    sub_21AEE2460();
    sub_21AF0990C();
    sub_21AEE1BEC();
    sub_21AF098BC();
    sub_21AEE2CB0();
    if (v6)
    {
      sub_21AEE2670();
      v427 = v31;
      sub_21AEE1C18();
      v32 = *(v445 + 1328);
      sub_21AEE1B84();
      v34 = v30 + v8 * v33;
      v35 = *(v445 + 1048);
      sub_21AEE15E0(v34 + 32, v445 + 176);
      sub_21AEE252C();
      sub_21AF0996C();
      sub_21AE9641C((v445 + 176), v445 + 136);
      v36 = sub_21AEE22D4();
      (v2)(v36);
      v37 = sub_21AEE1EB0();
      v427(v37);
      sub_21AEE15E0(v2 + 136, v2 + 96);
      v38 = sub_21AF096AC();
      sub_21AF09AAC();
      sub_21AEE2924();
      sub_21AEE3078(v39, v40);
      sub_21AEE2F4C();
      sub_21AEE22AC();
      if (v41)
      {
        sub_21AEE21BC();
        v414 = v42;
        v418 = v43;
        sub_21AEE2058();
        swift_slowAlloc();
        v44 = sub_21AEE1FE4();
        sub_21AEE2830(v44);
        v45 = sub_21AEE1D80(4.8151e-34);
        v46(v45);
        v2 = v47;
        v48 = sub_21AEE1FD8();
        v4(v48);
        v35(v38, v1);
        v49 = sub_21AEE264C();
        sub_21AECFFFC(v49, v2, v50);
        sub_21AEE2664();

        sub_21AEE1BDC();
        v51 = *(v2 + 120);
        v52 = *(v2 + 128);
        sub_21AEAF9B0((v2 + 96), v51);
        sub_21AEE2508();
        v54 = v53(v51, v52);
        sub_21AEA79F0((v2 + 96));
        sub_21AEEC484();
        sub_21AEE28B8();
        v55 = sub_21AEE264C();
        sub_21AECFFFC(v55, v52, v56);
        sub_21AEE2884();
        *(v32 + 14) = v54;
        sub_21AEE1D50();
        sub_21AEE28EC(v57, v58, v59, v60);
        sub_21AEE2340(v61, v62, v63, v64, v65, v66, v67, v68, v379, v382, v385, v387, v389, v391, v393, v395, v397, v399, v401, v404, v406, v409, v411, v414, v418, v427);
        sub_21AEE2494();
        sub_21AEE2000();
      }

      else
      {
        sub_21AEE26F0();
        sub_21AEA79F0((v2 + 96));

        v112 = sub_21AEE1FD8();
        v4(v112);
        v113 = sub_21AED1DCC();
        (v35)(v113);
      }

      (*(*(v2 + 1152) + 16))(*(v2 + 1168), *(v2 + 1208), *(v2 + 1096));
      sub_21AEC78CC();
      sub_21AF097DC();
      sub_21AEE2A04();
      v114 = sub_21AF096AC();
      v115 = sub_21AF09AAC();
      if (sub_21AEE2C98(v115))
      {
        sub_21AEE2058();
        swift_slowAlloc();
        v446[0] = sub_21AEE1FE4();
        *v32 = 136315394;
        v116 = *(v2 + 560);
        v117 = *(v2 + 568);
        sub_21AEAF9B0((v2 + 536), v116);
        sub_21AEE2508();
        v118(v116, v117);
        sub_21AEA79F0((v2 + 536));
        sub_21AEEC484();
        v120 = v119;

        v121 = sub_21AEE264C();
        v123 = sub_21AECFFFC(v121, v120, v122);

        sub_21AEE1BDC();
        v124 = sub_21AEE2174();
        sub_21AECFFFC(v124, v125, v126);
        sub_21AEE2180();

        *(v32 + 14) = v123;
        sub_21AEE270C(&dword_21AE94000, v127, v115, "Processing candidate feature provider %s for %s");
        swift_arrayDestroy();
        sub_21AEE23C8();
        sub_21AEE2000();
      }

      else
      {
        sub_21AEA79F0((v2 + 536));
      }

      v128 = sub_21AEE1B50((v2 + 136));
      sub_21AEE1D3C(v128);
      v129 = swift_task_alloc();
      *(v2 + 1616) = v129;
      *v129 = v2;
      v129[1] = sub_21AED6158;
      sub_21AEE1974();
      sub_21AEE2290();

      __asm { BRAA            X4, X16 }
    }

LABEL_67:
    sub_21AEE252C();
    sub_21AF09C7C();
    __break(1u);
LABEL_68:
    sub_21AEE201C();
    sub_21AF09C7C();
    __break(1u);
LABEL_69:
    sub_21AEE201C();
    sub_21AF09C7C();
    __break(1u);
LABEL_70:
    sub_21AEE201C();
    sub_21AF09C7C();
    __break(1u);
LABEL_71:
    sub_21AEE201C();
    result = sub_21AF09C7C();
    __break(1u);
  }

  return result;
}

uint64_t sub_21AED7D44()
{
  sub_21AEE2AC0();
  sub_21AEE269C();
  v3 = v2;
  sub_21AEE1D9C();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1696) = v5;
  *(v3 + 1704) = v0;

  if (v0)
  {
  }

  sub_21AEE246C();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_21AED7E68()
{
  v1 = *(v0 + 1680);
  v2 = sub_21AEA7BE4();
  v3 = *(v0 + 1680);

  for (i = 0; v2 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x21CEE4EF0](i, *(v0 + 1680));
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_60;
      }

      swift_unknownObjectRetain();
    }

    v5 = *(v0 + 1696);
    swift_getObjectType();
    v6 = MLFeatureProvider.merging(other:uniquingKeysWith:)([v5 featuresAtIndex_]);
    swift_unknownObjectRelease();
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
    {
      v3 = sub_21AED181C(v3);
    }

    swift_unknownObjectRelease();
    if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      sub_21AEE2174();
      sub_21AF09C7C();
      __break(1u);
LABEL_64:
      sub_21AEE2174();
      sub_21AF09C7C();
      __break(1u);
LABEL_65:
      sub_21AEE2174();
      sub_21AF09C7C();
      __break(1u);
LABEL_66:
      sub_21AEE2174();
      result = sub_21AF09C7C();
      __break(1u);
      return result;
    }

    *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * i + 0x20) = v6;
    swift_unknownObjectRelease();
  }

  v223 = *(v0 + 1696);
  v7 = *(v0 + 1656);
  v8 = *(v0 + 1480);
  v220 = *(v0 + 1488);
  v9 = *(v0 + 1056);

  v10 = *(v0 + 320);
  v11 = *(v0 + 328);
  sub_21AEAF9B0((v0 + 296), v10);
  v12 = sub_21AEE1C34();
  v13(v12);
  sub_21AEEC484();
  sub_21AEE207C();
  AMLRecommendationPipeline.logPipelineAsync(pipelineStage:pipelineName:candidates:features:pipelineLogger:metadata:)(0xD00000000000001DLL, 0x800000021AF0FCC0, v10, v11, v7, v3, v220, v8);

  swift_unknownObjectRelease();
  sub_21AEA79F0((v0 + 296));
  if (*(v0 + 960) != sub_21AF0992C())
  {
    *(v0 + 1680) = v3;
    v36 = *(v0 + 1672);
    sub_21AEE2098();
    sub_21AF0990C();
    sub_21AEE1BEC();
    sub_21AEE21D0();
    sub_21AF098BC();
    if (v9)
    {
      sub_21AEE1C60();
      v37 = *(v0 + 1392);
      v38 = sub_21AEE18C0();
      sub_21AEE15E0(v38, v0 + 256);
      sub_21AEE226C();
      sub_21AF0996C();
      v39 = sub_21AEE1B30((v0 + 256), v0 + 296);
      v36(v39);
      v40 = sub_21AEE1C84();
      v223(v40);
      sub_21AEE15E0(v0 + 296, v0 + 336);
      v41 = sub_21AF096AC();
      sub_21AF09AAC();
      sub_21AEE2228();
      v43 = os_log_type_enabled(v41, v42);
      v44 = *(v0 + 1472);
      v45 = *(v0 + 1464);
      if (v43)
      {
        sub_21AEE1BA4();
        v46 = sub_21AEE1FE4();
        sub_21AEE2848(v46);
        v47 = sub_21AEE182C(4.8151e-34);
        v48(v47);
        v49 = sub_21AEE1B70();
        v44(v49);
        v50 = sub_21AEE2284();
        (v220)(v50);
        v51 = sub_21AEE21DC();
        sub_21AECFFFC(v51, v52, v53);
        sub_21AEE2028();

        sub_21AEE1BDC();
        sub_21AEAF9B0((v0 + 336), *(v0 + 360));
        v54 = sub_21AEE1C34();
        v56 = v55(v54);
        sub_21AEA79F0((v0 + 336));
        sub_21AEEC484();
        sub_21AEE207C();
        v57 = sub_21AEE2070();
        sub_21AECFFFC(v57, v58, v59);
        sub_21AEE2884();
        *(v37 + 14) = v56;
        sub_21AEE1E3C(&dword_21AE94000, v60, v61, "<requestID: %s> Processing batch candidate feature provider %s");
        sub_21AEE2360();
        sub_21AEE20A4();
        sub_21AEE2000();
      }

      else
      {
        sub_21AEE20E8();
        sub_21AEA79F0((v0 + 336));

        v94 = sub_21AEE1FD8();
        v44(v94);
        v95 = sub_21AEC7734();
        v45(v95);
      }

      sub_21AEE1B50((v0 + 296));
      sub_21AEE21F4();
      v96 = swift_task_alloc();
      *(v0 + 1688) = v96;
      *v96 = v0;
      sub_21AEE1B10(v96);
      sub_21AEE1AFC(*(v0 + 1048));
      sub_21AEE24EC();

      __asm { BRAA            X4, X16 }
    }

    goto LABEL_63;
  }

  *(v0 + 1712) = v3;
  v14 = *(v0 + 1640);
  v15 = *(v0 + 1552);
  v16 = *(v0 + 1544);

  sub_21AEE2D70();
  *(v0 + 952) = sub_21AF098EC();
  *(v0 + 936) = v14;
  MEMORY[0x21CEE4AC0](v16, v15);
  *(v0 + 928) = *(v0 + 944);
  sub_21AF09D6C();
  v224 = (v3 + 32);
  while (1)
  {
    v17 = *(v0 + 1584);
    v18 = *(v0 + 1576);
    v19 = *(v0 + 1248);
    v20 = *(v0 + 1240);
    v21 = *(v0 + 1224);
    v22 = *(v0 + 1216);
    sub_21AF09D7C();
    v23 = sub_21AED1D94();
    v18(v23);
    if (sub_21AEA766C(v20, 1, v22) == 1)
    {
      break;
    }

    v24 = *(v0 + 1240);
    v25 = *(v0 + 1184);
    v26 = *(v0 + 1176);
    v27 = *v24;
    v28 = *(*(v0 + 1216) + 48);
    (*(*(v0 + 1152) + 16))(*(v0 + 1160), v24 + v28, *(v0 + 1096));
    v29 = *(v25 + 8);
    v29(v24 + v28, v26);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v35 = sub_21AEE2460();
      v27 = MEMORY[0x21CEE4EF0](v35);
    }

    else
    {
      if (v27 < 0)
      {
        goto LABEL_61;
      }

      sub_21AEE2F6C();
      if (v30)
      {
        goto LABEL_62;
      }

      sub_21AEE30C0();
    }

    v31 = *(v0 + 1200);
    v32 = *(v0 + 1176);
    sub_21AEA8470(*(v0 + 1160), v27, *(v0 + 1096), v31);
    v33 = sub_21AEE1C84();
    v34(v33);
    sub_21AF0994C();
    v29(v31, v32);
  }

  v226 = *(v0 + 1088);

  v62 = sub_21AEE2098();
  *(v0 + 1720) = v63(v62);

  *(v0 + 784) = v226;
  sub_21AEE1A84();
  *(v0 + 1728) = swift_getExtendedExistentialTypeMetadata();
  sub_21AEE204C();
  sub_21AF0989C();
  sub_21AEE2C4C();
  *(v0 + 920) = v20;
  sub_21AEE204C();
  if (v20 == sub_21AF0992C())
  {
    sub_21AEE2C08();

    v64 = sub_21AEE21A8();
    *(v0 + 1768) = v65(v64);

    *(v0 + 864) = v226;
    sub_21AEE1A9C();
    *(v0 + 1776) = swift_getExtendedExistentialTypeMetadata();
    sub_21AEE204C();
    sub_21AF0989C();
    sub_21AEE2C4C();
    *(v0 + 888) = v20;
    sub_21AEE204C();
    if (v20 == sub_21AF0992C())
    {

      v66 = *(v0 + 952);
      sub_21AEE1F7C();
      v227 = *(v0 + 1088);
      sub_21AEE201C();
      v69 = v21(v67, v68);
      *(v0 + 1824) = v69;
      *(v0 + 800) = v227;
      sub_21AEE17F4();
      *(v0 + 1832) = swift_getExtendedExistentialTypeMetadata();
      sub_21AEE204C();
      v70 = sub_21AF0989C();
      *(v0 + 912) = v70;
      sub_21AEE204C();
      if (v70 == sub_21AF0992C())
      {
        sub_21AEE2B58();
        v225 = *(v0 + 1448);
        sub_21AEE27C0();
        sub_21AEE1FB0();

        v71 = sub_21AEE2138();
        v18(v71);
        v72 = sub_21AEE2118();
        v225(v72);
        sub_21AF096AC();
        sub_21AF09AAC();
        sub_21AEE2824();
        sub_21AEE3078(v73, v74);
        sub_21AEE2B48();
        v221 = v75;
        v228 = *(v0 + 1480);
        sub_21AEE20CC();
        if (v76)
        {
          v218 = *(v0 + 1176);
          v217 = *(v0 + 1088);
          sub_21AEE2058();
          swift_slowAlloc();
          sub_21AEE2550();
          v77 = sub_21AEE1BFC(4.8151e-34);
          v78(v77);
          v79 = sub_21AEE2784();
          v21(v79, v217);
          v80 = sub_21AEE2034();
          v17(v80);
          v81 = sub_21AEE283C();
          sub_21AECFFFC(v81, v69, v82);
          sub_21AEE2064();

          sub_21AEE1F1C();

          v84 = MEMORY[0x21CEE4B10](v83, v218);
          sub_21AEE2784();

          v85 = sub_21AEE2460();
          sub_21AECFFFC(v85, v86, v87);
          sub_21AEE2064();

          *(v66 + 14) = v84;
          sub_21AEE1DBC();
          _os_log_impl(v88, v89, v90, v91, v66, 0x16u);
          sub_21AEE2930(v92, v93, MEMORY[0x277D84F70] + 8);
          sub_21AEE20A4();
          sub_21AEE23C8();
          swift_unknownObjectRelease();
        }

        else
        {
          sub_21AEE2DB0();

          v206 = sub_21AEE2098();
          (v21)(v206);
          v207 = sub_21AEE2034();
          v17(v207);
        }

        sub_21AEE19AC();

        sub_21AEE24D4();
        sub_21AEE24EC();

        __asm { BRAA            X2, X16 }
      }

      sub_21AEE2A80();
      *(v0 + 1840) = v66;
      v164 = *(v0 + 1832);
      sub_21AEE2098();
      sub_21AF0990C();
      sub_21AEE1BEC();
      sub_21AEE21D0();
      sub_21AF098BC();
      v165 = *(v0 + 1824);
      if (v19)
      {
        sub_21AEE2670();
        v219 = v166;
        sub_21AEE2614();
        v167 = *(v0 + 1288);
        v168 = sub_21AEE18C0();
        sub_21AEE15E0(v168, v0 + 616);
        sub_21AF0996C();
        v169 = sub_21AEE1B30((v0 + 616), v0 + 576);
        v164(v169);
        v170 = sub_21AEE1C84();
        v219(v170);
        sub_21AEE3090();
        sub_21AF096AC();
        v171 = sub_21AF09AAC();
        sub_21AEE28D0(v171);
        sub_21AEE1D64();
        if (v172)
        {
          sub_21AEE25B0();
          v173 = sub_21AEE2234();
          sub_21AEE2830(v173);
          v174 = sub_21AEE1AC8(4.8152e-34);
          v175(v174);
          v176 = sub_21AEE20F8();
          v17(v176);
          v177 = sub_21AEE2854();
          v165(v177);
          v178 = sub_21AEE283C();
          sub_21AECFFFC(v178, v167, v179);
          sub_21AEE2884();
          sub_21AEE1D2C();
          v180 = *(v0 + 400);
          v181 = *(v0 + 408);
          sub_21AEAF9B0((v0 + 376), v180);
          sub_21AEE1A54();
          v182(v180);
          sub_21AEE2E98();
          sub_21AEE2478();
          v183 = sub_21AEE24C8();
          sub_21AECFFFC(v183, v184, v185);
          sub_21AEE2884();
          sub_21AEE1DAC();

          sub_21AF0992C();
          sub_21AEE2064();

          *(v70 + 24) = v181;
          sub_21AEE1E64();
          sub_21AEE2B30(v186, v187, v188, v189);
          sub_21AEE2930(v190, v191, MEMORY[0x277D84F70] + 8);
          sub_21AEE20A4();
          sub_21AEE2250();
        }

        else
        {
          sub_21AEE240C();
          v210 = sub_21AEE24BC();
          v17(v210);
          v211 = sub_21AEE2034();
          v165(v211);
        }

        sub_21AEE1B50((v0 + 576));
        sub_21AEE21F4();
        v212 = swift_task_alloc();
        v213 = sub_21AEE2E14(v212);
        *v213 = v214;
        sub_21AEE180C(v213);
        sub_21AEE1AFC(*(v0 + 1048));
        sub_21AEE24EC();

        __asm { BRAA            X4, X16 }
      }

      goto LABEL_66;
    }

    v123 = *(v0 + 1776);
    sub_21AEE2098();
    sub_21AF0990C();
    sub_21AEE1BEC();
    sub_21AEE21D0();
    sub_21AF098BC();
    if ((v19 & 1) == 0)
    {
      goto LABEL_65;
    }

    v222 = *(v0 + 1448);
    sub_21AEE2614();
    v124 = *(v0 + 1376);
    v125 = sub_21AEE18C0();
    sub_21AEE15E0(v125, v0 + 16);
    sub_21AF0996C();
    v126 = sub_21AEE1B30((v0 + 16), v0 + 416);
    v123(v126);
    sub_21AEE1C84();
    sub_21AEE2F78();
    v129(v127, v128);
    sub_21AEE15E0(v0 + 416, v0 + 456);
    v130 = sub_21AF096AC();
    sub_21AF09AAC();
    sub_21AEE2228();
    os_log_type_enabled(v130, v131);
    sub_21AEE1F2C();
    if (v132)
    {
      sub_21AEE1BA4();
      v133 = sub_21AEE1FE4();
      sub_21AEE2848(v133);
      v134 = sub_21AEE182C(4.8151e-34);
      v135(v134);
      v136 = sub_21AEE1B70();
      v123(v136);
      v137 = sub_21AEE2284();
      v222(v137);
      v138 = sub_21AEE21DC();
      sub_21AECFFFC(v138, v139, v140);
      sub_21AEE2028();

      sub_21AEE1BDC();
      sub_21AEAF9B0((v0 + 456), *(v0 + 480));
      v141 = sub_21AEE18E0();
      v143 = v142(v141);
      sub_21AEA79F0((v0 + 456));
      sub_21AEEC484();
      sub_21AEE207C();
      v144 = sub_21AEE2070();
      sub_21AECFFFC(v144, v145, v146);
      sub_21AEE2884();
      *(v124 + 14) = v143;
      sub_21AEE1E3C(&dword_21AE94000, v147, v148, "<requestID: %s> Processing ranking pipeline %s");
      sub_21AEE2360();
      sub_21AEE20A4();
      sub_21AEE2000();
    }

    else
    {
      sub_21AEE20E8();
      sub_21AEA79F0((v0 + 456));

      v192 = sub_21AEE1FD8();
      v123(v192);
      v193 = sub_21AEC7734();
      v18(v193);
    }

    sub_21AEE22C4();
    v194 = sub_21AEE1CD0();
    v195(v194);
    *(v0 + 1784) = *(v0 + 952);
    v196 = sub_21AEE1AE4();
    sub_21AEFBF4C(v196, v197, v198, v200, v199);
    sub_21AEE1F00((v0 + 416));

    v201 = swift_task_alloc();
    *(v0 + 1792) = v201;
    *v201 = v0;
    sub_21AEE18A0(v201);
    sub_21AEE1994(*(v0 + 1120));
    sub_21AEE24EC();

    return AMLRankingPipeline.process(context:)(v202, v203, v204);
  }

  else
  {
    v99 = *(v0 + 1728);
    sub_21AEE2098();
    sub_21AF0990C();
    sub_21AEE1BEC();
    sub_21AEE21D0();
    sub_21AF098BC();
    if ((v19 & 1) == 0)
    {
      goto LABEL_64;
    }

    sub_21AEE1C60();
    v100 = *(v0 + 1384);
    v101 = sub_21AEE18C0();
    sub_21AEE15E0(v101, v0 + 56);
    sub_21AEE226C();
    sub_21AF0996C();
    v102 = sub_21AEE1B30((v0 + 56), v0 + 656);
    v99(v102);
    v103 = sub_21AEE1C84();
    v224(v103);
    sub_21AEE15E0(v0 + 656, v0 + 496);
    v104 = sub_21AF096AC();
    sub_21AF09AAC();
    sub_21AEE2228();
    os_log_type_enabled(v104, v105);
    sub_21AEE2904();
    if (v106)
    {
      sub_21AEE1BA4();
      v107 = sub_21AEE1FE4();
      sub_21AEE2848(v107);
      v108 = sub_21AEE182C(4.8151e-34);
      v109(v108);
      v110 = sub_21AEE1B70();
      v99(v110);
      v111 = sub_21AEE2284();
      (v220)(v111);
      v112 = sub_21AEE21DC();
      sub_21AECFFFC(v112, v113, v114);
      sub_21AEE2028();

      sub_21AEE1BDC();
      sub_21AEAF9B0((v0 + 496), *(v0 + 520));
      v115 = sub_21AEE18E0();
      v117 = v116(v115);
      sub_21AEA79F0((v0 + 496));
      sub_21AEEC484();
      sub_21AEE207C();
      v118 = sub_21AEE2070();
      sub_21AECFFFC(v118, v119, v120);
      sub_21AEE2884();
      *(v100 + 14) = v117;
      sub_21AEE1E3C(&dword_21AE94000, v121, v122, "<requestID: %s> Processing scoring pipeline %s");
      sub_21AEE2360();
      sub_21AEE20A4();
      sub_21AEE2000();
    }

    else
    {
      sub_21AEE20E8();
      sub_21AEA79F0((v0 + 496));

      v149 = sub_21AEE1FD8();
      v99(v149);
      v150 = sub_21AEC7734();
      v18(v150);
    }

    sub_21AEE22C4();
    v151 = sub_21AEE1CD0();
    v152(v151);
    *(v0 + 1736) = *(v0 + 952);
    v153 = sub_21AEE1AE4();
    sub_21AEFC9C0(v153, v154, v155, v157, v156);
    sub_21AEE1F00((v0 + 656));

    v158 = swift_task_alloc();
    *(v0 + 1744) = v158;
    *v158 = v0;
    sub_21AEE1A1C(v158);
    sub_21AEE1994(*(v0 + 1144));
    sub_21AEE24EC();

    return AMLScoringPipeline.process(context:)(v159, v160, v161);
  }
}

uint64_t sub_21AED90D0()
{
  sub_21AEE2818();
  sub_21AEE22E4();
  v4 = v3;
  sub_21AEE1D9C();
  *v5 = v4;
  v6 = *v2;
  sub_21AEE1F6C();
  *v7 = v6;
  *(v4 + 1752) = v0;

  if (!v0)
  {

    *(v4 + 1760) = v1;
  }

  sub_21AEE23FC();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_21AED91DC()
{
  v1 = *(v0 + 1760);
  *&v176 = *(v0 + 1728);
  v165 = *(v0 + 1544);
  v166 = *(v0 + 1648);
  v170 = *(v0 + 1488);
  v171 = *(v0 + 1656);
  v169 = *(v0 + 1480);
  v174 = *(v0 + 1144);
  v2 = *(v0 + 1136);
  v172 = *(v0 + 1128);
  v3 = *(v0 + 1064);
  v4 = *(v0 + 1056);
  *(v0 + 952) = v1;
  v5 = *(v0 + 680);
  v6 = *(v0 + 688);
  sub_21AEAF9B0((v0 + 656), v5);
  v7 = *(*(*(v6 + 8) + 8) + 8);
  v8 = *(v7 + 16);

  v8(v5, v7);
  v9 = sub_21AEEC484();
  v11 = v10;

  *(v0 + 896) = v1;
  v12 = swift_task_alloc();
  *(v12 + 16) = v4;
  *(v12 + 24) = v3;
  v13 = sub_21AEA7574(&unk_27CD3DE90, &unk_21AF0C440);
  v15 = sub_21AED3450(sub_21AEE17BC, v12, v165, v13, MEMORY[0x277D84A98], v166, MEMORY[0x277D84AC0], v14);

  AMLRecommendationPipeline.logPipelineAsync(pipelineStage:pipelineName:candidates:features:pipelineLogger:metadata:)(0xD000000000000010, 0x800000021AF0FD10, v9, v11, v171, v15, v170, v169);

  (*(v2 + 8))(v174, v172);
  sub_21AEA79F0((v0 + 656));
  v16 = sub_21AF0992C();
  v17 = *(v0 + 920);
  v18 = *(v0 + 1720);
  if (v17 == v16)
  {
    sub_21AEE2C08();

    v19 = sub_21AEE21A8();
    *(v0 + 1768) = v20(v19);

    *(v0 + 864) = v176;
    sub_21AEE1A9C();
    *(v0 + 1776) = swift_getExtendedExistentialTypeMetadata();
    sub_21AEE204C();
    sub_21AF0989C();
    sub_21AEE2C4C();
    *(v0 + 888) = v17;
    sub_21AEE204C();
    if (v17 == sub_21AF0992C())
    {

      v21 = *(v0 + 952);
      sub_21AEE1F7C();
      v177 = *(v0 + 1088);
      sub_21AEE201C();
      v24 = v4(v22, v23);
      *(v0 + 1824) = v24;
      *(v0 + 800) = v177;
      sub_21AEE17F4();
      *(v0 + 1832) = swift_getExtendedExistentialTypeMetadata();
      sub_21AEE204C();
      v25 = sub_21AF0989C();
      *(v0 + 912) = v25;
      sub_21AEE204C();
      if (v25 == sub_21AF0992C())
      {
        sub_21AEE2B58();
        v175 = *(v0 + 1448);
        sub_21AEE27C0();
        sub_21AEE1FB0();

        v26 = sub_21AEE2138();
        (v12)(v26);
        v27 = sub_21AEE2118();
        v175(v27);
        sub_21AF096AC();
        sub_21AF09AAC();
        sub_21AEE2824();
        sub_21AEE3078(v28, v29);
        sub_21AEE2B48();
        v173 = v30;
        v178 = *(v0 + 1480);
        sub_21AEE20CC();
        if (v31)
        {
          v168 = *(v0 + 1176);
          v167 = *(v0 + 1088);
          sub_21AEE2058();
          swift_slowAlloc();
          sub_21AEE2550();
          v32 = sub_21AEE1BFC(4.8151e-34);
          v33(v32);
          v34 = sub_21AEE2784();
          v4(v34, v167);
          v35 = sub_21AEE2034();
          v9(v35);
          v36 = sub_21AEE283C();
          sub_21AECFFFC(v36, v24, v37);
          sub_21AEE2064();

          sub_21AEE1F1C();

          v39 = MEMORY[0x21CEE4B10](v38, v168);
          sub_21AEE2784();

          v40 = sub_21AEE2460();
          sub_21AECFFFC(v40, v41, v42);
          sub_21AEE2064();

          *(v21 + 14) = v39;
          sub_21AEE1DBC();
          _os_log_impl(v43, v44, v45, v46, v21, 0x16u);
          sub_21AEE2930(v47, v48, MEMORY[0x277D84F70] + 8);
          sub_21AEE20A4();
          sub_21AEE23C8();
          swift_unknownObjectRelease();
        }

        else
        {
          sub_21AEE2DB0();

          v154 = sub_21AEE2098();
          (v4)(v154);
          v155 = sub_21AEE2034();
          v9(v155);
        }

        sub_21AEE19AC();

        sub_21AEE24D4();
        sub_21AEE24EC();

        __asm { BRAA            X2, X16 }
      }

      sub_21AEE2A80();
      *(v0 + 1840) = v21;
      v111 = *(v0 + 1832);
      sub_21AEE2098();
      sub_21AF0990C();
      sub_21AEE1BEC();
      sub_21AEE21D0();
      sub_21AF098BC();
      v112 = *(v0 + 1824);
      if (v1)
      {
        sub_21AEE2614();
        v113 = *(v0 + 1288);
        v114 = sub_21AEE18C0();
        sub_21AEE15E0(v114, v0 + 616);
        sub_21AEE226C();
        sub_21AF0996C();
        v115 = sub_21AEE1B30((v0 + 616), v0 + 576);
        v111(v115);
        sub_21AEE1C84();
        sub_21AEE2F78();
        v118(v116, v117);
        sub_21AEE3090();
        sub_21AF096AC();
        v119 = sub_21AF09AAC();
        sub_21AEE28D0(v119);
        sub_21AEE1D64();
        if (v120)
        {
          sub_21AEE25B0();
          v121 = sub_21AEE2234();
          sub_21AEE2830(v121);
          v122 = sub_21AEE1AC8(4.8152e-34);
          v123(v122);
          v124 = sub_21AEE20F8();
          (v9)(v124, v169);
          v125 = sub_21AEE2854();
          v112(v125);
          v126 = sub_21AEE283C();
          sub_21AECFFFC(v126, v113, v127);
          sub_21AEE2884();
          sub_21AEE1D2C();
          v128 = *(v0 + 400);
          v129 = *(v0 + 408);
          sub_21AEAF9B0((v0 + 376), v128);
          sub_21AEE1A54();
          v130(v128);
          sub_21AEE2E98();
          sub_21AEE2478();
          v131 = sub_21AEE24C8();
          sub_21AECFFFC(v131, v132, v133);
          sub_21AEE2884();
          sub_21AEE1DAC();

          sub_21AF0992C();
          sub_21AEE2064();

          *(v25 + 24) = v129;
          sub_21AEE1E64();
          sub_21AEE2B30(v134, v135, v136, v137);
          sub_21AEE2930(v138, v139, MEMORY[0x277D84F70] + 8);
          sub_21AEE20A4();
          sub_21AEE2250();
        }

        else
        {
          sub_21AEE240C();
          v158 = sub_21AEE24BC();
          v9(v158);
          v159 = sub_21AEE2034();
          v112(v159);
        }

        sub_21AEE1B50((v0 + 576));
        sub_21AEE21F4();
        v160 = swift_task_alloc();
        v161 = sub_21AEE2E14(v160);
        *v161 = v162;
        sub_21AEE180C(v161);
        sub_21AEE1AFC(*(v0 + 1048));
        sub_21AEE24EC();

        __asm { BRAA            X4, X16 }
      }

      goto LABEL_33;
    }

    v72 = *(v0 + 1776);
    sub_21AEE2098();
    sub_21AF0990C();
    sub_21AEE1BEC();
    sub_21AEE21D0();
    sub_21AF098BC();
    if (v1)
    {
      sub_21AEE1C60();
      v73 = *(v0 + 1376);
      v74 = sub_21AEE18C0();
      sub_21AEE15E0(v74, v0 + 16);
      sub_21AEE226C();
      sub_21AF0996C();
      v75 = sub_21AEE1B30((v0 + 16), v0 + 416);
      v72(v75);
      v76 = sub_21AEE1C84();
      v174(v76);
      sub_21AEE15E0(v0 + 416, v0 + 456);
      v77 = sub_21AF096AC();
      sub_21AF09AAC();
      sub_21AEE2228();
      os_log_type_enabled(v77, v78);
      sub_21AEE1F2C();
      if (v79)
      {
        sub_21AEE1BA4();
        v80 = sub_21AEE1FE4();
        sub_21AEE2848(v80);
        v81 = sub_21AEE182C(4.8151e-34);
        v82(v81);
        v83 = sub_21AEE1B70();
        v72(v83);
        v84 = sub_21AEE2284();
        v172(v84);
        v85 = sub_21AEE21DC();
        sub_21AECFFFC(v85, v86, v87);
        sub_21AEE2028();

        sub_21AEE1BDC();
        sub_21AEAF9B0((v0 + 456), *(v0 + 480));
        v88 = sub_21AEE18E0();
        v90 = v89(v88);
        sub_21AEA79F0((v0 + 456));
        sub_21AEEC484();
        sub_21AEE207C();
        v91 = sub_21AEE2070();
        sub_21AECFFFC(v91, v92, v93);
        sub_21AEE2884();
        *(v73 + 14) = v90;
        sub_21AEE1E3C(&dword_21AE94000, v94, v95, "<requestID: %s> Processing ranking pipeline %s");
        sub_21AEE2360();
        sub_21AEE20A4();
        sub_21AEE2000();
      }

      else
      {
        sub_21AEE20E8();
        sub_21AEA79F0((v0 + 456));

        v140 = sub_21AEE1FD8();
        v72(v140);
        v141 = sub_21AEC7734();
        (v12)(v141);
      }

      sub_21AEE22C4();
      v142 = sub_21AEE1CD0();
      v143(v142);
      *(v0 + 1784) = *(v0 + 952);
      v144 = sub_21AEE1AE4();
      sub_21AEFBF4C(v144, v145, v146, v148, v147);
      sub_21AEE1F00((v0 + 416));

      v149 = swift_task_alloc();
      *(v0 + 1792) = v149;
      *v149 = v0;
      sub_21AEE18A0(v149);
      sub_21AEE1994(*(v0 + 1120));
      sub_21AEE24EC();

      return AMLRankingPipeline.process(context:)(v150, v151, v152);
    }

LABEL_32:
    sub_21AEE2174();
    sub_21AF09C7C();
    __break(1u);
LABEL_33:
    sub_21AEE2174();
    result = sub_21AF09C7C();
    __break(1u);
    return result;
  }

  sub_21AEE204C();
  sub_21AF0990C();
  sub_21AEE1BEC();
  sub_21AEE21E8();
  sub_21AF098BC();
  if ((v1 & 1) == 0)
  {
    sub_21AEE2174();
    sub_21AF09C7C();
    __break(1u);
    goto LABEL_32;
  }

  sub_21AEE1C60();
  v49 = *(v0 + 1384);
  v50 = sub_21AEE18C0();
  sub_21AEE15E0(v50, v0 + 56);
  sub_21AEE226C();
  sub_21AF0996C();
  v51 = sub_21AEE1B30((v0 + 56), v0 + 656);
  v18(v51);
  v52 = sub_21AEE1C84();
  v174(v52);
  sub_21AEE15E0(v0 + 656, v0 + 496);
  v53 = sub_21AF096AC();
  sub_21AF09AAC();
  sub_21AEE2228();
  os_log_type_enabled(v53, v54);
  sub_21AEE2904();
  if (v55)
  {
    sub_21AEE1BA4();
    v56 = sub_21AEE1FE4();
    sub_21AEE2848(v56);
    v57 = sub_21AEE182C(4.8151e-34);
    v58(v57);
    v59 = sub_21AEE1B70();
    v18(v59);
    v60 = sub_21AEE2284();
    v172(v60);
    v61 = sub_21AEE21DC();
    sub_21AECFFFC(v61, v62, v63);
    sub_21AEE2028();

    sub_21AEE1BDC();
    sub_21AEAF9B0((v0 + 496), *(v0 + 520));
    v64 = sub_21AEE18E0();
    v66 = v65(v64);
    sub_21AEA79F0((v0 + 496));
    sub_21AEEC484();
    sub_21AEE207C();
    v67 = sub_21AEE2070();
    sub_21AECFFFC(v67, v68, v69);
    sub_21AEE2884();
    *(v49 + 14) = v66;
    sub_21AEE1E3C(&dword_21AE94000, v70, v71, "<requestID: %s> Processing scoring pipeline %s");
    sub_21AEE2360();
    sub_21AEE20A4();
    sub_21AEE2000();
  }

  else
  {
    sub_21AEE20E8();
    sub_21AEA79F0((v0 + 496));

    v96 = sub_21AEE1FD8();
    v18(v96);
    v97 = sub_21AEC7734();
    (v12)(v97);
  }

  sub_21AEE22C4();
  v98 = sub_21AEE1CD0();
  v99(v98);
  *(v0 + 1736) = *(v0 + 952);
  v100 = sub_21AEE1AE4();
  sub_21AEFC9C0(v100, v101, v102, v104, v103);
  sub_21AEE1F00((v0 + 656));

  v105 = swift_task_alloc();
  *(v0 + 1744) = v105;
  *v105 = v0;
  sub_21AEE1A1C(v105);
  sub_21AEE1994(*(v0 + 1144));
  sub_21AEE24EC();

  return AMLScoringPipeline.process(context:)(v106, v107, v108);
}

uint64_t sub_21AED9F20()
{
  sub_21AEE2818();
  sub_21AEE22E4();
  v4 = v3;
  sub_21AEE1D9C();
  *v5 = v4;
  v6 = *v2;
  sub_21AEE1F6C();
  *v7 = v6;
  *(v4 + 1800) = v0;

  if (!v0)
  {

    *(v4 + 1808) = v1;
  }

  sub_21AEE23FC();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_21AEDA02C()
{
  v119 = v0;
  v5 = *(v0 + 1808);
  (*(*(v0 + 1112) + 8))(*(v0 + 1120), *(v0 + 1104));
  *(v0 + 952) = v5;
  sub_21AEA79F0((v0 + 416));
  sub_21AEC76A0();
  v6 = sub_21AF0992C();
  v7 = *(v0 + 1768);
  if (*(v0 + 888) == v6)
  {

    v8 = *(v0 + 1808);
    sub_21AEE1F7C();
    v116 = *(v0 + 1088);
    sub_21AEE201C();
    v9 = v2();
    *(v0 + 1824) = v9;
    *(v0 + 800) = v116;
    sub_21AEE17F4();
    *(v0 + 1832) = swift_getExtendedExistentialTypeMetadata();
    sub_21AEE204C();
    v10 = sub_21AF0989C();
    *(v0 + 912) = v10;
    sub_21AEE204C();
    if (v10 == sub_21AF0992C())
    {
      sub_21AEE2B58();
      v114 = *(v0 + 1448);
      sub_21AEE27C0();
      sub_21AEE1FB0();

      v11 = sub_21AEE2138();
      v4(v11);
      v12 = sub_21AEE2118();
      v114(v12);
      v13 = sub_21AF096AC();
      sub_21AF09AAC();
      sub_21AEE2824();
      os_log_type_enabled(v13, v14);
      sub_21AEE2B48();
      v112 = v15;
      v117 = *(v0 + 1480);
      sub_21AEE20CC();
      if (v16)
      {
        v110 = *(v0 + 1176);
        v109 = *(v0 + 1088);
        sub_21AEE2058();
        swift_slowAlloc();
        v118 = sub_21AEE2550();
        v17 = sub_21AEE1BFC(4.8151e-34);
        v19 = v18(v17);
        v20 = sub_21AEE2784();
        (v2)(v20, v109);
        v21 = sub_21AEE2034();
        v3(v21);
        sub_21AECFFFC(v19, v9, &v118);
        sub_21AEE2064();

        sub_21AEE1F1C();

        v23 = MEMORY[0x21CEE4B10](v22, v110);
        sub_21AEE2784();

        v24 = sub_21AEE2460();
        sub_21AECFFFC(v24, v25, v26);
        sub_21AEE2064();

        *(v8 + 14) = v23;
        sub_21AEE1E64();
        _os_log_impl(v27, v28, v29, v30, v8, 0x16u);
        sub_21AEE2930(v31, v32, MEMORY[0x277D84F70] + 8);
        sub_21AEE20A4();
        sub_21AEE23C8();
        swift_unknownObjectRelease();
      }

      else
      {
        sub_21AEE2DB0();

        v98 = sub_21AEE2098();
        (v2)(v98);
        v99 = sub_21AEE2034();
        v3(v99);
      }

      sub_21AEE1848();

      sub_21AEE24D4();
      sub_21AEE29A8();

      __asm { BRAA            X2, X16 }
    }

    sub_21AEE2A80();
    *(v0 + 1840) = v8;
    v58 = *(v0 + 1832);
    sub_21AEE2098();
    sub_21AF0990C();
    sub_21AEE1BEC();
    sub_21AEE21D0();
    sub_21AF098BC();
    v59 = *(v0 + 1824);
    if (v1)
    {
      v113 = *(v0 + 1448);
      sub_21AEE2614();
      v60 = *(v0 + 1368);
      v61 = sub_21AEE18C0();
      sub_21AEE15E0(v61, v0 + 616);
      sub_21AEE226C();
      sub_21AF0996C();
      v62 = sub_21AEE1B30((v0 + 616), v0 + 576);
      v58(v62);
      v63 = sub_21AEE1C84();
      v113(v63);
      sub_21AEE3090();
      v64 = sub_21AF096AC();
      v65 = sub_21AF09AAC();
      sub_21AEE28D0(v65);
      sub_21AEE1D64();
      if (v66)
      {
        v111 = *(v0 + 1088);
        sub_21AEE25F4();
        v118 = sub_21AEE2234();
        v67 = sub_21AEE1AC8(4.8152e-34);
        v68(v67);
        v69 = sub_21AEE20F8();
        (v3)(v69, v111);
        v70 = sub_21AEE2854();
        v59(v70);
        v71 = sub_21AEE2B0C();
        sub_21AECFFFC(v71, v72, v73);
        sub_21AEE2884();
        sub_21AEE1D2C();
        v74 = *(v0 + 400);
        v75 = *(v0 + 408);
        sub_21AEAF9B0((v0 + 376), v74);
        sub_21AEE1A54();
        v76(v74);
        sub_21AEE2E98();
        sub_21AEE2478();
        v77 = sub_21AEE24C8();
        sub_21AECFFFC(v77, v78, v79);
        sub_21AEE2884();
        sub_21AEE1DAC();

        sub_21AF0992C();
        sub_21AEE2064();

        *(v10 + 24) = v75;
        sub_21AEE2444(&dword_21AE94000, v80, v60, "<requestID: %s> Using post ranking selector %s with %ld candidates");
        sub_21AEE2930(v81, v82, MEMORY[0x277D84F70] + 8);
        sub_21AEE20A4();
        sub_21AEE2250();
      }

      else
      {
        sub_21AEE240C();
        v102 = sub_21AEE24BC();
        v3(v102);
        v103 = sub_21AEE2034();
        v59(v103);
      }

      sub_21AEE1B50((v0 + 576));
      sub_21AEE21F4();
      v104 = swift_task_alloc();
      v105 = sub_21AEE2E14(v104);
      *v105 = v106;
      sub_21AEE180C(v105);
      sub_21AEE1AFC(*(v0 + 1048));
      sub_21AEE29A8();

      __asm { BRAA            X4, X16 }
    }

    goto LABEL_24;
  }

  sub_21AEE204C();
  sub_21AF0990C();
  sub_21AEE1BEC();
  sub_21AEE21E8();
  sub_21AF098BC();
  v33 = *(v0 + 1768);
  if ((v1 & 1) == 0)
  {
    sub_21AEE2174();
    sub_21AF09C7C();
    __break(1u);
LABEL_24:
    sub_21AEE2174();
    result = sub_21AF09C7C();
    __break(1u);
    return result;
  }

  sub_21AEE2670();
  v115 = v34;
  sub_21AEE2614();
  v35 = *(v0 + 1376);
  v36 = sub_21AEE18C0();
  sub_21AEE15E0(v36, v0 + 16);
  sub_21AEE226C();
  sub_21AF0996C();
  v37 = sub_21AEE1B30((v0 + 16), v0 + 416);
  v7(v37);
  v38 = sub_21AEE1C84();
  v115(v38);
  sub_21AEE15E0(v0 + 416, v0 + 456);
  v39 = sub_21AF096AC();
  sub_21AF09AAC();
  sub_21AEE2228();
  os_log_type_enabled(v39, v40);
  sub_21AEE1F2C();
  if (v41)
  {
    sub_21AEE2F08();
    sub_21AEE2058();
    swift_slowAlloc();
    v118 = sub_21AEE1FE4();
    v42 = sub_21AEE182C(4.8151e-34);
    v43(v42);
    v44 = sub_21AEE1B70();
    v7(v44);
    v45 = sub_21AEE2284();
    v4(v45);
    v46 = sub_21AEE21DC();
    sub_21AECFFFC(v46, v47, v48);
    sub_21AEE2028();

    sub_21AEE1BDC();
    sub_21AEAF9B0((v0 + 456), *(v0 + 480));
    v49 = sub_21AEE18E0();
    v51 = v50(v49);
    sub_21AEA79F0((v0 + 456));
    sub_21AEEC484();
    sub_21AEE207C();
    v52 = sub_21AEE2070();
    sub_21AECFFFC(v52, v53, v54);
    sub_21AEE2884();
    *(v35 + 14) = v51;
    sub_21AEE218C(&dword_21AE94000, v55, v33, "<requestID: %s> Processing ranking pipeline %s");
    sub_21AEE2930(v56, v57, MEMORY[0x277D84F70] + 8);
    sub_21AEE20A4();
    sub_21AEE2000();
  }

  else
  {
    sub_21AEE20E8();
    sub_21AEA79F0((v0 + 456));

    v83 = sub_21AEE1FD8();
    v7(v83);
    v84 = sub_21AEC7734();
    v4(v84);
  }

  sub_21AEE22C4();
  v85 = sub_21AEE1CD0();
  v86(v85);
  *(v0 + 1784) = *(v0 + 952);
  v87 = sub_21AEE1AE4();
  sub_21AEFBF4C(v87, v88, v89, v91, v90);
  sub_21AEE1F00((v0 + 416));

  v92 = swift_task_alloc();
  *(v0 + 1792) = v92;
  *v92 = v0;
  sub_21AEE18A0(v92);
  sub_21AEE1994(*(v0 + 1120));
  sub_21AEE29A8();

  return AMLRankingPipeline.process(context:)(v93, v94, v95);
}

uint64_t sub_21AEDA9F4()
{
  sub_21AEE2AC0();
  sub_21AEE269C();
  v3 = v2;
  sub_21AEE1D9C();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1856) = v5;
  *(v3 + 1864) = v0;

  if (v0)
  {
  }

  sub_21AEE246C();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_21AEDAB0C()
{
  v2 = *(v0 + 1448);
  v3 = *(v0 + 1432);
  sub_21AEE2F58();
  *(v0 + 904) = v4;

  sub_21AEE2334();
  v3();
  v5 = sub_21AEE2128();
  v2(v5);
  sub_21AEE15E0(v0 + 576, v0 + 216);
  v6 = sub_21AF096AC();
  LOBYTE(v3) = sub_21AF09AAC();
  if (sub_21AEE2C98(v3))
  {
    v103 = *(v0 + 1472);
    v104 = *(v0 + 1464);
    v7 = *(v0 + 1280);
    v8 = *(v0 + 1088);
    sub_21AEB39C8();
    sub_21AEE1FE4();
    *v1 = 136315650;
    v9 = sub_21AEE21DC();
    v11 = v10(v9);
    v12 = sub_21AEE2AF4();
    v103(v12);
    v13 = sub_21AEE2034();
    v104(v13);
    v14 = sub_21AEE2F2C();
    sub_21AECFFFC(v14, v15, v16);
    sub_21AEE2884();
    sub_21AEE1BDC();
    v18 = *(v0 + 240);
    v17 = *(v0 + 248);
    sub_21AEAF9B0((v0 + 216), v18);
    sub_21AEE1A54();
    v19(v18);
    sub_21AEE2EC4();
    sub_21AEE207C();
    v20 = sub_21AEE2070();
    sub_21AECFFFC(v20, v21, v22);
    sub_21AEE2884();
    *(v1 + 14) = v17;
    *(v1 + 22) = 2048;

    sub_21AF0992C();
    sub_21AEE2180();

    *(v1 + 24) = v17;
    sub_21AEE2324();
    _os_log_impl(v23, v24, v25, v26, v27, 0x20u);
    sub_21AEE2B18(v28, v29, MEMORY[0x277D84F70] + 8);
    sub_21AEE2200();
    sub_21AEE2000();
  }

  else
  {
    v30 = *(v0 + 1472);
    v11 = *(v0 + 1464);
    v7 = (*(v0 + 1344) + 8);
    v8 = (*(v0 + 1264) + 8);
    sub_21AEA79F0((v0 + 216));

    v31 = sub_21AEB3AB4();
    v30(v31);
    v32 = sub_21AEE2034();
    v11(v32);
  }

  sub_21AEA79F0((v0 + 576));
  sub_21AEC76A0();
  v33 = sub_21AF0992C();
  v34 = *(v0 + 912);
  if (v34 == v33)
  {
    v35 = *(v0 + 1816);
    sub_21AEE2670();
    v107 = v36;
    sub_21AEE27C0();
    sub_21AEE1FB0();

    v37 = sub_21AEE2138();
    v8(v37);
    v38 = sub_21AEE2118();
    v107(v38);
    v39 = sub_21AF096AC();
    sub_21AF09AAC();
    sub_21AEE2824();
    v41 = os_log_type_enabled(v39, v40);
    v105 = *(v0 + 1488);
    v108 = *(v0 + 1480);
    v42 = *(v0 + 1472);
    v43 = *(v0 + 1464);
    v44 = *(v0 + 1272);
    v45 = *(v0 + 1264);
    if (v41)
    {
      v101 = *(v0 + 1176);
      v100 = *(v0 + 1088);
      sub_21AEE2058();
      swift_slowAlloc();
      sub_21AEE2550();
      *v45 = 136315394;
      sub_21AEE2EF0();
      v46 = sub_21AEC7BDC();
      v47(v46);
      v42(v44, v100);
      v48 = sub_21AEE2034();
      v43(v48);
      v49 = sub_21AEE204C();
      sub_21AECFFFC(v49, v50, v51);
      sub_21AEE2180();

      sub_21AEE1F1C();

      v53 = MEMORY[0x21CEE4B10](v52, v101);
      sub_21AEE2784();

      v54 = sub_21AEE2460();
      sub_21AECFFFC(v54, v55, v56);
      sub_21AEE2064();

      *(v45 + 14) = v53;
      sub_21AEE262C(&dword_21AE94000, "<requestID: %s> Returning ranked suggestions: %s", v35);
      sub_21AEE2B18(v57, v58, MEMORY[0x277D84F70] + 8);
      sub_21AEE2200();
      sub_21AEE23C8();
      swift_unknownObjectRelease();
    }

    else
    {
      v88 = *(v0 + 1088);
      swift_unknownObjectRelease();

      v42(v44, v88);
      v89 = sub_21AEC7734();
      v43(v89);
    }

    sub_21AEE24D4();
    sub_21AEE29A8();

    __asm { BRAA            X2, X16 }
  }

  *(v0 + 1840) = *(v0 + 1856);
  v59 = *(v0 + 1824);
  sub_21AEC76A0();
  v60 = sub_21AF0990C();
  sub_21AEE3058();
  v61 = *(v0 + 1824);
  if (v60)
  {
    sub_21AEE2670();
    v106 = v62;
    sub_21AEE2614();
    v63 = *(v0 + 1368);
    v64 = *(v0 + 1288);
    sub_21AEE1CE8();
    v65 = *(v0 + 1056);
    v67 = v61 + v34 * v66;
    v68 = *(v0 + 1048);
    sub_21AEE15E0((v67 + 32), v0 + 616);
    sub_21AEE226C();
    sub_21AF0996C();
    sub_21AE9641C((v0 + 616), v0 + 576);
    v59(v63, v7, v65);
    v106(v64, v68, v11);
    sub_21AEE3090();
    v69 = sub_21AF096AC();
    v70 = sub_21AF09AAC();
    sub_21AEE28D0(v70);
    sub_21AEE1D64();
    if (v71)
    {
      v102 = *(v0 + 1088);
      sub_21AEE2F08();
      sub_21AEE25F4();
      sub_21AEE2234();
      v72 = sub_21AEE1AC8(4.8152e-34);
      v73(v72);
      v74 = sub_21AEE20F8();
      v7(v74, v102);
      v75 = sub_21AEE2854();
      v61(v75);
      v76 = sub_21AEE2B0C();
      sub_21AECFFFC(v76, v77, v78);
      sub_21AEE2884();
      sub_21AEE1D2C();
      v79 = *(v0 + 400);
      v80 = *(v0 + 408);
      sub_21AEAF9B0((v0 + 376), v79);
      sub_21AEE1A54();
      v81(v79);
      sub_21AEE2E98();
      sub_21AEE2478();
      v82 = sub_21AEE24C8();
      sub_21AECFFFC(v82, v83, v84);
      sub_21AEE2884();
      sub_21AEE1DAC();

      sub_21AF0992C();
      sub_21AEE2064();

      *(v63 + 24) = v80;
      sub_21AEE2444(&dword_21AE94000, v85, v68, "<requestID: %s> Using post ranking selector %s with %ld candidates");
      sub_21AEE2930(v86, v87, MEMORY[0x277D84F70] + 8);
      sub_21AEE20A4();
      sub_21AEE2250();
    }

    else
    {
      sub_21AEE240C();
      v92 = sub_21AEE24BC();
      (v7)(v92);
      v93 = sub_21AEE2034();
      v61(v93);
    }

    sub_21AEE1B50((v0 + 576));
    sub_21AEE21F4();
    v94 = swift_task_alloc();
    v95 = sub_21AEE2E14(v94);
    *v95 = v96;
    sub_21AEE180C(v95);
    sub_21AEE1AFC(*(v0 + 1048));
    sub_21AEE29A8();

    __asm { BRAA            X4, X16 }
  }

  sub_21AEE221C();
  result = sub_21AF09C7C();
  __break(1u);
  return result;
}

uint64_t sub_21AEDB464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_21AEE2C30();
  sub_21AEE2EFC();
  v31 = *(v30 + 1488);

  v41 = *(v30 + 1512);
  sub_21AEE1848();
  sub_21AEE1E84();

  sub_21AEE26E0();
  sub_21AEE2C64();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v41, a28, a29, a30);
}

uint64_t sub_21AEDB5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_21AEE2C30();
  sub_21AEE2EFC();
  v31 = v30[186];
  v32 = v30[185];
  swift_unknownObjectRelease();

  v42 = v30[191];
  sub_21AEE1848();
  sub_21AEE1E84();

  sub_21AEE26E0();
  sub_21AEE2C64();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v42, a28, a29, a30);
}

uint64_t sub_21AEDB75C()
{
  v3 = *(v0 + 1608);
  sub_21AEA79F0((v0 + 136));
  sub_21AEC7734();
  v421 = v0;
  if (*(v0 + 984) == sub_21AF0992C())
  {
    v402 = (v0 + 1032);
LABEL_3:

    while (1)
    {
      v4 = swift_unknownObjectRetain();
      MEMORY[0x21CEE4AD0](v4);
      sub_21AEE2BA8();
      if (v5)
      {
        sub_21AF098CC();
      }

      sub_21AEE2CC8();
      sub_21AF0991C();
      swift_unknownObjectRelease();
      v6 = *(v0 + 1032);
      v7 = sub_21AEE2070();
      v8(v7);
      sub_21AEE2F38();
      v9 = *(v0 + 1232);
      v10 = *(v0 + 1216);
      *(v0 + 1568) = sub_21AF09D8C();
      sub_21AF09D7C();
      *(v0 + 1576) = *(v9 + 32);
      *(v0 + 1584) = (v9 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      sub_21AEE2334();
      v11();
      v12 = sub_21AEE2E58();
      sub_21AEA766C(v12, v13, v10);
      v14 = *(v0 + 1072);
      sub_21AEE2398();
      if (v15)
      {
        break;
      }

      sub_21AEE2BD8();
      v3 = *(v0 + 1208);
      v16 = *(v0 + 1184);
      v410 = v14;
      sub_21AEE2BC8();
      v0 = v16 + 32;
      v17 = sub_21AEE2148();
      v18(v17);
      sub_21AEE3018();
      sub_21AEE2ACC();
      swift_unknownObjectRetain();
      sub_21AEE1DCC();
      sub_21AEE2ACC();
      swift_unknownObjectRelease();
      swift_unknownObjectRetain();
      sub_21AEE2D94();
      sub_21AEE273C();
      sub_21AEE27D0();
      v19 = *(v2 + 56);
      v20 = sub_21AEE2D58();
      v2 = v19(v20);
      *(v0 + 968) = v2;
      *(v0 + 832) = v415;
      sub_21AEE1900();
      ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
      sub_21AEE2AA0(ExtendedExistentialTypeMetadata);
      sub_21AEE1A6C();
      swift_getWitnessTable();
      v22 = sub_21AF09A4C();

      if ((v22 & 1) == 0)
      {
        v23 = sub_21AEE2B68();
        v2 = v19(v23);
        *(v0 + 1600) = v2;
        v24 = sub_21AF0989C();
        *(v0 + 984) = v24;
        sub_21AED1D94();
        if (v24 == sub_21AF0992C())
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    sub_21AEE2978();
    v55 = sub_21AEE29C4();
    sub_21AEE2DCC(v55);
    v56 = MEMORY[0x277D83988];
    WitnessTable = swift_getWitnessTable();
    sub_21AEE2B98(WitnessTable);
    sub_21AEE1CF8();
    v58 = (v0 + 696);
    sub_21AEE2B88();
    v66 = sub_21AED3450(v59, v60, v61, v398, v62, v63, v64, v65);
    sub_21AEE29E4(v66);

    v67 = sub_21AEE2E38();
    v69 = v68(v67);
    sub_21AEE279C(v69);
    *(v70 + 816) = v415;
    *(v421 + 824) = v398;
    sub_21AEE1900();
    swift_getExtendedExistentialTypeMetadata();
    sub_21AEE2790();
    sub_21AF0997C();
    sub_21AEE2664();
    swift_getWitnessTable();
    sub_21AF09A4C();

    sub_21AEE2B78();
    v366 = v58;
    v368 = v2;
    sub_21AEE26CC();
    AMLRecommendationPipeline.logPipelineAsync(pipelineStage:pipelineName:candidates:features:pipelineLogger:metadata:)(v71, v72, v73, v74, v75, v6, v410, v402);
    v76 = sub_21AEE2E38();
    *(v56 + 1664) = v77(v76);
    *(v56 + 768) = v415;
    *(v56 + 776) = v398;
    sub_21AEE1D14();
    v78 = swift_getExtendedExistentialTypeMetadata();
    v79 = v78;
    *(v56 + 1672) = v78;
    sub_21AEB3AB4();
    v80 = sub_21AF0989C();
    *(v56 + 960) = v80;
    sub_21AEB3AB4();
    if (v80 != sub_21AF0992C())
    {
      *(v56 + 1680) = v6;
      sub_21AEE2098();
      sub_21AF0990C();
      sub_21AEE1BEC();
      sub_21AEE21D0();
      sub_21AF098BC();
      v125 = *(v56 + 1672);
      if (v79)
      {
        sub_21AEE1F4C();
        v126 = *(v56 + 1392);
        v127 = sub_21AEE1954(40);
        sub_21AEE15E0(v127, v128 + 256);
        sub_21AEE201C();
        sub_21AF0996C();
        v129 = sub_21AEE1B30((v421 + 256), v421 + 296);
        v58(v129);
        v130 = sub_21AEE1C84();
        (v410)(v130);
        sub_21AEE15E0(v421 + 296, v421 + 336);
        v131 = sub_21AF096AC();
        sub_21AF09AAC();
        sub_21AEE2228();
        os_log_type_enabled(v131, v132);
        sub_21AEE2F20();
        sub_21AEE2380();
        if (v133)
        {
          sub_21AEE1C4C();
          v403 = v134;
          sub_21AEE2058();
          swift_slowAlloc();
          v135 = sub_21AEE1FE4();
          sub_21AEE2830(v135);
          v136 = sub_21AEE182C(4.8151e-34);
          v137(v136);
          v138 = sub_21AEE1B70();
          v125(v138);
          v139 = sub_21AEE1DFC();
          v58(v139);
          v140 = sub_21AEE21DC();
          sub_21AECFFFC(v140, v141, v142);
          sub_21AEE2028();

          sub_21AEE1BDC();
          sub_21AEAF9B0((v421 + 336), *(v421 + 360));
          v143 = sub_21AEE1C34();
          v145 = v144(v143);
          sub_21AEA79F0((v421 + 336));
          sub_21AEEC484();
          sub_21AEE207C();
          v146 = sub_21AEE2070();
          sub_21AECFFFC(v146, v147, v148);
          sub_21AEE2884();
          *(v126 + 14) = v145;
          sub_21AEE1D50();
          sub_21AEE28EC(v149, v150, v151, v152);
          sub_21AEE2340(v153, v154, v155, v156, v157, v158, v159, v160, v58, v368, v370, v372, v374, v376, v378, v380, v382, v384, v386, v388, v390, v392, v395, v398, v403, v410);
          sub_21AEE2494();
          sub_21AEE2000();
        }

        else
        {
          sub_21AEE2620();
          sub_21AEA79F0((v421 + 336));

          v203 = sub_21AEE1FD8();
          v125(v203);
          v204 = sub_21AEC7734();
          v58(v204);
        }

        v205 = sub_21AEE1B50((v421 + 296));
        sub_21AEE1D3C(v205);
        v206 = swift_task_alloc();
        *(v421 + 1688) = v206;
        *v206 = v421;
        sub_21AEE1B10(v206);
        sub_21AEE1974();
        sub_21AEE2290();

        __asm { BRAA            X4, X16 }
      }

      goto LABEL_68;
    }

    *(v56 + 1712) = v6;
    v81 = *(v56 + 1640);

    sub_21AEE2D70();
    *(v56 + 952) = sub_21AF098EC();
    *(v56 + 936) = v81;
    v82 = sub_21AED1D94();
    MEMORY[0x21CEE4AC0](v82);
    *(v56 + 928) = *(v56 + 944);
    sub_21AF09D6C();
    sub_21AEE2D04();
    while (1)
    {
      v83 = *(v56 + 1584);
      v84 = *(v56 + 1576);
      v85 = *(v56 + 1240);
      v86 = *(v56 + 1224);
      v87 = *(v56 + 1216);
      sub_21AF09D7C();
      v88 = sub_21AEE221C();
      v84(v88);
      v89 = sub_21AEE2E58();
      if (sub_21AEA766C(v89, v90, v87) == 1)
      {
        break;
      }

      v91 = *(v56 + 1240);
      v92 = *(v56 + 1184);
      v93 = *(v56 + 1176);
      v94 = *v91;
      v95 = *(*(v56 + 1216) + 48);
      (*(*(v56 + 1152) + 16))(*(v56 + 1160), v91 + v95, *(v56 + 1096));
      v96 = *(v92 + 8);
      v96(v91 + v95, v93);
      if (v417)
      {
        v101 = sub_21AEE2460();
        v94 = MEMORY[0x21CEE4EF0](v101);
      }

      else
      {
        if (v94 < 0)
        {
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        sub_21AEE2F6C();
        if (v5)
        {
          goto LABEL_66;
        }

        sub_21AEE30C0();
      }

      v56 = v421;
      v97 = *(v421 + 1200);
      v98 = *(v421 + 1176);
      sub_21AEA8470(*(v421 + 1160), v94, *(v421 + 1096), v97);
      v99 = sub_21AED1D94();
      v100(v99);
      sub_21AEE2174();
      sub_21AF0994C();
      v96(v97, v98);
    }

    v418 = *(v56 + 1088);

    v161 = sub_21AEE2098();
    *(v56 + 1720) = v162(v161);

    *(v56 + 784) = v418;
    sub_21AEE1A84();
    *(v56 + 1728) = swift_getExtendedExistentialTypeMetadata();
    sub_21AEE204C();
    sub_21AF0989C();
    sub_21AEE2C4C();
    *(v56 + 920) = v86;
    sub_21AEE204C();
    if (v86 == sub_21AF0992C())
    {
      v163 = *(v56 + 1056);
      v419 = *(v56 + 1088);

      v164 = sub_21AEE21A8();
      *(v56 + 1768) = v165(v164);

      *(v56 + 864) = v419;
      sub_21AEE1A9C();
      *(v56 + 1776) = swift_getExtendedExistentialTypeMetadata();
      sub_21AEE204C();
      sub_21AF0989C();
      sub_21AEE2C4C();
      *(v56 + 888) = v86;
      sub_21AEE204C();
      if (v86 == sub_21AF0992C())
      {

        v166 = *(v56 + 952);
        *(v56 + 1816) = v166;
        v167 = *(v56 + 1064);
        v168 = *(v56 + 1048);
        *(v56 + 904) = v166;
        v169 = *(v167 + 80);

        v420 = *(v56 + 1088);
        sub_21AEE201C();
        *(v56 + 1824) = v169();
        *(v56 + 800) = v420;
        sub_21AEE17F4();
        *(v56 + 1832) = swift_getExtendedExistentialTypeMetadata();
        sub_21AEE204C();
        v170 = sub_21AF0989C();
        *(v56 + 912) = v170;
        sub_21AEE204C();
        v416 = v166;
        if (v170 == sub_21AF0992C())
        {
          v171 = *(v56 + 1816);
          sub_21AEE1E74();
          sub_21AEE256C();

          v172 = sub_21AEE2138();
          (v56)(v172);
          sub_21AEE2118();
          sub_21AEE2F78();
          v173();
          v174 = sub_21AF096AC();
          sub_21AF09AAC();
          sub_21AEE2824();
          os_log_type_enabled(v174, v175);
          sub_21AEE22F4();
          v404 = v177;
          v412 = v176;
          v178 = *(v421 + 1472);
          v179 = *(v421 + 1464);
          v180 = *(v421 + 1344);
          v181 = *(v421 + 1264);
          if (v182)
          {
            sub_21AEE2AD8();
            sub_21AEE2058();
            v399 = v183;
            swift_slowAlloc();
            v422 = sub_21AEE2550();
            v184 = sub_21AEE1BFC(4.8151e-34);
            v185(v184);
            LODWORD(v392) = v171;
            v186 = sub_21AEE2784();
            v178(v186);
            v187 = sub_21AEE2034();
            v179(v187);
            v188 = sub_21AEE2664();
            sub_21AECFFFC(v188, v171, v189);
            sub_21AEE2064();

            sub_21AEE1F1C();
            sub_21AEE2DFC(v190, v191, v192, v193, v194, v195, v196, v197, v366, v368, v370, v372, v374, v376, v378, v380, v382, v384, v181 + 8, v388, v180 + 8, v392, v395, v399, v404, v412, v416);

            v199 = MEMORY[0x21CEE4B10](v198, v396);

            v200 = sub_21AEE2460();
            sub_21AECFFFC(v200, v201, v202);
            sub_21AEE2064();

            *(v180 + 14) = v199;
            sub_21AEE262C(&dword_21AE94000, "<requestID: %s> Returning ranked suggestions: %s", v393);
            swift_arrayDestroy();
            MEMORY[0x21CEE5A20](v422, -1, -1);
            sub_21AEE23C8();
            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();

            v356 = sub_21AEE2098();
            v178(v356);
            v357 = sub_21AEE2034();
            v179(v357);
          }

          sub_21AEE19AC();

          sub_21AEE24D4();
          sub_21AEE2290();

          __asm { BRAA            X2, X16 }
        }

        sub_21AEE2C80(v56 + 904, v56 + 744);
        *(v56 + 1840) = v166;
        sub_21AEE2098();
        sub_21AF0990C();
        sub_21AEE1BEC();
        sub_21AEE21D0();
        sub_21AF098BC();
        if (v168)
        {
          v408 = *(v56 + 1448);
          v414 = *(v56 + 1456);
          v296 = *(v56 + 1432);
          v297 = *(v56 + 1368);
          v298 = *(v56 + 1288);
          v299 = sub_21AEE1954(40);
          sub_21AEE15E0(v299, v300 + 616);
          sub_21AEE201C();
          sub_21AF0996C();
          v301 = sub_21AEE1B30((v421 + 616), v421 + 576);
          v302 = v421;
          v296(v301);
          v303 = sub_21AEE1C84();
          v408(v303);
          sub_21AEE15E0((v302 + 72), (v302 + 47));
          v304 = sub_21AF096AC();
          v305 = sub_21AF09AAC();
          v306 = sub_21AEE28D0(v305);
          v307 = *(v421 + 1472);
          v308 = *(v421 + 1464);
          if (v306)
          {
            v400 = *(v421 + 1176);
            v309 = *(v421 + 1088);
            sub_21AEE2F08();
            LODWORD(v414) = v297;
            sub_21AEB39C8();
            v423 = sub_21AEE2234();
            v310 = sub_21AEE1AC8(4.8152e-34);
            v311(v310);
            v312 = sub_21AEE20F8();
            v307(v312, v309);
            v313 = sub_21AEE2854();
            v308(v313);
            v314 = sub_21AEE283C();
            v302 = v421;
            sub_21AECFFFC(v314, v298, v315);
            sub_21AEE2884();
            sub_21AEE1D2C();
            v316 = *(v421 + 400);
            sub_21AEAF9B0(v302 + 47, v302[50]);
            sub_21AEE1A54();
            v318 = v317(v316);
            sub_21AEA79F0((v421 + 376));
            sub_21AEEC484();
            sub_21AEE2478();
            v319 = sub_21AEE24C8();
            sub_21AECFFFC(v319, v320, v321);
            sub_21AEE2884();
            sub_21AEE1DAC();
            sub_21AEE2DFC(v322, v323, v324, v325, v326, v327, v328, v329, v366, v368, v370, v372, v374, v376, v378, v380, v382, v384, v386, v388, v390, v392, v395, v400, v423, v414, v416);

            sub_21AF0992C();
            sub_21AEE2658();

            *(v170 + 24) = v318;
            sub_21AEE1DBC();
            sub_21AEE2B30(v330, v331, v332, v333);
            sub_21AEE2FF8(v334, v335, v336, v337, v338, v339, v340, v341, v367, v369, v371, v373, v375, v377, v379, v381, v383, v385, v387, v389, v391, v394, v397, v401, v409);
            sub_21AEE2494();
            sub_21AEE2250();
          }

          else
          {
            sub_21AEA79F0((v421 + 376));

            v360 = sub_21AEE24BC();
            (v307)(v360);
            v361 = sub_21AEE2034();
            v308(v361);
          }

          v362 = sub_21AEE1B50(v302 + 72);
          sub_21AEE1E1C(v362 + 32);
          v363 = swift_task_alloc();
          v302[231] = v363;
          *v363 = v302;
          sub_21AEE180C(v363);
          sub_21AEE1AFC(v302[131]);
          sub_21AEE2290();

          __asm { BRAA            X4, X16 }
        }

        goto LABEL_71;
      }

      sub_21AEE2098();
      sub_21AF0990C();
      sub_21AEE1BEC();
      sub_21AEE21D0();
      sub_21AF098BC();
      v245 = *(v56 + 1776);
      if ((v163 & 1) == 0)
      {
        goto LABEL_70;
      }

      sub_21AEE1F4C();
      v246 = *(v56 + 1376);
      v247 = sub_21AEE1954(40);
      sub_21AEE15E0(v247, v248 + 16);
      sub_21AEE201C();
      sub_21AF0996C();
      v249 = sub_21AEE1B30((v421 + 16), v421 + 416);
      v83(v249);
      v250 = sub_21AEE1C84();
      (v410)(v250);
      sub_21AEE15E0(v421 + 416, v421 + 456);
      v251 = sub_21AF096AC();
      sub_21AF09AAC();
      sub_21AEE2228();
      os_log_type_enabled(v251, v252);
      sub_21AEE2F20();
      sub_21AEE23B0();
      if (v253)
      {
        sub_21AEE1C4C();
        v407 = v254;
        sub_21AEE2058();
        swift_slowAlloc();
        v255 = sub_21AEE1FE4();
        sub_21AEE2830(v255);
        v256 = sub_21AEE182C(4.8151e-34);
        v257(v256);
        v258 = sub_21AEE1B70();
        v245(v258);
        v259 = sub_21AEE1DFC();
        v83(v259);
        v260 = sub_21AEE21DC();
        sub_21AECFFFC(v260, v261, v262);
        sub_21AEE2028();

        sub_21AEE1BDC();
        sub_21AEAF9B0((v421 + 456), *(v421 + 480));
        v263 = sub_21AEE18E0();
        v265 = v264(v263);
        sub_21AEA79F0((v421 + 456));
        sub_21AEEC484();
        sub_21AEE207C();
        v266 = sub_21AEE2070();
        sub_21AECFFFC(v266, v267, v268);
        sub_21AEE2884();
        *(v246 + 14) = v265;
        sub_21AEE1D50();
        sub_21AEE28EC(v269, v270, v271, v272);
        sub_21AEE2340(v273, v274, v275, v276, v277, v278, v279, v280, v366, v368, v370, v372, v374, v376, v378, v380, v382, v384, v386, v388, v390, v392, v395, v398, v407, v410);
        sub_21AEE2494();
        sub_21AEE2000();
      }

      else
      {
        sub_21AEE2620();
        sub_21AEA79F0((v421 + 456));

        v342 = sub_21AEE1FD8();
        v245(v342);
        v343 = sub_21AEC7734();
        v83(v343);
      }

      sub_21AEE2164();
      v344 = sub_21AEE1EE8();
      v345(v344);
      *(v421 + 1784) = *(v421 + 952);
      v346 = sub_21AEE1AE4();
      sub_21AEFBF4C(v346, v347, v348, v350, v349);
      sub_21AEE1F00((v421 + 416));

      v351 = swift_task_alloc();
      *(v421 + 1792) = v351;
      *v351 = v421;
      sub_21AEE18A0(v351);
      sub_21AEE1994(*(v421 + 1120));
      sub_21AEE2290();

      return AMLRankingPipeline.process(context:)(v352, v353, v354);
    }

    else
    {
      sub_21AEE2098();
      sub_21AF0990C();
      sub_21AEE1BEC();
      sub_21AEE21D0();
      sub_21AF098BC();
      v209 = *(v56 + 1728);
      if ((v85 & 1) == 0)
      {
        goto LABEL_69;
      }

      sub_21AEE1F4C();
      v210 = *(v56 + 1384);
      v211 = sub_21AEE1954(40);
      sub_21AEE15E0(v211, v212 + 56);
      sub_21AEE201C();
      sub_21AF0996C();
      v213 = sub_21AEE1B30((v421 + 56), v421 + 656);
      v83(v213);
      v214 = sub_21AEE1C84();
      (v410)(v214);
      sub_21AEE15E0(v421 + 656, v421 + 496);
      v215 = sub_21AF096AC();
      sub_21AF09AAC();
      sub_21AEE2228();
      os_log_type_enabled(v215, v216);
      sub_21AEE2F20();
      sub_21AEE23E4();
      if (v217)
      {
        sub_21AEE1C4C();
        v406 = v218;
        sub_21AEE2058();
        swift_slowAlloc();
        v219 = sub_21AEE1FE4();
        sub_21AEE2830(v219);
        v220 = sub_21AEE182C(4.8151e-34);
        v221(v220);
        v222 = sub_21AEE1B70();
        v209(v222);
        v223 = sub_21AEE1DFC();
        v83(v223);
        v224 = sub_21AEE21DC();
        sub_21AECFFFC(v224, v225, v226);
        sub_21AEE2028();

        sub_21AEE1BDC();
        sub_21AEAF9B0((v421 + 496), *(v421 + 520));
        v227 = sub_21AEE18E0();
        v229 = v228(v227);
        sub_21AEA79F0((v421 + 496));
        sub_21AEEC484();
        sub_21AEE207C();
        v230 = sub_21AEE2070();
        sub_21AECFFFC(v230, v231, v232);
        sub_21AEE2884();
        *(v210 + 14) = v229;
        sub_21AEE1D50();
        sub_21AEE28EC(v233, v234, v235, v236);
        sub_21AEE2340(v237, v238, v239, v240, v241, v242, v243, v244, v366, v368, v370, v372, v374, v376, v378, v380, v382, v384, v386, v388, v390, v392, v395, v398, v406, v410);
        sub_21AEE2494();
        sub_21AEE2000();
      }

      else
      {
        sub_21AEE2620();
        sub_21AEA79F0((v421 + 496));

        v281 = sub_21AEE1FD8();
        v209(v281);
        v282 = sub_21AEC7734();
        v83(v282);
      }

      sub_21AEE2164();
      v283 = sub_21AEE1EE8();
      v284(v283);
      *(v421 + 1736) = *(v421 + 952);
      v285 = sub_21AEE1AE4();
      sub_21AEFC9C0(v285, v286, v287, v289, v288);
      sub_21AEE1F00((v421 + 656));

      v290 = swift_task_alloc();
      *(v421 + 1744) = v290;
      *v290 = v421;
      sub_21AEE1A1C(v290);
      sub_21AEE1994(*(v421 + 1144));
      sub_21AEE2290();

      return AMLScoringPipeline.process(context:)(v291, v292, v293);
    }
  }

  else
  {
LABEL_9:
    *(v0 + 1608) = v3;
    sub_21AEE2CB0();
    sub_21AEE204C();
    sub_21AF0990C();
    sub_21AEE20C0();
    sub_21AEE21E8();
    sub_21AF098BC();
    sub_21AEE2CB0();
    if (v1)
    {
      sub_21AEE2670();
      v411 = v25;
      v26 = *(v0 + 1432);
      v27 = *(v0 + 1400);
      sub_21AEE1CE8();
      sub_21AEE2948(v28);
      sub_21AEE252C();
      sub_21AF0996C();
      v29 = sub_21AEE1B30((v421 + 176), v421 + 136);
      v30 = v421;
      v26(v29);
      v31 = sub_21AEE2070();
      v411(v31);
      sub_21AEE15E0(v30 + 136, v30 + 96);
      v32 = sub_21AF096AC();
      sub_21AF09AAC();
      sub_21AEE2228();
      os_log_type_enabled(v32, v33);
      sub_21AEE2F20();
      sub_21AEE22AC();
      if (v34)
      {
        sub_21AEE1C4C();
        sub_21AEE2058();
        swift_slowAlloc();
        v35 = sub_21AEE1FE4();
        sub_21AEE2830(v35);
        v36 = sub_21AEE182C(4.8151e-34);
        v37(v36);
        v38 = sub_21AEE1B70();
        v3(v38);
        v39 = sub_21AEE1DFC();
        (v0)(v39);
        v40 = sub_21AEE21DC();
        sub_21AECFFFC(v40, v41, v42);
        sub_21AEE2028();

        sub_21AEE1BDC();
        sub_21AEAF9B0((v421 + 96), *(v421 + 120));
        v43 = sub_21AEE1C34();
        v45 = v44(v43);
        sub_21AEA79F0((v421 + 96));
        sub_21AEEC484();
        sub_21AEE207C();
        v46 = sub_21AEE2070();
        sub_21AECFFFC(v46, v47, v48);
        sub_21AEE2884();
        *(v27 + 14) = v45;
        sub_21AEE1D50();
        sub_21AEE28EC(v49, v50, v51, v52);
        sub_21AEE2930(v53, v54, MEMORY[0x277D84F70] + 8);
        sub_21AEE20A4();
        sub_21AEE2000();
      }

      else
      {
        sub_21AEE2620();
        sub_21AEA79F0((v421 + 96));

        v102 = sub_21AEE1FD8();
        v3(v102);
        v103 = sub_21AEC7734();
        (v0)(v103);
      }

      v104 = sub_21AEE2860();
      v105(v104);
      sub_21AEE204C();
      sub_21AF097DC();
      sub_21AEE2A04();
      v106 = sub_21AF096AC();
      v107 = sub_21AF09AAC();
      if (sub_21AEE2C98(v107))
      {
        sub_21AEE2058();
        swift_slowAlloc();
        sub_21AEE1FE4();
        *v27 = 136315394;
        v108 = *(v421 + 560);
        v109 = sub_21AEE2E8C();
        sub_21AEAF9B0(v109, v108);
        sub_21AEE2508();
        v110 = sub_21AEE2AF4();
        v111(v110);
        v112 = sub_21AEE2E8C();
        sub_21AEA79F0(v112);
        sub_21AEEC484();
        v30 = v113;

        v114 = sub_21AEE2278();
        v116 = sub_21AECFFFC(v114, v30, v115);
        sub_21AEE2664();

        sub_21AEE1BDC();
        v117 = sub_21AEE2174();
        sub_21AECFFFC(v117, v118, v119);
        sub_21AEE2180();

        *(v27 + 14) = v116;
        sub_21AEE270C(&dword_21AE94000, v120, v107, "Processing candidate feature provider %s for %s");
        swift_arrayDestroy();
        sub_21AEE23C8();
        sub_21AEE2000();
      }

      else
      {
        sub_21AEA79F0((v421 + 536));
      }

      v121 = sub_21AEE1B50((v30 + 136));
      sub_21AEE1D3C(v121);
      v122 = swift_task_alloc();
      *(v30 + 1616) = v122;
      *v122 = v30;
      v122[1] = sub_21AED6158;
      sub_21AEE1974();
      sub_21AEE2290();

      __asm { BRAA            X4, X16 }
    }

LABEL_67:
    sub_21AEE252C();
    sub_21AF09C7C();
    __break(1u);
LABEL_68:
    sub_21AEE201C();
    sub_21AF09C7C();
    __break(1u);
LABEL_69:
    sub_21AEE201C();
    sub_21AF09C7C();
    __break(1u);
LABEL_70:
    sub_21AEE201C();
    sub_21AF09C7C();
    __break(1u);
LABEL_71:
    sub_21AEE201C();
    result = sub_21AF09C7C();
    __break(1u);
  }

  return result;
}

uint64_t sub_21AEDD0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_21AEE2C30();
  sub_21AEE2EFC();
  v31 = v30[186];
  v32 = v30[185];
  swift_unknownObjectRelease();

  sub_21AEA79F0(v30 + 37);

  v42 = v30[213];
  sub_21AEE1848();
  sub_21AEE1E84();

  sub_21AEE26E0();
  sub_21AEE2C64();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v42, a28, a29, a30);
}

uint64_t sub_21AEDD27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_21AEE2C30();
  sub_21AEE2EFC();
  v31 = v30[186];
  v32 = v30[185];
  swift_unknownObjectRelease();

  sub_21AEA79F0(v30 + 72);

  v42 = v30[233];
  sub_21AEE1848();
  sub_21AEE1E84();

  sub_21AEE26E0();
  sub_21AEE2C64();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v42, a28, a29, a30);
}

uint64_t sub_21AEDD41C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v3 = a1[4];
  sub_21AEAF9B0(a1, v4);
  (*(*(*(*(v3 + 8) + 8) + 8) + 16))(v4);
  v5 = sub_21AEEC484();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
  return result;
}

id sub_21AEDD4A4(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_21AF0971C();

  v3 = [v1 initWithFeatureDictionary_];

  return v3;
}

uint64_t AMLRecommendationPipeline.contextFeatures(context:)()
{
  sub_21AEE2AC0();
  v1[21] = v2;
  v1[22] = v0;
  v1[19] = v3;
  v1[20] = v4;
  v1[23] = *(v2 + 8);
  v1[24] = swift_getAssociatedTypeWitness();
  sub_21AEE21F4();
  v1[25] = v5;
  v1[26] = sub_21AEE30A8();
  sub_21AEE268C();
  v1[27] = v6;
  v1[28] = sub_21AEE30A8();
  sub_21AEE246C();

  return MEMORY[0x2822009F8](v7);
}

void sub_21AEDD63C()
{
  v1 = sub_21AF0974C();
  v2 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v3 = sub_21AF07524(v1);
  v4 = *(v0 + 192);
  v5 = (*(*(v0 + 168) + 24))(*(v0 + 160));
  *(v0 + 144) = v4;
  *(v0 + 232) = v5;
  sub_21AEE2514();
  *(v0 + 240) = swift_getExtendedExistentialTypeMetadata();
  sub_21AEE2700();
  v6 = sub_21AF0989C();
  *(v0 + 136) = v6;
  sub_21AEE2700();
  if (v6 == sub_21AF0992C())
  {

    sub_21AEE24D4();
    sub_21AEE2FBC();

    __asm { BRAA            X2, X16 }
  }

  *(v0 + 248) = v3;
  sub_21AEE2098();
  sub_21AF0990C();
  sub_21AEE20C0();
  sub_21AEE21D0();
  sub_21AF098BC();
  if ((v0 - 112))
  {
    v9 = sub_21AEE27B0();
    sub_21AEE15E0(v9, v0 + 16);
    sub_21AEE201C();
    sub_21AF0996C();
    sub_21AE9641C((v0 + 16), v0 + 56);
    if (qword_27CD3D2C0 == -1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_21AEE201C();
    sub_21AF09C7C();
    __break(1u);
  }

  sub_21AEE1934(&qword_27CD3D2C0);
LABEL_7:
  v10 = *(v0 + 192);
  v11 = sub_21AF096CC();
  sub_21AEA7958(v11, qword_27CD3EC20);
  v12 = sub_21AEE230C();
  v13(v12);
  v14 = sub_21AEE24C8();
  v15(v14);
  sub_21AEE15E0(v0 + 56, v0 + 96);
  v16 = sub_21AF096AC();
  sub_21AF09AAC();
  sub_21AEE2228();
  if (os_log_type_enabled(v16, v17))
  {
    sub_21AEE2058();
    swift_slowAlloc();
    sub_21AEE1FE4();
    sub_21AEE1AB4(4.8151e-34);
    sub_21AEE2E2C();
    v18();
    v19 = sub_21AEE1FD8();
    v20(v19);
    v21 = sub_21AEE2108();
    v22(v21);
    v23 = sub_21AEE21DC();
    sub_21AECFFFC(v23, v24, v25);
    sub_21AEE2028();

    sub_21AEE1BDC();
    sub_21AEE2D1C();
    v26 = sub_21AEE1E0C();
    v28 = v27(v26);
    sub_21AEA79F0((v0 + 96));
    sub_21AEEC484();
    sub_21AEE207C();
    v29 = sub_21AEE2070();
    sub_21AECFFFC(v29, v30, v31);
    sub_21AEE2884();
    *(v16 + 14) = v28;
    sub_21AEE218C(&dword_21AE94000, v32, v10, "<requestID: %s> Processing context feature provider %s");
    sub_21AEE2930(v33, v34, MEMORY[0x277D84F70] + 8);
    sub_21AEE20A4();
    sub_21AEE2000();
  }

  else
  {
    sub_21AEA79F0((v0 + 96));

    v35 = sub_21AEE1FD8();
    v36(v35);
    v37 = sub_21AEE2108();
    v38(v37);
  }

  sub_21AEE1B50((v0 + 56));
  sub_21AEE21F4();
  v39 = swift_task_alloc();
  *(v0 + 256) = v39;
  *v39 = v0;
  v39[1] = sub_21AEDDAF0;
  sub_21AEE2040(*(v0 + 152));
  sub_21AEE252C();
  sub_21AEE2FBC();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_21AEDDAF0()
{
  sub_21AEE2818();
  sub_21AEE22E4();
  v4 = v3;
  sub_21AEE1D9C();
  *v5 = v4;
  v6 = *v2;
  sub_21AEE1F6C();
  *v7 = v6;
  *(v4 + 264) = v0;

  if (v0)
  {
  }

  else
  {
    *(v4 + 272) = v1;
  }

  sub_21AEE23FC();

  return MEMORY[0x2822009F8](v8);
}

void sub_21AEDDBFC()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 248);
  swift_getObjectType();
  v3 = v2;
  MLFeatureProvider.merging(other:uniquingKeysWith:)(v1);
  sub_21AEE2064();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_21AEA79F0((v0 + 56));
  v4 = sub_21AF0992C();
  v5 = *(v0 + 136);
  if (v5 == v4)
  {

    sub_21AEE24D4();
    sub_21AEE2A24();

    __asm { BRAA            X2, X16 }
  }

  *(v0 + 248) = v3;
  sub_21AEC76A0();
  v8 = sub_21AF0990C();
  sub_21AEE3058();
  if (v8)
  {
    v46 = v0 + 96;
    sub_21AEE15E0(*(v0 + 232) + 40 * v5 + 32, v0 + 16);
    sub_21AEE2700();
    sub_21AF0996C();
    sub_21AE9641C((v0 + 16), v0 + 56);
    if (qword_27CD3D2C0 == -1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_21AF09C7C();
    __break(1u);
  }

  sub_21AEE1934(&qword_27CD3D2C0);
LABEL_7:
  v9 = sub_21AF096CC();
  sub_21AEA7958(v9, qword_27CD3EC20);
  v10 = sub_21AEE2034();
  v11(v10);
  v12 = sub_21AEE2128();
  v13(v12);
  sub_21AEE15E0(v0 + 56, v46);
  v14 = sub_21AF096AC();
  v15 = sub_21AF09AAC();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 224);
  v18 = *(v0 + 200);
  v19 = *(v0 + 208);
  v20 = *(v0 + 192);
  if (v16)
  {
    log = v14;
    sub_21AEE2058();
    swift_slowAlloc();
    v47 = sub_21AEE2234();
    *v46 = 136315394;
    v21 = sub_21AEE2F2C();
    v23 = v22(v21);
    v44 = v15;
    v25 = v24;
    (*(v18 + 8))(v19, v20);
    v26 = sub_21AEE2D64();
    v27(v26);
    sub_21AECFFFC(v23, v25, &v47);
    sub_21AEE2B00();

    sub_21AEE1D2C();
    v28 = *(v0 + 128);
    v29 = sub_21AEE24BC();
    sub_21AEAF9B0(v29, v30);
    v31 = sub_21AEE2B00();
    v32(v31, v28);
    v33 = sub_21AEE2064();
    sub_21AEA79F0(v33);
    sub_21AEEC484();

    v34 = sub_21AEE24BC();
    sub_21AECFFFC(v34, v35, v36);
    sub_21AEE2B00();

    *(v46 + 14) = v17;
    _os_log_impl(&dword_21AE94000, log, v44, "<requestID: %s> Processing context feature provider %s", v46, 0x16u);
    sub_21AEE2930(v37, v38, MEMORY[0x277D84F70] + 8);
    sub_21AEE20A4();
    sub_21AEE2250();
  }

  else
  {
    sub_21AEA79F0(v46);

    (*(v18 + 8))(v19, v20);
    v39 = sub_21AEE24E0();
    v40(v39);
  }

  sub_21AEE1B50((v0 + 56));
  sub_21AEE21F4();
  v41 = swift_task_alloc();
  *(v0 + 256) = v41;
  *v41 = v0;
  v41[1] = sub_21AEDDAF0;
  sub_21AEE2040(*(v0 + 152));
  sub_21AEE252C();
  sub_21AEE2A24();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_21AEDE08C()
{
  sub_21AEE2AC0();
  swift_unknownObjectRelease();
  sub_21AEA79F0((v0 + 56));

  sub_21AEE280C();

  return v1();
}

uint64_t AMLRecommendationPipeline.candidates(context:pipelineLogger:metadata:)()
{
  sub_21AEE2AC0();
  v1[55] = v2;
  v1[56] = v0;
  v1[53] = v3;
  v1[54] = v4;
  v1[51] = v5;
  v1[52] = v6;
  v1[57] = *(v2 + 8);
  v1[58] = swift_getAssociatedTypeWitness();
  sub_21AEE21F4();
  v1[59] = v7;
  v1[60] = sub_21AEE2D7C();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  sub_21AEE268C();
  v1[63] = v8;
  v1[64] = sub_21AEE2D7C();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  sub_21AEE246C();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_21AEDE248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v96 = v3;
  v4 = *(v3 + 464);
  sub_21AEE2CBC();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v3 + 536) = AssociatedTypeWitness;
  *(v3 + 544) = type metadata accessor for AMLCandidateWithFeatures(0, AssociatedTypeWitness, v6, v7);
  v8 = sub_21AF098EC();
  *(v3 + 352) = v8;
  v9 = sub_21AEE221C();
  v11 = v10(v9);
  *(v3 + 552) = v11;
  *(v3 + 320) = v4;
  *(v3 + 328) = AssociatedTypeWitness;
  ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
  v13 = ExtendedExistentialTypeMetadata;
  *(v3 + 560) = ExtendedExistentialTypeMetadata;
  sub_21AEB3AB4();
  v14 = sub_21AF0989C();
  *(v3 + 360) = v14;
  sub_21AEB3AB4();
  if (v14 == sub_21AF0992C())
  {
    v15 = *(v3 + 536);
    v16 = *(v3 + 464);

    *(v3 + 392) = v8;
    v17 = sub_21AED1D94();
    *(v3 + 600) = v18(v17);
    *(v3 + 336) = v16;
    *(v3 + 344) = v15;
    sub_21AEE17F4();
    *(v3 + 608) = swift_getExtendedExistentialTypeMetadata();
    sub_21AEB3AB4();
    v19 = sub_21AF0989C();
    *(v3 + 400) = v19;
    sub_21AEB3AB4();
    if (v19 == sub_21AF0992C())
    {
      sub_21AEE2FD8();

      sub_21AEE24D4();
      sub_21AEE2A24();

      __asm { BRAA            X2, X16 }
    }

    sub_21AEE2C80(v3 + 392, v3 + 296);
    *(v3 + 616) = v8;
    sub_21AEE221C();
    v47 = sub_21AF0990C();
    sub_21AF098BC();
    if (v47)
    {
      sub_21AEE3038();
      sub_21AF0996C();
      sub_21AE9641C((v3 + 136), v3 + 176);
      if (qword_27CD3D2C0 == -1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_21AEE24E0();
      sub_21AF09C7C();
      __break(1u);
    }

    sub_21AEE1934(&qword_27CD3D2C0);
LABEL_12:
    v48 = *(v3 + 504);
    v49 = *(v3 + 472);
    sub_21AEE2BF8();
    v50 = sub_21AF096CC();
    *(v3 + 624) = sub_21AEA7958(v50, qword_27CD3EC20);
    *(v3 + 632) = *(v48 + 16);
    *(v3 + 640) = (v48 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v51 = sub_21AEE2034();
    v52(v51);
    *(v3 + 648) = *(v49 + 16);
    *(v3 + 656) = (v49 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v53 = sub_21AEE2128();
    v54(v53);
    sub_21AEE15E0(v3 + 176, v3 + 216);
    v55 = sub_21AF096AC();
    v56 = sub_21AF09AAC();
    if (os_log_type_enabled(v55, v56))
    {
      v94 = v56;
      v57 = *(v3 + 504);
      v58 = *(v3 + 488);
      v59 = *(v3 + 472);
      v91 = *(v3 + 464);
      v93 = v55;
      v60 = *(v3 + 432);
      sub_21AEB39C8();
      v92 = sub_21AEE2234();
      v95 = v92;
      *v47 = 136315650;
      sub_21AEE24B0();
      v62 = v61();
      v64 = v63;
      v65 = *(v59 + 8);
      v65(v58, v91);
      v66 = *(v57 + 8);
      v67 = sub_21AEE2D64();
      v66(v67);
      sub_21AECFFFC(v62, v64, &v95);
      sub_21AEE2B00();

      sub_21AEE1D2C();
      v69 = *(v3 + 240);
      v68 = *(v3 + 248);
      sub_21AEAF9B0((v3 + 216), v69);
      sub_21AEE1A54();
      v70(v69);
      v71 = sub_21AEE2EC4();
      sub_21AEE28B8();
      sub_21AECFFFC(v71, v60, &v95);
      sub_21AEE2884();
      sub_21AEE1DAC();

      sub_21AF0992C();
      sub_21AEE2064();

      *(v47 + 24) = v68;
      sub_21AEE2444(&dword_21AE94000, v72, v94, "<requestID: %s> Using post candidates selector %s with %ld candidates");
      swift_arrayDestroy();
      MEMORY[0x21CEE5A20](v92, -1, -1);
      sub_21AEE2250();
    }

    else
    {
      v83 = *(v3 + 504);
      v84 = *(v3 + 488);
      v86 = *(v3 + 464);
      v85 = *(v3 + 472);
      sub_21AEA79F0((v3 + 216));

      v65 = *(v85 + 8);
      v65(v84, v86);
      v66 = *(v83 + 8);
      v87 = sub_21AEE2D64();
      v66(v87);
    }

    *(v3 + 672) = v65;
    *(v3 + 664) = v66;
    sub_21AEAF9B0((v3 + 176), *(v3 + 200));
    sub_21AEE2B00();

    v88 = swift_task_alloc();
    *(v3 + 680) = v88;
    *v88 = v3;
    sub_21AEE1C94(v88);
    sub_21AEE252C();
    sub_21AEE2A24();

    __asm { BRAA            X4, X16 }
  }

  *(v3 + 568) = v8;
  sub_21AEE2E20();
  sub_21AEE2098();
  sub_21AF0990C();
  sub_21AEE20C0();
  sub_21AEE21D0();
  sub_21AF098BC();
  sub_21AEE2E20();
  if (v13)
  {
    v22 = sub_21AEE27B0();
    sub_21AEE15E0(v22, v3 + 16);
    sub_21AEE201C();
    sub_21AF0996C();
    sub_21AE9641C((v3 + 16), v3 + 56);
    if (qword_27CD3D2C0 == -1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_21AEE201C();
    sub_21AF09C7C();
    __break(1u);
  }

  sub_21AEE1934(&qword_27CD3D2C0);
LABEL_8:
  v23 = sub_21AEE26A8();
  sub_21AEA7958(v23, qword_27CD3EC20);
  v24 = sub_21AEE230C();
  v25(v24);
  v26 = sub_21AEE24C8();
  v27(v26);
  sub_21AEE15E0(v3 + 56, v3 + 96);
  v28 = sub_21AF096AC();
  sub_21AF09AAC();
  sub_21AEE2228();
  if (os_log_type_enabled(v28, v29))
  {
    sub_21AEE2058();
    swift_slowAlloc();
    v95 = sub_21AEE1FE4();
    sub_21AEE1AB4(4.8151e-34);
    sub_21AEE2E2C();
    v30();
    v31 = sub_21AEE1FD8();
    v32(v31);
    v33 = sub_21AEE2108();
    v34(v33);
    v35 = sub_21AEE21DC();
    sub_21AECFFFC(v35, v36, v37);
    sub_21AEE2028();

    sub_21AEE1BDC();
    sub_21AEE2D1C();
    v38 = sub_21AEE1E0C();
    v40 = v39(v38);
    sub_21AEA79F0((v3 + 96));
    sub_21AEEC484();
    sub_21AEE207C();
    v41 = sub_21AEE2070();
    sub_21AECFFFC(v41, v42, v43);
    sub_21AEE2884();
    *(v28 + 14) = v40;
    sub_21AEE218C(&dword_21AE94000, v44, v11, "<requestID: %s> Processing candidate pipeline %s");
    sub_21AEE2930(v45, v46, MEMORY[0x277D84F70] + 8);
    sub_21AEE20A4();
    sub_21AEE2000();
  }

  else
  {
    sub_21AEA79F0((v3 + 96));

    v73 = sub_21AEE1FD8();
    v74(v73);
    v75 = sub_21AEE2108();
    v76(v75);
  }

  sub_21AEE1F00((v3 + 56));
  v77 = swift_task_alloc();
  *(v3 + 576) = v77;
  *v77 = v3;
  v77[1] = sub_21AEDEAC4;
  sub_21AEE1994(*(v3 + 408));
  sub_21AEE2A24();

  return AMLCandidatePipeline.process(context:)(v78, v79, v80);
}