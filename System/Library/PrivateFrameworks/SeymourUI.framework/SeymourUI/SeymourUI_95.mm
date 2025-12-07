uint64_t objectdestroy_86Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_100Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_115Tm_0()
{
  v1 = type metadata accessor for NavigationRequest(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = (v0 + v3);
  type metadata accessor for NavigationResource(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v9 = sub_20C132C14();
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      v7 = &unk_27C763FC0;
      v8 = &unk_20C155B00;
      goto LABEL_17;
    case 2u:
      v10 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v17 = sub_20C1387E4();
      (*(*(v17 - 8) + 8))(v0 + v3, v17);
      v7 = &qword_27C7710E0;
      v8 = &unk_20C15F290;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &qword_27C763FD0;
      v8 = &unk_20C155B10;
LABEL_17:
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7, v8) + 48);
      v19 = sub_20C1388F4();
      (*(*(v19 - 8) + 8))(v5 + v18, v19);
      break;
    case 9u:
      v10 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v10 = sub_20C138204();
LABEL_11:
      (*(*(v10 - 8) + 8))(v0 + v3, v10);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v11 = sub_20C1344C4();
        (*(*(v11 - 8) + 8))(v0 + v3, v11);
        v12 = type metadata accessor for WorkoutSessionConfiguration(0);
        v13 = v12[5];
        v14 = sub_20C137254();
        (*(*(v14 - 8) + 8))(v5 + v13, v14);
        v15 = v12[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v16 = sub_20C137EA4();
          (*(*(v16 - 8) + 8))(v5 + v15, v16);
        }

        else
        {
        }

        v36 = v12[9];
        v37 = sub_20C13BA24();
        v38 = *(v37 - 8);
        if (!(*(v38 + 48))(v5 + v36, 1, v37))
        {
          (*(v38 + 8))(v5 + v36, v37);
        }

        v39 = v12[10];
        v40 = sub_20C134A44();
        v41 = *(v40 - 8);
        if (!(*(v41 + 48))(v5 + v39, 1, v40))
        {
          (*(v41 + 8))(v5 + v39, v40);
        }

        if (*(v5 + v12[11] + 8) >= 0xC)
        {
        }

        v42 = v12[12];
        v43 = sub_20C135C54();
        v44 = *(v43 - 8);
        if (!(*(v44 + 48))(v5 + v42, 1, v43))
        {
          (*(v44 + 8))(v5 + v42, v43);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v20 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0, "\b\b\t") + 80);
      v24 = sub_20C1344C4();
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(&v20[v23], 1, v24))
      {
        (*(v25 + 8))(&v20[v23], v24);
      }

      break;
    case 4:

      break;
    case 3:
      v22 = sub_20C139144();
      (*(*(v22 - 8) + 8))(v20, v22);
      break;
  }

  v26 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource(0);
  v27 = swift_getEnumCaseMultiPayload();
  if (v27 == 1)
  {
    v35 = sub_20C135024();
    (*(*(v35 - 8) + 8))(v26, v35);
  }

  else if (!v27)
  {
    v46 = v2;
    v28 = v0;
    v29 = v3;
    v30 = v4;
    v31 = sub_20C132C14();
    v32 = *(v31 - 8);
    v33 = *(v32 + 8);
    v33(v26, v31);
    v34 = *(type metadata accessor for NavigationSharingURLInfo(0) + 20);
    if (!(*(v32 + 48))(&v26[v34], 1, v31))
    {
      v33(&v26[v34], v31);
    }

    v4 = v30;
    v3 = v29;
    v0 = v28;
    v2 = v46;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20BFDB0AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

void sub_20BFDB234()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
  }
}

unint64_t sub_20BFDB2C4()
{
  result = qword_27C771918;
  if (!qword_27C771918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771918);
  }

  return result;
}

__n128 sub_20BFDB318@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v113 = sub_20C132EE4();
  v10 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v16 = &v102 - v15;
  v108 = a3;
  if ((a3 & 0x80) != 0)
  {
    v103 = v14;
    v104 = v13;
    v105 = v10;
    v112 = a4;
    v107 = a2;
    v31 = *(a1 + 16);
    v32 = MEMORY[0x277D84F90];
    v110 = a1;
    v106 = a5;
    if (v31)
    {
      v135 = MEMORY[0x277D84F90];
      sub_20BB5EAB0(0, v31, 0);
      v33 = v135;
      v109 = (v105 + 8);
      v34 = (a1 + 40);
      v35 = v103;
      do
      {
        v111 = v31;
        v36 = *v34;
        ObjectType = swift_getObjectType();
        v38 = *(v36 + 8);
        swift_unknownObjectRetain();
        v39 = v35;
        v38(ObjectType, v36);
        v40 = v112;
        if (*(v112 + 16))
        {
          v41 = sub_20B65AAD8(v39);
          if (v42)
          {
            v43 = *(v40 + 56) + 168 * v41;
            v45 = *(v43 + 16);
            v44 = *(v43 + 32);
            v114 = *v43;
            v115 = v45;
            v116 = v44;
            v46 = *(v43 + 96);
            v48 = *(v43 + 48);
            v47 = *(v43 + 64);
            v119 = *(v43 + 80);
            v120 = v46;
            v117 = v48;
            v118 = v47;
            v50 = *(v43 + 128);
            v49 = *(v43 + 144);
            v51 = *(v43 + 112);
            v124 = *(v43 + 160);
            v122 = v50;
            v123 = v49;
            v121 = v51;
            sub_20B622224(&v114, &v136);
            swift_unknownObjectRelease();
            (*v109)(v39, v113);
            v133 = v122;
            v134[0] = v123;
            *&v134[1] = v124;
            v129 = v118;
            v130 = v119;
            v131 = v120;
            v132 = v121;
            v125 = v114;
            v126 = v115;
            v127 = v116;
            v128 = v117;
            nullsub_1();
          }

          else
          {
            swift_unknownObjectRelease();
            (*v109)(v39, v113);
            sub_20B5D8060(&v125);
          }

          v144 = v133;
          v145[0] = v134[0];
          *&v145[1] = *&v134[1];
          v140 = v129;
          v141 = v130;
          v142 = v131;
          v143 = v132;
          v136 = v125;
          v137 = v126;
          v138 = v127;
          v139 = v128;
        }

        else
        {
          swift_unknownObjectRelease();
          (*v109)(v39, v113);
          sub_20B5D8060(&v136);
        }

        v35 = v39;
        v52 = v111;
        v135 = v33;
        v54 = *(v33 + 16);
        v53 = *(v33 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_20BB5EAB0((v53 > 1), v54 + 1, 1);
          v35 = v103;
          v33 = v135;
        }

        *(v33 + 16) = v54 + 1;
        v55 = v33 + 168 * v54;
        v56 = v136;
        v57 = v138;
        *(v55 + 48) = v137;
        *(v55 + 64) = v57;
        *(v55 + 32) = v56;
        v58 = v139;
        v59 = v140;
        v60 = v142;
        *(v55 + 112) = v141;
        *(v55 + 128) = v60;
        *(v55 + 80) = v58;
        *(v55 + 96) = v59;
        v61 = v143;
        v62 = v144;
        v63 = v145[0];
        *(v55 + 192) = *&v145[1];
        *(v55 + 160) = v62;
        *(v55 + 176) = v63;
        *(v55 + 144) = v61;
        v34 += 2;
        v31 = v52 - 1;
      }

      while (v31);
      a5 = v106;
      v64 = v107;
      v32 = MEMORY[0x277D84F90];
      v65 = *(v107 + 16);
      if (v65)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v33 = MEMORY[0x277D84F90];
      v64 = v107;
      v65 = *(v107 + 16);
      if (v65)
      {
LABEL_19:
        v103 = v33;
        v135 = v32;
        sub_20BB5EAB0(0, v65, 0);
        v66 = v135;
        v67 = v104;
        v109 = (v105 + 8);
        v111 = v65 - 1;
        for (i = (v64 + 40); ; i += 2)
        {
          v69 = *i;
          v70 = swift_getObjectType();
          v71 = *(v69 + 8);
          swift_unknownObjectRetain();
          v71(v70, v69);
          v72 = v112;
          if (*(v112 + 16))
          {
            v73 = sub_20B65AAD8(v67);
            if (v74)
            {
              v75 = *(v72 + 56) + 168 * v73;
              v77 = *(v75 + 16);
              v76 = *(v75 + 32);
              v114 = *v75;
              v115 = v77;
              v116 = v76;
              v78 = *(v75 + 96);
              v80 = *(v75 + 48);
              v79 = *(v75 + 64);
              v119 = *(v75 + 80);
              v120 = v78;
              v117 = v80;
              v118 = v79;
              v82 = *(v75 + 128);
              v81 = *(v75 + 144);
              v83 = *(v75 + 112);
              v124 = *(v75 + 160);
              v122 = v82;
              v123 = v81;
              v121 = v83;
              sub_20B622224(&v114, &v125);
              swift_unknownObjectRelease();
              (*v109)(v67, v113);
              v133 = v122;
              v134[0] = v123;
              *&v134[1] = v124;
              v129 = v118;
              v130 = v119;
              v131 = v120;
              v132 = v121;
              v125 = v114;
              v126 = v115;
              v127 = v116;
              v128 = v117;
              nullsub_1();
            }

            else
            {
              swift_unknownObjectRelease();
              (*v109)(v67, v113);
              sub_20B5D8060(&v125);
            }

            v144 = v133;
            v145[0] = v134[0];
            *&v145[1] = *&v134[1];
            v140 = v129;
            v141 = v130;
            v142 = v131;
            v143 = v132;
            v136 = v125;
            v137 = v126;
            v138 = v127;
            v139 = v128;
          }

          else
          {
            swift_unknownObjectRelease();
            (*v109)(v67, v113);
            sub_20B5D8060(&v136);
          }

          v84 = v110;
          v135 = v66;
          v86 = *(v66 + 16);
          v85 = *(v66 + 24);
          if (v86 >= v85 >> 1)
          {
            sub_20BB5EAB0((v85 > 1), v86 + 1, 1);
            v67 = v104;
            v66 = v135;
          }

          *(v66 + 16) = v86 + 1;
          v87 = v66 + 168 * v86;
          v88 = v136;
          v89 = v138;
          *(v87 + 48) = v137;
          *(v87 + 64) = v89;
          *(v87 + 32) = v88;
          v90 = v139;
          v91 = v140;
          v92 = v142;
          *(v87 + 112) = v141;
          *(v87 + 128) = v92;
          *(v87 + 80) = v90;
          *(v87 + 96) = v91;
          v93 = v143;
          v94 = v144;
          v95 = v145[0];
          *(v87 + 192) = *&v145[1];
          *(v87 + 160) = v94;
          *(v87 + 176) = v95;
          *(v87 + 144) = v93;
          if (!v111)
          {
            break;
          }

          --v111;
        }

        v96 = v108;
        sub_20BE402F4(v84, v107, v108);
        a5 = v106;
        v33 = v103;
        goto LABEL_33;
      }
    }

    v96 = v108;
    sub_20BE402F4(v110, v64, v108);
    v66 = MEMORY[0x277D84F90];
LABEL_33:
    *&v125 = v33;
    *(&v125 + 1) = v66;
    LOBYTE(v126) = v96 & 1;
    sub_20BFDBBB8(&v125);
    goto LABEL_34;
  }

  v17 = swift_getObjectType();
  (*(a2 + 8))(v17, a2);
  if (*(a4 + 16) && (v18 = sub_20B65AAD8(v16), (v19 & 1) != 0))
  {
    v20 = *(a4 + 56) + 168 * v18;
    v22 = *(v20 + 16);
    v21 = *(v20 + 32);
    v125 = *v20;
    v126 = v22;
    v127 = v21;
    v23 = *(v20 + 96);
    v25 = *(v20 + 48);
    v24 = *(v20 + 64);
    v130 = *(v20 + 80);
    v131 = v23;
    v128 = v25;
    v129 = v24;
    v27 = *(v20 + 128);
    v26 = *(v20 + 144);
    v28 = *(v20 + 112);
    *&v134[1] = *(v20 + 160);
    v133 = v27;
    v134[0] = v26;
    v132 = v28;
    sub_20B622224(&v125, &v136);
    v29 = sub_20BE402F4(a1, a2, v108);
    (*(v10 + 8))(v16, v113, v29);

    v144 = v133;
    v145[0] = v134[0];
    *&v145[1] = *&v134[1];
    v140 = v129;
    v141 = v130;
    v142 = v131;
    v143 = v132;
    v136 = v125;
    v137 = v126;
    v138 = v127;
    v139 = v128;
    nullsub_1();
    v122 = v144;
    v123 = v145[0];
    v124 = *&v145[1];
    v118 = v140;
    v119 = v141;
    v120 = v142;
    v121 = v143;
    v114 = v136;
    v115 = v137;
    v116 = v138;
    v117 = v139;
  }

  else
  {

    v30 = sub_20BE402F4(a1, a2, v108);
    (*(v10 + 8))(v16, v113, v30);
    sub_20B5D8060(&v114);
  }

  v133 = v122;
  v134[0] = v123;
  *&v134[1] = v124;
  v129 = v118;
  v130 = v119;
  v131 = v120;
  v132 = v121;
  v125 = v114;
  v126 = v115;
  v127 = v116;
  v128 = v117;
  sub_20BFDBBC4(&v125);
LABEL_34:
  v145[0] = v134[0];
  *(v145 + 9) = *(v134 + 9);
  v140 = v129;
  v141 = v130;
  v142 = v131;
  v143 = v132;
  v136 = v125;
  v137 = v126;
  v138 = v127;
  v139 = v128;
  v97 = v145[0];
  *(a5 + 128) = v133;
  *(a5 + 144) = v97;
  *(a5 + 153) = *(v145 + 9);
  v98 = v141;
  *(a5 + 64) = v140;
  *(a5 + 80) = v98;
  v99 = v143;
  *(a5 + 96) = v142;
  *(a5 + 112) = v99;
  v100 = v137;
  *a5 = v136;
  *(a5 + 16) = v100;
  result = v139;
  *(a5 + 32) = v138;
  *(a5 + 48) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI8ShelfRowVSg(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy169_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_20BFDBC2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 169))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 168);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20BFDBC74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 168) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 169) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 169) = 0;
    }

    if (a2)
    {
      *(result + 168) = -a2;
    }
  }

  return result;
}

id sub_20BFDBE8C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TVSessionWatchDiscoveryView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_20BFDBFA0(uint64_t *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_imageView);
  if (a1[1])
  {
    type metadata accessor for RemoteBrowsingDiscoveryPresenter(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = *(a1 + 64);
    v7 = sub_20C13C914();
    v8 = objc_opt_self();
    if (v6)
    {
      v9 = [v8 smm:v7 systemImageNamed:?];
    }

    else
    {
      v9 = [v8 imageNamed:v7 inBundle:v5 compatibleWithTraitCollection:0];
    }

    v13 = v9;

    [v3 setImage_];
    v10 = &selRef_stopAnimating;
    v11 = 0.0;
    v12 = 1.0;
  }

  else
  {
    v10 = &selRef_startAnimating;
    v11 = 1.0;
    v12 = 0.0;
  }

  [v3 setAlpha_];
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_spinnerView);
  [v14 setAlpha_];
  [v14 *v10];
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_lookingLabel);
  v16 = sub_20C13C914();
  [v15 setText_];

  v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_checkLabel);
  v18 = sub_20C13C914();
  [v17 setText_];
}

void sub_20BFDC17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = v9;
  v18 = sub_20BFDDBDC;
  v19 = v10;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_20B7B548C;
  v17 = &block_descriptor_19_6;
  v11 = _Block_copy(&v14);

  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  v18 = sub_20B5E4150;
  v19 = v12;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_20B5E3874;
  v17 = &block_descriptor_25_1;
  v13 = _Block_copy(&v14);

  [v8 animateWithDuration:v11 animations:v13 completion:0.25];
  _Block_release(v13);
  _Block_release(v11);
}

void sub_20BFDC348(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  a1();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong setAlpha_];
  }
}

void sub_20BFDC3B4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  v5 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a1 + 64);
  v6 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v6;
  *(v4 + 88) = v3;
  aBlock[4] = sub_20BFDDBC8;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_8_1;
  v7 = _Block_copy(aBlock);
  sub_20B5E40E0(a1, v10);

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_20BFDDBD4;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_20B5E3874;
  v10[3] = &block_descriptor_12_5;
  v9 = _Block_copy(v10);

  [v2 animateWithDuration:v7 animations:v9 completion:0.25];
  _Block_release(v9);
  _Block_release(v7);
}

void sub_20BFDC590(uint64_t *a1, uint64_t a2)
{
  if (a1[1])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = *(Strong + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_imageView);

      v5 = sub_20C13C914();
      v6 = [objc_opt_self() systemImageNamed_];

      [v4 setImage_];
    }
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = *(v7 + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_lookingLabel);

    v10 = sub_20C13C914();
    [v9 setText_];
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v13 = *(v11 + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_checkLabel);

    v14 = sub_20C13C914();
    [v13 setText_];
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = *(v15 + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_spinnerView);

    [v17 setAlpha_];
  }

  swift_beginAccess();
  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = v18;
    v20 = *(v18 + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_imageView);

    [v20 setAlpha_];
  }
}

void sub_20BFDC7D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_spinnerView);

    [v4 stopAnimating];
  }
}

void sub_20BFDC850(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_productPlacementView);

    [v3 setHidden_];
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    [v4 layoutIfNeeded];
  }
}

id sub_20BFDC94C()
{
  [v0 removeFromSuperview];

  return [v0 setAlpha_];
}

double sub_20BFDC990()
{
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_productPlacementView;
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_productPlacementView);
  v3 = *(v1 + 8);
  v4 = v2;
  return sub_20B7F9F58(v2, v3);
}

void sub_20BFDC9DC()
{
  [v0 layoutIfNeeded];
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4[4] = sub_20BFDDBC0;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_20B7B548C;
  v4[3] = &block_descriptor_173;
  v3 = _Block_copy(v4);

  [v1 animateWithDuration:v3 animations:0.3];
  _Block_release(v3);
}

char *sub_20BFDCAE0(uint64_t a1)
{
  v2 = v1;
  v130 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  MEMORY[0x28223BE20](v3 - 8);
  v126 = &v124 - v4;
  v5 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_spinnerView;
  v6 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v125 = v5;
  *(v2 + v5) = v6;
  v129 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_lookingLabel;
  v7 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v8 = *MEMORY[0x277D74420];
  v9 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A28] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
  inited = swift_initStackObject();
  v128 = xmmword_20C14F980;
  *(inited + 16) = xmmword_20C14F980;
  v11 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
  v12 = swift_initStackObject();
  v13 = MEMORY[0x277D74430];
  *(v12 + 16) = v128;
  v14 = *v13;
  *(v12 + 32) = *v13;
  *(v12 + 40) = v8;
  v15 = v11;
  v16 = v14;
  v17 = sub_20B6B134C(v12);
  swift_setDeallocating();
  sub_20B520158(v12 + 32, &unk_27C773200, qword_20C158A40);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
  *(inited + 40) = v17;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210, &qword_20C159860);
  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v18 = sub_20C13C744();

  v19 = [v9 fontDescriptorByAddingAttributes_];

  v20 = objc_opt_self();
  v21 = [v20 fontWithDescriptor:v19 size:0.0];

  [v7 setFont_];
  v22 = objc_opt_self();
  v23 = [v22 labelColor];
  [v7 setTextColor_];

  [v7 setLineBreakMode_];
  [v7 setNumberOfLines_];
  [v7 setTextAlignment_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v129[v2] = v7;
  v24 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_checkLabel;
  v25 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v26 = [v20 preferredFontForTextStyle_];
  [v25 setFont_];

  v27 = [v22 labelColor];
  [v25 setTextColor_];

  [v25 setTextAlignment_];
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v128 = v24;
  *(v2 + v24) = v25;
  if (qword_27C7609B8 != -1)
  {
    swift_once();
  }

  v28 = qword_27C79BC30;
  v29 = *algn_27C79BC38;
  v30 = [v20 preferredFontForTextStyle_];
  v31 = _UISolariumEnabled();
  objc_allocWithZone(type metadata accessor for TVButtonTextContentView());

  v32 = TVButtonTextContentView.init(title:)(v28, v29);
  v33 = v32;
  if (v30)
  {
    [*&v32[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel] setFont_];
  }

  v34 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_startStandaloneButton;
  v127 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_startStandaloneButton;
  v35 = objc_allocWithZone(type metadata accessor for TVButton());
  v36 = sub_20BB87F6C(v33, v31, 0, v35, 0.0, 0.0, 0.0, 0.0);

  v37 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [*&v36[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setBackgroundColor:v37 forState:8];

  *(v2 + v34) = v36;
  v38 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_imageView;
  v39 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  LODWORD(v40) = 1148846080;
  [v39 setContentCompressionResistancePriority:0 forAxis:v40];
  LODWORD(v41) = 1148846080;
  [v39 setContentCompressionResistancePriority:1 forAxis:v41];
  [v39 &selRef_count + 2];

  *(v2 + v38) = v39;
  v42 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_connectingView;
  v43 = [objc_allocWithZone(MEMORY[0x277D75D18]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v43 &selRef_count + 2];
  *(v2 + v42) = v43;
  v44 = v130;
  *(v2 + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_presenter) = v130;
  sub_20C0134C0(*(v44 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_platform), v132);
  v45 = v133;
  v46 = v134;
  __swift_project_boxed_opaque_existential_1(v132, v133);
  v47 = *(v46 + 136);

  v48 = v47(v45, v46);
  v49 = v2 + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_productPlacementView;
  *v49 = v48;
  *(v49 + 1) = v50;
  __swift_destroy_boxed_opaque_existential_1(v132);
  [*v49 setHidden_];
  v51 = *(v2 + v38);
  v52 = sub_20C13C914();
  v53 = [objc_opt_self() systemImageNamed_];

  [v51 setImage_];
  v54 = *(v2 + v38);
  v55 = objc_opt_self();
  v56 = v54;
  v57 = [v55 configurationWithPointSize_];
  [v56 setPreferredSymbolConfiguration_];

  [*(v2 + v42) addSubview_];
  v58 = *(v2 + v42);
  v124 = v42;
  [v58 addSubview_];
  [*(v2 + v38) setAlpha_];
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_20C150050;
  v60 = *(v2 + v42);
  v61 = v129;
  v62 = *&v129[v2];
  *(v59 + 32) = v60;
  *(v59 + 40) = v62;
  v63 = *(v2 + v128);
  v64 = *(v2 + v127);
  *(v59 + 48) = v63;
  *(v59 + 56) = v64;
  v65 = *v49;
  *(v59 + 64) = v65;
  v66 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
  v67 = v60;
  v68 = v62;
  v69 = v63;
  v70 = v64;
  v71 = v65;
  v72 = sub_20C13CC54();

  v73 = [v66 initWithArrangedSubviews_];

  [v73 setAlignment_];
  [v73 setAxis_];
  [v73 setTranslatesAutoresizingMaskIntoConstraints_];
  v74 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_stackView;
  *(v2 + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_stackView) = v73;
  [v73 setCustomSpacing:*(v2 + v124) afterView:40.0];
  [*(v2 + v74) setCustomSpacing:*&v61[v2] afterView:25.0];
  [*(v2 + v74) setCustomSpacing:*(v2 + v128) afterView:40.0];
  [*(v2 + v74) setCustomSpacing:*(v2 + v127) afterView:30.0];
  v75 = type metadata accessor for TVSessionWatchDiscoveryView();
  v131.receiver = v2;
  v131.super_class = v75;
  v76 = objc_msgSendSuper2(&v131, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  __swift_project_boxed_opaque_existential_1((v130 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_remoteBrowsingSource), *(v130 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_remoteBrowsingSource + 24));
  v77 = v76;
  v78 = v126;
  sub_20C13B184();
  v79 = sub_20C135174();
  v80 = *(v79 - 8);
  if ((*(v80 + 48))(v78, 1, v79) == 1)
  {
    sub_20B520158(v78, &unk_27C76BC00, &unk_20C1500B0);
LABEL_8:
    v82 = 1;
    goto LABEL_9;
  }

  v81 = sub_20C1350F4();
  (*(v80 + 8))(v78, v79);
  v82 = v81;
  if (v81 == 4)
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_20B59046C(v82, 4u, v132);
  v83 = *&v77[OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_lookingLabel];
  v84 = sub_20C13C914();
  [v83 setText_];

  v85 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_checkLabel;
  v86 = *&v77[OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_checkLabel];
  v87 = sub_20C13C914();
  sub_20B5E5C74(v132);
  [v86 setText_];

  *&v128 = v85;
  [*&v77[v85] setContentMode_];
  [*&v77[v85] setLineBreakMode_];
  [*&v77[v85] setNumberOfLines_];
  v88 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_startStandaloneButton;
  [*&v77[OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_startStandaloneButton] addTarget:v77 action:sel_didTapStartStandaloneButton forControlEvents:0x2000];
  [*&v77[v88] becomeFirstResponder];
  v127 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_spinnerView;
  [*&v77[OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_spinnerView] startAnimating];
  v89 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_stackView;
  v90 = *&v77[OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_stackView];
  v91 = v77;
  [v91 addSubview_];
  v129 = objc_opt_self();
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_20C150060;
  v93 = [*&v77[v89] centerXAnchor];
  v94 = [v91 &selRef_handleMenuButtonTapped + 2];
  v95 = [v93 constraintEqualToAnchor_];

  *(v92 + 32) = v95;
  v96 = [*&v77[v89] centerYAnchor];
  v97 = [v91 centerYAnchor];

  v98 = [v96 constraintEqualToAnchor_];
  *(v92 + 40) = v98;
  v99 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_imageView;
  v100 = [*&v91[OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_imageView] centerXAnchor];
  v101 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_connectingView;
  v102 = [*&v91[OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_connectingView] centerXAnchor];
  v103 = [v100 constraintEqualToAnchor_];

  *(v92 + 48) = v103;
  v104 = [*&v91[v99] centerYAnchor];
  v105 = [*&v91[v101] centerYAnchor];
  v106 = [v104 constraintEqualToAnchor_];

  *(v92 + 56) = v106;
  v107 = v127;
  v108 = [*&v77[v127] centerXAnchor];
  v109 = [*&v91[v99] centerXAnchor];
  v110 = [v108 constraintEqualToAnchor_];

  *(v92 + 64) = v110;
  v111 = [*&v77[v107] bottomAnchor];
  v112 = [*&v91[v99] bottomAnchor];
  v113 = [v111 constraintEqualToAnchor_];

  *(v92 + 72) = v113;
  v114 = [*&v91[v101] heightAnchor];
  v115 = [*&v91[v99] heightAnchor];
  v116 = [v114 constraintEqualToAnchor_];

  *(v92 + 80) = v116;
  v117 = [*&v77[v128] widthAnchor];
  v118 = [v91 widthAnchor];

  v119 = [v117 constraintLessThanOrEqualToAnchor:v118 multiplier:0.5];
  *(v92 + 88) = v119;
  v120 = [*&v91[OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_productPlacementView] widthAnchor];
  v121 = [v120 constraintEqualToConstant_];

  *(v92 + 96) = v121;
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v122 = sub_20C13CC54();

  [v129 activateConstraints_];

  [v91 setAlpha_];
  *(v130 + 40) = &off_2822FE220;
  swift_unknownObjectWeakAssign();

  return v91;
}

void sub_20BFDDBE8()
{
  v1 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_spinnerView;
  v2 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  v3 = v0;
  v40 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_lookingLabel;
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v5 = *MEMORY[0x277D74420];
  v6 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A28] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v8 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_20C14F980;
  v10 = *MEMORY[0x277D74430];
  *(v9 + 32) = *MEMORY[0x277D74430];
  *(v9 + 40) = v5;
  v11 = v8;
  v12 = v10;
  v13 = sub_20B6B134C(v9);

  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
  *(inited + 40) = v13;
  sub_20B6B143C(inited);

  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v14 = sub_20C13C744();

  v15 = [v6 fontDescriptorByAddingAttributes_];

  v16 = objc_opt_self();
  v17 = [v16 fontWithDescriptor:v15 size:0.0];

  [v4 setFont_];
  v18 = objc_opt_self();
  v19 = [v18 labelColor];
  [v4 setTextColor_];

  [v4 setLineBreakMode_];
  [v4 setNumberOfLines_];
  [v4 setTextAlignment_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v3 + v40) = v4;
  v20 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_checkLabel;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v22 = [v16 preferredFontForTextStyle_];
  [v21 setFont_];

  v23 = [v18 labelColor];
  [v21 setTextColor_];

  [v21 setTextAlignment_];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v3 + v20) = v21;
  if (qword_27C7609B8 != -1)
  {
    swift_once();
  }

  v24 = qword_27C79BC30;
  v25 = *algn_27C79BC38;
  v26 = [v16 preferredFontForTextStyle_];
  v27 = _UISolariumEnabled();
  objc_allocWithZone(type metadata accessor for TVButtonTextContentView());

  v28 = TVButtonTextContentView.init(title:)(v24, v25);
  v29 = v28;
  if (v26)
  {
    [*&v28[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel] setFont_];
  }

  v30 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_startStandaloneButton;
  v31 = objc_allocWithZone(type metadata accessor for TVButton());
  v32 = sub_20BB87F6C(v29, v27, 0, v31, 0.0, 0.0, 0.0, 0.0);

  v33 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [*&v32[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setBackgroundColor:v33 forState:8];

  *(v3 + v30) = v32;
  v34 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_imageView;
  v35 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  LODWORD(v36) = 1148846080;
  [v35 setContentCompressionResistancePriority:0 forAxis:v36];
  LODWORD(v37) = 1148846080;
  [v35 setContentCompressionResistancePriority:1 forAxis:v37];
  [v35 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v3 + v34) = v35;
  v38 = OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_connectingView;
  v39 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v39 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v3 + v38) = v39;
  sub_20C13DE24();
  __break(1u);
}

void sub_20BFDE228(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v252 = a4;
  v248 = a2;
  v249 = a3;
  v5 = type metadata accessor for NavigationRequest(0);
  v236 = *(v5 - 8);
  v6 = *(v236 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v237 = &v236 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771990, &unk_20C189150);
  v240 = *(v241 - 8);
  v7 = *(v240 + 64);
  MEMORY[0x28223BE20](v241);
  v238 = &v236 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v239 = &v236 - v9;
  v245 = sub_20C138204();
  v244 = *(v245 - 8);
  MEMORY[0x28223BE20](v245);
  v11 = &v236 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v242 = &v236 - v13;
  MEMORY[0x28223BE20](v14);
  v243 = &v236 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0, &qword_20C1536C0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v236 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7719A0, &qword_20C155D80);
  v246 = *(v19 - 8);
  v247 = v19;
  v20 = *(v246 + 64);
  MEMORY[0x28223BE20](v19);
  v21 = &v236 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v236 - v23;
  v25 = type metadata accessor for NavigationResource(0);
  MEMORY[0x28223BE20](v25);
  v27 = &v236 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = a1;
  sub_20BDC6590(a1, v27, type metadata accessor for NavigationResource);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v148 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763FC0, &unk_20C155B00) + 48);
      v149 = sub_20C1388F4();
      (*(*(v149 - 8) + 8))(&v27[v148], v149);
      v150 = sub_20C132C14();
      goto LABEL_20;
    case 2u:
    case 5u:
      sub_20BFE0938(v27, type metadata accessor for NavigationResource);
      goto LABEL_21;
    case 3u:
      v66 = *v27;
      v67 = *(v27 + 1);
      v68 = *(v27 + 2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080, &unk_20C14F930);
      sub_20C133AA4();
      v69 = v254;
      v70 = type metadata accessor for MarketingEngagementSheetHandler();
      v71 = objc_allocWithZone(v70);
      v72 = &v71[OBJC_IVAR____TtC9SeymourUI31MarketingEngagementSheetHandler_placement];
      *v72 = v67;
      *(v72 + 1) = v68;
      v253.receiver = v71;
      v253.super_class = v70;
      v73 = objc_msgSendSuper2(&v253, sel_init);
      v74 = [objc_allocWithZone(MEMORY[0x277CEE8E0]) initWithRequest:v66 bag:v69 delegate:v73];
      *(swift_allocObject() + 16) = v74;
      sub_20B62BB28();
      sub_20C137CA4();

      swift_unknownObjectRelease();
      return;
    case 4u:
      v179 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7710E0, &unk_20C15F290) + 48);
      v180 = sub_20C1388F4();
      (*(*(v180 - 8) + 8))(&v27[v179], v180);
      v150 = sub_20C1387E4();
      goto LABEL_20;
    case 6u:
      v181 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763FD0, &unk_20C155B10) + 48);
      v182 = sub_20C1388F4();
      (*(*(v182 - 8) + 8))(&v27[v181], v182);
      v150 = sub_20C138894();
LABEL_20:
      (*(*(v150 - 8) + 8))(v27, v150);
LABEL_21:
      sub_20BD28F0C(*v251, v248, v249, v24);
      v183 = swift_allocObject();
      *(v183 + 16) = sub_20BFD8A44;
      *(v183 + 24) = 0;
      v185 = v246;
      v184 = v247;
      (*(v246 + 16))(v21, v24, v247);
      v186 = (*(v185 + 80) + 16) & ~*(v185 + 80);
      v187 = swift_allocObject();
      (*(v185 + 32))(v187 + v186, v21, v184);
      v188 = (v187 + ((v20 + v186 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v188 = sub_20BFDA4D0;
      v188[1] = v183;
      sub_20B62BB28();
      sub_20C137C94();
      (*(v185 + 8))(v24, v184);
      return;
    case 7u:
      v152 = *v27;
      v151 = *(v27 + 1);
      v153 = *v251;
      sub_20B51CC64((v251 + 2), &v254);
      type metadata accessor for CatalogModalityPageDataProvider(0);
      swift_allocObject();

      v154 = sub_20BB9F644(v152, v151, v153);
      sub_20B51CC64(&v254, v258);
      v155 = objc_allocWithZone(type metadata accessor for CatalogModalityDetailViewController());
      v156 = v259;
      v157 = v260;
      v158 = __swift_mutable_project_boxed_opaque_existential_1(v258, v259);
      v159 = MEMORY[0x28223BE20](v158);
      v161 = &v236 - ((v160 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v162 + 16))(v161, v159);
      v163 = sub_20BF9D8F0(v153, v154, v161, v155, v156, v157);

      __swift_destroy_boxed_opaque_existential_1(&v254);
      __swift_destroy_boxed_opaque_existential_1(v258);
      *(swift_allocObject() + 16) = v163;
      sub_20B62BB28();
      goto LABEL_28;
    case 8u:
      v190 = *v27;
      v189 = *(v27 + 1);
      v191 = *v251;
      sub_20B51CC64((v251 + 2), &v254);
      type metadata accessor for CatalogProgramPageDataProvider(0);
      swift_allocObject();

      v192 = sub_20BC94DE8(v190, v189, v191);
      sub_20B51CC64(&v254, v258);
      v193 = objc_allocWithZone(type metadata accessor for CatalogProgramDetailViewController());
      v194 = v259;
      v195 = v260;
      v196 = __swift_mutable_project_boxed_opaque_existential_1(v258, v259);
      v197 = MEMORY[0x28223BE20](v196);
      v199 = &v236 - ((v198 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v200 + 16))(v199, v197);
      v201 = sub_20C0474E4(v191, v192, v199, v193, v194, v195);

      __swift_destroy_boxed_opaque_existential_1(&v254);
      __swift_destroy_boxed_opaque_existential_1(v258);
      *(swift_allocObject() + 16) = v201;
      sub_20B62BB28();
      goto LABEL_28;
    case 9u:
      v232 = sub_20C132C14();
      (*(*(v232 - 8) + 8))(v27, v232);
      goto LABEL_37;
    case 0xAu:
      v64 = v251[1];
      *(swift_allocObject() + 16) = v64;
      sub_20B62BB28();
      v65 = v64;
      sub_20C137CA4();
      return;
    case 0xBu:
      v165 = *v27;
      v164 = *(v27 + 1);
      v166 = *v251;
      sub_20B51CC64((v251 + 2), &v254);
      (*(v244 + 56))(v18, 1, 1, v245);
      type metadata accessor for PlaylistDetailDataProvider(0);
      swift_allocObject();

      v167 = sub_20B7DA994(v165, v164, v166, 0, 0, v18);

      sub_20B51CC64(&v254, v258);
      v168 = objc_allocWithZone(type metadata accessor for PlaylistDetailViewController());
      v169 = v259;
      v170 = v260;
      v171 = __swift_mutable_project_boxed_opaque_existential_1(v258, v259);
      v172 = MEMORY[0x28223BE20](v171);
      v174 = &v236 - ((v173 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v175 + 16))(v174, v172);

      sub_20BF27DF8(v166, v167, 0, 0, v174, v168, v169, v170);
      v177 = v176;
      __swift_destroy_boxed_opaque_existential_1(v258);
      v178 = v177;
      sub_20BF23204(&unk_28228D570);

      __swift_destroy_boxed_opaque_existential_1(&v254);
      *(swift_allocObject() + 16) = v178;
      sub_20B62BB28();
      goto LABEL_28;
    case 0xCu:
      v28 = *v27;
      v29 = *(v27 + 1);
      v30 = *v251;
      sub_20B51CC64((v251 + 2), &v254);
      if (v28)
      {

        v31 = [v28 string];
        v32 = sub_20C13C954();
        v250 = v33;
        v251 = v32;

        if (v29)
        {
LABEL_5:
          v34 = [v29 string];
          v35 = sub_20C13C954();
          v37 = v36;

          goto LABEL_31;
        }
      }

      else
      {

        v250 = 0;
        v251 = 0;
        if (v29)
        {
          goto LABEL_5;
        }
      }

      v35 = 0;
      v37 = 0;
LABEL_31:
      v222 = type metadata accessor for CatalogTipGalleryViewController();
      v224 = *(&v255 + 1);
      v223 = v256;
      v225 = __swift_mutable_project_boxed_opaque_existential_1(&v254, *(&v255 + 1));
      v226 = MEMORY[0x28223BE20](v225);
      v228 = &v236 - ((v227 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v229 + 16))(v228, v226);
      v230 = sub_20B765EDC(v30, v228, v251, v250, v35, v37, v222, v224, v223);

      __swift_destroy_boxed_opaque_existential_1(&v254);
      *(swift_allocObject() + 16) = v230;
      sub_20B62BB28();
      sub_20C137CA4();

LABEL_32:
      return;
    case 0xDu:
      v52 = *v27;
      v51 = *(v27 + 1);
      v53 = *v251;
      sub_20B51CC64((v251 + 2), &v254);
      type metadata accessor for TrainerPageDataProvider(0);
      swift_allocObject();

      v54 = sub_20BF802CC(v52, v51, v53);
      sub_20B51CC64(&v254, v258);
      v55 = objc_allocWithZone(type metadata accessor for TrainerDetailViewController());
      v56 = v259;
      v57 = v260;
      v58 = __swift_mutable_project_boxed_opaque_existential_1(v258, v259);
      v59 = MEMORY[0x28223BE20](v58);
      v61 = &v236 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v62 + 16))(v61, v59);
      v63 = sub_20B8B8F30(v53, v54, v61, v55, v56, v57);

      __swift_destroy_boxed_opaque_existential_1(&v254);
      __swift_destroy_boxed_opaque_existential_1(v258);
      *(swift_allocObject() + 16) = v63;
      sub_20B62BB28();
      goto LABEL_28;
    case 0xEu:
      v231 = type metadata accessor for NavigationResource;
      goto LABEL_35;
    case 0xFu:
      v75 = v244;
      v76 = v243;
      v77 = v245;
      (*(v244 + 32))(v243, v27, v245);
      v78 = *v251;
      sub_20B51CC64((v251 + 2), &v254);
      v79 = *(v75 + 16);
      v80 = v242;
      v79(v242, v76, v77);
      v79(v11, v80, v77);

      v81 = sub_20C1381A4();
      v83 = v82;
      v79(v18, v11, v77);
      (*(v75 + 56))(v18, 0, 1, v77);
      type metadata accessor for PlaylistDetailDataProvider(0);
      swift_allocObject();
      v84 = sub_20B7DA994(v81, v83, v78, 0, 0, v18);

      v85 = *(v75 + 8);
      v85(v11, v77);
      sub_20B51CC64(&v254, v258);
      v86 = objc_allocWithZone(type metadata accessor for PlaylistDetailViewController());
      v87 = v259;
      v88 = v260;
      v89 = __swift_mutable_project_boxed_opaque_existential_1(v258, v259);
      v90 = MEMORY[0x28223BE20](v89);
      v92 = &v236 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v93 + 16))(v92, v90);

      sub_20BF27DF8(v78, v84, 0, 0, v92, v86, v87, v88);
      v95 = v94;
      __swift_destroy_boxed_opaque_existential_1(v258);
      v96 = v95;
      sub_20BF23204(&unk_28228D598);

      v85(v242, v77);
      __swift_destroy_boxed_opaque_existential_1(&v254);
      *(swift_allocObject() + 16) = v96;
      sub_20B62BB28();
      sub_20C137CA4();
      v85(v243, v77);
      return;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_39;
      }

      v203 = *v27;
      v202 = *(v27 + 1);
      v204 = *v251;
      sub_20B51CC64((v251 + 2), &v254);
      type metadata accessor for CatalogWorkoutPageDataProvider(0);
      swift_allocObject();

      v205 = sub_20C114A78(v203, v202, v204);
      sub_20B51CC64(&v254, v258);
      v206 = objc_allocWithZone(type metadata accessor for CatalogWorkoutDetailViewController());
      v207 = v259;
      v208 = v260;
      v209 = __swift_mutable_project_boxed_opaque_existential_1(v258, v259);
      v210 = MEMORY[0x28223BE20](v209);
      v212 = &v236 - ((v211 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v213 + 16))(v212, v210);
      v214 = sub_20BF02044(v204, v205, v212, v206, v207, v208);

      __swift_destroy_boxed_opaque_existential_1(&v254);
      __swift_destroy_boxed_opaque_existential_1(v258);
      *(swift_allocObject() + 16) = v214;
      sub_20B62BB28();
      goto LABEL_28;
    case 0x11u:
      while (1)
      {
        sub_20C13DE24();
        __break(1u);
LABEL_39:
        v231 = type metadata accessor for WorkoutNavigationResource;
LABEL_35:
        sub_20BFE0938(v27, v231);
LABEL_37:
        *&v254 = 0;
        *(&v254 + 1) = 0xE000000000000000;
        sub_20C13DC94();
        v233 = NavigationRequest.description.getter();
        v235 = v234;

        *&v254 = v233;
        *(&v254 + 1) = v235;
        v27 = &v254;
        MEMORY[0x20F2F4230](0xD000000000000022, 0x800000020C1B9EF0);
      }

    case 0x12u:
      v38 = type metadata accessor for AccountViewController(0);
      sub_20B51CC64((v251 + 2), &v254);
      v39 = *(&v255 + 1);
      v40 = v256;
      v41 = __swift_mutable_project_boxed_opaque_existential_1(&v254, *(&v255 + 1));
      v42 = MEMORY[0x28223BE20](v41);
      v44 = &v236 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v45 + 16))(v44, v42);

      v47 = sub_20BB681F0(v46, 0, 0, v44, v38, v39, v40);
      __swift_destroy_boxed_opaque_existential_1(&v254);
      v48 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
      v49 = objc_allocWithZone(type metadata accessor for NotificationSettingsViewController(0));
      v50 = sub_20BFB2120();

      [v48 pushViewController:v50 animated:0];
      *(swift_allocObject() + 16) = v48;
      sub_20B62BB28();
      sub_20C137CA4();

      return;
    case 0x13u:
      v221 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
      *(swift_allocObject() + 16) = v221;
      sub_20B62BB28();
      goto LABEL_28;
    case 0x14u:
      v97 = v250;
      v98 = v237;
      sub_20BDC6590(v250, v237, type metadata accessor for NavigationRequest);
      v99 = v251;
      sub_20BFE0734(v251, &v254);
      v100 = *(v236 + 80);
      v101 = (v100 + 16) & ~v100;
      v102 = swift_allocObject();
      sub_20B75B150(v98, v102 + v101);
      v103 = v102 + ((v6 + v101 + 7) & 0xFFFFFFFFFFFFFFF8);
      v104 = v255;
      *v103 = v254;
      *(v103 + 16) = v104;
      *(v103 + 32) = v256;
      *(v103 + 48) = v257;
      v105 = swift_allocObject();
      *(v105 + 16) = "SeymourUI/NavigationViewControllerFactory.swift";
      *(v105 + 24) = 47;
      *(v105 + 32) = 2;
      *(v105 + 40) = 100;
      *(v105 + 48) = &unk_20C189168;
      *(v105 + 56) = v102;
      sub_20C1353F4();
      v106 = v239;
      sub_20C137C94();
      sub_20BFE0734(v99, &v254);
      sub_20BDC6590(v97, v98, type metadata accessor for NavigationRequest);
      v107 = swift_allocObject();
      v108 = v255;
      *(v107 + 16) = v254;
      *(v107 + 32) = v108;
      *(v107 + 48) = v256;
      *(v107 + 64) = v257;
      sub_20B75B150(v98, v107 + ((v100 + 72) & ~v100));
      v109 = v240;
      v110 = v238;
      v111 = v241;
      (*(v240 + 16))(v238, v106, v241);
      v112 = (*(v109 + 80) + 16) & ~*(v109 + 80);
      v113 = swift_allocObject();
      (*(v109 + 32))(v113 + v112, v110, v111);
      v114 = (v113 + ((v7 + v112 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v114 = sub_20BFE088C;
      v114[1] = v107;
      sub_20B62BB28();
      sub_20C137C94();
      (*(v109 + 8))(v106, v111);
      return;
    case 0x15u:
      v129 = type metadata accessor for WorkoutPlanSurveyViewController();
      sub_20B51CC64((v251 + 2), &v254);
      v130 = *(&v255 + 1);
      v131 = v256;
      v132 = __swift_mutable_project_boxed_opaque_existential_1(&v254, *(&v255 + 1));

      v28 = sub_20C08BEC0(v133, 0, 0, v132, v129, v130, v131);

      __swift_destroy_boxed_opaque_existential_1(&v254);
      v134 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
      *(swift_allocObject() + 16) = v134;
      sub_20B62BB28();
      sub_20C137CA4();
      goto LABEL_32;
    case 0x16u:
      v215 = type metadata accessor for WorkoutPlanScheduleViewController();
      sub_20B51CC64((v251 + 2), &v254);
      v216 = *(&v255 + 1);
      v217 = v256;
      v218 = __swift_mutable_project_boxed_opaque_existential_1(&v254, *(&v255 + 1));

      v220 = sub_20BC67B50(v219, 0, 0, 0, v218, v215, v216, v217);

      __swift_destroy_boxed_opaque_existential_1(&v254);
      *(swift_allocObject() + 16) = v220;
      sub_20B62BB28();
      goto LABEL_28;
    case 0x17u:
      v115 = v251;
      v116 = *v251;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
      sub_20C133AA4();
      v117 = type metadata accessor for WorkoutPlanGalleryViewController();
      sub_20B51CC64((v115 + 2), v258);
      __swift_project_boxed_opaque_existential_1(&v254, *(&v255 + 1));

      v118 = sub_20C138D34();
      v120 = v119;
      v121 = v259;
      v122 = v260;
      v123 = __swift_mutable_project_boxed_opaque_existential_1(v258, v259);
      v124 = MEMORY[0x28223BE20](v123);
      v126 = &v236 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v127 + 16))(v126, v124);
      v128 = sub_20BC5F048(v116, v126, v118, v120, v117, v121, v122);

      __swift_destroy_boxed_opaque_existential_1(v258);
      *(swift_allocObject() + 16) = v128;
      sub_20B62BB28();
      sub_20C137CA4();
      __swift_destroy_boxed_opaque_existential_1(&v254);
      return;
    default:
      v136 = *v27;
      v135 = *(v27 + 1);
      v137 = *v251;
      sub_20B51CC64((v251 + 2), &v254);
      type metadata accessor for CatalogEditorialCollectionPageDataProvider(0);
      swift_allocObject();

      v138 = sub_20BF68BB0(v136, v135, v137);
      sub_20B51CC64(&v254, v258);
      v139 = objc_allocWithZone(type metadata accessor for CatalogEditorialCollectionDetailViewController());
      v140 = v259;
      v141 = v260;
      v142 = __swift_mutable_project_boxed_opaque_existential_1(v258, v259);
      v143 = MEMORY[0x28223BE20](v142);
      v145 = &v236 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v146 + 16))(v145, v143);
      v147 = sub_20BD18EA0(v137, v138, v145, v139, v140, v141);

      __swift_destroy_boxed_opaque_existential_1(&v254);
      __swift_destroy_boxed_opaque_existential_1(v258);
      *(swift_allocObject() + 16) = v147;
      sub_20B62BB28();
LABEL_28:
      sub_20C137CA4();
      return;
  }
}

uint64_t sub_20BFE0118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_20BFE013C, 0, 0);
}

uint64_t sub_20BFE013C()
{
  v1 = **(v0 + 32);
  type metadata accessor for NavigationRequest(0);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_20B90C5E8;
  v3 = *(v0 + 16);

  return sub_20BD2C744(v3, v1);
}

uint64_t sub_20BFE01F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = a4;
  v7 = type metadata accessor for NavigationRequest(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = sub_20C1353F4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_20BFE0734(a2, v20);
  (*(v11 + 16))(&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  sub_20BDC6590(a3, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
  v13 = (*(v11 + 80) + 72) & ~*(v11 + 80);
  v14 = (v12 + *(v8 + 80) + v13) & ~*(v8 + 80);
  v15 = swift_allocObject();
  v16 = v20[1];
  *(v15 + 16) = v20[0];
  *(v15 + 32) = v16;
  *(v15 + 48) = v20[2];
  *(v15 + 64) = v21;
  (*(v11 + 32))(v15 + v13, &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  sub_20B75B150(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v17 = swift_allocObject();
  *(v17 + 16) = "SeymourUI/NavigationViewControllerFactory.swift";
  *(v17 + 24) = 47;
  *(v17 + 32) = 2;
  *(v17 + 40) = 107;
  *(v17 + 48) = &unk_20C189178;
  *(v17 + 56) = v15;
  sub_20B62BB28();
  return sub_20C137C94();
}

uint64_t sub_20BFE0470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_20C1353F4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BFE0534, 0, 0);
}

uint64_t sub_20BFE0534()
{
  sub_20C13CDA4();
  *(v0 + 64) = sub_20C13CD94();
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BFE05C8, v2, v1);
}

uint64_t sub_20BFE05C8()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];

  (*(v3 + 16))(v1, v4, v2);
  v5 = objc_allocWithZone(type metadata accessor for WorkoutPlanCompletionViewController(0));

  v7 = sub_20C1058BC(v6, v1, 1, 1, 0, 0);
  v0[9] = v7;

  [v7 setModalPresentationStyle_];

  return MEMORY[0x2822009F8](sub_20BFE06C0, 0, 0);
}

uint64_t sub_20BFE06C0()
{
  **(v0 + 16) = *(v0 + 72);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BFE076C(uint64_t a1)
{
  v4 = *(type metadata accessor for NavigationRequest(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20BFE0118(a1, v1 + v5, v1 + v6);
}

uint64_t sub_20BFE088C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NavigationRequest(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 72) & ~*(v5 + 80));

  return sub_20BFE01F4(a1, v2 + 16, v6, a2);
}

uint64_t sub_20BFE0938(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BFE09C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20BFE0A88(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20C1353F4() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  type metadata accessor for NavigationRequest(0);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20B52AC14;

  return sub_20BFE0470(a1, v1 + 16, v1 + v6);
}

void sub_20BFE0BFC(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  sub_20C13B564();
  sub_20C13BB64();
  v13 = *(v7 + 8);
  v13(v12, v6);
  v14 = *&v3[OBJC_IVAR____TtC9SeymourUI21SessionViewController_onDismiss];
  if (v14)
  {
    v15 = *&v3[OBJC_IVAR____TtC9SeymourUI21SessionViewController_onDismiss + 8];
    v16 = *&v3[OBJC_IVAR____TtC9SeymourUI21SessionViewController_introSequenceView];

    [v16 removeFromSuperview];
    [*&v3[OBJC_IVAR____TtC9SeymourUI21SessionViewController_backgroundView] removeFromSuperview];
    [*&v3[OBJC_IVAR____TtC9SeymourUI21SessionViewController_instructionsView] removeFromSuperview];
    [*&v3[OBJC_IVAR____TtC9SeymourUI21SessionViewController_heartRateDiscoveryView] removeFromSuperview];
    [*&v3[OBJC_IVAR____TtC9SeymourUI21SessionViewController_watchDiscoveryView] removeFromSuperview];
    v3[OBJC_IVAR____TtC9SeymourUI21SessionViewController_introSequenceCompleted] = 1;
    [v3 setNeedsUpdateOfHomeIndicatorAutoHidden];
    v17 = *&v3[OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32];
    ObjectType = swift_getObjectType();
    v19 = (*(v17 + 248))(ObjectType, v17);
    v20 = v14(v19);
    if (a1)
    {
      a1(v20);
    }

    sub_20B583ECC(v14, v15);
  }

  else
  {
    v21 = [v3 parentViewController];
    if (v21)
    {
      v22 = v21;
      do
      {
        v23 = [v22 parentViewController];

        v22 = v23;
      }

      while (v23);
    }

    v24 = [v3 presentedViewController];
    if (v24)
    {

      v25 = [v3 presentingViewController];
    }

    else
    {
      v25 = v3;
    }

    v26 = v25;
    sub_20C13B564();
    v27 = v26;
    v28 = sub_20C13BB74();
    v29 = sub_20C13D1F4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v42 = a2;
      v31 = v30;
      v32 = swift_slowAlloc();
      v41 = a1;
      v33 = v32;
      *v31 = 138412290;
      *(v31 + 4) = v27;
      *v32 = v27;
      v34 = v27;
      _os_log_impl(&dword_20B517000, v28, v29, "Presenting View Controller: %@", v31, 0xCu);
      sub_20B520158(v33, &unk_27C762E30, &unk_20C150580);
      v35 = v33;
      a1 = v41;
      MEMORY[0x20F2F6A40](v35, -1, -1);
      v36 = v31;
      a2 = v42;
      MEMORY[0x20F2F6A40](v36, -1, -1);
    }

    v13(v9, v6);
    if (v27)
    {
      v37 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v38 = swift_allocObject();
      v38[2] = v37;
      v38[3] = a1;
      v38[4] = a2;
      aBlock[4] = sub_20BFE90CC;
      aBlock[5] = v38;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20B7B548C;
      aBlock[3] = &block_descriptor_30_1;
      v39 = _Block_copy(aBlock);
      v40 = v27;
      sub_20B584050(a1, a2);

      [v40 dismissViewControllerAnimated:1 completion:v39];

      _Block_release(v39);
    }
  }
}

char *SessionViewController.__allocating_init(dependencies:configuration:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for WorkoutSessionConfiguration(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20BDDD2B4(a2, v7);

  v9 = sub_20B9C04B4(v8, v7);
  v10 = objc_allocWithZone(v2);
  v11 = sub_20BFE1644(a1, v9, 0, 0, 0, 0);
  sub_20BDDD350(a2);
  return v11;
}

double SessionViewController.pictureInPictureSurrogate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_pictureInPictureSurrogate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*SessionViewController.pictureInPictureSurrogate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9SeymourUI21SessionViewController_pictureInPictureSurrogate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_20B8DD284;
}

void *SessionViewController.childForStatusBarStyle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay);
  v2 = v1;
  return v1;
}

uint64_t SessionViewController.supportedInterfaceOrientations.getter()
{
  v1 = sub_20C1344C4();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_platform) == 1)
  {
    return 30;
  }

  if (*(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_platform))
  {
    return 24;
  }

  v7 = v3;
  (*(v2 + 16))(v6, *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_presenter) + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_catalogWorkout, v3, v4);
  v8 = sub_20C1344B4();
  v10 = v9;
  v12 = v11;
  (*(v2 + 8))(v6, v7);
  if ((v12 & 1) == 0)
  {
    sub_20B583F4C(v8, v10, 0);
    return 24;
  }

  if ((v8 & 0xFE) != 0)
  {
    return 24;
  }

  else
  {
    return 2;
  }
}

char *sub_20BFE1644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v155 = a6;
  v154 = a5;
  v156 = a4;
  v158 = a1;
  ObjectType = swift_getObjectType();
  v150 = sub_20C13BB84();
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v147 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_20C137254();
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v153 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v163 = sub_20C1344C4();
  v12 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v14 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_miniPlayerHost + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_pictureInPictureSurrogate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_introSequenceCompleted) = 0;
  v144 = OBJC_IVAR____TtC9SeymourUI21SessionViewController_bufferView;
  *(v6 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_bufferView) = 0;
  v145 = OBJC_IVAR____TtC9SeymourUI21SessionViewController_overlayView;
  *(v6 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_overlayView) = 0;
  *(v6 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_menuGestureRecognizer) = 0;
  v15 = (v6 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_onDismiss);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v6 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_onPresentSummary);
  *v16 = 0;
  v16[1] = 0;
  *(v6 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_overlayConstraints) = 0;
  sub_20C133AA4();
  v162 = OBJC_IVAR____TtC9SeymourUI21SessionViewController_platform;
  *(v6 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_platform) = v170;
  v17 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v18 = [objc_opt_self() clearColor];
  [v17 setBackgroundColor_];

  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v7 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_sessionContainer) = v17;
  v19 = OBJC_IVAR____TtC9SeymourUI21SessionViewController_presenter;
  v20 = a2;
  *(v7 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_presenter) = a2;
  v21 = *v15;
  v22 = v15[1];
  v23 = a3;
  *v15 = a3;
  v24 = v156;
  v15[1] = v156;
  v159 = v20;

  v148 = v23;
  sub_20B584050(v23, v24);
  sub_20B583ECC(v21, v22);
  v25 = *v16;
  v26 = v16[1];
  v27 = v154;
  v28 = v155;
  *v16 = v154;
  v16[1] = v28;
  sub_20B584050(v27, v28);
  sub_20B583ECC(v25, v26);
  v29 = v163;
  (*(v12 + 16))(v14, *(v7 + v19) + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_catalogWorkout, v163);
  v30 = sub_20C1344B4();
  v164 = v31;
  v165 = v30;
  LODWORD(v15) = v32;
  (*(v12 + 8))(v14, v29);
  v33 = *(v7 + v19);
  v34 = *(v160 + 16);
  *&v143 = OBJC_IVAR____TtC9SeymourUI21SessionViewController_activityTypeBehavior;
  v152 = v160 + 16;
  v151 = v34;
  v34((v7 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_activityTypeBehavior), v33 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_activityTypeBehavior, v161);
  v163 = *(v33 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_eventHub);
  *&v142 = v7 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_eventHub;
  *v142 = v163;
  sub_20C0134C0(*(v7 + v162), &v170);
  v35 = v171;
  v36 = v172;
  __swift_project_boxed_opaque_existential_1(&v170, v171);
  v37 = *(v36 + 88);
  swift_unknownObjectRetain();

  v39 = v37(v38, v35, v36);

  [v39 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v7 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_continueOnWatchView) = v39;
  v40 = *(*(v7 + v19) + 80);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  v41 = objc_allocWithZone(type metadata accessor for SessionIntroSequenceView());
  v42 = sub_20BB98514(v40, v168);
  [v42 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v7 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_introSequenceView) = v42;
  v43 = v171;
  v44 = v172;
  __swift_project_boxed_opaque_existential_1(&v170, v171);
  v157 = v19;
  *&v163 = v7;
  v45 = *(v44 + 24);

  LODWORD(v162) = v15;
  v47 = v45(v46, v165, v164, v15 & 1, v43, v44);

  if (v47)
  {
    [v47 &selRef_count + 2];
  }

  v48 = v163;
  *(v163 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_instructionsView) = v47;
  v49 = v171;
  v50 = v172;
  __swift_project_boxed_opaque_existential_1(&v170, v171);
  v51 = v157;
  v52 = *(v50 + 96);

  v54 = v52(v53, v49, v50);

  [v54 &selRef_count + 2];
  *(v48 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_ongoingWorkoutDetectedView) = v54;
  v55 = v171;
  v56 = v172;
  __swift_project_boxed_opaque_existential_1(&v170, v171);
  v57 = *(v56 + 8);

  v59 = v57(v58, v55, v56);

  [v59 &selRef_count + 2];
  *(v48 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_heartRateDiscoveryView) = v59;
  v60 = v171;
  v61 = v172;
  __swift_project_boxed_opaque_existential_1(&v170, v171);
  v62 = *(v61 + 16);

  v64 = v62(v63, v60, v61);

  [v64 &selRef_count + 2];
  *(v48 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_watchDiscoveryView) = v64;
  v66 = v171;
  v65 = v172;
  __swift_project_boxed_opaque_existential_1(&v170, v171);
  v67 = *(*(v48 + v51) + 144);
  v68 = v153;
  v69 = v161;
  v151(v153, v48 + v143, v161);
  v70 = *v142;
  v71 = *(v142 + 8);

  swift_unknownObjectRetain();
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();
  v72 = (*(v65 + 40))(v67, v68, v70, v71, v168, &v167, v66, v65);
  v74 = v73;

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v167);
  __swift_destroy_boxed_opaque_existential_1(v168);
  v75 = *(v160 + 8);
  v160 += 8;
  v141 = v75;
  v75(v68, v69);
  v76 = (v48 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_summaryViewController);
  *v76 = v72;
  v76[1] = v74;
  type metadata accessor for TransportBarControlsCoordinator();
  v77 = swift_allocObject();
  v77[2] = 0;
  v77[3] = 0;
  v77[4] = &unk_282287F80;
  v77[5] = sub_20B6B3124(MEMORY[0x277D84F90]);
  v78 = v171;
  v79 = v172;
  __swift_project_boxed_opaque_existential_1(&v170, v171);
  v80 = v159;
  v81 = *(v159 + 104);
  v82 = *(v79 + 120);
  v83 = swift_unknownObjectRetain();
  v82(v168, v83, v81, v77, v165, v164, v162 & 1, v78, v79);
  v84 = v169;
  v143 = v168[0];
  v142 = v168[1];
  swift_unknownObjectRelease();
  v85 = v48 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay;
  v86 = v142;
  *v85 = v143;
  *(v85 + 16) = v86;
  *(v85 + 32) = v84;
  *(*(v80 + 120) + 24) = v86;
  swift_unknownObjectWeakAssign();
  v87 = *(v80 + 112);
  if (v87)
  {
    *(v87 + 24) = *(v85 + 8);
    swift_unknownObjectWeakAssign();
  }

  *(*(v159 + 128) + 24) = *(v85 + 24);
  swift_unknownObjectWeakAssign();
  v88 = v171;
  v89 = v172;
  __swift_project_boxed_opaque_existential_1(&v170, v171);
  v90 = v163;
  v91 = *(v89 + 32);

  *&v143 = v77;
  v93 = v77;
  v94 = v164;
  v95 = v165;
  v96 = v91(v92, v93, v165, v164, v162 & 1, v88, v89);
  v98 = v97;

  v99 = (v90 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_displayPreferencesViewController);
  *v99 = v96;
  v99[1] = v98;
  v100 = v171;
  v101 = v172;
  __swift_project_boxed_opaque_existential_1(&v170, v171);
  v102 = *(v101 + 80);
  *&v142 = v96;

  v104 = v102(v103, v95, v94, v162 & 1, v100, v101);

  if (v104)
  {
    [v104 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  v105 = v163;
  *(v163 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_backgroundView) = v104;
  v106 = v172;
  __swift_project_boxed_opaque_existential_1(&v170, v171);
  v107 = v157;
  v108 = *(v106 + 104);
  v109 = *(*(v105 + v157) + 40);
  v110 = v108();

  if (v110)
  {
    [v110 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  v111 = v163;
  v112 = *(v163 + v144);
  *(v163 + v144) = v110;

  v113 = v172;
  __swift_project_boxed_opaque_existential_1(&v170, v171);
  v114 = *(v113 + 112);
  v115 = *(*(v111 + v107) + 48);
  v116 = v114();

  if (v116)
  {
    [v116 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  v117 = v163;
  *(v163 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_castingView) = v116;
  v118 = v171;
  v119 = v172;
  __swift_project_boxed_opaque_existential_1(&v170, v171);
  v120 = v153;
  v151(v153, *(v117 + v107) + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_activityTypeBehavior, v161);
  v121 = *(v119 + 128);

  v123 = v162;
  v125 = v164;
  v124 = v165;
  v126 = v121(v122, v120, v165, v164, v162 & 1, v118, v119);

  sub_20B583F4C(v124, v125, v123 & 1);
  v141(v120, v161);
  if (v126)
  {
    [v126 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  v127 = v163;
  v128 = *(v163 + v145);
  *(v163 + v145) = v126;

  v166.receiver = v127;
  v166.super_class = ObjectType;
  v129 = objc_msgSendSuper2(&v166, sel_initWithNibName_bundle_, 0, 0);
  *(*&v129[OBJC_IVAR____TtC9SeymourUI21SessionViewController_presenter] + 24) = &off_2822FE880;
  swift_unknownObjectWeakAssign();
  v130 = *&v129[OBJC_IVAR____TtC9SeymourUI21SessionViewController_overlayView];
  v131 = v147;
  v132 = v129;
  if (v130)
  {
    [v130 setAlpha_];
  }

  sub_20C13B564();
  v133 = v129;
  v134 = sub_20C13BB74();
  v135 = sub_20C13D1F4();

  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    *v136 = 138543362;
    *(v136 + 4) = v133;
    *v137 = v129;
    v138 = v133;
    _os_log_impl(&dword_20B517000, v134, v135, "New SessionViewController: %{public}@", v136, 0xCu);
    sub_20B520158(v137, &unk_27C762E30, &unk_20C150580);
    MEMORY[0x20F2F6A40](v137, -1, -1);
    MEMORY[0x20F2F6A40](v136, -1, -1);

    sub_20B583ECC(v154, v155);
    sub_20B583ECC(v148, v156);
  }

  else
  {

    sub_20B583ECC(v154, v155);
    sub_20B583ECC(v148, v156);
  }

  (*(v149 + 8))(v131, v150);
  __swift_destroy_boxed_opaque_existential_1(&v170);
  return v133;
}

id SessionViewController.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B564();
  v7 = v1;
  v8 = sub_20C13BB74();
  v9 = sub_20C13D1F4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_20B517000, v8, v9, "Cleaning up SessionViewController: %{public}@", v10, 0xCu);
    sub_20B520158(v11, &unk_27C762E30, &unk_20C150580);
    MEMORY[0x20F2F6A40](v11, -1, -1);
    MEMORY[0x20F2F6A40](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v13 = *&v7[OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay];
  v14 = *&v7[OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32];
  v15 = swift_getObjectType();
  v16 = *(v14 + 248);
  v17 = v13;
  v16(v15, v14);

  v19.receiver = v7;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, sel_dealloc);
}

uint64_t SessionViewController.preferredFocusEnvironments.getter()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI21SessionViewController_instructionsView];
  if (v1)
  {
    v2 = v1;
    [v2 alpha];
    if (v3 > 0.0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
      result = swift_allocObject();
      *(result + 16) = xmmword_20C14F580;
      *(result + 32) = v2;
      return result;
    }
  }

  v5 = *&v0[OBJC_IVAR____TtC9SeymourUI21SessionViewController_watchDiscoveryView];
  [v5 alpha];
  if (v6 > 0.0 || (v5 = *&v0[OBJC_IVAR____TtC9SeymourUI21SessionViewController_heartRateDiscoveryView], [v5 alpha], v7 > 0.0) || (v5 = *&v0[OBJC_IVAR____TtC9SeymourUI21SessionViewController_summaryViewController], (v8 = objc_msgSend(v5, sel_parentViewController)) != 0) && (v9 = v8, sub_20B51C88C(0, &qword_281100550, 0x277D75D28), v10 = v0, v11 = sub_20C13D5F4(), v10, v9, (v11 & 1) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_20C14F580;
    *(v12 + 32) = v5;
    v13 = v5;
    return v12;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_20C14F580;
    v15 = *&v0[OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay];
    *(v14 + 32) = v15;
    v16 = v15;
    return v14;
  }
}

Swift::Void __swiftcall SessionViewController.viewDidLoad()()
{
  v1 = v0;
  v40.receiver = v0;
  v40.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v40, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v3 = v2;
  v4 = sub_20C138104();
  v5 = sub_20C138104();
  v6 = objc_opt_self();
  v7 = &selRef_clearColor;
  if (v4 != v5)
  {
    v7 = &selRef_blackColor;
  }

  v8 = [v6 *v7];
  [v3 setBackgroundColor_];

  v9 = [v1 view];
  if (!v9)
  {
    goto LABEL_28;
  }

  v10 = v9;
  v11 = *&v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_sessionContainer];
  [v9 addSubview_];

  v12 = *&v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay];
  v13 = *&v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32];
  ObjectType = swift_getObjectType();
  [v1 addChildViewController_];
  v15 = [v12 view];
  if (!v15)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v16 = v15;
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];

  v17 = [v12 view];
  if (!v17)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v18 = v17;
  [v11 addSubview_];

  [v12 didMoveToParentViewController_];
  v19 = *(v13 + 32);
  v20 = swift_unknownObjectRetain();
  v19(v20, ObjectType, v13);
  v21 = *&v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_overlayView];
  if (v21)
  {
    type metadata accessor for SessionOverlayView();
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      v23 = v22;
      v24 = *(v13 + 256);
      v25 = v21;
      v24(v23, ObjectType, v13);
    }
  }

  v26 = sub_20C138104();
  if (v26 == sub_20C138104())
  {
    if (*&v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_backgroundView])
    {
      [v11 addSubview_];
    }

    if (*&v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_instructionsView])
    {
      [v11 addSubview_];
    }
  }

  else
  {
    v27 = (*(v13 + 8))(ObjectType, v13);
    if (v27)
    {
      v28 = v27;
      v29 = *&v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_backgroundView];
      if (v29)
      {
        v30 = v29;
        [v28 addSubview_];
      }
    }

    v31 = (*(v13 + 16))(ObjectType, v13);
    if (v31)
    {
      v32 = v31;
      v33 = *&v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_instructionsView];
      if (v33)
      {
        v34 = v33;
        [v32 addSubview_];
      }
    }
  }

  [v11 addSubview_];
  [v11 addSubview_];
  [v11 addSubview_];
  [v11 addSubview_];
  if (*&v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_bufferView])
  {
    [v11 addSubview_];
  }

  [v11 addSubview_];
  sub_20BFE31BC();
  v35 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v1 action:sel_menuButtonTapped];
  sub_20C13DD64();
  sub_20C13D014();
  sub_20C13DD34();
  sub_20C13DD74();
  sub_20C13DD84();
  sub_20C13DD44();
  sub_20B51C88C(0, &qword_27C765490, 0x277CCABB0);
  v36 = sub_20C13CC54();

  [v35 setAllowedPressTypes_];

  v37 = [v1 view];
  if (v37)
  {
    v38 = v37;
    [v37 addGestureRecognizer_];

    v39 = *&v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_menuGestureRecognizer];
    *&v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_menuGestureRecognizer] = v35;

    sub_20BBE28F8();
    return;
  }

LABEL_31:
  __break(1u);
}

void sub_20BFE31BC()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI21SessionViewController_sessionContainer];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_23;
  }

  v3 = v2;
  v4 = *MEMORY[0x277D768C8];
  v5 = *(MEMORY[0x277D768C8] + 8);
  v7 = *(MEMORY[0x277D768C8] + 16);
  v6 = *(MEMORY[0x277D768C8] + 24);
  v8 = [v1 leadingAnchor];
  v9 = [v3 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:v5];

  LODWORD(v11) = 1148846080;
  [v10 setPriority_];
  v12 = v10;
  v13 = [v1 trailingAnchor];
  v14 = [v3 trailingAnchor];
  v15 = -v6;
  v16 = [v13 constraintEqualToAnchor:v14 constant:v15];

  LODWORD(v17) = 1148846080;
  [v16 setPriority_];
  v18 = v16;
  v19 = [v1 topAnchor];
  v20 = [v3 topAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:v4];

  LODWORD(v22) = 1148846080;
  [v21 setPriority_];
  v23 = [v1 bottomAnchor];
  v24 = [v3 bottomAnchor];
  v25 = -v7;
  v26 = [v23 constraintEqualToAnchor:v24 constant:v25];

  LODWORD(v27) = 1148846080;
  [v26 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_20C14FE90;
  *(v28 + 32) = v12;
  *(v28 + 40) = v18;
  *(v28 + 48) = v21;
  *(v28 + 56) = v26;
  v188 = v28;
  v29 = v21;

  v30 = [*(v189 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay) view];
  if (!v30)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v31 = v30;
  v32 = [v30 leadingAnchor];
  v33 = [v1 leadingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:v5];

  LODWORD(v35) = 1148846080;
  [v34 setPriority_];
  v36 = v34;
  v37 = [v31 trailingAnchor];
  v38 = [v1 trailingAnchor];
  v39 = [v37 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v40) = 1148846080;
  [v39 setPriority_];
  v41 = v39;
  v42 = [v31 topAnchor];
  v43 = [v1 topAnchor];
  v44 = [v42 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v45) = 1148846080;
  [v44 setPriority_];
  v46 = [v31 bottomAnchor];
  v47 = [v1 bottomAnchor];
  v48 = [v46 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v49) = 1148846080;
  [v48 setPriority_];
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_20C14FE90;
  *(v50 + 32) = v36;
  *(v50 + 40) = v41;
  *(v50 + 48) = v44;
  *(v50 + 56) = v48;
  v187 = v50;
  v51 = v44;

  v52 = *(v189 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_bufferView);
  if (v52)
  {
    v53 = v52;
    v54 = [v53 leadingAnchor];
    v55 = [v1 leadingAnchor];
    v56 = [v54 constraintEqualToAnchor:v55 constant:v5];

    LODWORD(v57) = 1148846080;
    [v56 &selRef_meterUnit];
    v58 = v56;
    v59 = [v53 trailingAnchor];
    v60 = [v1 trailingAnchor];
    v61 = [v59 constraintEqualToAnchor:v60 constant:v15];

    LODWORD(v62) = 1148846080;
    [v61 &selRef_meterUnit];
    v63 = v61;
    v64 = [v53 topAnchor];
    v65 = [v1 topAnchor];
    v66 = [v64 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v67) = 1148846080;
    [v66 &selRef_meterUnit];
    v68 = [v53 bottomAnchor];
    v69 = [v1 bottomAnchor];
    v70 = [v68 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v71) = 1148846080;
    [v70 &selRef_meterUnit];
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_20C14FE90;
    *(v72 + 32) = v58;
    *(v72 + 40) = v63;
    *(v72 + 48) = v66;
    *(v72 + 56) = v70;
    v186 = v72;
    v73 = v66;
  }

  else
  {
    v186 = MEMORY[0x277D84F90];
  }

  v74 = *(v189 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_heartRateDiscoveryView);
  v75 = [v74 superview];
  if (v75)
  {

    v76 = [v74 leadingAnchor];
    v77 = [v1 leadingAnchor];
    v78 = [v76 constraintEqualToAnchor:v77 constant:v5];

    LODWORD(v79) = 1148846080;
    [v78 setPriority_];
    v183 = v78;
    v80 = [v74 trailingAnchor];
    v81 = [v1 trailingAnchor];
    v82 = [v80 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v83) = 1148846080;
    [v82 &selRef_meterUnit];
    v84 = v82;
    v85 = [v74 topAnchor];
    v86 = [v1 topAnchor];
    v87 = [v85 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v88) = 1148846080;
    [v87 &selRef_meterUnit];
    v89 = [v74 bottomAnchor];
    v90 = [v1 bottomAnchor];
    v91 = [v89 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v92) = 1148846080;
    [v91 &selRef_meterUnit];
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_20C14FE90;
    *(v93 + 32) = v183;
    *(v93 + 40) = v84;
    *(v93 + 48) = v87;
    *(v93 + 56) = v91;
    v185 = v93;
  }

  else
  {
    v185 = MEMORY[0x277D84F90];
  }

  v94 = *(v189 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_watchDiscoveryView);
  v95 = [v94 superview];
  if (v95)
  {

    v96 = [v94 leadingAnchor];
    v97 = [v1 leadingAnchor];
    v98 = [v96 constraintEqualToAnchor:v97 constant:v5];

    LODWORD(v99) = 1148846080;
    [v98 setPriority_];
    v100 = v98;
    v101 = [v94 trailingAnchor];
    v102 = [v1 trailingAnchor];
    v103 = [v101 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v104) = 1148846080;
    [v103 setPriority_];
    v105 = v103;
    v106 = [v94 topAnchor];
    v107 = [v1 topAnchor];
    v108 = [v106 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v109) = 1148846080;
    [v108 setPriority_];
    v110 = [v94 bottomAnchor];
    v111 = [v1 bottomAnchor];
    v112 = [v110 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v113) = 1148846080;
    [v112 setPriority_];
    v114 = swift_allocObject();
    *(v114 + 16) = xmmword_20C14FE90;
    *(v114 + 32) = v100;
    *(v114 + 40) = v105;
    *(v114 + 48) = v108;
    *(v114 + 56) = v112;
    v184 = v114;
  }

  else
  {
    v184 = MEMORY[0x277D84F90];
  }

  v115 = *(v189 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_continueOnWatchView);
  v116 = [v115 superview];
  if (v116)
  {

    v117 = [v115 leadingAnchor];
    v118 = [v1 leadingAnchor];
    v119 = [v117 constraintEqualToAnchor:v118 constant:v5];

    LODWORD(v120) = 1148846080;
    [v119 setPriority_];
    v121 = v119;
    v122 = [v115 trailingAnchor];
    v123 = [v1 trailingAnchor];
    v124 = [v122 constraintEqualToAnchor:v123 constant:v15];

    LODWORD(v125) = 1148846080;
    [v124 setPriority_];
    v126 = v124;
    v127 = [v115 topAnchor];
    v128 = [v1 topAnchor];
    v129 = [v127 constraintEqualToAnchor:v128 constant:v4];

    LODWORD(v130) = 1148846080;
    [v129 setPriority_];
    v131 = [v115 bottomAnchor];
    v132 = [v1 bottomAnchor];
    v133 = [v131 constraintEqualToAnchor:v132 constant:v25];

    LODWORD(v134) = 1148846080;
    [v133 &selRef_meterUnit];
    v135 = swift_allocObject();
    *(v135 + 16) = xmmword_20C14FE90;
    *(v135 + 32) = v121;
    *(v135 + 40) = v126;
    *(v135 + 48) = v129;
    *(v135 + 56) = v133;
    v182 = v135;
  }

  else
  {
    v182 = MEMORY[0x277D84F90];
  }

  v136 = [v115 superview];
  if (v136)
  {

    v137 = v189;
    v138 = *(v189 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_ongoingWorkoutDetectedView);
    v139 = [v138 leadingAnchor];
    v140 = [v1 leadingAnchor];
    v141 = [v139 constraintEqualToAnchor:v140 constant:v5];

    LODWORD(v142) = 1148846080;
    [v141 setPriority_];
    v143 = v141;
    v144 = [v138 trailingAnchor];
    v145 = [v1 trailingAnchor];
    v146 = [v144 constraintEqualToAnchor:v145 constant:v15];

    LODWORD(v147) = 1148846080;
    [v146 setPriority_];
    v148 = v146;
    v149 = [v138 topAnchor];
    v150 = [v1 topAnchor];
    v151 = [v149 constraintEqualToAnchor:v150 constant:v4];

    LODWORD(v152) = 1148846080;
    [v151 setPriority_];
    v153 = [v138 bottomAnchor];
    v154 = [v1 bottomAnchor];
    v155 = [v153 constraintEqualToAnchor:v154 constant:v25];

    LODWORD(v156) = 1148846080;
    [v155 setPriority_];
    v157 = swift_allocObject();
    *(v157 + 16) = xmmword_20C14FE90;
    *(v157 + 32) = v143;
    *(v157 + 40) = v148;
    *(v157 + 48) = v151;
    *(v157 + 56) = v155;
  }

  else
  {
    v157 = MEMORY[0x277D84F90];
    v137 = v189;
  }

  v158 = *(v137 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_introSequenceView);
  v159 = [v158 superview];
  if (v159)
  {

    v160 = [v158 leadingAnchor];
    v161 = [v1 leadingAnchor];
    v162 = [v160 constraintEqualToAnchor:v161 constant:v5];

    LODWORD(v163) = 1148846080;
    [v162 setPriority_];
    v164 = v162;
    v165 = [v158 trailingAnchor];
    v166 = [v1 trailingAnchor];
    v167 = [v165 constraintEqualToAnchor:v166 constant:v15];

    LODWORD(v168) = 1148846080;
    [v167 setPriority_];
    v169 = v167;
    v170 = [v158 topAnchor];
    v171 = [v1 topAnchor];
    v172 = [v170 constraintEqualToAnchor:v171 constant:v4];

    LODWORD(v173) = 1148846080;
    [v172 setPriority_];
    v174 = [v158 bottomAnchor];
    v175 = [v1 bottomAnchor];
    v176 = [v174 constraintEqualToAnchor:v175 constant:v25];

    LODWORD(v177) = 1148846080;
    [v176 setPriority_];
    v178 = swift_allocObject();
    *(v178 + 16) = xmmword_20C14FE90;
    *(v178 + 32) = v164;
    *(v178 + 40) = v169;
    *(v178 + 48) = v172;
    *(v178 + 56) = v176;
  }

  else
  {
    v178 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260, &unk_20C1569E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C15C310;
  *(inited + 32) = v188;
  *(inited + 40) = v187;
  *(inited + 48) = v185;
  *(inited + 56) = v184;
  *(inited + 64) = v182;
  *(inited + 72) = v157;
  *(inited + 80) = v186;
  *(inited + 88) = sub_20BFE45B4();
  *(inited + 96) = sub_20BFE4888();
  *(inited + 104) = v178;
  v180 = objc_opt_self();
  sub_20BE54D20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0, &unk_20C15AA30);
  swift_arrayDestroy();
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v181 = sub_20C13CC54();

  [v180 activateConstraints_];
}

uint64_t sub_20BFE45B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_backgroundView);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  v3 = [v2 superview];
  if (v3)
  {
    v4 = v3;
    v6 = *MEMORY[0x277D768C8];
    v5 = *(MEMORY[0x277D768C8] + 8);
    v7 = *(MEMORY[0x277D768C8] + 16);
    v8 = *(MEMORY[0x277D768C8] + 24);
    v9 = [v2 leadingAnchor];
    v10 = [v4 leadingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10 constant:v5];

    LODWORD(v12) = 1148846080;
    [v11 setPriority_];
    v13 = v11;
    v14 = [v2 trailingAnchor];
    v15 = [v4 trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:-v8];

    LODWORD(v17) = 1148846080;
    [v16 setPriority_];
    v18 = v16;
    v19 = [v2 topAnchor];
    v20 = [v4 topAnchor];
    v21 = [v19 constraintEqualToAnchor:v20 constant:v6];

    LODWORD(v22) = 1148846080;
    [v21 setPriority_];
    v23 = [v2 bottomAnchor];
    v24 = [v4 bottomAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:-v7];

    LODWORD(v26) = 1148846080;
    [v25 setPriority_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_20C14FE90;
    *(v27 + 32) = v13;
    *(v27 + 40) = v18;
    *(v27 + 48) = v21;
    *(v27 + 56) = v25;
    v28 = v21;

    v2 = v18;
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
  }

  return v27;
}

uint64_t sub_20BFE4888()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_instructionsView);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 superview];
    if (v3)
    {

      v4 = sub_20C138104();
      if (v4 == sub_20C138104())
      {
        v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_sessionContainer);
        v7 = *MEMORY[0x277D768C8];
        v6 = *(MEMORY[0x277D768C8] + 8);
        v8 = *(MEMORY[0x277D768C8] + 16);
        v9 = *(MEMORY[0x277D768C8] + 24);
        v10 = [v2 leadingAnchor];
        v11 = [v5 leadingAnchor];
        v12 = [v10 constraintEqualToAnchor:v11 constant:v6];

        LODWORD(v13) = 1148846080;
        [v12 setPriority_];
        v14 = v12;
        v15 = [v2 trailingAnchor];
        v16 = [v5 trailingAnchor];
        v17 = [v15 constraintEqualToAnchor:v16 constant:-v9];

        LODWORD(v18) = 1148846080;
        [v17 setPriority_];
        v19 = v17;
        v20 = [v2 topAnchor];
        v21 = [v5 topAnchor];
        v22 = [v20 constraintEqualToAnchor:v21 constant:v7];

        LODWORD(v23) = 1148846080;
        [v22 setPriority_];
        v24 = [v2 bottomAnchor];
        v25 = [v5 bottomAnchor];
        v26 = [v24 constraintEqualToAnchor:v25 constant:-v8];

        LODWORD(v27) = 1148846080;
        [v26 setPriority_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_20C14FE90;
        *(v28 + 32) = v14;
        *(v28 + 40) = v19;
        *(v28 + 48) = v22;
        *(v28 + 56) = v26;
        v29 = v22;

        v2 = v14;
LABEL_9:

        v2 = v19;
LABEL_11:

        return v28;
      }

      v30 = *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32);
      ObjectType = swift_getObjectType();
      v32 = (*(v30 + 16))(ObjectType, v30);
      if (v32)
      {
        v33 = v32;
        v19 = [v32 transportControlsAreaLayoutGuide];

        if (v19)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_20C151490;
          v34 = [v2 bottomAnchor];
          v35 = [v19 topAnchor];
          v36 = [v34 constraintEqualToAnchor_];

          *(v28 + 32) = v36;
          v37 = [v2 leadingAnchor];
          v38 = [v19 leadingAnchor];
          v39 = [v37 constraintEqualToAnchor_];

          *(v28 + 40) = v39;
          goto LABEL_9;
        }
      }
    }

    v28 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  return MEMORY[0x277D84F90];
}

void sub_20BFE4CDC()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI21SessionViewController_castingView];
  if (v1)
  {
    v2 = [v0 view];
    if (!v2)
    {
      __break(1u);
      return;
    }

    v3 = v2;
    v5 = *MEMORY[0x277D768C8];
    v4 = *(MEMORY[0x277D768C8] + 8);
    v6 = *(MEMORY[0x277D768C8] + 16);
    v7 = *(MEMORY[0x277D768C8] + 24);
    v8 = [v1 leadingAnchor];
    v9 = [v3 leadingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9 constant:v4];

    LODWORD(v11) = 1148846080;
    [v10 setPriority_];
    v12 = v10;
    v13 = [v1 trailingAnchor];
    v14 = [v3 trailingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:-v7];

    LODWORD(v16) = 1148846080;
    [v15 setPriority_];
    v17 = v15;
    v18 = [v1 topAnchor];
    v19 = [v3 topAnchor];
    v20 = [v18 constraintEqualToAnchor:v19 constant:v5];

    LODWORD(v21) = 1148846080;
    [v20 setPriority_];
    v22 = [v1 bottomAnchor];
    v23 = [v3 bottomAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:-v6];

    LODWORD(v25) = 1148846080;
    [v24 setPriority_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_20C14FE90;
    *(v26 + 32) = v12;
    *(v26 + 40) = v17;
    *(v26 + 48) = v20;
    *(v26 + 56) = v24;
    v27 = v20;
  }

  v28 = objc_opt_self();
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v29 = sub_20C13CC54();

  [v28 activateConstraints_];
}

Swift::Void __swiftcall SessionViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BBB0, &qword_20C175D10);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, sel_viewDidDisappear_, a1, v5);
  v8 = *&v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_presenter];
  v9 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_workoutSessionConfiguration;
  v10 = type metadata accessor for WorkoutSessionConfiguration(0);
  sub_20B52F9E8(v8 + v9 + *(v10 + 40), v7, &qword_27C76BBB0, &qword_20C175D10);
  v11 = sub_20C134A44();
  LODWORD(v9) = (*(*(v11 - 8) + 48))(v7, 1, v11);
  sub_20B520158(v7, &qword_27C76BBB0, &qword_20C175D10);
  if (v9 == 1)
  {
    v12 = [objc_opt_self() sharedApplication];
    [v12 setIdleTimerDisabled_];

    sub_20B97F5B4();
    sub_20BDE3794();
  }
}

Swift::Void __swiftcall SessionViewController.viewWillLayoutSubviews()()
{
  v1 = v0;
  v35.receiver = v0;
  v35.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v35, sel_viewWillLayoutSubviews);
  v2 = OBJC_IVAR____TtC9SeymourUI21SessionViewController_overlayConstraints;
  if (!*&v0[OBJC_IVAR____TtC9SeymourUI21SessionViewController_overlayConstraints])
  {
    v3 = *&v0[OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32];
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 8))(ObjectType, v3);
    if (v5)
    {
      v6 = v5;
      v7 = *&v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_overlayView];
      if (v7)
      {
        v9 = *MEMORY[0x277D768C8];
        v8 = *(MEMORY[0x277D768C8] + 8);
        v10 = *(MEMORY[0x277D768C8] + 16);
        v11 = *(MEMORY[0x277D768C8] + 24);
        v12 = v7;
        v13 = [v12 leadingAnchor];
        v14 = [v6 leadingAnchor];
        v15 = [v13 constraintEqualToAnchor:v14 constant:v8];

        LODWORD(v16) = 1148846080;
        [v15 setPriority_];
        v34 = v15;
        v17 = [v12 trailingAnchor];
        v18 = [v6 trailingAnchor];
        v19 = [v17 &selRef_passwordEntryCancelledHandler + 6];

        LODWORD(v20) = 1148846080;
        [v19 setPriority_];
        v21 = v19;
        v22 = [v12 topAnchor];
        v23 = [v6 topAnchor];
        v24 = [v22 &selRef_passwordEntryCancelledHandler + 6];

        LODWORD(v25) = 1148846080;
        [v24 setPriority_];
        v26 = [v12 bottomAnchor];
        v27 = [v6 bottomAnchor];
        v28 = [v26 &selRef_passwordEntryCancelledHandler + 6];

        LODWORD(v29) = 1148846080;
        [v28 setPriority_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_20C14FE90;
        *(v30 + 32) = v34;
        *(v30 + 40) = v21;
        *(v30 + 48) = v24;
        *(v30 + 56) = v28;
        v31 = v24;
      }

      else
      {
        v30 = MEMORY[0x277D84F90];
      }

      v32 = objc_opt_self();
      sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
      v33 = sub_20C13CC54();
      [v32 activateConstraints_];

      *&v1[v2] = v30;
    }
  }
}

void SessionViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v17.receiver = v3;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = sub_20BFE85F8;
  v16 = v7;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_20B863940;
  v14 = &block_descriptor_174;
  v8 = _Block_copy(&v11);

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = sub_20BFE8600;
  v16 = v9;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_20B863940;
  v14 = &block_descriptor_4_0;
  v10 = _Block_copy(&v11);

  [a1 animateAlongsideTransition:v8 completion:v10];
  _Block_release(v10);
  _Block_release(v8);
}

double sub_20BFE575C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC9SeymourUI21SessionViewController_presenter);
    v5 = Strong;

    v6 = *(v4 + 88);

    v7 = swift_unknownObjectWeakLoadStrong();
    v8 = *(v6 + 24);

    if (v7)
    {
      ObjectType = swift_getObjectType();
      (*(v8 + 16))(ObjectType, v8);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

double sub_20BFE5820(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC9SeymourUI21SessionViewController_presenter);
    v5 = Strong;

    v6 = *(v4 + 88);

    v7 = swift_unknownObjectWeakLoadStrong();
    v8 = *(v6 + 24);

    if (v7)
    {
      ObjectType = swift_getObjectType();
      (*(v8 + 24))(ObjectType, v8);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

id SessionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20C13C914();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_20BFE5A8C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34 = sub_20C13C4B4();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C13C4F4();
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C13C514();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - v18;
  v20 = sub_20B84E75C(a1, a2, a3);
  v21 = sub_20C138104();
  if (v21 == sub_20C138104() || (v22 = sub_20C138104(), v22 == sub_20C138104()))
  {
    [v20 setModalInPresentation_];
  }

  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v23 = sub_20C13D374();
  sub_20C13C504();
  sub_20C13C574();
  v24 = *(v14 + 8);
  v32 = v13;
  v33 = v24;
  v24(v16, v13);
  v25 = swift_allocObject();
  *(v25 + 16) = v4;
  *(v25 + 24) = v20;
  aBlock[4] = sub_20BFE90E8;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_50;
  v26 = _Block_copy(aBlock);
  v27 = v4;
  v28 = v20;

  v29 = v12;
  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20BFE9100(&qword_281103AB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
  sub_20B682EA8();
  v30 = v34;
  sub_20C13DA94();
  MEMORY[0x20F2F4A80](v19, v29, v9, v26);
  _Block_release(v26);

  (*(v37 + 8))(v9, v30);
  (*(v35 + 8))(v29, v36);
  return v33(v19, v32);
}

void sub_20BFE5ED0()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = &v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_pictureInPictureSurrogate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 1);
    sub_20C13B574();
    v11 = sub_20C13BB74();
    v12 = sub_20C13D1F4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_20B517000, v11, v12, "PIP Surrogate provided to self", v13, 2u);
      MEMORY[0x20F2F6A40](v13, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    ObjectType = swift_getObjectType();
    (*(v10 + 16))(v1, &protocol witness table for SessionViewController, ObjectType, v10);
    swift_unknownObjectRelease();
    return;
  }

  v15 = [v1 parentViewController];
  if (!v15)
  {
LABEL_12:
    sub_20C13DE24();
    __break(1u);
    return;
  }

  v16 = v15;
  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

    goto LABEL_12;
  }

  v17 = PictureInPictureSupportProxying.rootProxy.getter();
  v19 = v18;
  sub_20C13B574();
  v20 = v17;
  v21 = sub_20C13BB74();
  v22 = sub_20C13D1F4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v20;
    v25 = v20;
    _os_log_impl(&dword_20B517000, v21, v22, "Parent is a PIP Supporting Proxying. Using root %@", v23, 0xCu);
    sub_20B520158(v24, &unk_27C762E30, &unk_20C150580);
    MEMORY[0x20F2F6A40](v24, -1, -1);
    MEMORY[0x20F2F6A40](v23, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v26 = swift_getObjectType();
  (*(v19 + 16))(v26, v19);
}

void sub_20BFE6278()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC9SeymourUI21SessionViewController_displayPreferencesViewController];
  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI21SessionViewController_displayPreferencesViewController];
  if (v3)
  {
    v4 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    v6 = objc_allocWithZone(MEMORY[0x277D757A0]);
    v7 = v3;
    v23 = [v6 initWithRootViewController_];
    v8 = [v23 view];
    if (v8)
    {
      v9 = v8;
      v10 = [objc_opt_self() clearColor];
      [v9 setBackgroundColor_];

      v11 = sub_20C138104();
      if (v11 == sub_20C138104())
      {
        [v23 setModalPresentationStyle_];
        v12 = [v23 popoverPresentationController];
        if (v12)
        {
          v13 = v12;
          [v12 setPermittedArrowDirections_];
        }

        v22 = ObjectType;
        v14 = *&v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32];
        v15 = swift_getObjectType();
        v16 = (*(v14 + 64))(v15, v14);
        v17 = v23;
        if (v16)
        {
          v18 = v16;
          v19 = [v23 popoverPresentationController];

          if (v19)
          {
            [v19 setSourceView_];
          }

          v17 = v18;
        }

        v20 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v21 = *(v4 + 16);

        v21(sub_20BFE9148, v20, v22, v4);

        (*(v14 + 184))(1, v15, v14);
      }

      else
      {
      }

      [v1 presentViewController:v23 animated:1 completion:{0, v22}];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BFE6568(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32);
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay);

    ObjectType = swift_getObjectType();
    (*(v2 + 184))(0, ObjectType, v2);
  }
}

void sub_20BFE6608(uint64_t a1, void (*a2)(void))
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32);
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay);

    ObjectType = swift_getObjectType();
    (*(v8 + 248))(ObjectType, v8);
  }

  if (a2)
  {
    a2();
  }
}

void sub_20BFE6790()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32];
  ObjectType = swift_getObjectType();
  (*(v1 + 128))(ObjectType, v1);
  [*&v0[OBJC_IVAR____TtC9SeymourUI21SessionViewController_sessionContainer] removeFromSuperview];
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    v5 = *&v0[OBJC_IVAR____TtC9SeymourUI21SessionViewController_castingView];
    if (v5)
    {
      v6 = v5;
      [v4 addSubview_];
    }

    sub_20BFE4CDC();
  }

  else
  {
    __break(1u);
  }
}

void sub_20BFE6870()
{
  v1 = v0;
  v2 = sub_20C13C4B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13C4F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C13BB84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v11 + 8))(v13, v10);
  v14 = v1;
  v15 = &v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_onPresentSummary];
  v16 = *&v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_onPresentSummary];
  v17 = *&v14[OBJC_IVAR____TtC9SeymourUI21SessionViewController_summaryViewController];
  if (v16)
  {
    v18 = *(v15 + 1);

    v16(v17);
    sub_20B583ECC(v16, v18);
LABEL_11:
    v62 = *&v14[OBJC_IVAR____TtC9SeymourUI21SessionViewController_bufferView];
    *&v14[OBJC_IVAR____TtC9SeymourUI21SessionViewController_bufferView] = 0;

    v63 = *&v14[OBJC_IVAR____TtC9SeymourUI21SessionViewController_overlayView];
    *&v14[OBJC_IVAR____TtC9SeymourUI21SessionViewController_overlayView] = 0;

    return;
  }

  v70 = v9;
  v71 = v7;
  v19 = v14[OBJC_IVAR____TtC9SeymourUI21SessionViewController_platform];
  if (v19 == 1)
  {
    v20 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
    [v20 setModalPresentationStyle_];
    [v20 setTransitioningDelegate_];
    [v20 setModalInPresentation_];
    [v14 presentViewController:v20 animated:1 completion:0];

    goto LABEL_11;
  }

  [v14 addChildViewController_];
  [v17 didMoveToParentViewController_];
  v72 = v14;
  v21 = [v14 view];
  if (!v21)
  {
    __break(1u);
    goto LABEL_13;
  }

  v22 = v21;
  v23 = [v17 view];
  if (!v23)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v24 = v23;
  v67 = v6;
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  [v22 addSubview_];

  v25 = [v17 view];
  if (!v25)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v26 = v25;
  v64 = v5;
  v65 = v2;
  v69 = v19;
  v66 = v3;
  v27 = [v72 view];
  if (v27)
  {
    v28 = v27;
    v68 = objc_opt_self();
    v30 = *MEMORY[0x277D768C8];
    v29 = *(MEMORY[0x277D768C8] + 8);
    v31 = *(MEMORY[0x277D768C8] + 16);
    v32 = *(MEMORY[0x277D768C8] + 24);
    v33 = [v26 leadingAnchor];
    v34 = [v28 leadingAnchor];
    v35 = [v33 constraintEqualToAnchor:v34 constant:v29];

    LODWORD(v36) = 1148846080;
    [v35 setPriority_];
    v37 = v35;
    v38 = [v26 trailingAnchor];
    v39 = [v28 trailingAnchor];
    v40 = [v38 constraintEqualToAnchor:v39 constant:-v32];

    LODWORD(v41) = 1148846080;
    [v40 setPriority_];
    v42 = v40;
    v43 = [v26 topAnchor];
    v44 = [v28 topAnchor];
    v45 = [v43 constraintEqualToAnchor:v44 constant:v30];

    LODWORD(v46) = 1148846080;
    [v45 setPriority_];
    v47 = [v26 bottomAnchor];
    v48 = [v28 bottomAnchor];
    v49 = [v47 constraintEqualToAnchor:v48 constant:-v31];

    LODWORD(v50) = 1148846080;
    [v49 setPriority_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_20C14FE90;
    *(v51 + 32) = v37;
    *(v51 + 40) = v42;
    *(v51 + 48) = v45;
    *(v51 + 56) = v49;
    v52 = v45;

    sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
    v53 = sub_20C13CC54();

    [v68 activateConstraints_];

    v54 = sub_20C138104();
    v55 = sub_20C138104();
    v14 = v72;
    if (v54 == v55)
    {
      sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
      v56 = sub_20C13D374();
      v57 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_20BFE90D8;
      aBlock[5] = v57;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20B7B548C;
      aBlock[3] = &block_descriptor_34_3;
      v58 = _Block_copy(aBlock);

      v59 = v70;
      sub_20C13C4D4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_20BFE9100(&qword_281103AB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
      sub_20B682EA8();
      v61 = v64;
      v60 = v65;
      v14 = v72;
      sub_20C13DA94();
      MEMORY[0x20F2F4AF0](0, v59, v61, v58);
      _Block_release(v58);

      (*(v66 + 8))(v61, v60);
      (*(v71 + 8))(v59, v67);
    }

    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void sub_20BFE70D0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setNeedsFocusUpdate];
    [v2 updateFocusIfNeeded];
  }
}

void sub_20BFE713C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = sub_20BFE90E0;
  v18 = v9;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_20B7B548C;
  v16 = &block_descriptor_38_1;
  v10 = _Block_copy(&v13);

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v17 = sub_20B5E4150;
  v18 = v11;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_20B5E3874;
  v16 = &block_descriptor_44_1;
  v12 = _Block_copy(&v13);

  [v8 animateWithDuration:0 delay:v10 usingSpringWithDamping:v12 initialSpringVelocity:a3 options:a4 animations:1.0 completion:0.0];
  _Block_release(v12);
  _Block_release(v10);
}

void sub_20BFE72F0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay);

    v4 = [v3 view];
    if (!v4)
    {
      __break(1u);
      goto LABEL_12;
    }

    [v4 setUserInteractionEnabled_];
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = *(v5 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay);

  v8 = [v7 view];
  if (!v8)
  {
LABEL_12:
    __break(1u);
    return;
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32);
    v11 = v9;
    v12 = *(v9 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay);

    ObjectType = swift_getObjectType();
    v14 = (*(v10 + 56))(ObjectType, v10);
  }

  else
  {
    v14 = 0.0;
  }

  [v8 setAlpha_];
}

void sub_20BFE7490(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay);
  v4 = [v3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  [v4 alpha];
  v7 = v6;

  v8 = [v3 view];
  if (!v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v8;
  [v8 setUserInteractionEnabled_];

  v10 = [v3 view];
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10;
  [v10 setAlpha_];

  v12 = [v3 view];
  if (!v12)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = [v12 layer];

  v15 = sub_20BFE75F4(v7, 1.0, a1);
  [v14 addAnimation:v15 forKey:0];
}

id sub_20BFE75F4(double a1, double a2, double a3)
{
  v4 = sub_20C13C914();
  v5 = [objc_opt_self() animationWithKeyPath_];

  v6 = sub_20C138374();
  [v5 setFromValue_];

  v7 = sub_20C138374();
  [v5 setToValue_];

  v8 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  v9 = v5;
  LODWORD(v10) = 1051260355;
  LODWORD(v11) = 1.0;
  LODWORD(v12) = 1051260355;
  v13 = [v8 initWithControlPoints__:v10 :{0.0, v12, v11}];
  [v9 setTimingFunction_];

  [v9 setDuration_];
  return v9;
}

void sub_20BFE7734()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_platform);
  if (v1 < 2)
  {
    v2 = [*(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay) view];
    if (v2)
    {
      v3 = v2;
      [v2 alpha];
      v5 = v4;

      v6 = *(*(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_presenter) + 72) + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_display;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        return;
      }

      v8 = Strong;
      v9 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 16);

      v11(v5 == 1.0, 0, ObjectType, v9);
      goto LABEL_8;
    }

    __break(1u);
LABEL_13:
    sub_20C13DE24();
    __break(1u);
    return;
  }

  if (v1 != 3)
  {
    goto LABEL_13;
  }

  v12 = *(*(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_presenter) + 72) + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_display;
  v13 = swift_unknownObjectWeakLoadStrong();
  if (!v13)
  {
    return;
  }

  v8 = v13;
  v14 = *(v12 + 8);
  v15 = swift_getObjectType();
  v16 = *(v14 + 16);

  v16(1, 0, v15, v14);
LABEL_8:
}

void *SessionViewController.childForHomeIndicatorAutoHidden.getter()
{
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_introSequenceCompleted) != 1)
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay);
  v2 = v1;
  return v1;
}

uint64_t SessionViewController.attachPictureInPictureSurrogate(_:)(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_pictureInPictureSurrogate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  return swift_unknownObjectWeakAssign();
}

uint64_t SessionViewController.updatePictureInPictureDelegate(_:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 32);
  v5 = swift_unknownObjectRetain();
  return v4(v5, ObjectType, v2);
}

Swift::Void __swiftcall SessionViewController.cleanupPlayback()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765090, &unk_20C157460);
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - v2;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_presenter);
  *(v8 + 24) = 0;
  swift_unknownObjectWeakAssign();
  sub_20C13B574();

  v9 = sub_20C13BB74();
  v10 = sub_20C13D1F4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = v1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    v14 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_termination;
    swift_beginAccess();
    v20 = v4;
    sub_20B52F9E8(v8 + v14, v3, &unk_27C765090, &unk_20C157460);
    v15 = sub_20C13D8F4();
    v17 = v16;
    sub_20B520158(v3, &unk_27C765090, &unk_20C157460);
    v18 = sub_20B51E694(v15, v17, &v21);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_20B517000, v9, v10, "Final termination on presenter is %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x20F2F6A40](v13, -1, -1);
    MEMORY[0x20F2F6A40](v12, -1, -1);

    (*(v5 + 8))(v7, v20);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Void __swiftcall SessionViewController.restorePictureInPictureDelegate()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 32);
  v4 = swift_unknownObjectRetain();
  v3(v4, ObjectType, v1);
}

Swift::Void __swiftcall SessionViewController.removePictureInPictureDelegate()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32);
  ObjectType = swift_getObjectType();
  (*(v1 + 32))(0, ObjectType, v1);
}

Swift::Bool __swiftcall SessionViewController.containsPictureInPicturePlayerViewController(_:)(AVPlayerViewController *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32);
  ObjectType = swift_getObjectType();
  return (*(v3 + 272))(a1, ObjectType, v3) & 1;
}

uint64_t sub_20BFE80DC(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_pictureInPictureSurrogate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_20BFE81CC(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32);
  ObjectType = swift_getObjectType();
  return (*(v3 + 272))(a1, ObjectType, v3) & 1;
}

uint64_t sub_20BFE8234()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 32);
  v4 = swift_unknownObjectRetain();
  return v3(v4, ObjectType, v1);
}

uint64_t sub_20BFE82A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 32);
  v4 = swift_unknownObjectRetain();
  return v3(v4, ObjectType, v1);
}

uint64_t sub_20BFE831C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32);
  ObjectType = swift_getObjectType();
  return (*(v1 + 32))(0, ObjectType, v1);
}

void __swiftcall SessionViewController.presentationController(forPresented:presenting:source:)(UIPresentationController_optional *__return_ptr retstr, UIViewController *forPresented, UIViewController_optional *presenting, UIViewController *source)
{
  v4 = [objc_opt_self() sheetPresentationControllerForPresentedController:forPresented presentingController:presenting];
  [v4 setPrefersPageSizing_];
  v5 = [objc_opt_self() smu:5.0 effectWithBlurRadius:?];
  [v4 setBackgroundBlurEffect_];
}

uint64_t _s9SeymourUI21SessionViewControllerC11keyCommandsSaySo12UIKeyCommandCGSgvg_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20C151490;
  v1 = sub_20C13C914();
  v2 = objc_opt_self();
  v3 = [v2 keyCommandWithInput:v1 modifierFlags:0 action:sel_handleSpacebarCommand];

  v4 = [v3 smu_nonRepeatableCopy];
  *(v0 + 32) = v4;
  *(v0 + 40) = [v2 keyCommandWithInput:*MEMORY[0x277D76AD8] modifierFlags:0 action:sel_handleEscapeKeyCommand];
  return v0;
}

void sub_20BFE8608()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_miniPlayerHost + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_pictureInPictureSurrogate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_introSequenceCompleted) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_bufferView) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_overlayView) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_menuGestureRecognizer) = 0;
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_onDismiss);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_onPresentSummary);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_overlayConstraints) = 0;
  sub_20C13DE24();
  __break(1u);
}

double _s9SeymourUI21SessionViewControllerC06playerde18WillStartPictureInI0yySo08AVPlayerdE0CF_0()
{
  v0 = sub_20C138454();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v5 + 8))(v7, v4);
  swift_getObjectType();
  sub_20C138444();
  sub_20BFE9100(&qword_27C768948, MEMORY[0x277D53FE0], MEMORY[0x277D53FD8]);
  sub_20C13A764();
  (*(v1 + 8))(v3, v0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_20BFE5ED0();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BFE8928(void *a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  v6 = a1;
  v7 = sub_20C13BB74();
  v8 = sub_20C13D1D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = MEMORY[0x20F2F5850](v15[2], v15[3]);
    v13 = sub_20B51E694(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20B517000, v7, v8, "Unable to start Picture In Picture: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F2F6A40](v10, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

id _s9SeymourUI21SessionViewControllerC06playerde17WillStopPictureInI0yySo08AVPlayerdE0CF_0()
{
  v1 = v0;
  v2 = sub_20C138474();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v7 + 8))(v9, v6);
  swift_getObjectType();
  sub_20C138464();
  sub_20BFE9100(&unk_27C76F050, MEMORY[0x277D53FF0], MEMORY[0x277D53FE8]);
  sub_20C13A764();
  (*(v3 + 8))(v5, v2);
  [v1 setNeedsFocusUpdate];
  return [v1 updateFocusIfNeeded];
}

uint64_t _s9SeymourUI21SessionViewControllerC06playerde16DidStopPictureInI0yySo08AVPlayerdE0CF_0()
{
  v0 = sub_20C138434();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v5 + 8))(v7, v4);
  swift_getObjectType();
  sub_20C138424();
  sub_20BFE9100(&qword_27C768828, MEMORY[0x277D53FD0], MEMORY[0x277D53FC8]);
  sub_20C13A764();
  return (*(v1 + 8))(v3, v0);
}

uint64_t type metadata accessor for SessionViewController(uint64_t a1)
{
  result = qword_281102868;
  if (!qword_281102868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BFE8FA0(uint64_t a1)
{
  result = sub_20C137254();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_20BFE9100(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_20BFE91B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20BFE91F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20BFE9258(uint64_t a1)
{
  v2 = v1;
  MEMORY[0x20F2F58E0](*v1);
  sub_20C13CA64();
  v3 = *(v1 + 3);
  sub_20C13E184();
  if (v3)
  {
    v4 = v3;
    sub_20C13D604();
  }

  sub_20C13CA64();
  MEMORY[0x20F2F58E0](v2[48]);
  return sub_20C13E184();
}

uint64_t sub_20BFE92F8()
{
  sub_20C13E164();
  sub_20BFE9258(v1);
  return sub_20C13E1B4();
}

uint64_t sub_20BFE933C(uint64_t a1)
{
  sub_20C13E164();
  sub_20BFE9258(v2);
  return sub_20C13E1B4();
}

uint64_t sub_20BFE9378(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_20BFE942C(v5, v7) & 1;
}

unint64_t sub_20BFE93D8()
{
  result = qword_27C771A78;
  if (!qword_27C771A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771A78);
  }

  return result;
}

uint64_t sub_20BFE942C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v4 && (sub_20C13DFF4() & 1) == 0)
  {
    goto LABEL_18;
  }

  v5 = *(a1 + 3);
  v6 = *(a2 + 3);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_18;
    }

    sub_20B71D438();
    v7 = v6;
    v8 = v5;
    v9 = sub_20C13D5F4();

    if ((v9 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v6)
  {
LABEL_18:
    v11 = 0;
    return v11 & 1;
  }

  if ((*(a1 + 4) != *(a2 + 4) || *(a1 + 5) != *(a2 + 5)) && (sub_20C13DFF4() & 1) == 0 || a1[48] != a2[48])
  {
    goto LABEL_18;
  }

  v11 = a1[49] ^ a2[49] ^ 1;
  return v11 & 1;
}

void sub_20BFE953C()
{
  v1 = sub_20C13C554();
  v47 = *(v1 - 8);
  v48 = v1;
  MEMORY[0x28223BE20](v1);
  v46 = (&v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for AccountSetting(0);
  MEMORY[0x28223BE20](v3);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v0;
  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_settings);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v11 = *(v4 + 24);
    v51 = *(v4 + 20);
    v12 = &v7[v11];
    v13 = v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v50 = *(v5 + 72);
    do
    {
      sub_20B64DC5C(v13, v7);
      v14 = v7[v51] > 1u;
      v15 = swift_allocObject();
      v16 = *v12;
      v17 = *(v12 + 1);

      sub_20B64DEC0(v7);
      *(v15 + 16) = v16;
      *(v15 + 24) = v17;
      *(v15 + 32) = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_20BC05D3C(0, *(v10 + 2) + 1, 1, v10);
      }

      v19 = *(v10 + 2);
      v18 = *(v10 + 3);
      if (v19 >= v18 >> 1)
      {
        v10 = sub_20BC05D3C((v18 > 1), v19 + 1, 1, v10);
      }

      *(v10 + 2) = v19 + 1;
      *&v10[8 * v19 + 32] = v15 | 1;
      v13 += v50;
      --v9;
    }

    while (v9);
  }

  v52 = 0uLL;
  LOBYTE(v53) = 1;
  *(&v53 + 1) = 0;
  *&v54 = 0;
  WORD4(v54) = 128;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  LOBYTE(v58) = 0;
  *(&v58 + 1) = v10;
  *&v59[0] = MEMORY[0x277D84F90];
  *(v59 + 8) = 0u;
  *(&v59[1] + 8) = 0u;
  *(&v59[2] + 1) = 0;
  v60 = 2;
  nullsub_1();
  v20 = v49;
  v21 = v49 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row;
  v22 = *(v49 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 144);
  v61[8] = *(v49 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 128);
  v61[9] = v22;
  v62 = *(v49 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 160);
  v23 = *(v49 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 80);
  v61[4] = *(v49 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 64);
  v61[5] = v23;
  v24 = *(v49 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 112);
  v61[6] = *(v49 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 96);
  v61[7] = v24;
  v25 = *(v49 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 16);
  v61[0] = *(v49 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row);
  v61[1] = v25;
  v26 = *(v49 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 48);
  v61[2] = *(v49 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 32);
  v61[3] = v26;
  v27 = v59[2];
  *(v21 + 128) = v59[1];
  *(v21 + 144) = v27;
  *(v21 + 160) = v60;
  v28 = v57;
  *(v21 + 64) = v56;
  *(v21 + 80) = v28;
  v29 = v59[0];
  *(v21 + 96) = v58;
  *(v21 + 112) = v29;
  v30 = v53;
  *v21 = v52;
  *(v21 + 16) = v30;
  v31 = v55;
  *(v21 + 32) = v54;
  *(v21 + 48) = v31;
  sub_20B634408(v61);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v33 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      sub_20B61D118(v20, Strong);
      if (v35)
      {
        v37 = v34;
        v38 = v35;
        v39 = v36;
        sub_20B5E2E18();
        v40 = sub_20C13D374();
        v42 = v46;
        v41 = v47;
        *v46 = v40;
        v43 = v48;
        (*(v41 + 104))(v42, *MEMORY[0x277D85200], v48);
        v44 = sub_20C13C584();
        (*(v41 + 8))(v42, v43);
        if ((v44 & 1) == 0)
        {
          __break(1u);
          return;
        }

        sub_20B62082C(v37, v38, v39, v20, 0, v33);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_20BFE9954()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccountSettingNotificationsShelf(uint64_t a1)
{
  result = qword_27C771A88;
  if (!qword_27C771A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BFE9A9C(uint64_t a1)
{
  result = sub_20C132EE4();
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

void sub_20BFE9B50(unint64_t a1, unint64_t a2)
{
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccountSetting(0);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 1)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v13 = *(v2 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_settings);
      if (*(v13 + 16) > a2)
      {
        sub_20B64DC5C(v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * a2, &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_20B64E88C();
          swift_unknownObjectRelease();
        }

        sub_20B64DEC0(v12);
        return;
      }
    }

    __break(1u);
    return;
  }

  sub_20C13B534();

  v14 = sub_20C13BB74();
  v15 = sub_20C13D1D4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21 = a1;
    v22 = v17;
    *v16 = 136446210;

    v18 = sub_20C13C9D4();
    v20 = sub_20B51E694(v18, v19, &v22);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_20B517000, v14, v15, "Shelf lockup navigation triggered for item: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x20F2F6A40](v17, -1, -1);
    MEMORY[0x20F2F6A40](v16, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
}

uint64_t sub_20BFE9E24@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BFE9E9C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20BFE9F50()
{
  v1 = type metadata accessor for AccountSettingLink(0);
  MEMORY[0x28223BE20](v1);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v4 = v0 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row;
  sub_20B5D8060(v21);
  v5 = v21[9];
  *(v4 + 128) = v21[8];
  *(v4 + 144) = v5;
  *(v4 + 160) = v22;
  v6 = v21[5];
  *(v4 + 64) = v21[4];
  *(v4 + 80) = v6;
  v7 = v21[7];
  *(v4 + 96) = v21[6];
  *(v4 + 112) = v7;
  v8 = v21[1];
  *v4 = v21[0];
  *(v4 + 16) = v8;
  v9 = v21[3];
  *(v4 + 32) = v21[2];
  *(v4 + 48) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768528, &unk_20C1893A0);
  v10 = (type metadata accessor for AccountSetting(0) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_20C14F980;
  v13 = v12 + v11;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  v16 = sub_20C132964();
  v18 = v17;

  sub_20BEC4990(v3, v13);
  *(v13 + v10[7]) = 2;
  v19 = (v13 + v10[8]);
  *v19 = v16;
  v19[1] = v18;
  *(v0 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_settings) = v12;
  return v0;
}

uint64_t type metadata accessor for WorkoutPlanCatalogThemePickerOption(uint64_t a1)
{
  result = qword_27C771A98;
  if (!qword_27C771A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BFEA220(uint64_t a1)
{
  sub_20C133A74();
  if (v1 <= 0x3F)
  {
    sub_20BFEA2BC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20BFEA2BC()
{
  if (!qword_27C771AA8)
  {
    v0 = sub_20C13CD04();
    if (!v1)
    {
      atomic_store(v0, &qword_27C771AA8);
    }
  }
}

uint64_t sub_20BFEA30C(uint64_t a1)
{
  sub_20C13CA64();
  v2 = type metadata accessor for WorkoutPlanCatalogThemePickerOption(0);
  sub_20C133A74();
  sub_20BFEA4E0(&qword_27C76B788, MEMORY[0x277D50278], MEMORY[0x277D50280]);
  sub_20C13C7C4();
  MEMORY[0x20F2F58E0](*(v1 + *(v2 + 24)));
  v3 = *(v1 + *(v2 + 28));
  result = MEMORY[0x20F2F58E0](*(v3 + 16));
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = (v3 + 32);
    do
    {
      v7 = *v6++;
      result = MEMORY[0x20F2F58E0](v7);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_20BFEA414()
{
  sub_20C13E164();
  sub_20BFEA30C(v1);
  return sub_20C13E1B4();
}

uint64_t sub_20BFEA458(uint64_t a1)
{
  sub_20C13E164();
  sub_20BFEA30C(v2);
  return sub_20C13E1B4();
}

uint64_t sub_20BFEA4E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20BFEA528(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_20C13DFF4() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for WorkoutPlanCatalogThemePickerOption(0);
  if ((sub_20C133A44() & 1) == 0 || *(a1 + *(v5 + 24)) != *(a2 + *(v5 + 24)))
  {
    return 0;
  }

  v6 = *(v5 + 28);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_20BB80344(v7, v8);
}

uint64_t sub_20BFEA5DC(uint64_t a1, double a2)
{
  v3 = v2;
  v37 = sub_20C13B224();
  v33 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_20C13AB54();
  v35 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_20C13A854();
  v38 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13AD54();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 - 8);
  MEMORY[0x28223BE20](v13);
  v34 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v33 - v19;
  v22 = MEMORY[0x28223BE20](v21);
  v23 = *(v12 + 16);
  v23(&v33 - v24, v3, a1, v22);
  if (swift_dynamicCast())
  {
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    (v23)(v20, v3, a1);
    v26 = v41;
    v25 = v42;
    if (swift_dynamicCast())
    {
      (*(v38 + 8))(v26, v25);
    }

    else
    {
      (v23)(v17, v3, a1);
      v27 = v39;
      v28 = v40;
      if (swift_dynamicCast())
      {
        v29 = *(v35 + 8);
        v30 = v27;
      }

      else
      {
        (v23)(v34, v3, a1);
        v31 = v36;
        v28 = v37;
        result = swift_dynamicCast();
        if (!result)
        {
          return result;
        }

        v29 = *(v33 + 8);
        v30 = v31;
      }

      v29(v30, v28);
    }
  }

  return 1;
}

uint64_t sub_20BFEAA30(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v14[-v7];
  v10 = MEMORY[0x28223BE20](v9);
  v11 = *(v3 + 16);
  v11(&v14[-v12], v1, a1, v10);
  if (swift_dynamicCast())
  {
    return 1;
  }

  (v11)(v8, v1, a1);
  if (swift_dynamicCast())
  {
    return 1;
  }

  (v11)(v5, v1, a1);
  return swift_dynamicCast();
}

unint64_t sub_20BFEABCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v62 = a3;
  v56 = sub_20C13AC54();
  v53 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_20C13A874();
  v54 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AB8, &qword_20C189468);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v52 - v17;
  v60 = sub_20C133D14();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v52 - v22;
  v70 = a4;
  v71 = a6;
  v61 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v69);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v67 = a5;
  v68 = a7;
  v63 = a7;
  v25 = __swift_allocate_boxed_opaque_existential_1(v66);
  (*(*(a5 - 8) + 16))(v25, a2, a5);
  sub_20B51CC64(v69, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AC0, &unk_20C189470);
  v26 = sub_20C13AB74();
  v27 = swift_dynamicCast();
  v28 = *(*(v26 - 8) + 56);
  if (v27)
  {
    v29 = *(v26 - 8);
    v28(v18, 0, 1, v26);
    sub_20C13AB64();
    (*(v29 + 8))(v18, v26);
    v30 = v59;
    v31 = v60;
    v32 = (*(v59 + 32))(v23, v20, v60);
    v33 = sub_20BFEB2A8(v23, v25, v32, v62, a5, v63);
    (*(v30 + 8))(v23, v31);
  }

  else
  {
    v34 = v25;
    v36 = v62;
    v35 = v63;
    v28(v18, 1, 1, v26);
    sub_20BFEB240(v18);
    v37 = v61;
    if (sub_20BFEA5DC(a4, v38))
    {
      v33 = sub_20BFEB898(boxed_opaque_existential_1, v34, v39, v36, a4, a5, v37, v35);
    }

    else if (sub_20BFEAA30(a4))
    {
      v33 = sub_20BFEBE7C(boxed_opaque_existential_1, v34, v40, v36, a4, a5, v37, v35);
    }

    else
    {
      sub_20B51CC64(v69, v65);
      v41 = v57;
      v42 = v58;
      if (swift_dynamicCast())
      {
        (*(v54 + 8))(v41, v42);
        v33 = sub_20BFEC678(v34, a4, a5, v37, v35);
      }

      else
      {
        sub_20B51CC64(v69, v65);
        v43 = v55;
        v44 = v56;
        if (swift_dynamicCast())
        {
          (*(v53 + 8))(v43, v44);
          v33 = sub_20BFECA2C(v34, a4, a5, v37, v35);
        }

        else
        {
          v45 = v70;
          v46 = __swift_project_boxed_opaque_existential_1(v69, v70);
          v65[3] = v45;
          v47 = __swift_allocate_boxed_opaque_existential_1(v65);
          (*(*(v45 - 8) + 16))(v47, v46, v45);
          v48 = v67;
          v49 = __swift_project_boxed_opaque_existential_1(v66, v67);
          v64[3] = v48;
          v50 = __swift_allocate_boxed_opaque_existential_1(v64);
          (*(*(v48 - 8) + 16))(v50, v49, v48);
          v33 = sub_20BFEC448(v65, v64);
          __swift_destroy_boxed_opaque_existential_1(v64);
          __swift_destroy_boxed_opaque_existential_1(v65);
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v69);
  __swift_destroy_boxed_opaque_existential_1(v66);
  return v33;
}

uint64_t sub_20BFEB240(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AB8, &qword_20C189468);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BFEB2A8(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a1;
  v52 = sub_20C13AC54();
  v49 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_20C13A874();
  v50 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AB8, &qword_20C189468);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v49 - v12;
  v14 = sub_20C133D14();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  v64 = a5;
  v65 = a6;
  v56 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v63);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a2, a5);
  sub_20B51CC64(v63, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AC0, &unk_20C189470);
  v22 = sub_20C13AB74();
  v23 = swift_dynamicCast();
  v24 = *(*(v22 - 8) + 56);
  if (v23)
  {
    v25 = *(v22 - 8);
    v24(v13, 0, 1, v22);
    sub_20C13AB64();
    (*(v25 + 8))(v13, v22);
    (*(v15 + 32))(v20, v17, v14);
    v26 = sub_20C133CE4();
    if (v28)
    {
      if (v26 == 1)
      {
        v29 = sub_20C133CE4();
        v31 = v30;
        v60[0] = v29;
        v60[1] = v30;
        v33 = v32 & 1;
        v61 = v32 & 1;
        v57 = xmmword_20C152300;
        v58 = 1;
        sub_20B8C38A0();
        sub_20B8C38F4();
        v34 = sub_20C133BF4();
        (*(v15 + 8))(v20, v14);
        sub_20B583F4C(v29, v31, v33);
        v35 = v34 & 1;
        goto LABEL_10;
      }
    }

    else
    {
      sub_20B583F4C(v26, v27, 0);
    }

    (*(v15 + 8))(v20, v14);
    v35 = 1;
    goto LABEL_10;
  }

  v24(v13, 1, 1, v22);
  sub_20BFEB240(v13);
  if (sub_20BFEAA30(a5) & 1) != 0 || (sub_20BFEA5DC(a5, v36))
  {
LABEL_7:
    v35 = 2;
    goto LABEL_10;
  }

  sub_20B51CC64(v63, v60);
  v39 = v53;
  v38 = v54;
  if (swift_dynamicCast())
  {
    (*(v50 + 8))(v39, v38);
    v40 = sub_20C133CE4();
    if (v42)
    {
      if (v40 == 4)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_20B583F4C(v40, v41, 0);
    }

    v35 = 0;
    goto LABEL_10;
  }

  sub_20B51CC64(v63, v60);
  v43 = v51;
  v44 = v52;
  if (swift_dynamicCast())
  {
    (*(v49 + 8))(v43, v44);
    v35 = 0;
  }

  else
  {
    v62 = v14;
    v45 = __swift_allocate_boxed_opaque_existential_1(v60);
    (*(v15 + 16))(v45, v55, v14);
    v46 = v64;
    v47 = __swift_project_boxed_opaque_existential_1(v63, v64);
    v59 = v46;
    v48 = __swift_allocate_boxed_opaque_existential_1(&v57);
    (*(*(v46 - 8) + 16))(v48, v47, v46);
    v35 = sub_20BFEC448(v60, &v57);
    __swift_destroy_boxed_opaque_existential_1(&v57);
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v63);
  return v35;
}

uint64_t sub_20BFEB898(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v56 = a2;
  v52 = sub_20C13AC54();
  v49 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_20C13A874();
  v50 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AB8, &qword_20C189468);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v49 - v16;
  v18 = sub_20C133D14();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v49 - v23;
  v63 = a5;
  v64 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v62);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  v60 = a6;
  v61 = a8;
  v55 = a8;
  v26 = __swift_allocate_boxed_opaque_existential_1(v59);
  (*(*(a6 - 8) + 16))(v26, v56, a6);
  sub_20B51CC64(v59, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AC0, &unk_20C189470);
  v27 = sub_20C13AB74();
  v28 = swift_dynamicCast();
  v29 = *(*(v27 - 8) + 56);
  if (v28)
  {
    v30 = *(v27 - 8);
    v29(v17, 0, 1, v27);
    sub_20C13AB64();
    (*(v30 + 8))(v17, v27);
    (*(v19 + 32))(v24, v21, v18);
    v31 = sub_20C133CE4();
    v33 = v32;
    v35 = v34;
    (*(v19 + 8))(v24, v18);
    if (v35)
    {
      v36 = 0x2010200020002uLL >> (8 * v31);
      goto LABEL_10;
    }

    sub_20B583F4C(v31, v33, 0);
LABEL_9:
    v36 = 2;
    goto LABEL_10;
  }

  v29(v17, 1, 1, v27);
  sub_20BFEB240(v17);
  if (sub_20BFEA5DC(a6, v37) & 1) != 0 || (sub_20BFEAA30(a6))
  {
    goto LABEL_9;
  }

  sub_20B51CC64(v59, v58);
  v38 = v53;
  v39 = v54;
  if (swift_dynamicCast())
  {
    (*(v50 + 8))(v38, v39);
    goto LABEL_9;
  }

  sub_20B51CC64(v59, v58);
  v41 = v51;
  v42 = v52;
  if (swift_dynamicCast())
  {
    (*(v49 + 8))(v41, v42);
    v36 = 0;
  }

  else
  {
    v43 = v63;
    v44 = __swift_project_boxed_opaque_existential_1(v62, v63);
    v58[3] = v43;
    v45 = __swift_allocate_boxed_opaque_existential_1(v58);
    (*(*(v43 - 8) + 16))(v45, v44, v43);
    v46 = v60;
    v47 = __swift_project_boxed_opaque_existential_1(v59, v60);
    v57[3] = v46;
    v48 = __swift_allocate_boxed_opaque_existential_1(v57);
    (*(*(v46 - 8) + 16))(v48, v47, v46);
    v36 = sub_20BFEC448(v58, v57);
    __swift_destroy_boxed_opaque_existential_1(v57);
    __swift_destroy_boxed_opaque_existential_1(v58);
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v62);
  __swift_destroy_boxed_opaque_existential_1(v59);
  return v36;
}

uint64_t sub_20BFEBE7C(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = a2;
  v50 = sub_20C13AC54();
  v48[0] = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_20C13A874();
  v48[1] = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AB8, &qword_20C189468);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v48 - v16;
  v18 = sub_20C133D14();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v48 - v23;
  v61 = a5;
  v62 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v60);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  v58 = a6;
  v59 = a8;
  v53 = a8;
  v26 = __swift_allocate_boxed_opaque_existential_1(v57);
  (*(*(a6 - 8) + 16))(v26, v54, a6);
  sub_20B51CC64(v57, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AC0, &unk_20C189470);
  v27 = sub_20C13AB74();
  v28 = swift_dynamicCast();
  v29 = *(*(v27 - 8) + 56);
  if (v28)
  {
    v30 = *(v27 - 8);
    v29(v17, 0, 1, v27);
    sub_20C13AB64();
    (*(v30 + 8))(v17, v27);
    (*(v19 + 32))(v24, v21, v18);
    v31 = sub_20C133CE4();
    v33 = v32;
    v35 = v34;
    (*(v19 + 8))(v24, v18);
    if (v35)
    {
      v36 = 0x2010001020002uLL >> (8 * v31);
      goto LABEL_10;
    }

    sub_20B583F4C(v31, v33, 0);
LABEL_9:
    v36 = 2;
    goto LABEL_10;
  }

  v29(v17, 1, 1, v27);
  sub_20BFEB240(v17);
  if (sub_20BFEA5DC(a6, v37) & 1) != 0 || (sub_20BFEAA30(a6))
  {
    goto LABEL_9;
  }

  sub_20B51CC64(v57, v56);
  v38 = v51;
  v39 = v52;
  if (swift_dynamicCast())
  {
    v40 = &v64;
  }

  else
  {
    sub_20B51CC64(v57, v56);
    v38 = v49;
    v39 = v50;
    if (!swift_dynamicCast())
    {
      v42 = v61;
      v43 = __swift_project_boxed_opaque_existential_1(v60, v61);
      v56[3] = v42;
      v44 = __swift_allocate_boxed_opaque_existential_1(v56);
      (*(*(v42 - 8) + 16))(v44, v43, v42);
      v45 = v58;
      v46 = __swift_project_boxed_opaque_existential_1(v57, v58);
      v55[3] = v45;
      v47 = __swift_allocate_boxed_opaque_existential_1(v55);
      (*(*(v45 - 8) + 16))(v47, v46, v45);
      v36 = sub_20BFEC448(v56, v55);
      __swift_destroy_boxed_opaque_existential_1(v55);
      __swift_destroy_boxed_opaque_existential_1(v56);
      goto LABEL_10;
    }

    v40 = &v63;
  }

  (*(*(v40 - 32) + 8))(v38, v39);
  v36 = 0;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v60);
  __swift_destroy_boxed_opaque_existential_1(v57);
  return v36;
}

uint64_t sub_20BFEC448(void *a1, void *a2)
{
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  swift_getDynamicType();
  sub_20C13B4A4();
  v8 = sub_20C13BB74();
  v9 = sub_20C13D1D4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136446466;
    v12 = sub_20C13E234();
    v14 = sub_20B51E694(v12, v13, &v20);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    v15 = sub_20C13E234();
    v17 = sub_20B51E694(v15, v16, &v20);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_20B517000, v8, v9, "Unexpected collision. currentEvent: %{public}s incomingEvent: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v11, -1, -1);
    MEMORY[0x20F2F6A40](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return 0;
}

uint64_t sub_20BFEC678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AB8, &qword_20C189468);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - v9;
  v11 = sub_20C133D14();
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  v17 = sub_20C13A874();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[3] = a3;
  v39[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_20B51CC64(v39, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AC0, &unk_20C189470);
  if (swift_dynamicCast())
  {
    (*(v18 + 8))(v20, v17);
  }

  else if ((sub_20BFEA5DC(a3, v22) & 1) == 0)
  {
    sub_20B51CC64(v39, v38);
    v25 = sub_20C13AB74();
    v26 = swift_dynamicCast();
    v27 = *(*(v25 - 8) + 56);
    if (!v26)
    {
      v27(v10, 1, 1, v25);
      sub_20BFEB240(v10);
      v23 = 0;
      goto LABEL_5;
    }

    v28 = *(v25 - 8);
    v27(v10, 0, 1, v25);
    sub_20C13AB64();
    (*(v28 + 8))(v10, v25);
    v30 = v36;
    v29 = v37;
    (*(v36 + 32))(v16, v13, v37);
    v31 = sub_20C133CE4();
    v33 = v32;
    v35 = v34;
    (*(v30 + 8))(v16, v29);
    if (v35)
    {
      if (v31 == 4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_20B583F4C(v31, v33, 0);
    }

    v23 = 0;
    goto LABEL_5;
  }

LABEL_4:
  v23 = 2;
LABEL_5:
  __swift_destroy_boxed_opaque_existential_1(v39);
  return v23;
}

unint64_t sub_20BFECA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AB8, &qword_20C189468);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31[-v9];
  v11 = sub_20C133D14();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v31[-v16];
  v32[3] = a3;
  v32[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_20B51CC64(v32, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AC0, &unk_20C189470);
  v19 = sub_20C13AB74();
  v20 = swift_dynamicCast();
  v21 = *(*(v19 - 8) + 56);
  if (v20)
  {
    v22 = *(v19 - 8);
    v21(v10, 0, 1, v19);
    sub_20C13AB64();
    (*(v22 + 8))(v10, v19);
    (*(v12 + 32))(v17, v14, v11);
    v23 = sub_20C133CE4();
    v25 = v24;
    v27 = v26;
    (*(v12 + 8))(v17, v11);
    if (v27)
    {
      v28 = 0x2010200020002uLL >> (8 * v23);
    }

    else
    {
      sub_20B583F4C(v23, v25, 0);
      v28 = 2;
    }
  }

  else
  {
    v21(v10, 1, 1, v19);
    sub_20BFEB240(v10);
    v28 = 2;
    if ((sub_20BFEAA30(a3) & 1) == 0)
    {
      if (sub_20BFEA5DC(a3, v29))
      {
        v28 = 2;
      }

      else
      {
        v28 = 0;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v32);
  return v28;
}

char *sub_20BFECD34(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_itemInfo;
  v12 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  v13 = &v5[OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_layout];
  v14 = sub_20C1380F4();
  *v13 = xmmword_20C189480;
  v13[16] = v14;
  *&v5[OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_activatedConstraints] = MEMORY[0x277D84F90];
  v15 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_artworkView;
  sub_20C13C354();
  v32 = sub_20C13C3E4();
  v16 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AF8, &qword_20C189528));
  v17 = sub_20C13C224();
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v15] = v17;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  [v18 setAdjustsFontForContentSizeCategory_];
  v19 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A08] compatibleWithTraitCollection:0];
  v20 = [v19 fontDescriptorWithSymbolicTraits_];
  if (v20)
  {
    v21 = v20;

    v19 = v21;
  }

  v22 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_titleLabel;
  v23 = [objc_opt_self() fontWithDescriptor:v19 size:0.0];

  [v18 setFont_];
  [v18 setLineBreakMode_];
  [v18 setNumberOfLines_];
  [v18 setAllowsDefaultTighteningForTruncation_];
  v24 = [objc_opt_self() whiteColor];
  [v18 setTextColor_];

  [v18 setLineBreakMode_];
  *&v5[v22] = v18;
  v31.receiver = v5;
  v31.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v31, sel_initWithFrame_, a1, a2, a3, a4);
  v26 = [v25 contentView];
  v27 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_artworkView;
  [v26 addSubview_];

  v28 = [v25 contentView];
  [v28 addSubview_];

  v29 = *&v25[v27];
  sub_20C13C214();

  sub_20BFED0E8();
  return v25;
}

void sub_20BFED0E8()
{
  v1 = v0;
  v2 = objc_opt_self();
  v42 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_activatedConstraints;
  sub_20B5E29D0();

  v3 = sub_20C13CC54();

  v43 = v2;
  [v2 deactivateConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20C151DF0;
  v5 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_artworkView;
  v6 = [*&v0[OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_artworkView] topAnchor];
  v7 = [v1 contentView];
  v8 = [v7 topAnchor];

  v9 = [v6 constraintEqualToAnchor_];
  *(v4 + 32) = v9;
  v10 = [*&v1[v5] leadingAnchor];
  v11 = [v1 contentView];
  v12 = [v11 leadingAnchor];

  v13 = [v10 constraintEqualToAnchor_];
  *(v4 + 40) = v13;
  v14 = [*&v1[v5] trailingAnchor];
  v15 = [v1 contentView];
  v16 = [v15 trailingAnchor];

  v17 = [v14 constraintEqualToAnchor_];
  *(v4 + 48) = v17;
  v18 = [*&v1[v5] heightAnchor];
  v19 = [*&v1[v5] widthAnchor];
  v20 = &v1[OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_layout];
  v21 = [v18 constraintEqualToAnchor:v19 multiplier:*&v1[OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_layout + 8]];

  *(v4 + 56) = v21;
  v22 = *&v1[OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_titleLabel];
  v23 = [v22 topAnchor];
  v24 = [*&v1[v5] bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:*v20];

  *(v4 + 64) = v25;
  v26 = [v22 leadingAnchor];
  v27 = [v1 contentView];
  v28 = [v27 leadingAnchor];

  v29 = 20.0;
  v30 = 20.0;
  if (*(v20 + 16))
  {
    if (*(v20 + 16) != 1)
    {
      goto LABEL_9;
    }

    v30 = 45.0;
  }

  v31 = [v26 &selRef_passwordEntryCancelledHandler + 6];

  *(v4 + 72) = v31;
  v32 = [v22 trailingAnchor];
  v33 = [v1 &selRef_setMaximumFractionDigits_];
  v34 = [v33 trailingAnchor];

  if (*(v20 + 16))
  {
    if (*(v20 + 16) != 1)
    {
      goto LABEL_9;
    }

    v29 = 45.0;
  }

  v35 = [v32 &selRef_passwordEntryCancelledHandler + 6];

  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v36) = v44;
  [v35 setPriority_];
  *(v4 + 80) = v35;
  v37 = [v22 bottomAnchor];
  v38 = [v1 &selRef_setMaximumFractionDigits_];
  v39 = [v38 bottomAnchor];

  if (*(v20 + 16) < 2u)
  {
    v40 = [v37 &selRef_passwordEntryCancelledHandler + 6];

    *(v4 + 88) = v40;
    *&v1[v42] = v4;

    v41 = sub_20C13CC54();

    [v43 activateConstraints_];

    return;
  }

LABEL_9:
  sub_20C13DE24();
  __break(1u);
}

uint64_t type metadata accessor for WorkoutPlanDetailHeaderCell(uint64_t a1)
{
  result = qword_281100EE8;
  if (!qword_281100EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BFED8FC(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for WorkoutPlanDetailHeaderCell.Layout(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutPlanDetailHeaderCell.Layout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

double sub_20BFEDA58(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BFEDAA4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550, &unk_20C1505A0);
}

uint64_t sub_20BFEDB0C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20BFEDB70(unint64_t a1)
{
  v2 = v1;
  v87 = sub_20C13BB84();
  v4 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v6 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C1357B4();
  v84 = *(v7 - 8);
  v85 = v7;
  MEMORY[0x28223BE20](v7);
  v82 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v80 = &v76 - v10;
  MEMORY[0x28223BE20](v11);
  v83 = &v76 - v12;
  v86 = sub_20C132EE4();
  v88 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v81 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v76 - v15;
  MEMORY[0x28223BE20](v17);
  v89 = &v76 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768180, &unk_20C177B40);
  MEMORY[0x28223BE20](v19);
  v21 = &v76 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300, &unk_20C151350);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v76 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v76 - v29;
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x49)
  {
    v31 = swift_projectBox();
    sub_20B52F9E8(v31, v21, &qword_27C768180, &unk_20C177B40);
    v32 = *&v21[*(v19 + 48)];

    sub_20B64EFD4(v21, v30);
    sub_20B52F9E8(v30, v27, &unk_27C762300, &unk_20C151350);
    v33 = sub_20C135814();
    v34 = *(v33 - 8);
    v35 = *(v34 + 48);
    v36 = v35(v27, 1, v33);
    v79 = v30;
    if (v36 == 1)
    {
      sub_20B520158(v27, &unk_27C762300, &unk_20C151350);
    }

    else
    {
      v78 = v32;
      v87 = v2;
      sub_20C1357D4();
      v49 = *(v34 + 8);
      v49(v27, v33);
      v50 = v86;
      v77 = *(v88 + 32);
      v77(v89, v16, v86);
      sub_20B52F9E8(v30, v24, &unk_27C762300, &unk_20C151350);
      if (v35(v24, 1, v33) == 1)
      {
        (*(v88 + 8))(v89, v50);
        sub_20B520158(v24, &unk_27C762300, &unk_20C151350);
        v2 = v87;
      }

      else
      {
        v51 = v80;
        sub_20C135804();
        v49(v24, v33);
        v53 = v83;
        v52 = v84;
        v76 = *(v84 + 32);
        v76(v83, v51, v85);
        v54 = objc_opt_self();
        v55 = v87;
        sub_20B5E29D0();

        v56 = sub_20C13CC54();

        [v54 deactivateConstraints_];

        v80 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_artworkView;
        [*(v55 + OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_artworkView) removeFromSuperview];
        v57 = v88;
        v58 = v81;
        v59 = v86;
        (*(v88 + 16))(v81, v89, v86);
        v60 = *(v52 + 16);
        v61 = v82;
        v62 = v85;
        v60(v82, v53, v85);
        type metadata accessor for WorkoutPlanArtworkV2(0);
        v63 = swift_allocObject();
        *(v63 + OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_multiplier) = 0;
        *(v63 + OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_shouldOffset) = 0;
        v77((v63 + OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_identifier), v58, v59);
        v76((v63 + OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_schedule), v61, v62);

        v64 = sub_20BD0E158();

        v90[0] = v63;
        v90[1] = v64;
        v91 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AD0, &qword_20C189518);
        sub_20BFEE570();
        v90[0] = sub_20C13C3E4();
        v65 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AF8, &qword_20C189528));
        v66 = sub_20C13C224();
        [v66 setTranslatesAutoresizingMaskIntoConstraints_];
        v67 = *&v80[v55];
        *&v80[v55] = v66;
        v68 = v66;

        sub_20C13C214();
        v2 = v55;

        (*(v84 + 8))(v53, v62);
        (*(v57 + 8))(v89, v59);
      }

      v32 = v78;
    }

    v69 = *&v2[OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_titleLabel];
    [v69 setAttributedText_];
    v70 = [v2 contentView];
    [v70 addSubview_];

    v71 = [v2 contentView];
    [v71 addSubview_];

    v72 = &v2[OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_itemInfo];
    swift_beginAccess();
    v73 = type metadata accessor for ShelfCellItemInfo(0);
    if ((*(*(v73 - 8) + 48))(v72, 1, v73))
    {
      v74 = 0;
    }

    else
    {
      v74 = v72[16];
    }

    v75 = &v2[OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_layout];
    *v75 = xmmword_20C189480;
    v75[16] = v74;
    sub_20BFED0E8();

    return sub_20B520158(v79, &unk_27C762300, &unk_20C151350);
  }

  else
  {
    sub_20C13B454();

    v37 = v2;
    v38 = sub_20C13BB74();
    v39 = sub_20C13D1D4();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v90[0] = v42;
      *v40 = 138543618;
      *(v40 + 4) = v37;
      *v41 = v37;
      *(v40 + 12) = 2082;
      v92 = a1;
      v43 = sub_20B5F66D0();
      v44 = v37;
      v45 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v43);
      v47 = sub_20B51E694(v45, v46, v90);

      *(v40 + 14) = v47;
      _os_log_impl(&dword_20B517000, v38, v39, "Attempted to configure %{public}@ with item: %{public}s", v40, 0x16u);
      sub_20B520158(v41, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v41, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x20F2F6A40](v42, -1, -1);
      MEMORY[0x20F2F6A40](v40, -1, -1);
    }

    return (*(v4 + 8))(v6, v87);
  }
}

unint64_t sub_20BFEE570()
{
  result = qword_27C771AD8;
  if (!qword_27C771AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C771AD0, &qword_20C189518);
    sub_20BFEE5FC();
    sub_20BFEE650();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771AD8);
  }

  return result;
}

unint64_t sub_20BFEE5FC()
{
  result = qword_27C771AE0;
  if (!qword_27C771AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771AE0);
  }

  return result;
}

unint64_t sub_20BFEE650()
{
  result = qword_27C771AE8;
  if (!qword_27C771AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C771AF0, &qword_20C189520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771AE8);
  }

  return result;
}

void sub_20BFEE6B4()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_itemInfo;
  v3 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = v1 + OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_layout;
  v5 = sub_20C1380F4();
  *v4 = xmmword_20C189480;
  *(v4 + 16) = v5;
  *(v1 + OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_activatedConstraints) = MEMORY[0x277D84F90];
  v6 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_artworkView;
  sub_20C13C354();
  sub_20C13C3E4();
  v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AF8, &qword_20C189528));
  v8 = sub_20C13C224();
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v6) = v8;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setAdjustsFontForContentSizeCategory_];
  v10 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A08] compatibleWithTraitCollection:0];
  v11 = [v10 fontDescriptorWithSymbolicTraits_];
  if (v11)
  {
    v12 = v11;

    v10 = v12;
  }

  v13 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_titleLabel;
  v14 = [objc_opt_self() fontWithDescriptor:v10 size:0.0];

  [v9 setFont_];
  [v9 setLineBreakMode_];
  [v9 setNumberOfLines_];
  [v9 setAllowsDefaultTighteningForTruncation_];
  v15 = [objc_opt_self() whiteColor];
  [v9 setTextColor_];

  [v9 setLineBreakMode_];
  *(v1 + v13) = v9;
  sub_20C13DE24();
  __break(1u);
}

char *sub_20BFEE9C8(uint64_t a1)
{
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v2 + 8))(v4, v1);
  v5 = objc_allocWithZone(type metadata accessor for PhoneSessionHeartRateDiscoveryView());

  v7 = sub_20B965698(v6);

  return v7;
}

char *sub_20BFEEAF8(uint64_t a1)
{
  v1 = objc_allocWithZone(type metadata accessor for PhoneSessionWatchDiscoveryView());

  v3 = sub_20B5E4178(v2);

  return v3;
}

uint64_t sub_20BFEEB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_20C137254();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v19[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, a2, v11);
  sub_20B51CC64(a5, v19);
  objc_allocWithZone(type metadata accessor for TabletSessionSummaryViewController(0));

  swift_unknownObjectRetain();
  sub_20B7A0BD4(a1, v13, a3, a4, v19);
  v16 = v15;

  swift_unknownObjectRelease();
  return v16;
}

void sub_20BFEEC94(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = objc_allocWithZone(type metadata accessor for SessionVideoPlayerViewController(0));
  swift_unknownObjectRetain();

  v9 = sub_20BE8FB54(a1, a2, a3);
  v10 = sub_20BE95A84(*MEMORY[0x277CE5DD0]);

  *a4 = v10;
  a4[1] = &off_2822F15A0;
  a4[2] = &off_2822F1590;
  a4[3] = &off_2822F1578;
  a4[4] = &off_2822F15B0;
}

char *sub_20BFEED50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = sub_20C137254();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C133B84();
  result = 0;
  if ((v10 & 1) == 0)
  {
    (*(v7 + 16))(v9, a2, v6);
    v12 = objc_allocWithZone(type metadata accessor for SessionOverlayView());

    v14 = sub_20C130A00(v13, v9);

    return v14;
  }

  return result;
}

uint64_t sub_20BFEEE88(uint64_t a1)
{
  v1 = sub_20C1344B4();
  v3 = v2;
  v5 = v4 & 1;
  sub_20B590B28();
  sub_20B590B7C();
  v6 = sub_20C133BF4();
  sub_20B583F4C(v1, v3, v5);
  if (v6)
  {
    v7 = objc_allocWithZone(type metadata accessor for MeditationCountdownView());
    v8 = sub_20B9DBECC(160.0, 8.0, 54.0, 54.0);
    v9 = &unk_27C762FD8;
    v10 = type metadata accessor for MeditationCountdownView;
    v11 = &unk_20C1671F8;
  }

  else
  {
    v12 = sub_20C1344B4();
    v14 = v13;
    v16 = v15;
    v17 = sub_20C133B84();
    sub_20B583F4C(v12, v14, v16 & 1);
    v18 = objc_allocWithZone(type metadata accessor for WorkoutCountdownView());
    sub_20B78B908((v17 & 1) == 0, 255.0, 17.5);
    v8 = v19;
    v9 = &unk_27C762FD0;
    v10 = type metadata accessor for WorkoutCountdownView;
    v11 = &unk_20C158108;
  }

  sub_20B6618A4(v9, v10, v11);
  return v8;
}

id sub_20BFEF030(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762FB8, &unk_20C189560);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762FC0, &unk_20C1530C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  sub_20C1343D4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762FC8, &unk_20C189570);
  if ((*(*(v9 - 8) + 48))(v5, 1, v9) == 1)
  {
    v10 = &qword_27C762FB8;
    v11 = &unk_20C189560;
    v12 = v5;
LABEL_5:
    sub_20B520158(v12, v10, v11);
    return 0;
  }

  sub_20C133BD4();
  sub_20B520158(v5, &qword_27C762FC8, &unk_20C189570);
  v13 = sub_20C135544();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    v10 = &qword_27C762FC0;
    v11 = &unk_20C1530C0;
    v12 = v8;
    goto LABEL_5;
  }

  v16 = sub_20BF81694(a2);
  (*(v14 + 8))(v8, v13);
  return v16;
}

id sub_20BFEF244()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    v3 = sub_20BFEFCEC();
    v4 = *(v0 + 56);
    *(v0 + 56) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

double sub_20BFEF29C(void *a1, uint64_t a2)
{
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = *(v2 + 104);
  if (v12)
  {
    v13 = *(v2 + 152);
    if (v13)
    {
      v14 = *(v2 + 48);
      if (v14)
      {
        v31 = *(v2 + 120);
        if (v31)
        {
          if (*(v2 + 136) == 1 && (v15 = *(v2 + 16)) != 0 && (v30 = *(v2 + 144)) != 0)
          {
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v16 = [a1 blitCommandEncoder];
            if (v16)
            {
              v29 = v16;
              [v16 copyFromTexture:v15 toTexture:v30];
              *(v2 + 136) = 0;
              [v29 endEncoding];
              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v21 = v31;
            if (!*(v2 + 160))
            {
              goto LABEL_19;
            }
          }

          else
          {
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v21 = v31;
            swift_unknownObjectRetain();
            if (!*(v2 + 160))
            {
              goto LABEL_19;
            }
          }

          v22 = [a1 renderCommandEncoderWithDescriptor_];
          if (v22)
          {
            v23 = v22;
            v24 = sub_20C13C914();
            [v23 setLabel_];

            [v23 setRenderPipelineState_];
            [v23 setVertexBuffer:v21 offset:0 atIndex:0];
            [v23 setVertexBytes:a2 length:384 atIndex:1];
            [v23 setFragmentTexture:v14 atIndex:0];
            [v23 setFragmentTexture:*(v2 + 144) atIndex:1];
            [v23 setFragmentBytes:a2 length:384 atIndex:1];
            [v23 drawIndexedPrimitives:3 indexCount:*(*(v2 + 112) + 16) indexType:0 indexBuffer:v12 indexBufferOffset:0 instanceCount:1];
            [v23 endEncoding];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            return result;
          }

LABEL_19:
          sub_20C13B4F4();
          v25 = sub_20C13BB74();
          v26 = sub_20C13D1D4();
          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            *v27 = 0;
            _os_log_impl(&dword_20B517000, v25, v26, "[TextureBlender] Failed to create command encoder", v27, 2u);
            MEMORY[0x20F2F6A40](v27, -1, -1);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          (*(v6 + 8))(v11, v5);
          return result;
        }
      }
    }
  }

  sub_20C13B4F4();
  v17 = sub_20C13BB74();
  v18 = sub_20C13D1D4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_20B517000, v17, v18, "[TextureBlender] Failed to encode rotating artwork. Required value missing", v19, 2u);
    MEMORY[0x20F2F6A40](v19, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  return result;
}

void sub_20BFEF76C(void *a1)
{
  v2 = *(v1 + 32);
  if (v2 <= 0.0)
  {
    return;
  }

  v3 = *(v1 + 40);
  if (v3 <= 0.0)
  {
    return;
  }

  if (v2 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (*&v2 >> 52 > 0x7FEuLL || *&v3 >> 52 > 0x7FEuLL)
  {
    goto LABEL_15;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v5 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v1 + 24) width:v2 height:v3 mipmapped:0];
  [v5 setStorageMode_];
  [v5 setUsage_];
  *(v1 + 16) = [a1 newTextureWithDescriptor_];
  swift_unknownObjectRelease();
  *(v1 + 144) = [a1 newTextureWithDescriptor_];
  swift_unknownObjectRelease();
  v6 = sub_20BFEFBA8();

  v7 = *(v1 + 160);
  *(v1 + 160) = v6;
}

id sub_20BFEF904()
{
  v25[1] = *MEMORY[0x277D85DE8];
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 72);
  v6 = sub_20BFEF244();
  v24 = 0;
  v7 = [v5 newRenderPipelineStateWithDescriptor:v6 error:&v24];

  v8 = v24;
  if (!v7)
  {
    v9 = v8;
    v10 = sub_20C132A44();

    swift_willThrow();
    v24 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
    v11 = sub_20B78B2B4();
    swift_dynamicCast();
    v12 = v23[1];
    sub_20C13B4F4();
    v13 = v12;
    v14 = sub_20C13BB74();
    v15 = sub_20C13D1D4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25[0] = v17;
      *v16 = 136315138;
      v23[0] = v13;
      v18 = sub_20B78B300();
      v19 = MEMORY[0x20F2F5860](v11, v18);
      v21 = sub_20B51E694(v19, v20, v25);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_20B517000, v14, v15, "[TextureBlender] Failed to create pipeline state with error %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x20F2F6A40](v17, -1, -1);
      MEMORY[0x20F2F6A40](v16, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v4, v1);

    return 0;
  }

  return v7;
}

id sub_20BFEFBA8()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD6F50]) init];
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript_];

  if (v3)
  {
    v4 = *(v0 + 16);
    v5 = v3;
    [v5 setTexture_];
    [v5 setLoadAction_];
    [v5 setStoreAction_];

    [v5 setClearColor_];
    return v1;
  }

  else
  {
    result = sub_20C13DE24();
    __break(1u);
  }

  return result;
}

id sub_20BFEFCEC()
{
  v1 = sub_20B633A38(0x797469746E656469, 0xEF7865747265765FLL, 0xD000000000000010, 0x800000020C1BA480, 0x2065727574786554, 0xEF7265646E656C42, *(v0 + 96));
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript_];

  if (v3)
  {
    [v3 setPixelFormat_];
    if (qword_27C760A40 != -1)
    {
      swift_once();
    }

    [v1 setVertexDescriptor_];

    return v1;
  }

  else
  {
    result = sub_20C13DE24();
    __break(1u);
  }

  return result;
}

uint64_t sub_20BFEFE74()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = *(v0 + 88);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_20BFEFF0C()
{
  sub_20BFEFE74();

  return swift_deallocClassInstance();
}

void *sub_20BFEFF64(void *result)
{
  *(v1 + 16) = xmmword_20C189580;
  *(v1 + 32) = vdupq_n_s64(0x4060000000000000uLL);
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  v2 = &unk_28228DEB0;
  *(v1 + 112) = &unk_28228DEB0;
  if (qword_27C760A68 != -1)
  {
    v12 = result;
    swift_once();
    result = v12;
    v2 = *(v1 + 112);
  }

  *(v1 + 128) = qword_27C79BEF0;
  *(v1 + 136) = 0;
  *(v1 + 152) = 0;
  *(v1 + 160) = 0;
  *(v1 + 144) = 0;
  v3 = result[1];
  v5 = result[3];
  v4 = result[4];
  v6 = *(result + 1);
  *(v1 + 64) = *result;
  *(v1 + 80) = v6;
  *(v1 + 96) = v4;
  v7 = v2[2];
  if (v7 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = 2 * v7;
    swift_unknownObjectRetain_n();

    swift_unknownObjectRetain();
    v9 = v5;
    swift_unknownObjectRetain();
    result = [v3 newBufferWithBytes:v2 + 4 length:v8 options:0];
    *(v1 + 104) = result;
    v10 = *(v1 + 128);
    v11 = *(v10 + 16);
    if (!(v11 >> 57))
    {
      *(v1 + 120) = [v3 newBufferWithBytes:v10 + 32 length:v11 << 6 options:0];
      *(v1 + 152) = sub_20BFEF904();
      swift_unknownObjectRelease();
      sub_20BFEF76C(v3);
      swift_unknownObjectRelease();
      return v1;
    }
  }

  __break(1u);
  return result;
}

id sub_20BFF00E0(uint64_t a1)
{
  if (a1 <= 56)
  {
    if (a1 > 36)
    {
      if (a1 != 37 && a1 != 52)
      {
        goto LABEL_22;
      }
    }

    else if (a1 != 13 && a1 != 35)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (a1 > 64)
    {
      if (a1 == 65 || a1 == 66 || a1 == 72)
      {
        goto LABEL_23;
      }

LABEL_22:
      a1 = 37;
      goto LABEL_23;
    }

    if (a1 != 57 && a1 != 63)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  v1 = sub_20B9C7D00(a1);
  v2 = [v1 imageWithRenderingMode_];

  return v2;
}

void sub_20BFF01E8(uint64_t a1)
{
  v3 = sub_20C13C554();
  v91 = *(v3 - 8);
  v92 = v3;
  MEMORY[0x28223BE20](v3);
  v90 = (&v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771B10, &unk_20C1896C0);
  MEMORY[0x28223BE20](v110);
  v109 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v108 = &v89 - v7;
  v8 = sub_20C1344C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v94 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v89 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8, &unk_20C14FB80);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v89 - v15;
  v17 = sub_20C135AE4();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, a1, v17);
  (*(v18 + 56))(v16, 0, 1, v17);
  v19 = OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_detail;
  swift_beginAccess();
  v98 = v1;
  sub_20BFF37F8(v16, v1 + v19);
  swift_endAccess();
  v97 = a1;
  sub_20C135AA4();
  v20 = sub_20C134364();
  v21 = *(v9 + 8);
  v95 = v9 + 8;
  v96 = v8;
  v93 = v21;
  v21(v13, v8);
  v22 = *(v20 + 16);
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v23 = sub_20BEDE9C4(*(v20 + 16), 0);
    v24 = *(sub_20C133474() - 8);
    sub_20BEE2160(v126, &v23[(*(v24 + 80) + 32) & ~*(v24 + 80)], v22, v20);
    v112 = v25;
    v26 = *&v126[0];
    v27 = v127;

    sub_20B583EDC(v26);
    if (v112 != v22)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }
  }

  *&v126[0] = v23;
  sub_20BC092A0(v126);

  v27 = *&v126[0];
  v28 = sub_20C138104();
  v107 = v28 == sub_20C138104();
  v29 = v27[2];
  if (v29)
  {
    *&v126[0] = MEMORY[0x277D84F90];
    sub_20BB5D8EC(0, v29, 0);
    v30 = *&v126[0];
    v106 = v27[2];
    v31 = sub_20C133474();
    v32 = 0;
    v33 = *(v31 - 8);
    v101 = v27 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v102 = v33;
    v103 = v31;
    v99 = v33 + 32;
    v100 = v33 + 16;
    v104 = v29;
    v105 = v27;
    v34 = v109;
    while (v106 != v32)
    {
      if (v32 >= v27[2])
      {
        goto LABEL_22;
      }

      v35 = v32 + 1;
      v112 = v30;
      v36 = v110;
      v37 = *(v110 + 48);
      v38 = v102;
      v39 = v108;
      v40 = v103;
      (*(v102 + 16))(&v108[v37], &v101[*(v102 + 72) * v32], v103);
      *v34 = v32;
      (*(v38 + 32))(&v34[*(v36 + 48)], &v39[v37], v40);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A80, &unk_20C1624A0);
      v111 = swift_allocBox();
      v43 = v42;
      v44 = v42 + v41[20];
      v45 = v41[24];
      v46 = v41[28];
      *v42 = sub_20C133424();
      v43[1] = v47;
      v43[2] = sub_20C133434();
      v43[3] = v48;
      sub_20C133444();
      *v44 = sub_20C133404();
      *(v44 + 1) = v49;
      v44[16] = v50 & 1;
      *(v43 + v45) = v35;
      v30 = v112;
      *(v43 + v46) = v107;
      sub_20B520158(v34, &qword_27C771B10, &unk_20C1896C0);
      *&v126[0] = v30;
      v52 = *(v30 + 16);
      v51 = *(v30 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_20BB5D8EC((v51 > 1), v52 + 1, 1);
        v30 = *&v126[0];
      }

      v53 = v111 | 0x5000000000000001;
      *(v30 + 16) = v52 + 1;
      *(v30 + 8 * v52 + 32) = v53;
      v32 = v35;
      v54 = v104 == v35;
      v27 = v105;
      if (v54)
      {

        v112 = v30;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v112 = MEMORY[0x277D84F90];
LABEL_13:
  v55 = v98;
  __swift_project_boxed_opaque_existential_1((v98 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_networkEvaluator), *(v98 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_networkEvaluator + 24));
  v56 = sub_20C13A884();
  v111 = sub_20BFF0BC8(v97, v56);
  v58 = v57;
  __swift_project_boxed_opaque_existential_1((v55 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_storefrontLocalizer), *(v55 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_storefrontLocalizer + 24));
  v59 = sub_20C138D34();
  v61 = v60;
  *&v126[0] = 0;
  *(&v126[0] + 1) = 0xE000000000000000;
  sub_20C13DC94();

  *&v126[0] = 0x5F74756F6B726F77;
  *(&v126[0] + 1) = 0xE800000000000000;
  v62 = v94;
  sub_20C135AA4();
  v63 = sub_20C134324();
  v65 = v64;
  v93(v62, v96);
  MEMORY[0x20F2F4230](v63, v65);

  MEMORY[0x20F2F4230](0x7254636973756D5FLL, 0xEC000000736B6361);
  *&v116 = v111;
  *(&v116 + 1) = v58;
  LOBYTE(v117) = 1;
  *(&v117 + 1) = *v115;
  DWORD1(v117) = *&v115[3];
  *(&v117 + 1) = 0;
  *&v118 = 0;
  WORD4(v118) = 128;
  *(&v118 + 10) = *&v113[7];
  HIWORD(v118) = v114;
  v119 = 0uLL;
  v120 = v126[0];
  *&v121 = v59;
  *(&v121 + 1) = v61;
  LOBYTE(v122) = 1;
  DWORD1(v122) = *&v113[3];
  *(&v122 + 1) = *v113;
  *(&v122 + 1) = v112;
  v123 = MEMORY[0x277D84F90];
  *&v124 = 0;
  *(&v124 + 1) = v59;
  *v125 = v61;
  *&v125[8] = xmmword_20C150190;
  nullsub_1();
  v66 = v55 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row;
  v67 = *(v55 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 144);
  v133 = *(v55 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 128);
  v134 = v67;
  v135 = *(v55 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 160);
  v68 = *(v55 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 80);
  v129 = *(v55 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 64);
  v130 = v68;
  v69 = *(v55 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 112);
  v131 = *(v55 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 96);
  v132 = v69;
  v70 = *(v55 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 16);
  v126[0] = *(v55 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row);
  v126[1] = v70;
  v71 = *(v55 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 48);
  v127 = *(v55 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 32);
  v128 = v71;
  v72 = v123;
  v73 = *v125;
  *(v66 + 128) = v124;
  *(v66 + 144) = v73;
  *(v66 + 160) = *&v125[16];
  v74 = v121;
  *(v66 + 64) = v120;
  *(v66 + 80) = v74;
  *(v66 + 96) = v122;
  *(v66 + 112) = v72;
  v75 = v117;
  *v66 = v116;
  *(v66 + 16) = v75;
  v76 = v119;
  *(v66 + 32) = v118;
  *(v66 + 48) = v76;

  sub_20B520158(v126, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      sub_20B61D950(v98, Strong);
      if (v79)
      {
        v81 = v78;
        v82 = v79;
        v83 = v80;
        sub_20B5E2E18();
        v84 = sub_20C13D374();
        v86 = v90;
        v85 = v91;
        *v90 = v84;
        v87 = v92;
        (*(v85 + 104))(v86, *MEMORY[0x277D85200], v92);
        v88 = sub_20C13C584();
        (*(v85 + 8))(v86, v87);
        if ((v88 & 1) == 0)
        {
LABEL_24:
          __break(1u);

          __break(1u);
          return;
        }

        sub_20B620DC0(v81, v82, v83, v98, 1, v27);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_20BFF0BC8(uint64_t a1, uint64_t a2)
{
  v53 = sub_20C135AE4();
  v56 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v50 = &v50 - v6;
  v7 = sub_20C13BB84();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v51 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v50 - v13;
  v15 = sub_20C1344C4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20C1350A4();
  v21 = v20;
  if (v19 == sub_20C1350A4() && v21 == v22)
  {

LABEL_5:
    sub_20C13B534();
    v24 = v56;
    v25 = v53;
    (*(v56 + 16))(v4, a1, v53);
    v26 = sub_20C13BB74();
    v27 = sub_20C13D1F4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v57 = v29;
      *v28 = 136446210;
      sub_20BFF37B0(&qword_27C766F20, MEMORY[0x277D51E68], MEMORY[0x277D51E70]);
      v30 = sub_20C13DFA4();
      v32 = v31;
      (*(v24 + 8))(v4, v25);
      v33 = sub_20B51E694(v30, v32, &v57);

      *(v28 + 4) = v33;
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x20F2F6A40](v29, -1, -1);
      MEMORY[0x20F2F6A40](v28, -1, -1);
    }

    else
    {

      (*(v24 + 8))(v4, v25);
    }

    (*(v54 + 8))(v9, v55);
    return 0;
  }

  v23 = sub_20C13DFF4();

  if (v23)
  {
    goto LABEL_5;
  }

  v35 = v52;
  sub_20C135AA4();
  sub_20C1343C4();
  (*(v16 + 8))(v18, v15);
  v36 = sub_20C132C14();
  v37 = (*(*(v36 - 8) + 48))(v14, 1, v36);
  sub_20B520158(v14, &unk_27C7617F0, &unk_20C151A10);
  v38 = v56;
  if (v37 != 1)
  {
    __swift_project_boxed_opaque_existential_1((v35 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_storefrontLocalizer), *(v35 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_storefrontLocalizer + 24));
    return sub_20C138D34();
  }

  v39 = v51;
  sub_20C13B534();
  v40 = v50;
  v41 = v53;
  (*(v38 + 16))(v50, a1, v53);
  v42 = sub_20C13BB74();
  v43 = sub_20C13D1F4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v57 = v45;
    *v44 = 136446210;
    sub_20BFF37B0(&qword_27C766F20, MEMORY[0x277D51E68], MEMORY[0x277D51E70]);
    v46 = sub_20C13DFA4();
    v48 = v47;
    (*(v38 + 8))(v40, v41);
    v49 = sub_20B51E694(v46, v48, &v57);

    *(v44 + 4) = v49;
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x20F2F6A40](v45, -1, -1);
    MEMORY[0x20F2F6A40](v44, -1, -1);
  }

  else
  {

    (*(v38 + 8))(v40, v41);
  }

  (*(v54 + 8))(v39, v55);
  return 0;
}

uint64_t sub_20BFF1290()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340, &unk_20C150290);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_detail, &qword_27C7620C8, &unk_20C14FB80);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_networkEvaluator));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_storefrontLocalizer));
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MusicTracksShelf(uint64_t a1)
{
  result = qword_27C771B00;
  if (!qword_27C771B00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BFF1418(uint64_t a1)
{
  sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    sub_20B9B577C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_20BFF1508()
{
  v1 = sub_20C13BB84();
  v84 = *(v1 - 8);
  v85 = v1;
  MEMORY[0x28223BE20](v1);
  v81 = &v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v78 = &v74 - v4;
  MEMORY[0x28223BE20](v5);
  v74 = &v74 - v6;
  v75 = type metadata accessor for ShelfMetricAction(0);
  MEMORY[0x28223BE20](v75);
  v76 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v8 - 8);
  v86 = &v74 - v9;
  v10 = sub_20C1344C4();
  v79 = *(v10 - 8);
  v80 = v10;
  MEMORY[0x28223BE20](v10);
  v77 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v74 - v13;
  v15 = sub_20C132C14();
  v83 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v82 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8, &unk_20C14FB80);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v74 - v18;
  v20 = sub_20C135AE4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_detail;
  swift_beginAccess();
  sub_20B52F9E8(&v0[v24], v19, &qword_27C7620C8, &unk_20C14FB80);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_20B520158(v19, &qword_27C7620C8, &unk_20C14FB80);
    v25 = v81;
    sub_20C13B534();
    v26 = sub_20C13BB74();
    v27 = sub_20C13D1D4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_20B517000, v26, v27, "Catalog workout missing when trying to play music", v28, 2u);
      MEMORY[0x20F2F6A40](v28, -1, -1);
    }

    return (*(v84 + 8))(v25, v85);
  }

  v81 = v0;
  (*(v21 + 32))(v23, v19, v20);
  sub_20C135AA4();
  v30 = v86;
  sub_20C1343C4();
  v31 = v80;
  v32 = *(v79 + 8);
  v32(v14, v80);
  v33 = v83;
  v34 = (*(v83 + 48))(v30, 1, v15);
  v35 = v23;
  if (v34 == 1)
  {
    sub_20B520158(v86, &unk_27C7617F0, &unk_20C151A10);
    v36 = v78;
    sub_20C13B534();
    v37 = sub_20C13BB74();
    v38 = sub_20C13D1D4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_20B517000, v37, v38, "Catalog item was missing playlist URL", v39, 2u);
      MEMORY[0x20F2F6A40](v39, -1, -1);
    }

    (*(v84 + 8))(v36, v85);
    return (*(v21 + 8))(v35, v20);
  }

  (*(v33 + 32))(v82, v86, v15);
  v40 = v77;
  sub_20C135AA4();
  v86 = sub_20C1343E4();
  v42 = v41;
  v32(v40, v31);
  v43 = v33;
  if (!v42)
  {
    v70 = v74;
    sub_20C13B534();
    v71 = sub_20C13BB74();
    v72 = sub_20C13D1D4();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_20B517000, v71, v72, "Catalog item was missing playlist identifier", v73, 2u);
      MEMORY[0x20F2F6A40](v73, -1, -1);
    }

    (*(v84 + 8))(v70, v85);
    (*(v43 + 8))(v82, v15);
    return (*(v21 + 8))(v35, v20);
  }

  v84 = v21;
  v85 = v23;
  v44 = sub_20C136664();
  v45 = v76;
  (*(*(v44 - 8) + 56))(v76, 1, 1, v44);
  v46 = v75;
  v47 = *(v75 + 20);
  v48 = *MEMORY[0x277D513F0];
  v49 = sub_20C134F24();
  (*(*(v49 - 8) + 104))(v45 + v47, v48, v49);
  v50 = *(v43 + 56);
  v51 = v15;
  v50(v45 + v46[6], 1, 1, v15);
  v52 = v46[8];
  v53 = *MEMORY[0x277D52428];
  v54 = sub_20C135ED4();
  v55 = *(v54 - 8);
  (*(v55 + 104))(v45 + v52, v53, v54);
  (*(v55 + 56))(v45 + v52, 0, 1, v54);
  v56 = v46[10];
  v57 = *MEMORY[0x277D51768];
  v58 = sub_20C1352E4();
  (*(*(v58 - 8) + 104))(v45 + v56, v57, v58);
  v59 = v46[11];
  v60 = sub_20C136E94();
  (*(*(v60 - 8) + 56))(v45 + v59, 1, 1, v60);
  v61 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v62 = (v45 + v46[7]);
  *v62 = v86;
  v62[1] = v42;
  v63 = (v45 + v46[9]);
  *v63 = 0;
  v63[1] = 0;
  *(v45 + v46[12]) = v61;
  v64 = v81;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    sub_20BFA0104(v64, v45, Strong);
    swift_unknownObjectRelease();
  }

  sub_20B68D110(v45);

  v66 = [objc_opt_self() sharedApplication];
  v67 = v82;
  v68 = sub_20C132B64();
  sub_20B6B3B84(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_20BFF37B0(&qword_27C761D60, type metadata accessor for OpenExternalURLOptionsKey, &unk_20C14F080);
  v69 = sub_20C13C744();

  [v66 openURL:v68 options:v69 completionHandler:0];

  (*(v83 + 8))(v67, v51);
  return (*(v84 + 8))(v85, v20);
}

uint64_t sub_20BFF1F4C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BFF1FC4@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340, &unk_20C150290);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20BFF2094()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row;
  sub_20B5D8060(v11);
  v2 = v11[9];
  *(v1 + 128) = v11[8];
  *(v1 + 144) = v2;
  *(v1 + 160) = v12;
  v3 = v11[5];
  *(v1 + 64) = v11[4];
  *(v1 + 80) = v3;
  v4 = v11[7];
  *(v1 + 96) = v11[6];
  *(v1 + 112) = v4;
  v5 = v11[1];
  *v1 = v11[0];
  *(v1 + 16) = v5;
  v6 = v11[3];
  *(v1 + 32) = v11[2];
  *(v1 + 48) = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_detail;
  v8 = sub_20C135AE4();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E40, &unk_20C16DEE0);
  sub_20C133AA4();
  sub_20B51C710(v10, v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_networkEvaluator);
  sub_20C133AA4();
  *(v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_platform) = v10[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(v10, v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_storefrontLocalizer);
  return v0;
}

void sub_20BFF2230(unint64_t a1)
{
  v161 = a1;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  v167 = v2;
  v168 = v3;
  MEMORY[0x28223BE20](v2);
  v162 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v159 = &v135 - v6;
  MEMORY[0x28223BE20](v7);
  v153 = &v135 - v8;
  MEMORY[0x28223BE20](v9);
  v147 = &v135 - v10;
  MEMORY[0x28223BE20](v11);
  v144 = &v135 - v12;
  v140 = type metadata accessor for ShelfMetricAction(0);
  MEMORY[0x28223BE20](v140);
  v141 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_20C132654();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v149 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_20C133474();
  v160 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v148 = &v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7665D8, &unk_20C1896B0);
  MEMORY[0x28223BE20](v16 - 8);
  v157 = &v135 - v17;
  v156 = sub_20C132704();
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v154 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v19 - 8);
  v145 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v170 = &v135 - v22;
  v163 = sub_20C1344C4();
  v166 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v143 = &v135 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v158 = &v135 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v135 - v27;
  v29 = sub_20C132C14();
  v165 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v146 = &v135 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v164 = &v135 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8, &unk_20C14FB80);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v135 - v34;
  v36 = sub_20C135AE4();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v39 = &v135 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_detail;
  swift_beginAccess();
  v142 = v1;
  sub_20B52F9E8(v1 + v40, v35, &qword_27C7620C8, &unk_20C14FB80);
  v41 = *(v37 + 48);
  v169 = v36;
  if (v41(v35, 1, v36) == 1)
  {
    sub_20B520158(v35, &qword_27C7620C8, &unk_20C14FB80);
    v42 = v162;
    sub_20C13B534();
    v43 = sub_20C13BB74();
    v44 = sub_20C13D1D4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_20B517000, v43, v44, "Catalog workout missing when trying to play music", v45, 2u);
      MEMORY[0x20F2F6A40](v45, -1, -1);
    }

    (*(v168 + 8))(v42, v167);
    return;
  }

  (*(v37 + 32))(v39, v35, v169);
  sub_20C135AA4();
  v46 = v170;
  sub_20C1343C4();
  v48 = v166 + 8;
  v47 = *(v166 + 8);
  v49 = v163;
  v47(v28, v163);
  v50 = v165;
  v51 = *(v165 + 48);
  if (v51(v46, 1, v29) == 1)
  {
    sub_20B520158(v170, &unk_27C7617F0, &unk_20C151A10);
    v52 = v159;
    sub_20C13B534();
    v53 = sub_20C13BB74();
    v54 = sub_20C13D1D4();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_20B517000, v53, v54, "Catalog workout was missing playlist URL", v55, 2u);
      MEMORY[0x20F2F6A40](v55, -1, -1);
    }

    (*(v168 + 8))(v52, v167);
    (*(v37 + 8))(v39, v169);
    return;
  }

  v56 = v29;
  v57 = v48;
  v162 = v51;
  v58 = *(v50 + 32);
  v59 = v170;
  v139 = v56;
  v170 = v50 + 32;
  v159 = v58;
  (v58)(v164, v59);
  v60 = v158;
  v138 = v39;
  sub_20C135AA4();
  v61 = sub_20C134364();
  v47(v60, v49);
  v62 = *(v61 + 16);
  v63 = MEMORY[0x277D84F90];
  v166 = v57;
  v136 = v47;
  if (v62)
  {
    v137 = v37;
    v63 = sub_20BEDE9C4(v62, 0);
    sub_20BEE2160(&v171, &v63[(*(v160 + 80) + 32) & ~*(v160 + 80)], v62, v61);
    v65 = v64;
    v66 = v171;

    sub_20B583EDC(v66);
    if (v65 != v62)
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v37 = v137;
  }

  v171 = v63;
  sub_20BC092A0(&v171);

  v67 = v171;
  v68 = v161;
  v69 = v138;
  v70 = v139;
  v71 = v165;
  v72 = v157;
  if (v171[2] <= v161)
  {

    v74 = v153;
    sub_20C13B534();
    v75 = sub_20C13BB74();
    v83 = sub_20C13D1D4();
    if (os_log_type_enabled(v75, v83))
    {
      v84 = swift_slowAlloc();
      v85 = v68;
      v77 = v84;
      *v84 = 134349056;
      *(v84 + 4) = v85;
      v78 = "No track at index %{public}ld";
      v79 = v83;
      v80 = v75;
      v81 = v84;
      v82 = 12;
      goto LABEL_18;
    }

LABEL_19:

    (*(v168 + 8))(v74, v167);
    (*(v71 + 8))(v164, v70);
    (*(v37 + 8))(v69, v169);
    return;
  }

  sub_20C132684();
  v62 = v155;
  v73 = v156;
  if ((*(v155 + 48))(v72, 1, v156) == 1)
  {

    sub_20B520158(v72, &qword_27C7665D8, &unk_20C1896B0);
    v74 = v147;
    sub_20C13B534();
    v75 = sub_20C13BB74();
    v76 = sub_20C13D1D4();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      v78 = "Failed to build components from playlist URL";
      v79 = v76;
      v80 = v75;
      v81 = v77;
      v82 = 2;
LABEL_18:
      _os_log_impl(&dword_20B517000, v80, v79, v78, v81, v82);
      MEMORY[0x20F2F6A40](v77, -1, -1);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  (v62)[4](v154, v72, v73);
  if ((v161 & 0x8000000000000000) != 0)
  {
    goto LABEL_36;
  }

  v137 = v37;
  if (*(v67 + 16) <= v161)
  {
LABEL_37:
    __break(1u);

    __break(1u);
    return;
  }

  v86 = v71;
  (*(v160 + 16))(v148, v67 + ((*(v160 + 80) + 32) & ~*(v160 + 80)) + *(v160 + 72) * v161, v150);

  sub_20C1333F4();
  v87 = v149;
  sub_20C132624();

  v88 = sub_20C132664();
  if (v88)
  {
    v89 = v88;
  }

  else
  {
    v89 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767EB0, &qword_20C163FE8);
  v90 = v151;
  v91 = (*(v151 + 80) + 32) & ~*(v151 + 80);
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_20C14F980;
  (*(v90 + 16))(v92 + v91, v87, v152);
  v171 = v89;
  sub_20B8D9414(v92);
  sub_20C132674();
  v93 = v145;
  sub_20C132694();
  v94 = v139;
  v95 = (v162)(v93, 1, v139);
  v96 = v164;
  if (v95 == 1)
  {
    sub_20B520158(v93, &unk_27C7617F0, &unk_20C151A10);
    v97 = v144;
    sub_20C13B534();
    v98 = sub_20C13BB74();
    v99 = sub_20C13D1D4();
    v100 = os_log_type_enabled(v98, v99);
    v101 = v137;
    if (v100)
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&dword_20B517000, v98, v99, "Failed to build track URL from components", v102, 2u);
      MEMORY[0x20F2F6A40](v102, -1, -1);
    }

    (*(v168 + 8))(v97, v167);
    (*(v151 + 8))(v149, v152);
    (*(v160 + 8))(v148, v150);
    (*(v155 + 8))(v154, v156);
    (*(v86 + 8))(v96, v94);
    (*(v101 + 8))(v138, v169);
  }

  else
  {
    (v159)(v146, v93, v94);
    v103 = v143;
    v104 = v138;
    sub_20C135AA4();
    v105 = sub_20C1343E4();
    v107 = v106;
    v136(v103, v163);
    v108 = v137;
    if (v107)
    {
      v109 = sub_20C136664();
      v110 = v141;
      (*(*(v109 - 8) + 56))(v141, 1, 1, v109);
      v111 = v140;
      v112 = *(v140 + 20);
      v113 = *MEMORY[0x277D513F0];
      v114 = sub_20C134F24();
      (*(*(v114 - 8) + 104))(v110 + v112, v113, v114);
      (*(v86 + 56))(v110 + v111[6], 1, 1, v94);
      v115 = v111[8];
      v116 = *MEMORY[0x277D52428];
      v117 = sub_20C135ED4();
      v118 = *(v117 - 8);
      (*(v118 + 104))(v110 + v115, v116, v117);
      (*(v118 + 56))(v110 + v115, 0, 1, v117);
      v119 = v111[10];
      v120 = *MEMORY[0x277D51768];
      v121 = sub_20C1352E4();
      (*(*(v121 - 8) + 104))(v110 + v119, v120, v121);
      v122 = v111[11];
      v123 = sub_20C136E94();
      (*(*(v123 - 8) + 56))(v110 + v122, 1, 1, v123);
      v124 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      v125 = (v110 + v111[7]);
      *v125 = v105;
      v125[1] = v107;
      v126 = (v110 + v111[9]);
      *v126 = 0;
      v126[1] = 0;
      *(v110 + v111[12]) = v124;
      v127 = v142;
      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        sub_20BFA0104(v127, v110, Strong);
        swift_unknownObjectRelease();
      }

      sub_20B68D110(v110);

      v108 = v137;
      v104 = v138;
      v96 = v164;
      v94 = v139;
    }

    v129 = [objc_opt_self() sharedApplication];
    v130 = v146;
    v131 = sub_20C132B64();
    sub_20B6B3B84(MEMORY[0x277D84F90]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    v132 = v104;
    sub_20BFF37B0(&qword_27C761D60, type metadata accessor for OpenExternalURLOptionsKey, &unk_20C14F080);
    v133 = sub_20C13C744();

    [v129 openURL:v131 options:v133 completionHandler:0];

    v134 = *(v86 + 8);
    v134(v130, v94);
    (*(v151 + 8))(v149, v152);
    (*(v160 + 8))(v148, v150);
    (*(v155 + 8))(v154, v156);
    v134(v96, v94);
    (*(v108 + 8))(v132, v169);
  }
}

uint64_t sub_20BFF3578(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row;
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 112);
  v5 = v4;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 144);
  v57 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 128);
  v58 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 80);
  v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 48);
  v53 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 64);
  v54 = v7;
  v9 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 80);
  v55 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 96);
  v56 = v4;
  v10 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 16);
  v50[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row);
  v50[1] = v10;
  v11 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 48);
  v51 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 32);
  v52 = v11;
  v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 48);
  v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 80);
  v47 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 64);
  v48 = v13;
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 16);
  v43 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row);
  v44 = v14;
  v45 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 32);
  v46 = v12;
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 144);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 112);
  v40 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 128);
  v41 = v15;
  v39 = v16;
  v60[0] = v50[0];
  v60[1] = v10;
  v60[4] = v53;
  v60[5] = v9;
  v59 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 160);
  v49 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 96);
  v17 = *(&v55 + 1);
  v42 = *(v3 + 160);
  v18 = *(v3 + 96);
  v60[2] = v51;
  v60[3] = v8;
  v19 = *(v3 + 144);
  v66 = *(v3 + 160);
  v64 = v57;
  v65 = v19;
  v63 = v5;
  v61 = v18;
  v62 = *(&v55 + 1);
  if (sub_20B5EAF8C(v60) == 1)
  {
    v31 = v47;
    v32 = v48;
    v27 = v43;
    v28 = v44;
    v29 = v45;
    v30 = v46;
    v33 = v49;
    v34 = *(&v55 + 1);
    v38 = v42;
    v36 = v40;
    v37 = v41;
    v35 = v39;
    sub_20B52F9E8(v50, v26, &qword_27C762340, &unk_20C150290);
    sub_20B520158(&v27, &qword_27C762340, &unk_20C150290);
LABEL_6:
    v24 = 1;
    return v24 & 1;
  }

  v31 = v47;
  v32 = v48;
  v27 = v43;
  v28 = v44;
  v29 = v45;
  v30 = v46;
  v33 = v49;
  v34 = *(&v55 + 1);
  v38 = v42;
  v36 = v40;
  v37 = v41;
  v35 = v39;
  sub_20B52F9E8(v50, v26, &qword_27C762340, &unk_20C150290);

  sub_20B520158(&v27, &qword_27C762340, &unk_20C150290);
  v20 = *(v17 + 16);
  if (!v20)
  {

    goto LABEL_6;
  }

  v21 = *(v17 + 8 * v20 + 24);

  sub_20B969AA8(a1, v21);
  v23 = v22;

  v24 = v23 ^ 1;
  return v24 & 1;
}

uint64_t sub_20BFF37B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20BFF37F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8, &unk_20C14FB80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BFF386C(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v28 = MEMORY[0x277D84F90];
  sub_20B526D44(0, v2, 0);
  v3 = v28;
  v27 = a1 + 56;
  result = sub_20C13DAA4();
  v6 = result;
  v7 = 0;
  v25 = v2;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v27 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    result = a2(*(*(a1 + 48) + v6));
    v14 = *(v28 + 16);
    v13 = *(v28 + 24);
    if (v14 >= v13 >> 1)
    {
      v23 = v12;
      v24 = result;
      sub_20B526D44((v13 > 1), v14 + 1, 1);
      v12 = v23;
      result = v24;
    }

    *(v28 + 16) = v14 + 1;
    v15 = v28 + 16 * v14;
    *(v15 + 32) = result;
    *(v15 + 40) = v12;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v16 = *(v27 + 8 * v10);
    if ((v16 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v6 & 0x3F));
    if (v17)
    {
      v8 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v25;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v9 = v25;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v8 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_20B526EA4(v6, v11, 0);
          v8 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_20B526EA4(v6, v11, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return v3;
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

uint64_t sub_20BFF3A9C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v38 = a3;
  v37 = a2(0);
  v5 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = v30 - v6;
  v7 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v30[1] = v3;
    v43 = MEMORY[0x277D84F90];
    sub_20B526D44(0, v7, 0);
    v41 = a1 + 56;
    v42 = v43;
    result = sub_20C13DAA4();
    v9 = result;
    v10 = 0;
    v34 = v5 + 8;
    v35 = v5 + 16;
    v31 = a1 + 64;
    v32 = v7;
    v33 = v5;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v41 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      v39 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      v16 = (*(v5 + 16))(v36, *(a1 + 48) + *(v5 + 72) * v9, v37);
      v40 = v38(v16);
      v18 = v17;
      result = (*(v5 + 8))(v14, v15);
      v19 = v42;
      v43 = v42;
      v21 = *(v42 + 16);
      v20 = *(v42 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_20B526D44((v20 > 1), v21 + 1, 1);
        v19 = v43;
      }

      *(v19 + 16) = v21 + 1;
      v22 = v19 + 16 * v21;
      *(v22 + 32) = v40;
      *(v22 + 40) = v18;
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v23 = *(v41 + 8 * v13);
      if ((v23 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v42 = v19;
      if (v39 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v9 & 0x3F));
      if (v24)
      {
        v11 = __clz(__rbit64(v24)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v12 = v32;
        v5 = v33;
      }

      else
      {
        v25 = v13 << 6;
        v26 = v13 + 1;
        v12 = v32;
        v27 = (v31 + 8 * v13);
        v5 = v33;
        while (v26 < (v11 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_20B526EA4(v9, v39, 0);
            v11 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_20B526EA4(v9, v39, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v12)
      {
        return v42;
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
  }

  return result;
}

void sub_20BFF3DD0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a1;
  v120 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764120, &qword_20C155C80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v117 = v5;
  v118 = v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v96 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v96 - v10;
  v12 = sub_20C136C64();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v114 = v14;
  v115 = v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v96 - v16;
  v18 = *(v2 + 80);
  v116 = v2;
  __swift_project_boxed_opaque_existential_1((v2 + 56), v18);
  sub_20C13B174();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_20B520158(v11, &qword_27C768690, &unk_20C14FD90);
    v19 = sub_20C1356F4();
    sub_20BFFFAC8(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    v20 = swift_allocError();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D51B88], v19);
    *(swift_allocObject() + 16) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D60, &qword_20C154080);
    sub_20C137CA4();
  }

  else
  {
    v113 = v8;
    v99 = v4;
    v100 = v3;
    v98 = v13;
    v22 = *(v13 + 32);
    v111 = v17;
    v112 = v12;
    v96[1] = v13 + 32;
    v96[0] = v22;
    v22(v17, v11, v12);
    v23 = MEMORY[0x277D84FA0];
    v122 = MEMORY[0x277D84FA0];
    v123 = MEMORY[0x277D84FA0];
    v24 = swift_allocObject();
    v97 = v24;
    *(v24 + 16) = v23;
    v105 = v24 + 16;
    v25 = swift_allocObject();
    v110 = v25;
    *(v25 + 16) = v23;
    v103 = v25 + 16;
    v26 = swift_allocObject();
    v109 = v26;
    *(v26 + 16) = v23;
    v104 = v26 + 16;
    v27 = swift_allocObject();
    v108 = v27;
    *(v27 + 16) = v23;
    v102 = v27 + 16;
    v107 = swift_allocObject();
    *(v107 + 16) = v23;
    v28 = swift_allocObject();
    v106 = v28;
    *(v28 + 16) = v23;
    v101 = v28 + 16;
    v29 = v119;
    v30 = sub_20C134244();
    v31 = v30;
    v32 = 0;
    v33 = v30 + 56;
    v34 = 1 << *(v30 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(v30 + 56);
    v37 = (v34 + 63) >> 6;
    while (v36)
    {
      v43 = v32;
LABEL_13:
      v44 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v45 = *(v31 + 48) + 24 * (v44 | (v43 << 6));
      v46 = *v45;
      if (*(v45 + 16) > 1u)
      {
        if (*(v45 + 16) == 2)
        {
          v38 = sub_20C135984();
          v40 = v39;
          v41 = v38;
          v42 = v40;
        }

        else
        {
          v50 = v29;
          v51 = *(v45 + 8);

          v41 = v46;
          v42 = v51;
          v29 = v50;
        }
      }

      else
      {
        if (*(v45 + 16))
        {
          v48 = sub_20C134B94();
        }

        else
        {
          v48 = sub_20C134124();
        }

        v49 = v47;
        v41 = v48;
        v42 = v49;
      }

      sub_20B527618(&v121, v41, v42);

      v32 = v43;
    }

    while (1)
    {
      v43 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v43 >= v37)
      {
        break;
      }

      v36 = *(v33 + 8 * v43);
      ++v32;
      if (v36)
      {
        goto LABEL_13;
      }
    }

    v52 = sub_20C134234();
    v53 = v52;
    v54 = 0;
    v55 = 1 << *(v52 + 32);
    v56 = -1;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    v57 = v52 + 56;
    v58 = v56 & *(v52 + 56);
    v59 = (v55 + 63) >> 6;
    while (v58)
    {
      v62 = v54;
LABEL_30:
      v63 = __clz(__rbit64(v58));
      v58 &= v58 - 1;
      v64 = *(v53 + 48) + 24 * (v63 | (v62 << 6));
      v65 = *v64;
      if (*(v64 + 16) > 1u)
      {
        if (*(v64 + 16) == 2)
        {
          v69 = sub_20C135984();
          v71 = v70;
          v67 = v69;
          v68 = v71;
        }

        else
        {
          v72 = *(v64 + 8);

          v67 = v65;
          v68 = v72;
        }
      }

      else
      {
        if (*(v64 + 16))
        {
          v61 = sub_20C134B94();
        }

        else
        {
          v61 = sub_20C134124();
        }

        v66 = v60;
        v67 = v61;
        v68 = v66;
      }

      sub_20B527618(&v121, v67, v68);

      v54 = v62;
    }

    while (1)
    {
      v62 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      if (v62 >= v59)
      {

        v73 = v123;
        v74 = *(v123 + 16);
        if (v74)
        {
          v75 = v99;
          v76 = v113;
          v77 = v111;
        }

        else
        {
          v77 = v111;
          v78 = sub_20C136C44();
          v79 = sub_20BFF3A9C(v78, MEMORY[0x277D53BA0], MEMORY[0x277D53B80]);

          v73 = sub_20B527580(v79);

          v74 = *(v73 + 16);
          v75 = v99;
          v76 = v113;
        }

        if (*(v122 + 16) <= v74 >> 3)
        {
          v121 = v73;
          sub_20B6CEEBC(v122);
        }

        else
        {
          sub_20B6D3388(v122, v73);
        }

        __swift_project_boxed_opaque_existential_1((v116 + 96), *(v116 + 120));
        sub_20C139F64();

        v80 = v98;
        v81 = v115;
        v82 = v112;
        (*(v98 + 16))(v115, v77, v112);
        v83 = (*(v80 + 80) + 48) & ~*(v80 + 80);
        v84 = (v114 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
        v85 = swift_allocObject();
        v86 = v108;
        v85[2] = v109;
        v85[3] = v86;
        v87 = v110;
        v85[4] = v97;
        v85[5] = v87;
        (v96[0])(v85 + v83, v81, v82);
        v88 = v106;
        *(v85 + v84) = v107;
        *(v85 + ((v84 + 15) & 0xFFFFFFFFFFFFFFF8)) = v88;
        v89 = swift_allocObject();
        *(v89 + 16) = sub_20C000E1C;
        *(v89 + 24) = v85;
        v90 = v118;
        v91 = v100;
        (*(v75 + 16))(v118, v76, v100);
        v92 = (*(v75 + 80) + 16) & ~*(v75 + 80);
        v93 = (v117 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
        v94 = swift_allocObject();
        (*(v75 + 32))(v94 + v92, v90, v91);
        v95 = (v94 + v93);
        *v95 = sub_20C000ED8;
        v95[1] = v89;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D60, &qword_20C154080);
        sub_20C137C94();
        (*(v75 + 8))(v113, v91);
        (*(v80 + 8))(v111, v112);

        return;
      }

      v58 = *(v57 + 8 * v62);
      ++v54;
      if (v58)
      {
        goto LABEL_30;
      }
    }

LABEL_45:
    __break(1u);
  }
}

void sub_20BFF482C(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v14 = *a1;
  swift_beginAccess();
  v15 = *(*(a2 + 16) + 16);

  if (v15)
  {
    v14 = sub_20BFF9AEC(v14, (a2 + 16));
  }

  swift_beginAccess();
  if (*(*(a3 + 16) + 16))
  {
    v14 = sub_20BFFA028(v14, (a3 + 16));
  }

  swift_beginAccess();
  if (*(*(a4 + 16) + 16))
  {
    v14 = sub_20BFFA55C(v14, (a4 + 16));
  }

  swift_beginAccess();
  if (*(*(a5 + 16) + 16))
  {
    v14 = sub_20BFFAA98(v14, (a5 + 16));
  }

  v16 = sub_20BFF3A9C(v14, MEMORY[0x277D52828], MEMORY[0x277D527A8]);

  v17 = sub_20B527580(v16);

  v18 = sub_20C136C44();
  v19 = sub_20BFFEC64(v18, v17);

  swift_beginAccess();
  if (*(*(a6 + 16) + 16))
  {
    v19 = sub_20BFF907C(v19, (a6 + 16));
  }

  swift_beginAccess();
  if (*(*(a7 + 16) + 16))
  {
    v19 = sub_20BFF95B8(v19, (a7 + 16));
  }

  *a8 = v19;
}

void sub_20BFF4A74(char *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a1;
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7643D0, &qword_20C155ED0);
  v79 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v71 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v71 - v10;
  v12 = sub_20C136C64();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v2[10];
  v77 = v2;
  __swift_project_boxed_opaque_existential_1(v2 + 7, v16);
  sub_20C13B174();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_20B520158(v11, &qword_27C768690, &unk_20C14FD90);
    v17 = sub_20C1356F4();
    sub_20BFFFAC8(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    v18 = swift_allocError();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D51B88], v17);
    *(swift_allocObject() + 16) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763310, &qword_20C176BE0);
    sub_20C137CA4();
  }

  else
  {
    v72 = v13;
    v73 = v5;
    v75 = v8;
    v76 = v3;
    v20 = *(v13 + 32);
    v74 = v12;
    v20(v15, v11, v12);
    v85 = MEMORY[0x277D84FA0];
    v86 = MEMORY[0x277D84FA0];
    v83 = MEMORY[0x277D84FA0];
    v84 = MEMORY[0x277D84FA0];
    v21 = v80;
    v22 = sub_20C1345B4();
    v23 = v22;
    v24 = 0;
    v25 = 1 << *(v22 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v22 + 56;
    v28 = v26 & *(v22 + 56);
    v29 = (v25 + 63) >> 6;
    if (v28)
    {
      goto LABEL_8;
    }

    while (1)
    {
LABEL_9:
      v30 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v30 >= v29)
      {
        break;
      }

      v28 = *(v27 + 8 * v30);
      ++v24;
      if (v28)
      {
        while (1)
        {
          v31 = __clz(__rbit64(v28));
          v28 &= v28 - 1;
          v32 = *(v23 + 48) + 24 * (v31 | (v30 << 6));
          v33 = *v32;
          if (*(v32 + 16))
          {
            v34 = v21;
            v35 = *(v32 + 8);

            v36 = v35;
            v21 = v34;
            sub_20B527618(&v82, v33, v36);

            v24 = v30;
            if (!v28)
            {
              goto LABEL_9;
            }
          }

          else
          {
            sub_20B6FFB80(&v82, *v32);
            v24 = v30;
            if (!v28)
            {
              goto LABEL_9;
            }
          }

LABEL_8:
          v30 = v24;
        }
      }
    }

    v80 = v15;

    v37 = sub_20C1345A4();
    v38 = v37;
    v39 = 0;
    v40 = 1 << *(v37 + 32);
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v42 = v37 + 56;
    v43 = v41 & *(v37 + 56);
    v44 = (v40 + 63) >> 6;
    if (v43)
    {
      goto LABEL_20;
    }

LABEL_21:
    while (1)
    {
      v45 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v45 >= v44)
      {

        v50 = v86;
        v51 = *(v86 + 16);
        if (v51)
        {

          v52 = v50;
        }

        else
        {
          v53 = sub_20C136C54();
          v54 = sub_20BFF3A9C(v53, MEMORY[0x277D53C88], MEMORY[0x277D53C68]);

          v52 = sub_20B527580(v54);

          v51 = *(v52 + 16);
        }

        v56 = v75;
        v55 = v76;
        v57 = v79;
        v58 = v73;
        if (*(v85 + 16) <= v51 >> 3)
        {
          v82 = v52;
          sub_20B6CEEBC(v85);
          v59 = v82;
        }

        else
        {
          v59 = sub_20B6D3388(v85, v52);
        }

        v60 = v80;
        v61 = sub_20C136C54();
        v62 = sub_20BFFE0E8(v61, v59);

        v63 = v77;

        sub_20BFFCC34(v62, &v84, &v83, v63);
        v65 = v64;

        v82 = v65;
        sub_20B5E2E18();
        v66 = sub_20C13D374();
        sub_20C13A7C4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0, &qword_20C1536C0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771B40, &unk_20C1897F8);
        sub_20BFFFB7C();
        sub_20C137C64();

        (*(v57 + 16))(v58, v56, v55);
        v67 = (*(v57 + 80) + 16) & ~*(v57 + 80);
        v68 = (v78 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
        v69 = swift_allocObject();
        (*(v57 + 32))(v69 + v67, v58, v55);
        v70 = (v69 + v68);
        *v70 = sub_20BFF6E14;
        v70[1] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763310, &qword_20C176BE0);
        sub_20C137C94();
        (*(v57 + 8))(v56, v55);
        (*(v72 + 8))(v60, v74);

        return;
      }

      v43 = *(v42 + 8 * v45);
      ++v39;
      if (v43)
      {
        while (1)
        {
          v46 = __clz(__rbit64(v43));
          v43 &= v43 - 1;
          v47 = *(v38 + 48) + 24 * (v46 | (v45 << 6));
          v48 = *v47;
          if (*(v47 + 16))
          {
            v49 = *(v47 + 8);

            sub_20B527618(&v82, v48, v49);

            v39 = v45;
            if (!v43)
            {
              goto LABEL_21;
            }
          }

          else
          {
            sub_20B6FFB80(&v82, *v47);
            v39 = v45;
            if (!v43)
            {
              goto LABEL_21;
            }
          }

LABEL_20:
          v45 = v39;
        }
      }
    }

LABEL_35:
    __break(1u);
  }
}

uint64_t sub_20BFF525C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_20C136C64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  sub_20C13B174();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_20B520158(v3, &qword_27C768690, &unk_20C14FD90);
    v8 = sub_20C1356F4();
    sub_20BFFFAC8(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    v9 = swift_allocError();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D51B88], v8);
    *(swift_allocObject() + 16) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D60, &qword_20C154080);
    return sub_20C137CA4();
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v12 = sub_20C136C44();
    *(swift_allocObject() + 16) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D60, &qword_20C154080);
    sub_20C137CA4();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_20BFF5544(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16[-v4];
  v6 = sub_20C136C64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  sub_20C13B174();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_20B520158(v5, &qword_27C768690, &unk_20C14FD90);
    v10 = sub_20C1356F4();
    sub_20BFFFAC8(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    v11 = swift_allocError();
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x277D51B88], v10);
    *(swift_allocObject() + 16) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D60, &qword_20C154080);
    return sub_20C137CA4();
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v14 = sub_20C136C44();

    v15 = sub_20BFFC758(v14, a1);

    *(swift_allocObject() + 16) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D60, &qword_20C154080);
    sub_20C137CA4();
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_20BFF5860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764120, &qword_20C155C80);
  v41 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v38 = v4;
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v40 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v10 = sub_20C136C64();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  __swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
  sub_20C13B174();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_20B520158(v9, &qword_27C768690, &unk_20C14FD90);
    v17 = sub_20C1356F4();
    sub_20BFFFAC8(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    v18 = swift_allocError();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D51B88], v17);
    *(swift_allocObject() + 16) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D60, &qword_20C154080);
    return sub_20C137CA4();
  }

  else
  {
    v35 = v3;
    v34 = *(v11 + 32);
    v37 = v16;
    v34(v16, v9, v10);
    v21 = sub_20C136C44();
    v22 = sub_20BFF3A9C(v21, MEMORY[0x277D53BA0], MEMORY[0x277D53B80]);

    v36 = sub_20BFF386C(v36, MEMORY[0x277D50DF8]);
    __swift_project_boxed_opaque_existential_1(v2 + 12, v2[15]);
    sub_20B527580(v22);

    v23 = v40;
    sub_20C139F64();

    (*(v11 + 16))(v13, v37, v10);
    v24 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v36;
    v34((v25 + v24), v13, v10);
    v26 = swift_allocObject();
    *(v26 + 16) = sub_20C000F48;
    *(v26 + 24) = v25;
    v27 = v41;
    v28 = v39;
    v29 = v35;
    (*(v41 + 16))(v39, v23, v35);
    v30 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v31 = (v38 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    (*(v27 + 32))(v32 + v30, v28, v29);
    v33 = (v32 + v31);
    *v33 = sub_20C001098;
    v33[1] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D60, &qword_20C154080);
    sub_20C137C94();
    (*(v27 + 8))(v23, v29);
    return (*(v11 + 8))(v37, v10);
  }
}

void sub_20BFF5E04(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{

  v6 = sub_20BFFE844(v5, a2);

  v7 = sub_20BFF3A9C(v6, MEMORY[0x277D52828], MEMORY[0x277D527A8]);

  v8 = sub_20B527580(v7);

  v9 = sub_20C136C44();
  v10 = sub_20BFFEC64(v9, v8);

  *a3 = v10;
}

uint64_t sub_20BFF5EE8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16[-v4];
  v6 = sub_20C136C64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  sub_20C13B174();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_20B520158(v5, &qword_27C768690, &unk_20C14FD90);
    v10 = sub_20C1356F4();
    sub_20BFFFAC8(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    v11 = swift_allocError();
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x277D51B88], v10);
    *(swift_allocObject() + 16) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D60, &qword_20C154080);
    return sub_20C137CA4();
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v14 = sub_20C136C44();

    v15 = sub_20BFFDBBC(v14, a1);

    *(swift_allocObject() + 16) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D60, &qword_20C154080);
    sub_20C137CA4();
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_20BFF6204@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, void (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a4;
  v38 = a5;
  v44 = a3;
  v45 = a6;
  v39 = a2;
  v40 = a1;
  v43 = sub_20C13B0C4();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v8 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771B20, &qword_20C1897F0);
  v9 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v36 = &v35 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v35 - v12;
  v14 = sub_20C135174();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v35 - v19;
  __swift_project_boxed_opaque_existential_1(v6 + 7, v6[10]);
  sub_20C13B184();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_20B520158(v13, &unk_27C76BC00, &unk_20C1500B0);
    v21 = sub_20C1356F4();
    sub_20BFFFAC8(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    v22 = swift_allocError();
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D51B88], v21);
    *(swift_allocObject() + 16) = v22;
    return sub_20C137CA4();
  }

  else
  {
    v25 = *(v15 + 32);
    v35 = v20;
    v25(v20, v13, v14);
    (*(v15 + 16))(v17, v20, v14);
    v38 = v9;
    v26 = v40;
    v46 = v40;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D60, &qword_20C154080);
    sub_20BFF8F44();
    sub_20BFF8FC8();
    v27 = v36;
    sub_20C137844();
    v28 = v6[10];
    v37 = v6[11];
    __swift_project_boxed_opaque_existential_1(v6 + 7, v28);
    *v8 = v26;
    v29 = *MEMORY[0x277D4F6D8];
    v30 = sub_20C13B254();
    (*(*(v30 - 8) + 104))(v8, v29, v30);
    v31 = v41;
    v32 = v43;
    (*(v41 + 104))(v8, *v39, v43);

    sub_20C13B2A4();
    (*(v31 + 8))(v8, v32);
    v33 = v6[5];
    v34 = v6[6];
    __swift_project_boxed_opaque_existential_1(v6 + 2, v33);
    v44(v27, v33, v34);
    (*(v38 + 8))(v27, v42);
    return (*(v15 + 8))(v35, v14);
  }
}

uint64_t sub_20BFF6724()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_20C136C64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  sub_20C13B174();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_20B520158(v3, &qword_27C768690, &unk_20C14FD90);
    v8 = sub_20C1356F4();
    sub_20BFFFAC8(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    v9 = swift_allocError();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D51B88], v8);
    *(swift_allocObject() + 16) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763310, &qword_20C176BE0);
    return sub_20C137CA4();
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v12 = sub_20C136C54();
    *(swift_allocObject() + 16) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763310, &qword_20C176BE0);
    sub_20C137CA4();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_20BFF6A0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0, &qword_20C1536C0);
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0, &qword_20C14FC90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - v11;
  v13 = sub_20C138204();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*a1 + 16))
  {
    v18 = sub_20BFF3A9C(*a1, MEMORY[0x277D52828], MEMORY[0x277D527A8]);
    v27 = a2;
    v19 = v18;
    v20 = sub_20C1381E4();
    sub_20BFFF380(v20, v19);

    v21 = sub_20C132E94();
    (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
    sub_20C1381F4();

    sub_20B520158(v12, &qword_27C762AC0, &qword_20C14FC90);
    (*(v14 + 16))(v9, v17, v13);
    (*(v14 + 56))(v9, 0, 1, v13);
    sub_20BF28D00(v9, v6);
    v22 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v23 = swift_allocObject();
    sub_20BFFFC08(v6, v23 + v22);
    sub_20C137CA4();
    sub_20B520158(v9, &qword_27C7643F0, &qword_20C1536C0);
    return (*(v14 + 8))(v17, v13);
  }

  else
  {
    (*(v14 + 56))(v9, 1, 1, v13, v15);
    sub_20BF28D00(v9, v6);
    v25 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v26 = swift_allocObject();
    sub_20BFFFC08(v6, v26 + v25);
    sub_20C137CA4();
    return sub_20B520158(v9, &qword_27C7643F0, &qword_20C1536C0);
  }
}

uint64_t sub_20BFF6E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[1] = a2;
  v3 = sub_20C138204();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v29 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0, &qword_20C1536C0) - 8;
  MEMORY[0x28223BE20](v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v25 - v11;
  v13 = *(*a1 + 16);
  if (v13)
  {
    v14 = *a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v15 = *(v10 + 72);
    v16 = (v4 + 48);
    v27 = v4;
    v17 = (v4 + 32);
    v18 = MEMORY[0x277D84F90];
    v28 = v3;
    v26 = v17;
    do
    {
      sub_20BF28D00(v14, v12);
      sub_20BFFFC08(v12, v8);
      if ((*v16)(v8, 1, v3) == 1)
      {
        sub_20B520158(v8, &qword_27C7643F0, &qword_20C1536C0);
      }

      else
      {
        v19 = *v17;
        (*v17)(v29, v8, v3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_20BC08B98(0, v18[2] + 1, 1, v18);
        }

        v21 = v18[2];
        v20 = v18[3];
        if (v21 >= v20 >> 1)
        {
          v18 = sub_20BC08B98((v20 > 1), v21 + 1, 1, v18);
        }

        v18[2] = v21 + 1;
        v3 = v28;
        v22 = v18 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v21;
        v17 = v26;
        v19(v22, v29, v28);
      }

      v14 += v15;
      --v13;
    }

    while (v13);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v23 = sub_20B718BBC(v18);

  *(swift_allocObject() + 16) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763310, &qword_20C176BE0);
  return sub_20C137CA4();
}

void sub_20BFF713C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a2;
  v73 = a3;
  v5 = sub_20C138204();
  v72 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v69 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v70 = &v63 - v8;
  MEMORY[0x28223BE20](v9);
  v80 = &v63 - v10;
  v68 = v11;
  MEMORY[0x28223BE20](v12);
  v78 = &v63 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0, &qword_20C1536C0);
  MEMORY[0x28223BE20](v14 - 8);
  v71 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v63 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v63 - v20;
  v22 = sub_20C136C64();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v3 + 56), *(v3 + 80));
  sub_20C13B174();
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_20B520158(v21, &qword_27C768690, &unk_20C14FD90);
    v26 = sub_20C1356F4();
    sub_20BFFFAC8(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    v27 = swift_allocError();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D51B88], v26);
    *(swift_allocObject() + 16) = v27;
    sub_20C137CA4();
  }

  else
  {
    v65 = v22;
    v66 = v18;
    v64 = v23;
    (*(v23 + 32))(v25, v21, v22);
    v67 = v25;
    v29 = sub_20C136C54();
    v30 = v29;
    v31 = v29 + 56;
    v32 = 1 << *(v29 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v29 + 56);
    v35 = (v32 + 63) >> 6;
    v36 = v72;
    v76 = v72 + 16;
    v77 = v72 + 32;
    v75 = (v72 + 8);

    v38 = 0;
    v74 = v37;
    if (v34)
    {
      while (1)
      {
        v39 = v38;
LABEL_10:
        v40 = *(v30 + 48) + *(v36 + 72) * (__clz(__rbit64(v34)) | (v39 << 6));
        v41 = v78;
        (*(v36 + 16))(v78, v40, v5);
        v42 = v5;
        v43 = *(v36 + 32);
        v44 = v42;
        v43(v80, v41);
        if (sub_20C1381A4() == a1 && v45 == v79)
        {

          goto LABEL_18;
        }

        v46 = a1;
        v47 = sub_20C13DFF4();

        if (v47)
        {
          break;
        }

        v34 &= v34 - 1;
        v5 = v44;
        (*v75)(v80, v44);
        v38 = v39;
        a1 = v46;
        v30 = v74;
        if (!v34)
        {
          goto LABEL_7;
        }
      }

LABEL_18:
      v49 = v66;
      (v43)(v66, v80, v44);
      v5 = v44;
      v48 = 0;
LABEL_19:
      v50 = v64;
      v51 = v67;
      (*(v36 + 56))(v49, v48, 1, v5);

      v52 = v71;
      sub_20BF28D00(v49, v71);
      if ((*(v36 + 48))(v52, 1, v5) == 1)
      {
        sub_20B520158(v52, &qword_27C7643F0, &qword_20C1536C0);
        v53 = sub_20C133D94();
        sub_20BFFFAC8(&qword_27C765B10, MEMORY[0x277D50470], MEMORY[0x277D50478]);
        v54 = swift_allocError();
        (*(*(v53 - 8) + 104))(v55, *MEMORY[0x277D50468], v53);
        *(swift_allocObject() + 16) = v54;
        v56 = v54;
        sub_20C137CA4();
        sub_20B520158(v49, &qword_27C7643F0, &qword_20C1536C0);
        (*(v50 + 8))(v51, v65);
      }

      else
      {
        v57 = *(v36 + 32);
        v58 = v70;
        v57(v70, v52, v5);
        v59 = v69;
        (*(v36 + 16))(v69, v58, v5);
        v60 = v36;
        v61 = (*(v36 + 80) + 16) & ~*(v36 + 80);
        v62 = swift_allocObject();
        v57((v62 + v61), v59, v5);
        sub_20C137CA4();
        (*(v60 + 8))(v58, v5);
        sub_20B520158(v49, &qword_27C7643F0, &qword_20C1536C0);
        (*(v50 + 8))(v67, v65);
      }
    }

    else
    {
LABEL_7:
      while (1)
      {
        v39 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v39 >= v35)
        {

          v48 = 1;
          v49 = v66;
          goto LABEL_19;
        }

        v34 = *(v31 + 8 * v39);
        ++v38;
        if (v34)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}