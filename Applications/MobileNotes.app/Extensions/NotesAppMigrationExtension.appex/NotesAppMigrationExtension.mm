uint64_t sub_100001B78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v166 = a1;
  v3 = sub_100005740(&qword_1000A5478, &qword_10008AA10);
  __chkstk_darwin(v3 - 8);
  v154 = &v129 - v4;
  v5 = sub_100005740(&qword_1000A5480, &qword_10008AA18);
  v6 = __chkstk_darwin(v5 - 8);
  v151 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v152 = &v129 - v8;
  v9 = sub_100005740(&qword_1000A5488, &unk_10008AA20);
  v10 = __chkstk_darwin(v9 - 8);
  v164 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v144 = &v129 - v12;
  v13 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v14 = __chkstk_darwin(v13 - 8);
  v158 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v134 = &v129 - v16;
  v17 = sub_100005740(&qword_1000A5498, &qword_10008AA30);
  v18 = __chkstk_darwin(v17 - 8);
  v156 = &v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v155 = &v129 - v21;
  v22 = __chkstk_darwin(v20);
  v153 = &v129 - v23;
  v24 = __chkstk_darwin(v22);
  v148 = &v129 - v25;
  v26 = __chkstk_darwin(v24);
  v139 = &v129 - v27;
  v28 = __chkstk_darwin(v26);
  v133 = &v129 - v29;
  __chkstk_darwin(v28);
  v31 = &v129 - v30;
  v32 = sub_100005740(&qword_1000A54A0, &qword_10008AA38);
  v33 = __chkstk_darwin(v32 - 8);
  v150 = &v129 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v140 = &v129 - v36;
  v37 = __chkstk_darwin(v35);
  v135 = &v129 - v38;
  v39 = __chkstk_darwin(v37);
  v41 = &v129 - v40;
  __chkstk_darwin(v39);
  v43 = &v129 - v42;
  v44 = sub_1000848B8();
  v45 = *(v44 - 8);
  v46 = *(v45 + 56);
  v46(a2, 1, 1, v44);
  v47 = _s8ActivityVMa(0);
  v48 = v47[5];
  v49 = sub_100084B38();
  v136 = *(v49 - 8);
  v50 = *(v136 + 56);
  v138 = v48;
  v137 = v49;
  v159 = v50;
  v160 = v136 + 56;
  (v50)(a2 + v48, 1, 1);
  v51 = v47[6];
  v52 = sub_100084C88();
  v141 = *(v52 - 8);
  v53 = *(v141 + 56);
  v143 = v51;
  v162 = v141 + 56;
  v163 = v52;
  v161 = v53;
  (v53)(a2 + v51, 1, 1);
  v165 = v47;
  v54 = v47[7];
  v55 = sub_100084C18();
  v56 = *(v55 - 8);
  v57 = *(v56 + 56);
  v157 = a2;
  v149 = v54;
  v147 = v55;
  v146 = v57;
  v145 = v56 + 56;
  (v57)(a2 + v54, 1, 1);
  sub_1000057D4();
  sub_100085468();
  sub_100085458();
  v169 = v43;
  sub_100005888(v43, v41, &qword_1000A54A0, &qword_10008AA38);
  v58 = sub_100084C78();
  v59 = *(v58 - 8);
  v167 = *(v59 + 48);
  v168 = v59 + 48;
  if (v167(v41, 1, v58) == 1)
  {
    v131 = v45;
    sub_1000058F0(v41, &qword_1000A54A0, &qword_10008AA38);
    v130 = v46;
    v46(v158, 1, 1, v44);
    v132 = v31;
    v60 = v133;
    sub_100005888(v31, v133, &qword_1000A5498, &qword_10008AA30);
    v61 = sub_100084BB8();
    v62 = *(v61 - 8);
    if ((*(v62 + 48))(v60, 1, v61) == 1)
    {
      sub_1000058F0(v60, &qword_1000A5498, &qword_10008AA30);
      v63 = 1;
      v64 = v169;
      v65 = v144;
      v66 = v139;
      v67 = v134;
    }

    else
    {
      v67 = v134;
      sub_100084B98();
      (*(v62 + 8))(v60, v61);
      v63 = 0;
      v64 = v169;
      v65 = v144;
      v66 = v139;
    }

    v70 = v135;
    v130(v67, v63, 1, v44);
    v71 = v158;
    v72 = (*(v131 + 48))(v158, 1, v44);
    v31 = v132;
    if (v72 != 1)
    {
      sub_1000058F0(v71, &qword_1000A5490, &qword_10008CD80);
    }
  }

  else
  {
    v68 = v158;
    sub_100084C58();
    (*(v59 + 8))(v41, v58);
    v46(v68, 0, 1, v44);
    v69 = v134;
    (*(v45 + 32))(v134, v68, v44);
    v46(v69, 0, 1, v44);
    v64 = v169;
    v65 = v144;
    v66 = v139;
    v67 = v69;
    v70 = v135;
  }

  v73 = v67;
  v74 = v157;
  sub_100005820(v73, v157, &qword_1000A5490, &qword_10008CD80);
  sub_100005888(v64, v70, &qword_1000A54A0, &qword_10008AA38);
  v75 = v167(v70, 1, v58);
  v76 = v151;
  v77 = v164;
  v78 = v137;
  v142 = v59;
  if (v75 == 1)
  {
    v79 = v58;
    sub_1000058F0(v70, &qword_1000A54A0, &qword_10008AA38);
    v159(v77, 1, 1, v78);
    sub_100005888(v31, v66, &qword_1000A5498, &qword_10008AA30);
    v80 = sub_100084BB8();
    v81 = *(v80 - 8);
    if ((*(v81 + 48))(v66, 1, v80) == 1)
    {
      sub_1000058F0(v66, &qword_1000A5498, &qword_10008AA30);
      v82 = 1;
    }

    else
    {
      sub_100084B78();
      (*(v81 + 8))(v66, v80);
      v82 = 0;
    }

    v84 = v148;
    v159(v65, v82, 1, v78);
    v85 = v164;
    v86 = (*(v136 + 48))(v164, 1, v78);
    v58 = v79;
    v59 = v142;
    if (v86 != 1)
    {
      sub_1000058F0(v85, &qword_1000A5488, &unk_10008AA20);
    }
  }

  else
  {
    sub_100084C38();
    (*(v59 + 8))(v70, v58);
    v83 = v159;
    v159(v77, 0, 1, v78);
    (*(v136 + 32))(v65, v77, v78);
    v83(v65, 0, 1, v78);
    v84 = v148;
  }

  sub_100005820(v65, v74 + v138, &qword_1000A5488, &unk_10008AA20);
  v87 = v140;
  sub_100005888(v169, v140, &qword_1000A54A0, &qword_10008AA38);
  v88 = v167(v87, 1, v58);
  v89 = v156;
  if (v88 == 1)
  {
    v90 = v58;
    sub_1000058F0(v87, &qword_1000A54A0, &qword_10008AA38);
    v161(v76, 1, 1, v163);
    sub_100005888(v31, v84, &qword_1000A5498, &qword_10008AA30);
    v91 = sub_100084BB8();
    v92 = *(v91 - 8);
    if ((*(v92 + 48))(v84, 1, v91) == 1)
    {
      sub_1000058F0(v84, &qword_1000A5498, &qword_10008AA30);
      v93 = 1;
      v94 = v152;
    }

    else
    {
      v94 = v152;
      sub_100084B68();
      (*(v92 + 8))(v84, v91);
      v93 = 0;
    }

    v97 = v163;
    v161(v94, v93, 1, v163);
    v98 = (*(v141 + 48))(v76, 1, v97);
    v58 = v90;
    v59 = v142;
    if (v98 != 1)
    {
      sub_1000058F0(v76, &qword_1000A5480, &qword_10008AA18);
    }
  }

  else
  {
    sub_100084C28();
    (*(v59 + 8))(v87, v58);
    v95 = v163;
    v96 = v161;
    v161(v76, 0, 1, v163);
    v94 = v152;
    (*(v141 + 32))(v152, v76, v95);
    v96(v94, 0, 1, v95);
  }

  sub_100005820(v94, v74 + v143, &qword_1000A5480, &qword_10008AA18);
  v99 = v150;
  sub_100005888(v169, v150, &qword_1000A54A0, &qword_10008AA38);
  if (v167(v99, 1, v58) == 1)
  {
    sub_1000058F0(v99, &qword_1000A54A0, &qword_10008AA38);
    v100 = 1;
    v101 = v154;
  }

  else
  {
    v101 = v154;
    sub_100084C48();
    (*(v59 + 8))(v99, v58);
    v100 = 0;
  }

  v102 = v31;
  v146(v101, v100, 1, v147);
  sub_100005820(v101, v74 + v149, &qword_1000A5478, &qword_10008AA10);
  v103 = v153;
  sub_100005888(v31, v153, &qword_1000A5498, &qword_10008AA30);
  v104 = sub_100084BB8();
  v105 = *(v104 - 8);
  v106 = *(v105 + 48);
  if (v106(v103, 1, v104) == 1)
  {
    sub_1000058F0(v103, &qword_1000A5498, &qword_10008AA30);
    v107 = 0;
    v108 = 0;
  }

  else
  {
    v107 = sub_100084B88();
    v108 = v109;
    (*(v105 + 8))(v103, v104);
  }

  v110 = v165;
  v111 = (v74 + v165[8]);
  *v111 = v107;
  v111[1] = v108;
  v112 = v155;
  sub_100005888(v102, v155, &qword_1000A5498, &qword_10008AA30);
  v113 = v106(v112, 1, v104);
  if (v113 == 1)
  {
    sub_1000058F0(v112, &qword_1000A5498, &qword_10008AA30);
    v114 = 0;
  }

  else
  {
    v115 = v112;
    v114 = sub_100084B48();
    v116 = v115;
    v110 = v165;
    (*(v105 + 8))(v116, v104);
  }

  v117 = v74 + v110[9];
  *v117 = v114;
  *(v117 + 8) = v113 == 1;
  sub_100005888(v102, v89, &qword_1000A5498, &qword_10008AA30);
  if (v106(v89, 1, v104) == 1)
  {
    sub_1000058F0(v89, &qword_1000A5498, &qword_10008AA30);
    v118 = 0;
    v119 = 0;
  }

  else
  {
    v118 = sub_100084B58();
    v119 = v120;
    (*(v105 + 8))(v89, v104);
  }

  v121 = (v74 + v110[10]);
  *v121 = v118;
  v121[1] = v119;
  v122 = v166;
  v123 = [v166 data];
  v124 = sub_100084808();
  v126 = v125;

  sub_1000058F0(v102, &qword_1000A5498, &qword_10008AA30);
  result = sub_1000058F0(v169, &qword_1000A54A0, &qword_10008AA38);
  v128 = (v74 + v110[11]);
  *v128 = v124;
  v128[1] = v126;
  return result;
}

uint64_t sub_100002CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v66 = a2;
  v3 = sub_100005740(&qword_1000A5478, &qword_10008AA10);
  __chkstk_darwin(v3 - 8);
  v57 = &v49 - v4;
  v5 = sub_100084C18();
  v58 = *(v5 - 8);
  v59 = v5;
  v6 = __chkstk_darwin(v5);
  v52 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v56 = &v49 - v8;
  v9 = sub_100005740(&qword_1000A5480, &qword_10008AA18);
  __chkstk_darwin(v9 - 8);
  v61 = &v49 - v10;
  v11 = sub_100084C88();
  v62 = *(v11 - 8);
  v63 = v11;
  v12 = __chkstk_darwin(v11);
  v51 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v60 = &v49 - v14;
  v15 = sub_100005740(&qword_1000A5488, &unk_10008AA20);
  __chkstk_darwin(v15 - 8);
  v17 = &v49 - v16;
  v18 = sub_100084B38();
  v65 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v55 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v64 = &v49 - v21;
  v22 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  __chkstk_darwin(v22 - 8);
  v24 = &v49 - v23;
  v25 = sub_1000848B8();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v54 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v49 - v29;
  sub_100005888(v2, v24, &qword_1000A5490, &qword_10008CD80);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    v31 = &qword_1000A5490;
    v32 = &qword_10008CD80;
    v33 = v24;
  }

  else
  {
    (*(v26 + 32))(v30, v24, v25);
    v34 = _s8ActivityVMa(0);
    sub_100005888(v2 + v34[5], v17, &qword_1000A5488, &unk_10008AA20);
    v35 = v65;
    if ((*(v65 + 48))(v17, 1, v18) == 1)
    {
      (*(v26 + 8))(v30, v25);
      v31 = &qword_1000A5488;
      v32 = &unk_10008AA20;
      v33 = v17;
    }

    else
    {
      v50 = v30;
      v36 = v64;
      (*(v35 + 32))(v64, v17, v18);
      v37 = v61;
      sub_100005888(v2 + v34[6], v61, &qword_1000A5480, &qword_10008AA18);
      v39 = v62;
      v38 = v63;
      if ((*(v62 + 48))(v37, 1, v63) == 1)
      {
        (*(v35 + 8))(v36, v18);
        (*(v26 + 8))(v50, v25);
        v31 = &qword_1000A5480;
        v32 = &qword_10008AA18;
        v33 = v37;
      }

      else
      {
        v49 = v18;
        v40 = v60;
        (*(v39 + 32))(v60, v37, v38);
        v41 = v57;
        sub_100005888(v2 + v34[7], v57, &qword_1000A5478, &qword_10008AA10);
        v43 = v58;
        v42 = v59;
        if ((*(v58 + 48))(v41, 1, v59) != 1)
        {
          (*(v43 + 32))(v56, v41, v42);
          sub_100084838();
          (*(v35 + 16))(v55, v64, v49);
          (*(v39 + 16))(v51, v40, v38);
          v48 = v56;
          (*(v43 + 16))(v52, v56, v42);
          v45 = v66;
          sub_100084C68();
          (*(v43 + 8))(v48, v42);
          (*(v39 + 8))(v60, v63);
          (*(v35 + 8))(v64, v49);
          (*(v26 + 8))(v50, v25);
          v44 = 0;
          goto LABEL_10;
        }

        (*(v39 + 8))(v40, v38);
        (*(v35 + 8))(v64, v49);
        (*(v26 + 8))(v50, v25);
        v31 = &qword_1000A5478;
        v32 = &qword_10008AA10;
        v33 = v41;
      }
    }
  }

  sub_1000058F0(v33, v31, v32);
  v44 = 1;
  v45 = v66;
LABEL_10:
  v46 = sub_100084C78();
  return (*(*(v46 - 8) + 56))(v45, v44, 1, v46);
}

uint64_t sub_1000034D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v56 = a1;
  v62 = a2;
  v4 = sub_100005740(&qword_1000A5480, &qword_10008AA18);
  __chkstk_darwin(v4 - 8);
  v58 = &v47 - v5;
  v6 = sub_100084C88();
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = __chkstk_darwin(v6);
  v55 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v57 = &v47 - v9;
  v10 = sub_100005740(&qword_1000A5488, &unk_10008AA20);
  __chkstk_darwin(v10 - 8);
  v12 = &v47 - v11;
  v13 = sub_100084B38();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v54 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v61 = &v47 - v17;
  v18 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  __chkstk_darwin(v18 - 8);
  v20 = &v47 - v19;
  v21 = sub_1000848B8();
  v22 = __chkstk_darwin(v21);
  v53 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v47 - v24;
  v26 = v3;
  v27 = v3;
  v29 = v28;
  sub_100005888(v27, v20, &qword_1000A5490, &qword_10008CD80);
  if ((*(v29 + 48))(v20, 1, v21) == 1)
  {
    sub_1000058F0(v20, &qword_1000A5490, &qword_10008CD80);
LABEL_12:
    v44 = 1;
    goto LABEL_13;
  }

  (*(v29 + 32))(v25, v20, v21);
  v30 = _s8ActivityVMa(0);
  sub_100005888(v26 + v30[5], v12, &qword_1000A5488, &unk_10008AA20);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    (*(v29 + 8))(v25, v21);
    sub_1000058F0(v12, &qword_1000A5488, &unk_10008AA20);
    goto LABEL_12;
  }

  v52 = v25;
  v31 = v61;
  (*(v14 + 32))(v61, v12, v13);
  v32 = v58;
  sub_100005888(v26 + v30[6], v58, &qword_1000A5480, &qword_10008AA18);
  v34 = v59;
  v33 = v60;
  if ((*(v59 + 48))(v32, 1, v60) == 1)
  {
    (*(v14 + 8))(v31, v13);
    (*(v29 + 8))(v52, v21);
    sub_1000058F0(v32, &qword_1000A5480, &qword_10008AA18);
    goto LABEL_12;
  }

  v35 = v13;
  v36 = v57;
  (*(v34 + 32))(v57, v32, v33);
  v37 = v26 + v30[9];
  if (*(v37 + 8) == 1 || (v38 = (v26 + v30[8]), (v39 = v38[1]) == 0) || (v40 = (v26 + v30[10]), !v40[1]))
  {
    (*(v34 + 8))(v36, v33);
    (*(v14 + 8))(v61, v35);
    (*(v29 + 8))(v52, v21);
    goto LABEL_12;
  }

  v58 = *v37;
  v51 = *v38;
  v41 = *v40;
  v49 = v39;
  v50 = v41;

  sub_100084838();
  v42 = *(v14 + 16);
  v48 = v35;
  v42(v54, v61, v35);
  v43 = v60;
  (*(v34 + 16))(v55, v36, v60);
  sub_100084BA8();
  (*(v34 + 8))(v36, v43);
  (*(v14 + 8))(v61, v48);
  (*(v29 + 8))(v52, v21);
  v44 = 0;
LABEL_13:
  v45 = sub_100084BB8();
  return (*(*(v45 - 8) + 56))(v62, v44, 1, v45);
}

Swift::Int sub_100003BC8()
{
  v1 = *v0;
  sub_100085A08();
  sub_100085A18(v1);
  return sub_100085A38();
}

Swift::Int sub_100003C3C(uint64_t a1)
{
  v2 = *v1;
  sub_100085A08();
  sub_100085A18(v2);
  return sub_100085A38();
}

uint64_t sub_100003C80()
{
  v1 = *v0;
  v2 = 0x6D617473656D6974;
  v3 = 0x6B6361626C6C6166;
  v4 = 0x6B6361626C6C6166;
  if (v1 != 6)
  {
    v3 = 0x6B6361626C6C6166;
  }

  if (v1 != 4)
  {
    v4 = 0xD000000000000016;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7069636974726170;
  if (v1 != 2)
  {
    v5 = 0x7974697669746361;
  }

  if (*v0)
  {
    v2 = 0x7463656A626FLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100003D94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10000543C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100003DD4(uint64_t a1)
{
  v2 = sub_1000062B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100003E10(uint64_t a1)
{
  v2 = sub_1000062B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100003E4C(void *a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A5628, &qword_10008AE48);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_10000626C(a1, a1[3]);
  sub_1000062B0();
  sub_100085A78();
  LOBYTE(v16) = 0;
  sub_1000848B8();
  sub_100006104(&qword_1000A5630, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_100085888();
  if (!v2)
  {
    v9 = _s8ActivityVMa(0);
    LOBYTE(v16) = 1;
    sub_100084B38();
    sub_100006104(&qword_1000A5638, &type metadata accessor for ActivityEventObject, &protocol conformance descriptor for ActivityEventObject);
    sub_100085888();
    LOBYTE(v16) = 2;
    sub_100084C88();
    sub_100006104(&qword_1000A5640, &type metadata accessor for ActivityEventParticipant, &protocol conformance descriptor for ActivityEventParticipant);
    sub_100085888();
    LOBYTE(v16) = 3;
    sub_100084C18();
    sub_100006104(&qword_1000A5648, &type metadata accessor for PersistedActivityEvent.Activities, &protocol conformance descriptor for PersistedActivityEvent.Activities);
    sub_100085888();
    LOBYTE(v16) = 4;
    sub_100085848();
    v10 = v3 + *(v9 + 36);
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 8);
    v16 = v11;
    LOBYTE(v17) = v10;
    v18 = 5;
    type metadata accessor for NotesVersion(0);
    sub_100006104(&qword_1000A5650, type metadata accessor for NotesVersion, &protocol conformance descriptor for ICNotesVersion);
    sub_100085888();
    LOBYTE(v16) = 6;
    sub_100085848();
    v12 = (v3 + *(v9 + 44));
    v13 = v12[1];
    v16 = *v12;
    v17 = v13;
    v18 = 7;
    sub_100006464(v16, v13);
    sub_1000064B8();
    sub_1000858D8();
    sub_10000650C(v16, v17);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100004274@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_100005740(&qword_1000A5478, &qword_10008AA10);
  __chkstk_darwin(v3 - 8);
  v51 = &v50 - v4;
  v5 = sub_100005740(&qword_1000A5480, &qword_10008AA18);
  __chkstk_darwin(v5 - 8);
  v53 = &v50 - v6;
  v7 = sub_100005740(&qword_1000A5488, &unk_10008AA20);
  __chkstk_darwin(v7 - 8);
  v52 = &v50 - v8;
  v9 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  __chkstk_darwin(v9 - 8);
  v54 = &v50 - v10;
  v57 = sub_100005740(&qword_1000A55E8, &qword_10008AE40);
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v12 = &v50 - v11;
  v13 = _s8ActivityVMa(0);
  __chkstk_darwin(v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000848B8();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = v13[5];
  v18 = sub_100084B38();
  v19 = *(*(v18 - 8) + 56);
  v61 = v17;
  v19(&v15[v17], 1, 1, v18);
  v20 = v13[6];
  v21 = sub_100084C88();
  v22 = *(*(v21 - 8) + 56);
  v60 = v20;
  v22(&v15[v20], 1, 1, v21);
  v23 = v13[7];
  v24 = sub_100084C18();
  v25 = *(*(v24 - 8) + 56);
  v59 = v23;
  v63 = v15;
  v25(&v15[v23], 1, 1, v24);
  v26 = a1[3];
  v62 = a1;
  sub_10000626C(a1, v26);
  sub_1000062B0();
  v56 = v12;
  v27 = v58;
  sub_100085A68();
  if (v27)
  {
    v31 = v61;
    v32 = v59;
    v33 = v60;
    sub_100006304(v62);
    v34 = v63;
    sub_1000058F0(v63, &qword_1000A5490, &qword_10008CD80);
    sub_1000058F0(v34 + v31, &qword_1000A5488, &unk_10008AA20);
    sub_1000058F0(v34 + v33, &qword_1000A5480, &qword_10008AA18);
    sub_1000058F0(v34 + v32, &qword_1000A5478, &qword_10008AA10);
  }

  else
  {
    v29 = v52;
    v28 = v53;
    v58 = v13;
    LOBYTE(v64) = 0;
    sub_100006104(&qword_1000A55F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v30 = v54;
    sub_1000857D8();
    sub_100005820(v30, v63, &qword_1000A5490, &qword_10008CD80);
    LOBYTE(v64) = 1;
    sub_100006104(&qword_1000A5600, &type metadata accessor for ActivityEventObject, &protocol conformance descriptor for ActivityEventObject);
    v35 = v29;
    sub_1000857D8();
    v36 = v63;
    sub_100005820(v35, &v63[v61], &qword_1000A5488, &unk_10008AA20);
    LOBYTE(v64) = 2;
    sub_100006104(&qword_1000A5608, &type metadata accessor for ActivityEventParticipant, &protocol conformance descriptor for ActivityEventParticipant);
    sub_1000857D8();
    sub_100005820(v28, v36 + v60, &qword_1000A5480, &qword_10008AA18);
    LOBYTE(v64) = 3;
    sub_100006104(&qword_1000A5610, &type metadata accessor for PersistedActivityEvent.Activities, &protocol conformance descriptor for PersistedActivityEvent.Activities);
    v37 = v51;
    sub_1000857D8();
    sub_100005820(v37, v36 + v59, &qword_1000A5478, &qword_10008AA10);
    LOBYTE(v64) = 4;
    v38 = sub_100085798();
    v39 = v58;
    v40 = (v36 + v58[8]);
    *v40 = v38;
    v40[1] = v41;
    type metadata accessor for NotesVersion(0);
    v65 = 5;
    sub_100006104(&qword_1000A5618, type metadata accessor for NotesVersion, &protocol conformance descriptor for ICNotesVersion);
    sub_1000857D8();
    v42 = v36 + v39[9];
    v43 = BYTE8(v64);
    *v42 = v64;
    *(v42 + 8) = v43;
    LOBYTE(v64) = 6;
    v44 = sub_100085798();
    v45 = (v36 + v39[10]);
    *v45 = v44;
    v45[1] = v46;
    v65 = 7;
    sub_100006350();
    v47 = v56;
    sub_100085828();
    (*(v55 + 8))(v47, v57);
    v48 = v63;
    *&v63[v39[11]] = v64;
    sub_1000063A4(v48, v50);
    sub_100006304(v62);
    return sub_100006408(v48);
  }
}

double variable initialization expression of ICArchiveImporter.didReceiveMemoryWarningObserver@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t variable initialization expression of ICArchiveExporterConfiguration.creator@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000A5428 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *(&xmmword_1000B17B0 + 1);
  *a1 = static ICArchiveCreator.default;
  *(a1 + 8) = *(&static ICArchiveCreator.default + 8);
  *(a1 + 24) = unk_1000B17A8;
  *(a1 + 40) = v1;
}

uint64_t variable initialization expression of ICArchiveCreator.softwareIdentifier()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_100085098();

  return v2;
}

uint64_t variable initialization expression of ICArchiveCreator.softwareVersionName()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 infoDictionary];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_100085008();

  if (!*(v2 + 16) || (v3 = sub_100039138(0xD00000000000001ALL, 0x8000000100086640), (v4 & 1) == 0))
  {

    return 0;
  }

  sub_1000056E4(*(v2 + 56) + 32 * v3, v7);

  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

CFStringRef variable initialization expression of ICArchiveCreator.softwareVersion()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 infoDictionary];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_100085008();

  result = kCFBundleVersionKey;
  if (!kCFBundleVersionKey)
  {
    __break(1u);
    return result;
  }

  v4 = sub_100085098();
  if (!*(v2 + 16))
  {

    goto LABEL_10;
  }

  v6 = sub_100039138(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_10:

    return 0;
  }

  sub_1000056E4(*(v2 + 56) + 32 * v6, v10);

  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100004F80()
{
  sub_100085098();
  v0 = sub_100085178();

  return v0;
}

uint64_t sub_100004FBC(uint64_t a1)
{
  sub_100085098();
  sub_100085118();
}

Swift::Int sub_100005010(uint64_t a1)
{
  sub_100085098();
  sub_100085A08();
  sub_100085118();
  v1 = sub_100085A38();

  return v1;
}

uint64_t sub_100005084(uint64_t a1, id *a2)
{
  result = sub_100085078();
  *a2 = 0;
  return result;
}

uint64_t sub_1000050FC(uint64_t a1, id *a2)
{
  v3 = sub_100085088();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000517C@<X0>(uint64_t *a2@<X8>)
{
  sub_100085098();
  v3 = sub_100085068();

  *a2 = v3;
  return result;
}

uint64_t sub_1000051C4(void *a1, uint64_t *a2)
{
  v2 = sub_100085098();
  v4 = v3;
  if (v2 == sub_100085098() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_100085948();
  }

  return v7 & 1;
}

uint64_t sub_100005250@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100085098();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000527C(uint64_t a1)
{
  v2 = sub_100006104(&qword_1000A5670, type metadata accessor for URLResourceKey, &unk_10008AC08);
  v3 = sub_100006104(&qword_1000A5678, type metadata accessor for URLResourceKey, &unk_10008ABA8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100005338@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_100085068();

  *a2 = v3;
  return result;
}

uint64_t sub_100005380(uint64_t a1)
{
  v2 = sub_100006104(&qword_1000A5660, type metadata accessor for Key, &unk_10008ADFC);
  v3 = sub_100006104(&qword_1000A5668, type metadata accessor for Key, &unk_10008AD00);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000543C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (sub_100085948() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463656A626FLL && a2 == 0xE600000000000000 || (sub_100085948() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEB00000000746E61 || (sub_100085948() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7974697669746361 && a2 == 0xE800000000000000 || (sub_100085948() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEC00000065707954 || (sub_100085948() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000100086660 == a2 || (sub_100085948() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xED0000656C746954 || (sub_100085948() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEC00000061746144)
  {

    return 7;
  }

  else
  {
    v6 = sub_100085948();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1000056E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100005740(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t _s8ActivityVMa(uint64_t a1)
{
  result = qword_1000A5508;
  if (!qword_1000A5508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000057D4()
{
  result = qword_1000A54A8;
  if (!qword_1000A54A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000A54A8);
  }

  return result;
}

uint64_t sub_100005820(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005740(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_100005888(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005740(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000058F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100005740(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100005964(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_100005740(&qword_1000A5488, &unk_10008AA20);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_100005740(&qword_1000A5480, &qword_10008AA18);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_100005740(&qword_1000A5478, &qword_10008AA10);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8] + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  v18 = v17 - 1;
  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

uint64_t sub_100005B54(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_100005740(&qword_1000A5488, &unk_10008AA20);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_100005740(&qword_1000A5480, &qword_10008AA18);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = sub_100005740(&qword_1000A5478, &qword_10008AA10);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8] + 8) = a2;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_100005D20(uint64_t a1)
{
  sub_100005EC8(319, &qword_1000A5518, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    sub_100005EC8(319, &qword_1000A5520, &type metadata accessor for ActivityEventObject);
    if (v2 <= 0x3F)
    {
      sub_100005EC8(319, &qword_1000A5528, &type metadata accessor for ActivityEventParticipant);
      if (v3 <= 0x3F)
      {
        sub_100005EC8(319, &qword_1000A5530, &type metadata accessor for PersistedActivityEvent.Activities);
        if (v4 <= 0x3F)
        {
          sub_100006768(319, &qword_1000A5538, &type metadata for String, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_100005EC8(319, &unk_1000A5540, type metadata accessor for NotesVersion);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100005EC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

__n128 _s16AttributedStringV14AttributeRangeVwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_100005FCC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100005FD8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100005FF8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_100006104(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_10000626C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1000062B0()
{
  result = qword_1000A55F0;
  if (!qword_1000A55F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A55F0);
  }

  return result;
}

uint64_t sub_100006304(void *a1)
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

unint64_t sub_100006350()
{
  result = qword_1000A5620;
  if (!qword_1000A5620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5620);
  }

  return result;
}

uint64_t sub_1000063A4(uint64_t a1, uint64_t a2)
{
  v4 = _s8ActivityVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006408(uint64_t a1)
{
  v2 = _s8ActivityVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100006464(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

unint64_t sub_1000064B8()
{
  result = qword_1000A5658;
  if (!qword_1000A5658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5658);
  }

  return result;
}

uint64_t sub_10000650C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t _s8ActivityV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s8ActivityV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s16AttributedStringV14AttributeRangeVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s16AttributedStringV14AttributeRangeVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_100006768(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1000067BC()
{
  result = qword_1000A5690;
  if (!qword_1000A5690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5690);
  }

  return result;
}

unint64_t sub_100006814()
{
  result = qword_1000A5698;
  if (!qword_1000A5698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5698);
  }

  return result;
}

unint64_t sub_10000686C()
{
  result = qword_1000A56A0;
  if (!qword_1000A56A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A56A0);
  }

  return result;
}

id sub_100006914(uint64_t a1, uint64_t a2, char *a3)
{
  result = [v3 managedObjectContext];
  if (result)
  {
    v8 = result;
    v9 = *a3;
    if ((*a3 & 1) == 0 || (sub_100008250(0, &qword_1000A56D8, ICAccount_ptr), ObjCClassFromMetadata = swift_getObjCClassFromMetadata(), v11 = sub_100085068(), v12 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v11 context:v8], v11, !v12))
    {
      v12 = sub_100007594(a1, a2, v9 & 1);
    }

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100006A28()
{
  v1 = objc_opt_self();
  v2 = [v0 defaultFolder];
  v3 = [v1 newEmptyNoteInFolder:v2];

  return v3;
}

__objc2_class_ro *sub_100006AB8(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = v3;
  result = [v5 managedObjectContext];
  if (result)
  {
    v10 = result;
    v11 = *a3;
    v12 = &ICArchiveNotesPreviewer;
    v13 = [v5 canAddSubfolder];
    if (v11)
    {
      if (v13)
      {
        if ([v5 canAddSubfolder])
        {
          sub_100008250(0, &qword_1000A56D0, ICFolder_ptr);
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v15 = sub_100085068();
          v12 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v15 context:v10];

          if (v12)
          {
            if (sub_1000854C8())
            {
              goto LABEL_28;
            }

            v16 = [v5 objectID];
            v17 = *(a3 + 2);
            if (v17)
            {
              v18 = [v17 objectID];
              v19 = v18;
              if (v16)
              {
                if (v18)
                {
                  sub_100008250(0, &qword_1000A56C8, NSManagedObjectID_ptr);
                  v20 = sub_1000854C8();

                  if (v20)
                  {
                    goto LABEL_28;
                  }

LABEL_26:
                  if ([(__objc2_class_ro *)v12 isMovable])
                  {
                    [(__objc2_class_ro *)v12 unmarkForDeletion];
                    [(__objc2_class_ro *)v12 setParent:v5];
                    goto LABEL_29;
                  }

LABEL_28:
                  [(__objc2_class_ro *)v12 unmarkForDeletion];
                  goto LABEL_29;
                }
              }

              else
              {
                v16 = v18;
                if (!v18)
                {
                  goto LABEL_28;
                }
              }
            }

            else if (!v16)
            {
              goto LABEL_28;
            }

            goto LABEL_26;
          }

          v26 = objc_opt_self();
          v27 = sub_100085068();
          v12 = [v26 newFolderWithIdentifier:v27 parentFolder:v5];

LABEL_21:
          v28 = sub_100085068();
          [(__objc2_class_ro *)v12 updateChangeCountWithReason:v28];

          return v12;
        }

        v21 = v5;
LABEL_18:
        v25 = v21;

        return v25;
      }

      sub_1000081FC();
      swift_allocError();
      *v22 = 2;
      swift_willThrow();
    }

    else
    {
      if (v13)
      {
        v21 = [objc_opt_self() newFolderInParentFolder:v5];
        goto LABEL_18;
      }

      v23 = [v5 account];
      v24 = sub_100007594(a1, a2, 0);
      if (!v4)
      {
        v12 = v24;

        goto LABEL_21;
      }

      v10 = v23;
    }

LABEL_29:

    return v12;
  }

  __break(1u);
  return result;
}

id sub_100006DF8(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  result = [v4 managedObjectContext];
  if (result)
  {
    v9 = result;
    v10 = *a3;
    v11 = [v4 canMoveAddOrDeleteContents];
    if (v10)
    {
      if (v11)
      {
        sub_100008250(0, &qword_1000A56C0, ICNote_ptr);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v13 = sub_100085068();
        v10 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v13 context:v9];

        if (v10)
        {
          v14 = [v4 objectID];
          v15 = *(a3 + 2);
          if (v15)
          {
            v16 = [v15 objectID];
            v17 = v16;
            if (v14)
            {
              if (v16)
              {
                sub_100008250(0, &qword_1000A56C8, NSManagedObjectID_ptr);
                v18 = sub_1000854C8();

                if (v18)
                {
                  goto LABEL_22;
                }

LABEL_19:
                if ([v10 isMovable])
                {
                  [v10 unmarkForDeletion];
                  [v10 setFolder:v4];
                  goto LABEL_21;
                }

LABEL_22:
                [v10 unmarkForDeletion];

                return v10;
              }
            }

            else
            {
              v14 = v16;
              if (!v16)
              {
                goto LABEL_22;
              }
            }
          }

          else if (!v14)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }

        v22 = objc_opt_self();
        v23 = sub_100085068();
        v10 = [v22 newEmptyNoteWithIdentifier:v23 folder:v4];

LABEL_21:
        v24 = sub_100085068();
        [v10 updateChangeCountWithReason:v24];

        return v10;
      }

      sub_1000081FC();
      swift_allocError();
      *v19 = 2;
      swift_willThrow();
    }

    else
    {
      if (v11)
      {
        v10 = [objc_opt_self() newEmptyNoteInFolder:v4];
        goto LABEL_21;
      }

      v20 = [v4 account];
      v21 = [v20 defaultFolder];

      v10 = sub_100006DF8(a1, a2, a3);
    }

    return v10;
  }

  __break(1u);
  return result;
}

id sub_10000710C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = [v3 account];
  v8 = sub_100007440(a1, a2, *a3 & 1);

  return v8;
}

id sub_1000071C0(uint64_t a1, id a2, _BYTE *a3)
{
  v4 = v3;
  v8 = [v4 account];
  if (v8)
  {
    v9 = v8;
    a2 = sub_100007440(a1, a2, *a3 & 1);
  }

  else
  {
    sub_1000081FC();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
  }

  return a2;
}

id sub_1000072C8(uint64_t a1, id a2, _BYTE *a3)
{
  v4 = v3;
  v8 = [v4 note];
  if (v8 && (v9 = v8, v10 = [v8 account], v9, v10))
  {
    a2 = sub_100007440(a1, a2, *a3 & 1);
  }

  else
  {
    sub_1000081FC();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_1000073B0()
{
  sub_1000081FC();
  swift_allocError();
  *v0 = 1;
  return swift_willThrow();
}

id sub_100007440(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_100085068();
  v6 = [objc_opt_self() hashtagWithDisplayText:v5 account:v3 createIfNecessary:1];

  if (v6)
  {
    if (a3)
    {
      v7 = sub_100085068();
      [v6 setDisplayText:v7];

      [v6 unmarkForDeletion];
      v8 = sub_100085068();
      [v6 updateChangeCountWithReason:v8];
    }

    return v6;
  }

  else
  {
    result = sub_100085708();
    __break(1u);
  }

  return result;
}

id sub_100007594(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  result = [v3 managedObjectContext];
  if (result)
  {
    v7 = result;
    if (a3)
    {
      sub_100008250(0, &qword_1000A56D0, ICFolder_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v9 = sub_100085068();
      v10 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v9 context:v7];

      if (v10)
      {
        if ([v10 isMovable])
        {
          [v10 setParent:0];
        }

        else
        {
          [v10 unmarkForDeletion];
        }

        goto LABEL_9;
      }

      v11 = objc_opt_self();
      v12 = sub_100085068();
      v10 = [v11 newFolderWithIdentifier:v12 account:v4];
    }

    else
    {
      v10 = [objc_opt_self() newFolderInAccount:v4];
    }

    v13 = sub_100085068();
    [v10 updateChangeCountWithReason:v13];

    v7 = v13;
LABEL_9:

    return v10;
  }

  __break(1u);
  return result;
}

id sub_10000774C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = sub_100084918();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v3 managedObjectContext];
  if (result)
  {
    v11 = result;
    if (a3)
    {
      sub_100008250(0, &qword_1000A56B0, ICAttachment_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = sub_100085068();
      v14 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v13 context:v11];

      if (!v14)
      {
        v19 = objc_opt_self();
        v20 = sub_100085068();
        v21 = [v19 newAttachmentWithIdentifier:v20 note:v4];

        return v21;
      }

      v15 = v14;
      [v15 setNote:v4];
      [v15 setParentAttachment:0];

      [v15 unmarkForDeletion];
      v16 = sub_100085068();
      [v15 updateChangeCountWithReason:v16];
    }

    else
    {
      v17 = objc_opt_self();
      sub_100084908();
      sub_1000848D8();
      (*(v7 + 8))(v9, v6);
      v18 = sub_100085068();

      v15 = [v17 newAttachmentWithIdentifier:v18 note:v3];
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000079EC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = sub_100084918();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v3 managedObjectContext];
  if (result)
  {
    v11 = result;
    if (a3)
    {
      sub_100008250(0, &qword_1000A56A8, ICInlineAttachment_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = sub_100085068();
      v14 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v13 context:v11];

      if (v14)
      {
        v15 = v14;
        [v15 setNote:v4];
        [v15 setParentAttachment:0];

        [v15 unmarkForDeletion];
        v16 = sub_100085068();
        [v15 updateChangeCountWithReason:v16];

        return v15;
      }

      v17 = sub_100085068();
      v18 = [v4 addInlineAttachmentWithIdentifier:v17];
    }

    else
    {
      sub_100084908();
      sub_1000848D8();
      (*(v7 + 8))(v9, v6);
      v17 = sub_100085068();

      v18 = [v4 addInlineAttachmentWithIdentifier:v17];
    }

    v19 = v18;

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100007C64(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = sub_100084918();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v3 managedObjectContext];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = result;
  result = [v3 note];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v12 = result;
  if (a3)
  {
    sub_100008250(0, &qword_1000A56B0, ICAttachment_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = sub_100085068();
    v15 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v14 context:v11];

    if (v15)
    {
      v16 = v15;
      [v16 setNote:v12];
      [v16 setParentAttachment:v4];

      [v16 unmarkForDeletion];
    }

    else
    {
      v19 = objc_opt_self();
      v20 = sub_100085068();
      v16 = [v19 newAttachmentWithIdentifier:v20 note:v12];

      [v16 setParentAttachment:v4];
    }
  }

  else
  {
    v17 = objc_opt_self();
    sub_100084908();
    sub_1000848D8();
    (*(v7 + 8))(v9, v6);
    v18 = sub_100085068();

    v16 = [v17 newAttachmentWithIdentifier:v18 note:v12];

    [v16 setParentAttachment:v4];
  }

  v21 = sub_100085068();
  [v16 updateChangeCountWithReason:v21];

  return v16;
}

id sub_100007F58(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = sub_100084918();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v3 managedObjectContext];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = result;
  result = [v3 note];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v12 = result;
  if (a3)
  {
    sub_100008250(0, &qword_1000A56A8, ICInlineAttachment_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = sub_100085068();
    v15 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v14 context:v11];

    if (v15)
    {
      v16 = v15;
      [v16 setNote:v12];
      [v16 setParentAttachment:v4];

      [v16 unmarkForDeletion];
    }

    else
    {
      v18 = sub_100085068();
      v16 = [v3 addInlineAttachmentWithIdentifier:v18];
    }
  }

  else
  {
    sub_100084908();
    sub_1000848D8();
    (*(v7 + 8))(v9, v6);
    v17 = sub_100085068();

    v16 = [v3 addInlineAttachmentWithIdentifier:v17];
  }

  v19 = sub_100085068();
  [v16 updateChangeCountWithReason:v19];

  return v16;
}

unint64_t sub_1000081FC()
{
  result = qword_1000A56B8;
  if (!qword_1000A56B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A56B8);
  }

  return result;
}

uint64_t sub_100008250(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1000082C8@<X0>(uint64_t isEscapingClosureAtFileLocation@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NoteMetadata(0);
  v5 = (v4 - 8);
  __chkstk_darwin(v4);
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = _swiftEmptyArrayStorage;
  v7[1] = _swiftEmptyArrayStorage;
  sub_100084D48();
  v8 = (v7 + v5[9]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v7 + v5[10]);
  *v9 = 0;
  v9[1] = 0;
  v10 = v7 + v5[11];
  *v10 = 0;
  v10[8] = 1;
  v11 = v7 + v5[12];
  *v11 = 0;
  v11[8] = 1;
  v12 = [isEscapingClosureAtFileLocation managedObjectContext];
  if (!v12)
  {
    goto LABEL_4;
  }

  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = isEscapingClosureAtFileLocation;
  *(v14 + 24) = v7;
  v15 = swift_allocObject();
  v16 = sub_100008AD0;
  *(v15 + 16) = sub_100008AD0;
  *(v15 + 24) = v14;
  aBlock[4] = sub_100009024;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000699A4;
  aBlock[3] = &unk_10009EAA8;
  v17 = _Block_copy(aBlock);
  v18 = isEscapingClosureAtFileLocation;

  [v13 performBlockAndWait:v17];

  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_4:

    v16 = 0;
    v14 = 0;
  }

  sub_10000908C(v7, a2, type metadata accessor for NoteMetadata);
  return sub_10000852C(v16, v14);
}

uint64_t sub_10000852C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000853C(void *a1, uint64_t *a2)
{
  v4 = sub_1000848B8();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v46 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v46 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v46 - v12;
  __chkstk_darwin(v11);
  v15 = &v46 - v14;
  v16 = [a1 identifier];
  if (v16)
  {
    v17 = v16;
    v18 = sub_100085098();
    v20 = v19;

    v21 = (a2 + *(type metadata accessor for NoteMetadata(0) + 28));
    *v21 = v18;
    v21[1] = v20;
  }

  v22 = [a1 title];
  if (v22)
  {
    v23 = v22;
    v24 = sub_100085098();
    v26 = v25;

    v27 = (a2 + *(type metadata accessor for NoteMetadata(0) + 32));
    *v27 = v24;
    v27[1] = v26;
  }

  v28 = [a1 creationDate];
  if (!v28)
  {
    goto LABEL_10;
  }

  v29 = v28;
  sub_100084888();

  (*(v5 + 32))(v15, v13, v4);
  sub_100084878();
  v31 = floor(v30 * 1000.0);
  result = (*(v5 + 8))(v15, v4);
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v33 = a2 + *(type metadata accessor for NoteMetadata(0) + 36);
  *v33 = v31;
  v33[8] = 0;
LABEL_10:
  v34 = [a1 modificationDate];
  if (v34)
  {
    v35 = v46;
    v36 = v34;
    sub_100084888();

    (*(v5 + 32))(v10, v35, v4);
    sub_100084878();
    v38 = floor(v37 * 1000.0);
    result = (*(v5 + 8))(v10, v4);
    if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v38 > -9.22337204e18)
      {
        if (v38 < 9.22337204e18)
        {
          v39 = a2 + *(type metadata accessor for NoteMetadata(0) + 40);
          *v39 = v38;
          v39[8] = 0;
          goto LABEL_15;
        }

LABEL_23:
        __break(1u);
        return result;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    goto LABEL_20;
  }

LABEL_15:
  v40 = swift_allocObject();
  *(v40 + 16) = _swiftEmptyArrayStorage;
  v41 = v40 + 16;
  v51 = sub_100009044;
  v52 = v40;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_100008D1C;
  v50 = &unk_10009EAF8;
  v42 = _Block_copy(&aBlock);

  [a1 enumerateInlineAttachmentsInOrderUsingBlock:v42];
  _Block_release(v42);
  swift_beginAccess();
  if (*(*v41 + 16))
  {
    *a2 = *v41;
  }

  v43 = swift_allocObject();
  *(v43 + 16) = _swiftEmptyArrayStorage;
  v44 = (v43 + 16);
  v51 = sub_100009084;
  v52 = v43;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_100008D1C;
  v50 = &unk_10009EB48;
  v45 = _Block_copy(&aBlock);

  [a1 enumerateAttachmentsInOrderUsingBlock:v45];
  _Block_release(v45);
  swift_beginAccess();
  a2[1] = *v44;
}

uint64_t sub_100008A98()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100008AD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100084568();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 isHashtagAttachment];
  if (result)
  {
    v12 = [a1 displayText];
    if (!v12)
    {
      sub_100085098();
      v12 = sub_100085068();
    }

    v13 = [objc_opt_self() ic_hashtagCharacterString];
    sub_100085098();

    sub_100084538();

    isa = sub_100084558().super.isa;
    (*(v8 + 8))(v10, v7);
    v15 = [v12 ic_stringByTrimmingLeadingCharactersInSet:isa];

    v16 = sub_100085098();
    v18 = v17;

    swift_beginAccess();
    v19 = *(a5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_10000EAF0(0, *(v19 + 2) + 1, 1, v19);
      *(a5 + 16) = v19;
    }

    v22 = *(v19 + 2);
    v21 = *(v19 + 3);
    if (v22 >= v21 >> 1)
    {
      v19 = sub_10000EAF0((v21 > 1), v22 + 1, 1, v19);
    }

    *(v19 + 2) = v22 + 1;
    v23 = &v19[16 * v22];
    *(v23 + 4) = v16;
    *(v23 + 5) = v18;
    *(a5 + 16) = v19;
    return swift_endAccess();
  }

  return result;
}

void sub_100008D1C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100008DA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100005740(&qword_1000A56E0, &unk_10008B050);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for AudioAttachmentMetadata(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  sub_10000C304(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000058F0(v9, &qword_1000A56E0, &unk_10008B050);
  }

  sub_10000908C(v9, v16, type metadata accessor for AudioAttachmentMetadata);
  sub_1000090F4(v16, v14);
  swift_beginAccess();
  v18 = *(a5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 16) = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_10000EBFC(0, v18[2] + 1, 1, v18);
    *(a5 + 16) = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_10000EBFC((v20 > 1), v21 + 1, 1, v18);
  }

  v18[2] = v21 + 1;
  sub_10000908C(v14, v18 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v21, type metadata accessor for AudioAttachmentMetadata);
  *(a5 + 16) = v18;
  swift_endAccess();
  return sub_10000997C(v16);
}

uint64_t sub_10000902C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000904C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000908C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000090F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioAttachmentMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100009158(void *a1, void *a2, void *a3)
{
  v40 = a3;
  v5 = type metadata accessor for AudioAttachmentMetadata(0);
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  __chkstk_darwin(v5 - 8);
  v42 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000848B8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NoteMetadata(0);
  v12 = v11[8];
  v45 = a1;
  v13 = *(a1 + v12 + 8);
  v44 = v13 != 0;
  if (v13)
  {

    v14 = sub_100085068();

    [a2 setTitle:v14];
  }

  if ((*(v45 + v11[9] + 8) & 1) == 0)
  {
    sub_100084868();
    isa = sub_100084848().super.isa;
    (*(v8 + 8))(v10, v7);
    [a2 setCreationDate:isa];

    v44 = 1;
  }

  if ((*(v45 + v11[10] + 8) & 1) == 0)
  {
    sub_100084868();
    v16 = sub_100084848().super.isa;
    (*(v8 + 8))(v10, v7);
    [a2 setModificationDate:v16];

    v44 = 1;
  }

  v17 = [a2 account];
  v48 = a2;
  v43 = v6;
  if (v17)
  {
    v18 = v17;
    v19 = *v45;
    v20 = *(*v45 + 16);
    if (!v20)
    {
      goto LABEL_19;
    }

    v21 = objc_opt_self();
    v22 = 0;
    v46 = -v20;
    v47 = v21;
    v23 = v19 + 40;
    v39 = v19 + 40;
    while (1)
    {
      v24 = v23 + 16 * v22++;
      while (1)
      {
        if ((v22 - 1) >= *(v19 + 16))
        {
          __break(1u);
        }

        v25 = v18;
        v26 = sub_100085068();

        v27 = [v47 hashtagWithDisplayText:v26 account:v25 createIfNecessary:1];

        if (!v27)
        {
          goto LABEL_11;
        }

        if ([a2 convertTextInNoteBodyToHashtag:v27])
        {
          break;
        }

        v28 = [a2 addHashtagToNoteBodyIfMissing:v27];

        if (v28)
        {

          goto LABEL_18;
        }

LABEL_11:
        ++v22;
        v24 += 16;
        if (v46 + v22 == 1)
        {
          goto LABEL_19;
        }
      }

LABEL_18:
      v44 = 1;
      v23 = v39;
      if (!(v46 + v22))
      {
LABEL_19:

        break;
      }
    }
  }

  v29 = v45[1];
  v30 = *(v29 + 16);
  v31 = v42;
  if (v30)
  {
    v32 = *(v41 + 80);
    v33 = v29 + ((v32 + 32) & ~v32);
    v34 = *(v41 + 72);
    do
    {
      sub_1000090F4(v33, v31);
      v35 = swift_allocObject();
      sub_10000908C(v31, v35 + ((v32 + 16) & ~v32), type metadata accessor for AudioAttachmentMetadata);
      aBlock[4] = sub_100009B04;
      aBlock[5] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100008D1C;
      aBlock[3] = &unk_10009EB98;
      v36 = _Block_copy(aBlock);

      [v48 enumerateAttachmentsInOrderUsingBlock:v36];
      _Block_release(v36);
      v33 += v34;
      --v30;
    }

    while (v30);
  }

  if (v44)
  {
    [v48 save];
    aBlock[0] = 0;
    if ([v40 save:aBlock])
    {
      v37 = aBlock[0];
    }

    else
    {
      v38 = aBlock[0];
      sub_100084688();

      swift_willThrow();
    }
  }
}

void sub_1000096F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v25 - v11;
  v13 = [a1 fileURL];
  if (v13)
  {
    v14 = v13;
    sub_100084768();

    v15 = sub_1000847C8();
    (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
  }

  else
  {
    v15 = sub_1000847C8();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  }

  sub_100009B9C(v10, v12);
  sub_1000847C8();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v12, 1, v15) == 1)
  {
    sub_1000058F0(v12, &qword_1000A56E8, &qword_10008D350);
    return;
  }

  v17 = sub_1000846E8();
  v19 = v18;
  (*(v16 + 8))(v12, v15);
  v20 = (a5 + *(type metadata accessor for AudioAttachmentMetadata(0) + 24));
  if (v20[1])
  {
    v21 = *v20;
    v22 = v20[1];
  }

  else
  {
    v21 = 0;
    v22 = 0xE000000000000000;
  }

  if (v17 == v21 && v19 == v22)
  {

    goto LABEL_16;
  }

  v24 = sub_100085948();

  if (v24)
  {
LABEL_16:
    sub_10000C7D0(a1);
  }
}

uint64_t sub_10000997C(uint64_t a1)
{
  v2 = type metadata accessor for AudioAttachmentMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000099D8()
{
  v1 = *(type metadata accessor for AudioAttachmentMetadata(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_100084D58();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_100009B04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for AudioAttachmentMetadata(0) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  sub_1000096F0(a1, a2, a3, a4, v10);
}

uint64_t sub_100009B9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009C28()
{
  v0 = sub_100084EC8();
  sub_10000B64C(v0, qword_1000B1750);
  sub_10000B614(v0, qword_1000B1750);
  sub_100005740(&qword_1000A5738, &qword_10008B340);
  v1 = (sub_100005740(&qword_1000A5740, &qword_10008B348) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10008B060;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "uuid";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = sub_100084EA8();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "title";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "creation_date_millis_since_epoch";
  *(v10 + 1) = 32;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "last_modified_date_millis_since_epoch";
  *(v12 + 1) = 37;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "tags";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "audio_attachments_meta";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v7();
  return sub_100084EB8();
}

uint64_t sub_100009F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100084DA8();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 3)
      {
        v6 = v3;
        switch(result)
        {
          case 4:
            type metadata accessor for NoteMetadata(0);
LABEL_18:
            v3 = v6;
            sub_100084DC8();
            break;
          case 5:
            sub_100084DD8();
            break;
          case 6:
            type metadata accessor for AudioAttachmentMetadata(0);
            sub_10000B3C4(&qword_1000A56F8, type metadata accessor for AudioAttachmentMetadata, &unk_10008B160);
            sub_100084DF8();
            break;
        }
      }

      else
      {
        if (result != 1 && result != 2)
        {
          if (result != 3)
          {
            goto LABEL_5;
          }

          v6 = v3;
          type metadata accessor for NoteMetadata(0);
          goto LABEL_18;
        }

        type metadata accessor for NoteMetadata(0);
        sub_100084DE8();
      }

LABEL_5:
      result = sub_100084DA8();
    }
  }

  return result;
}

uint64_t sub_10000A0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000ACA4(v3, a1, a2, a3, type metadata accessor for NoteMetadata, 1);
  if (!v4)
  {
    sub_10000AD28(v3, a1, a2, a3, type metadata accessor for NoteMetadata, 2);
    sub_10000A254(v3, a1, a2, a3);
    sub_10000A2CC(v3, a1, a2, a3);
    if (*(*v3 + 16))
    {
      sub_100084E78();
    }

    if (*(v3[1] + 16))
    {
      type metadata accessor for AudioAttachmentMetadata(0);
      sub_10000B3C4(&qword_1000A56F8, type metadata accessor for AudioAttachmentMetadata, &unk_10008B160);
      sub_100084E98();
    }

    type metadata accessor for NoteMetadata(0);
    return sub_100084D38();
  }

  return result;
}

uint64_t sub_10000A254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for NoteMetadata(0);
  if ((*(a1 + *(result + 36) + 8) & 1) == 0)
  {
    return sub_100084E68();
  }

  return result;
}

uint64_t sub_10000A2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for NoteMetadata(0);
  if ((*(a1 + *(result + 40) + 8) & 1) == 0)
  {
    return sub_100084E68();
  }

  return result;
}

uint64_t sub_10000A344@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  a2[1] = _swiftEmptyArrayStorage;
  result = sub_100084D48();
  v5 = a1[8];
  v6 = (a2 + a1[7]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[10];
  v9 = a2 + a1[9];
  *v9 = 0;
  v9[8] = 1;
  v10 = a2 + v8;
  *v10 = 0;
  v10[8] = 1;
  return result;
}

uint64_t sub_10000A3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_100084D58();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10000A44C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_100084D58();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10000A518(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000B3C4(&qword_1000A5730, type metadata accessor for NoteMetadata, &unk_10008B290);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10000A5BC(uint64_t a1)
{
  v2 = sub_10000B3C4(&qword_1000A5718, type metadata accessor for NoteMetadata, &unk_10008B2C8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10000A62C(uint64_t a1, uint64_t a2)
{
  sub_10000B3C4(&qword_1000A5718, type metadata accessor for NoteMetadata, &unk_10008B2C8);

  return sub_100084E48();
}

uint64_t sub_10000A6B0()
{
  v0 = sub_100084EC8();
  sub_10000B64C(v0, qword_1000B1768);
  sub_10000B614(v0, qword_1000B1768);
  sub_100005740(&qword_1000A5738, &qword_10008B340);
  v1 = (sub_100005740(&qword_1000A5740, &qword_10008B348) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10008B060;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "uuid";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = sub_100084EA8();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "audio_file_name";
  *(v8 + 8) = 15;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "audio_name";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "transcript_file_name";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "summary_file_name";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "is_call_recording";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  return sub_100084EB8();
}

uint64_t sub_10000A97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_100084DA8();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      if (result == 4 || result == 5)
      {
LABEL_2:
        type metadata accessor for AudioAttachmentMetadata(0);
        sub_100084DE8();
      }

      else if (result == 6)
      {
        type metadata accessor for AudioAttachmentMetadata(0);
        sub_100084DB8();
      }
    }

    else if (result == 1 || result == 2 || result == 3)
    {
      goto LABEL_2;
    }
  }
}

uint64_t sub_10000AAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000ABB4(v3, a1, a2, a3);
  if (!v4)
  {
    sub_10000AC2C(v3, a1, a2, a3);
    sub_10000ACA4(v3, a1, a2, a3, type metadata accessor for AudioAttachmentMetadata, 3);
    sub_10000AD28(v3, a1, a2, a3, type metadata accessor for AudioAttachmentMetadata, 4);
    sub_10000ADAC(v3, a1, a2, a3);
    sub_10000AE24(v3, a1, a2, a3);
    return sub_100084D38();
  }

  return result;
}

uint64_t sub_10000ABB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AudioAttachmentMetadata(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_100084E88();
  }

  return result;
}

uint64_t sub_10000AC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AudioAttachmentMetadata(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_100084E88();
  }

  return result;
}

uint64_t sub_10000ACA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_100084E88();
  }

  return result;
}

uint64_t sub_10000AD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_100084E88();
  }

  return result;
}

uint64_t sub_10000ADAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AudioAttachmentMetadata(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return sub_100084E88();
  }

  return result;
}

uint64_t sub_10000AE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AudioAttachmentMetadata(0);
  if (*(a1 + *(result + 40)) != 2)
  {
    return sub_100084E58();
  }

  return result;
}

uint64_t sub_10000AEA0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100084D48();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1[10];
  v12 = (a2 + a1[9]);
  *v12 = 0;
  v12[1] = 0;
  *(a2 + v11) = 2;
  return result;
}

uint64_t sub_10000AF20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100084D58();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10000AF88(uint64_t a1)
{
  v3 = sub_100084D58();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_10000B040(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000B3C4(&qword_1000A5750, type metadata accessor for AudioAttachmentMetadata, &unk_10008B128);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10000B0E0@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_100084EC8();
  v7 = sub_10000B614(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_10000B17C(uint64_t a1)
{
  v2 = sub_10000B3C4(&qword_1000A56F8, type metadata accessor for AudioAttachmentMetadata, &unk_10008B160);

  return Message.debugDescription.getter(a1, v2);
}

Swift::Int sub_10000B1E8(uint64_t a1, uint64_t a2)
{
  sub_100085A08();
  sub_100085028();
  return sub_100085A38();
}

uint64_t sub_10000B240(uint64_t a1, uint64_t a2)
{
  sub_10000B3C4(&qword_1000A56F8, type metadata accessor for AudioAttachmentMetadata, &unk_10008B160);

  return sub_100084E48();
}

Swift::Int sub_10000B2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100085A08();
  sub_100085028();
  return sub_100085A38();
}

uint64_t sub_10000B3C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000B504(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000B614(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10000B64C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000B6B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_100085948() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10000B740(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioAttachmentMetadata(0) - 8;
  v5 = __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1000090F4(v13, v10);
        sub_1000090F4(v14, v7);
        v16 = sub_10000B8B4(v10, v7);
        sub_10000997C(v7);
        sub_10000997C(v10);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_10000B8B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioAttachmentMetadata(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_100085948();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_100085948();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = sub_100085948();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = v4[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }

    if (*v30 != *v32 || v31 != v33)
    {
      v35 = v4;
      v36 = sub_100085948();
      v4 = v35;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v33)
  {
    return 0;
  }

  v37 = v4[9];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (!v41)
    {
      return 0;
    }

    if (*v38 != *v40 || v39 != v41)
    {
      v42 = v4;
      v43 = sub_100085948();
      v4 = v42;
      if ((v43 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v41)
  {
    return 0;
  }

  v44 = v4[10];
  v45 = *(a1 + v44);
  v46 = *(a2 + v44);
  if (v45 != 2)
  {
    if (v46 != 2 && ((v45 ^ v46) & 1) == 0)
    {
      goto LABEL_50;
    }

    return 0;
  }

  if (v46 != 2)
  {
    return 0;
  }

LABEL_50:
  sub_100084D58();
  sub_10000B3C4(&qword_1000A5748, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_100085058() & 1;
}

uint64_t sub_10000BB24(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for NoteMetadata(0);
  v5 = v4[7];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_100085948();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[8];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_100085948();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[9];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  v26 = v4[10];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 8);
  if (v28)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  if (sub_10000B6B0(*a1, *a2) & 1) != 0 && (sub_10000B740(a1[1], a2[1]))
  {
    sub_100084D58();
    sub_10000B3C4(&qword_1000A5748, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    return sub_100085058() & 1;
  }

  return 0;
}

uint64_t sub_10000BD0C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100084D58();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_10000BDCC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100084D58();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10000BE70(uint64_t a1)
{
  sub_10000C2A0(319, &qword_1000A57C0, &type metadata for String, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_10000BFA8(319);
    if (v2 <= 0x3F)
    {
      sub_100084D58();
      if (v3 <= 0x3F)
      {
        sub_10000C2A0(319, &qword_1000A5538, &type metadata for String, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_10000C2A0(319, &unk_1000A57D0, &type metadata for Int64, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10000BFA8(uint64_t a1)
{
  if (!qword_1000A57C8)
  {
    type metadata accessor for AudioAttachmentMetadata(255);
    v1 = sub_100085278();
    if (!v2)
    {
      atomic_store(v1, &qword_1000A57C8);
    }
  }
}

uint64_t sub_10000C014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100084D58();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10000C0F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100084D58();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_10000C1B0(uint64_t a1)
{
  sub_100084D58();
  if (v1 <= 0x3F)
  {
    sub_10000C2A0(319, &qword_1000A5538, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_10000C2A0(319, &unk_1000A5880, &type metadata for Bool, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10000C2A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

id sub_10000C304@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AudioAttachmentMetadata(0);
  v62 = *(v4 - 1);
  __chkstk_darwin(v4);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100084D48();
  v7 = &v6[v4[5]];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v6[v4[6]];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v6[v4[7]];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v6[v4[8]];
  *v10 = 0;
  *(v10 + 1) = 0;
  v59 = v10;
  v11 = &v6[v4[9]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v58 = v11;
  v12 = v4[10];
  v6[v12] = 2;
  v13 = [a1 attachmentModel];
  objc_opt_self();
  v61 = v13;
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {

    sub_10000997C(v6);
    v23 = 1;
    v24 = v62;
    return (*(v24 + 56))(a2, v23, 1, v4);
  }

  v15 = v14;
  v56 = a2;
  v16 = [a1 identifier];
  if (v16)
  {
    v17 = v16;
    v18 = sub_100085098();
    v55 = v4;
    v19 = v12;
    v20 = v15;
    v22 = v21;

    v60 = v18;
    *v7 = v18;
    v7[1] = v22;
    v57 = v22;
    v15 = v20;
    v12 = v19;
    v4 = v55;
  }

  else
  {
    v60 = 0;
    v57 = 0;
  }

  v25 = [a1 title];
  if (v25)
  {
    v26 = v25;
    v27 = v4;
    v28 = v12;
    v29 = a1;
    v30 = sub_100085098();
    v32 = v31;

    *v9 = v30;
    v9[1] = v32;
    a1 = v29;
    v12 = v28;
    v4 = v27;
  }

  v33 = sub_100067784();
  if (v34)
  {
    *v8 = v33;
    v8[1] = v34;
  }

  result = [v15 audioDocument];
  v36 = v57;
  if (!result)
  {
    __break(1u);
    goto LABEL_29;
  }

  v37 = result;
  v38 = [result isCallRecording];

  v6[v12] = v38;
  result = [v15 audioDocument];
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v39 = result;
  v40 = [result transcriptAsPlainText];

  sub_100085098();
  v41 = sub_100085128();

  if (v41 >= 1)
  {
    v42 = v60;
    if (!v36)
    {
      v42 = 0;
    }

    v43 = 0xE000000000000000;
    v65[0] = 0x7263736E6172745FLL;
    v65[1] = 0xEF7478742E747069;
    if (v36)
    {
      v43 = v36;
    }

    v63 = v42;
    v64 = v43;

    v63 = sub_100085198();
    v64 = v44;
    sub_100085148();
    v45 = v64;
    v46 = v59;
    *v59 = v63;
    v46[1] = v45;
  }

  result = [v15 audioDocument];
  if (result)
  {
    v47 = result;
    v48 = [result recordingSummaryAsPlainText];

    sub_100085098();
    v49 = sub_100085128();

    if (v49 < 1)
    {
    }

    else
    {
      v50 = v60;
      if (!v36)
      {
        v50 = 0;
      }

      v51 = 0xE000000000000000;
      strcpy(v65, "_summary.txt");
      BYTE5(v65[1]) = 0;
      HIWORD(v65[1]) = -5120;
      if (v36)
      {
        v51 = v36;
      }

      v63 = v50;
      v64 = v51;

      v63 = sub_100085198();
      v64 = v52;
      sub_100085148();

      v53 = v64;
      v54 = v58;
      *v58 = v63;
      v54[1] = v53;
    }

    v24 = v62;
    a2 = v56;
    sub_10000CA78(v6, v56);
    v23 = 0;
    return (*(v24 + 56))(a2, v23, 1, v4);
  }

LABEL_30:
  __break(1u);
  return result;
}

void sub_10000C7D0(void *a1)
{
  v3 = type metadata accessor for AudioAttachmentMetadata(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 attachmentModel];
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7 && (v8 = v7, (v9 = [a1 managedObjectContext]) != 0))
  {
    v10 = v9;
    sub_1000090F4(v1, &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v12 = (v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = swift_allocObject();
    sub_10000CA78(v6, v13 + v11);
    *(v13 + v12) = a1;
    *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v8;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_10000CD34;
    *(v14 + 24) = v13;
    aBlock[4] = sub_100009024;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000699A4;
    aBlock[3] = &unk_10009EC10;
    v15 = _Block_copy(aBlock);
    v16 = a1;
    v17 = v20;

    [v10 performBlockAndWait:v15];

    _Block_release(v15);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if (v17)
    {
      __break(1u);
    }
  }

  else
  {
    v18 = v20;
  }
}

uint64_t sub_10000CA78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioAttachmentMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10000CADC(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for AudioAttachmentMetadata(0);
  if (*(a1 + *(v6 + 28) + 8))
  {

    v7 = sub_100085068();

    [a2 setTitle:v7];
  }

  v8 = *(a1 + *(v6 + 40));
  if (v8 != 2)
  {
    v9 = [a3 audioDocument];
    if (v9)
    {
      v10 = v9;
      [v9 setIsCallRecording:v8 & 1];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10000CBE4()
{
  v1 = *(type metadata accessor for AudioAttachmentMetadata(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = sub_100084D58();
  (*(*(v7 - 8) + 8))(v6, v7);

  return _swift_deallocObject(v0, v5 + 8, v2 | 7);
}

void sub_10000CD34()
{
  v1 = *(type metadata accessor for AudioAttachmentMetadata(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_10000CADC(v0 + v2, v4, v5);
}

uint64_t sub_10000CDDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000CDF4()
{
  v0 = sub_100084FB8();
  sub_10000B64C(v0, qword_1000A58C8);
  sub_10000B614(v0, qword_1000A58C8);
  return sub_100084F98();
}

id ICArchiveNotesPreviewer.init(forArchiveAt:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_100005740(&qword_1000A58E0, &unk_10008B3B0);
  __chkstk_darwin(v2 - 8);
  v72 = &v63 - v3;
  v84 = type metadata accessor for ICArchiveNotesPreviewer.Note(0);
  v71 = *(v84 - 8);
  v4 = __chkstk_darwin(v84);
  v88 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v83 = &v63 - v6;
  v7 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v85 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v63 - v12;
  __chkstk_darwin(v11);
  v15 = &v63 - v14;
  v16 = sub_1000847C8();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v19, a1, v16);
  type metadata accessor for ICArchivePreviewer();
  swift_allocObject();
  v20 = v82;
  v21 = ICArchivePreviewer.init(forArchiveAt:)(v19);
  if (v20)
  {
    v22 = v20;
    (*(v17 + 8))(a1, v16);
    swift_deallocPartialClassInstance();
    return v22;
  }

  v65 = a1;
  v82 = v15;
  v64 = v13;
  v68 = 0;
  v80 = v10;
  v66 = v17;
  v67 = v16;
  v23 = v70;
  *&v70[OBJC_IVAR____TtC26NotesAppMigrationExtension23ICArchiveNotesPreviewer_archivePreviewer] = v21;
  v24 = v21;
  swift_beginAccess();
  v25 = *(v24 + 24);
  v26 = *(v25 + 16);
  v27 = v23;
  if (v26)
  {
    v28 = sub_10000F810(*(v25 + 16), 0);
    v29 = v85;
    v30 = sub_100010D44(v87, &v28[(*(v85 + 80) + 32) & ~*(v85 + 80)], v26, v25);
    v31 = v87[0];
    v81 = v87[2];
    v78 = v87[4];
    v79 = v87[3];
    swift_bridgeObjectRetain_n();
    sub_100010FF4(v31);
    if (v30 != v26)
    {
      __break(1u);
      goto LABEL_26;
    }

    v32 = v67;
    v33 = v66;
  }

  else
  {

    v28 = _swiftEmptyArrayStorage;
    v32 = v67;
    v33 = v66;
    v29 = v85;
  }

  v87[0] = v28;
  v34 = v68;
  sub_10000F918(v87);
  v68 = v34;
  if (!v34)
  {

    v35 = *(v87[0] + 16);
    v36 = v64;
    if (v35)
    {
      v38 = *(v29 + 16);
      v37 = v29 + 16;
      v79 = v38;
      v39 = (*(v37 + 64) + 32) & ~*(v37 + 64);
      v63 = v87[0];
      v40 = v87[0] + v39;
      v41 = *(v37 + 56);
      v77 = (v37 + 72);
      v78 = v41;
      v85 = v37;
      v76 = (v37 - 8);
      v75 = (v71 + 56);
      v74 = (v71 + 48);
      v81 = _swiftEmptyArrayStorage;
      v73 = enum case for ICObjectReferences.note<A>(_:);
      v42 = v72;
      v43 = v82;
      do
      {
        v44 = v79;
        v79(v43, v40, v7);
        v44(v36, v43, v7);
        v45 = v36;
        v46 = v80;
        v44(v80, v45, v7);
        v47 = (*v77)(v46, v7);
        v48 = *v76;
        if (v47 == v73)
        {
          v48(v46, v7);
          sub_100084A78();
          v49 = sub_100084AE8();
          v51 = v50;
          v48(v45, v7);
          v48(v43, v7);
          v52 = v84;
          v53 = (v88 + *(v84 + 20));
          *v53 = v49;
          v53[1] = v51;
          v42 = v72;
          sub_100011790(v88, v72, type metadata accessor for ICArchiveNotesPreviewer.Note);
          v54 = 0;
        }

        else
        {
          v48(v45, v7);
          v48(v43, v7);
          v48(v46, v7);
          v54 = 1;
          v52 = v84;
        }

        v36 = v45;
        (*v75)(v42, v54, 1, v52);
        if ((*v74)(v42, 1, v52) == 1)
        {
          sub_1000058F0(v42, &qword_1000A58E0, &unk_10008B3B0);
        }

        else
        {
          sub_100011790(v42, v83, type metadata accessor for ICArchiveNotesPreviewer.Note);
          v55 = v81;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v55 = sub_10000F3E0(0, v55[2] + 1, 1, v55, &qword_1000A5A90, &qword_10008B5B0, type metadata accessor for ICArchiveNotesPreviewer.Note);
          }

          v57 = v55[2];
          v56 = v55[3];
          if (v57 >= v56 >> 1)
          {
            v55 = sub_10000F3E0((v56 > 1), v57 + 1, 1, v55, &qword_1000A5A90, &qword_10008B5B0, type metadata accessor for ICArchiveNotesPreviewer.Note);
          }

          v55[2] = v57 + 1;
          v58 = (*(v71 + 80) + 32) & ~*(v71 + 80);
          v81 = v55;
          sub_100011790(v83, v55 + v58 + *(v71 + 72) * v57, type metadata accessor for ICArchiveNotesPreviewer.Note);
        }

        v43 = v82;
        v40 += v78;
        --v35;
      }

      while (v35);

      v59 = v65;
      v27 = v70;
      v60 = ObjectType;
      v32 = v67;
      v33 = v66;
      v61 = v81;
    }

    else
    {

      v61 = _swiftEmptyArrayStorage;
      v59 = v65;
      v60 = ObjectType;
    }

    *&v27[OBJC_IVAR____TtC26NotesAppMigrationExtension23ICArchiveNotesPreviewer_notes] = v61;
    v86.receiver = v27;
    v86.super_class = v60;
    v22 = objc_msgSendSuper2(&v86, "init", v63);
    (*(v33 + 8))(v59, v32);
    return v22;
  }

LABEL_26:

  __break(1u);
  return result;
}

uint64_t type metadata accessor for ICArchiveNotesPreviewer.Note(uint64_t a1)
{
  result = qword_1000A5988;
  if (!qword_1000A5988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*ICArchiveNotesPreviewer.startPreviewing(_:completion:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), void *a3))(uint64_t, uint64_t)
{
  v7 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-v9];
  v11 = *(v3 + OBJC_IVAR____TtC26NotesAppMigrationExtension23ICArchiveNotesPreviewer_archivePreviewer);
  sub_10000D9E0(a1, &v14[-v9]);

  v12 = sub_10003DB88(v10, v11, a2, a3);

  (*(v8 + 8))(v10, v7);
  return v12;
}

uint64_t sub_10000D9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100005740(&qword_1000A5A88, &unk_10008D110);
  __chkstk_darwin(v5 - 8);
  v7 = &v18[-v6];
  v8 = *(v2 + OBJC_IVAR____TtC26NotesAppMigrationExtension23ICArchiveNotesPreviewer_archivePreviewer);
  swift_beginAccess();
  v9 = *(v8 + 24);
  v19 = a1;

  sub_10000E648(sub_100011804, v9, v7);

  v10 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v7, v10);
  }

  sub_1000058F0(v7, &qword_1000A5A88, &unk_10008D110);
  if (qword_1000A53D8 != -1)
  {
    swift_once();
  }

  v12 = sub_100084FB8();
  sub_10000B614(v12, qword_1000A58C8);
  v13 = sub_100084FA8();
  v14 = sub_100085388();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Object to be previewed does not exist", v15, 2u);
  }

  sub_1000081FC();
  swift_allocError();
  *v16 = 4;
  return swift_willThrow();
}

void sub_10000DC58(void *a1, char a2, void (*a3)(void *, void))
{
  if (a2)
  {
    swift_errorRetain();
  }

  else
  {
    v7[3] = sub_100008250(0, &qword_1000A54A8, ICCloudSyncingObject_ptr);
    v7[0] = a1;
    v6 = a1;
    a1 = sub_10000DD60(v7, &qword_1000A56C0, ICNote_ptr, &qword_1000A5A68, &qword_10008B588);
    sub_100006304(v7);
  }

  a3(a1, a2 & 1);
  sub_1000117F8(a1, a2 & 1);
}

uint64_t sub_10000DD60(uint64_t a1, unint64_t *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_100085A58();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000056E4(a1, v18);
  v14 = sub_100008250(0, a2, a3);
  if (swift_dynamicCast())
  {
    return v17[0];
  }

  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_100085638(20);

  strcpy(v17, "Cannot cast ");
  BYTE5(v17[1]) = 0;
  HIWORD(v17[1]) = -5120;
  sub_1000056E4(a1, v18);
  sub_100085A48();
  v19._countAndFlagsBits = sub_100085908();
  sub_100085158(v19);

  v16 = *(v11 + 8);
  v16(v13, v10);
  v20._countAndFlagsBits = 544432416;
  v20._object = 0xE400000000000000;
  sub_100085158(v20);
  v18[3] = sub_100005740(a4, a5);
  v18[0] = v14;
  sub_100085A48();
  v21._countAndFlagsBits = sub_100085908();
  sub_100085158(v21);

  v16(v13, v10);
  result = sub_100085708();
  __break(1u);
  return result;
}

uint64_t sub_10000DFBC(uint64_t a1)
{
  v2 = sub_100085A58();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000056E4(a1, v10);
  v6 = sub_100005740(&qword_1000A5A40, &qword_10008B560);
  if (swift_dynamicCast())
  {
    return v9[0];
  }

  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_100085638(20);

  strcpy(v9, "Cannot cast ");
  BYTE5(v9[1]) = 0;
  HIWORD(v9[1]) = -5120;
  sub_1000056E4(a1, v10);
  sub_100085A48();
  v11._countAndFlagsBits = sub_100085908();
  sub_100085158(v11);

  v8 = *(v3 + 8);
  v8(v5, v2);
  v12._countAndFlagsBits = 544432416;
  v12._object = 0xE400000000000000;
  sub_100085158(v12);
  v10[3] = sub_100005740(&qword_1000A5A48, &qword_10008B568);
  v10[0] = v6;
  sub_100085A48();
  v13._countAndFlagsBits = sub_100085908();
  sub_100085158(v13);

  v8(v5, v2);
  result = sub_100085708();
  __break(1u);
  return result;
}

uint64_t ICArchiveNotesPreviewer.stopPreviewing(_:)(uint64_t a1)
{
  v2 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7[-v4];
  sub_10000D9E0(a1, &v7[-v4]);
  ICArchivePreviewer.stopPreviewing(_:)(v5);
  return (*(v3 + 8))(v5, v2);
}

id ICArchiveNotesPreviewer.state(of:)(uint64_t a1)
{
  v3 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC26NotesAppMigrationExtension23ICArchiveNotesPreviewer_archivePreviewer);
  swift_beginAccess();
  v8 = *(v7 + 24);

  sub_10000D9E0(a1, v6);
  if (*(v8 + 16) && (v9 = sub_100039054(v6), (v10 & 1) != 0))
  {
    v11 = *(v8 + 56) + 24 * v9;
    v12 = *(v11 + 16);
    v13 = *v11;
    sub_1000112CC(*v11, *(v11 + 8), *(v11 + 16));
    (*(v4 + 8))(v6, v3);

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        return v13;
      }

      else
      {
        return 0;
      }
    }

    else if (v12)
    {
      v16[3] = sub_100008250(0, &qword_1000A54A8, ICCloudSyncingObject_ptr);
      v16[0] = v13;
      v15 = sub_10000DD60(v16, &qword_1000A56C0, ICNote_ptr, &qword_1000A5A68, &qword_10008B588);
      sub_100006304(v16);
      return v15;
    }

    else
    {

      return v13;
    }
  }

  else
  {

    (*(v4 + 8))(v6, v3);
    return 0;
  }
}

uint64_t sub_10000E548(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000847C8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  sub_100084A78();
  v6 = sub_100084758();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t sub_10000E648@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = v3;
  v32 = a1;
  v28 = a3;
  v38 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v6 = __chkstk_darwin(v38);
  v37 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v31 = &v28 - v9;
  v10 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 64);
  v14 = (v11 + 63) >> 6;
  v33 = v8 + 32;
  v34 = v8;
  v29 = (v8 + 8);
  v30 = v8 + 16;
  v35 = a2;

  v16 = 0;
  v17 = v31;
  if (v13)
  {
    while (1)
    {
      v36 = v4;
      v18 = v16;
LABEL_9:
      v19 = v34;
      v20 = v38;
      (*(v34 + 16))(v17, *(v35 + 48) + *(v34 + 72) * (__clz(__rbit64(v13)) | (v18 << 6)), v38);
      v21 = *(v19 + 32);
      v22 = v37;
      v21(v37, v17, v20);
      v23 = v36;
      v24 = v32(v22);
      v4 = v23;
      if (v23)
      {
        (*v29)(v37, v38);
      }

      if (v24)
      {
        break;
      }

      v13 &= v13 - 1;
      result = (*v29)(v37, v38);
      v16 = v18;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v27 = v28;
    v21(v28, v37, v38);
    v26 = v27;
    v25 = 0;
    return (*(v34 + 56))(v26, v25, 1, v38);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v14)
      {

        v25 = 1;
        v26 = v28;
        return (*(v34 + 56))(v26, v25, 1, v38);
      }

      v13 = *(v10 + 8 * v18);
      ++v16;
      if (v13)
      {
        v36 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

id ICArchiveImporter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ICArchiveNotesPreviewer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t ICArchiveNotesPreviewer.Note.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for ICArchiveNotesPreviewer.Note(0) + 20));

  return v1;
}

Swift::Int ICArchiveNotesPreviewer.Note.hashValue.getter()
{
  sub_100085A08();
  _s26NotesAppMigrationExtension09ICArchiveA9PreviewerC4NoteV4hash4intoys6HasherVz_tF_0();
  return sub_100085A38();
}

Swift::Int sub_10000EAB4(uint64_t a1)
{
  sub_100085A08();
  _s26NotesAppMigrationExtension09ICArchiveA9PreviewerC4NoteV4hash4intoys6HasherVz_tF_0();
  return sub_100085A38();
}

char *sub_10000EAF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005740(&qword_1000A59D8, &qword_10008CCA0);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10000EC24(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005740(&qword_1000A5A58, &qword_10008B578);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_10000ED4C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100005740(&qword_1000A5A70, &qword_10008B590);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005740(&qword_1000A5A78, &qword_10008B598);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10000EEA8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100005740(&qword_1000A59C0, &unk_10008B4E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005740(&qword_1000A59C8, &qword_10008B770);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10000F038(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100005740(a5, a6);
  v16 = *(sub_100005740(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_100005740(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_10000F270(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100005740(&qword_1000A5A30, &unk_10008B550);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005740(&qword_1000A5A38, &unk_10008D320);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10000F3E0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100005740(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_10000F5BC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100005740(&qword_1000A59F8, &qword_10008B518);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005740(&qword_1000A5A00, &qword_10008B520);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000F6F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005740(&qword_1000A5A08, &qword_10008B528);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000F810(uint64_t a1, uint64_t a2)
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

  sub_100005740(&qword_1000A5A60, &qword_10008B580);
  v4 = *(sub_100005740(&qword_1000A58E8, &qword_10008B8B0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int sub_10000F918(uint64_t *a1)
{
  v2 = *(sub_100005740(&qword_1000A58E8, &qword_10008B8B0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10004E8FC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10000F9CC(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_10000F9CC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1000858F8(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
        v6 = sub_100085248();
        v6[2] = v5;
      }

      v7 = *(sub_100005740(&qword_1000A58E8, &qword_10008B8B0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10000FDAC(v8, v9, a1, v4);
      v6[2] = 0;
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
    return sub_10000FB10(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10000FB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v9 = __chkstk_darwin(v8);
  v40 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v44 = &v30 - v12;
  result = __chkstk_darwin(v11);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v14 + 16);
    v42 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v19 = v16 + v17 * (a3 - 1);
    v37 = -v17;
    v38 = (v14 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v43;
      v23 = v41;
      v41(v43, v21, v8);
      v24 = v44;
      v23(v44, v19, v8);
      sub_100011824();
      v25 = sub_100085048();
      v26 = *v18;
      (*v18)(v24, v8);
      result = v26(v22, v8);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = v35 + v31;
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v27)(v19, v28, v8);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10000FDAC(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v121 = a1;
  v9 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v125 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v133 = &v118 - v14;
  v15 = __chkstk_darwin(v13);
  v138 = &v118 - v16;
  result = __chkstk_darwin(v15);
  v139 = &v118 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v121;
    if (!*v121)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_10004E488(a4);
    }

    v141 = result;
    v113 = *(result + 16);
    if (v113 >= 2)
    {
      while (*a3)
      {
        a4 = v113 - 1;
        v114 = *(result + 16 * v113);
        v115 = result;
        v116 = *(result + 16 * (v113 - 1) + 40);
        sub_1000107A8(*a3 + *(v10 + 72) * v114, *a3 + *(v10 + 72) * *(result + 16 * (v113 - 1) + 32), *a3 + *(v10 + 72) * v116, v5);
        if (v6)
        {
        }

        if (v116 < v114)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_10004E488(v115);
        }

        if (v113 - 2 >= *(v115 + 2))
        {
          goto LABEL_122;
        }

        v117 = &v115[16 * v113];
        *v117 = v114;
        *(v117 + 1) = v116;
        v141 = v115;
        sub_10004E3FC(a4);
        result = v141;
        v113 = *(v141 + 16);
        if (v113 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v136 = (v10 + 8);
  v137 = v10 + 16;
  v135 = (v10 + 32);
  v21 = _swiftEmptyArrayStorage;
  v123 = a3;
  v120 = a4;
  v140 = v9;
  v119 = v10;
  while (1)
  {
    v22 = v20;
    v126 = v21;
    if (v20 + 1 >= v19)
    {
      v36 = v20 + 1;
    }

    else
    {
      v131 = v19;
      v23 = v9;
      v24 = *a3;
      v25 = v10;
      v26 = *(v10 + 72);
      v5 = v24 + v26 * (v20 + 1);
      v127 = v24;
      v27 = *(v25 + 16);
      v27(v139, v5, v23);
      v28 = v24 + v26 * v22;
      v29 = v25;
      v122 = v22;
      v30 = v138;
      v130 = v27;
      v27(v138, v28, v23);
      v31 = sub_100011824();
      v32 = v139;
      v129 = v31;
      LODWORD(v132) = sub_100085048();
      v33 = *(v29 + 8);
      v33(v30, v23);
      v128 = v33;
      result = (v33)(v32, v23);
      v34 = v122 + 2;
      v134 = v26;
      v35 = v127 + v26 * (v122 + 2);
      while (1)
      {
        v36 = v131;
        if (v131 == v34)
        {
          break;
        }

        v38 = v139;
        v37 = v140;
        v39 = v130;
        (v130)(v139, v35, v140);
        v40 = v6;
        v41 = v138;
        v39(v138, v5, v37);
        v42 = sub_100085048() & 1;
        v43 = v41;
        v6 = v40;
        v44 = v128;
        v128(v43, v37);
        result = v44(v38, v37);
        ++v34;
        v35 += v134;
        v5 += v134;
        if ((v132 & 1) != v42)
        {
          v36 = v34 - 1;
          break;
        }
      }

      v22 = v122;
      a3 = v123;
      v10 = v119;
      v21 = v126;
      a4 = v120;
      v9 = v140;
      if (v132)
      {
        if (v36 < v122)
        {
          goto LABEL_125;
        }

        if (v122 < v36)
        {
          v45 = v134 * (v36 - 1);
          v5 = v36 * v134;
          v131 = v36;
          v46 = v36;
          v47 = v122;
          v48 = v122 * v134;
          do
          {
            if (v47 != --v46)
            {
              v50 = *a3;
              if (!v50)
              {
                goto LABEL_131;
              }

              v132 = *v135;
              (v132)(v125, v50 + v48, v140, v21);
              if (v48 < v45 || v50 + v48 >= v50 + v5)
              {
                v49 = v140;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v49 = v140;
                if (v48 != v45)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v132)(v50 + v45, v125, v49);
              a3 = v123;
              v21 = v126;
            }

            ++v47;
            v45 -= v134;
            v5 -= v134;
            v48 += v134;
          }

          while (v47 < v46);
          v10 = v119;
          a4 = v120;
          v9 = v140;
          v22 = v122;
          v36 = v131;
        }
      }
    }

    v51 = a3[1];
    if (v36 < v51)
    {
      if (__OFSUB__(v36, v22))
      {
        goto LABEL_124;
      }

      if (v36 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if (v22 + a4 >= v51)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v22 + a4;
        }

        if (v5 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v36 != v5)
        {
          break;
        }
      }
    }

    v5 = v36;
    if (v36 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v126;
    }

    else
    {
      result = sub_10000EC24(0, *(v126 + 2) + 1, 1, v126);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v52 = *(v21 + 3);
    v53 = a4 + 1;
    if (a4 >= v52 >> 1)
    {
      result = sub_10000EC24((v52 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v53;
    v54 = &v21[16 * a4];
    *(v54 + 4) = v22;
    *(v54 + 5) = v5;
    v55 = *v121;
    if (!*v121)
    {
      goto LABEL_133;
    }

    v127 = v5;
    if (a4)
    {
      while (1)
      {
        v5 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v56 = *(v21 + 4);
          v57 = *(v21 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_52:
          if (v59)
          {
            goto LABEL_112;
          }

          v72 = &v21[16 * v53];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_115;
          }

          v78 = &v21[16 * v5 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_119;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v5 = v53 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v82 = &v21[16 * v53];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_66:
        if (v77)
        {
          goto LABEL_114;
        }

        v85 = &v21[16 * v5];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_117;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v5 - 1;
        if (v5 - 1 >= v53)
        {
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v93 = v21;
        v94 = *&v21[16 * a4 + 32];
        v95 = *&v21[16 * v5 + 40];
        sub_1000107A8(*a3 + *(v10 + 72) * v94, *a3 + *(v10 + 72) * *&v21[16 * v5 + 32], *a3 + *(v10 + 72) * v95, v55);
        if (v6)
        {
        }

        if (v95 < v94)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_10004E488(v93);
        }

        if (a4 >= *(v93 + 2))
        {
          goto LABEL_109;
        }

        v96 = &v93[16 * a4];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        v141 = v93;
        result = sub_10004E3FC(v5);
        v21 = v141;
        v53 = *(v141 + 16);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v21[16 * v53 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_110;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_111;
      }

      v67 = &v21[16 * v53];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_113;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_116;
      }

      if (v71 >= v63)
      {
        v89 = &v21[16 * v5 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_120;
        }

        if (v58 < v92)
        {
          v5 = v53 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v127;
    a4 = v120;
    v9 = v140;
    if (v127 >= v19)
    {
      goto LABEL_95;
    }
  }

  v118 = v6;
  v97 = *a3;
  v98 = *(v10 + 72);
  v134 = *(v10 + 16);
  v99 = v97 + v98 * (v36 - 1);
  v100 = v22;
  v101 = -v98;
  v122 = v100;
  v102 = v100 - v36;
  v132 = v97;
  v124 = v98;
  a4 = v97 + v36 * v98;
  v127 = v5;
LABEL_85:
  v130 = v99;
  v131 = v36;
  v128 = a4;
  v129 = v102;
  v103 = v99;
  while (1)
  {
    v104 = v139;
    v105 = v134;
    (v134)(v139, a4, v9, v21);
    v106 = v138;
    v105(v138, v103, v140);
    sub_100011824();
    v107 = sub_100085048();
    v108 = *v136;
    v109 = v106;
    v9 = v140;
    (*v136)(v109, v140);
    result = v108(v104, v9);
    if ((v107 & 1) == 0)
    {
LABEL_84:
      v36 = v131 + 1;
      v99 = &v130[v124];
      v102 = v129 - 1;
      a4 = v128 + v124;
      v5 = v127;
      if (v131 + 1 != v127)
      {
        goto LABEL_85;
      }

      v6 = v118;
      v22 = v122;
      a3 = v123;
      v10 = v119;
      if (v127 < v122)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v132)
    {
      break;
    }

    v110 = *v135;
    v111 = v133;
    (*v135)(v133, a4, v9);
    swift_arrayInitWithTakeFrontToBack();
    v110(v103, v111, v9);
    v103 += v101;
    a4 += v101;
    if (__CFADD__(v102++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_1000107A8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v8 = *(v56 - 8);
  v9 = __chkstk_darwin(v56);
  v54 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v53 = &v44 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v55 = a3;
  v16 = (a2 - a1) / v14;
  v59 = a1;
  v58 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v18;
    if (v18 >= 1)
    {
      v29 = -v14;
      v48 = (v8 + 8);
      v49 = (v8 + 16);
      v30 = a4 + v18;
      v31 = v55;
      v46 = a1;
      v47 = a4;
      v50 = v29;
      do
      {
        v44 = v28;
        v32 = a2 + v29;
        v33 = v28;
        v51 = a2;
        v52 = a2 + v29;
        while (1)
        {
          if (a2 <= a1)
          {
            v59 = a2;
            v28 = v44;
            goto LABEL_59;
          }

          v35 = v31;
          v45 = v33;
          v55 = v31 + v29;
          v36 = v30 + v29;
          v37 = *v49;
          v38 = v53;
          v39 = v30 + v29;
          v40 = v30;
          v41 = v56;
          (*v49)(v53, v39, v56);
          v42 = v54;
          (v37)(v54, v32, v41);
          sub_100011824();
          LOBYTE(v37) = sub_100085048();
          v43 = *v48;
          (*v48)(v42, v41);
          v43(v38, v41);
          if (v37)
          {
            break;
          }

          v33 = v36;
          v31 = v55;
          if (v35 < v40 || v55 >= v40)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v52;
            a1 = v46;
          }

          else
          {
            v32 = v52;
            a1 = v46;
            if (v35 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v30 = v36;
          v34 = v36 > v47;
          v29 = v50;
          a2 = v51;
          if (!v34)
          {
            v28 = v33;
            goto LABEL_58;
          }
        }

        v31 = v55;
        if (v35 < v51 || v55 >= v51)
        {
          a2 = v52;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v46;
          v30 = v40;
        }

        else
        {
          a2 = v52;
          a1 = v46;
          v30 = v40;
          if (v35 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v28 = v45;
        v29 = v50;
      }

      while (v30 > v47);
    }

LABEL_58:
    v59 = a2;
LABEL_59:
    v57 = v28;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v52 = a4 + v17;
    v57 = a4 + v17;
    if (v17 >= 1 && a2 < v55)
    {
      v50 = *(v8 + 16);
      v51 = v8 + 16;
      v48 = v14;
      v49 = (v8 + 8);
      do
      {
        v20 = v53;
        v21 = v56;
        v22 = v50;
        v50(v53, a2, v56);
        v23 = v54;
        v22(v54, a4, v21);
        sub_100011824();
        v24 = sub_100085048();
        v25 = *v49;
        (*v49)(v23, v21);
        v25(v20, v21);
        if (v24)
        {
          v26 = v48;
          if (a1 < a2 || a1 >= v48 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v26;
        }

        else
        {
          v26 = v48;
          v27 = v48 + a4;
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v58 = v27;
          a4 += v26;
        }

        a1 += v26;
        v59 = a1;
      }

      while (a4 < v52 && a2 < v55);
    }
  }

  sub_10004E49C(&v59, &v58, &v57);
  return 1;
}

uint64_t sub_100010D44(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_100010FFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s3TagVMa(0);
  v33 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v31 = &v28 - v12;
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
LABEL_18:
    v17 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v17;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    result = 0;
    v17 = 0;
    v28 = v14;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v32;
      a1 = *(v33 + 72);
      sub_10001172C(*(a4 + 48) + a1 * (v22 | (v17 << 6)), v32);
      v24 = v23;
      v25 = v31;
      sub_100011790(v24, v31, _s3TagVMa);
      sub_100011790(v25, a2, _s3TagVMa);
      if (v19 == v30)
      {
        a1 = v29;
        a3 = v30;
        goto LABEL_23;
      }

      a2 += a1;
      result = v19;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v18;
    }

    v17 = v27 - 1;
    a3 = result;
    a1 = v29;
LABEL_23:
    v14 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t _s26NotesAppMigrationExtension09ICArchiveA9PreviewerC4NoteV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_100084758())
  {
    v4 = *(type metadata accessor for ICArchiveNotesPreviewer.Note(0) + 20);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (sub_100085948() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

id sub_1000112CC(id result, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 2:

      return swift_errorRetain();
    case 1:

      return result;
    case 0:
      v4 = result;
  }

  return result;
}

unint64_t sub_100011344()
{
  result = qword_1000A5900;
  if (!qword_1000A5900)
  {
    type metadata accessor for ICArchiveNotesPreviewer.Note(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5900);
  }

  return result;
}

uint64_t sub_1000113D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000847C8();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000114B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000847C8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_100011570(uint64_t a1)
{
  sub_1000847C8();
  if (v1 <= 0x3F)
  {
    sub_1000115F4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000115F4()
{
  if (!qword_1000A5538)
  {
    v0 = sub_1000854E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A5538);
    }
  }
}

uint64_t sub_100011644(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_100011660(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100011674(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000116BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_100011700(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_10001172C(uint64_t a1, uint64_t a2)
{
  v4 = _s3TagVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011790(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1000117F8(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_100011824()
{
  result = qword_1000A5A98;
  if (!qword_1000A5A98)
  {
    sub_100011888(&qword_1000A58E8, &qword_10008B8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5A98);
  }

  return result;
}

uint64_t sub_100011888(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000118D0()
{
  v0 = sub_100084FB8();
  sub_10000B64C(v0, qword_1000A5AA0);
  sub_10000B614(v0, qword_1000A5AA0);
  return sub_100084F98();
}

uint64_t sub_10001191C()
{
  v0 = sub_100084FB8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100084F28();
  sub_10000B64C(v4, qword_1000A5AB8);
  sub_10000B614(v4, qword_1000A5AB8);
  if (qword_1000A53E0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000B614(v0, qword_1000A5AA0);
  (*(v1 + 16))(v3, v5, v0);
  return sub_100084F08();
}

uint64_t static ICArchiveExporterConfiguration.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000A5428 != -1)
  {
    swift_once();
  }

  v2 = static ICArchiveCreator.default;
  v4 = qword_1000B17A0;
  v3 = unk_1000B17A8;
  v5 = xmmword_1000B17B0;

  IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v7 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  result = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  *a1 = 0;
  *(a1 + 8) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = v5;
  *(a1 + 56) = IsAlexandriaDemoModeEnabled;
  *(a1 + 57) = v7;
  *(a1 + 58) = result;
  *(a1 + 59) = 0;
  return result;
}

uint64_t ICArchiveExporter.__allocating_init(objectProvider:configuration:fileManager:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_10001BD64(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v8;
}

uint64_t ICArchiveExporter.init(objectProvider:configuration:fileManager:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10001BD64(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_100011C60()
{
  v1 = (v0 + 16);
  v2 = *v0;
  v3 = [objc_opt_self() defaultCenter];
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = *(v2 + 80);
  v5[3] = *(v2 + 88);
  v5[4] = v4;
  v11 = sub_10001C418;
  v12 = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100072320;
  ObjectType = &unk_10009EEE0;
  v6 = _Block_copy(aBlock);

  v7 = [v3 addObserverForName:UIApplicationDidReceiveMemoryWarningNotification object:0 queue:0 usingBlock:v6];
  _Block_release(v6);

  ObjectType = swift_getObjectType();
  aBlock[0] = v7;
  swift_beginAccess();
  sub_100005820(aBlock, v1, &qword_1000A5AD0, &unk_10008B5E0);
  return swift_endAccess();
}

uint64_t *ICArchiveExporter.deinit()
{
  sub_100011E78();
  swift_unknownObjectRelease();
  sub_10001BDD4(v0[4], v0[5], v0[6], v0[7], v0[8], v0[9]);
  swift_unknownObjectRelease();
  sub_1000058F0((v0 + 16), &qword_1000A5AD0, &unk_10008B5E0);
  return v0;
}

void sub_100011E78()
{
  swift_beginAccess();
  sub_100005888(v0 + 128, v6, &qword_1000A5AD0, &unk_10008B5E0);
  v1 = [objc_opt_self() defaultCenter];
  sub_100005888(v6, &v4, &qword_1000A5AD0, &unk_10008B5E0);
  if (v5)
  {
    sub_10001C864(&v4, v2);
    sub_10000626C(v2, v3);
    [v1 removeObserver:sub_100085928()];
    swift_unknownObjectRelease();
    sub_100006304(v2);
  }

  sub_1000058F0(v6, &qword_1000A5AD0, &unk_10008B5E0);
}

uint64_t ICArchiveExporter.__deallocating_deinit()
{
  ICArchiveExporter.deinit();

  return swift_deallocClassInstance();
}

uint64_t ICArchiveExporter.createArchive(for:at:progress:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000847C8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = ICArchiveExporter.createArchive(for:progress:)(a1, a3, v9);
  if (!v3)
  {
    swift_getObjectType();
    sub_1000849B8();
    sub_100084A18();
    ICArchiveExporter.removeArchive(at:)(v9);
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t ICArchiveExporter.createArchive(for:progress:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a2;
  v17 = a3;
  v5 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  v8 = swift_allocBox();
  v10 = v9;
  v11 = sub_1000847C8();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v10, 1, 1, v11);
  v25 = 0;
  v20 = v10;
  v21 = v3;
  v13 = v19;
  v22 = a1;
  v23 = v18;
  v24 = &v25;
  sub_100084A58();
  if (v13)
  {
    goto LABEL_4;
  }

  v14 = v17;
  sub_100005888(v10, v7, &qword_1000A56E8, &qword_10008D350);
  result = (*(v12 + 48))(v7, 1, v11);
  if (result != 1)
  {
    (*(v12 + 32))(v14, v7, v11);
LABEL_4:
    sub_10001265C(v8, &v25, v3);
  }

  __break(1u);
  return result;
}

uint64_t ICArchiveExporter.removeArchive(at:)(uint64_t a1)
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
    sub_10001C274(&qword_1000A5AD8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
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

void sub_10001265C(uint64_t a1, uint64_t a2, void *a3)
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
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v45 = &v45 - v14;
  __chkstk_darwin(v13);
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
    (*(v9 + 32))(v16, v7, v8);
    if ((*v48 & 1) == 0)
    {
      ICArchiveExporter.removeArchive(at:)(v16);
      v32 = v45;
      if (qword_1000A53E0 != -1)
      {
        swift_once();
      }

      v33 = sub_100084FB8();
      sub_10000B614(v33, qword_1000A5AA0);
      (*(v9 + 16))(v32, v16, v8);
      v34 = sub_100084FA8();
      v35 = sub_100085368();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v49[0] = v37;
        *v36 = 136315138;
        sub_10001C274(&qword_1000A5AD8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
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

        v44 = *(v9 + 8);
        v44(v32, v8);
        v44(v16, v8);
      }

      return;
    }

    (*(v9 + 8))(v16, v8);
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

  v48 = v9;
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
    (*(v48 + 32))(v12, v25, v8);
    sub_10001C274(&qword_1000A5AD8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v28 = sub_100085908();
    v30 = v29;
    (*(v27 + 8))(v12, v8);
    v31 = sub_100038A4C(v28, v30, &v50);

    *(v23 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v21, v22, "Created archive {url: %s}", v23, 0xCu);
    sub_100006304(v46);

LABEL_11:

    return;
  }

  __break(1u);
}

uint64_t sub_100012CAC(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v79 = a1;
  v73 = a4;
  v7 = *a2;
  v71 = a5;
  v72 = v7;
  v8 = sub_100084F28();
  v75 = *(v8 - 8);
  v76 = v8;
  __chkstk_darwin(v8);
  v74 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100084EF8();
  v77 = *(v10 - 8);
  v78 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v63 - v14;
  v16 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = v63 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = v63 - v24;
  __chkstk_darwin(v23);
  v27 = v63 - v26;
  v28 = v80;
  result = sub_100013548(a3, v63 - v26);
  if (!v28)
  {
    v65 = v19;
    v66 = v22;
    v64 = v13;
    v80 = 0;
    v67 = v15;
    v68 = a3;
    v30 = sub_1000847C8();
    v31 = *(v30 - 8);
    (*(v31 + 56))(v27, 0, 1, v30);
    v32 = v79;
    sub_100005820(v27, v79, &qword_1000A56E8, &qword_10008D350);
    sub_100005888(v32, v25, &qword_1000A56E8, &qword_10008D350);
    v69 = *(v31 + 48);
    v70 = v31 + 48;
    result = v69(v25, 1, v30);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      swift_getObjectType();
      v33 = v80;
      sub_1000849C8();
      v80 = v33;
      if (v33)
      {
        return (*(v31 + 8))(v25, v30);
      }

      v34 = *(v31 + 8);
      v63[1] = v31 + 8;
      (v34)(v25, v30);
      if (qword_1000A53E8 != -1)
      {
        swift_once();
      }

      v63[0] = a2;
      v35 = v76;
      v36 = sub_10000B614(v76, qword_1000A5AB8);
      v37 = v74;
      v38 = v75;
      v75[2](v74, v36, v35);
      v39 = v66;
      sub_100005888(v79, v66, &qword_1000A56E8, &qword_10008D350);
      result = v69(v39, 1, v30);
      if (result != 1)
      {
        sub_1000846F8(v40);
        sub_100084F18();
        v41 = v67;
        sub_100084ED8();
        (v38[1])(v37, v35);
        v75 = v34;
        (v34)(v39, v30);
        v42 = sub_100084F18();
        v43 = sub_100085408();
        if (sub_1000854D8())
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          v45 = sub_100084EE8();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v42, v43, v45, "Create Archive", "", v44, 2u);
        }

        v76 = v30;

        (*(v77 + 16))(v64, v41, v78);
        sub_100084F68();
        swift_allocObject();
        v46 = sub_100084F58();
        v81 = 0;
        v82 = v68;
        __chkstk_darwin(v46);
        v47 = *(v72 + 88);
        v63[-2] = *(v72 + 80);
        v63[-1] = v47;
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        sub_100084B28();
        sub_100085278();
        swift_getWitnessTable();
        v48 = v80;
        sub_1000851B8();
        v49 = v83;
        if (qword_1000A53E0 != -1)
        {
          swift_once();
        }

        v50 = sub_100084FB8();
        sub_10000B614(v50, qword_1000A5AA0);
        v51 = sub_100084FA8();
        v52 = sub_100085368();
        v53 = os_log_type_enabled(v51, v52);
        v54 = v73;
        v55 = v79;
        if (v53)
        {
          v56 = swift_slowAlloc();
          *v56 = 134217984;
          *(v56 + 4) = v49;
          _os_log_impl(&_mh_execute_header, v51, v52, "Exporting notes… {noteCount: %ld}", v56, 0xCu);
        }

        [v54 setTotalUnitCount:v49];
        v57 = v55;
        v58 = v65;
        sub_100005888(v57, v65, &qword_1000A56E8, &qword_10008D350);
        result = v69(v58, 1, v76);
        v59 = v78;
        if (result != 1)
        {
          sub_100013BE0(v58, v68, v54);
          v60 = (v77 + 8);
          v61 = v71;
          v62 = v67;
          if (v48)
          {
            (v75)(v58, v76);
            sub_100015CA0(v46, "Create Archive");

            return (*v60)(v62, v59);
          }

          else
          {
            (v75)(v58, v76);
            sub_100085348();
            *v61 = 1;
            sub_100015CA0(v46, "Create Archive");

            return (*v60)(v62, v59);
          }
        }

LABEL_21:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_100013548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v49 = *v2;
  v50 = a1;
  v4 = sub_100084918();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000847C8();
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v43 - v12;
  v14 = __chkstk_darwin(v11);
  v46 = &v43 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v43 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v43 - v20;
  __chkstk_darwin(v19);
  v45 = &v43 - v22;
  v23 = *(v2 + 24);
  swift_getObjectType();
  if (v23 == 1)
  {
    result = sub_1000849F8();
    if (!v3)
    {
      v44 = 0;
      sub_100084718();
      v25 = *(v51 + 8);
      v26 = v18;
      v27 = v52;
      v25(v26, v52);
      sub_100084908();
      sub_1000848D8();
      (*(v47 + 8))(v6, v48);
      v28 = v45;
      sub_100084718();

      v25(v21, v27);
      sub_100008250(0, &qword_1000A5BC0, ICArchive_ptr);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      static ICArchive.archiveTitle<A>(for:)(v50, AssociatedTypeWitness, AssociatedConformanceWitness);
      v31 = sub_100085068();

      v32 = [v31 ic_sanitizedFilenameString];

      sub_100085098();
      sub_100084718();

      return (v25)(v28, v27);
    }
  }

  else
  {
    result = sub_1000849F8();
    if (!v3)
    {
      v44 = 0;
      sub_100084718();
      v33 = v52;
      v34 = *(v51 + 8);
      v34(v10, v52);
      sub_100084908();
      sub_1000848D8();
      (*(v47 + 8))(v6, v48);
      v35 = v46;
      sub_100084718();

      v34(v13, v33);
      sub_100008250(0, &qword_1000A5BC0, ICArchive_ptr);
      v36 = swift_getAssociatedTypeWitness();
      v37 = swift_getAssociatedConformanceWitness();
      static ICArchive.archiveTitle<A>(for:)(v50, v36, v37);
      v38 = sub_100085068();
      v39 = [v38 ic_sanitizedFilenameString];

      v40 = sub_100085098();
      v42 = v41;

      v53 = v40;
      v54 = v42;
      v56._countAndFlagsBits = 46;
      v56._object = 0xE100000000000000;
      sub_100085158(v56);
      v57._countAndFlagsBits = 0x6372617365746F6ELL;
      v57._object = 0xEC00000065766968;
      sub_100085158(v57);

      sub_100084718();

      return (v34)(v35, v33);
    }
  }

  return result;
}

uint64_t sub_100013B28@<X0>(uint64_t *a1@<X0>, void *a4@<X8>)
{
  v5 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_100084B28();
  result = sub_100084A98();
  if (__OFADD__(v5, result))
  {
    __break(1u);
  }

  else
  {
    *a4 = v5 + result;
  }

  return result;
}

uint64_t sub_100013BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *v5;
  v10 = sub_1000847C8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ICArchiveModel(0);
  v15 = __chkstk_darwin(v14);
  if (v5[13])
  {
    __break(1u);
LABEL_58:
    swift_once();
    goto LABEL_53;
  }

  v97 = a1;
  v98 = a3;
  v95 = v15;
  v92 = v13;
  v96 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v11;
  v94 = v10;
  *(v5 + 104) = 1;
  *&v105 = a2;
  v17 = v5[2];
  v101 = v4;
  v19 = *(v9 + 80);
  v18 = *(v9 + 88);
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = v18;
  v20[4] = v17;
  v21 = swift_unknownObjectRetain();
  v99 = a2;
  ObjectType = &v84;
  __chkstk_darwin(v21);
  v110 = v5;
  *(&v84 - 4) = v19;
  *(&v84 - 3) = v18;
  *(&v84 - 2) = sub_10001C380;
  *(&v84 - 1) = v20;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_100084B28();
  v22 = sub_100085278();
  v23 = sub_100005740(&qword_1000A5AD0, &unk_10008B5E0);
  v24 = sub_100005740(&qword_1000A5B98, &unk_10008B760);
  WitnessTable = swift_getWitnessTable();
  v26 = v101;
  v27 = sub_100014904(sub_10001C1B0, (&v84 - 6), v22, v23, v24, WitnessTable, &protocol self-conformance witness table for Error, &v102);
  if (v26)
  {

    v29 = v110;
    goto LABEL_56;
  }

  v85 = 0;
  v87 = v24;
  v88 = v17;
  v89 = v18;
  v90 = v19;
  v91 = v22;
  v101 = v27;

  v30 = *(v101 + 16);
  ObjectType = v23;
  v86 = WitnessTable;
  if (v30)
  {
    v31 = v101 + 32;
    v32 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_100005888(v31, &v108, &qword_1000A5AD0, &unk_10008B5E0);
      v105 = v108;
      v106 = v109;
      if (*(&v109 + 1))
      {
        sub_100005740(&qword_1000A59C8, &qword_10008B770);
        if (swift_dynamicCast())
        {
          if (*(&v103 + 1))
          {
            sub_10001C024(&v102, &v105);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v32 = sub_10000EEA8(0, v32[2] + 1, 1, v32);
            }

            v34 = v32[2];
            v33 = v32[3];
            if (v34 >= v33 >> 1)
            {
              v32 = sub_10000EEA8((v33 > 1), v34 + 1, 1, v32);
            }

            v32[2] = v34 + 1;
            sub_10001C024(&v105, &v32[5 * v34 + 4]);
            goto LABEL_8;
          }
        }

        else
        {
          v104 = 0;
          v102 = 0u;
          v103 = 0u;
        }
      }

      else
      {
        sub_1000058F0(&v105, &qword_1000A5AD0, &unk_10008B5E0);
        v102 = 0u;
        v103 = 0u;
        v104 = 0;
      }

      sub_1000058F0(&v102, &qword_1000A5BA8, &qword_10008F750);
LABEL_8:
      v31 += 32;
      if (!--v30)
      {

        goto LABEL_20;
      }
    }
  }

  v32 = _swiftEmptyArrayStorage;
LABEL_20:
  *&v102 = _swiftEmptyArrayStorage;
  v35 = v32[2];
  v36 = v91;
  if (v35)
  {
    v37 = (v32 + 4);
    do
    {
      sub_10001C118(v37, &v105);
      v38 = *(&v106 + 1);
      v39 = v107;
      sub_10000626C(&v105, *(&v106 + 1));
      v40 = (*(v39 + 24))(v38, v39);
      sub_100006304(&v105);
      sub_100039460(v40);
      v37 += 40;
      --v35;
    }

    while (v35);
  }

  v101 = v102;
  v42 = v99;
  *&v105 = v99;
  __chkstk_darwin(v41);
  v43 = v90;
  v44 = v89;
  *(&v84 - 2) = v90;
  *(&v84 - 1) = v44;

  swift_getWitnessTable();
  v45 = v85;
  *&v105 = sub_100085668();
  v46 = swift_allocObject();
  v46[2] = v43;
  v46[3] = v44;
  v46[4] = v88;
  v47 = swift_unknownObjectRetain();
  __chkstk_darwin(v47);
  *(&v84 - 4) = v43;
  *(&v84 - 3) = v44;
  *(&v84 - 2) = sub_10001C8D8;
  *(&v84 - 1) = v46;
  ObjectType = sub_100014904(sub_10001C8A8, (&v84 - 6), v36, ObjectType, v87, v86, &protocol self-conformance witness table for Error, &v102);
  if (v45)
  {

    v29 = v110;
    goto LABEL_56;
  }

  v90 = 0;

  v48 = ObjectType[2];
  if (!v48)
  {

    v50 = _swiftEmptyArrayStorage;
    v53 = v42;
    v54 = _swiftEmptyArrayStorage[2];
    if (v54)
    {
      goto LABEL_40;
    }

    goto LABEL_46;
  }

  v49 = (ObjectType + 4);
  v50 = _swiftEmptyArrayStorage;
  do
  {
    sub_100005888(v49, &v108, &qword_1000A5AD0, &unk_10008B5E0);
    v105 = v108;
    v106 = v109;
    if (!*(&v109 + 1))
    {
      sub_1000058F0(&v105, &qword_1000A5AD0, &unk_10008B5E0);
      v102 = 0u;
      v103 = 0u;
      v104 = 0;
LABEL_28:
      sub_1000058F0(&v102, &qword_1000A5BA8, &qword_10008F750);
      goto LABEL_29;
    }

    sub_100005740(&qword_1000A59C8, &qword_10008B770);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v104 = 0;
      v102 = 0u;
      v103 = 0u;
      goto LABEL_28;
    }

    if (!*(&v103 + 1))
    {
      goto LABEL_28;
    }

    sub_10001C024(&v102, &v105);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = sub_10000EEA8(0, v50[2] + 1, 1, v50);
    }

    v52 = v50[2];
    v51 = v50[3];
    if (v52 >= v51 >> 1)
    {
      v50 = sub_10000EEA8((v51 > 1), v52 + 1, 1, v50);
    }

    v50[2] = v52 + 1;
    sub_10001C024(&v105, &v50[5 * v52 + 4]);
LABEL_29:
    v49 += 32;
    --v48;
  }

  while (v48);

  v53 = v99;
  v54 = v50[2];
  if (!v54)
  {
LABEL_46:

    v55 = _swiftEmptyArrayStorage;
    goto LABEL_47;
  }

LABEL_40:
  *&v102 = _swiftEmptyArrayStorage;
  sub_10003BCC0(0, v54, 0);
  v55 = v102;
  v56 = (v50 + 4);
  do
  {
    sub_10001C118(v56, &v105);
    v57 = *(&v106 + 1);
    v58 = v107;
    sub_10000626C(&v105, *(&v106 + 1));
    v59 = (*(v58 + 8))(v57, v58);
    v61 = v60;
    sub_100006304(&v105);
    *&v102 = v55;
    v63 = v55[2];
    v62 = v55[3];
    if (v63 >= v62 >> 1)
    {
      sub_10003BCC0((v62 > 1), v63 + 1, 1);
      v55 = v102;
    }

    v55[2] = v63 + 1;
    v64 = &v55[2 * v63];
    v64[4] = v59;
    v64[5] = v61;
    v56 += 40;
    --v54;
  }

  while (v54);

  v53 = v99;
LABEL_47:
  v29 = v110;
  v66 = v97;
  v65 = v98;
  v67 = v101;
  if (v110[3])
  {

    goto LABEL_49;
  }

  v69 = v110[5];
  v70 = v110[6];
  v71 = v110[7];
  v72 = v110[8];
  v73 = v110[9];
  ObjectType = v110[4];
  sub_10001C220(ObjectType, v69, v70, v71, v72, v73);
  v89 = sub_100079D24(v67);

  if (!v55[2])
  {

    v55 = 0;
  }

  v74 = v95;
  v75 = v95[6];
  v10 = v96;
  sub_1000848A8();
  v76 = sub_1000848B8();
  (*(*(v76 - 8) + 56))(v10 + v75, 0, 1, v76);
  *v10 = 0;
  *(v10 + 8) = 1;
  v77 = (v10 + v74[7]);
  *v77 = ObjectType;
  v77[1] = v69;
  v77[2] = v70;
  v77[3] = v71;
  v77[4] = v72;
  v77[5] = v73;
  *(v10 + v74[8]) = v89;
  *(v10 + v74[9]) = v55;
  if (qword_1000A53F0 != -1)
  {
    goto LABEL_58;
  }

LABEL_53:
  sub_10001C274(&qword_1000A5BC8, type metadata accessor for ICArchiveModel, &unk_10008FF20);
  v78 = v90;
  v79 = sub_100084508();
  v29 = v110;
  v66 = v97;
  v65 = v98;
  if (v78)
  {
    result = sub_10001C2BC(v10, type metadata accessor for ICArchiveModel);
  }

  else
  {
    v81 = v79;
    v82 = v80;
    v101 = v110[12];
    ObjectType = swift_getObjectType();
    v83 = v92;
    sub_100084718();
    sub_1000849A8();
    v90 = 0;
    sub_10000650C(v81, v82);
    (*(v93 + 8))(v83, v94);
    v68 = sub_10001C2BC(v96, type metadata accessor for ICArchiveModel);
    v53 = v99;
LABEL_49:
    *&v105 = v53;
    __chkstk_darwin(v68);
    *(&v84 - 4) = v29;
    *(&v84 - 3) = v66;
    *(&v84 - 2) = v65;
    swift_getWitnessTable();
    result = sub_1000851C8();
  }

LABEL_56:
  *(v29 + 104) = 0;
  return result;
}

uint64_t sub_100014904(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = sub_1000852E8();
  if (!v19)
  {
    return sub_100085238();
  }

  v41 = v19;
  v45 = sub_1000856D8();
  v32 = sub_1000856E8();
  sub_100085698(v41);
  result = sub_1000852D8();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_100085318();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1000856C8();
      result = sub_1000852F8();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100014D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = sub_100084AD8();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  sub_100084B28();
  sub_100084AB8();
  (*(v4 + 104))(v7, enum case for ICObjectReferences.Types.folder<A>(_:), v3);
  v10 = sub_100084AC8();
  v11 = *(v4 + 8);
  v11(v7, v3);
  v11(v9, v3);
  return v10 & 1;
}

uint64_t sub_100014EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v36 = a2;
  v41 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = sub_100084B28();
  v34 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v33 = &v33 - v6;
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  v10 = sub_100084EF8();
  v38 = *(v10 - 8);
  v39 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v33 - v14;
  if (qword_1000A53E8 != -1)
  {
    swift_once();
  }

  v16 = sub_100084F28();
  sub_10000B614(v16, qword_1000A5AB8);
  v40 = v4;
  sub_100084A78();
  swift_getAssociatedConformanceWitness();
  sub_100085908();
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  sub_100085068();

  sub_100084F18();
  sub_100084ED8();
  v17 = sub_100084F18();
  v18 = sub_100085408();
  if (sub_1000854D8())
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = sub_100084EE8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v18, v20, "Export Object", "", v19, 2u);
  }

  v22 = v38;
  v21 = v39;
  (*(v38 + 16))(v13, v15, v39);
  sub_100084F68();
  swift_allocObject();
  v23 = sub_100084F58();
  v25 = v33;
  v24 = v34;
  v27 = v40;
  v26 = v41;
  (*(v34 + 16))(v33, v41, v40);
  v28 = (*(v24 + 88))(v25, v27);
  if (v28 == enum case for ICObjectReferences.account<A>(_:))
  {
    (*(v24 + 8))(v25, v27);
    v29 = objc_autoreleasePoolPush();
    v30 = "Account to be exported does not exist anymore — skipping";
    v31 = sub_100015F30;
LABEL_13:
    sub_100016418(v35, v26, v36, v37, &v42, v31, v30);
    objc_autoreleasePoolPop(v29);
    sub_100015CA0(v23, "Export Object");

    return (*(v22 + 8))(v15, v21);
  }

  if (v28 == enum case for ICObjectReferences.folder<A>(_:))
  {
    (*(v24 + 8))(v25, v40);
    v29 = objc_autoreleasePoolPush();
    v30 = "Folder to be exported does not exist anymore — skipping";
    v31 = sub_1000166C8;
    goto LABEL_13;
  }

  if (v28 == enum case for ICObjectReferences.note<A>(_:))
  {
    (*(v24 + 8))(v25, v40);
    v29 = objc_autoreleasePoolPush();
    v30 = "Note to be exported does not exist anymore — skipping";
    v31 = sub_100016BAC;
    goto LABEL_13;
  }

  if (v28 == enum case for ICObjectReferences.attachment<A>(_:))
  {
    (*(v24 + 8))(v25, v40);
    v29 = objc_autoreleasePoolPush();
    v30 = "Object to be exported does not exist anymore — skipping";
    v31 = sub_1000178C8;
    goto LABEL_13;
  }

  result = sub_100085938();
  __break(1u);
  return result;
}

uint64_t sub_1000154B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v87 = a3;
  v70 = a6;
  v10 = sub_1000847C8();
  v11 = __chkstk_darwin(v10);
  v72 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v76 = &v69 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v69 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v69 - v19;
  __chkstk_darwin(v18);
  v23 = &v69 - v22;
  v83 = a5;
  v84 = a1;
  v77 = a4;
  v85 = a2;
  if (a5)
  {
    v71 = v21;
    v24 = sub_100085068();
    v25 = [v24 ic_sanitizedFilenameString];

    sub_100085098();
    sub_100084718();

    v26 = sub_100085068();
    v27 = [v26 ic_sanitizedFilenameString];

    sub_100085098();
    sub_100084738();

    v28 = v71;
    v29 = *(v71 + 8);
    v29(v20, v10);
    v30 = *(v82 + 88);
    v31 = *(v82 + 96);
    swift_getObjectType();
    v81 = v30;
    v82 = v31;
    v32 = v86;
    sub_1000849C8();
    v33 = v32;
    if (!v32)
    {
      return (*(v28 + 32))(v70, v23, v10);
    }

    v29(v23, v10);
  }

  else
  {
    v80 = v10;
    v28 = v21;
    v34 = sub_100085068();
    v35 = [v34 ic_sanitizedFilenameString];

    sub_100085098();
    sub_100084718();

    v36 = *(v82 + 88);
    v37 = *(v82 + 96);
    swift_getObjectType();
    v81 = v36;
    v82 = v37;
    v38 = v86;
    sub_1000849C8();
    v33 = v38;
    if (!v38)
    {
      return (*(v28 + 32))(v70, v17, v80);
    }

    v29 = *(v28 + 8);
    v10 = v80;
    v29(v17, v80);
  }

  v92 = v33;
  swift_errorRetain();
  v39 = sub_100005740(&qword_1000A5B98, &unk_10008B760);
  v78 = sub_100008250(0, &qword_1000A5BA0, NSError_ptr);
  v79 = v39;
  if (!swift_dynamicCast())
  {
  }

  v40 = v91[0];
  if ([v91[0] code] != 516)
  {
  }

  v86 = 0;
  v69 = v20;
  v80 = v10;

  v74 = v40;
  v75 = ICAttachmentNameMaxLength;
  v71 = v28;
  v73 = v28 + 8;
  for (i = 2; ; ++i)
  {
    v88 = i;
    v89 = 32;
    v90 = 0xE100000000000000;
    v93._countAndFlagsBits = sub_100085908();
    sub_100085158(v93);

    v42 = v89;
    v43 = v90;
    v44 = sub_100085068();
    v45 = [v44 ic_sanitizedFilenameString];

    v46 = sub_100085098();
    v48 = v47;

    v49 = sub_100085128();
    v51 = __OFSUB__(v75, v49);
    result = v75 - v49;
    if (v51)
    {
      break;
    }

    sub_100079EB8(result, v46, v48, v50);

    v53 = sub_1000850F8();
    v55 = v54;

    if (v83)
    {
      v89 = v53;
      v90 = v55;

      v94._countAndFlagsBits = v42;
      v94._object = v43;
      sub_100085158(v94);

      v56 = v69;
      sub_100084718();

      v57 = sub_100085068();
      v58 = [v57 ic_sanitizedFilenameString];

      sub_100085098();
      v59 = v76;
      sub_100084738();

      v60 = v80;
      v29(v56, v80);
      swift_getObjectType();
      v61 = v86;
      sub_1000849C8();
      v62 = v61;
      if (!v61)
      {

        (*(v71 + 32))(v70, v59, v60);
      }

      v29(v59, v60);
    }

    else
    {
      v89 = v53;
      v90 = v55;

      v95._countAndFlagsBits = v42;
      v95._object = v43;
      sub_100085158(v95);

      v63 = v72;
      sub_100084718();

      swift_getObjectType();
      v64 = v86;
      sub_1000849C8();
      v62 = v64;
      if (!v64)
      {
        v68 = v80;

        (*(v71 + 32))(v70, v63, v68);
      }

      v29(v63, v80);
    }

    v65 = v74;
    v89 = v62;
    swift_errorRetain();
    if (!swift_dynamicCast() || (v66 = v88, v67 = [v88 code], v66, v67 != 516))
    {
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_29;
    }

    v86 = 0;
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100015CA0(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = sub_100084F38();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100084EF8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000A53E8 != -1)
  {
    swift_once();
  }

  v10 = sub_100084F28();
  sub_10000B614(v10, qword_1000A5AB8);
  v11 = sub_100084F18();
  sub_100084F48();
  v12 = sub_1000853F8();
  if (sub_1000854D8())
  {

    sub_100084F78();

    if ((*(v3 + 88))(v5, v2) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_100084EE8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v15, v18, v13, v14, 2u);
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_100015F30(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = v4;
  v46 = a2;
  v47 = a3;
  v9 = sub_1000847C8();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v40 - v14;
  sub_100085348();
  if (!v5)
  {
    v40 = v13;
    v41 = a4;
    v44 = 0;
    v45 = v15;
    v42 = v10;
    v43 = v9;
    v16 = a1[3];
    v17 = a1[4];
    sub_10000626C(a1, v16);
    v18 = (*(v17 + 16))(v16, v17);
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v21 = [objc_opt_self() mainBundle];
      v22 = sub_100085068();
      v23 = [v21 localizedStringForKey:v22 value:0 table:0];

      v24 = sub_100085098();
      v20 = v25;

      v18 = v24;
    }

    if (*(v6 + 24))
    {
      v26 = 0;
    }

    else
    {
      v26 = 0x746E756F636361;
    }

    if (*(v6 + 24))
    {
      v27 = 0;
    }

    else
    {
      v27 = 0xE700000000000000;
    }

    v28 = v44;
    v29 = v45;
    sub_1000154B4(v18, v20, v47, v26, v27, v45);
    if (v28)
    {
    }

    else
    {

      if (*(v6 + 25) == 1)
      {
        v31 = v41;
        v32 = v46;
      }

      else
      {
        v47 = *(v6 + 96);
        v33 = v40;
        sub_100084718();
        v34 = a1[3];
        v35 = a1[4];
        sub_10000626C(a1, v34);
        v36 = *(v6 + 40);
        v48[0] = *(v6 + 24);
        v48[1] = v36;
        v49[0] = *(v6 + 56);
        *(v49 + 13) = *(v6 + 69);
        v37 = (*(v35 + 96))(v48, v34, v35);
        v39 = v38;
        swift_getObjectType();
        sub_1000849A8();
        v31 = v41;
        v32 = v46;
        (*(v42 + 8))(v33, v43);
        v30 = sub_10000650C(v37, v39);
        v29 = v45;
      }

      v50 = v32;
      __chkstk_darwin(v30);
      *(&v40 - 4) = v6;
      *(&v40 - 3) = v29;
      *(&v40 - 2) = v31;
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_100084B28();
      sub_100085278();
      swift_getWitnessTable();
      sub_1000851C8();
      (*(v42 + 8))(v29, v43);
    }
  }
}

void sub_100016418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void *, uint64_t, uint64_t, uint64_t), const char *a7)
{
  v23 = a5;
  sub_100084A68();
  if (v7)
  {
    *v23 = v7;
    return;
  }

  if (v18)
  {
    sub_100005740(&qword_1000A59C8, &qword_10008B770);
    if (swift_dynamicCast())
    {
      if (*(&v20 + 1))
      {
        sub_10001C024(&v19, v22);
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        sub_100084B28();
        v12 = sub_100084AF8();
        a6(v22, v12, a3, a4);
        sub_100006304(v22);

        return;
      }
    }

    else
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
    }
  }

  else
  {
    sub_1000058F0(v17, &qword_1000A5AD0, &unk_10008B5E0);
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
  }

  sub_1000058F0(&v19, &qword_1000A5BA8, &qword_10008F750);
  if (qword_1000A53E0 != -1)
  {
    swift_once();
  }

  v13 = sub_100084FB8();
  sub_10000B614(v13, qword_1000A5AA0);
  v14 = sub_100084FA8();
  v15 = sub_100085388();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, a7, v16, 2u);
  }
}

void sub_1000166C8(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = v4;
  v46 = a2;
  v47 = a3;
  v9 = sub_1000847C8();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v40 - v14;
  sub_100085348();
  if (!v5)
  {
    v40 = v13;
    v41 = a4;
    v44 = 0;
    v45 = v15;
    v42 = v10;
    v43 = v9;
    v16 = a1[3];
    v17 = a1[4];
    sub_10000626C(a1, v16);
    v18 = (*(v17 + 16))(v16, v17);
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v21 = [objc_opt_self() mainBundle];
      v22 = sub_100085068();
      v23 = [v21 localizedStringForKey:v22 value:0 table:0];

      v24 = sub_100085098();
      v20 = v25;

      v18 = v24;
    }

    if (*(v6 + 24))
    {
      v26 = 0;
    }

    else
    {
      v26 = 0x7265646C6F66;
    }

    if (*(v6 + 24))
    {
      v27 = 0;
    }

    else
    {
      v27 = 0xE600000000000000;
    }

    v28 = v44;
    v29 = v45;
    sub_1000154B4(v18, v20, v47, v26, v27, v45);
    if (v28)
    {
    }

    else
    {

      if (*(v6 + 25) == 1)
      {
        v31 = v41;
        v32 = v46;
      }

      else
      {
        v47 = *(v6 + 96);
        v33 = v40;
        sub_100084718();
        v34 = a1[3];
        v35 = a1[4];
        sub_10000626C(a1, v34);
        v36 = *(v6 + 40);
        v48[0] = *(v6 + 24);
        v48[1] = v36;
        v49[0] = *(v6 + 56);
        *(v49 + 13) = *(v6 + 69);
        v37 = (*(v35 + 96))(v48, v34, v35);
        v39 = v38;
        swift_getObjectType();
        sub_1000849A8();
        v31 = v41;
        v32 = v46;
        (*(v42 + 8))(v33, v43);
        v30 = sub_10000650C(v37, v39);
        v29 = v45;
      }

      v50 = v32;
      __chkstk_darwin(v30);
      *(&v40 - 4) = v6;
      *(&v40 - 3) = v29;
      *(&v40 - 2) = v31;
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_100084B28();
      sub_100085278();
      swift_getWitnessTable();
      sub_1000851C8();
      (*(v42 + 8))(v29, v43);
    }
  }
}

void sub_100016BAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v127 = a3;
  v128 = a2;
  isa = *v5;
  v130 = a1;
  v126 = type metadata accessor for NoteMetadata(0);
  __chkstk_darwin(v126);
  v8 = &v115[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000847C8();
  v131 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v115[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v10);
  v15 = &v115[-v14];
  v16 = __chkstk_darwin(v13);
  v18 = &v115[-v17];
  v19 = __chkstk_darwin(v16);
  v21 = &v115[-v20];
  __chkstk_darwin(v19);
  v23 = &v115[-v22];
  v24 = v132;
  sub_100085348();
  if (!v24)
  {
    v119 = v21;
    v121 = v18;
    v117 = v12;
    v118 = v8;
    v124 = a4;
    v123 = v23;
    v132 = 0;
    v125 = v5;
    v26 = *(v5 + 25);
    v27 = isa;
    v28 = v130;
    v29 = v15;
    if (v26 != 1 || (sub_10001C118(v130, v133), sub_100005740(&qword_1000A59C8, &qword_10008B770), sub_100008250(0, &qword_1000A56C0, ICNote_ptr), v25 = swift_dynamicCast(), (v25 & 1) == 0) || (v30 = v136, v31 = [v136 isPasswordProtectedAndLocked], v30, (v31 & 1) == 0))
    {
      v32 = v28;
      v120 = v29;
      v122 = v9;
      v133[0] = v128;
      __chkstk_darwin(v25);
      v33 = *(v27 + 10);
      v34 = *(v27 + 11);
      *&v115[-16] = v33;
      *&v115[-8] = v34;
      KeyPath = swift_getKeyPath();
      v36 = __chkstk_darwin(KeyPath);
      v37 = &v115[-48];
      *&v115[-32] = v33;
      *&v115[-24] = v34;
      *&v115[-16] = v36;
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_100084B28();
      v38 = sub_100085278();
      WitnessTable = swift_getWitnessTable();
      v40 = v132;
      v42 = sub_100014904(sub_10001C0CC, &v115[-48], v38, &type metadata for Int, &type metadata for Never, WitnessTable, &protocol witness table for Never, v41);
      v132 = v40;

      v44 = v42;
      v45 = *(v42 + 16);
      if (v45)
      {
        v46 = 0;
        v47 = (v42 + 32);
        v48 = v125;
        while (1)
        {
          v49 = *v47++;
          v50 = __OFADD__(v46, v49);
          v46 = (v46 + v49);
          if (v50)
          {
            break;
          }

          if (!--v45)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_39;
      }

      v46 = 0;
      v48 = v125;
LABEL_11:

      if (__OFADD__(v46, 1))
      {
        __break(1u);
        goto LABEL_49;
      }

      v51 = 1702129518;
      isa = sub_100085338(v46 + 1, 1).super.isa;
      v116 = v26;
      if (v26 == 1)
      {
        if (v48[24] == 1)
        {
          v52 = v32[3];
          v53 = v32[4];
          sub_10000626C(v32, v52);
          v54 = (*(v53 + 8))(v52, v53);
          v55 = v119;
          v56 = v132;
          sub_1000154B4(v54, v57, v127, 0, 0xE000000000000000, v119);
          v132 = v56;
          if (v56)
          {

LABEL_27:

            return;
          }

          v121 = v38;
          v75 = v32;

          v77 = v55;
          v72 = v123;
          (*(v131 + 32))(v123, v77, v122);
          v65 = 0xE400000000000000;
          goto LABEL_30;
        }

        v65 = 0xE400000000000000;
        v63 = 1702129518;
        v71 = v131;
        v76 = v132;
        v72 = v123;
        v73 = v127;
        v74 = v121;
        goto LABEL_26;
      }

      v58 = v32[3];
      v59 = v32[4];
      sub_10000626C(v32, v58);
      (*(v59 + 16))(v58, v59);
      if (v60)
      {
        v61 = sub_100085068();

        v62 = [v61 ic_sanitizedFilenameString];

        v63 = sub_100085098();
        v65 = v64;

        v66 = HIBYTE(v65) & 0xF;
        if ((v65 & 0x2000000000000000) == 0)
        {
          v66 = v63 & 0xFFFFFFFFFFFFLL;
        }

        if (v66)
        {
          goto LABEL_22;
        }
      }

      v67 = [objc_opt_self() mainBundle];
      v68 = sub_100085068();
      v69 = [v67 localizedStringForKey:v68 value:0 table:0];

      v63 = sub_100085098();
      v65 = v70;

LABEL_22:
      v71 = v131;
      v72 = v123;
      v73 = v127;
      v74 = v121;
      if (v48[24])
      {
        v121 = v38;
        v75 = v32;
        (*(v131 + 16))(v123, v127, v122);
        v51 = v63;
LABEL_30:
        v133[0] = v51;
        v133[1] = v65;
        v137._countAndFlagsBits = 6581550;
        v137._object = 0xE300000000000000;
        sub_100085158(v137);
        goto LABEL_31;
      }

      v76 = v132;
LABEL_26:
      sub_1000154B4(v63, v65, v73, 1702129518, 0xE400000000000000, v74);
      v132 = v76;
      if (v76)
      {
        goto LABEL_27;
      }

      v121 = v38;
      v75 = v32;
      (*(v71 + 32))(v72, v74, v122);

LABEL_31:
      v78 = v120;
      sub_100084718();

      v79 = v125;
      v80 = *(v125 + 88);
      v130 = *(v125 + 96);
      v81 = v72;
      v82 = v75;
      v83 = v75[3];
      v84 = v75[4];
      sub_10000626C(v75, v83);
      v85 = *(v79 + 40);
      v134[0] = *(v79 + 24);
      v134[1] = v85;
      v135[0] = *(v79 + 56);
      *(v135 + 13) = *(v79 + 69);
      v86 = v132;
      v87 = (*(v84 + 96))(v134, v83, v84);
      if (v86)
      {
        v89 = *(v131 + 8);
        v90 = v122;
        v89(v78, v122);

        v89(v81, v90);
        return;
      }

      v91 = v87;
      v92 = v88;
      v93 = v82;
      ObjectType = swift_getObjectType();
      sub_1000849A8();
      v132 = 0;
      v26 = v80;
      sub_10000650C(v91, v92);
      v95 = v131;
      if (v116 != 1)
      {
        v100 = v124;
        v46 = isa;
        goto LABEL_43;
      }

      v127 = ObjectType;
      sub_10001C118(v93, v133);
      sub_100005740(&qword_1000A59C8, &qword_10008B770);
      sub_100008250(0, &qword_1000A56C0, ICNote_ptr);
      v96 = swift_dynamicCast();
      v46 = isa;
      if ((v96 & 1) == 0)
      {
LABEL_42:
        v100 = v124;
LABEL_43:
        v105 = [(objc_class *)v46 completedUnitCount];
        v106 = v46;
        v107 = v128;
        if (!__OFADD__(v105, 1))
        {
          v108 = [(objc_class *)v106 setCompletedUnitCount:v105 + 1];
          v133[0] = v107;
          __chkstk_darwin(v108);
          v109 = v123;
          *&v115[-32] = v125;
          *&v115[-24] = v109;
          *&v115[-16] = v106;
          swift_getWitnessTable();
          v110 = v132;
          sub_1000851C8();
          v132 = v110;
          if (v110)
          {
            v111 = *(v95 + 8);
            v112 = v122;
            v111(v120, v122);

            v111(v109, v112);
          }

          else
          {
            sub_10001A820([v100 completedUnitCount]);

            v113 = *(v95 + 8);
            v114 = v122;
            v113(v120, v122);
            v113(v109, v114);
          }

          return;
        }

LABEL_49:
        __break(1u);
        return;
      }

      v48 = v136;
      v32 = v118;
      sub_1000082C8(v48, v118);
      sub_10001C274(&qword_1000A5718, type metadata accessor for NoteMetadata, &unk_10008B2C8);
      v97 = v132;
      v44 = sub_100084E28();
      v37 = v97;
      if (v97)
      {

        sub_10001C2BC(v32, type metadata accessor for NoteMetadata);
        v98 = *(v131 + 8);
        v99 = v122;
        v98(v120, v122);
        v98(v123, v99);
        return;
      }

LABEL_39:
      v101 = v44;
      v102 = v43;
      v132 = v26;
      sub_100084718();
      sub_1000849A8();
      v132 = v37;
      if (v37)
      {
        sub_10000650C(v101, v102);

        v103 = *(v131 + 8);
        v104 = v122;
        v103(v117, v122);
        sub_10001C2BC(v32, type metadata accessor for NoteMetadata);
        v103(v120, v104);
        v103(v123, v104);
        return;
      }

      sub_10000650C(v101, v102);

      v95 = v131;
      (*(v131 + 8))(v117, v122);
      sub_10001C2BC(v32, type metadata accessor for NoteMetadata);
      goto LABEL_42;
    }
  }
}

void sub_1000178C8(void *a1, uint64_t a2, NSObject *a3, void *a4)
{
  v5 = v4;
  v271 = a3;
  v272 = a1;
  v273 = v5;
  v266 = *v5;
  v267 = a2;
  v260 = sub_1000850C8();
  v262 = *(v260 - 8);
  __chkstk_darwin(v260);
  v259 = &v246 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v9 = __chkstk_darwin(v8 - 8);
  v258 = &v246 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v261 = &v246 - v11;
  v12 = sub_1000847C8();
  v268 = *(v12 - 8);
  v269 = v12;
  v13 = __chkstk_darwin(v12);
  v263 = (&v246 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v13);
  v264 = &v246 - v16;
  v17 = __chkstk_darwin(v15);
  v255 = &v246 - v18;
  v19 = __chkstk_darwin(v17);
  *&v256 = &v246 - v20;
  v21 = __chkstk_darwin(v19);
  v257 = &v246 - v22;
  v23 = __chkstk_darwin(v21);
  v265 = (&v246 - v24);
  v25 = __chkstk_darwin(v23);
  v270 = &v246 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v246 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v246 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v246 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = &v246 - v37;
  v39 = __chkstk_darwin(v36);
  v41 = &v246 - v40;
  v42 = __chkstk_darwin(v39);
  v44 = &v246 - v43;
  __chkstk_darwin(v42);
  v46 = &v246 - v45;
  v47 = v279;
  sub_100085348();
  if (v47)
  {
    return;
  }

  v252 = v44;
  v253 = v46;
  v248 = v38;
  v249 = v41;
  v247 = v35;
  v250 = v29;
  v251 = v32;
  v254 = a4;
  v279 = 0;
  v48 = v273;
  if (*(v273 + 24) != 1)
  {
    v56 = v272;
    v57 = v272[3];
    v58 = v272[4];
    sub_10000626C(v272, v57);
    v59 = (*(v58 + 16))(v57, v58);
    if (v60)
    {
      v61 = v60;
    }

    else
    {
      v83 = [objc_opt_self() mainBundle];
      v84 = sub_100085068();
      v85 = [v83 localizedStringForKey:v84 value:0 table:0];

      v86 = sub_100085098();
      v61 = v87;

      v59 = v86;
    }

    v88 = v279;
    sub_1000154B4(v59, v61, v271, 0x656D686361747461, 0xEA0000000000746ELL, v270);
    if (v88)
    {

      return;
    }

    v261 = v61;
    sub_100084718();
    v89 = v48[12];
    v271 = v48[11];
    v262 = v89;
    v90 = v56[3];
    v91 = v56[4];
    sub_10000626C(v56, v90);
    v92 = *(v48 + 5);
    v277[0] = *(v48 + 3);
    v277[1] = v92;
    v278[0] = *(v48 + 7);
    *(v278 + 13) = *(v48 + 69);
    v93 = (*(v91 + 96))(v277, v90, v91);
    v95 = v94;
    ObjectType = swift_getObjectType();
    sub_1000849A8();
    v279 = 0;
    v260 = ObjectType;
    sub_10000650C(v93, v95);
    v126 = sub_100008250(0, &qword_1000A5BC0, ICArchive_ptr);
    v32 = v56;
    v127 = v56[3];
    v128 = v56[4];
    v129 = sub_10000626C(v56, v127);
    sub_10001D038(v129, v126, v127, v128);
    v130 = v269;
    if (!v131)
    {
      goto LABEL_113;
    }

    v132 = sub_100085068();

    v133 = [v132 ic_sanitizedFilenameString];

    sub_100085098();
    v134 = *(v32 + 24);
    v135 = *(v32 + 32);
    sub_10000626C(v32, v134);
    v136 = v258;
    (*(v135 + 48))(v134, v135);
    v137 = v268;
    if ((*(v268 + 48))(v136, 1, v130) != 1)
    {
      v174 = v257;
      (*(v137 + 32))(v257, v136, v130);
      v175 = v256;
      sub_100084718();
      v176 = v174;

      v177 = v279;
      sub_100084A18();
      v279 = v177;
      v70 = v273;
      if (!v177)
      {
        v196 = *(v137 + 8);
        v197 = v175;
        v198 = v269;
        v196(v197, v269);
        v196(v176, v198);
        goto LABEL_114;
      }

      v178 = *(v137 + 8);
      v179 = v175;
      v180 = v269;
      v178(v179, v269);
      v178(v176, v180);
LABEL_80:
      v279 = 0;
      if (qword_1000A53E0 != -1)
      {
        goto LABEL_130;
      }

      while (1)
      {
        v188 = sub_100084FB8();
        sub_10000B614(v188, qword_1000A5AA0);
        swift_errorRetain();
        v189 = sub_100084FA8();
        v190 = sub_100085378();

        if (os_log_type_enabled(v189, v190))
        {
          v191 = swift_slowAlloc();
          v192 = swift_slowAlloc();
          v276[0] = v192;
          *v191 = 136315138;
          swift_getErrorValue();
          v193 = sub_100085988();
          v195 = sub_100038A4C(v193, v194, v276);

          *(v191 + 4) = v195;
          _os_log_impl(&_mh_execute_header, v189, v190, "Cannot export attachment media file — skipping {error: %s}", v191, 0xCu);
          sub_100006304(v192);
          v32 = v272;

          v70 = v273;
        }

        else
        {
        }

LABEL_114:
        v163 = objc_autoreleasePoolPush();
        v223 = v279;
        sub_10001ABCC(v32, v70);
        if (v223)
        {
          goto LABEL_135;
        }

        objc_autoreleasePoolPop(v163);
        v224 = objc_autoreleasePoolPush();
        sub_10001AEFC(v32, v70);

        objc_autoreleasePoolPop(v224);
        v225 = *(v32 + 24);
        v226 = *(v32 + 32);
        sub_10000626C(v32, v225);
        v227 = (*(v226 + 64))(v225, v226);
        v229 = 0;
        v231 = (v227 + 56);
        v230 = *(v227 + 56);
        v279 = v227;
        v232 = 1 << *(v227 + 32);
        v233 = -1;
        if (v232 < 64)
        {
          v233 = ~(-1 << v232);
        }

        v67 = v233 & v230;
        v234 = (v232 + 63) >> 6;
        v235 = v268;
        v258 = (v268 + 16);
        v272 = (v268 + 8);
        *&v228 = 136315138;
        v256 = v228;
        v65 = v263;
        v261 = (v227 + 56);
        v259 = v234;
        while (v67)
        {
          v32 = v229;
LABEL_123:
          v237 = __clz(__rbit64(v67));
          v67 &= v67 - 1;
          v238 = v264;
          v239 = v269;
          (*(v235 + 16))(v264, *(v279 + 48) + *(v235 + 72) * (v237 | (v32 << 6)), v269);
          sub_1000846E8();
          sub_100084718();

          sub_100084A18();
          v236 = *v272;
          (*v272)(v238, v239);
          v236(v65, v239);
          v229 = v32;
          v70 = v273;
          v235 = v268;
          v231 = v261;
          v234 = v259;
        }

        while (1)
        {
          v32 = v229 + 1;
          if (__OFADD__(v229, 1))
          {
            __break(1u);
            goto LABEL_127;
          }

          if (v32 >= v234)
          {
            break;
          }

          v67 = *&v231[8 * v32];
          ++v229;
          if (v67)
          {
            goto LABEL_123;
          }
        }

        v240 = v254;
        v241 = [v254 completedUnitCount];
        if (!__OFADD__(v241, 1))
        {
          v242 = [v240 setCompletedUnitCount:v241 + 1];
          v276[0] = v267;
          __chkstk_darwin(v242);
          v243 = v270;
          *(&v246 - 4) = v70;
          *(&v246 - 3) = v243;
          *(&v246 - 2) = v240;
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          sub_100084B28();
          sub_100085278();
          swift_getWitnessTable();
          sub_1000851C8();
          v244 = *v272;
          v245 = v269;
          (*v272)(v265, v269);
          v244(v243, v245);
          return;
        }

        __break(1u);
LABEL_130:
        swift_once();
      }
    }

    sub_1000058F0(v136, &qword_1000A56E8, &qword_10008D350);
    v138 = *(v32 + 24);
    v139 = *(v32 + 32);
    sub_10000626C(v32, v138);
    v140 = (*(v139 + 56))(v138, v139);
    if (v141 >> 60 == 15)
    {

      goto LABEL_113;
    }

LABEL_78:
    v184 = v140;
    v185 = v141;
    v186 = v255;
    sub_100084718();

    v187 = v279;
    sub_1000849A8();
    v279 = v187;
    if (v187)
    {
      (*(v268 + 8))(v186, v130);
      sub_10001C19C(v184, v185);
      v70 = v273;
      goto LABEL_80;
    }

    (*(v268 + 8))(v186, v130);
    sub_10001C19C(v184, v185);
LABEL_113:
    v70 = v273;
    goto LABEL_114;
  }

  LODWORD(v270) = *(v273 + 25);
  v49 = v272;
  if (v270 == 2)
  {
    sub_10001C118(v272, v276);
    sub_100005740(&qword_1000A59C8, &qword_10008B770);
    sub_100008250(0, &qword_1000A56B0, ICAttachment_ptr);
    if (swift_dynamicCast())
    {
      v50 = v274;
      v51 = [v274 isTable];

      if (v51)
      {
        return;
      }
    }
  }

  sub_10001C118(v49, v276);
  v52 = sub_100005740(&qword_1000A59C8, &qword_10008B770);
  v53 = sub_100008250(0, &qword_1000A56B0, ICAttachment_ptr);
  if (swift_dynamicCast())
  {
    v54 = v274;
    v55 = [v274 parentAttachment];

    if (v55)
    {

      return;
    }
  }

  v263 = v53;
  v62 = v49[3];
  v63 = v49[4];
  sub_10000626C(v49, v62);
  v265 = (*(v63 + 88))(v62, v63);
  v65 = v64;
  v66 = v49[3];
  v67 = v49[4];
  sub_10000626C(v49, v66);
  v68 = (*(v67 + 80))(v66, v67);
  v264 = v52;
  if (v69 >> 60 == 15)
  {
LABEL_23:
    v97 = v49[3];
    v98 = v49[4];
    sub_10000626C(v49, v97);
    v99 = (*(v98 + 72))(v97, v98);
    if (v100 >> 60 != 15)
    {
      v111 = v99;
      v112 = v100;
      if (v65)
      {
        v67 = swift_getObjectType();

        v32 = v252;
        sub_100084718();

        v113 = v279;
        sub_1000849A8();
        v279 = v113;
        v82 = v267;
        if (!v113)
        {
          (*(v268 + 8))(v32, v269);
          sub_10001C19C(v111, v112);
          goto LABEL_46;
        }

        (*(v268 + 8))(v32, v269);
        if (qword_1000A53E0 != -1)
        {
          swift_once();
        }

        v114 = sub_100084FB8();
        sub_10000B614(v114, qword_1000A5AA0);
        v67 = v279;
        swift_errorRetain();
        v115 = sub_100084FA8();
        v116 = sub_100085378();

        if (os_log_type_enabled(v115, v116))
        {
          v67 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v276[0] = v32;
          *v67 = 136315138;
          swift_getErrorValue();
          v265 = v115;
          v117 = sub_100085988();
          v119 = v65;
          v120 = sub_100038A4C(v117, v118, v276);

          *(v67 + 4) = v120;
          v65 = v119;
          v121 = v265;
          _os_log_impl(&_mh_execute_header, v265, v116, "Cannot export attachment fallback image file — skipping {error: %s}", v67, 0xCu);
          sub_100006304(v32);
          v82 = v267;

          sub_10001C19C(v111, v112);
        }

        else
        {
          sub_10001C19C(v111, v112);
        }

        goto LABEL_45;
      }

      sub_10001C19C(v99, v100);
      goto LABEL_55;
    }

    if (v65)
    {
      v101 = v49[3];
      v102 = v49[4];
      sub_10000626C(v49, v101);
      v103 = *(v102 + 48);

      v104 = v261;
      v103(v101, v102);
      v105 = v268;
      v67 = v269;
      if ((*(v268 + 48))(v104, 1, v269) == 1)
      {
        sub_1000058F0(v104, &qword_1000A56E8, &qword_10008D350);
        v106 = v49[3];
        v107 = v49[4];
        sub_10000626C(v49, v106);
        v108 = (*(v107 + 56))(v106, v107);
        v70 = v273;
        if (v109 >> 60 == 15)
        {

          v110 = v254;
LABEL_56:
          v82 = v267;
          goto LABEL_57;
        }

        v142 = v108;
        v143 = v109;
        v32 = v273[12];
        swift_getObjectType();
        v67 = v247;
        sub_100084718();
        v265 = v65;

        v144 = v279;
        sub_1000849A8();
        v279 = v144;
        v82 = v267;
        if (!v144)
        {
          (*(v268 + 8))(v67, v269);
          sub_10001C19C(v142, v143);
          v110 = v254;
          v70 = v273;
          v65 = v265;
          goto LABEL_57;
        }

        (*(v268 + 8))(v67, v269);
        sub_10001C19C(v142, v143);
        v65 = v265;
      }

      else
      {
        v122 = v249;
        (*(v105 + 32))(v249, v104, v67);
        v32 = v105;
        v261 = v273[12];
        swift_getObjectType();
        v123 = v248;
        sub_100084718();

        v124 = v279;
        sub_100084A18();
        v279 = v124;
        if (!v124)
        {
          v152 = *(v105 + 8);
          v152(v123, v67);
          v152(v122, v67);
          goto LABEL_55;
        }

        v125 = *(v105 + 8);
        v125(v123, v67);
        v125(v122, v67);
      }

      v279 = 0;
      if (qword_1000A53E0 != -1)
      {
        swift_once();
      }

      v145 = sub_100084FB8();
      sub_10000B614(v145, qword_1000A5AA0);
      swift_errorRetain();
      v146 = sub_100084FA8();
      v147 = sub_100085378();

      if (os_log_type_enabled(v146, v147))
      {
        v148 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v276[0] = v67;
        *v148 = 136315138;
        swift_getErrorValue();
        v149 = sub_100085988();
        v32 = v65;
        v151 = sub_100038A4C(v149, v150, v276);

        *(v148 + 4) = v151;
        v65 = v32;
        _os_log_impl(&_mh_execute_header, v146, v147, "Cannot export attachment media file — skipping {error: %s}", v148, 0xCu);
        sub_100006304(v67);
      }

      else
      {
      }
    }

LABEL_55:
    v110 = v254;
    v70 = v273;
    goto LABEL_56;
  }

  v32 = v68;
  v70 = v69;
  if (!v65)
  {
    sub_10001C19C(v68, v69);
    goto LABEL_23;
  }

  v67 = swift_getObjectType();

  v71 = v253;
  sub_100084718();

  v72 = v279;
  sub_1000849A8();
  v279 = v72;
  if (!v72)
  {
    (*(v268 + 8))(v71, v269);
    sub_10001C19C(v32, v70);
    goto LABEL_55;
  }

  (*(v268 + 8))(v71, v269);
  v67 = v267;
  if (qword_1000A53E0 != -1)
  {
    goto LABEL_128;
  }

  while (1)
  {
    v73 = sub_100084FB8();
    sub_10000B614(v73, qword_1000A5AA0);
    swift_errorRetain();
    v74 = sub_100084FA8();
    v75 = sub_100085378();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v265 = v65;
      v78 = v77;
      v276[0] = v77;
      *v76 = 136315138;
      swift_getErrorValue();
      v79 = sub_100085988();
      v67 = v32;
      v32 = sub_100038A4C(v79, v80, v276);

      *(v76 + 4) = v32;
      v81 = v267;
      _os_log_impl(&_mh_execute_header, v74, v75, "Cannot export attachment fallback PDF file — skipping {error: %s}", v76, 0xCu);
      sub_100006304(v78);
      v65 = v265;

      sub_10001C19C(v67, v70);

      v82 = v81;
LABEL_45:
      v279 = 0;
LABEL_46:
      v110 = v254;
      v70 = v273;
    }

    else
    {
      sub_10001C19C(v32, v70);

      v279 = 0;
      v110 = v254;
      v70 = v273;
      v82 = v67;
    }

LABEL_57:
    if (v270 != 1 || (sub_10001C118(v272, v276), (swift_dynamicCast() & 1) == 0))
    {

      v65 = v271;
      goto LABEL_67;
    }

    v32 = v82;
    v265 = v65;
    v153 = v274;
    v154 = [v274 isAudio];
    v65 = v271;
    if (!v154)
    {

      v82 = v32;
      goto LABEL_67;
    }

    v155 = [v153 attachmentModel];
    objc_opt_self();
    v156 = swift_dynamicCastObjCClass();
    if (v156)
    {
      break;
    }

    v110 = v254;
LABEL_110:
    v82 = v32;
LABEL_67:
    v172 = [v110 completedUnitCount];
    if (!__OFADD__(v172, 1))
    {
      v173 = [v110 setCompletedUnitCount:v172 + 1];
      v276[0] = v82;
      __chkstk_darwin(v173);
      *(&v246 - 4) = v70;
      *(&v246 - 3) = v65;
      *(&v246 - 2) = v110;
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_100084B28();
      sub_100085278();
      swift_getWitnessTable();
      sub_1000851C8();
      return;
    }

LABEL_127:
    __break(1u);
LABEL_128:
    swift_once();
  }

  v157 = v156;
  v270 = v155;
  v158 = v272[3];
  v159 = v272[4];
  sub_10000626C(v272, v158);
  v160 = (*(v159 + 8))(v158, v159);
  v276[0] = 0x7263736E6172745FLL;
  v276[1] = 0xEF7478742E747069;
  v274 = v160;
  v275 = v161;
  v274 = sub_100085198();
  v275 = v162;
  sub_100085148();
  v163 = v65;
  sub_100084718();

  v164 = [v157 audioDocument];
  if (!v164)
  {
    goto LABEL_133;
  }

  v165 = v164;
  v166 = [v164 transcriptAsPlainText];

  sub_100085098();
  v167 = v259;
  sub_1000850B8();
  v130 = sub_1000850A8();
  v169 = v168;
  v163 = v262 + 1;
  v264 = v262[1];
  v140 = (v264)(v167, v260);
  v262 = v163;
  if (v169 >> 60 == 15)
  {
LABEL_92:
    v201 = v272[3];
    v202 = v272[4];
    sub_10000626C(v272, v201);
    v203 = (*(v202 + 8))(v201, v202);
    strcpy(v276, "_summary.txt");
    BYTE5(v276[1]) = 0;
    HIWORD(v276[1]) = -5120;
    v274 = v203;
    v275 = v204;
    v274 = sub_100085198();
    v275 = v205;
    sub_100085148();
    v65 = v271;
    v163 = v271;
    sub_100084718();

    v206 = [v157 audioDocument];
    if (!v206)
    {
      goto LABEL_134;
    }

    v207 = v206;

    v208 = [v207 recordingSummaryAsPlainText];

    v163 = sub_100085098();
    v209 = v259;
    sub_1000850B8();
    v210 = sub_1000850A8();
    v212 = v211;

    (v264)(v209, v260);
    if (v212 >> 60 == 15)
    {

LABEL_95:
      v213 = v269;
      v67 = v251;
LABEL_109:
      v222 = *(v268 + 8);
      v222(v250, v213);
      v222(v67, v213);
      v110 = v254;
      v70 = v273;
      goto LABEL_110;
    }

    v214 = v212 >> 62;
    v67 = v251;
    if ((v212 >> 62) > 1)
    {
      v213 = v269;
      if (v214 != 2)
      {
        goto LABEL_108;
      }

      v217 = *(v210 + 16);
      v216 = *(v210 + 24);
      v183 = __OFSUB__(v216, v217);
      v215 = v216 - v217;
      if (!v183)
      {
LABEL_105:
        if (v215 > 0)
        {
          swift_getObjectType();
          v218 = v250;
          v219 = v279;
          sub_1000849A8();
          v279 = v219;
          if (v219)
          {

            sub_10001C19C(v210, v212);
            v220 = v269;
            v221 = *(v268 + 8);
            v221(v218, v269);
            v221(v251, v220);
            return;
          }

          sub_10001C19C(v210, v212);
          goto LABEL_95;
        }

LABEL_108:

        sub_10001C19C(v210, v212);
        goto LABEL_109;
      }

      __break(1u);
    }

    else
    {
      v213 = v269;
      if (!v214)
      {
        v215 = BYTE6(v212);
        goto LABEL_105;
      }
    }

    LODWORD(v215) = HIDWORD(v210) - v210;
    if (__OFSUB__(HIDWORD(v210), v210))
    {
      goto LABEL_132;
    }

    v215 = v215;
    goto LABEL_105;
  }

  v170 = v169 >> 62;
  if ((v169 >> 62) > 1)
  {
    if (v170 != 2)
    {
LABEL_91:
      sub_10001C19C(v130, v169);
      goto LABEL_92;
    }

    v182 = *(v130 + 16);
    v181 = *(v130 + 24);
    v183 = __OFSUB__(v181, v182);
    v171 = v181 - v182;
    if (!v183)
    {
LABEL_87:
      if (v171 >= 1)
      {
        swift_getObjectType();
        v199 = v251;
        v200 = v279;
        sub_1000849A8();
        v279 = v200;
        if (v200)
        {
          (*(v268 + 8))(v199, v269);

          sub_10001C19C(v130, v169);

          return;
        }

        v32 = v267;
      }

      goto LABEL_91;
    }

    __break(1u);
    goto LABEL_78;
  }

  if (!v170)
  {
    v171 = BYTE6(v169);
    goto LABEL_87;
  }

  LODWORD(v171) = HIDWORD(v130) - v130;
  if (!__OFSUB__(HIDWORD(v130), v130))
  {
    v171 = v171;
    goto LABEL_87;
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  objc_autoreleasePoolPop(v163);
  __break(1u);
}