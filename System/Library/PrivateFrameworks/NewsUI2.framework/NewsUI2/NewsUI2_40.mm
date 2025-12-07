uint64_t sub_218B3DE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_219BDF6C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2199D4E30(v6);
  sub_2186F1034(&unk_280EE86D0, MEMORY[0x277D2DCB8], MEMORY[0x277D2DCB0]);
  sub_219BDCCC4();
  (*(v4 + 8))(v6, v3);
  sub_219BDF4E4();
  sub_2186F1034(&unk_280EE8770, MEMORY[0x277D2DAF8], MEMORY[0x277D2DAF0]);
  return sub_219BDCC74();
}

uint64_t sub_218B3DFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_219BE1594();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getErrorValue();
  sub_219BF7A14();
  sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v7 = sub_219BDCD44();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09BA0;
  (*(v8 + 104))(v10 + v9, *MEMORY[0x277CEAD18], v7);
  sub_2186F1034(&qword_280EE7FC0, MEMORY[0x277D2F440], MEMORY[0x277D2F438]);
  sub_219BDCCC4();

  (*(v4 + 8))(v6, v3);
  sub_219BE0654();
  sub_2186F1034(&qword_280EE8390, MEMORY[0x277D2E688], MEMORY[0x277D2E680]);
  return sub_219BDCC34();
}

uint64_t sub_218B3E268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v41 = a2;
  sub_218954408(0);
  v44 = v3;
  v40 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218747BDC(0);
  MEMORY[0x28223BE20](v5 - 8);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDC104();
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x28223BE20](v7);
  v38 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B597DC(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_219BF1094();
  v12 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF0614();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58CA4(0);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59810(0, &qword_280EE4788, MEMORY[0x277D6E1E0]);
  sub_219BE8BA4();
  sub_219BE5FD4();
  (*(v21 + 8))(v23, v20);
  result = (*(v16 + 88))(v18, v15);
  if (result == *MEMORY[0x277D32DB8] || result == *MEMORY[0x277D32D10] || result == *MEMORY[0x277D32E00] || result == *MEMORY[0x277D32E10])
  {
    return (*(v16 + 8))(v18, v15);
  }

  if (result == *MEMORY[0x277D32E18])
  {
    (*(v16 + 96))(v18, v15);
    v25 = v12;
    v26 = v48;
    (*(v12 + 32))(v14, v18, v48);
    sub_219BF1034();
    v27 = sub_219BF3484();
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v11, 1, v27) == 1)
    {
      (*(v12 + 8))(v14, v26);
      return sub_218B58C44(v11, sub_218B597DC);
    }

    else if ((*(v28 + 88))(v11, v27) == *MEMORY[0x277D33DF0])
    {
      (*(v28 + 8))(v11, v27);
      v49 = *(v47 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_blueprintProvider);
      sub_218987644(0);
      sub_2186F1034(&qword_280EE54F0, sub_218987644, MEMORY[0x277D6D8C8]);
      v29 = v39;
      sub_219BE7B94();
      v30 = v42;
      v31 = v44;
      sub_219BEB2E4();
      (*(v40 + 8))(v29, v31);
      v33 = v45;
      v32 = v46;
      if ((*(v45 + 48))(v30, 1, v46) == 1)
      {
        (*(v25 + 8))(v14, v26);
        return sub_218B58C44(v30, sub_218747BDC);
      }

      else
      {
        v34 = v38;
        (*(v33 + 32))(v38, v30, v32);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v36 = Strong;
          v37 = swift_unknownObjectWeakLoadStrong();
          if (v37)
          {
            sub_218B59904(v36, v34, v37);
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
        }

        (*(v33 + 8))(v34, v32);
        return (*(v25 + 8))(v14, v26);
      }
    }

    else
    {
      (*(v12 + 8))(v14, v26);
      return (*(v28 + 8))(v11, v27);
    }
  }

  else if (result == *MEMORY[0x277D32DD8] || result == *MEMORY[0x277D32CF8] || result == *MEMORY[0x277D32DC0] || result == *MEMORY[0x277D32CF0] || result == *MEMORY[0x277D32E08] || result == *MEMORY[0x277D32DB0] || result == *MEMORY[0x277D32DE0] || result == *MEMORY[0x277D32DF0] || result == *MEMORY[0x277D32D38] || result == *MEMORY[0x277D32DE8] || result == *MEMORY[0x277D32D18] || result == *MEMORY[0x277D32DA8] || result == *MEMORY[0x277D32DF8] || result != *MEMORY[0x277D32DD0])
  {
    return (*(v16 + 8))(v18, v15);
  }

  return result;
}

uint64_t sub_218B3EAA0(uint64_t a1, char *a2, char *a3)
{
  v64 = a3;
  v63 = a2;
  v4 = sub_219BF0B74();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x28223BE20](v4);
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF0AC4();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x28223BE20](v6);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF1094();
  v59 = *(v8 - 8);
  v60 = v8;
  MEMORY[0x28223BE20](v8);
  v58 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF04A4();
  v54 = *(v10 - 8);
  v55 = v10;
  MEMORY[0x28223BE20](v10);
  v53 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BEDAE4();
  v51 = *(v12 - 8);
  v52 = v12;
  MEMORY[0x28223BE20](v12);
  v50 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BF07A4();
  v56 = *(v14 - 8);
  v57 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BF0F34();
  v61 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BF0614();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58CA4(0);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v28 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D38(0);
  v62 = a1;
  sub_219BE7564();
  sub_219BE5FD4();
  (*(v26 + 8))(v28, v25);
  result = (*(v21 + 88))(v23, v20);
  if (result == *MEMORY[0x277D32DB8] || result == *MEMORY[0x277D32D10] || result == *MEMORY[0x277D32E00])
  {
    return (*(v21 + 8))(v23, v20);
  }

  if (result == *MEMORY[0x277D32E10])
  {
    (*(v21 + 96))(v23, v20);
    v30 = v61;
    (*(v61 + 32))(v19, v23, v17);
    v31 = sub_218B3F424(v62, v19, v63, v64);
    return (*(v30 + 8))(v19, v17, v31);
  }

  if (result == *MEMORY[0x277D32E18])
  {
    (*(v21 + 96))(v23, v20);
    v33 = v58;
    v32 = v59;
    v34 = v60;
    (*(v59 + 32))(v58, v23, v60);
    v35 = &unk_282A37EC0;
    v36 = MEMORY[0x277D330F8];
    v37 = MEMORY[0x277D330F0];
    v38 = sub_218B595BC;
LABEL_9:
    v39.n128_f64[0] = sub_218B412FC(v62, v33, v63, v64, v36, v37, v35, v38);
    return (*(v32 + 8))(v33, v34, v39);
  }

  if (result == *MEMORY[0x277D32DD8])
  {
    (*(v21 + 96))(v23, v20);
    v41 = v56;
    v40 = v57;
    (*(v56 + 32))(v16, v23, v57);
    v42 = sub_218B4002C(v62, v16, v63, v64);
    return (*(v41 + 8))(v16, v40, v42);
  }

  else
  {
    if (result == *MEMORY[0x277D32CF8])
    {
      return (*(v21 + 8))(v23, v20);
    }

    if (result == *MEMORY[0x277D32DC0])
    {
      (*(v21 + 96))(v23, v20);
      v33 = v53;
      v32 = v54;
      v34 = v55;
      (*(v54 + 32))(v53, v23, v55);
      v39.n128_f64[0] = sub_218B408A4(v62, v33, v63, v64);
      return (*(v32 + 8))(v33, v34, v39);
    }

    if (result == *MEMORY[0x277D32CF0])
    {
      (*(v21 + 96))(v23, v20);
      v33 = v50;
      v32 = v51;
      v34 = v52;
      (*(v51 + 32))(v50, v23, v52);
      v35 = &unk_282A37E70;
      v36 = MEMORY[0x277D31D50];
      v37 = MEMORY[0x277D31D48];
      v38 = sub_218B59168;
      goto LABEL_9;
    }

    if (result == *MEMORY[0x277D32E08] || result == *MEMORY[0x277D32DB0] || result == *MEMORY[0x277D32DE0])
    {
      return (*(v21 + 8))(v23, v20);
    }

    if (result == *MEMORY[0x277D32DF0])
    {
      (*(v21 + 96))(v23, v20);
      v33 = v47;
      v32 = v48;
      v34 = v49;
      (*(v48 + 32))(v47, v23, v49);
      v39.n128_f64[0] = sub_218B42934(v62, v33, v63, v64);
      return (*(v32 + 8))(v33, v34, v39);
    }

    if (result == *MEMORY[0x277D32D38])
    {
      return (*(v21 + 8))(v23, v20);
    }

    if (result == *MEMORY[0x277D32DE8])
    {
      (*(v21 + 96))(v23, v20);
      v32 = v45;
      v34 = v46;
      v33 = v44;
      (*(v45 + 32))(v44, v23, v46);
      v39.n128_f64[0] = sub_218B41D0C(v62, v33, v63, v64);
      return (*(v32 + 8))(v33, v34, v39);
    }

    if (result == *MEMORY[0x277D32D18] || result == *MEMORY[0x277D32DA8] || result == *MEMORY[0x277D32DF8] || result != *MEMORY[0x277D32DD0])
    {
      return (*(v21 + 8))(v23, v20);
    }
  }

  return result;
}

double sub_218B3F424(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v110 = a4;
  v91 = a3;
  v101 = a2;
  v104 = a1;
  sub_218B58D38(0);
  v111 = v5;
  v107 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v103 = v6;
  v106 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_219BF0F34();
  v98 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v97 = v7;
  v99 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDBD34();
  v95 = *(v8 - 8);
  v96 = v8;
  MEMORY[0x28223BE20](v8);
  v94 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v93 = &v79 - v11;
  v102 = sub_219BDB184();
  v100 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v109 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_219BE1444();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v14 - 8);
  v89 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  v87 = v16;
  MEMORY[0x28223BE20](v16);
  v86 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v88 = (&v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218B58D8C(0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v79 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v79 - v32;
  sub_218954408(0);
  v35 = v34;
  v90 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v79 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(v4 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_blueprintProvider);
  v112 = v4;
  v113 = v38;
  sub_218987644(0);
  sub_2186F1034(&qword_280EE54F0, sub_218987644, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();
  v91 = v35;
  v108 = v37;
  sub_219BEB244();
  v110 = v33;
  sub_218B5A2A4(v33, v30, sub_21898BBC4);
  v39 = *(v20 + 48);
  v40 = v39(v30, 1, v19);
  v92 = v24;
  if (v40 == 1)
  {
    sub_218B58C44(v30, sub_21898BBC4);
    v41 = sub_219BE16E4();
    (*(*(v41 - 8) + 56))(v24, 1, 1, v41);
  }

  else
  {
    sub_219BE6934();
    v42 = v113;
    (*(v20 + 8))(v30, v19);
    sub_2194420E8(v42, v24);

    v43 = sub_219BE16E4();
    (*(*(v43 - 8) + 56))(v24, 0, 1, v43);
  }

  v87 = swift_allocBox();
  v45 = v44;
  v46 = sub_219BE16D4();
  v47 = *(*(v46 - 8) + 56);
  v47(v45, 1, 1, v46);
  sub_218B5A2A4(v110, v27, sub_21898BBC4);
  if (v39(v27, 1, v19) == 1)
  {
    sub_218B58C44(v27, sub_21898BBC4);
  }

  else
  {
    v80 = v45;
    (*(v20 + 32))(v88, v27, v19);
    v48 = sub_218B326E4();
    v49 = sub_219BE97D4();
    (*(*(v49 - 8) + 56))(v89, 1, 1, v49);
    v82 = v20;
    v81 = v19;
    if (v48)
    {
      v50 = v83;
      sub_219BE1414();
      v51 = sub_219BE1434();
      v53 = v52;
      (*(v84 + 8))(v50, v85);
    }

    else
    {
      v51 = 0;
      v53 = 0;
    }

    v54 = v86;
    v55 = v88;
    v56 = v89;
    sub_21968E4D8(v88, v89, v51, v53, v86);
    swift_unknownObjectRelease();

    sub_218B58C44(v56, sub_218B58900);
    (*(v82 + 8))(v55, v81);
    v47(v54, 0, 1, v46);
    sub_218B58ECC(v54, v80);
  }

  v89 = *(v112 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_headlineExposureTracker + 24);
  v86 = *(v112 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_headlineExposureTracker + 32);
  v88 = __swift_project_boxed_opaque_existential_1((v112 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_headlineExposureTracker), v89);
  v57 = v93;
  v58 = v111;
  v59 = v104;
  sub_219BE75A4();
  v60 = v94;
  sub_219BE7574();
  sub_219BDB104();
  v61 = *(v95 + 8);
  v62 = v60;
  v63 = v96;
  v61(v62, v96);
  v61(v57, v63);
  v64 = v101;
  v96 = sub_219BF0F14();
  v66 = v98;
  v65 = v99;
  v67 = v105;
  (*(v98 + 16))(v99, v64, v105);
  v69 = v106;
  v68 = v107;
  (*(v107 + 16))(v106, v59, v58);
  v70 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v71 = (v97 + *(v68 + 80) + v70) & ~*(v68 + 80);
  v72 = (v103 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  (*(v66 + 32))(v73 + v70, v65, v67);
  (*(v68 + 32))(v73 + v71, v69, v111);
  *(v73 + v72) = v112;
  *(v73 + ((v72 + 15) & 0xFFFFFFFFFFFFFFF8)) = v87;
  v74 = v86;
  v75 = *(v86 + 32);

  v76 = v109;
  v77 = v92;
  v75(v109, v92, v96, sub_218B58DC0, v73, v89, v74);
  swift_unknownObjectRelease();

  (*(v100 + 8))(v76, v102);
  sub_218B58C44(v77, sub_218B58D8C);
  sub_218B58C44(v110, sub_21898BBC4);
  (*(v90 + 8))(v108, v91);

  return result;
}

double sub_218B4002C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v71 = a3;
  v72 = a4;
  v74 = a2;
  v75 = a1;
  v81 = sub_219BF07A4();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v77 = v5;
  v80 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D38(0);
  v78 = v6;
  v76 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v73 = v7;
  v84 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE1444();
  v65 = *(v8 - 8);
  v66 = v8;
  MEMORY[0x28223BE20](v8);
  v64 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v10 - 8);
  v67 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v12);
  v68 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v61 - v23;
  sub_218954408(0);
  v26 = v25;
  v70 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v4;
  v85 = *(v4 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_blueprintProvider);
  sub_218987644(0);
  sub_2186F1034(&qword_280EE54F0, sub_218987644, MEMORY[0x277D6D8C8]);
  v29 = v16;
  sub_219BE7B94();
  v71 = v26;
  sub_219BEB244();
  v30 = v15;
  v69 = swift_allocBox();
  v32 = v31;
  v33 = sub_219BE16D4();
  v34 = *(*(v33 - 8) + 56);
  v34(v32, 1, 1, v33);
  v72 = v24;
  sub_218B5A2A4(v24, v21, sub_21898BBC4);
  v35 = (*(v29 + 48))(v21, 1, v30);
  v82 = v28;
  if (v35 == 1)
  {
    v36 = v83;
    sub_218B58C44(v21, sub_21898BBC4);
  }

  else
  {
    v61 = v32;
    v62 = v29;
    v37 = *(v29 + 32);
    v63 = v30;
    v37(v18, v21, v30);
    v36 = v83;
    v38 = sub_218B326E4();
    v39 = sub_219BE97D4();
    v40 = v67;
    (*(*(v39 - 8) + 56))(v67, 1, 1, v39);
    v41 = v18;
    if (v38)
    {
      v42 = v64;
      sub_219BE1414();
      v43 = sub_219BE1434();
      v45 = v44;
      (*(v65 + 8))(v42, v66);
    }

    else
    {
      v43 = 0;
      v45 = 0;
    }

    v46 = v68;
    sub_21968E4D8(v41, v40, v43, v45, v68);
    swift_unknownObjectRelease();

    sub_218B58C44(v40, sub_218B58900);
    (*(v62 + 8))(v41, v63);
    v34(v46, 0, 1, v33);
    sub_218B58ECC(v46, v61);
  }

  __swift_project_boxed_opaque_existential_1((v36 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_contentAvailabilityValidator), *(v36 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_contentAvailabilityValidator + 24));
  v47 = v74;
  v48 = sub_219BF06B4();
  v49 = [v48 identifier];

  sub_219BF5414();
  LODWORD(v67) = sub_219BF4774();

  v68 = *(v36 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_tracker);
  v50 = v76;
  v51 = v78;
  (*(v76 + 16))(v84, v75, v78);
  v52 = v79;
  v53 = v80;
  v54 = v81;
  (*(v79 + 16))(v80, v47, v81);
  v55 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v56 = (v73 + *(v52 + 80) + v55) & ~*(v52 + 80);
  v57 = (v77 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  (*(v50 + 32))(v58 + v55, v84, v51);
  (*(v52 + 32))(v58 + v56, v53, v54);
  *(v58 + v57) = v83;
  v59 = v58 + ((v57 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v59 = v69;
  *(v59 + 8) = v67 & 1;

  sub_219BDD154();

  sub_218B58C44(v72, sub_21898BBC4);
  (*(v70 + 8))(v82, v71);

  return result;
}

double sub_218B408A4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v97 = a4;
  v84 = a3;
  v100 = a2;
  v89 = a1;
  v5 = sub_219BF04A4();
  v94 = *(v5 - 8);
  v95 = v5;
  MEMORY[0x28223BE20](v5);
  v90 = v6;
  v93 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D38(0);
  v91 = *(v7 - 8);
  v92 = v7;
  MEMORY[0x28223BE20](v7);
  v87 = v8;
  v99 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  v85 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v98 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v10;
  MEMORY[0x28223BE20](v11);
  v101 = &v74 - v12;
  v78 = sub_219BE1444();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v14 - 8);
  v79 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v16);
  v80 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  v19 = v18;
  v96 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v74 - v26;
  sub_218954408(0);
  v29 = v28;
  v82 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v4;
  v102[0] = *(v4 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_blueprintProvider);
  sub_218987644(0);
  sub_2186F1034(&qword_280EE54F0, sub_218987644, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();
  v84 = v29;
  v97 = v31;
  sub_219BEB244();
  v33 = v19;
  v81 = swift_allocBox();
  v35 = v34;
  v36 = sub_219BE16D4();
  v37 = *(*(v36 - 8) + 56);
  v37(v35, 1, 1, v36);
  v83 = v27;
  v38 = v27;
  v39 = v96;
  sub_218B5A2A4(v38, v24, sub_21898BBC4);
  v40 = (*(v39 + 48))(v24, 1, v33);
  v88 = v32;
  if (v40 == 1)
  {
    sub_218B58C44(v24, sub_21898BBC4);
  }

  else
  {
    v41 = *(v39 + 32);
    v75 = v33;
    v41(v21, v24, v33);
    v42 = sub_218B326E4();
    v43 = sub_219BE97D4();
    v44 = v79;
    (*(*(v43 - 8) + 56))(v79, 1, 1, v43);
    if (v42)
    {
      v45 = v76;
      sub_219BE1414();
      v46 = sub_219BE1434();
      v48 = v47;
      (*(v77 + 8))(v45, v78);
    }

    else
    {
      v46 = 0;
      v48 = 0;
    }

    v49 = v80;
    sub_21968E4D8(v21, v44, v46, v48, v80);
    swift_unknownObjectRelease();

    sub_218B58C44(v44, sub_218B58900);
    (*(v96 + 8))(v21, v75);
    v37(v49, 0, 1, v36);
    sub_218B58ECC(v49, v35);
  }

  v50 = v88;
  sub_218718690(v88 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDismissingManager, v102);
  v51 = v103;
  v52 = __swift_project_boxed_opaque_existential_1(v102, v103);
  v53 = [sub_219BF0404() dismissingIdentifier];
  v54 = swift_unknownObjectRelease();
  if (v53)
  {
    v55 = sub_219BF5414();
    v57 = v56;
  }

  else
  {
    v55 = 0;
    v57 = 0;
  }

  v58 = MEMORY[0x28223BE20](v54);
  v60 = &v74 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v61 + 16))(v60, v52, v51, v58);
  v62 = v101;
  sub_218A75968(v55, v57, v60, v51, v101);
  __swift_destroy_boxed_opaque_existential_1(v102);
  v96 = *(v50 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_tracker);
  v63 = v91;
  v64 = v92;
  (*(v91 + 16))(v99, v89, v92);
  v65 = v93;
  v66 = v94;
  v67 = v95;
  (*(v94 + 16))(v93, v100, v95);
  sub_218B5A2A4(v62, v98, sub_218B59134);
  v68 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v69 = (v87 + *(v66 + 80) + v68) & ~*(v66 + 80);
  v70 = (v90 + *(v85 + 80) + v69) & ~*(v85 + 80);
  v71 = (v86 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  (*(v63 + 32))(v72 + v68, v99, v64);
  (*(v66 + 32))(v72 + v69, v65, v67);
  sub_218B5A680(v98, v72 + v70, sub_218B59134);
  *(v72 + v71) = v81;

  sub_219BDD154();

  sub_218B58C44(v101, sub_218B59134);
  sub_218B58C44(v83, sub_21898BBC4);
  (*(v82 + 8))(v97, v84);

  return result;
}

double sub_218B412FC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t a7, uint64_t a8)
{
  v104 = a8;
  v102 = a7;
  v90 = a4;
  v91 = a6;
  v89 = a3;
  v95 = a2;
  v96 = a1;
  sub_218B58D38(0);
  v103 = v10;
  v101 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v98 = v12;
  v100 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = (a5)(0, v11);
  v97 = *(v99 - 8);
  v94 = *(v97 + 64);
  MEMORY[0x28223BE20](v99);
  v108 = &v78 - v13;
  sub_218B59134(0);
  v92 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8);
  v107 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v15;
  MEMORY[0x28223BE20](v16);
  v109 = &v78 - v17;
  v82 = sub_219BE1444();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v19 - 8);
  v84 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v21);
  v85 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  v24 = v23;
  v105 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v78 - v31;
  sub_218954408(0);
  v34 = v33;
  v88 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v78 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v8;
  v110 = *(v8 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_blueprintProvider);
  sub_218987644(0);
  sub_2186F1034(&qword_280EE54F0, sub_218987644, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();
  v89 = v34;
  sub_219BEB244();
  v38 = v105;
  v87 = swift_allocBox();
  v40 = v39;
  v41 = sub_219BE16D4();
  v42 = *(*(v41 - 8) + 56);
  v83 = v40;
  v43 = v40;
  v44 = v42;
  v42(v43, 1, 1, v41);
  v90 = v32;
  sub_218B5A2A4(v32, v29, sub_21898BBC4);
  v45 = (*(v38 + 48))(v29, 1, v24);
  v106 = v36;
  v86 = v37;
  if (v45 == 1)
  {
    sub_218B58C44(v29, sub_21898BBC4);
  }

  else
  {
    v46 = *(v38 + 32);
    v79 = v24;
    v46(v26, v29, v24);
    v47 = sub_218B326E4();
    v48 = sub_219BE97D4();
    v49 = v84;
    (*(*(v48 - 8) + 56))(v84, 1, 1, v48);
    if (v47)
    {
      v50 = v80;
      sub_219BE1414();
      v51 = sub_219BE1434();
      v53 = v52;
      (*(v81 + 8))(v50, v82);
    }

    else
    {
      v51 = 0;
      v53 = 0;
    }

    v54 = v85;
    sub_21968E4D8(v26, v49, v51, v53, v85);
    swift_unknownObjectRelease();

    sub_218B58C44(v49, sub_218B58900);
    (*(v105 + 8))(v26, v79);
    v44(v54, 0, 1, v41);
    sub_218B58ECC(v54, v83);
  }

  v55 = v86;
  v56 = *(v86 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDismissingManager + 24);
  v57 = __swift_project_boxed_opaque_existential_1((v86 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDismissingManager), v56);
  v58 = v95;
  v59 = v91();
  v61 = v60;
  v62 = MEMORY[0x28223BE20](v59);
  v64 = &v78 - v63;
  (*(v65 + 16))(&v78 - v63, v57, v56, v62);
  v66 = v109;
  sub_218A75968(v59, v61, v64, v56, v109);
  v105 = *(v55 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_tracker);
  v67 = v97;
  v68 = v99;
  (*(v97 + 16))(v108, v58, v99);
  v69 = v100;
  v70 = v101;
  v71 = v103;
  (*(v101 + 16))(v100, v96, v103);
  sub_218B5A2A4(v66, v107, sub_218B59134);
  v72 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v73 = (v94 + *(v70 + 80) + v72) & ~*(v70 + 80);
  v74 = (v98 + *(v92 + 80) + v73) & ~*(v92 + 80);
  v75 = (v93 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  (*(v67 + 32))(v76 + v72, v108, v68);
  (*(v70 + 32))(v76 + v73, v69, v71);
  sub_218B5A680(v107, v76 + v74, sub_218B59134);
  *(v76 + v75) = v87;

  sub_219BDD154();

  sub_218B58C44(v109, sub_218B59134);
  sub_218B58C44(v90, sub_21898BBC4);
  (*(v88 + 8))(v106, v89);

  return result;
}

double sub_218B41D0C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v82 = a4;
  v83 = a3;
  v88 = a2;
  v89 = a1;
  sub_218B58D38(0);
  v102 = v5;
  v93 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v91 = v6;
  v101 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_219BF0AC4();
  v90 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v87 = v7;
  v98 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_219BDEF94();
  v92 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v97 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v8;
  MEMORY[0x28223BE20](v9);
  v99 = &v73 - v10;
  sub_218B59134(0);
  v84 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v96 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v12;
  MEMORY[0x28223BE20](v13);
  v103 = &v73 - v14;
  v77 = sub_219BE1444();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v16 - 8);
  v78 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v18);
  v79 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v24 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v73 - v29;
  sub_218954408(0);
  v32 = v31;
  v81 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v73 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v4;
  v105 = *(v4 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_blueprintProvider);
  sub_218987644(0);
  sub_2186F1034(&qword_280EE54F0, sub_218987644, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();
  v82 = v32;
  v94 = v34;
  sub_219BEB244();
  v35 = v21;
  v80 = swift_allocBox();
  v37 = v36;
  v38 = sub_219BE16D4();
  v39 = *(*(v38 - 8) + 56);
  v39(v37, 1, 1, v38);
  v83 = v30;
  sub_218B5A2A4(v30, v27, sub_21898BBC4);
  if ((*(v22 + 48))(v27, 1, v35) == 1)
  {
    sub_218B58C44(v27, sub_21898BBC4);
  }

  else
  {
    v73 = v37;
    v40 = *(v22 + 32);
    v74 = v35;
    v40(v24, v27, v35);
    v41 = sub_219BE97D4();
    v42 = v78;
    (*(*(v41 - 8) + 56))();
    if (sub_218B326E4())
    {
      v43 = v75;
      sub_219BE1414();
      v44 = sub_219BE1434();
      v46 = v45;
      swift_unknownObjectRelease();
      (*(v76 + 8))(v43, v77);
    }

    else
    {
      v44 = 0;
      v46 = 0;
    }

    v47 = v79;
    sub_21968E4D8(v24, v42, v44, v46, v79);

    sub_218B58C44(v42, sub_218B58900);
    (*(v22 + 8))(v24, v74);
    v39(v47, 0, 1, v38);
    sub_218B58ECC(v47, v73);
  }

  v48 = v95;
  __swift_project_boxed_opaque_existential_1((v95 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_contentAvailabilityValidator), *(v95 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_contentAvailabilityValidator + 24));
  v49 = v88;
  sub_219BF0A04();
  LODWORD(v95) = sub_219BF4774();

  v50 = *(v48 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDismissingManager + 24);
  v51 = __swift_project_boxed_opaque_existential_1((v48 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDismissingManager), v50);
  v52 = sub_219BF0A64();
  v54 = v53;
  v55 = MEMORY[0x28223BE20](v52);
  v57 = &v73 - v56;
  (*(v58 + 16))(&v73 - v56, v51, v50, v55);
  sub_218A75968(v52, v54, v57, v50, v103);
  __swift_project_boxed_opaque_existential_1((v48 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_puzzleHistoryService), *(v48 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_puzzleHistoryService + 24));
  v59 = [sub_219BF0AA4() identifier];
  swift_unknownObjectRelease();
  sub_219BF5414();

  v60 = sub_219BF3424();
  v79 = v60;

  sub_219BF0AA4();
  swift_getObjectType();
  v61 = v99;
  sub_2194CA7FC(v60, v99);
  swift_unknownObjectRelease();
  v78 = *(v48 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_tracker);
  v62 = v92;
  (*(v92 + 16))(v97, v61, v104);
  v63 = v90;
  (*(v90 + 16))(v98, v49, v100);
  sub_218B5A2A4(v103, v96, sub_218B59134);
  v64 = v93;
  (*(v93 + 16))(v101, v89, v102);
  v65 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v66 = v65 + v86;
  v67 = (*(v63 + 80) + v65 + v86 + 1) & ~*(v63 + 80);
  v68 = (v87 + *(v84 + 80) + v67) & ~*(v84 + 80);
  v69 = (v85 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = (*(v64 + 80) + v69 + 8) & ~*(v64 + 80);
  v71 = swift_allocObject();
  (*(v62 + 32))(v71 + v65, v97, v104);
  *(v71 + v66) = v95 & 1;
  (*(v63 + 32))(v71 + v67, v98, v100);
  sub_218B5A680(v96, v71 + v68, sub_218B59134);
  *(v71 + v69) = v80;
  (*(v64 + 32))(v71 + v70, v101, v102);

  sub_219BDD154();

  (*(v62 + 8))(v99, v104);
  sub_218B58C44(v103, sub_218B59134);
  sub_218B58C44(v83, sub_21898BBC4);
  (*(v81 + 8))(v94, v82);

  return result;
}

double sub_218B42934(uint64_t a1, unint64_t a2, uint64_t a3, char *a4)
{
  v68 = a4;
  v66 = a3;
  v74 = a2;
  v71 = a1;
  v77 = sub_219BF0B74();
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v73 = v5;
  v76 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D38(0);
  v72 = v6;
  v70 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v69 = v7;
  v67 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_219BE1444();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v61 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v9 - 8);
  v62 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v11);
  v63 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v56 - v22;
  sub_218954408(0);
  v25 = v24;
  v65 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v4 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_blueprintProvider);
  v79 = v4;
  v80 = v28;
  sub_218987644(0);
  sub_2186F1034(&qword_280EE54F0, sub_218987644, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();
  v66 = v25;
  v78 = v27;
  sub_219BEB244();
  v64 = swift_allocBox();
  v30 = v29;
  v31 = sub_219BE16D4();
  v32 = *(*(v31 - 8) + 56);
  v32(v30, 1, 1, v31);
  v68 = v23;
  sub_218B5A2A4(v23, v20, sub_21898BBC4);
  if ((*(v15 + 48))(v20, 1, v14) == 1)
  {
    sub_218B58C44(v20, sub_21898BBC4);
  }

  else
  {
    v57 = v30;
    v33 = v61;
    v34 = *(v15 + 32);
    v58 = v14;
    v34(v17, v20, v14);
    v35 = sub_219BE97D4();
    v36 = v62;
    (*(*(v35 - 8) + 56))();
    if (sub_218B326E4())
    {
      v37 = v33;
      sub_219BE1414();
      v38 = sub_219BE1434();
      v40 = v39;
      swift_unknownObjectRelease();
      (*(v59 + 8))(v37, v60);
    }

    else
    {
      v38 = 0;
      v40 = 0;
    }

    v41 = v63;
    sub_21968E4D8(v17, v36, v38, v40, v63);

    sub_218B58C44(v36, sub_218B58900);
    (*(v15 + 8))(v17, v58);
    v32(v41, 0, 1, v31);
    sub_218B58ECC(v41, v57);
  }

  v42 = v79;
  __swift_project_boxed_opaque_existential_1((v79 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_contentAvailabilityValidator), *(v79 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_contentAvailabilityValidator + 24));
  v43 = v74;
  sub_219BF0AF4();
  LODWORD(v62) = sub_219BF4774();

  v63 = *(v42 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_tracker);
  v44 = v70;
  v45 = v67;
  v46 = v72;
  (*(v70 + 16))(v67, v71, v72);
  v47 = v75;
  v48 = v76;
  v49 = v77;
  (*(v75 + 16))(v76, v43, v77);
  v50 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v51 = (v69 + *(v47 + 80) + v50) & ~*(v47 + 80);
  v74 = (v51 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = (v51 + v73 + 23) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  (*(v44 + 32))(v53 + v50, v45, v46);
  (*(v47 + 32))(v53 + v51, v48, v49);
  v54 = v53 + v74;
  *v54 = v79;
  *(v54 + 8) = v62 & 1;
  *(v53 + v52) = v64;

  sub_219BDD154();

  sub_218B58C44(v68, sub_21898BBC4);
  (*(v65 + 8))(v78, v66);

  return result;
}

uint64_t sub_218B4316C(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  sub_218B58900(0);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BE16D4();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v31 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v2 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_blueprintProvider);
  v39 = v19;
  sub_218987644(0);
  v21 = v20;
  sub_2186F1034(&qword_280EE54F0, sub_218987644, MEMORY[0x277D6D8C8]);
  v30 = v21;
  sub_219BE7B94();
  sub_219BF4B14();
  sub_219BEB244();

  v22 = *(v9 + 8);
  v32 = v9 + 8;
  v33 = v8;
  v22(v11, v8);
  v23 = v17;
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    return sub_218B58C44(v14, sub_21898BBC4);
  }

  v25 = v31;
  (*(v23 + 32))(v31, v14, v16);
  sub_219BF4B54();
  v39 = v19;
  sub_219BE7B94();
  v26 = sub_219BE97D4();
  v27 = v34;
  (*(*(v26 - 8) + 56))(v34, 1, 1, v26);
  v28 = v35;
  sub_21968E4D8(v25, v27, 0, 0, v35);
  sub_218B58C44(v27, sub_218B58900);
  v22(v11, v33);
  sub_2186F1034(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
  v29 = v37;
  sub_219BDD1F4();

  (*(v36 + 8))(v28, v29);
  return (*(v23 + 8))(v25, v16);
}

uint64_t sub_218B43634()
{
  sub_218774F78(v0 + 16);
  sub_218B58C44(v0 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_urlReferralData, sub_21896FA3C);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_headlineExposureTracker));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_trackerConfiguration));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_puzzleHistoryService));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_contentAvailabilityValidator));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_sectionPositionProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDismissingManager));
  return v0;
}

uint64_t sub_218B43798()
{
  sub_218B43634();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TagFeedTracker(uint64_t a1)
{
  result = qword_280EDB8F8;
  if (!qword_280EDB8F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218B43844(uint64_t a1)
{
  sub_21896FA3C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_218B43930()
{
  sub_219BDF4E4();
  sub_2186F1034(&unk_280EE8770, MEMORY[0x277D2DAF8], MEMORY[0x277D2DAF0]);
  sub_219BDD214();
  sub_219BE0654();
  sub_2186F1034(&qword_280EE8390, MEMORY[0x277D2E688], MEMORY[0x277D2E680]);
  return sub_219BDD214();
}

uint64_t sub_218B43A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  v31 = a2;
  sub_218954408(0);
  v29 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v28 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = sub_219BDB954();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  (*(v13 + 16))(&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v12, v15);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  (*(v13 + 32))(v17 + v16, &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v32 = *(v27 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_blueprintProvider);
  sub_218987644(0);
  sub_2186F1034(&qword_280EE54F0, sub_218987644, MEMORY[0x277D6D8C8]);
  swift_unknownObjectRetain();
  sub_219BE7B94();
  v18 = v28;
  v19 = v29;
  (*(v7 + 16))(v28, v11, v29);
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = (v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v7 + 32))(v22 + v20, v18, v19);
  v23 = (v22 + v21);
  v24 = v31;
  *v23 = v30;
  v23[1] = v24;
  v25 = (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_218B59ED4;
  v25[1] = v17;

  sub_219BDD1B4();

  return (*(v7 + 8))(v11, v19);
}

uint64_t sub_218B43DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v28 = a2;
  sub_218954408(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = sub_219BDB184();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a3, v12, v15);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v17, v16, v12);
  v29 = *(v26 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_blueprintProvider);
  sub_218987644(0);
  sub_2186F1034(&qword_280EE54F0, sub_218987644, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();
  (*(v6 + 16))(v8, v11, v5);
  v19 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v20 = (v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v6 + 32))(v21 + v19, v8, v5);
  v22 = (v21 + v20);
  v23 = v28;
  *v22 = v27;
  v22[1] = v23;
  v24 = (v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_218B59D00;
  v24[1] = v18;

  sub_219BDD1B4();

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_218B44144(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v34 = a1;
  v35 = a2;
  sub_218954408(0);
  v33 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = sub_219BDB184();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  (*(v13 + 16))(&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v12, v15);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = swift_allocObject();
  (*(v13 + 32))(v17 + v16, &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  *(v17 + ((v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v36 = *(v31 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_blueprintProvider);
  v18 = a4;
  sub_218987644(0);
  sub_2186F1034(&qword_280EE54F0, sub_218987644, MEMORY[0x277D6D8C8]);
  v19 = v11;
  v30 = v11;
  sub_219BE7B94();
  v20 = v32;
  v21 = v33;
  (*(v7 + 16))(v32, v19, v33);
  v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v23 = (v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  (*(v7 + 32))(v24 + v22, v20, v21);
  v25 = (v24 + v23);
  v26 = v35;
  *v25 = v34;
  v25[1] = v26;
  v27 = (v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v27 = sub_218B59C60;
  v27[1] = v17;

  sub_219BDD1B4();

  return (*(v7 + 8))(v30, v21);
}

uint64_t sub_218B444A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v178 = a5;
  v181 = a3;
  v182 = a4;
  sub_218A1299C(0);
  MEMORY[0x28223BE20](v6 - 8);
  v143 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5A830(0);
  MEMORY[0x28223BE20](v8 - 8);
  v131 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v10 - 8);
  v144 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_219BDF474();
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v130 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_219BE1444();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v132 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v14 - 8);
  v161 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408(0);
  v142 = v16;
  v141 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v160 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_219BE16D4();
  v180 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v150 = &v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_219BE0444();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v138 = &v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A12934(0);
  MEMORY[0x28223BE20](v20 - 8);
  v149 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v22 - 8);
  v177 = &v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  v183 = v24;
  v179 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v184 = &v129 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_219BE09E4();
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v154 = &v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_219BDF104();
  v152 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v151 = &v129 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58FEC(0);
  MEMORY[0x28223BE20](v28 - 8);
  v174 = &v129 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_219BE0724();
  v175 = *(v30 - 8);
  v176 = v30;
  MEMORY[0x28223BE20](v30);
  v148 = &v129 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_219BE1774();
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v135 = &v129 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_219BEFBD4();
  v168 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v166 = &v129 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_219BDF1A4();
  v172 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v171 = &v129 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_219BDFCE4();
  v164 = *(v165 - 1);
  MEMORY[0x28223BE20](v165);
  v36 = &v129 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_219BE0D44();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = &v129 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_219BDF0E4();
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = &v129 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF0F14();
  swift_getObjectType();
  sub_219BF67F4();
  swift_unknownObjectRelease();
  v187 = v41;
  v188 = sub_2186F1034(&qword_280EE88B0, MEMORY[0x277D2D8A8], MEMORY[0x277D2D8A0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v186);
  (*(v42 + 16))(boxed_opaque_existential_1, v44, v41);
  swift_beginAccess();
  sub_2199D5C50(&v186, 0x44656C6369747241, 0xEB00000000617461);
  swift_endAccess();
  (*(v42 + 8))(v44, v41);
  v185 = a2;
  sub_219BF0F14();
  swift_getObjectType();
  sub_219BF6834();
  swift_unknownObjectRelease();
  v187 = v37;
  v163 = sub_2186F1034(&qword_280EE8190, MEMORY[0x277D2ECA0], MEMORY[0x277D2EC98]);
  v188 = v163;
  v46 = __swift_allocate_boxed_opaque_existential_1(&v186);
  v47 = v38 + 16;
  v48 = *(v38 + 16);
  v48(v46, v40, v37);
  swift_beginAccess();
  sub_2199D5C50(&v186, 0xD00000000000001ALL, 0x8000000219CE8EE0);
  swift_endAccess();
  v49 = *(v38 + 8);
  v167 = v37;
  v170 = v38 + 8;
  v49(v40, v37);
  sub_218B5A30C(0);
  v51 = v50;
  v52 = sub_2186F1034(&qword_280EDE830, type metadata accessor for TagFeedModel, &unk_219C47BB4);
  v162 = v51;
  v147 = v52;
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  sub_219BDFCD4();
  v159 = "s/TagFeed/TagFeedTracker.swift";
  v54 = v165;
  v187 = v165;
  v188 = sub_2186F1034(&unk_280EE8590, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  v55 = __swift_allocate_boxed_opaque_existential_1(&v186);
  v56 = v164;
  (*(v164 + 2))(v55, v36, v54);
  swift_beginAccess();
  sub_2199D5C50(&v186, 0xD000000000000010, 0x8000000219CE8F00);
  swift_endAccess();
  (*(v56 + 1))(v36, v54);
  sub_219BF0F14();
  v57 = *MEMORY[0x277D329E0];
  v58 = v168;
  v59 = *(v168 + 104);
  v164 = v48;
  v60 = v166;
  v165 = v49;
  v61 = v169;
  v59(v166, v57, v169);
  v158 = v47;
  v62 = v171;
  sub_219BE02C4();
  swift_unknownObjectRelease();
  (*(v58 + 8))(v60, v61);
  v63 = v173;
  v187 = v173;
  v188 = sub_2186F1034(&unk_280EE8850, MEMORY[0x277D2D950], MEMORY[0x277D2D948]);
  v64 = __swift_allocate_boxed_opaque_existential_1(&v186);
  v65 = v172;
  (*(v172 + 16))(v64, v62, v63);
  swift_beginAccess();
  sub_2199D5C50(&v186, 0x4465636E65696353, 0xEB00000000617461);
  swift_endAccess();
  (*(v65 + 8))(v62, v63);
  sub_219BF0F14();
  swift_getObjectType();
  sub_219BF6834();
  swift_unknownObjectRelease();
  v66 = v167;
  v187 = v167;
  v188 = v163;
  v67 = __swift_allocate_boxed_opaque_existential_1(&v186);
  v164(v67, v40, v66);
  swift_beginAccess();
  sub_2199D5C50(&v186, 0xD00000000000001ALL, v159 | 0x8000000000000000);
  swift_endAccess();
  (v165)(v40, v66);
  v68 = [sub_219BF0F14() scoreProfile];
  swift_unknownObjectRelease();
  v69 = v179;
  v70 = v180;
  v71 = v184;
  v73 = v175;
  v72 = v176;
  if (v68)
  {
    if ([v68 hasShadowScores])
    {
      [v68 shadowTabiScore];
      [v68 shadowAgedPersonalizationScore];
      v74 = v135;
      sub_219BE1764();
      v75 = v137;
      v187 = v137;
      v188 = sub_2186F1034(&unk_280EE7F40, MEMORY[0x277D2F8F0], MEMORY[0x277D2F8E8]);
      v76 = __swift_allocate_boxed_opaque_existential_1(&v186);
      v77 = v136;
      (*(v136 + 16))(v76, v74, v75);
      swift_beginAccess();
      sub_2199D5C50(&v186, 0x74614465726F6353, 0xE900000000000061);
      swift_endAccess();

      v78 = v75;
      v71 = v184;
      (*(v77 + 8))(v74, v78);
    }

    else
    {
    }
  }

  sub_219BF0F14();
  swift_getObjectType();
  v79 = v174;
  sub_219BF6824();
  swift_unknownObjectRelease();
  if ((*(v73 + 48))(v79, 1, v72) == 1)
  {
    sub_218B58C44(v79, sub_218B58FEC);
  }

  else
  {
    v80 = v69;
    v81 = v148;
    (*(v73 + 32))(v148, v79, v72);
    v187 = v72;
    v188 = sub_2186F1034(&unk_27CC0DC50, MEMORY[0x277D2E738], MEMORY[0x277D2E730]);
    v82 = __swift_allocate_boxed_opaque_existential_1(&v186);
    (*(v73 + 16))(v82, v81, v72);
    swift_beginAccess();
    sub_2199D5C50(&v186, 0xD000000000000014, 0x8000000219CE8F60);
    swift_endAccess();
    v83 = v81;
    v69 = v80;
    (*(v73 + 8))(v83, v72);
  }

  v84 = [sub_219BF0F14() sourceChannel];
  swift_unknownObjectRelease();
  if (v84)
  {
    v85 = v151;
    sub_219BE01F4();
    v86 = v153;
    v187 = v153;
    v188 = sub_2186F1034(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
    v87 = __swift_allocate_boxed_opaque_existential_1(&v186);
    v88 = v69;
    v89 = v152;
    (*(v152 + 16))(v87, v85, v86);
    swift_beginAccess();
    sub_2199D5C50(&v186, 0x446C656E6E616843, 0xEB00000000617461);
    swift_endAccess();
    (*(v89 + 8))(v85, v86);
    v90 = v154;
    v71 = v184;
    sub_219BE01E4();
    v91 = v156;
    v187 = v156;
    v188 = sub_2186F1034(&qword_280EE8270, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
    v92 = __swift_allocate_boxed_opaque_existential_1(&v186);
    v93 = v155;
    (*(v155 + 16))(v92, v90, v91);
    swift_beginAccess();
    sub_2199D5C50(&v186, 0xD000000000000016, 0x8000000219CE8F40);
    swift_endAccess();
    swift_unknownObjectRelease();
    v70 = v180;
    (*(v93 + 8))(v90, v91);
    v69 = v88;
  }

  v94 = v177;
  sub_218B5A2A4(v178, v177, sub_21898BBC4);
  if ((*(v69 + 48))(v94, 1, v183) == 1)
  {
    v95 = sub_21898BBC4;
    v96 = v94;
    return sub_218B58C44(v96, v95);
  }

  (*(v69 + 32))(v71, v94, v183);
  v97 = v149;
  sub_219BE7564();
  sub_21898BF70(0);
  (*(*(v98 - 8) + 56))(v97, 0, 1, v98);
  v99 = sub_219BE6A34();
  result = sub_218B58C44(v97, sub_218A12934);
  if (v99 < 0xFFFFFFFF80000000)
  {
    goto LABEL_31;
  }

  if (v99 > 0x7FFFFFFF)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v100 = v138;
  sub_219BE0434();
  v101 = v140;
  v187 = v140;
  v188 = sub_2186F1034(&unk_280EE8400, MEMORY[0x277D2E530], MEMORY[0x277D2E528]);
  v102 = __swift_allocate_boxed_opaque_existential_1(&v186);
  v103 = v139;
  (*(v139 + 16))(v102, v100, v101);
  swift_beginAccess();
  sub_2199D5C50(&v186, 0xD000000000000013, 0x8000000219CE8F20);
  swift_endAccess();
  (*(v103 + 8))(v100, v101);
  v104 = sub_218B326E4();
  sub_219BE7594();
  v105 = sub_219BE97D4();
  (*(*(v105 - 8) + 56))(v161, 1, 1, v105);
  if (v104)
  {
    swift_unknownObjectRetain();
    v106 = v132;
    sub_219BE1414();
    v107 = sub_219BE1434();
    v109 = v108;
    swift_unknownObjectRelease();
    (*(v133 + 8))(v106, v134);
  }

  else
  {
    v107 = 0;
    v109 = 0;
  }

  v110 = v150;
  v111 = v184;
  v112 = v161;
  v113 = v107;
  v114 = v160;
  sub_21968E4D8(v184, v161, v113, v109, v150);

  sub_218B58C44(v112, sub_218B58900);
  (*(v141 + 8))(v114, v142);
  v115 = v157;
  v187 = v157;
  v188 = sub_2186F1034(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
  v116 = __swift_allocate_boxed_opaque_existential_1(&v186);
  (*(v70 + 16))(v116, v110, v115);
  swift_beginAccess();
  sub_2199D5C50(&v186, 0x74614470756F7247, 0xE900000000000061);
  swift_endAccess();
  sub_219BE6934();
  v117 = v143;
  sub_21943EC40(v186, v143);

  v118 = type metadata accessor for TagFeedGroup(0);
  if ((*(*(v118 - 8) + 48))(v117, 1, v118) == 1)
  {
    swift_unknownObjectRelease();
    (*(v70 + 8))(v110, v115);
    (*(v179 + 8))(v111, v183);
    v119 = sub_218A1299C;
    v120 = v117;
LABEL_23:
    sub_218B58C44(v120, v119);
    v124 = v144;
    (*(v145 + 56))(v144, 1, 1, v146);
LABEL_24:
    v95 = sub_218B58F30;
    v96 = v124;
    return sub_218B58C44(v96, v95);
  }

  v121 = v131;
  sub_2195A5C88(v131);
  sub_218B58C44(v117, type metadata accessor for TagFeedGroup);
  v122 = sub_219BF1904();
  v123 = *(v122 - 8);
  if ((*(v123 + 48))(v121, 1, v122) == 1)
  {
    swift_unknownObjectRelease();
    (*(v70 + 8))(v110, v157);
    (*(v179 + 8))(v184, v183);
    v119 = sub_218B5A830;
    v120 = v121;
    goto LABEL_23;
  }

  sub_219BF0E44();
  v124 = v144;
  sub_219BF17B4();

  (*(v123 + 8))(v121, v122);
  v125 = v145;
  v126 = v146;
  if ((*(v145 + 48))(v124, 1, v146) == 1)
  {
    swift_unknownObjectRelease();
    (*(v70 + 8))(v150, v157);
    (*(v179 + 8))(v184, v183);
    goto LABEL_24;
  }

  v127 = v130;
  (*(v125 + 32))(v130, v124, v126);
  v187 = v126;
  v188 = sub_2186F1034(&unk_280EE87B0, MEMORY[0x277D2DAB8], MEMORY[0x277D2DAB0]);
  v128 = __swift_allocate_boxed_opaque_existential_1(&v186);
  (*(v125 + 16))(v128, v127, v126);
  swift_beginAccess();
  sub_2199D5C50(&v186, 0x7261696C69787541, 0xED00006174614479);
  swift_endAccess();
  swift_unknownObjectRelease();
  (*(v125 + 8))(v127, v126);
  (*(v70 + 8))(v150, v157);
  return (*(v179 + 8))(v184, v183);
}

uint64_t sub_218B4612C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v109 = a6;
  *&v110 = a4;
  v105 = a5;
  v8 = sub_219BDBD34();
  v97 = *(v8 - 8);
  v98 = v8;
  MEMORY[0x28223BE20](v8);
  v96 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDF1E4();
  v94 = *(v10 - 8);
  v95 = v10;
  MEMORY[0x28223BE20](v10);
  v93 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BF70(0);
  v89 = v12;
  v88 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v102 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408(0);
  v103 = v14;
  v86 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v108 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_219BDFCE4();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v87 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BE1444();
  v100 = *(v17 - 8);
  v101 = v17;
  MEMORY[0x28223BE20](v17);
  v99 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v19 - 8);
  v112 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BDF4A4();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v107 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A1299C(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5A830(0);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_219BDF474();
  v111 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v35 = &v82 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  v85 = v36;
  v92 = a2;
  sub_219BE6934();
  sub_21943EC40(v113, v26);

  v37 = type metadata accessor for TagFeedGroup(0);
  v38 = &unk_219C09000;
  if ((*(*(v37 - 8) + 48))(v26, 1, v37) == 1)
  {
    sub_218B58C44(v26, sub_218A1299C);
LABEL_5:
    (*(v111 + 56))(v32, 1, 1, v33);
LABEL_6:
    sub_218B58C44(v32, sub_218B58F30);
    goto LABEL_7;
  }

  v106 = v22;
  sub_2195A5C88(v29);
  sub_218B58C44(v26, type metadata accessor for TagFeedGroup);
  v39 = sub_219BF1904();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v29, 1, v39) == 1)
  {
    sub_218B58C44(v29, sub_218B5A830);
    v22 = v106;
    v38 = &unk_219C09000;
    goto LABEL_5;
  }

  v84 = v35;
  sub_219BF03E4();
  v104 = v21;
  sub_219BF17B4();
  v21 = v104;

  (*(v40 + 8))(v29, v39);
  v75 = v111;
  v76 = (*(v111 + 48))(v32, 1, v33);
  v22 = v106;
  v38 = &unk_219C09000;
  if (v76 == 1)
  {
    goto LABEL_6;
  }

  (*(v75 + 32))(v84, v32, v33);
  sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v77 = sub_219BDCD44();
  v78 = *(v77 - 8);
  v79 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_219C09BA0;
  (*(v78 + 104))(v80 + v79, *MEMORY[0x277CEAD18], v77);
  sub_2186F1034(&unk_280EE87B0, MEMORY[0x277D2DAB8], MEMORY[0x277D2DAB0]);
  v81 = v84;
  sub_219BDCCC4();
  v38 = &unk_219C09000;

  (*(v75 + 8))(v81, v33);
LABEL_7:
  v41 = v112;
  sub_218B5A2A4(v110, v112, sub_218B59134);
  if ((*(v22 + 6))(v41, 1, v21) == 1)
  {
    sub_218B58C44(v41, sub_218B59134);
    LODWORD(v112) = *MEMORY[0x277CEAD18];
  }

  else
  {
    v42 = v107;
    (*(v22 + 4))(v107, v41, v21);
    sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v43 = *(sub_219BDCD44() - 8);
    v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_219C09BA0;
    v46 = *(v43 + 104);
    LODWORD(v112) = *MEMORY[0x277CEAD18];
    v46(v45 + v44);
    sub_2186F1034(&unk_280EE8790, MEMORY[0x277D2DAD8], MEMORY[0x277D2DAD0]);
    sub_219BDCCC4();
    v38 = &unk_219C09000;

    (*(v22 + 1))(v42, v21);
  }

  v47 = a1;
  sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v107 = v48;
  v49 = sub_219BDCD44();
  v50 = *(v49 - 8);
  v111 = *(v50 + 72);
  v51 = *(v50 + 80);
  v52 = (v51 + 32) & ~v51;
  v53 = swift_allocObject();
  v110 = v38[186];
  *(v53 + 16) = v110;
  v106 = *(v50 + 104);
  v54 = v112;
  v106(v53 + v52, v112, v49);
  sub_219BE16D4();
  sub_2186F1034(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
  sub_219BDCCC4();

  v55 = [sub_219BF0404() identifier];
  swift_unknownObjectRelease();
  sub_219BF5414();

  v56 = v99;
  sub_219BE1424();
  v104 = v51;
  v57 = swift_allocObject();
  *(v57 + 16) = v110;
  v83 = v49;
  v84 = (v50 + 104);
  v106(v57 + v52, v54, v49);
  sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
  v58 = v101;
  v105 = v47;
  sub_219BDCCC4();

  (*(v100 + 8))(v56, v58);
  sub_218B5A30C(0);
  v60 = v59;
  sub_219BE7594();
  v61 = v102;
  sub_219BE7564();
  sub_2186F1034(&qword_280EDE830, type metadata accessor for TagFeedModel, &unk_219C47BB4);
  v62 = v103;
  result = sub_219BEB304();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    v64 = v87;
    sub_219BDFCD4();
    (*(v88 + 8))(v61, v89);
    (*(v86 + 8))(v108, v62);
    v65 = swift_allocObject();
    *(v65 + 16) = v110;
    v66 = v83;
    v108 = v60;
    v67 = v106;
    v106(v65 + v52, v112, v83);
    sub_2186F1034(&unk_280EE8590, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
    v68 = v91;
    sub_219BDCCC4();

    (*(v90 + 8))(v64, v68);
    sub_219BE6944();
    v69 = v93;
    sub_219BDF1C4();
    v70 = swift_allocObject();
    *(v70 + 16) = v110;
    v67(v70 + v52, v112, v66);
    sub_2186F1034(&unk_280EE8840, MEMORY[0x277D2D970], MEMORY[0x277D2D968]);
    v71 = v95;
    sub_219BDCCC4();

    (*(v94 + 8))(v69, v71);
    sub_219BDFEC4();
    v72 = v96;
    sub_219BE75A4();
    sub_2186F1034(&unk_280EE8520, MEMORY[0x277D2E1D0], MEMORY[0x277D2E1C8]);
    sub_219BDCC64();
    v73 = v98;
    v74 = *(v97 + 8);
    v74(v72, v98);
    sub_219BE7574();
    sub_219BDCC74();
    return (v74)(v72, v73);
  }

  __break(1u);
  return result;
}

uint64_t sub_218B47294(uint64_t a1)
{
  v15 = a1;
  v1 = sub_219BDBD34();
  v16 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BDF7C4();
  v17 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEBEF4();
  v14 = v5;
  sub_219BDF7B4();
  sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v6 = sub_219BDCD44();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09BA0;
  (*(v7 + 104))(v9 + v8, *MEMORY[0x277CEAD18], v6);
  sub_2186F1034(&qword_280EE8680, MEMORY[0x277D2DD68], MEMORY[0x277D2DD60]);
  sub_219BDCCC4();

  sub_219BE0A94();
  sub_218B5A30C(0);
  sub_219BE75A4();
  sub_2186F1034(&qword_280EE8228, MEMORY[0x277D2EA68], MEMORY[0x277D2EA60]);
  sub_219BDCC64();
  v10 = *(v16 + 8);
  v10(v3, v1);
  sub_219BE7574();
  sub_219BDCC74();
  v10(v3, v1);
  return (*(v17 + 8))(v14, v13);
}

uint64_t sub_218B47630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v120 = a6;
  v137 = a5;
  v138 = a1;
  v128 = a3;
  v118 = sub_219BDBD34();
  v122 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v121 = v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v8 - 8);
  v119 = v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_219BDF4A4();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v107 = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v11 - 8);
  v105 = v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_219BE16D4();
  v110 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v97 = v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A1299C(0);
  MEMORY[0x28223BE20](v14 - 8);
  v103 = v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5A830(0);
  MEMORY[0x28223BE20](v16 - 8);
  v96 = v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v18 - 8);
  v98 = v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_219BDF474();
  v109 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v95 = v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_219BE0444();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A12934(0);
  MEMORY[0x28223BE20](v22 - 8);
  v108 = v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  v126 = *(v27 - 8);
  v127 = v27;
  MEMORY[0x28223BE20](v27);
  v125 = v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_219BDFCE4();
  v29 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v31 = v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_219BDB954();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = v94 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_219BDF464();
  v114 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v38 = v94 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = swift_projectBox();
  v102 = swift_projectBox();
  v94[1] = a2;
  sub_219BF1044();
  sub_219BDB804();
  (*(v33 + 8))(v35, v32);
  sub_219BDF454();
  sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v40 = v39;
  v41 = sub_219BDCD44();
  v42 = *(v41 - 8);
  v43 = *(v42 + 72);
  v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v132 = *(v42 + 80);
  v133 = v43;
  v136 = v40;
  v45 = swift_allocObject();
  v129 = xmmword_219C09BA0;
  *(v45 + 16) = xmmword_219C09BA0;
  v46 = *(v42 + 104);
  v131 = *MEMORY[0x277CEAD18];
  v137 = v41;
  v135 = v42 + 104;
  v130 = v46;
  v46(v45 + v44);
  sub_2186F1034(&qword_280EE87C0, MEMORY[0x277D2DAA8], MEMORY[0x277D2DAA0]);
  v134 = "feedDismissingManager";
  v113 = v38;
  v115 = v36;
  sub_219BDCCC4();

  sub_218B5A30C(0);
  v48 = v47;
  sub_2186F1034(&qword_280EDE830, type metadata accessor for TagFeedModel, &unk_219C47BB4);
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_219BDFCD4();
  v50 = swift_allocObject();
  *(v50 + 16) = v129;
  v130(v50 + v44, v131, v137);
  sub_2186F1034(&unk_280EE8590, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  v51 = v124;
  sub_219BDCCC4();

  (*(v29 + 8))(v31, v51);
  v52 = v123;
  swift_beginAccess();
  sub_218B5A2A4(v52, v26, sub_21898BBC4);
  v53 = v126;
  v54 = v127;
  v55 = (*(v126 + 48))(v26, 1, v127);
  v112 = v48;
  v111 = v44;
  if (v55 == 1)
  {
    sub_218B58C44(v26, sub_21898BBC4);
    v56 = v122;
    v57 = v121;
    v58 = v117;
    v59 = v116;
LABEL_16:
    v79 = v120;
    v80 = v119;
    goto LABEL_17;
  }

  (*(v53 + 32))(v125, v26, v54);
  v60 = v108;
  sub_219BE7564();
  sub_21898BF70(0);
  (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
  v62 = sub_219BE6A34();
  result = sub_218B58C44(v60, sub_218A12934);
  if (v62 < 0xFFFFFFFF80000000)
  {
    goto LABEL_25;
  }

  if (v62 > 0x7FFFFFFF)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v63 = v99;
  sub_219BE0434();
  v64 = swift_allocObject();
  *(v64 + 16) = v129;
  v130(v64 + v44, v131, v137);
  sub_2186F1034(&unk_280EE8400, MEMORY[0x277D2E530], MEMORY[0x277D2E528]);
  v65 = v101;
  sub_219BDCCC4();

  (*(v100 + 8))(v63, v65);
  sub_219BE6934();
  v66 = v103;
  sub_21943EC40(v139, v103);

  v67 = type metadata accessor for TagFeedGroup(0);
  if ((*(*(v67 - 8) + 48))(v66, 1, v67) == 1)
  {
    sub_218B58C44(v66, sub_218A1299C);
    v56 = v122;
    v57 = v121;
    v68 = v106;
    v69 = v105;
    v70 = v104;
LABEL_11:
    v75 = v98;
    (*(v109 + 56))(v98, 1, 1, v70);
    v58 = v117;
    v59 = v116;
    v76 = v110;
LABEL_12:
    sub_218B58C44(v75, sub_218B58F30);
    goto LABEL_13;
  }

  v71 = v96;
  sub_2195A5C88(v96);
  sub_218B58C44(v66, type metadata accessor for TagFeedGroup);
  v72 = sub_219BF1904();
  v73 = *(v72 - 8);
  v74 = (*(v73 + 48))(v71, 1, v72);
  v56 = v122;
  v57 = v121;
  v68 = v106;
  v69 = v105;
  v70 = v104;
  if (v74 == 1)
  {
    sub_218B58C44(v71, sub_218B5A830);
    goto LABEL_11;
  }

  sub_219BF1004();
  v75 = v98;
  sub_219BF17B4();

  (*(v73 + 8))(v71, v72);
  v89 = v109;
  v90 = (*(v109 + 48))(v75, 1, v70);
  v58 = v117;
  v59 = v116;
  v76 = v110;
  if (v90 == 1)
  {
    goto LABEL_12;
  }

  (*(v89 + 32))(v95, v75, v70);
  v91 = v111;
  v92 = swift_allocObject();
  *(v92 + 16) = v129;
  v130(v92 + v91, v131, v137);
  sub_2186F1034(&unk_280EE87B0, MEMORY[0x277D2DAB8], MEMORY[0x277D2DAB0]);
  v93 = v95;
  sub_219BDCCC4();
  v76 = v110;

  (*(v109 + 8))(v93, v70);
LABEL_13:
  v77 = v102;
  swift_beginAccess();
  sub_218B5A2A4(v77, v69, sub_218B58D58);
  v78 = v68;
  if ((*(v76 + 48))(v69, 1, v68) != 1)
  {
    v81 = v97;
    (*(v76 + 32))(v97, v69, v68);
    v82 = v111;
    v83 = swift_allocObject();
    *(v83 + 16) = v129;
    v130(v83 + v82, v131, v137);
    sub_2186F1034(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    sub_219BDCCC4();

    (*(v76 + 8))(v81, v78);
    (*(v126 + 8))(v125, v127);
    goto LABEL_16;
  }

  (*(v126 + 8))(v125, v127);
  sub_218B58C44(v69, sub_218B58D58);
  v79 = v120;
  v80 = v119;
LABEL_17:
  sub_218B5A2A4(v79, v80, sub_218B59134);
  if ((*(v59 + 48))(v80, 1, v58) == 1)
  {
    sub_218B58C44(v80, sub_218B59134);
  }

  else
  {
    v84 = v107;
    (*(v59 + 32))(v107, v80, v58);
    v85 = v111;
    v86 = swift_allocObject();
    *(v86 + 16) = v129;
    v130(v86 + v85, v131, v137);
    sub_2186F1034(&unk_280EE8790, MEMORY[0x277D2DAD8], MEMORY[0x277D2DAD0]);
    sub_219BDCCC4();

    (*(v59 + 8))(v84, v58);
  }

  sub_219BE08D4();
  sub_219BE75A4();
  sub_2186F1034(&qword_280EE82B0, MEMORY[0x277D2E8B8], MEMORY[0x277D2E8B0]);
  sub_219BDCC64();
  v87 = *(v56 + 8);
  v88 = v118;
  v87(v57, v118);
  sub_219BE7574();
  sub_219BDCC74();
  v87(v57, v88);
  return (*(v114 + 8))(v113, v115);
}

uint64_t sub_218B48A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v156 = a7;
  v151 = a6;
  v179 = a4;
  v180 = a5;
  v172 = a3;
  v181 = a1;
  *&v182 = a2;
  v7 = sub_219BDBD34();
  v161 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v160 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_219BDF8A4();
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v157 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_219BE09E4();
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v153 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_219BDF104();
  v150 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v149 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_219BDF1A4();
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v146 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_219BDFCE4();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v143 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_219BDBD64();
  v171 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v166 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BDFFB4();
  v168 = *(v15 - 8);
  v169 = v15;
  MEMORY[0x28223BE20](v15);
  v167 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_219BE1714();
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v163 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v18 - 8);
  v173 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BE16D4();
  v21 = *(v20 - 8);
  v176 = v20;
  v177 = v21;
  MEMORY[0x28223BE20](v20);
  v140 = &v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A1299C(0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5A830(0);
  MEMORY[0x28223BE20](v26 - 8);
  v139 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v28 - 8);
  v141 = &v128 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_219BDF474();
  v142 = *(v170 - 1);
  MEMORY[0x28223BE20](v170);
  v138 = &v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_219BE0444();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v128 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A12934(0);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v128 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v128 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  v42 = v41;
  v43 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v45 = &v128 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = swift_projectBox();
  sub_218B5A2A4(v182, v40, sub_21898BBC4);
  v46 = (*(v43 + 48))(v40, 1, v42);
  v162 = v7;
  if (v46 == 1)
  {
    sub_218B58C44(v40, sub_21898BBC4);
    v47 = *MEMORY[0x277CEAD18];
    v48 = 0x8000000219CE8E70;
LABEL_14:
    v178 = v48;
    v79 = sub_219BF06B4();
    v80 = v163;
    sub_21934C4BC();

    sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v177 = v81;
    v82 = sub_219BDCD44();
    v83 = *(v82 - 8);
    v84 = *(v83 + 80);
    v85 = (v84 + 32) & ~v84;
    v176 = v85 + *(v83 + 72);
    v86 = swift_allocObject();
    v182 = xmmword_219C09BA0;
    *(v86 + 16) = xmmword_219C09BA0;
    v87 = *(v83 + 104);
    v87(v86 + v85, v47, v82);
    sub_2186F1034(&unk_280EE7F60, MEMORY[0x277D2F890], MEMORY[0x277D2F888]);
    v88 = v165;
    sub_219BDCCC4();

    (*(v164 + 8))(v80, v88);
    v89 = v166;
    sub_219BDBD54();
    sub_219BDBD44();
    (*(v171 + 8))(v89, v175);
    v90 = v167;
    sub_219BDFFA4();
    v173 = v84;
    v91 = swift_allocObject();
    *(v91 + 16) = v182;
    v174 = v83 + 104;
    v175 = v85;
    LODWORD(v180) = v47;
    v171 = v82;
    v87(v91 + v85, v47, v82);
    sub_2186F1034(&unk_280EE84F0, MEMORY[0x277D2E290], MEMORY[0x277D2E288]);
    v92 = v169;
    sub_219BDCCC4();

    (*(v168 + 8))(v90, v92);
    sub_218B5A30C(0);
    v94 = v93;
    sub_2186F1034(&qword_280EDE830, type metadata accessor for TagFeedModel, &unk_219C47BB4);
    result = sub_219BE75B4();
    if (result < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (result <= 0x7FFFFFFF)
    {
      v95 = v143;
      sub_219BDFCD4();
      v96 = swift_allocObject();
      *(v96 + 16) = v182;
      v169 = v94;
      v170 = v87;
      v87(v96 + v175, v180, v171);
      sub_2186F1034(&unk_280EE8590, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
      v97 = v145;
      sub_219BDCCC4();

      (*(v144 + 8))(v95, v97);
      v98 = sub_219BF0674();
      v99 = v146;
      sub_219BF6AC4();

      v100 = swift_allocObject();
      *(v100 + 16) = v182;
      v101 = v171;
      (v170)(v100 + v175, v180, v171);
      sub_2186F1034(&unk_280EE8850, MEMORY[0x277D2D950], MEMORY[0x277D2D948]);
      v102 = v148;
      sub_219BDCCC4();

      (*(v147 + 8))(v99, v102);
      v168 = *(v151 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_channelDataFactory);
      v103 = sub_219BF06B4();
      v104 = [v103 sourceChannel];

      v105 = v149;
      sub_219BE01F4();
      swift_unknownObjectRelease();
      v106 = swift_allocObject();
      *(v106 + 16) = v182;
      v107 = v175;
      v108 = v180;
      v109 = v170;
      (v170)(v106 + v175, v180, v101);
      sub_2186F1034(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
      v110 = v152;
      sub_219BDCCC4();

      (*(v150 + 8))(v105, v110);
      v111 = sub_219BF06B4();
      v112 = [v111 sourceChannel];

      v113 = v153;
      sub_219BE01E4();
      swift_unknownObjectRelease();
      v114 = swift_allocObject();
      *(v114 + 16) = v182;
      v109(v114 + v107, v108, v101);
      sub_2186F1034(&qword_280EE8270, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
      v115 = v155;
      sub_219BDCCC4();

      (*(v154 + 8))(v113, v115);
      v116 = v157;
      sub_219BDF894();
      v117 = swift_allocObject();
      *(v117 + 16) = v182;
      v109(v117 + v107, v180, v101);
      sub_2186F1034(&qword_280EE8640, MEMORY[0x277D2DE40], MEMORY[0x277D2DE38]);
      v118 = v159;
      sub_219BDCCC4();

      (*(v158 + 8))(v116, v118);
      sub_219BE0274();
      v119 = v160;
      sub_219BE75A4();
      sub_2186F1034(&unk_280EE8460, MEMORY[0x277D2E418], MEMORY[0x277D2E410]);
      sub_219BDCC64();
      v120 = *(v161 + 8);
      v121 = v162;
      v120(v119, v162);
      sub_219BE7574();
      sub_219BDCC74();
      return (v120)(v119, v121);
    }

    __break(1u);
    goto LABEL_21;
  }

  *&v182 = v43;
  (*(v43 + 32))(v45, v40, v42);
  sub_218B5A30C(0);
  sub_219BE7564();
  sub_21898BF70(0);
  (*(*(v49 - 8) + 56))(v37, 0, 1, v49);
  sub_2186F1034(&qword_280EDE830, type metadata accessor for TagFeedModel, &unk_219C47BB4);
  v50 = sub_219BE6A34();
  result = sub_218B58C44(v37, sub_218A12934);
  if (v50 < 0xFFFFFFFF80000000)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v50 <= 0x7FFFFFFF)
  {
    sub_219BE0434();
    sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v53 = v52;
    v54 = sub_219BDCD44();
    v55 = *(v54 - 8);
    v56 = *(v55 + 80);
    v57 = (v56 + 32) & ~v56;
    v132 = *(v55 + 72);
    v131 = v56;
    v135 = v53;
    v58 = swift_allocObject();
    v130 = xmmword_219C09BA0;
    *(v58 + 16) = xmmword_219C09BA0;
    v59 = *MEMORY[0x277CEAD18];
    v60 = *(v55 + 104);
    v133 = v57;
    LODWORD(v180) = v59;
    v136 = v54;
    v134 = v55 + 104;
    v129 = v60;
    v60(v58 + v57);
    sub_2186F1034(&unk_280EE8400, MEMORY[0x277D2E530], MEMORY[0x277D2E528]);
    v178 = 0x8000000219CE8E70;
    sub_219BDCCC4();

    (*(v32 + 8))(v34, v31);
    v137 = v45;
    sub_219BE6934();
    sub_21943EC40(v183, v25);

    v61 = type metadata accessor for TagFeedGroup(0);
    if ((*(*(v61 - 8) + 48))(v25, 1, v61) == 1)
    {
      sub_218B58C44(v25, sub_218A1299C);
      v62 = v177;
      v63 = v173;
    }

    else
    {
      v64 = v139;
      sub_2195A5C88(v139);
      sub_218B58C44(v25, type metadata accessor for TagFeedGroup);
      v65 = sub_219BF1904();
      v66 = *(v65 - 8);
      v67 = (*(v66 + 48))(v64, 1, v65);
      v63 = v173;
      if (v67 != 1)
      {
        sub_219BF0664();
        v68 = v141;
        sub_219BF17B4();

        (*(v66 + 8))(v64, v65);
        v122 = v142;
        v123 = v170;
        v124 = (*(v142 + 48))(v68, 1, v170);
        v62 = v177;
        v48 = v178;
        v69 = v176;
        if (v124 != 1)
        {
          v125 = v138;
          (*(v122 + 32))(v138, v68, v123);
          v126 = v133;
          v127 = swift_allocObject();
          *(v127 + 16) = v130;
          v129(v127 + v126, v180, v136);
          sub_2186F1034(&unk_280EE87B0, MEMORY[0x277D2DAB8], MEMORY[0x277D2DAB0]);
          sub_219BDCCC4();
          v62 = v177;

          (*(v122 + 8))(v125, v123);
LABEL_11:
          v70 = v174;
          swift_beginAccess();
          sub_218B5A2A4(v70, v63, sub_218B58D58);
          if ((*(v62 + 48))(v63, 1, v69) == 1)
          {
            (*(v182 + 8))(v137, v42);
            sub_218B58C44(v63, sub_218B58D58);
            v47 = v180;
          }

          else
          {
            v71 = v140;
            (*(v62 + 32))(v140, v63, v69);
            v72 = v133;
            v73 = swift_allocObject();
            *(v73 + 16) = v130;
            v74 = v73 + v72;
            v75 = v48;
            v76 = v69;
            v77 = v180;
            v129(v74, v180, v136);
            sub_2186F1034(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
            sub_219BDCCC4();

            v78 = v76;
            v48 = v75;
            (*(v62 + 8))(v71, v78);
            v47 = v77;
            (*(v182 + 8))(v137, v42);
          }

          goto LABEL_14;
        }

LABEL_10:
        sub_218B58C44(v68, sub_218B58F30);
        goto LABEL_11;
      }

      sub_218B58C44(v64, sub_218B5A830);
      v62 = v177;
    }

    v68 = v141;
    (*(v142 + 56))(v141, 1, 1, v170);
    v48 = v178;
    v69 = v176;
    goto LABEL_10;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_218B4A4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v106 = a6;
  v112 = a4;
  v125 = a3;
  v126 = a1;
  v104 = sub_219BDBD34();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v8 - 8);
  v105 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_219BDF4A4();
  v107 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v98 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v11 - 8);
  v101 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_219BE16D4();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v88 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A1299C(0);
  MEMORY[0x28223BE20](v14 - 8);
  v93 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5A830(0);
  MEMORY[0x28223BE20](v16 - 8);
  v87 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v18 - 8);
  v94 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_219BDF474();
  v100 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v86 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_219BE0444();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A12934(0);
  MEMORY[0x28223BE20](v22 - 8);
  v99 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v24 - 8);
  v111 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  v115 = *(v26 - 8);
  v116 = v26;
  MEMORY[0x28223BE20](v26);
  v114 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_219BDFCE4();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_219BF1DF4();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_219BDF674();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v85 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = swift_projectBox();
  sub_219BEDA84();
  sub_219BF1DB4();
  (*(v30 + 8))(v32, v29);
  v85 = a2;
  sub_219BEDAC4();
  sub_219BDF664();
  sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v38 = v37;
  v39 = sub_219BDCD44();
  v40 = *(v39 - 8);
  v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v122 = *(v40 + 72);
  v123 = v38;
  v42 = swift_allocObject();
  v119 = xmmword_219C09BA0;
  *(v42 + 16) = xmmword_219C09BA0;
  v43 = *(v40 + 104);
  v121 = *MEMORY[0x277CEAD18];
  v124 = v39;
  v120 = v43;
  v43(v42 + v41);
  sub_2186F1034(&unk_280EE86E0, MEMORY[0x277D2DC98], MEMORY[0x277D2DC90]);
  v117 = "feedDismissingManager";
  sub_219BDCCC4();

  (*(v34 + 8))(v36, v33);
  sub_218B5A30C(0);
  v45 = v44;
  sub_2186F1034(&qword_280EDE830, type metadata accessor for TagFeedModel, &unk_219C47BB4);
  v118 = v45;
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v47 = v108;
  sub_219BDFCD4();
  v48 = swift_allocObject();
  *(v48 + 16) = v119;
  v120(v48 + v41, v121, v124);
  sub_2186F1034(&unk_280EE8590, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  v49 = v110;
  sub_219BDCCC4();

  (*(v109 + 8))(v47, v49);
  v50 = v111;
  sub_218B5A2A4(v112, v111, sub_21898BBC4);
  v51 = v115;
  v52 = v116;
  if ((*(v115 + 48))(v50, 1, v116) == 1)
  {
    sub_218B58C44(v50, sub_21898BBC4);
    v53 = v113;
    goto LABEL_16;
  }

  (*(v51 + 32))(v114, v50, v52);
  v54 = v99;
  sub_219BE7564();
  sub_21898BF70(0);
  (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
  v56 = sub_219BE6A34();
  result = sub_218B58C44(v54, sub_218A12934);
  v53 = v113;
  if (v56 < 0xFFFFFFFF80000000)
  {
    goto LABEL_24;
  }

  if (v56 > 0x7FFFFFFF)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v57 = v89;
  sub_219BE0434();
  v58 = swift_allocObject();
  *(v58 + 16) = v119;
  v120(v58 + v41, v121, v124);
  sub_2186F1034(&unk_280EE8400, MEMORY[0x277D2E530], MEMORY[0x277D2E528]);
  v59 = v91;
  sub_219BDCCC4();

  (*(v90 + 8))(v57, v59);
  sub_219BE6934();
  v60 = v93;
  sub_21943EC40(v127, v93);

  v61 = type metadata accessor for TagFeedGroup(0);
  if ((*(*(v61 - 8) + 48))(v60, 1, v61) == 1)
  {
    sub_218B58C44(v60, sub_218A1299C);
    v62 = v96;
    v63 = v95;
LABEL_11:
    v68 = v94;
    (*(v100 + 56))(v94, 1, 1, v63);
    v69 = v97;
    v70 = v101;
LABEL_12:
    sub_218B58C44(v68, sub_218B58F30);
    goto LABEL_13;
  }

  v64 = v87;
  sub_2195A5C88(v87);
  sub_218B58C44(v60, type metadata accessor for TagFeedGroup);
  v65 = sub_219BF1904();
  v66 = *(v65 - 8);
  v67 = (*(v66 + 48))(v64, 1, v65);
  v62 = v96;
  v63 = v95;
  if (v67 == 1)
  {
    sub_218B58C44(v64, sub_218B5A830);
    goto LABEL_11;
  }

  sub_219BEDA94();
  v81 = v64;
  v68 = v94;
  sub_219BF17B4();
  v53 = v113;

  (*(v66 + 8))(v81, v65);
  v82 = v100;
  v83 = (*(v100 + 48))(v68, 1, v63);
  v69 = v97;
  v70 = v101;
  if (v83 == 1)
  {
    goto LABEL_12;
  }

  (*(v82 + 32))(v86, v68, v63);
  v84 = swift_allocObject();
  *(v84 + 16) = v119;
  v120(v84 + v41, v121, v124);
  sub_2186F1034(&unk_280EE87B0, MEMORY[0x277D2DAB8], MEMORY[0x277D2DAB0]);
  sub_219BDCCC4();
  v70 = v101;

  (*(v100 + 8))(v86, v63);
LABEL_13:
  v71 = v92;
  swift_beginAccess();
  sub_218B5A2A4(v71, v70, sub_218B58D58);
  if ((*(v62 + 48))(v70, 1, v69) == 1)
  {
    (*(v115 + 8))(v114, v116);
    sub_218B58C44(v70, sub_218B58D58);
  }

  else
  {
    v72 = v88;
    (*(v62 + 32))(v88, v70, v69);
    v73 = swift_allocObject();
    *(v73 + 16) = v119;
    v120(v73 + v41, v121, v124);
    sub_2186F1034(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    sub_219BDCCC4();

    (*(v62 + 8))(v72, v69);
    (*(v115 + 8))(v114, v116);
  }

LABEL_16:
  v74 = v107;
  v75 = v105;
  sub_218B5A2A4(v106, v105, sub_218B59134);
  if ((*(v74 + 48))(v75, 1, v53) == 1)
  {
    sub_218B58C44(v75, sub_218B59134);
  }

  else
  {
    v76 = v98;
    (*(v74 + 32))(v98, v75, v53);
    v77 = swift_allocObject();
    *(v77 + 16) = v119;
    v120(v77 + v41, v121, v124);
    sub_2186F1034(&unk_280EE8790, MEMORY[0x277D2DAD8], MEMORY[0x277D2DAD0]);
    sub_219BDCCC4();

    (*(v74 + 8))(v76, v53);
  }

  sub_219BE0A64();
  v78 = v102;
  sub_219BE75A4();
  sub_2186F1034(&qword_280EE8230, MEMORY[0x277D2EA20], MEMORY[0x277D2EA18]);
  sub_219BDCC64();
  v79 = *(v103 + 8);
  v80 = v104;
  v79(v78, v104);
  sub_219BE7574();
  sub_219BDCC74();
  return (v79)(v78, v80);
}

uint64_t sub_218B4B80C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v67 = a7;
  v62 = a6;
  v57 = a4;
  v56 = a3;
  v72 = a2;
  v75 = a1;
  v68 = sub_219BDBD34();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v65 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v8 - 8);
  v61 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDF4A4();
  v63 = *(v10 - 8);
  v64 = v10;
  MEMORY[0x28223BE20](v10);
  v54 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v12 - 8);
  v58 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE16D4();
  v59 = *(v14 - 8);
  v60 = v14;
  MEMORY[0x28223BE20](v14);
  v53 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_219BDF3E4();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_219BDFDE4();
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v50 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = swift_projectBox();
  sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v74 = v18;
  v19 = sub_219BDCD44();
  v20 = *(v19 - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  v73 = xmmword_219C09BA0;
  *(v23 + 16) = xmmword_219C09BA0;
  v24 = *MEMORY[0x277CEAD18];
  v25 = *(v20 + 104);
  v25(v23 + v22, v24, v19);
  sub_219BDEF94();
  sub_2186F1034(&qword_280EE8910, MEMORY[0x277D2D788], MEMORY[0x277D2D780]);
  sub_219BDCCC4();

  v71 = v21;
  v26 = swift_allocObject();
  *(v26 + 16) = v73;
  v70 = v24;
  v69 = v25;
  v25(v26 + v22, v24, v19);
  v27 = v19;
  sub_219BDF8A4();
  sub_2186F1034(&qword_280EE8640, MEMORY[0x277D2DE40], MEMORY[0x277D2DE38]);
  v72 = "feedDismissingManager";
  sub_219BDCCC4();

  if (sub_219BF0A34())
  {
    (*(v48 + 104))(v47, *MEMORY[0x277D2DA78], v49);
    v28 = v50;
    sub_219BDFDD4();
    v29 = swift_allocObject();
    *(v29 + 16) = v73;
    v69(v29 + v22, v70, v19);
    sub_2186F1034(&unk_27CC18730, MEMORY[0x277D2E148], MEMORY[0x277D2E140]);
    v30 = v52;
    sub_219BDCCC4();

    (*(v51 + 8))(v28, v30);
  }

  v31 = v55;
  swift_beginAccess();
  v32 = v31;
  v33 = v58;
  sub_218B5A2A4(v32, v58, sub_218B58D58);
  v35 = v59;
  v34 = v60;
  if ((*(v59 + 48))(v33, 1, v60) == 1)
  {
    sub_218B58C44(v33, sub_218B58D58);
  }

  else
  {
    v36 = v53;
    (*(v35 + 32))(v53, v33, v34);
    v37 = swift_allocObject();
    *(v37 + 16) = v73;
    v69(v37 + v22, v70, v27);
    sub_2186F1034(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    sub_219BDCCC4();

    (*(v35 + 8))(v36, v34);
  }

  v39 = v63;
  v38 = v64;
  v40 = v61;
  sub_218B5A2A4(v62, v61, sub_218B59134);
  if ((*(v39 + 48))(v40, 1, v38) == 1)
  {
    sub_218B58C44(v40, sub_218B59134);
  }

  else
  {
    v41 = v54;
    (*(v39 + 32))(v54, v40, v38);
    v42 = swift_allocObject();
    *(v42 + 16) = v73;
    v69(v42 + v22, v70, v27);
    sub_2186F1034(&unk_280EE8790, MEMORY[0x277D2DAD8], MEMORY[0x277D2DAD0]);
    sub_219BDCCC4();

    (*(v39 + 8))(v41, v38);
  }

  sub_219BE0494();
  sub_218B5A30C(0);
  v43 = v65;
  sub_219BE75A4();
  sub_2186F1034(&unk_280EE83E0, MEMORY[0x277D2E560], MEMORY[0x277D2E558]);
  sub_219BDCC64();
  v44 = *(v66 + 8);
  v45 = v68;
  v44(v43, v68);
  sub_219BE7574();
  sub_219BDCC74();
  return (v44)(v43, v45);
}

uint64_t sub_218B4C290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v109 = a5;
  v113 = a4;
  v121 = a3;
  v123 = a1;
  v7 = sub_219BDBD34();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v11 - 8);
  v110 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE16D4();
  v111 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v83 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_219BDF8A4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v105 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_219BE09E4();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_219BDF104();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v18 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_219BEF9C4();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_219BDFFE4();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_219BDEFE4();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BDFCE4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = swift_projectBox();
  sub_218B5A30C(0);
  v27 = v26;
  sub_2186F1034(&qword_280EDE830, type metadata accessor for TagFeedModel, &unk_219C47BB4);
  v106 = v27;
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v86 = v10;
  v87 = a2;
  v88 = v8;
  v89 = v7;
  sub_219BDFCD4();
  sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v30 = v29;
  v31 = sub_219BDCD44();
  v32 = *(v31 - 8);
  v84 = v18;
  v33 = v32;
  v34 = *(v32 + 72);
  v118 = *(v32 + 80);
  v119 = v34;
  v35 = (v118 + 32) & ~v118;
  v112 = v35;
  v36 = swift_allocObject();
  v124 = xmmword_219C09BA0;
  *(v36 + 16) = xmmword_219C09BA0;
  v122 = *MEMORY[0x277CEAD18];
  v117 = *(v33 + 104);
  v117(v36 + v35);
  v120 = "feedDismissingManager";
  sub_2186F1034(&unk_280EE8590, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  sub_219BDCCC4();

  (*(v23 + 8))(v25, v22);
  v37 = sub_219BF0B44();
  v38 = [v37 identifier];
  sub_219BF5414();

  [v37 isPaid];
  v39 = [v37 totalTime];
  sub_219BF5414();
  v85 = v13;

  v115 = v33 + 104;
  v116 = v31;
  v114 = v30;
  v40 = v90;
  sub_219BDEFB4();

  v41 = v112;
  v42 = swift_allocObject();
  *(v42 + 16) = v124;
  (v117)(v42 + v41, v122, v31);
  sub_2186F1034(&qword_280EE8900, MEMORY[0x277D2D798], MEMORY[0x277D2D790]);
  v43 = v92;
  sub_219BDCCC4();

  (*(v91 + 8))(v40, v43);
  v44 = sub_219BF0B44();
  v45 = v94;
  v46 = v93;
  v47 = v95;
  (*(v94 + 104))(v93, *MEMORY[0x277D32840], v95);
  v48 = v96;
  sub_219BE02B4();

  (*(v45 + 8))(v46, v47);
  v49 = v112;
  v50 = swift_allocObject();
  *(v50 + 16) = v124;
  v51 = v122;
  v52 = v117;
  (v117)(v50 + v49, v122, v116);
  sub_2186F1034(&unk_280EE84E0, MEMORY[0x277D2E2C0], MEMORY[0x277D2E2B8]);
  v53 = v98;
  sub_219BDCCC4();

  (*(v97 + 8))(v48, v53);
  v54 = sub_219BF0B44();
  v55 = [v54 sourceChannel];

  v56 = v84;
  sub_219BE01F4();
  swift_unknownObjectRelease();
  v57 = swift_allocObject();
  *(v57 + 16) = v124;
  v58 = v116;
  v52(v57 + v49, v51, v116);
  sub_2186F1034(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
  v59 = v100;
  sub_219BDCCC4();

  (*(v99 + 8))(v56, v59);
  v60 = sub_219BF0B44();
  v61 = [v60 sourceChannel];

  v62 = v102;
  sub_219BE01E4();
  swift_unknownObjectRelease();
  v63 = swift_allocObject();
  *(v63 + 16) = v124;
  v64 = v117;
  (v117)(v63 + v49, v122, v58);
  sub_2186F1034(&qword_280EE8270, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
  v65 = v104;
  sub_219BDCCC4();

  (*(v103 + 8))(v62, v65);
  v66 = v105;
  sub_219BDF894();
  v67 = swift_allocObject();
  *(v67 + 16) = v124;
  v68 = v116;
  v69 = v64;
  v70 = v85;
  (v69)(v67 + v49, v122);
  sub_2186F1034(&qword_280EE8640, MEMORY[0x277D2DE40], MEMORY[0x277D2DE38]);
  v71 = v108;
  sub_219BDCCC4();

  (*(v107 + 8))(v66, v71);
  v72 = v101;
  swift_beginAccess();
  v73 = v72;
  v74 = v110;
  sub_218B5A2A4(v73, v110, sub_218B58D58);
  v75 = v111;
  if ((*(v111 + 48))(v74, 1, v70) == 1)
  {
    sub_218B58C44(v74, sub_218B58D58);
  }

  else
  {
    v76 = v83;
    (*(v75 + 32))(v83, v74, v70);
    v77 = swift_allocObject();
    *(v77 + 16) = v124;
    (v117)(v77 + v49, v122, v68);
    sub_2186F1034(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    sub_219BDCCC4();

    (*(v75 + 8))(v76, v70);
  }

  v78 = v88;
  sub_219BE04C4();
  v79 = v86;
  sub_219BE75A4();
  sub_2186F1034(&unk_280EE83D0, MEMORY[0x277D2E570], MEMORY[0x277D2E568]);
  sub_219BDCC64();
  v80 = *(v78 + 8);
  v81 = v89;
  v80(v79, v89);
  sub_219BE7574();
  sub_219BDCC74();
  return (v80)(v79, v81);
}

uint64_t sub_218B4D274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v175 = a4;
  v176 = a3;
  v177 = a1;
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v6 - 8);
  v146 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_219BE16D4();
  v171 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v134 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_219BF1904();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v129 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF33A4();
  MEMORY[0x28223BE20](v10 - 8);
  v127 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v12 - 8);
  v128 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_219BDF474();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v119 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_219BE0444();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v124 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F64(0);
  MEMORY[0x28223BE20](v16 - 8);
  v136 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58CA4(0);
  v169 = v18;
  v168 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v164 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59810(0, &qword_280EE35D0, MEMORY[0x277D6EC60]);
  v167 = v20;
  v166 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v163 = &v118 - v21;
  sub_218B58F98(0);
  MEMORY[0x28223BE20](v22 - 8);
  v165 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58FCC(0);
  v172 = v24;
  v170 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v145 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_219BE09E4();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_219BDF104();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v137 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58FEC(0);
  MEMORY[0x28223BE20](v28 - 8);
  v160 = &v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_219BE0724();
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v135 = &v118 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_219BE1774();
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v120 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_219BEFBD4();
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v152 = &v118 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_219BDF1A4();
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v157 = &v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_219BDFCE4();
  v150 = *(v151 - 1);
  MEMORY[0x28223BE20](v151);
  v35 = &v118 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_219BE0D44();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v39 = &v118 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_219BDF0E4();
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = &v118 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = swift_projectBox();
  sub_219BF0F14();
  swift_getObjectType();
  sub_219BF67F4();
  swift_unknownObjectRelease();
  v179 = v40;
  v180 = sub_2186F1034(&qword_280EE88B0, MEMORY[0x277D2D8A8], MEMORY[0x277D2D8A0]);
  v44 = __swift_allocate_boxed_opaque_existential_1(&v178);
  (*(v41 + 16))(v44, v43, v40);
  swift_beginAccess();
  sub_2199D5C50(&v178, 0x44656C6369747241, 0xEB00000000617461);
  swift_endAccess();
  (*(v41 + 8))(v43, v40);
  v173 = a2;
  sub_219BF0F14();
  swift_getObjectType();
  sub_219BF6834();
  swift_unknownObjectRelease();
  v179 = v36;
  v148 = sub_2186F1034(&qword_280EE8190, MEMORY[0x277D2ECA0], MEMORY[0x277D2EC98]);
  v180 = v148;
  v45 = __swift_allocate_boxed_opaque_existential_1(&v178);
  v46 = v37 + 16;
  v149 = *(v37 + 16);
  v149(v45, v39, v36);
  swift_beginAccess();
  sub_2199D5C50(&v178, 0xD00000000000001ALL, 0x8000000219CE8EE0);
  swift_endAccess();
  v47 = *(v37 + 8);
  v156 = v36;
  v153 = v37 + 8;
  v47(v39, v36);
  sub_218B58D38(0);
  v49 = v48;
  v50 = sub_2186F1034(&qword_280E908F0, MEMORY[0x277D33320], MEMORY[0x277D33308]);
  v174 = v49;
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v123 = v50;
  sub_219BDFCD4();
  v52 = v151;
  v179 = v151;
  v180 = sub_2186F1034(&unk_280EE8590, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  v53 = __swift_allocate_boxed_opaque_existential_1(&v178);
  v54 = v150;
  (*(v150 + 16))(v53, v35, v52);
  swift_beginAccess();
  sub_2199D5C50(&v178, 0xD000000000000010, 0x8000000219CE8F00);
  swift_endAccess();
  (*(v54 + 8))(v35, v52);
  sub_219BF0F14();
  v55 = *MEMORY[0x277D329E0];
  v151 = v47;
  v56 = v154;
  v57 = *(v154 + 104);
  v143 = v46;
  v58 = v152;
  v150 = "s/TagFeed/TagFeedTracker.swift";
  v59 = v155;
  v57(v152, v55, v155);
  v60 = v157;
  sub_219BE02C4();
  swift_unknownObjectRelease();
  (*(v56 + 8))(v58, v59);
  v61 = v159;
  v179 = v159;
  v180 = sub_2186F1034(&unk_280EE8850, MEMORY[0x277D2D950], MEMORY[0x277D2D948]);
  v62 = __swift_allocate_boxed_opaque_existential_1(&v178);
  v63 = v158;
  (*(v158 + 16))(v62, v60, v61);
  swift_beginAccess();
  sub_2199D5C50(&v178, 0x4465636E65696353, 0xEB00000000617461);
  swift_endAccess();
  (*(v63 + 8))(v60, v61);
  sub_219BF0F14();
  swift_getObjectType();
  sub_219BF6834();
  swift_unknownObjectRelease();
  v64 = v156;
  v179 = v156;
  v180 = v148;
  v65 = __swift_allocate_boxed_opaque_existential_1(&v178);
  v149(v65, v39, v64);
  swift_beginAccess();
  sub_2199D5C50(&v178, 0xD00000000000001ALL, v150 | 0x8000000000000000);
  swift_endAccess();
  (v151)(v39, v64);
  v66 = [sub_219BF0F14() scoreProfile];
  swift_unknownObjectRelease();
  v67 = v172;
  v68 = v161;
  v69 = v160;
  if (v66)
  {
    if ([v66 hasShadowScores])
    {
      [v66 shadowTabiScore];
      [v66 shadowAgedPersonalizationScore];
      v70 = v120;
      sub_219BE1764();
      v71 = v122;
      v179 = v122;
      v180 = sub_2186F1034(&unk_280EE7F40, MEMORY[0x277D2F8F0], MEMORY[0x277D2F8E8]);
      v72 = __swift_allocate_boxed_opaque_existential_1(&v178);
      v73 = v121;
      (*(v121 + 16))(v72, v70, v71);
      swift_beginAccess();
      sub_2199D5C50(&v178, 0x74614465726F6353, 0xE900000000000061);
      swift_endAccess();

      v74 = v71;
      v67 = v172;
      (*(v73 + 8))(v70, v74);
    }

    else
    {
    }
  }

  sub_219BF0F14();
  swift_getObjectType();
  sub_219BF6824();
  swift_unknownObjectRelease();
  v75 = v162;
  if ((*(v68 + 48))(v69, 1, v162) == 1)
  {
    sub_218B58C44(v69, sub_218B58FEC);
  }

  else
  {
    v76 = v135;
    (*(v68 + 32))(v135, v69, v75);
    v179 = v75;
    v180 = sub_2186F1034(&unk_27CC0DC50, MEMORY[0x277D2E738], MEMORY[0x277D2E730]);
    v77 = __swift_allocate_boxed_opaque_existential_1(&v178);
    (*(v68 + 16))(v77, v76, v75);
    swift_beginAccess();
    sub_2199D5C50(&v178, 0xD000000000000014, 0x8000000219CE8F60);
    swift_endAccess();
    (*(v68 + 8))(v76, v75);
  }

  v78 = [sub_219BF0F14() sourceChannel];
  swift_unknownObjectRelease();
  if (v78)
  {
    v79 = v137;
    sub_219BE01F4();
    v80 = v139;
    v179 = v139;
    v180 = sub_2186F1034(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
    v81 = __swift_allocate_boxed_opaque_existential_1(&v178);
    v82 = v138;
    (*(v138 + 16))(v81, v79, v80);
    swift_beginAccess();
    sub_2199D5C50(&v178, 0x446C656E6E616843, 0xEB00000000617461);
    swift_endAccess();
    (*(v82 + 8))(v79, v80);
    v83 = v140;
    sub_219BE01E4();
    v84 = v142;
    v179 = v142;
    v180 = sub_2186F1034(&qword_280EE8270, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
    v85 = __swift_allocate_boxed_opaque_existential_1(&v178);
    v86 = v141;
    (*(v141 + 16))(v85, v83, v84);
    swift_beginAccess();
    sub_2199D5C50(&v178, 0xD000000000000016, 0x8000000219CE8F40);
    swift_endAccess();
    swift_unknownObjectRelease();
    (*(v86 + 8))(v83, v84);
  }

  v87 = v163;
  sub_219BE7594();
  v88 = v164;
  sub_219BE7564();
  v89 = v169;
  sub_219BE5F84();
  v90 = v168;
  (*(v168 + 8))(v88, v89);
  v91 = v165;
  v92 = v167;
  sub_219BEB244();

  v93 = v92;
  v94 = v91;
  (*(v166 + 8))(v87, v93);
  v95 = v170;
  v96 = v91;
  v97 = v67;
  if ((*(v170 + 48))(v96, 1, v67) != 1)
  {
    (*(v95 + 32))(v145, v94, v67);
    v102 = v136;
    sub_219BE7564();
    (*(v90 + 56))(v102, 0, 1, v89);
    v103 = sub_219BE6A34();
    result = sub_218B58C44(v102, sub_218B58F64);
    v99 = v171;
    if (v103 >= 0xFFFFFFFF80000000)
    {
      if (v103 <= 0x7FFFFFFF)
      {
        v104 = v124;
        sub_219BE0434();
        v105 = v126;
        v179 = v126;
        v180 = sub_2186F1034(&unk_280EE8400, MEMORY[0x277D2E530], MEMORY[0x277D2E528]);
        v106 = __swift_allocate_boxed_opaque_existential_1(&v178);
        v107 = v125;
        (*(v125 + 16))(v106, v104, v105);
        swift_beginAccess();
        sub_2199D5C50(&v178, 0xD000000000000013, 0x8000000219CE8F20);
        swift_endAccess();
        v108 = v145;
        (*(v107 + 8))(v104, v105);
        v109 = v127;
        sub_219BE6934();
        v110 = v129;
        sub_219BF3394();
        sub_218B58C44(v109, MEMORY[0x277D33DA8]);
        sub_219BF0E44();
        v111 = v128;
        sub_219BF17B4();

        (*(v130 + 8))(v110, v131);
        v112 = v132;
        v113 = v133;
        if ((*(v132 + 48))(v111, 1, v133) == 1)
        {
          (*(v95 + 8))(v108, v97);
          sub_218B58C44(v111, sub_218B58F30);
        }

        else
        {
          v114 = v119;
          (*(v112 + 32))(v119, v111, v113);
          v179 = v113;
          v180 = sub_2186F1034(&unk_280EE87B0, MEMORY[0x277D2DAB8], MEMORY[0x277D2DAB0]);
          v115 = __swift_allocate_boxed_opaque_existential_1(&v178);
          (*(v112 + 16))(v115, v114, v113);
          swift_beginAccess();
          sub_2199D5C50(&v178, 0x7261696C69787541, 0xED00006174614479);
          swift_endAccess();
          (*(v112 + 8))(v114, v113);
          (*(v95 + 8))(v108, v97);
        }

        v98 = v147;
        v100 = v146;
        v101 = v144;
        goto LABEL_20;
      }

LABEL_26:
      __break(1u);
      return result;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_218B58C44(v94, sub_218B58F98);
  v98 = v147;
  v99 = v171;
  v100 = v146;
  v101 = v144;
LABEL_20:
  swift_beginAccess();
  sub_218B5A2A4(v101, v100, sub_218B58D58);
  if ((*(v99 + 48))(v100, 1, v98) == 1)
  {
    return sub_218B58C44(v100, sub_218B58D58);
  }

  v116 = v134;
  (*(v99 + 32))(v134, v100, v98);
  v179 = v98;
  v180 = sub_2186F1034(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
  v117 = __swift_allocate_boxed_opaque_existential_1(&v178);
  (*(v99 + 16))(v117, v116, v98);
  swift_beginAccess();
  sub_2199D5C50(&v178, 0x74614470756F7247, 0xE900000000000061);
  swift_endAccess();
  return (*(v99 + 8))(v116, v98);
}

uint64_t sub_218B4EDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v153 = a6;
  v146 = a4;
  v179 = a3;
  v180 = a1;
  v159 = sub_219BDBD34();
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v157 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_219BDF8A4();
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v154 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v9 - 8);
  v150 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_219BE16D4();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v129 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_219BE09E4();
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v147 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_219BDF104();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v143 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_219BDF1A4();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_219BDFCE4();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v137 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_219BDBD64();
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v163 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BDFFB4();
  v167 = *(v17 - 8);
  v168 = v17;
  MEMORY[0x28223BE20](v17);
  v166 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_219BE1714();
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v160 = &v125 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BF1904();
  v171 = *(v20 - 8);
  v172 = v20;
  MEMORY[0x28223BE20](v20);
  v134 = &v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BF33A4();
  MEMORY[0x28223BE20](v22 - 8);
  v133 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v24 - 8);
  v135 = &v125 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_219BDF474();
  v173 = *(v26 - 8);
  v174 = v26;
  MEMORY[0x28223BE20](v26);
  v128 = &v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_219BE0444();
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v130 = &v125 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F64(0);
  MEMORY[0x28223BE20](v29 - 8);
  v178 = (&v125 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218B58CA4(0);
  v32 = v31;
  *&v182 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v125 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59810(0, &qword_280EE35D0, MEMORY[0x277D6EC60]);
  v36 = v35;
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v39 = &v125 - v38;
  sub_218B58F98(0);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v125 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58FCC(0);
  v44 = v43;
  v181 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v176 = &v125 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = swift_projectBox();
  sub_218B58D38(0);
  v47 = v46;
  sub_219BE7594();
  v170 = a2;
  sub_219BE7564();
  sub_219BE5F84();
  (*(v182 + 8))(v34, v32);
  sub_219BEB244();

  v48 = v181;
  (*(v37 + 8))(v39, v36);
  v49 = (*(v48 + 48))(v42, 1, v44);
  v169 = v47;
  if (v49 == 1)
  {
    sub_218B58C44(v42, sub_218B58F98);
    v50 = *MEMORY[0x277CEAD18];
    v51 = 0x8000000219CE8E70;
  }

  else
  {
    v52 = v176;
    (*(v48 + 32))(v176, v42, v44);
    v53 = v178;
    sub_219BE7564();
    (*(v182 + 56))(v53, 0, 1, v32);
    sub_2186F1034(&qword_280E908F0, MEMORY[0x277D33320], MEMORY[0x277D33308]);
    v54 = sub_219BE6A34();
    result = sub_218B58C44(v53, sub_218B58F64);
    if (v54 < 0xFFFFFFFF80000000)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v54 > 0x7FFFFFFF)
    {
LABEL_17:
      __break(1u);
      return result;
    }

    v56 = v130;
    sub_219BE0434();
    sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v58 = v57;
    v59 = sub_219BDCD44();
    v60 = *(v59 - 8);
    v61 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v178 = *(v60 + 72);
    *&v182 = v58;
    v62 = swift_allocObject();
    v127 = xmmword_219C09BA0;
    *(v62 + 16) = xmmword_219C09BA0;
    v63 = *(v60 + 104);
    v175 = *MEMORY[0x277CEAD18];
    v126 = v63;
    v63(v62 + v61);
    sub_2186F1034(&unk_280EE8400, MEMORY[0x277D2E530], MEMORY[0x277D2E528]);
    v177 = 0x8000000219CE8E70;
    v64 = v132;
    sub_219BDCCC4();

    (*(v131 + 8))(v56, v64);
    v65 = v133;
    sub_219BE6934();
    v66 = v44;
    v67 = v134;
    sub_219BF3394();
    sub_218B58C44(v65, MEMORY[0x277D33DA8]);
    sub_219BF0664();
    v68 = v135;
    sub_219BF17B4();

    (*(v171 + 8))(v67, v172);
    v70 = v173;
    v69 = v174;
    if ((*(v173 + 48))(v68, 1, v174) == 1)
    {
      (*(v181 + 8))(v52, v66);
      sub_218B58C44(v68, sub_218B58F30);
      v51 = v177;
      v50 = v175;
    }

    else
    {
      v71 = v68;
      v72 = v128;
      (*(v70 + 32))(v128, v71, v69);
      v73 = swift_allocObject();
      *(v73 + 16) = v127;
      v50 = v175;
      v126(v73 + v61, v175, v59);
      sub_2186F1034(&unk_280EE87B0, MEMORY[0x277D2DAB8], MEMORY[0x277D2DAB0]);
      v74 = v52;
      v75 = v66;
      v51 = v177;
      sub_219BDCCC4();

      (*(v70 + 8))(v72, v69);
      (*(v181 + 8))(v74, v75);
    }
  }

  v177 = v51;
  v76 = sub_219BF06B4();
  v77 = v160;
  sub_21934C4BC();

  sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v181 = v78;
  v79 = sub_219BDCD44();
  v80 = *(v79 - 8);
  v81 = *(v80 + 80);
  v82 = (v81 + 32) & ~v81;
  v176 = (v82 + *(v80 + 72));
  v83 = swift_allocObject();
  v182 = xmmword_219C09BA0;
  *(v83 + 16) = xmmword_219C09BA0;
  v178 = *(v80 + 104);
  v178(v83 + v82, v50, v79);
  sub_2186F1034(&unk_280EE7F60, MEMORY[0x277D2F890], MEMORY[0x277D2F888]);
  v84 = v50;
  v85 = v162;
  sub_219BDCCC4();

  (*(v161 + 8))(v77, v85);
  v86 = v163;
  sub_219BDBD54();
  sub_219BDBD44();
  (*(v164 + 8))(v86, v165);
  v87 = v166;
  sub_219BDFFA4();
  v174 = v81;
  v88 = v178;
  v89 = swift_allocObject();
  *(v89 + 16) = v182;
  v172 = v82;
  v173 = v80 + 104;
  v175 = v84;
  v88(v89 + v82, v84, v79);
  sub_2186F1034(&unk_280EE84F0, MEMORY[0x277D2E290], MEMORY[0x277D2E288]);
  v90 = v168;
  sub_219BDCCC4();

  (*(v167 + 8))(v87, v90);
  sub_2186F1034(&qword_280E908F0, MEMORY[0x277D33320], MEMORY[0x277D33308]);
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v91 = v137;
  sub_219BDFCD4();
  v92 = v79;
  v171 = v79;
  v93 = v172;
  v94 = swift_allocObject();
  *(v94 + 16) = v182;
  v95 = v175;
  v88(v94 + v93, v175, v92);
  sub_2186F1034(&unk_280EE8590, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  v96 = v139;
  sub_219BDCCC4();

  (*(v138 + 8))(v91, v96);
  v97 = sub_219BF0674();
  v98 = v140;
  sub_219BF6AC4();

  v99 = swift_allocObject();
  *(v99 + 16) = v182;
  v88(v99 + v93, v95, v171);
  sub_2186F1034(&unk_280EE8850, MEMORY[0x277D2D950], MEMORY[0x277D2D948]);
  v100 = v142;
  sub_219BDCCC4();

  (*(v141 + 8))(v98, v100);
  v168 = *(v146 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_channelDataFactory);
  v101 = sub_219BF06B4();
  v102 = [v101 sourceChannel];

  v103 = v143;
  sub_219BE01F4();
  swift_unknownObjectRelease();
  v104 = swift_allocObject();
  *(v104 + 16) = v182;
  v106 = v171;
  v105 = v172;
  v178(v104 + v172, v95, v171);
  sub_2186F1034(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
  v107 = v145;
  sub_219BDCCC4();

  (*(v144 + 8))(v103, v107);
  v108 = sub_219BF06B4();
  v109 = [v108 sourceChannel];

  v110 = v147;
  sub_219BE01E4();
  swift_unknownObjectRelease();
  v111 = swift_allocObject();
  *(v111 + 16) = v182;
  v178(v111 + v105, v95, v106);
  sub_2186F1034(&qword_280EE8270, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
  v112 = v149;
  sub_219BDCCC4();

  (*(v148 + 8))(v110, v112);
  v113 = v136;
  swift_beginAccess();
  v114 = v150;
  sub_218B5A2A4(v113, v150, sub_218B58D58);
  v115 = v151;
  v116 = v152;
  if ((*(v151 + 48))(v114, 1, v152) == 1)
  {
    sub_218B58C44(v114, sub_218B58D58);
  }

  else
  {
    v117 = v129;
    (*(v115 + 32))(v129, v114, v116);
    v118 = swift_allocObject();
    *(v118 + 16) = v182;
    v178(v118 + v172, v175, v171);
    sub_2186F1034(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    sub_219BDCCC4();

    (*(v115 + 8))(v117, v116);
  }

  v119 = v154;
  sub_219BDF894();
  v120 = swift_allocObject();
  *(v120 + 16) = v182;
  v178(v120 + v172, v175, v171);
  sub_2186F1034(&qword_280EE8640, MEMORY[0x277D2DE40], MEMORY[0x277D2DE38]);
  v121 = v156;
  sub_219BDCCC4();

  (*(v155 + 8))(v119, v121);
  sub_219BE0274();
  v122 = v157;
  sub_219BE75A4();
  sub_2186F1034(&unk_280EE8460, MEMORY[0x277D2E418], MEMORY[0x277D2E410]);
  sub_219BDCC64();
  v123 = *(v158 + 8);
  v124 = v159;
  v123(v122, v159);
  sub_219BE7574();
  sub_219BDCC74();
  return (v123)(v122, v124);
}

uint64_t sub_218B50868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v105 = a4;
  v141 = a3;
  v145 = a1;
  v111 = sub_219BDBD34();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v7 - 8);
  v106 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_219BE16D4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v98 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v10 - 8);
  v102 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_219BDF4A4();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v97 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_219BF1904();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v123 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BF33A4();
  MEMORY[0x28223BE20](v14 - 8);
  v121 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v16 - 8);
  v122 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_219BDF474();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v96 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_219BDF1E4();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v118 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_219BDFCE4();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v115 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_219BE1444();
  v129 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v128 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58CA4(0);
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v26 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59810(0, &qword_280EE35D0, MEMORY[0x277D6EC60]);
  v28 = v27;
  v143 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v94 - v29;
  sub_218B58F98(0);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v94 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58FCC(0);
  v35 = v34;
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v144 = &v94 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = swift_projectBox();
  sub_218B58D38(0);
  v39 = v38;
  sub_219BE7594();
  v139 = a2;
  v140 = v39;
  sub_219BE7564();
  sub_219BE5F84();
  v40 = *(v24 + 8);
  v130 = v26;
  v114 = v23;
  v41 = v24 + 8;
  v42 = v28;
  v43 = v143;
  v113 = v41;
  v112 = v40;
  v40(v26, v23);
  sub_219BEB244();

  v44 = *(v43 + 8);
  v44(v30, v42);
  if ((*(v36 + 48))(v33, 1, v35) == 1)
  {
    return sub_218B58C44(v33, sub_218B58F98);
  }

  v94 = v44;
  v95 = v36;
  v46 = *(v36 + 32);
  v100 = v35;
  v46(v144, v33, v35);
  v47 = [sub_219BF0404() identifier];
  swift_unknownObjectRelease();
  sub_219BF5414();

  v48 = v128;
  sub_219BE1424();
  sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v50 = v49;
  v51 = sub_219BDCD44();
  v52 = *(v51 - 8);
  v53 = *(v52 + 72);
  v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v132 = *(v52 + 80);
  v134 = v50;
  v137 = v54 + v53;
  v55 = swift_allocObject();
  v142 = xmmword_219C09BA0;
  *(v55 + 16) = xmmword_219C09BA0;
  v56 = *MEMORY[0x277CEAD18];
  v58 = *(v52 + 104);
  v57 = v52 + 104;
  v133 = v54;
  LODWORD(v143) = v56;
  v135 = v51;
  v136 = v58;
  v58(v55 + v54);
  sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
  v138 = "feedDismissingManager";
  v59 = v131;
  sub_219BDCCC4();

  (*(v129 + 8))(v48, v59);
  sub_219BE7594();
  v60 = v130;
  sub_219BE7564();
  sub_2186F1034(&qword_280E908F0, MEMORY[0x277D33320], MEMORY[0x277D33308]);
  result = sub_219BEB304();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v61 = v60;
  v62 = v115;
  sub_219BDFCD4();
  v112(v61, v114);
  v94(v30, v42);
  v63 = swift_allocObject();
  *(v63 + 16) = v142;
  v99 = v57;
  v64 = v133;
  v65 = v135;
  v136(v63 + v133, v143, v135);
  sub_2186F1034(&unk_280EE8590, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  v66 = v117;
  sub_219BDCCC4();

  (*(v116 + 8))(v62, v66);
  sub_219BE6944();
  v67 = v118;
  sub_219BDF1C4();
  v68 = swift_allocObject();
  *(v68 + 16) = v142;
  v69 = v65;
  v70 = v136;
  v136(v68 + v64, v143, v69);
  sub_2186F1034(&unk_280EE8840, MEMORY[0x277D2D970], MEMORY[0x277D2D968]);
  v71 = v120;
  sub_219BDCCC4();

  (*(v119 + 8))(v67, v71);
  v72 = v121;
  sub_219BE6934();
  v73 = v123;
  sub_219BF3394();
  sub_218B58C44(v72, MEMORY[0x277D33DA8]);
  sub_219BF03E4();
  v74 = v122;
  sub_219BF17B4();

  (*(v124 + 8))(v73, v125);
  v75 = v126;
  v76 = v127;
  if ((*(v126 + 48))(v74, 1, v127) == 1)
  {
    sub_218B58C44(v74, sub_218B58F30);
  }

  else
  {
    v84 = v96;
    (*(v75 + 32))(v96, v74, v76);
    v85 = swift_allocObject();
    *(v85 + 16) = v142;
    v70(v85 + v133, v143, v135);
    sub_2186F1034(&unk_280EE87B0, MEMORY[0x277D2DAB8], MEMORY[0x277D2DAB0]);
    sub_219BDCCC4();

    (*(v75 + 8))(v84, v76);
  }

  v77 = v110;
  v78 = v109;
  v79 = v108;
  v80 = v107;
  v81 = v104;
  v82 = v103;
  v83 = v102;
  sub_218B5A2A4(v105, v102, sub_218B59134);
  if ((*(v82 + 48))(v83, 1, v81) == 1)
  {
    sub_218B58C44(v83, sub_218B59134);
  }

  else
  {
    v86 = v97;
    (*(v82 + 32))(v97, v83, v81);
    v87 = swift_allocObject();
    *(v87 + 16) = v142;
    v136(v87 + v133, v143, v135);
    sub_2186F1034(&unk_280EE8790, MEMORY[0x277D2DAD8], MEMORY[0x277D2DAD0]);
    sub_219BDCCC4();

    (*(v82 + 8))(v86, v81);
  }

  v88 = v106;
  v89 = v101;
  swift_beginAccess();
  sub_218B5A2A4(v89, v88, sub_218B58D58);
  if ((*(v80 + 48))(v88, 1, v79) == 1)
  {
    sub_218B58C44(v88, sub_218B58D58);
  }

  else
  {
    v90 = v98;
    (*(v80 + 32))(v98, v88, v79);
    v91 = swift_allocObject();
    *(v91 + 16) = v142;
    v136(v91 + v133, v143, v135);
    sub_2186F1034(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    sub_219BDCCC4();

    (*(v80 + 8))(v90, v79);
  }

  v92 = v111;
  sub_219BDFEC4();
  sub_219BE75A4();
  sub_2186F1034(&unk_280EE8520, MEMORY[0x277D2E1D0], MEMORY[0x277D2E1C8]);
  sub_219BDCC64();
  v93 = *(v77 + 8);
  v93(v78, v92);
  sub_219BE7574();
  sub_219BDCC74();
  v93(v78, v92);
  return (*(v95 + 8))(v144, v100);
}

uint64_t sub_218B51C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v135 = a4;
  v161 = a1;
  v139 = sub_219BDBD34();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v132 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v8 - 8);
  v131 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_219BE16D4();
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v122 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v11 - 8);
  v133 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_219BDF4A4();
  v134 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v121 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_219BF1904();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v115 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF33A4();
  MEMORY[0x28223BE20](v15 - 8);
  v113 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v17 - 8);
  v114 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_219BDF474();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v109 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_219BE0444();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F64(0);
  MEMORY[0x28223BE20](v21 - 8);
  v123 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58CA4(0);
  v146 = *(v23 - 8);
  v147 = v23;
  MEMORY[0x28223BE20](v23);
  v142 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59810(0, &qword_280EE35D0, MEMORY[0x277D6EC60]);
  v145 = v25;
  v144 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v141 = &v108 - v26;
  sub_218B58F98(0);
  MEMORY[0x28223BE20](v27 - 8);
  v143 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58FCC(0);
  v148 = v29;
  v150 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v124 = &v108 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_219BDFCE4();
  v31 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v33 = &v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_219BDB954();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v108 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_219BDF464();
  v129 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v40 = &v108 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = swift_projectBox();
  v120 = a2;
  sub_219BF1044();
  sub_219BDB804();
  (*(v35 + 8))(v37, v34);
  v41 = a3;
  sub_219BDF454();
  sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v43 = v42;
  v44 = sub_219BDCD44();
  v45 = *(v44 - 8);
  v46 = *(v45 + 72);
  v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v158 = *(v45 + 80);
  v159 = v46;
  v48 = swift_allocObject();
  v156 = xmmword_219C09BA0;
  *(v48 + 16) = xmmword_219C09BA0;
  v49 = *MEMORY[0x277CEAD18];
  v50 = *(v45 + 104);
  v153 = v47;
  v154 = v44;
  v51 = v48 + v47;
  v52 = v49;
  v160 = v45 + 104;
  v157 = v50;
  v50(v51, v49, v44);
  sub_2186F1034(&qword_280EE87C0, MEMORY[0x277D2DAA8], MEMORY[0x277D2DAA0]);
  v155 = "feedDismissingManager";
  v128 = v40;
  v130 = v38;
  sub_219BDCCC4();

  sub_218B58D38(0);
  v54 = v53;
  sub_2186F1034(&qword_280E908F0, MEMORY[0x277D33320], MEMORY[0x277D33308]);
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_219BDFCD4();
  v56 = v153;
  v152 = v43;
  v57 = swift_allocObject();
  v58 = v41;
  *(v57 + 16) = v156;
  v151 = v52;
  v157(v57 + v56, v52, v154);
  sub_2186F1034(&unk_280EE8590, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  v59 = v140;
  sub_219BDCCC4();

  (*(v31 + 8))(v33, v59);
  v60 = v141;
  sub_219BE7594();
  v61 = v142;
  sub_219BE7564();
  v62 = v147;
  sub_219BE5F84();
  v63 = v146;
  (*(v146 + 8))(v61, v62);
  v64 = v143;
  v65 = v145;
  sub_219BEB244();
  v66 = v64;

  (*(v144 + 8))(v60, v65);
  v67 = v150;
  v68 = v64;
  v69 = v148;
  v70 = (*(v150 + 48))(v68, 1, v148);
  v126 = v54;
  v125 = v58;
  if (v70 != 1)
  {
    v79 = *(v67 + 32);
    v80 = v124;
    v79(v124, v66, v69);
    v81 = v123;
    sub_219BE7564();
    (*(v63 + 56))(v81, 0, 1, v62);
    v82 = v80;
    v83 = sub_219BE6A34();
    result = sub_218B58C44(v81, sub_218B58F64);
    v76 = v149;
    if (v83 >= 0xFFFFFFFF80000000)
    {
      if (v83 <= 0x7FFFFFFF)
      {
        v84 = v110;
        sub_219BE0434();
        v85 = v153;
        v86 = swift_allocObject();
        *(v86 + 16) = v156;
        v87 = v154;
        v157(v86 + v85, v151, v154);
        sub_2186F1034(&unk_280EE8400, MEMORY[0x277D2E530], MEMORY[0x277D2E528]);
        v88 = v112;
        sub_219BDCCC4();

        (*(v111 + 8))(v84, v88);
        v89 = v113;
        sub_219BE6934();
        v90 = v115;
        sub_219BF3394();
        sub_218B58C44(v89, MEMORY[0x277D33DA8]);
        sub_219BF1004();
        v91 = v69;
        v92 = v114;
        sub_219BF17B4();

        (*(v116 + 8))(v90, v117);
        v93 = v87;
        v94 = v118;
        v95 = v119;
        if ((*(v118 + 48))(v92, 1, v119) == 1)
        {
          (*(v150 + 8))(v82, v91);
          sub_218B58C44(v92, sub_218B58F30);
        }

        else
        {
          v96 = v109;
          (*(v94 + 32))(v109, v92, v95);
          v97 = swift_allocObject();
          *(v97 + 16) = v156;
          v157(v97 + v85, v151, v93);
          sub_2186F1034(&unk_280EE87B0, MEMORY[0x277D2DAB8], MEMORY[0x277D2DAB0]);
          sub_219BDCCC4();

          (*(v94 + 8))(v96, v95);
          (*(v150 + 8))(v124, v91);
        }

        v71 = v139;
        v72 = v138;
        v75 = v135;
        v77 = v134;
        v78 = v133;
        v74 = v136;
        v73 = v137;
        goto LABEL_11;
      }

LABEL_21:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_218B58C44(v66, sub_218B58F98);
  v71 = v139;
  v72 = v138;
  v73 = v137;
  v74 = v136;
  v75 = v135;
  v76 = v149;
  v77 = v134;
  v78 = v133;
LABEL_11:
  sub_218B5A2A4(v75, v78, sub_218B59134);
  if ((*(v77 + 48))(v78, 1, v76) == 1)
  {
    sub_218B58C44(v78, sub_218B59134);
  }

  else
  {
    v98 = v121;
    (*(v77 + 32))(v121, v78, v76);
    v99 = v153;
    v100 = swift_allocObject();
    *(v100 + 16) = v156;
    v157(v100 + v99, v151, v154);
    sub_2186F1034(&unk_280EE8790, MEMORY[0x277D2DAD8], MEMORY[0x277D2DAD0]);
    sub_219BDCCC4();

    (*(v77 + 8))(v98, v76);
  }

  v101 = v131;
  v102 = v127;
  swift_beginAccess();
  sub_218B5A2A4(v102, v101, sub_218B58D58);
  if ((*(v74 + 48))(v101, 1, v73) == 1)
  {
    sub_218B58C44(v101, sub_218B58D58);
  }

  else
  {
    v103 = v122;
    (*(v74 + 32))(v122, v101, v73);
    v104 = v153;
    v105 = swift_allocObject();
    *(v105 + 16) = v156;
    v157(v105 + v104, v151, v154);
    sub_2186F1034(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    sub_219BDCCC4();

    (*(v74 + 8))(v103, v73);
  }

  sub_219BE08D4();
  v106 = v132;
  sub_219BE75A4();
  sub_2186F1034(&qword_280EE82B0, MEMORY[0x277D2E8B8], MEMORY[0x277D2E8B0]);
  sub_219BDCC64();
  v107 = *(v72 + 8);
  v107(v106, v71);
  sub_219BE7574();
  sub_219BDCC74();
  v107(v106, v71);
  return (*(v129 + 8))(v128, v130);
}

uint64_t sub_218B530AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v122 = a4;
  v141 = a3;
  v150 = a1;
  v124 = sub_219BDBD34();
  v119 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v118 = v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v7 - 8);
  v117 = v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_219BE16D4();
  v123 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v113 = v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v10 - 8);
  v120 = v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_219BDF4A4();
  v121 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v112 = v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_219BF1904();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BF33A4();
  MEMORY[0x28223BE20](v14 - 8);
  v104 = v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v16 - 8);
  v105 = v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_219BDF474();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v100[0] = v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_219BE0444();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F64(0);
  MEMORY[0x28223BE20](v20 - 8);
  v114 = v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58CA4(0);
  v134 = v22;
  v133 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v129 = v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59810(0, &qword_280EE35D0, MEMORY[0x277D6EC60]);
  v132 = v24;
  v131 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v128 = v100 - v25;
  sub_218B58F98(0);
  MEMORY[0x28223BE20](v26 - 8);
  v130 = v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58FCC(0);
  v135 = v28;
  v140 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v115 = v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_219BDFCE4();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_219BF1DF4();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_219BDF674();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = v100 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = swift_projectBox();
  sub_219BEDA84();
  sub_219BF1DB4();
  (*(v32 + 8))(v34, v31);
  v111 = a2;
  sub_219BEDAC4();
  sub_219BDF664();
  sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v40 = v39;
  v41 = sub_219BDCD44();
  v42 = *(v41 - 8);
  v43 = *(v42 + 72);
  v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v146 = *(v42 + 80);
  v147 = v43;
  v148 = v40;
  v45 = swift_allocObject();
  v143 = xmmword_219C09BA0;
  *(v45 + 16) = xmmword_219C09BA0;
  v47 = *(v42 + 104);
  v46 = v42 + 104;
  v145 = *MEMORY[0x277CEAD18];
  v149 = v41;
  v144 = v47;
  v47(v45 + v44);
  sub_2186F1034(&unk_280EE86E0, MEMORY[0x277D2DC98], MEMORY[0x277D2DC90]);
  v142 = "feedDismissingManager";
  sub_219BDCCC4();

  (*(v36 + 8))(v38, v35);
  sub_218B58D38(0);
  v49 = v48;
  v50 = sub_2186F1034(&qword_280E908F0, MEMORY[0x277D33320], MEMORY[0x277D33308]);
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v100[1] = v50;
  v52 = v125;
  sub_219BDFCD4();
  v53 = swift_allocObject();
  *(v53 + 16) = v143;
  v137 = v46;
  v138 = v44;
  v144(v53 + v44, v145, v149);
  sub_2186F1034(&unk_280EE8590, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  v54 = v127;
  sub_219BDCCC4();

  (*(v126 + 8))(v52, v54);
  v55 = v128;
  sub_219BE7594();
  v56 = v129;
  sub_219BE7564();
  v57 = v134;
  sub_219BE5F84();
  v58 = v133;
  (*(v133 + 8))(v56, v57);
  v59 = v130;
  v60 = v132;
  sub_219BEB244();
  v61 = v59;

  (*(v131 + 8))(v55, v60);
  v62 = v140;
  v63 = v59;
  v64 = v135;
  if ((*(v140 + 48))(v63, 1, v135) != 1)
  {
    v72 = *(v62 + 32);
    v73 = v115;
    v72(v115, v61, v64);
    v74 = v114;
    sub_219BE7564();
    (*(v58 + 56))(v74, 0, 1, v57);
    v75 = v73;
    v76 = sub_219BE6A34();
    result = sub_218B58C44(v74, sub_218B58F64);
    v66 = v136;
    if (v76 >= 0xFFFFFFFF80000000)
    {
      if (v76 <= 0x7FFFFFFF)
      {
        v77 = v101;
        sub_219BE0434();
        v71 = v138;
        v78 = swift_allocObject();
        *(v78 + 16) = v143;
        v144(v78 + v71, v145, v149);
        sub_2186F1034(&unk_280EE8400, MEMORY[0x277D2E530], MEMORY[0x277D2E528]);
        v79 = v103;
        sub_219BDCCC4();

        (*(v102 + 8))(v77, v79);
        v80 = v104;
        sub_219BE6934();
        v81 = v64;
        v82 = v106;
        sub_219BF3394();
        sub_218B58C44(v80, MEMORY[0x277D33DA8]);
        sub_219BEDA94();
        v83 = v105;
        sub_219BF17B4();
        v84 = v83;

        (*(v107 + 8))(v82, v108);
        v85 = v109;
        v86 = v110;
        if ((*(v109 + 48))(v84, 1, v110) == 1)
        {
          (*(v140 + 8))(v75, v81);
          sub_218B58C44(v84, sub_218B58F30);
        }

        else
        {
          v87 = *(v85 + 32);
          v134 = v49;
          v88 = v100[0];
          v87(v100[0], v84, v86);
          v89 = swift_allocObject();
          *(v89 + 16) = v143;
          v144(v89 + v71, v145, v149);
          sub_2186F1034(&unk_280EE87B0, MEMORY[0x277D2DAB8], MEMORY[0x277D2DAB0]);
          sub_219BDCCC4();

          (*(v85 + 8))(v88, v86);
          (*(v140 + 8))(v75, v81);
        }

        v65 = v124;
        v68 = v122;
        v69 = v121;
        v70 = v120;
        v67 = v123;
        goto LABEL_11;
      }

LABEL_21:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_218B58C44(v61, sub_218B58F98);
  v65 = v124;
  v66 = v136;
  v67 = v123;
  v68 = v122;
  v69 = v121;
  v70 = v120;
  v71 = v138;
LABEL_11:
  sub_218B5A2A4(v68, v70, sub_218B59134);
  if ((*(v69 + 48))(v70, 1, v139) == 1)
  {
    sub_218B58C44(v70, sub_218B59134);
  }

  else
  {
    v90 = v112;
    v91 = v139;
    (*(v69 + 32))(v112, v70, v139);
    v92 = swift_allocObject();
    *(v92 + 16) = v143;
    v144(v92 + v71, v145, v149);
    sub_2186F1034(&unk_280EE8790, MEMORY[0x277D2DAD8], MEMORY[0x277D2DAD0]);
    sub_219BDCCC4();

    (*(v69 + 8))(v90, v91);
  }

  v93 = v117;
  v94 = v116;
  swift_beginAccess();
  sub_218B5A2A4(v94, v93, sub_218B58D58);
  if ((*(v67 + 48))(v93, 1, v66) == 1)
  {
    sub_218B58C44(v93, sub_218B58D58);
  }

  else
  {
    v95 = v113;
    (*(v67 + 32))(v113, v93, v66);
    v96 = v138;
    v97 = swift_allocObject();
    *(v97 + 16) = v143;
    v144(v97 + v96, v145, v149);
    sub_2186F1034(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    sub_219BDCCC4();

    (*(v67 + 8))(v95, v66);
  }

  sub_219BE0A64();
  v98 = v118;
  sub_219BE75A4();
  sub_2186F1034(&qword_280EE8230, MEMORY[0x277D2EA20], MEMORY[0x277D2EA18]);
  sub_219BDCC64();
  v99 = *(v119 + 8);
  v99(v98, v65);
  sub_219BE7574();
  sub_219BDCC74();
  return (v99)(v98, v65);
}

uint64_t sub_218B54578(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v72 = a7;
  v66 = a5;
  v61 = a4;
  LODWORD(v77) = a3;
  v76 = a2;
  v80 = a1;
  v73 = sub_219BDBD34();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v70 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v8 - 8);
  v67 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE16D4();
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x28223BE20](v10);
  v57 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v12 - 8);
  v63 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BDF4A4();
  v64 = *(v14 - 8);
  v65 = v14;
  MEMORY[0x28223BE20](v14);
  v56 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_219BDF3E4();
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v50 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_219BDFDE4();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_219BDF8A4();
  v60 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = swift_projectBox();
  sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v79 = v20;
  v21 = sub_219BDCD44();
  v58 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 80);
  v24 = (v23 + 32) & ~v23;
  v25 = swift_allocObject();
  v78 = xmmword_219C09BA0;
  *(v25 + 16) = xmmword_219C09BA0;
  v26 = *MEMORY[0x277CEAD18];
  v27 = *(v22 + 104);
  v27(v25 + v24, v26, v21);
  sub_219BDEF94();
  sub_2186F1034(&qword_280EE8910, MEMORY[0x277D2D788], MEMORY[0x277D2D780]);
  sub_219BDCCC4();

  sub_219BDF894();
  v76 = v23;
  v28 = swift_allocObject();
  *(v28 + 16) = v78;
  v75 = v26;
  v29 = v58;
  v74 = v27;
  v27(v28 + v24, v26, v58);
  sub_2186F1034(&qword_280EE8640, MEMORY[0x277D2DE40], MEMORY[0x277D2DE38]);
  v77 = "feedDismissingManager";
  v30 = v29;
  v31 = v59;
  sub_219BDCCC4();

  (*(v60 + 8))(v19, v31);
  if (sub_219BF0A34())
  {
    (*(v51 + 104))(v50, *MEMORY[0x277D2DA78], v52);
    v32 = v53;
    sub_219BDFDD4();
    v33 = swift_allocObject();
    *(v33 + 16) = v78;
    v74(v33 + v24, v75, v30);
    sub_2186F1034(&unk_27CC18730, MEMORY[0x277D2E148], MEMORY[0x277D2E140]);
    v34 = v55;
    sub_219BDCCC4();

    (*(v54 + 8))(v32, v34);
  }

  v35 = v63;
  sub_218B5A2A4(v66, v63, sub_218B59134);
  v37 = v64;
  v36 = v65;
  if ((*(v64 + 48))(v35, 1, v65) == 1)
  {
    sub_218B58C44(v35, sub_218B59134);
  }

  else
  {
    v38 = v56;
    (*(v37 + 32))(v56, v35, v36);
    v39 = swift_allocObject();
    *(v39 + 16) = v78;
    v74(v39 + v24, v75, v30);
    sub_2186F1034(&unk_280EE8790, MEMORY[0x277D2DAD8], MEMORY[0x277D2DAD0]);
    sub_219BDCCC4();

    (*(v37 + 8))(v38, v36);
  }

  v40 = v69;
  v41 = v67;
  v42 = v62;
  swift_beginAccess();
  sub_218B5A2A4(v42, v41, sub_218B58D58);
  v43 = v68;
  if ((*(v68 + 48))(v41, 1, v40) == 1)
  {
    sub_218B58C44(v41, sub_218B58D58);
  }

  else
  {
    v44 = v57;
    (*(v43 + 32))(v57, v41, v40);
    v45 = swift_allocObject();
    *(v45 + 16) = v78;
    v74(v45 + v24, v75, v30);
    sub_2186F1034(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    sub_219BDCCC4();

    (*(v43 + 8))(v44, v40);
  }

  sub_219BE0494();
  sub_218B58D38(0);
  v46 = v70;
  sub_219BE75A4();
  sub_2186F1034(&unk_280EE83E0, MEMORY[0x277D2E560], MEMORY[0x277D2E558]);
  sub_219BDCC64();
  v47 = *(v71 + 8);
  v48 = v73;
  v47(v46, v73);
  sub_219BE7574();
  sub_219BDCC74();
  return (v47)(v46, v48);
}

uint64_t sub_218B550AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v109 = a5;
  v113 = a4;
  v121 = a3;
  v123 = a1;
  v7 = sub_219BDBD34();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v11 - 8);
  v110 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE16D4();
  v111 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v83 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_219BDF8A4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v105 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_219BE09E4();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_219BDF104();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v18 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_219BEF9C4();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_219BDFFE4();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_219BDEFE4();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BDFCE4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = swift_projectBox();
  sub_218B58D38(0);
  v27 = v26;
  sub_2186F1034(&qword_280E908F0, MEMORY[0x277D33320], MEMORY[0x277D33308]);
  v106 = v27;
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v86 = v10;
  v87 = a2;
  v88 = v8;
  v89 = v7;
  sub_219BDFCD4();
  sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v30 = v29;
  v31 = sub_219BDCD44();
  v32 = *(v31 - 8);
  v84 = v18;
  v33 = v32;
  v34 = *(v32 + 72);
  v118 = *(v32 + 80);
  v119 = v34;
  v35 = (v118 + 32) & ~v118;
  v112 = v35;
  v36 = swift_allocObject();
  v124 = xmmword_219C09BA0;
  *(v36 + 16) = xmmword_219C09BA0;
  v122 = *MEMORY[0x277CEAD18];
  v117 = *(v33 + 104);
  v117(v36 + v35);
  v120 = "feedDismissingManager";
  sub_2186F1034(&unk_280EE8590, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  sub_219BDCCC4();

  (*(v23 + 8))(v25, v22);
  v37 = sub_219BF0B44();
  v38 = [v37 identifier];
  sub_219BF5414();

  [v37 isPaid];
  v39 = [v37 totalTime];
  sub_219BF5414();
  v85 = v13;

  v115 = v33 + 104;
  v116 = v31;
  v114 = v30;
  v40 = v90;
  sub_219BDEFB4();

  v41 = v112;
  v42 = swift_allocObject();
  *(v42 + 16) = v124;
  (v117)(v42 + v41, v122, v31);
  sub_2186F1034(&qword_280EE8900, MEMORY[0x277D2D798], MEMORY[0x277D2D790]);
  v43 = v92;
  sub_219BDCCC4();

  (*(v91 + 8))(v40, v43);
  v44 = sub_219BF0B44();
  v45 = v94;
  v46 = v93;
  v47 = v95;
  (*(v94 + 104))(v93, *MEMORY[0x277D32840], v95);
  v48 = v96;
  sub_219BE02B4();

  (*(v45 + 8))(v46, v47);
  v49 = v112;
  v50 = swift_allocObject();
  *(v50 + 16) = v124;
  v51 = v122;
  v52 = v117;
  (v117)(v50 + v49, v122, v116);
  sub_2186F1034(&unk_280EE84E0, MEMORY[0x277D2E2C0], MEMORY[0x277D2E2B8]);
  v53 = v98;
  sub_219BDCCC4();

  (*(v97 + 8))(v48, v53);
  v54 = sub_219BF0B44();
  v55 = [v54 sourceChannel];

  v56 = v84;
  sub_219BE01F4();
  swift_unknownObjectRelease();
  v57 = swift_allocObject();
  *(v57 + 16) = v124;
  v58 = v116;
  v52(v57 + v49, v51, v116);
  sub_2186F1034(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
  v59 = v100;
  sub_219BDCCC4();

  (*(v99 + 8))(v56, v59);
  v60 = sub_219BF0B44();
  v61 = [v60 sourceChannel];

  v62 = v102;
  sub_219BE01E4();
  swift_unknownObjectRelease();
  v63 = swift_allocObject();
  *(v63 + 16) = v124;
  v64 = v117;
  (v117)(v63 + v49, v122, v58);
  sub_2186F1034(&qword_280EE8270, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
  v65 = v104;
  sub_219BDCCC4();

  (*(v103 + 8))(v62, v65);
  v66 = v105;
  sub_219BDF894();
  v67 = swift_allocObject();
  *(v67 + 16) = v124;
  v68 = v116;
  v69 = v64;
  v70 = v85;
  (v69)(v67 + v49, v122);
  sub_2186F1034(&qword_280EE8640, MEMORY[0x277D2DE40], MEMORY[0x277D2DE38]);
  v71 = v108;
  sub_219BDCCC4();

  (*(v107 + 8))(v66, v71);
  v72 = v101;
  swift_beginAccess();
  v73 = v72;
  v74 = v110;
  sub_218B5A2A4(v73, v110, sub_218B58D58);
  v75 = v111;
  if ((*(v111 + 48))(v74, 1, v70) == 1)
  {
    sub_218B58C44(v74, sub_218B58D58);
  }

  else
  {
    v76 = v83;
    (*(v75 + 32))(v83, v74, v70);
    v77 = swift_allocObject();
    *(v77 + 16) = v124;
    (v117)(v77 + v49, v122, v68);
    sub_2186F1034(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    sub_219BDCCC4();

    (*(v75 + 8))(v76, v70);
  }

  v78 = v88;
  sub_219BE04C4();
  v79 = v86;
  sub_219BE75A4();
  sub_2186F1034(&unk_280EE83D0, MEMORY[0x277D2E570], MEMORY[0x277D2E568]);
  sub_219BDCC64();
  v80 = *(v78 + 8);
  v81 = v89;
  v80(v79, v89);
  sub_219BE7574();
  sub_219BDCC74();
  return (v80)(v79, v81);
}

void *sub_218B56090(uint64_t a1, uint64_t a2, void (**a3)(char *))
{
  v97 = a2;
  v98 = a3;
  v87 = a1;
  v86 = sub_219BE1444();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v77 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58934(0);
  v79 = v5;
  v99 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v78 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B589C8(0);
  v92 = v7;
  v80 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v91 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58AD4(0);
  v89 = *(v9 - 1);
  v90 = v9;
  MEMORY[0x28223BE20](v9);
  v88 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v11 - 8);
  v81 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_219BE16D4();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v14 - 8);
  v95 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  v96 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v94 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A12934(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BF70(0);
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408(0);
  v28 = v27;
  v29 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v31 = &v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v3;
  v100[0] = *(v3 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_blueprintProvider);
  sub_218987644(0);
  sub_2186F1034(&qword_280EE54F0, sub_218987644, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();
  sub_219BEB1C4();
  if ((*(v24 + 48))(v21, 1, v23) == 1)
  {
    (*(v29 + 8))(v31, v28);
    v32 = sub_218A12934;
    v33 = v21;
    return sub_218B58C44(v33, v32);
  }

  v76 = v29;
  (*(v24 + 32))(v26, v21, v23);
  sub_219BE5F84();
  v34 = v24;
  v35 = v95;
  sub_219BEB244();

  v36 = v96;
  v37 = v31;
  if (v17[6](v35, 1, v96) == 1)
  {
    (*(v34 + 8))(v26, v23);
    (*(v76 + 8))(v31, v28);
    v32 = sub_21898BBC4;
    v33 = v35;
    return sub_218B58C44(v33, v32);
  }

  v39 = v36;
  v74 = v34;
  v75 = v23;
  v40 = v94;
  (v17[4])();
  sub_219BE6944();
  sub_219BEB194();
  v42 = v41;

  if (v42)
  {
    (v17[1])(v40, v39);
    (*(v74 + 8))(v26, v75);
    return (*(v76 + 8))(v37, v28);
  }

  v72 = v37;
  v73 = v28;
  v95 = v17;
  v102 = *(v93 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_blueprintLayoutProvider);
  sub_218B58B8C(0);
  sub_2186F1034(&qword_280EE4BD0, sub_218B58B8C, MEMORY[0x277D6DF38]);
  v43 = v88;
  sub_219BE91E4();
  v44 = v90;
  v45 = v91;
  sub_219BE65A4();
  (*(v89 + 8))(v43, v44);
  sub_2186F1034(&qword_27CC0E1D8, sub_218B589C8, MEMORY[0x277D6DE20]);
  v46 = v92;
  v47 = sub_219BF5E44();
  if (v47)
  {
    v48 = v47;
    v90 = v26;
    v101 = MEMORY[0x277D84F90];
    sub_218C34D90(0, v47 & ~(v47 >> 63), 0);
    v49 = v101;
    result = sub_219BF5DF4();
    if (v48 < 0)
    {
      __break(1u);
      return result;
    }

    v97 = v99 + 32;
    v98 = (v99 + 16);
    v50 = v79;
    v51 = v78;
    do
    {
      v52 = sub_219BF5EC4();
      (*v98)(v51);
      v52(v100, 0);
      v101 = v49;
      v53 = v45;
      v55 = *(v49 + 16);
      v54 = *(v49 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_218C34D90((v54 > 1), v55 + 1, 1);
        v49 = v101;
      }

      *(v49 + 16) = v55 + 1;
      (*(v99 + 32))(v49 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v55, v51, v50);
      sub_219BF5E94();
      --v48;
      v45 = v53;
    }

    while (v48);
    (*(v80 + 8))(v53, v46);
    v56 = v86;
    v57 = v85;
    v26 = v90;
  }

  else
  {
    (*(v80 + 8))(v45, v46);
    v56 = v86;
    v57 = v85;
  }

  type metadata accessor for TagFeedLayoutModel(0);
  sub_2186F1034(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
  v58 = v81;
  sub_219BE97B4();
  v59 = sub_219BE97D4();
  (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
  v60 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
  v61 = v93;
  swift_beginAccess();
  v62 = *(v61 + v60);
  v63 = v76;
  if (v62 && [v62 backingTag])
  {
    swift_unknownObjectRetain();
    v64 = v77;
    sub_219BE1414();
    v65 = sub_219BE1434();
    v67 = v66;
    swift_unknownObjectRelease_n();
    (*(v57 + 8))(v64, v56);
  }

  else
  {
    v65 = 0;
    v67 = 0;
  }

  v68 = v82;
  v69 = v94;
  v70 = v72;
  sub_21968E4D8(v94, v58, v65, v67, v82);

  sub_218B58C44(v58, sub_218B58900);
  sub_2186F1034(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
  v71 = v84;
  sub_219BDCCC4();
  (*(v83 + 8))(v68, v71);
  (*(v95 + 1))(v69, v96);
  (*(v74 + 8))(v26, v75);
  return (*(v63 + 8))(v70, v73);
}

uint64_t sub_218B56D64(uint64_t a1)
{
  *(a1 + 8) = sub_2186F1034(&unk_280EDB930, type metadata accessor for TagFeedTracker, &unk_219C1C920);
  result = sub_2186F1034(&qword_280EDB928, type metadata accessor for TagFeedTracker, &unk_219C1C8E8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_218B56DE8(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BE1464();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDF0E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = &unk_219C09000;
  if (a2)
  {
    swift_getObjectType();
    sub_219BF67F4();
    (*(v7 + 32))(v12, v9, v6);
    sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v14 = sub_219BDCD44();
    v15 = *(v14 - 8);
    v31 = v6;
    v16 = v7;
    v17 = v15;
    v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_219C09BA0;
    v20 = *MEMORY[0x277CEAD18];
    v13 = &unk_219C09000;
    (*(v17 + 104))(v19 + v18, v20, v14);
    sub_2186F1034(&qword_280EE88B0, MEMORY[0x277D2D8A8], MEMORY[0x277D2D8A0]);
    v21 = v31;
    sub_219BDCCC4();

    v22 = v12;
    v23 = v20;
    (*(v16 + 8))(v22, v21);
  }

  else
  {
    v23 = *MEMORY[0x277CEAD18];
  }

  sub_219BDB804();
  sub_219BE1454();
  sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v24 = sub_219BDCD44();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v13[186];
  (*(v25 + 104))(v27 + v26, v23, v24);
  sub_2186F1034(&qword_280EE8020, MEMORY[0x277D2F270], MEMORY[0x277D2F268]);
  v28 = v33;
  sub_219BDCCC4();

  (*(v32 + 8))(v5, v28);
  sub_219BE0744();
  sub_2186F1034(&unk_280EE8310, MEMORY[0x277D2E760], MEMORY[0x277D2E758]);
  memset(v34, 0, sizeof(v34));
  sub_219BDCCE4();
  return sub_218B58C44(v34, sub_21880702C);
}

uint64_t sub_218B57324(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BDBD34();
  MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  v5 = sub_219BDB184();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDD2D4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a2, v5, v11);
  sub_219BDB164();
  sub_219BDB134();
  sub_219BDD2B4();
  (*(v6 + 8))(v8, v5);
  sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v14 = sub_219BDCD44();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_219C09BA0;
  (*(v15 + 104))(v17 + v16, *MEMORY[0x277CEAD18], v14);
  sub_2186F1034(&unk_280EE8ED0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEC8]);
  sub_219BDCCC4();

  (*(v10 + 8))(v13, v9);
  sub_219BE00D4();
  sub_2186F1034(&qword_280EE84B8, MEMORY[0x277D2E338], MEMORY[0x277D2E330]);
  memset(v19, 0, sizeof(v19));
  sub_219BDCCE4();
  return sub_218B58C44(v19, sub_21880702C);
}

uint64_t sub_218B5770C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v4 = sub_219BE1594();
  v5 = *(v4 - 8);
  v35 = v4;
  v36 = v5;
  MEMORY[0x28223BE20](v4);
  v33 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDBD34();
  MEMORY[0x28223BE20](v7 - 8);
  MEMORY[0x28223BE20](v8);
  v9 = sub_219BDB184();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BDD2D4();
  v32 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a2, v9, v14);
  sub_219BDB164();
  sub_219BDB134();
  sub_219BDD2B4();
  (*(v10 + 8))(v12, v9);
  sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v31 = v17;
  v18 = sub_219BDCD44();
  v19 = *(v18 - 8);
  v30 = *(v19 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v29 = xmmword_219C09BA0;
  *(v21 + 16) = xmmword_219C09BA0;
  v22 = *MEMORY[0x277CEAD18];
  v28 = *(v19 + 104);
  v28(v21 + v20, v22, v18);
  v27 = "feedDismissingManager";
  sub_2186F1034(&unk_280EE8ED0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEC8]);
  sub_219BDCCC4();

  (*(v32 + 8))(v16, v13);
  swift_getErrorValue();
  v23 = v33;
  sub_219BF7A14();
  v24 = swift_allocObject();
  *(v24 + 16) = v29;
  v28(v24 + v20, v22, v18);
  sub_2186F1034(&qword_280EE7FC0, MEMORY[0x277D2F440], MEMORY[0x277D2F438]);
  v25 = v35;
  sub_219BDCCC4();

  (*(v36 + 8))(v23, v25);
  sub_219BE0C04();
  sub_2186F1034(&unk_280EE81E0, MEMORY[0x277D2EBA8], MEMORY[0x277D2EBA0]);
  memset(v37, 0, sizeof(v37));
  sub_219BDCCE4();
  return sub_218B58C44(v37, sub_21880702C);
}

uint64_t sub_218B57C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v67 = a6;
  v68 = a5;
  v91 = a2;
  v87 = a1;
  v66 = sub_219BDFCE4();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_219BE0444();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_219BDB954();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  *&v77 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF1094();
  v73 = *(v9 - 8);
  v74 = v9;
  MEMORY[0x28223BE20](v9);
  v72 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_219BDF464();
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v76 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v85);
  v86 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F7158(0);
  v83 = *(v13 - 8);
  v84 = v13;
  MEMORY[0x28223BE20](v13);
  v82 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A12934(0);
  MEMORY[0x28223BE20](v15 - 8);
  v75 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v89 = &v61 - v18;
  sub_21898BF70(0);
  v20 = v19;
  v90 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v88 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  v26 = v25;
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v29 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408(0);
  v31 = v30;
  sub_219BEB244();
  if ((*(v27 + 48))(v24, 1, v26) != 1)
  {
    (*(v27 + 32))(v29, v24, v26);
    v24 = v89;
    v63 = v31;
    sub_219BEB1C4();
    v33 = v90;
    if ((*(v90 + 48))(v24, 1, v20) == 1)
    {
      (*(v27 + 8))(v29, v26);
      v32 = sub_218A12934;
      goto LABEL_5;
    }

    v61 = v27;
    v62 = v29;
    v37 = v88;
    (*(v33 + 32))(v88, v24, v20);
    v38 = v86;
    sub_219BE5FC4();
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      (*(v33 + 8))(v37, v20);
      (*(v61 + 8))(v62, v26);
      v34 = type metadata accessor for TagFeedModel;
      v35 = v38;
      return sub_218B58C44(v35, v34);
    }

    (*(v83 + 32))(v82, v38, v84);
    v39 = v72;
    sub_219BF07D4();
    v40 = v77;
    sub_219BF1044();
    (*(v73 + 8))(v39, v74);
    sub_219BDB804();
    (*(v79 + 8))(v40, v81);
    v41 = v76;
    sub_219BDF454();
    sub_2186F1034(&qword_280EE87C0, MEMORY[0x277D2DAA8], MEMORY[0x277D2DAA0]);
    v89 = "feedDismissingManager";
    v42 = v80;
    sub_219BDCCC4();
    (*(v78 + 8))(v41, v42);
    v43 = v75;
    (*(v33 + 16))(v75, v37, v20);
    (*(v33 + 56))(v43, 0, 1, v20);
    v44 = sub_2186F1034(&qword_280EDE830, type metadata accessor for TagFeedModel, &unk_219C47BB4);
    v45 = sub_219BE6A34();
    result = sub_218B58C44(v43, sub_218A12934);
    if (v45 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else
    {
      v81 = v26;
      v85 = v20;
      v86 = v44;
      if (v45 <= 0x7FFFFFFF)
      {
        v46 = v69;
        sub_219BE0434();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v48 = v47;
        v49 = sub_219BDCD44();
        v50 = *(v49 - 8);
        v51 = *(v50 + 72);
        v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
        v79 = v48;
        v80 = v51;
        v53 = swift_allocObject();
        v77 = xmmword_219C09BA0;
        *(v53 + 16) = xmmword_219C09BA0;
        v54 = *MEMORY[0x277CEAD18];
        v78 = *(v50 + 104);
        (v78)(v53 + v52);
        sub_2186F1034(&unk_280EE8400, MEMORY[0x277D2E530], MEMORY[0x277D2E528]);
        v55 = v71;
        sub_219BDCCC4();

        (*(v70 + 8))(v46, v55);
        result = sub_219BEB304();
        if (result >= 0xFFFFFFFF80000000)
        {
          v56 = v61;
          if (result <= 0x7FFFFFFF)
          {
            v57 = v64;
            sub_219BDFCD4();
            v58 = swift_allocObject();
            *(v58 + 16) = v77;
            (v78)(v58 + v52, v54, v49);
            sub_2186F1034(&unk_280EE8590, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
            v59 = v66;
            v60 = v87;
            sub_219BDCCC4();

            (*(v65 + 8))(v57, v59);
            v68(v60);
            (*(v83 + 8))(v82, v84);
            (*(v90 + 8))(v88, v85);
            return (*(v56 + 8))(v62, v81);
          }

          goto LABEL_18;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  v32 = sub_21898BBC4;
LABEL_5:
  v34 = v32;
  v35 = v24;
  return sub_218B58C44(v35, v34);
}

void sub_218B58934(uint64_t a1)
{
  if (!qword_280EE5080)
  {
    type metadata accessor for TagFeedLayoutModel(255);
    sub_2186F1034(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7B4);
    v1 = sub_219BE75F4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5080);
    }
  }
}

void sub_218B589C8(uint64_t a1)
{
  if (!qword_280EE4DC0)
  {
    type metadata accessor for TagFeedLayoutModel(255);
    sub_218B58A80();
    sub_2186F1034(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7B4);
    v1 = sub_219BE81B4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4DC0);
    }
  }
}

unint64_t sub_218B58A80()
{
  result = qword_280EAA8F0[0];
  if (!qword_280EAA8F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EAA8F0);
  }

  return result;
}

void sub_218B58AD4(uint64_t a1)
{
  if (!qword_280EE5A20)
  {
    type metadata accessor for TagFeedLayoutModel(255);
    sub_218B58A80();
    sub_2186F1034(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7B4);
    v1 = sub_219BE6584();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5A20);
    }
  }
}

void sub_218B58B8C(uint64_t a1)
{
  if (!qword_280EE4BC0)
  {
    type metadata accessor for TagFeedLayoutModel(255);
    sub_218B58A80();
    sub_2186F1034(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7B4);
    v1 = sub_219BE8564();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4BC0);
    }
  }
}

uint64_t sub_218B58C44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218B58CA4(uint64_t a1)
{
  if (!qword_280EE5B40)
  {
    sub_219BF13A4();
    sub_2186F1034(&unk_280E908E0, MEMORY[0x277D33320], MEMORY[0x277D33310]);
    v1 = sub_219BE5FE4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5B40);
    }
  }
}

uint64_t sub_218B58DC0(uint64_t a1)
{
  v3 = *(sub_219BF0F34() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  sub_218B58D38(0);
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v9);
  v11 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_218B4D274(a1, v1 + v4, v1 + v8, v10, v11);
}

uint64_t sub_218B58ECC(uint64_t a1, uint64_t a2)
{
  sub_218B58D58(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_218B59020(uint64_t a1)
{
  sub_218B58D38(0);
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  v6 = *(sub_219BF07A4() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v8);
  v10 = v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  return sub_218B4EDF0(a1, v1 + v4, v1 + v7, v9, v11, v12);
}

uint64_t objectdestroy_22Tm(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = a1(0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = a2(0);
  v9 = *(v8 - 8);
  v10 = (v6 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  sub_218B59134(0);
  v13 = *(*(v12 - 8) + 80);
  v14 = (v10 + v11 + v13) & ~v13;
  (*(v5 + 8))(v2 + v6, v4);
  (*(v9 + 8))(v2 + v10, v8);
  v15 = sub_219BDF4A4();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v2 + v14, 1, v15))
  {
    (*(v16 + 8))(v2 + v14, v15);
  }

  return swift_deallocObject();
}

uint64_t sub_218B59438(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, unint64_t, unint64_t, unint64_t, uint64_t))
{
  v7 = *(a2(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(a3(0) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  sub_218B59134(0);
  v14 = *(v13 - 8);
  v15 = (v11 + v12 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = *(v4 + ((*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a4(a1, v4 + v8, v4 + v11, v4 + v15, v16);
}

uint64_t sub_218B595FC(uint64_t a1)
{
  v3 = *(sub_219BDEF94() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_219BF0AC4() - 8);
  v7 = (v5 + *(v6 + 80) + 1) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  sub_218B59134(0);
  v10 = (v7 + v8 + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80);
  v11 = (*(*(v9 - 8) + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_218B58D38(0);
  v13 = *(v1 + v5);
  v14 = *(v1 + v11);
  v15 = v1 + ((v11 + *(*(v12 - 8) + 80) + 8) & ~*(*(v12 - 8) + 80));

  return sub_218B54578(a1, v1 + v4, v13, v1 + v7, v1 + v10, v14, v15);
}

void sub_218B59810(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = sub_219BF33A4();
    v8[1] = sub_219BF13A4();
    v8[2] = sub_2186F1034(&qword_280E90190, MEMORY[0x277D33DA8], MEMORY[0x277D33DA0]);
    v8[3] = sub_2186F1034(&unk_280E908E0, MEMORY[0x277D33320], MEMORY[0x277D33310]);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218B59904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_219BED174();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BED1D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [sub_219BF6394() isSportsEvent];
  result = swift_unknownObjectRelease();
  if ((v12 & 1) == 0)
  {
    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    v14 = sub_219BF66A4();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = a1;
    v16[4] = &off_282A9F6D8;
    aBlock[4] = sub_218B59C54;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218793E0C;
    aBlock[3] = &block_descriptor_25;
    v17 = _Block_copy(aBlock);

    sub_219BED1A4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2186F1034(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_21879DD98(0);
    sub_2186F1034(&qword_280E8EFA0, sub_21879DD98, MEMORY[0x277D83970]);
    sub_219BF7164();
    MEMORY[0x21CECD460](0, v11, v7, v17);
    _Block_release(v17);

    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_218B59C60(uint64_t a1)
{
  v3 = *(sub_219BDB184() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_218B5770C(a1, v1 + v4, v5);
}

uint64_t sub_218B59D00(uint64_t a1)
{
  v3 = *(sub_219BDB184() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_218B57324(a1, v4);
}

uint64_t objectdestroy_46Tm()
{
  sub_218954408(0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_218B59E24(uint64_t a1)
{
  sub_218954408(0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v1 + v6);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v7);
  v12 = *(v1 + v7 + 8);

  return sub_218B57C68(a1, v1 + v5, v9, v10, v11, v12);
}

uint64_t sub_218B59F00(uint64_t a1)
{
  v3 = *(sub_219BE9944() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BDF074() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v1 + 16);

  return sub_218B289C4(a1, v9, v1 + v4, v1 + v7, v8);
}

uint64_t sub_218B5A1B0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = v3 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return a3(a1, v6, v7);
}

uint64_t sub_218B5A2A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_218B5A32C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TagFeedSectionDescriptor;
    v8[1] = type metadata accessor for TagFeedModel(255);
    v8[2] = sub_2186F7410();
    v8[3] = sub_2186F1034(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t objectdestroy_76Tm(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = a1(0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = a2(0);
  v9 = *(v8 - 8);
  v10 = (v6 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  (*(v5 + 8))(v2 + v6, v4);
  (*(v9 + 8))(v2 + v10, v8);

  return swift_deallocObject();
}

uint64_t sub_218B5A584(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, unint64_t, uint64_t))
{
  v7 = *(a2(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(a3(0) - 8);
  v11 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return a4(a1, v4 + v8, v11);
}

uint64_t sub_218B5A680(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218B5A6E8(uint64_t a1)
{
  v3 = *(sub_219BF0F34() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  sub_218B5A30C(0);
  v7 = (v4 + v5 + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v8 = (*(*(v6 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_21898BBC4(0);
  v10 = *(v1 + v8);
  v11 = v1 + ((v8 + *(*(v9 - 8) + 80) + 8) & ~*(*(v9 - 8) + 80));

  return sub_218B444A0(a1, v1 + v4, v1 + v7, v10, v11);
}

uint64_t sub_218B5A864(uint64_t a1)
{
  sub_218954350(0);
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  v6 = *(sub_219BF04A4() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  sub_218B59134(0);
  v10 = (v7 + v8 + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80);
  v11 = *(*(v9 - 8) + 64);
  v12 = *(sub_219BE16D4() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = *(v12 + 64);
  sub_218B5A30C(0);
  v16 = v1 + ((v13 + v14 + *(*(v15 - 8) + 80)) & ~*(*(v15 - 8) + 80));

  return sub_218B4612C(a1, v1 + v4, v1 + v7, v1 + v10, v1 + v13, v16);
}

uint64_t sub_218B5AA5C(uint64_t a1)
{
  v3 = *(sub_219BF1094() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  sub_218B5A30C(0);
  v7 = (v4 + v5 + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v8 = (*(*(v6 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_218B59134(0);
  v11 = *(v1 + v8);
  v12 = *(v1 + v9);
  v13 = v1 + ((v9 + *(*(v10 - 8) + 80) + 8) & ~*(*(v10 - 8) + 80));

  return sub_218B47630(a1, v1 + v4, v1 + v7, v11, v12, v13);
}

uint64_t sub_218B5ABB0(uint64_t a1)
{
  sub_21898BBC4(0);
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  sub_218B5A30C(0);
  v7 = (v4 + v5 + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  v9 = *(sub_219BF07A4() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + v11);
  v13 = v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  v15 = *(v13 + 8);

  return sub_218B48A7C(a1, v1 + v4, v1 + v7, v1 + v10, v12, v14, v15);
}

uint64_t sub_218B5AD28(uint64_t a1)
{
  v3 = *(sub_219BEDAE4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  sub_218B5A30C(0);
  v7 = (v4 + v5 + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  sub_21898BBC4(0);
  v10 = (v7 + v8 + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80);
  v11 = (*(*(v9 - 8) + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_218B59134(0);
  v13 = *(v1 + v11);
  v14 = v1 + ((v11 + *(*(v12 - 8) + 80) + 8) & ~*(*(v12 - 8) + 80));

  return sub_218B4A4A4(a1, v1 + v4, v1 + v7, v1 + v10, v13, v14);
}

uint64_t sub_218B5AECC(uint64_t a1)
{
  v3 = *(sub_219BDEF94() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BDF8A4() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_219BF0AC4() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_218B59134(0);
  v13 = (v11 + *(*(v12 - 8) + 80) + 8) & ~*(*(v12 - 8) + 80);
  v14 = *(*(v12 - 8) + 64);
  sub_218B5A30C(0);
  v16 = *(v1 + v11);
  v17 = v1 + ((v13 + v14 + *(*(v15 - 8) + 80)) & ~*(*(v15 - 8) + 80));

  return sub_218B4B80C(a1, (v1 + v4), v1 + v7, v1 + v10, v16, v1 + v13, v17);
}

uint64_t objectdestroy_34Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = sub_219BF0B74();
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_218B5B274(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_219BF0B74() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v9 + *(v8 + 64);
  v11 = v3 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v3 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, v3 + v6, v3 + v9, v12, v13, v14);
}

void sub_218B5B3A0(uint64_t a1)
{
  if (!qword_280E8D490)
  {
    sub_218954408(255);
    sub_2186F1034(&unk_280EE36D0, sub_218954408, MEMORY[0x277D6EC70]);
    v1 = sub_219BF7494();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D490);
    }
  }
}

void sub_218B5B5A8()
{
  v1 = sub_219BE0C74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v8 = v14 - v6;
  v9 = *(v0 + 32);
  if ((*(v9 + 96) & 1) == 0)
  {
    (*(v2 + 104))(v14 - v6, *MEMORY[0x277D2EC18], v1, v7);
    v10 = [*(v9 + 64) activeNewsletter];
    (*(v2 + 16))(v4, v8, v1);
    v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v12 = (v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = swift_allocObject();
    (*(v2 + 32))(v13 + v11, v4, v1);
    *(v13 + v12) = v10;
    sub_219BDD154();

    (*(v2 + 8))(v8, v1);
    v14[1] = 0;
    sub_219BE2224();
  }
}

uint64_t sub_218B5B790()
{
  sub_218774F78(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return swift_deallocClassInstance();
}

void (*sub_218B5B838(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_218963B4C;
}

uint64_t sub_218B5B8CC()
{
  v0 = off_282A9D7E0[0];
  type metadata accessor for EmailSignupInteractor();
  return v0();
}

uint64_t sub_218B5B968()
{
  v0 = off_282A9D7E8;
  type metadata accessor for EmailSignupInteractor();
  return v0();
}

uint64_t sub_218B5B9CC(uint64_t a1)
{
  v3 = *(sub_219BE0C74() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_219AF0554(a1, v1 + v4, v5);
}

uint64_t type metadata accessor for CustomItemRouteModel(uint64_t a1)
{
  result = qword_280ECEF28;
  if (!qword_280ECEF28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218B5BADC(uint64_t a1)
{
  result = sub_219BDB954();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for SportsLinksTagFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EB29A0;
  if (!qword_280EB29A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218B5BBBC(uint64_t a1)
{
  sub_2189AD5C8(319);
  if (v1 <= 0x3F)
  {
    sub_218B5BC40();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_218B5BC40()
{
  if (!qword_280E8F110)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8F110);
    }
  }
}

uint64_t sub_218B5BC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2189ADE0C(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE64(a1, v8);
  v14 = *(v11 + 48);
  if (v14(v8, 1, v10) == 1)
  {
    type metadata accessor for TagFeedServiceConfig(0);
    sub_21877C5E8(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    sub_219BEE974();
    sub_2189ADEC8(a1);
    if (v14(v8, 1, v10) != 1)
    {
      sub_2189ADEC8(v8);
    }
  }

  else
  {
    sub_2189ADEC8(a1);
    (*(v11 + 32))(v13, v8, v10);
  }

  (*(v11 + 32))(a3, v13, v10);
  result = type metadata accessor for SportsLinksTagFeedGroupKnobs(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_218B5BEE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_2189ADE0C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5C554(0, &qword_280E8CBF8, MEMORY[0x277D844C8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B5C4AC();
  sub_219BF7B34();
  if (!v2)
  {
    sub_2189AD5C8(0);
    v18 = 0;
    sub_21877C5E8(&qword_280E91A88, sub_2189AD5C8, MEMORY[0x277D321B0]);
    sub_219BF7674();
    v17 = 1;
    sub_218B5C500();
    v12 = sub_219BF7684();
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    sub_218B5BC90(v6, v13, v16);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218B5C11C(void *a1)
{
  v3 = v1;
  sub_218B5C554(0, &qword_27CC0E210, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B5C4AC();
  sub_219BF7B44();
  v13 = 0;
  sub_2189AD5C8(0);
  sub_21877C5E8(&qword_27CC0BEC8, sub_2189AD5C8, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for SportsLinksTagFeedGroupKnobs(0) + 20));
    v11[15] = 1;
    sub_218B5BC40();
    sub_218B5C5B8();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218B5C304()
{
  if (*v0)
  {
    return 0x736B6E696CLL;
  }

  else
  {
    return 0x73656C7572;
  }
}

void sub_218B5C330(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x736B6E696CLL && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_218B5C404(uint64_t a1)
{
  v2 = sub_218B5C4AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218B5C440(uint64_t a1)
{
  v2 = sub_218B5C4AC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218B5C4AC()
{
  result = qword_280EB29C8;
  if (!qword_280EB29C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB29C8);
  }

  return result;
}

unint64_t sub_218B5C500()
{
  result = qword_280EC6A68;
  if (!qword_280EC6A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC6A68);
  }

  return result;
}

void sub_218B5C554(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218B5C4AC();
    v7 = a3(a1, &type metadata for SportsLinksTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218B5C5B8()
{
  result = qword_27CC0E218;
  if (!qword_27CC0E218)
  {
    sub_218B5BC40();
    sub_218B5C630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E218);
  }

  return result;
}

unint64_t sub_218B5C630()
{
  result = qword_27CC0E220;
  if (!qword_27CC0E220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E220);
  }

  return result;
}

unint64_t sub_218B5C698()
{
  result = qword_27CC0E228;
  if (!qword_27CC0E228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E228);
  }

  return result;
}

unint64_t sub_218B5C6F0()
{
  result = qword_280EB29B8;
  if (!qword_280EB29B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB29B8);
  }

  return result;
}

unint64_t sub_218B5C748()
{
  result = qword_280EB29C0;
  if (!qword_280EB29C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB29C0);
  }

  return result;
}

uint64_t sub_218B5C79C(uint64_t a1, uint64_t a2)
{
  sub_2186E90E8(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218B5C808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186E90E8(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_218B5C884()
{
  sub_2186E90E8(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5D7F4(v0, v8);
  (*(v3 + 32))(v5, v8, v2);
  v9 = sub_219BEDCA4();
  (*(v3 + 8))(v5, v2);
  return v9;
}

uint64_t sub_218B5CA14(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_2186E90E8(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5D7F4(v3, v12);
  (*(v7 + 32))(v9, v12, v6);
  a3(v6);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218B5CBC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_2186E90E8(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5D7F4(v3, v12);
  (*(v7 + 32))(v9, v12, v6);
  v13 = a3(v6);
  (*(v7 + 8))(v9, v6);
  return v13;
}

uint64_t sub_218B5CD0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2186E92A4(&qword_280ECD810, type metadata accessor for SavedFeedGroupConfig, &unk_219C1CC50);

  return MEMORY[0x282190458](a1, a2, a3, v6);
}

uint64_t sub_218B5CEB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_2186E90E8(0);
  v5 = v4;
  v18 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5D6F0(0);
  v9 = v8;
  v21 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B5D74C();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v21;
    v16 = v5;
    v17 = v7;
    sub_218B5D7A0();
    sub_219BF7734();
    sub_218718690(a1, v20);
    type metadata accessor for ArticleListSavedFeedGroupConfigData(0);
    sub_2186E92A4(&qword_280E9E1A8, type metadata accessor for ArticleListSavedFeedGroupConfigData, &unk_219C8A67C);
    sub_2186E92A4(&qword_280E9E1B0, type metadata accessor for ArticleListSavedFeedGroupConfigData, &unk_219C8A654);
    v13 = v17;
    sub_219BEDD24();
    (*(v12 + 8))(v11, v9);
    (*(v18 + 32))(v19, v13, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_218B5D170(BOOL *a3@<X8>)
{
  v4 = sub_219BF7614();

  *a3 = v4 != 0;
}

uint64_t sub_218B5D1C8(uint64_t a1)
{
  v2 = sub_218B5D74C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218B5D204(uint64_t a1)
{
  v2 = sub_218B5D74C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218B5D398(uint64_t a1)
{
  v2 = v1;
  sub_2186E90E8(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5D7F4(v2, v10);
  (*(v5 + 32))(v7, v10, v4);
  sub_219BEDD64();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218B5D4F0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ArticleListSavedFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E90E8(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5D7F4(v1, v13);
  (*(v8 + 32))(v10, v13, v7);
  sub_219BEDD14();
  (*(v8 + 8))(v10, v7);
  v14 = sub_219BF1934();
  v15 = *(v14 - 8);
  (*(v15 + 32))(a1, v5, v14);
  return (*(v15 + 56))(a1, 0, 1, v14);
}

void sub_218B5D6F0(uint64_t a1)
{
  if (!qword_280E8CED8)
  {
    sub_218B5D74C();
    v1 = sub_219BF7774();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8CED8);
    }
  }
}

unint64_t sub_218B5D74C()
{
  result = qword_280ECD838[0];
  if (!qword_280ECD838[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ECD838);
  }

  return result;
}

unint64_t sub_218B5D7A0()
{
  result = qword_280ECD818;
  if (!qword_280ECD818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECD818);
  }

  return result;
}

uint64_t sub_218B5D7F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedFeedGroupConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_218B5D87C()
{
  result = qword_27CC0E230;
  if (!qword_27CC0E230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E230);
  }

  return result;
}

unint64_t sub_218B5D8D4()
{
  result = qword_27CC0E238;
  if (!qword_27CC0E238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E238);
  }

  return result;
}

unint64_t sub_218B5D92C()
{
  result = qword_280ECD828;
  if (!qword_280ECD828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECD828);
  }

  return result;
}

unint64_t sub_218B5D984()
{
  result = qword_280ECD830;
  if (!qword_280ECD830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECD830);
  }

  return result;
}

unint64_t sub_218B5D9D8()
{
  result = qword_280ECD820;
  if (!qword_280ECD820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECD820);
  }

  return result;
}

double sub_218B5DA2C(uint64_t a1)
{
  sub_21896FA3C(0);
  v42[0] = *(v3 - 8);
  v4 = *(v42[0] + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v42 - v7;
  v9 = sub_219BDD944();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AudioTrackDetailsRouteModel(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5E1D0(a1, v14, type metadata accessor for AudioTrackDetailsRouteModel);
  sub_218B5E238(v14, v11, MEMORY[0x277D2FB40]);
  v15 = *(v1 + 72);
  sub_2187B2C48(0);
  v17 = v16;
  v18 = swift_allocBox();
  v20 = v19;
  v21 = *(v17 + 48);
  sub_2187B2DA0(0);
  v23 = *(v22 + 48);
  v43 = v11;
  sub_218B5E1D0(v11, v20, MEMORY[0x277D2FB40]);
  v24 = MEMORY[0x277D84F90];
  *(v20 + v23) = MEMORY[0x277D84F90];
  *(v20 + v21) = v24;
  v42[1] = v18;
  v25 = v18 | 2;
  v26 = *(v1 + 64);
  v27 = sub_219BDFA44();
  (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
  v53 = 0;
  memset(v52, 0, sizeof(v52));
  v51 = 0;
  memset(v50, 0, sizeof(v50));
  v49 = v15;
  sub_2187B14CC(v50, &v45, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (v46)
  {
    sub_21875F93C(&v45, v47);
    *&v45 = v18 | 2;
    v28 = sub_2194DA78C(v47);
    v30 = v29;
    v32 = v31;
    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    sub_218744BD0(&v45, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v28 = qword_280ED32D8;
    v30 = qword_280ED32E0;
    v32 = qword_280ED32E8;

    sub_2188202A8(v30);
  }

  v44 = v25;
  v46 = sub_219BDD274();
  *&v45 = v26;
  sub_218B5E1D0(v8, v5, sub_21896FA3C);
  sub_2187B14CC(v52, v47, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v33 = (*(v42[0] + 80) + 24) & ~*(v42[0] + 80);
  v34 = (v4 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42[0] = v8;
  v35 = (v34 + 47) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = v26;
  sub_218B5E238(v5, v36 + v33, sub_21896FA3C);
  v37 = v36 + v34;
  v38 = v47[1];
  *v37 = v47[0];
  *(v37 + 16) = v38;
  *(v37 + 32) = v48;
  v39 = (v36 + v35);
  v40 = (v36 + ((v35 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v39 = 0;
  v39[1] = 0;
  *v40 = v28;
  v40[1] = v30;
  v40[2] = v32;
  swift_retain_n();

  sub_2188202A8(v30);
  sub_2186CF94C(0);
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v30, v32);
  sub_218744BD0(v50, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_218744BD0(v52, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218B5E2A0(v42[0], sub_21896FA3C);
  sub_218B5E2A0(v43, MEMORY[0x277D2FB40]);
  sub_218744BD0(&v45, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);

  return result;
}

uint64_t sub_218B5E15C()
{
  MEMORY[0x21CECFA80](v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_218B5E1D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218B5E238(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218B5E2A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_218B5E300()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC7NewsUI216ShortcutsService_subscriptionController] removeObserver_];
  v2 = *__swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC7NewsUI216ShortcutsService_favoritedShortcutService], *&v0[OBJC_IVAR____TtC7NewsUI216ShortcutsService_favoritedShortcutService + 24]) + OBJC_IVAR____TtC7NewsUI215ShortcutService_lockedObservers;
  v3 = v0;
  os_unfair_lock_lock(v2);
  v4 = *(v2 + 8);

  os_unfair_lock_unlock(v2);
  v13 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
LABEL_18:
    v5 = sub_219BF7214();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v10 = v2;
      v11 = ObjectType;
      v2 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          MEMORY[0x21CECE0F0](v2, v4);
          ObjectType = (v2 + 1);
          if (__OFADD__(v2, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:
            v8 = v13;
            v2 = v10;
            ObjectType = v11;
            goto LABEL_20;
          }
        }

        else
        {
          if (v2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_18;
          }

          ObjectType = (v2 + 1);
          if (__OFADD__(v2, 1))
          {
            goto LABEL_15;
          }
        }

        if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v7 = Strong, swift_unknownObjectRelease(), v7 == v3))
        {
        }

        else
        {
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }

        ++v2;
        if (ObjectType == v5)
        {
          goto LABEL_16;
        }
      }
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_20:

  os_unfair_lock_lock(v2);

  *(v2 + 8) = v8;
  os_unfair_lock_unlock(v2);

  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_dealloc);
}

void *sub_218B5E674()
{
  v1 = v0;
  if (qword_280EE5F18 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F62538);
  v3 = sub_219BE5414();
  v4 = sub_219BF6214();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2186C1000, v3, v4, "Fetching shortcuts from cache...", v5, 2u);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  v6 = (v1 + OBJC_IVAR____TtC7NewsUI216ShortcutsService_cacheManager);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v7 = sub_2189A833C();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v8 = sub_2189AAE40();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v9 = sub_2189AB28C();
  v10 = sub_218B68F98(v7, v8, v9);

  sub_2191EDD40(v11);

  sub_2191EDD40(v12);

  return v10;
}

void sub_218B5E838()
{
  swift_getObjectType();
  if (qword_280EE5F18 != -1)
  {
    swift_once();
  }

  v0 = sub_219BE5434();
  __swift_project_value_buffer(v0, qword_280F62538);
  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2186C1000, v1, v2, "Refreshing all shortcuts...", v3, 2u);
    MEMORY[0x21CECF960](v3, -1, -1);
  }

  v4 = CACurrentMediaTime();
  MEMORY[0x28223BE20](v5);
  sub_219BE3204();
  v6 = sub_219BE1C44();
  sub_219BE2F94();

  v7 = sub_219BE2E54();
  sub_219BE2FD4();

  *(swift_allocObject() + 16) = v4;
  v8 = sub_219BE2E54();
  sub_219BE3024();
}

char *sub_218B5EA64()
{
  swift_getObjectType();
  v1 = [*(v0 + OBJC_IVAR____TtC7NewsUI216ShortcutsService_shortcutCategoryList) blockedShortcutCategories];
  sub_2186C6148(0, &unk_27CC0E330, 0x277D312E8);
  v2 = sub_219BF5924();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    v6 = MEMORY[0x277D84F90];
LABEL_14:
    v16 = sub_218845F78(v6);

    MEMORY[0x28223BE20](v17);
    sub_219BE3204();
    v18 = sub_219BE2E54();
    sub_219BE2F84();

    *(swift_allocObject() + 16) = v16;
    v19 = sub_219BE2E54();
    v20 = sub_219BE2F84();

    return v20;
  }

  v3 = sub_219BF7214();
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v21 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v21;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21CECE0F0](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = [v7 identifier];
      v10 = sub_219BF5414();
      v12 = v11;

      v14 = *(v21 + 16);
      v13 = *(v21 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_21870B65C((v13 > 1), v14 + 1, 1);
      }

      ++v5;
      *(v21 + 16) = v14 + 1;
      v15 = v21 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
    }

    while (v3 != v5);

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_218B5ED44(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7NewsUI216ShortcutsService_observers;
  swift_beginAccess();
  v5 = *(a2 + v4);
  if (v5 >> 62)
  {
    v6 = sub_219BF7214();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x21CECE0F0](i, v5);
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v8 + 24);
        ObjectType = swift_getObjectType();
        (*(v9 + 32))(v3, ObjectType, v9);
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_218B5EEA4(double a1)
{
  if (qword_280EE5F18 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  __swift_project_value_buffer(v1, qword_280F62538);
  oslog = sub_219BE5414();
  v2 = sub_219BF6214();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134217984;
    sub_219BF5CD4();
    *(v3 + 4) = v4;
    _os_log_impl(&dword_2186C1000, oslog, v2, "Completed refreshing all shortcuts, duration=%f", v3, 0xCu);
    MEMORY[0x21CECF960](v3, -1, -1);
  }
}

void sub_218B5EFAC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s8ResolvedVMa(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v40[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Shortcut(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v40[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218B6BAA4(a1, v13, type metadata accessor for Shortcut);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_218B6BC70(v13, v10, _s8ResolvedVMa);
    sub_219BDBD24();
    v26 = objc_allocWithZone(MEMORY[0x277D312E8]);
    v27 = sub_219BF53D4();
    v28 = sub_219BDBC04();
    v13 = [v26 initWithType:0 identifier:v27 dateAdded:v28 status:0];

    (*(v5 + 8))(v7, v4);
    [*(v2 + OBJC_IVAR____TtC7NewsUI216ShortcutsService_shortcutCategoryList) addShortcutCategory_];
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI216ShortcutsService_cacheManager), *(v2 + OBJC_IVAR____TtC7NewsUI216ShortcutsService_cacheManager + 24));
    v19 = &off_282A2FB38;
    v11 = &off_282A2FB58;
    v29 = off_282A2FB58;
    v30 = type metadata accessor for CachedShortcutsManager();
    v29(v10, v30);

    sub_218B6BC10(v10, _s8ResolvedVMa);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v31 = *(v2 + OBJC_IVAR____TtC7NewsUI216ShortcutsService_subscriptionController);
    v19 = [*v13 identifier];
    if (!v19)
    {
      sub_219BF5414();
      v13 = v32;
      v19 = sub_219BF53D4();
    }

    [v31 addIgnoredSubscriptionForTagID_];
    swift_unknownObjectRelease();

    goto LABEL_13;
  }

  v15 = *v13;
  v16 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI216ShortcutsService_favoritedShortcutService), *(v2 + OBJC_IVAR____TtC7NewsUI216ShortcutsService_favoritedShortcutService + 24));
  v17 = [v15 identifier];
  v13 = sub_219BF5414();
  v19 = v18;

  v11 = *v16;
  if (!sub_218C556E8(v13, v19))
  {
    swift_unknownObjectRelease();

    goto LABEL_13;
  }

  if (qword_280EE5F18 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v20 = sub_219BE5434();
    __swift_project_value_buffer(v20, qword_280F62538);

    v21 = sub_219BE5414();
    v22 = sub_219BF6214();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v40[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_2186D1058(v13, v19, v40);
      _os_log_impl(&dword_2186C1000, v21, v22, "Removed favorited shortcut=%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x21CECF960](v24, -1, -1);
      MEMORY[0x21CECF960](v23, -1, -1);
    }

    v25 = *(v11 + OBJC_IVAR____TtC7NewsUI215ShortcutService_shortcutList);
    v13 = sub_219BF53D4();
    [v25 removeShortcutWithIdentifier_];
    swift_unknownObjectRelease();

LABEL_13:
    v33 = OBJC_IVAR____TtC7NewsUI216ShortcutsService_observers;
    swift_beginAccess();
    v2 = *(v2 + v33);
    if (v2 >> 62)
    {
      v34 = sub_219BF7214();
      if (!v34)
      {
        return;
      }
    }

    else
    {
      v34 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v34)
      {
        return;
      }
    }

    if (v34 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  for (i = 0; i != v34; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x21CECE0F0](i, v2);
    }

    else
    {
      v36 = *(v2 + 8 * i + 32);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v37 = *(v36 + 24);
      ObjectType = swift_getObjectType();
      (*(v37 + 8))(a1, ObjectType, v37);
      swift_unknownObjectRelease();
    }
  }
}

void sub_218B5F5B0(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1 >> 62)
  {
    v4 = sub_219BF7214();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    sub_219BF73F4();
    if (v4 < 0)
    {
      __break(1u);
      goto LABEL_27;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = v5 + 1;
        MEMORY[0x21CECE0F0]();
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        v5 = v6;
      }

      while (v4 != v6);
    }

    else
    {
      v7 = v3 + 32;
      do
      {
        v7 += 8;
        swift_unknownObjectRetain();
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        --v4;
      }

      while (v4);
    }
  }

  v8 = OBJC_IVAR____TtC7NewsUI216ShortcutsService_observers;
  swift_beginAccess();
  v9 = *(a2 + v8);
  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_13;
    }

LABEL_25:

    return;
  }

  v10 = sub_219BF7214();
  if (!v10)
  {
    goto LABEL_25;
  }

LABEL_13:
  if (v10 >= 1)
  {
    v18 = v9 & 0xC000000000000001;

    for (i = 0; i != v10; ++i)
    {
      if (v18)
      {
        v12 = MEMORY[0x21CECE0F0](i, v9);
      }

      else
      {
        v12 = *(v9 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v13 = *(v12 + 24);
        ObjectType = swift_getObjectType();
        v15 = v9;
        v16 = *(v13 + 16);

        v16(v17, 1, ObjectType, v13);
        v9 = v15;
        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_218B5F9A4(uint64_t a1)
{
  swift_getObjectType();
  sub_2186D6710(0, &qword_280E8E080, &protocolRef_FCNewsAppConfiguration);
  sub_219BE3204();
  v1 = sub_219BE2E54();
  sub_219BE3084();

  v2 = sub_219BE2E54();
  v3 = sub_219BE2F64();

  return v3;
}

uint64_t sub_218B5FAAC(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v9 = *a1;
  v10 = v2;
  v11 = a1[2];
  sub_219BE3204();
  v12 = v10;
  v13 = v11;
  v3 = swift_allocObject();
  v4 = v10;
  v3[1] = v9;
  v3[2] = v4;
  v3[3] = v11;
  sub_2189D2C04(&v12, v8);
  sub_2189D2C04(&v13, v8);
  v5 = sub_219BE2E54();
  v6 = sub_219BE3054();

  return v6;
}

uint64_t sub_218B5FBB0(uint64_t *a1, void *a2, uint64_t a3)
{
  v19 = a1[1];
  v20 = *a1;
  v5 = a1[3];
  v6 = a1[5];
  v17 = a1[4];
  v18 = a1[2];
  v22 = *(a1 + 3);
  v23 = a1[8];
  v21[0] = v20;
  v21[1] = v19;
  v21[2] = v18;
  v21[3] = v5;
  v21[4] = v17;
  v21[5] = v6;

  sub_218B5FEC8(v21, a3);
  sub_218B6BFAC(0, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);
  sub_219BE3204();
  v7 = sub_219BE2E54();
  sub_218B68EEC(0);
  sub_219BE2F64();

  v8 = sub_219BE2E54();
  sub_219BE3054();

  sub_219BE5014();
  sub_219BE3204();
  v9 = sub_219BE2E54();
  type metadata accessor for ShortcutsService();
  sub_219BE2F84();

  v10 = sub_219BE2E54();
  sub_219BE3054();

  sub_219BE31B4();

  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = v20;
  v11[4] = v19;
  v11[5] = v18;
  v11[6] = v5;
  v11[7] = v17;
  v11[8] = v6;
  v12 = a2;
  v13 = sub_219BE2E54();
  sub_219BE2F74();

  v14 = sub_219BE2E54();
  v15 = sub_219BE2FD4();

  return v15;
}

void sub_218B5FEC8(void *a1, uint64_t a2)
{
  v46 = a2;
  v4 = type metadata accessor for CuratedShortcut(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v53 = &v43 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = (&v43 - v10);
  v12 = a1[6];
  v13 = a1[7];
  *&v56 = sub_2197E2C4C(a1[8]);
  sub_218B6A690(0);
  sub_218B6BE94(&qword_27CC0E370, sub_218B6A690, MEMORY[0x277D83970]);
  v14 = sub_219BF56E4();

  v15 = *(v2 + OBJC_IVAR____TtC7NewsUI216ShortcutsService_cacheManager + 24);
  v44 = (v2 + OBJC_IVAR____TtC7NewsUI216ShortcutsService_cacheManager);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI216ShortcutsService_cacheManager), v15);
  v49 = v13;
  v50 = v12;
  *&v56 = v12;
  *(&v56 + 1) = v13;
  v16 = off_282A2FB70;
  v17 = type metadata accessor for CachedShortcutsManager();
  v16(&v56, v17);
  v45 = v2;
  v18 = *(v2 + OBJC_IVAR____TtC7NewsUI216ShortcutsService_subscriptionController);
  v19 = [v18 mutedTagIDs];
  if (v19)
  {
    v20 = v19;
    v21 = sub_219BF5924();
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v22 = [v18 ignoredTagIDs];
  if (v22)
  {
    v23 = v22;
    v24 = sub_219BF5924();
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  swift_getObjectType();
  v25 = sub_219BF6A54();
  v26 = sub_218C3D968(v25);

  *&v56 = v21;
  sub_2191ED3E8(v24);
  v54 = sub_218845F78(v56);

  v27 = MEMORY[0x277D84F90];
  v52 = *(v14 + 16);
  if (v52)
  {
    v28 = 0;
    v47 = v26;
    v48 = v5;
    v29 = v46;
    while (v28 < *(v14 + 16))
    {
      v30 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v31 = *(v5 + 72);
      sub_218B6BAA4(v14 + v30 + v31 * v28, v11, type metadata accessor for CuratedShortcut);
      if (sub_219207C94(v11, v54, v29, v26))
      {
        sub_218B6BC70(v11, v53, type metadata accessor for CuratedShortcut);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v56 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_218C34DE0(0, *(v27 + 16) + 1, 1);
          v29 = v46;
          v27 = v56;
        }

        v34 = *(v27 + 16);
        v33 = *(v27 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_218C34DE0((v33 > 1), v34 + 1, 1);
          v29 = v46;
          v27 = v56;
        }

        *(v27 + 16) = v34 + 1;
        sub_218B6BC70(v53, v27 + v30 + v34 * v31, type metadata accessor for CuratedShortcut);
        v26 = v47;
        v5 = v48;
      }

      else
      {
        sub_218B6BC10(v11, type metadata accessor for CuratedShortcut);
      }

      if (v52 == ++v28)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_18:

  __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  sub_2189AC788(v27);
  v35 = *(v27 + 16);
  if (v35)
  {
    *&v56 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v36 = 0;
    v37 = v27 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = v45;
    while (v36 < *(v27 + 16))
    {
      v38 = v51;
      sub_218B6BAA4(v37 + *(v5 + 72) * v36, v51, type metadata accessor for CuratedShortcut);
      sub_218B61DB0(v38, v11, v50, v49, &v55);
      sub_218B6BC10(v38, type metadata accessor for CuratedShortcut);
      ++v36;
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      if (v35 == v36)
      {

        v40 = v56;
        goto LABEL_24;
      }
    }

LABEL_26:
    __break(1u);

    sub_218B6BC10(v11, type metadata accessor for CuratedShortcut);

    __break(1u);

    __break(1u);
    return;
  }

  v40 = MEMORY[0x277D84F90];
LABEL_24:
  MEMORY[0x28223BE20](v39);
  *(&v43 - 2) = v40;
  sub_218B6A6E0(0);
  sub_219BE3204();

  v41 = sub_219BE2E54();
  sub_219BE3054();

  v42 = sub_219BE2E54();
  sub_218B68EEC(0);
  sub_219BE2F64();
}

uint64_t sub_218B60554@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v77 = a3;
  v83 = a2;
  v79 = _s8ResolvedVMa(0);
  MEMORY[0x28223BE20](v79);
  v78 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Shortcut(0);
  v80 = *(v9 - 8);
  v81 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = (&v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = &v66 - v13;
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[2];
  if (qword_280EE5F18 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v18 = sub_219BE5434();
    __swift_project_value_buffer(v18, qword_280F62538);

    v19 = sub_219BE5414();
    v20 = sub_219BF6214();
    v21 = os_log_type_enabled(v19, v20);
    v75 = v5;
    if (v21)
    {
      v22 = a4;
      v23 = v15;
      v24 = swift_slowAlloc();
      *v24 = 134218496;
      *(v24 + 4) = *(v23 + 16);
      *(v24 + 12) = 2048;
      *(v24 + 14) = *(v16 + 16);
      *(v24 + 22) = 2048;
      *(v24 + 24) = *(v17 + 16);

      _os_log_impl(&dword_2186C1000, v19, v20, "Fetched shortcuts, curated=%ld, favorited=%ld, suggested=%ld", v24, 0x20u);
      v25 = v24;
      v15 = v23;
      a4 = v22;
      v5 = v75;
      MEMORY[0x21CECF960](v25, -1, -1);
    }

    else
    {
    }

    v26 = sub_218B68F98(v15, v16, v17);
    v73 = v27;
    v74 = v28;
    v29 = sub_219A780C0(*v77, v26);
    v82 = v30;
    v32 = v31;
    v16 = v33;
    v34 = (v83 + OBJC_IVAR____TtC7NewsUI216ShortcutsService_cacheManager);
    sub_218718690(v83 + OBJC_IVAR____TtC7NewsUI216ShortcutsService_cacheManager, v84);
    v35 = __swift_project_boxed_opaque_existential_1(v84, v84[3]);
    v72 = v16;
    v76 = v32;
    v83 = (v16 >> 1);
    v36 = __OFSUB__(v16 >> 1, v32);
    v15 = (v16 >> 1) - v32;
    if (v36)
    {
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v69 = v34;
    v70 = v35;
    v37 = MEMORY[0x277D84F90];
    v71 = v15;
    if (!v15)
    {
      break;
    }

    v85 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v15 & ~(v15 >> 63), 0);
    if (v15 < 0)
    {
      goto LABEL_43;
    }

    v67 = v29;
    v68 = a4;
    v37 = v85;
    a4 = v76;
    if (v76 <= v83)
    {
      v38 = v83;
    }

    else
    {
      v38 = v76;
    }

    while (v38 != a4)
    {
      sub_218B6BAA4(v82 + *(v80 + 72) * a4, v14, type metadata accessor for Shortcut);
      sub_218B6BAA4(v14, v11, type metadata accessor for Shortcut);
      if (swift_getEnumCaseMultiPayload())
      {
        v41 = [*v11 identifier];
        v17 = sub_219BF5414();
        v16 = v42;
        swift_unknownObjectRelease();
      }

      else
      {
        v39 = v78;
        sub_218B6BC70(v11, v78, _s8ResolvedVMa);
        v40 = (v39 + *(v79 + 24));
        v17 = *v40;
        v16 = v40[1];

        sub_218B6BC10(v39, _s8ResolvedVMa);
      }

      sub_218B6BC10(v14, type metadata accessor for Shortcut);
      v85 = v37;
      v5 = *(v37 + 16);
      v43 = *(v37 + 24);
      v15 = v5 + 1;
      if (v5 >= v43 >> 1)
      {
        sub_21870B65C((v43 > 1), v5 + 1, 1);
        v37 = v85;
      }

      *(v37 + 16) = v15;
      v44 = v37 + 16 * v5;
      *(v44 + 32) = v17;
      *(v44 + 40) = v16;
      a4 = (a4 + 1);
      if (v83 == a4)
      {
        a4 = v68;
        v29 = v67;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_41:
    swift_once();
  }

LABEL_19:
  v15 = v72;
  v45 = sub_218845F78(v37);

  sub_2189ABA08(v45);

  __swift_destroy_boxed_opaque_existential_1(v84);
  v46 = v71;
  if ((v15 & 1) == 0)
  {
    swift_unknownObjectRetain();
LABEL_21:
    sub_218B67714(v29, v82, v76, v15, sub_218B69E34, type metadata accessor for Shortcut);
    v48 = v47;
    goto LABEL_27;
  }

  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v49 = swift_dynamicCastClass();
  if (!v49)
  {
    swift_unknownObjectRelease();
    v49 = MEMORY[0x277D84F90];
  }

  v50 = *(v49 + 16);

  if (v50 != v46)
  {
LABEL_44:
    swift_unknownObjectRelease();
    goto LABEL_21;
  }

  v48 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v48)
  {
    goto LABEL_28;
  }

  v48 = MEMORY[0x277D84F90];
LABEL_27:
  swift_unknownObjectRelease();
LABEL_28:
  v84[0] = v48;
  sub_2191EDD40(v73);
  v54 = sub_219A780C0(v77[1], v74);
  if ((v53 & 1) == 0)
  {
LABEL_29:
    sub_218B67714(v54, v51, v52, v53, sub_218B69E34, type metadata accessor for Shortcut);
    v56 = v55;
    goto LABEL_36;
  }

  v57 = v53;
  v58 = v52;
  v59 = v51;
  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v60 = swift_dynamicCastClass();
  if (!v60)
  {
    swift_unknownObjectRelease();
    v60 = MEMORY[0x277D84F90];
  }

  v61 = *(v60 + 16);

  if (__OFSUB__(v57 >> 1, v58))
  {
    __break(1u);
    goto LABEL_46;
  }

  if (v61 != (v57 >> 1) - v58)
  {
LABEL_46:
    swift_unknownObjectRelease();
    v53 = v57;
    v52 = v58;
    v51 = v59;
    goto LABEL_29;
  }

  v56 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v56)
  {
    v56 = MEMORY[0x277D84F90];
LABEL_36:
    swift_unknownObjectRelease();
  }

  sub_2191EDD40(v62);
  __swift_project_boxed_opaque_existential_1(v69, v69[3]);
  sub_2189ACC3C(v56);

  v63 = v84[0];
  if (*(v84[0] + 16))
  {
    result = swift_unknownObjectRelease();
    *a4 = v63;
  }

  else
  {

    sub_218B69DE0();
    swift_allocError();
    *v65 = xmmword_219C1D060;
    *(v65 + 16) = 4;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_218B60D04(void *a1, const char *a2, int8x8_t a3, ...)
{
  if (qword_280EE5F18 != -1)
  {
    swift_once();
  }

  v6 = sub_219BE5434();
  __swift_project_value_buffer(v6, qword_280F62538);
  v7 = a1;
  oslog = sub_219BE5414();
  v8 = sub_219BF61F4();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = vuzp1_s8(a3, v11).u32[0];
    v12 = a1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v13;
    *v10 = v13;
    _os_log_impl(&dword_2186C1000, oslog, v8, a2, v9, 0xCu);
    sub_218B6BC10(v10, sub_2189B3F3C);
    MEMORY[0x21CECF960](v10, -1, -1);
    MEMORY[0x21CECF960](v9, -1, -1);
  }
}

uint64_t sub_218B60E74(uint64_t a1, __n128 *a2)
{
  v15 = a2[1];
  v2 = v15.n128_u64[1];
  if (v15.n128_u64[1] && (v14 = a2[2], v5 = v14.n128_u64[1], v4 = v15.n128_u64[0], v14.n128_u64[1]))
  {
    MEMORY[0x28223BE20](a1);
    v12 = v14;
    sub_2189D2C04(&v15, v13);
    sub_2189D2C04(&v14, v13);
    sub_218B6B254(0);
    sub_219BE3204();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v2;
    *(v6 + 32) = __PAIR128__(v5, v12.n128_u64[0]);
    v7 = a2[1];
    *(v6 + 48) = *a2;
    *(v6 + 64) = v7;
    *(v6 + 80) = a2[2];
    sub_2189D2C04(&v15, v13);
    sub_2189D2C04(&v14, v13);
    v8 = sub_219BE2E54();
    type metadata accessor for ShortcutsService();
    v9 = sub_219BE2F84();

    return v9;
  }

  else
  {
    sub_218B69DE0();
    swift_allocError();
    *v11 = xmmword_219C14CF0;
    *(v11 + 16) = 4;
    sub_218B6C010(0, &qword_27CC0E398, &type metadata for ShortcutsService.ResourceFetchResult, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE2FF4();
  }
}

uint64_t sub_218B61088(void *a1, _OWORD *a2)
{
  if (qword_280EE5F18 != -1)
  {
    swift_once();
  }

  v4 = sub_219BE5434();
  __swift_project_value_buffer(v4, qword_280F62538);
  v5 = a1;
  v6 = sub_219BE5414();
  v7 = sub_219BF61F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = a1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2186C1000, v6, v7, "Failed to fetch shortcuts resource, error=%{public}@", v8, 0xCu);
    sub_218B6BC10(v9, sub_2189B3F3C);
    MEMORY[0x21CECF960](v9, -1, -1);
    MEMORY[0x21CECF960](v8, -1, -1);
  }

  v12 = a2[2];
  v20 = a2[1];
  v19 = v12;
  sub_2189D2C04(&v20, v16);
  sub_2189D2C04(&v19, v16);
  v13 = MEMORY[0x277D84F90];
  ShortcutsConfigResource.init(categories:)(MEMORY[0x277D84F90]);
  v14 = a2[1];
  v16[0] = *a2;
  v16[1] = v14;
  v16[2] = a2[2];
  v16[3] = v18;
  v17 = v13;
  sub_218B6C010(0, &qword_27CC0E398, &type metadata for ShortcutsService.ResourceFetchResult, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

id sub_218B61288@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_280EE5F18 != -1)
  {
    swift_once();
  }

  v6 = sub_219BE5434();
  __swift_project_value_buffer(v6, qword_280F62538);
  v7 = a1;
  v8 = sub_219BE5414();
  v9 = sub_219BF61F4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    v12 = a1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_2186C1000, v8, v9, "Failed to fetch app config in shortcuts service, falling back to cached config, error=%{public}@", v10, 0xCu);
    sub_218B6BC10(v11, sub_2189B3F3C);
    MEMORY[0x21CECF960](v11, -1, -1);
    MEMORY[0x21CECF960](v10, -1, -1);
  }

  result = [*(a2 + OBJC_IVAR____TtC7NewsUI216ShortcutsService_appConfigManager) possiblyUnfetchedAppConfiguration];
  *a3 = result;
  return result;
}

void *sub_218B61414(void *a1, uint64_t a2)
{
  v3 = swift_unknownObjectRetain();
  result = sub_218B6A480(v3, &v5);
  if (!v2)
  {
    sub_218B6C010(0, &qword_27CC0E3B0, &type metadata for ShortcutsService.AppConfig, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  return result;
}

uint64_t sub_218B614AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_218B6B398(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (a1 + OBJC_IVAR____TtC7NewsUI216ShortcutsService_resourceService);
  v14 = *(a1 + OBJC_IVAR____TtC7NewsUI216ShortcutsService_resourceService + 24);
  v21[1] = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v14);
  sub_218B6C010(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_219C09EC0;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  *(v15 + 48) = a4;
  *(v15 + 56) = a5;
  *v12 = 0x4082C00000000000;
  v16 = *MEMORY[0x277D6CA48];
  v17 = sub_219BE1B34();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v12, v16, v17);
  (*(v18 + 56))(v12, 0, 1, v17);

  v19 = sub_219BF2984();

  sub_218B6BC10(v12, sub_218B6B398);
  return v19;
}

char *sub_218B616B4(uint64_t *a1, void (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7)
{
  v74 = a7;
  v76 = a2;
  v13 = sub_219BDB954();
  v14 = *(v13 - 8);
  v77 = v13;
  v78 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v75 = &v69 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v69 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v69 - v23;
  v25 = *a1;
  if (*(v25 + 16) && (v26 = sub_21870F700(a3, a4), (v27 & 1) != 0))
  {
    v28 = *(v25 + 16);
    v29 = *(*(v25 + 56) + 8 * v26);
    if (v28 && (v30 = sub_21870F700(a5, a6), (v31 & 1) != 0))
    {
      v32 = *(*(v25 + 56) + 8 * v30);
      v33 = qword_280EE5F18;
      v34 = v32;
      if (v33 != -1)
      {
        swift_once();
      }

      v73 = v29;
      v35 = sub_219BE5434();
      __swift_project_value_buffer(v35, qword_280F62538);
      v36 = sub_219BE5414();
      v37 = sub_219BF6214();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_2186C1000, v36, v37, "Curated shortcuts config service resolved resources", v38, 2u);
        MEMORY[0x21CECF960](v38, -1, -1);
      }

      v39 = [v34 fileURL];
      if (!v39)
      {
        sub_218B69DE0();
        swift_allocError();
        *v48 = 0;
        *(v48 + 8) = 0;
        *(v48 + 16) = 4;
        swift_willThrow();

        goto LABEL_15;
      }

      v72 = v34;
      v40 = v39;
      sub_219BDB8B4();

      v41 = v77;
      v42 = v78;
      v43 = *(v78 + 32);
      v43(v24, v21, v77);
      v44 = sub_219BDB974();
      if (v7)
      {
        (*(v42 + 8))(v24, v41);

LABEL_15:
        return v21;
      }

      v50 = v44;
      v51 = v45;
      sub_218B6B2F0();
      sub_219BE1974();
      v52 = *(v78 + 8);
      v53 = v24;
      v54 = v77;
      v78 += 8;
      v76 = v52;
      v52(v53, v77);
      sub_2186C6190(v50, v51);
      v21 = v86;
      v55 = v87;
      v56 = v73;
      v57 = [v73 fileURL];
      if (v57)
      {
        v70 = v55;
        v71 = v21;
        v58 = v57;
        sub_219BDB8B4();

        v59 = v75;
        v43(v75, v16, v54);
        v60 = v59;
        v62 = sub_219BDB974();
        v64 = v63;
        sub_218B6B344();
        sub_219BE1974();
        v65 = v72;
        v66 = v70;
        v76(v60, v77);
        sub_2186C6190(v62, v64);
        v67 = *v74;
        v68 = v74[1];
        v88 = v74[2];
        v89 = v68;
        v80 = v67;
        v81 = v68;
        v82 = v74[2];
        v83 = v71;
        v84 = v66;
        v85 = v90;
        sub_218B6C010(0, &qword_27CC0E398, &type metadata for ShortcutsService.ResourceFetchResult, MEMORY[0x277D6CF30]);
        swift_allocObject();
        sub_2189D2C04(&v89, v79);
        sub_2189D2C04(&v88, v79);
        v21 = sub_219BE3014();
      }

      else
      {
        sub_218B69DE0();
        swift_allocError();
        *v61 = 0;
        *(v61 + 8) = 0;
        *(v61 + 16) = 4;
        swift_willThrow();
      }
    }

    else
    {
      sub_218B69DE0();
      swift_allocError();
      *v47 = a5;
      *(v47 + 8) = a6;
      *(v47 + 16) = 3;
      swift_willThrow();
    }
  }

  else
  {
    sub_218B69DE0();
    swift_allocError();
    *v46 = a3;
    *(v46 + 8) = a4;
    *(v46 + 16) = 3;
    swift_willThrow();
  }

  return v21;
}

uint64_t sub_218B61DB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v133 = a4;
  v134 = a5;
  v130 = a2;
  v131 = a3;
  v129 = type metadata accessor for Shortcut(0);
  MEMORY[0x28223BE20](v129);
  v124 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CuratedShortcut.Identifier(0);
  MEMORY[0x28223BE20](v7 - 8);
  v120 = (&v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v121 = _s8ResolvedVMa(0);
  MEMORY[0x28223BE20](v121);
  v123 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ShortcutCategory(0);
  v117 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v119 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v116 = &v115 - v13;
  MEMORY[0x28223BE20](v14);
  v122 = &v115 - v15;
  v16 = _s7URLDataVMa(0);
  MEMORY[0x28223BE20](v16 - 8);
  v118 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v125 = &v115 - v19;
  v20 = _s10PuzzleDataVMa(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = _s14PuzzleFeedDataVMa(0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = (&v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = _s7TagDataVMa(0);
  MEMORY[0x28223BE20](v26 - 8);
  v126 = &v115 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for CuratedShortcut(0);
  v29 = v28 - 8;
  v127 = *(v28 - 8);
  v30 = *(v127 + 64);
  MEMORY[0x28223BE20](v28);
  v128 = &v115 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = _s9IssueDataVMa(0);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v115 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = _s12HeadlineDataVMa(0);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v115 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = _s5ModelOMa(0);
  MEMORY[0x28223BE20](v37);
  v39 = &v115 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v29 + 28);
  v132 = a1;
  sub_218B6BAA4(a1 + v40, v39, _s5ModelOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v70 = sub_218B6BC70(v39, v36, _s12HeadlineDataVMa);
      MEMORY[0x28223BE20](v70);
      *(&v115 - 6) = v130;
      *(&v115 - 5) = v71;
      v72 = v131;
      *(&v115 - 4) = v73;
      *(&v115 - 3) = v72;
      v74 = v132;
      *(&v115 - 2) = v133;
      *(&v115 - 1) = v74;
      sub_218B6BFAC(0, &qword_27CC0E390, type metadata accessor for Shortcut, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v58 = sub_219BE30B4();
      v59 = _s12HeadlineDataVMa;
      v60 = v36;
      goto LABEL_20;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v75 = sub_218B6BC70(v39, v33, _s9IssueDataVMa);
      MEMORY[0x28223BE20](v75);
      *(&v115 - 4) = v130;
      *(&v115 - 3) = v76;
      *(&v115 - 2) = v77;
      sub_2186C6148(0, &qword_280E8DAB0, 0x277D310B0);
      sub_219BE3204();
      v78 = v128;
      sub_218B6BAA4(v132, v128, type metadata accessor for CuratedShortcut);
      v79 = (*(v127 + 80) + 32) & ~*(v127 + 80);
      v80 = swift_allocObject();
      v81 = v133;
      *(v80 + 16) = v131;
      *(v80 + 24) = v81;
      sub_218B6BC70(v78, v80 + v79, type metadata accessor for CuratedShortcut);

      v82 = sub_219BE2E54();
      type metadata accessor for ShortcutsService();
      v58 = sub_219BE2F94();

      v59 = _s9IssueDataVMa;
      v60 = v33;
      goto LABEL_20;
    }

    v42 = v126;
    v51 = sub_218B6BC70(v39, v126, _s7TagDataVMa);
    MEMORY[0x28223BE20](v51);
    *(&v115 - 4) = v130;
    *(&v115 - 3) = v52;
    *(&v115 - 2) = v53;
    type metadata accessor for TagModel();
    sub_219BE3204();
    v54 = v128;
    sub_218B6BAA4(v132, v128, type metadata accessor for CuratedShortcut);
    v55 = (*(v127 + 80) + 32) & ~*(v127 + 80);
    v56 = swift_allocObject();
    v57 = v133;
    *(v56 + 16) = v131;
    *(v56 + 24) = v57;
    sub_218B6BC70(v54, v56 + v55, type metadata accessor for CuratedShortcut);

    v50 = sub_219BE2E54();
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload != 3)
    {
      v83 = sub_218B6BC70(v39, v25, _s14PuzzleFeedDataVMa);
      v85 = *v25;
      v84 = v25[1];
      MEMORY[0x28223BE20](v83);
      *(&v115 - 4) = v130;
      *(&v115 - 3) = v85;
      *(&v115 - 2) = v84;
      sub_218B6B09C(0, &qword_280E8EBA0, &qword_280E8E130, &protocolRef_FCPuzzleTypeProviding, MEMORY[0x277D83940]);
      sub_219BE3204();
      v86 = v128;
      sub_218B6BAA4(v132, v128, type metadata accessor for CuratedShortcut);
      v87 = (*(v127 + 80) + 48) & ~*(v127 + 80);
      v88 = swift_allocObject();
      v88[2] = v85;
      v88[3] = v84;
      v89 = v133;
      v88[4] = v131;
      v88[5] = v89;
      sub_218B6BC70(v86, v88 + v87, type metadata accessor for CuratedShortcut);

      v90 = sub_219BE2E54();
      v58 = sub_219BE2F74();

      v59 = _s14PuzzleFeedDataVMa;
      v60 = v25;
      goto LABEL_20;
    }

    v42 = v126;
    v43 = sub_218B6BC70(v39, v126, _s7TagDataVMa);
    MEMORY[0x28223BE20](v43);
    *(&v115 - 4) = v130;
    *(&v115 - 3) = v44;
    *(&v115 - 2) = v45;
    sub_2186D6710(0, &qword_280E8DFF0, &protocolRef_FCSportsEventProviding);
    sub_219BE3204();
    v46 = v128;
    sub_218B6BAA4(v132, v128, type metadata accessor for CuratedShortcut);
    v47 = (*(v127 + 80) + 32) & ~*(v127 + 80);
    v48 = swift_allocObject();
    v49 = v133;
    *(v48 + 16) = v131;
    *(v48 + 24) = v49;
    sub_218B6BC70(v46, v48 + v47, type metadata accessor for CuratedShortcut);

    v50 = sub_219BE2E54();
LABEL_8:
    v58 = sub_219BE2F74();

    v59 = _s7TagDataVMa;
    v60 = v42;
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v61 = sub_218B6BC70(v39, v22, _s10PuzzleDataVMa);
    MEMORY[0x28223BE20](v61);
    *(&v115 - 4) = v130;
    *(&v115 - 3) = v62;
    *(&v115 - 2) = v63;
    sub_2186D6710(0, &qword_280E8E430, &protocolRef_FCPuzzleProviding);
    sub_219BE3204();
    v64 = v128;
    sub_218B6BAA4(v132, v128, type metadata accessor for CuratedShortcut);
    v65 = (*(v127 + 80) + 32) & ~*(v127 + 80);
    v66 = swift_allocObject();
    v67 = v133;
    *(v66 + 16) = v131;
    *(v66 + 24) = v67;
    sub_218B6BC70(v64, v66 + v65, type metadata accessor for CuratedShortcut);

    v68 = sub_219BE2E54();
    type metadata accessor for ShortcutsService();
    v58 = sub_219BE2F94();

    v69 = _s10PuzzleDataVMa;
  }

  else
  {
    v22 = v125;
    sub_218B6BC70(v39, v125, _s7URLDataVMa);
    v92 = v132;
    v91 = v133;
    v94 = *v132;
    v93 = v132[1];
    if (*(v133 + 16) && (v95 = sub_21870F700(*v132, v132[1]), (v96 & 1) != 0))
    {
      v97 = *(v91 + 56);
      v98 = v116;
      sub_218B6BAA4(v97 + *(v117 + 72) * v95, v116, type metadata accessor for ShortcutCategory);
      v99 = v122;
      sub_218B6BC70(v98, v122, type metadata accessor for ShortcutCategory);
      v100 = v92;
      v101 = v128;
      sub_218B6BAA4(v100, v128, type metadata accessor for CuratedShortcut);
      v102 = v119;
      sub_218B6BAA4(v99, v119, type metadata accessor for ShortcutCategory);
      v103 = v118;
      sub_218B6BAA4(v22, v118, _s7URLDataVMa);
      v104 = v123;
      sub_218B6BAA4(v102, v123, type metadata accessor for ShortcutCategory);
      v105 = v120;
      sub_21993568C(v120);
      v106 = sub_21993639C();
      v108 = v107;
      sub_218B6BC10(v105, type metadata accessor for CuratedShortcut.Identifier);
      sub_218B6BC10(v102, type metadata accessor for ShortcutCategory);
      sub_218B6BC10(v101, type metadata accessor for CuratedShortcut);
      v109 = v121;
      v110 = (v104 + *(v121 + 24));
      *v110 = v106;
      v110[1] = v108;
      v111 = *(v109 + 20);
      v112 = sub_219BDB954();
      (*(*(v112 - 8) + 32))(v104 + v111, v103, v112);
      _s13ResolvedModelOMa(0);
      swift_storeEnumTagMultiPayload();
      sub_218B6BAA4(v104, v124, _s8ResolvedVMa);
      swift_storeEnumTagMultiPayload();
      sub_218B6BFAC(0, &qword_27CC0E390, type metadata accessor for Shortcut, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v58 = sub_219BE3014();
      sub_218B6BC10(v104, _s8ResolvedVMa);
      sub_218B6BC10(v99, type metadata accessor for ShortcutCategory);
    }

    else
    {
      sub_218B69DE0();
      swift_allocError();
      *v113 = v94;
      *(v113 + 8) = v93;
      *(v113 + 16) = 2;
      sub_218B6BFAC(0, &qword_27CC0E390, type metadata accessor for Shortcut, MEMORY[0x277D6CF30]);
      swift_allocObject();

      v58 = sub_219BE2FF4();
    }

    v69 = _s7URLDataVMa;
  }

  v59 = v69;
  v60 = v22;
LABEL_20:
  result = sub_218B6BC10(v60, v59);
  *v134 = v58;
  return result;
}

uint64_t sub_218B62E18(uint64_t a1)
{
  v1 = sub_219BE2E54();
  type metadata accessor for Shortcut(0);
  v2 = sub_219BE3314();

  return v2;
}

uint64_t sub_218B62E74(void *a1)
{
  sub_218B6BFAC(0, &qword_27CC0E380, sub_218A450F0, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09BA0;
  *(v2 + 32) = a1;
  sub_218B6BFAC(0, &qword_27CC0E388, sub_218B6A6E0, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v3 = a1;
  return sub_219BE3014();
}

uint64_t sub_218B62F68(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v8 = *v3;
      v9 = *v3;
      if (qword_280EE5F18 != -1)
      {
        swift_once();
      }

      v10 = sub_219BE5434();
      __swift_project_value_buffer(v10, qword_280F62538);
      v11 = v8;
      v12 = sub_219BE5414();
      v13 = sub_219BF61F4();

      if (os_log_type_enabled(v12, v13))
      {
        v4 = swift_slowAlloc();
        v5 = swift_slowAlloc();
        *v4 = 138543362;
        v6 = v8;
        v7 = _swift_stdlib_bridgeErrorToNSError();
        *(v4 + 4) = v7;
        *v5 = v7;
        _os_log_impl(&dword_2186C1000, v12, v13, "Failed to resolve shortcut promise, error=%{public}@", v4, 0xCu);
        sub_218B6BC10(v5, sub_2189B3F3C);
        MEMORY[0x21CECF960](v5, -1, -1);
        MEMORY[0x21CECF960](v4, -1, -1);
      }

      else
      {
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  sub_218B6BFAC(0, &unk_27CC0E358, sub_218B68EEC, MEMORY[0x277D6CF30]);
  swift_allocObject();

  return sub_219BE3014();
}

char *sub_218B63184(uint64_t a1)
{
  v1 = __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI216ShortcutsService_favoritedShortcutService), *(a1 + OBJC_IVAR____TtC7NewsUI216ShortcutsService_favoritedShortcutService + 24));
  v2 = sub_218C54F50(v1);
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    v7 = MEMORY[0x277D84F90];
LABEL_14:
    v21 = off_282A4D758;
    type metadata accessor for TagService();
    v22 = v21(v7);

    return v22;
  }

  v20 = v2;
  v3 = sub_219BF7214();
  v2 = v20;
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v4 = v2;
  v24 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v24;
    v8 = v4;
    v23 = v4 & 0xC000000000000001;
    v9 = v4;
    v10 = v3;
    do
    {
      if (v23)
      {
        v11 = MEMORY[0x21CECE0F0](v6, v8);
      }

      else
      {
        v11 = *(v8 + 8 * v6 + 32);
      }

      v12 = v11;
      v13 = [v11 identifier];
      v14 = sub_219BF5414();
      v16 = v15;

      v18 = *(v24 + 16);
      v17 = *(v24 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_21870B65C((v17 > 1), v18 + 1, 1);
      }

      ++v6;
      *(v24 + 16) = v18 + 1;
      v19 = v24 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v8 = v9;
    }

    while (v10 != v6);

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void *sub_218B63384(unint64_t *a1)
{
  v22 = type metadata accessor for Shortcut(0);
  v3 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v5 = (v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *a1;
  if (*a1 >> 62)
  {
    v18 = *a1;
    v19 = sub_219BF7214();
    v6 = v18;
    v7 = v19;
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
LABEL_12:
    v23 = v8;
    sub_218B6BFAC(0, &unk_27CC0E358, sub_218B68EEC, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  v9 = v6;
  v23 = MEMORY[0x277D84F90];
  result = sub_218C34348(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v8 = v23;
    v12 = v9;
    v20[1] = v1;
    v21 = v9 & 0xC000000000000001;
    v13 = v9;
    do
    {
      if (v21)
      {
        v14 = MEMORY[0x21CECE0F0](v11, v12);
      }

      else
      {
        v14 = *(v12 + 8 * v11 + 32);
      }

      v15 = *(v14 + 16);
      swift_unknownObjectRetain();

      *v5 = v15;
      swift_storeEnumTagMultiPayload();
      v23 = v8;
      v17 = *(v8 + 16);
      v16 = *(v8 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_218C34348((v16 > 1), v17 + 1, 1);
        v8 = v23;
      }

      ++v11;
      *(v8 + 16) = v17 + 1;
      sub_218B6BC70(v5, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v17, type metadata accessor for Shortcut);
      v12 = v13;
    }

    while (v7 != v11);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_218B63640()
{
  v0 = sub_219BE5004();
  v1 = sub_219BE4FF4();
  v5 = v0;
  sub_2191EDD88(v1);

  sub_218B663B4(&v5);

  MEMORY[0x28223BE20](v2);
  sub_218B6BFAC(0, &unk_27CC0E358, sub_218B68EEC, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v3 = sub_219BE30B4();

  return v3;
}

uint64_t sub_218B63788(void *a1, const char *a2, ...)
{
  if (qword_280EE5F18 != -1)
  {
    swift_once();
  }

  v4 = sub_219BE5434();
  __swift_project_value_buffer(v4, qword_280F62538);
  v5 = a1;
  v6 = sub_219BE5414();
  v7 = sub_219BF61F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = a1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2186C1000, v6, v7, a2, v8, 0xCu);
    sub_218B6BC10(v9, sub_2189B3F3C);
    MEMORY[0x21CECF960](v9, -1, -1);
    MEMORY[0x21CECF960](v8, -1, -1);
  }

  sub_218B6BFAC(0, &unk_27CC0E358, sub_218B68EEC, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

double sub_218B63944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v33 = a8;
  v34 = a1;
  v30 = a3;
  v31 = a4;
  v35 = a2;
  v32 = a9;
  v13 = type metadata accessor for CuratedShortcut(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v27[1] = __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC7NewsUI216ShortcutsService_headlineService), *(a5 + OBJC_IVAR____TtC7NewsUI216ShortcutsService_headlineService + 24));
  sub_218B6C010(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = a6;
  v29 = inited + 32;
  *(inited + 40) = a7;
  v28 = *MEMORY[0x277D30BA8];
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218B6BAA4(a10, v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CuratedShortcut);
  v18 = (*(v14 + 80) + 72) & ~*(v14 + 80);
  v19 = swift_allocObject();
  v20 = v30;
  v21 = v31;
  v19[2] = v17;
  v19[3] = v20;
  v19[4] = v21;
  v19[5] = a6;
  v23 = v32;
  v22 = v33;
  v19[6] = a7;
  v19[7] = v22;
  v19[8] = v23;
  sub_218B6BC70(v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for CuratedShortcut);
  v24 = (v19 + ((v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v25 = v35;
  *v24 = v34;
  v24[1] = v25;
  swift_bridgeObjectRetain_n();

  sub_218B6434C(inited, v28, sub_218B6AE60, v19);
  swift_setDeallocating();
  sub_2189AD3D8(v29);

  return result;
}

void sub_218B63BCC(unint64_t a1, char a2, uint64_t a3, void (*a4)(void *), uint64_t a5, void (*a6)(char *), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, void (*a11)(char *), uint64_t a12)
{
  v71 = a6;
  v72 = a7;
  v15 = type metadata accessor for Shortcut(0);
  MEMORY[0x28223BE20](v15);
  v17 = v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CuratedShortcut.Identifier(0);
  MEMORY[0x28223BE20](v18 - 8);
  v69 = (v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218B6AF30(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for CuratedShortcut(0);
  MEMORY[0x28223BE20](v68);
  v73 = v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = _s8ResolvedVMa(0);
  MEMORY[0x28223BE20](v67);
  v70 = v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ShortcutCategory(0);
  v66 = *(v25 - 8);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = v64 - v29;
  MEMORY[0x28223BE20](v31);
  v74 = v64 - v32;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v35 = sub_219BE1D94();
    sub_218B6BE94(&qword_27CC0B2F0, MEMORY[0x277D6CAF0], MEMORY[0x277D6CAF8]);
    v36 = swift_allocError();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D6CAE0], v35);
    a4(v36);

    return;
  }

  v34 = Strong;
  if (a2)
  {
    a4(a1);
LABEL_19:

    return;
  }

  if (a1 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_7;
    }

LABEL_18:
    sub_218B69DE0();
    v61 = swift_allocError();
    v62 = v72;
    *v63 = v71;
    *(v63 + 8) = v62;
    *(v63 + 16) = 0;

    a4(v61);

    goto LABEL_19;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

LABEL_7:
  v64[2] = v15;
  v65 = v17;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v72 = MEMORY[0x21CECE0F0](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v72 = *(a1 + 32);
  }

  v39 = *a10;
  v38 = a10[1];
  if (*(a9 + 16) && (v40 = sub_21870F700(*a10, a10[1]), (v41 & 1) != 0))
  {
    v64[1] = a12;
    v71 = a11;
    sub_218B6BAA4(*(a9 + 56) + *(v66 + 72) * v40, v30, type metadata accessor for ShortcutCategory);
    v42 = v30;
    v43 = v74;
    sub_218B6BC70(v42, v74, type metadata accessor for ShortcutCategory);
    sub_218B6BAA4(a10, v73, type metadata accessor for CuratedShortcut);
    sub_218B6BAA4(v43, v27, type metadata accessor for ShortcutCategory);
    __swift_project_boxed_opaque_existential_1(&v34[OBJC_IVAR____TtC7NewsUI216ShortcutsService_headlineModelFactory], *&v34[OBJC_IVAR____TtC7NewsUI216ShortcutsService_headlineModelFactory + 24]);
    v44 = *(v72 + 16);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_219BEEFB4();
      swift_unknownObjectRelease();
      v45 = 0;
    }

    else
    {
      v45 = 1;
    }

    v48 = sub_219BF0BD4();
    (*(*(v48 - 8) + 56))(v22, v45, 1, v48);
    v49 = sub_21983F764(v44, v22);
    sub_218B6BC10(v22, sub_218B6AF30);
    v50 = v70;
    sub_218B6BAA4(v27, v70, type metadata accessor for ShortcutCategory);
    v51 = v69;
    v52 = v73;
    sub_21993568C(v69);
    v53 = sub_21993639C();
    v55 = v54;
    sub_218B6BC10(v51, type metadata accessor for CuratedShortcut.Identifier);
    v56 = v67;
    v57 = (v50 + *(v67 + 24));
    *v57 = v53;
    v57[1] = v55;
    v58 = (v50 + *(v56 + 20));
    v59 = _s8HeadlineVMa(0);
    sub_21992EE60(v58 + *(v59 + 20));
    sub_218B6BC10(v27, type metadata accessor for ShortcutCategory);
    sub_218B6BC10(v52, type metadata accessor for CuratedShortcut);
    *v58 = v49;
    _s13ResolvedModelOMa(0);
    swift_storeEnumTagMultiPayload();
    v60 = v65;
    sub_218B6BAA4(v50, v65, _s8ResolvedVMa);
    swift_storeEnumTagMultiPayload();
    v71(v60);

    sub_218B6BC10(v60, type metadata accessor for Shortcut);
    sub_218B6BC10(v50, _s8ResolvedVMa);
    sub_218B6BC10(v74, type metadata accessor for ShortcutCategory);
  }

  else
  {
    sub_218B69DE0();
    v46 = swift_allocError();
    *v47 = v39;
    *(v47 + 8) = v38;
    *(v47 + 16) = 2;

    a4(v46);
  }
}

void sub_218B6434C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 56);
  sub_218ACE2AC(a1);
  v10 = objc_allocWithZone(MEMORY[0x277D30DE8]);
  v11 = sub_219BF5904();

  v12 = sub_219BF5904();
  v13 = [v10 initWithContext:v9 articleIDs:v11 ignoreCacheForArticleIDs:v12];

  [v13 setPurpose_];
  [v13 setQualityOfService_];
  [v13 setRelativePriority_];
  v14 = swift_allocObject();
  v14[2] = v4;
  v14[3] = a3;
  v14[4] = a4;
  v17[4] = sub_218B6AF24;
  v17[5] = v14;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_218B66540;
  v17[3] = &block_descriptor_26;
  v15 = _Block_copy(v17);
  v16 = v13;

  [v16 setFetchCompletionBlock_];
  _Block_release(v15);

  [*(v4 + 72) addOperation_];
}

void sub_218B64548(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v46 = a5;
  v49 = a2;
  v8 = type metadata accessor for CuratedShortcut.Identifier(0);
  MEMORY[0x28223BE20](v8 - 8);
  v43 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = type metadata accessor for CuratedShortcut(0);
  MEMORY[0x28223BE20](v44);
  v45 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ShortcutCategory(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  v21 = *a4;
  v22 = a4[1];
  if (*(a3 + 16) && (v23 = *a1, v24 = sub_21870F700(*a4, a4[1]), (v25 & 1) != 0))
  {
    sub_218B6BAA4(*(a3 + 56) + *(v12 + 72) * v24, v17, type metadata accessor for ShortcutCategory);
    sub_218B6BC70(v17, v20, type metadata accessor for ShortcutCategory);
    __swift_project_boxed_opaque_existential_1((v49 + OBJC_IVAR____TtC7NewsUI216ShortcutsService_issueModelFactory), *(v49 + OBJC_IVAR____TtC7NewsUI216ShortcutsService_issueModelFactory + 24));
    sub_218B6C010(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v26 = swift_allocObject();
    v27 = v23;
    v28 = v26;
    *(v26 + 16) = xmmword_219C146A0;
    *(v26 + 32) = v27;
    v29 = v27;
    v30 = sub_21945CCB8(v28);

    if (*(v30 + 16))
    {
      v48[0] = *(v30 + 32);
      *(v48 + 9) = *(v30 + 41);
      sub_218950CAC(v48, v47);

      v31 = v45;
      sub_218B6BAA4(a4, v45, type metadata accessor for CuratedShortcut);
      sub_218B6BAA4(v20, v14, type metadata accessor for ShortcutCategory);
      v32 = v46;
      sub_218B6BAA4(v14, v46, type metadata accessor for ShortcutCategory);
      v33 = v43;
      sub_21993568C(v43);
      v34 = sub_21993639C();
      v36 = v35;
      sub_218B6BC10(v33, type metadata accessor for CuratedShortcut.Identifier);
      v37 = _s8ResolvedVMa(0);
      v38 = (v32 + *(v37 + 24));
      *v38 = v34;
      v38[1] = v36;
      v39 = (v32 + *(v37 + 20));
      v40 = _s5IssueVMa(0);
      sub_21992EE60(v39 + *(v40 + 20));
      sub_218B6BC10(v14, type metadata accessor for ShortcutCategory);
      sub_218B6BC10(v31, type metadata accessor for CuratedShortcut);
      sub_218B6BC10(v20, type metadata accessor for ShortcutCategory);
      *v39 = v48[0];
      *(v39 + 9) = *(v48 + 9);
      _s13ResolvedModelOMa(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for Shortcut(0);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_218B69DE0();
    swift_allocError();
    *v41 = v21;
    *(v41 + 8) = v22;
    *(v41 + 16) = 2;
    swift_willThrow();
  }
}

double sub_218B649AC@<D0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v47 = a4;
  v48 = a1;
  v6 = type metadata accessor for CuratedShortcut.Identifier(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for CuratedShortcut(0);
  MEMORY[0x28223BE20](v46);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ShortcutCategory(0) - 8;
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - v18;
  v20 = *a3;
  v21 = a3[1];
  if (*(a2 + 16) && (v45 = *v48, v48 = v17, v22 = v8, v23 = v10, v24 = v16, v25 = sub_21870F700(v20, v21), v26 = v24, v27 = v23, v28 = v22, v29 = v13, v30 = v19, v31 = a3, v32 = v48, (v33 & 1) != 0))
  {
    sub_218B6BAA4(*(a2 + 56) + *(v26 + 72) * v25, v48, type metadata accessor for ShortcutCategory);
    sub_218B6BC70(v32, v30, type metadata accessor for ShortcutCategory);
    sub_218B6BAA4(v31, v27, type metadata accessor for CuratedShortcut);
    sub_218B6BAA4(v30, v29, type metadata accessor for ShortcutCategory);
    v34 = v47;
    sub_218B6BAA4(v29, v47, type metadata accessor for ShortcutCategory);
    v35 = v45;

    sub_21993568C(v28);
    v36 = sub_21993639C();
    v38 = v37;
    sub_218B6BC10(v28, type metadata accessor for CuratedShortcut.Identifier);
    v39 = _s8ResolvedVMa(0);
    v40 = (v34 + *(v39 + 24));
    *v40 = v36;
    v40[1] = v38;
    v41 = (v34 + *(v39 + 20));
    v42 = _s3TagVMa(0);
    sub_21992EE60(v41 + *(v42 + 20));
    sub_218B6BC10(v29, type metadata accessor for ShortcutCategory);
    sub_218B6BC10(v27, type metadata accessor for CuratedShortcut);
    sub_218B6BC10(v30, type metadata accessor for ShortcutCategory);
    *v41 = v35;
    _s13ResolvedModelOMa(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for Shortcut(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_218B69DE0();
    swift_allocError();
    *v44 = v20;
    *(v44 + 8) = v21;
    *(v44 + 16) = 2;
    swift_willThrow();
  }

  return result;
}

double sub_218B64D68(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, __n128), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = *(a5 + OBJC_IVAR____TtC7NewsUI216ShortcutsService_tagService);
  v14 = *(a6 + 16);
  if (v14)
  {
    v23 = v13;
    v24 = a3;
    v25 = MEMORY[0x277D84F90];

    sub_21870B65C(0, v14, 0);
    v15 = v25;
    v16 = (a6 + 40);
    do
    {
      v18 = *(v16 - 1);
      v17 = *v16;
      v19 = *(v25 + 16);
      v20 = *(v25 + 24);

      if (v19 >= v20 >> 1)
      {
        sub_21870B65C((v20 > 1), v19 + 1, 1);
      }

      *(v25 + 16) = v19 + 1;
      v21 = v25 + 16 * v19;
      *(v21 + 32) = v18;
      *(v21 + 40) = v17;
      v16 += 3;
      --v14;
    }

    while (v14);
    v13 = v23;
    a3 = v24;
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  sub_218E99CEC(v15, v13, sub_218846958, v12, a3, a4);

  return result;
}