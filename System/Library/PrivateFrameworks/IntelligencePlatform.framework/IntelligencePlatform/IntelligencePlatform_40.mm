void sub_1ABD866BC()
{
  sub_1ABA7E2A8();
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_50:
    sub_1ABA7BC1C();
    return;
  }

  v3 = 0;
  v4 = *(v0 + 96);
  v79 = v1 + 32;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = *(v1 + 16);
  v77 = v6;
  v78 = *(v0 + 80);
  HIDWORD(v81) = v4;
  while (1)
  {
    if (v3 >= v6)
    {
      goto LABEL_52;
    }

    v80 = v3;
    memcpy(v107, (v79 + 112 * v3), 0x70uLL);
    sub_1ABD7D6C8();
    v8 = *(v7 + 16);
    if (v8)
    {
      break;
    }

LABEL_48:
    v3 = v80 + 1;
    if (v80 + 1 == v2)
    {
      goto LABEL_50;
    }

    v6 = *(v1 + 16);
  }

  v9 = 0;
  v83 = *(v7 + 16);
  v84 = v7 + 32;
  v10 = v83;
  v11 = v7;
  v82 = v7;
  while (v9 < v10)
  {
    v12 = memcpy(v107, (v84 + 144 * v9), 0x90uLL);
    if (!v4)
    {
      if (*(v107[17] + 16))
      {
        memcpy(__dst, (v84 + 144 * v9), sizeof(__dst));
        KnosisFact.allQualifiers.getter();
        v24 = v23;
        v25 = *(v23 + 16);
        if (v25)
        {
          v26 = v25 - 1;
          for (i = 32; ; i += 144)
          {
            v28 = memcpy(__dst, (v24 + i), sizeof(__dst));
            v36 = __dst[12];
            v37 = __dst[13];
            switch(BYTE2(__dst[16]))
            {
              case 1:
                sub_1ABAA31F0();
                if ((v36 & 0x80000000000000) == 0)
                {
                  v51 += 1272;
                }

                sub_1ABA89DF4(v43, v44, v45, v46, v47, v48, v49, v50, v77, v78, v79, v80, v81, v82, v83, v84, v36, v51, 0xE300000000000000, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
                v52 = sub_1ABF24FF4();
                MEMORY[0x1AC5A9410](v52);

                v36 = v86;
                v37 = v87;
                break;
              case 2:
              case 3:
                sub_1ABA89DF4(v28, v29, v30, v31, v32, v33, v34, v35, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);

                break;
              case 4:
                sub_1ABA89DF4(v28, v29, v30, v31, v32, v33, v34, v35, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
                v36 = 0;
                v37 = 0xE000000000000000;
                break;
              default:
                v39 = __dst[14];
                v38 = __dst[15];
                v40 = LOWORD(__dst[16]);
                sub_1ABA89DF4(v28, v29, v30, v31, v32, v33, v34, v35, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
                v41 = sub_1ABA8C744();
                sub_1ABAE4358(v41, v42, v39, v38, v40, 0);
                break;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1ABA7E974();
              sub_1ABAAA4F4();
              v5 = v56;
            }

            v54 = *(v5 + 16);
            v53 = *(v5 + 24);
            if (v54 >= v53 >> 1)
            {
              sub_1ABA7BBEC(v53);
              sub_1ABA898F8();
              sub_1ABAAA4F4();
              v5 = v57;
            }

            sub_1ABAE4304(__dst);
            *(v5 + 16) = v54 + 1;
            v55 = v5 + 16 * v54;
            *(v55 + 32) = v36;
            *(v55 + 40) = v37;
            if (!v26)
            {
              break;
            }

            --v26;
          }

          v4 = HIDWORD(v81);
          goto LABEL_42;
        }
      }

      else
      {
        v20 = v107[12];
        v21 = v107[13];
        switch(BYTE2(v107[16]))
        {
          case 1:
LABEL_30:
            sub_1ABAA31F0();
            if ((v20 & 0x80000000000000) == 0)
            {
              v66 += 1272;
            }

            sub_1ABA9F398(v58, v59, v60, v61, v62, v63, v64, v65, v77, v78, v79, v80, v81, v82, v83, v84, v85, v20, v87, v66, 0xE300000000000000, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
            v67 = sub_1ABF24FF4();
            MEMORY[0x1AC5A9410](v67);

            v20 = v88;
            v21 = v89;
            break;
          case 2:
          case 3:
LABEL_29:
            sub_1ABA9F398(v12, v13, v14, v15, v16, v17, v18, v19, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);

            break;
          case 4:
LABEL_33:
            sub_1ABA9F398(v12, v13, v14, v15, v16, v17, v18, v19, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
            v20 = 0;
            v21 = 0xE000000000000000;
            break;
          default:
            v22 = LOWORD(v107[16]);
LABEL_36:
            sub_1ABA9F398(v12, v13, v14, v15, v16, v17, v18, v19, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
            sub_1ABA954F0();
            sub_1ABAA2D68();
            sub_1ABAE4358(v68, v69, v70, v71, v22, 0);
            break;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA7E974();
          sub_1ABAAA4F4();
          v5 = v75;
        }

        v73 = *(v5 + 16);
        v72 = *(v5 + 24);
        if (v73 >= v72 >> 1)
        {
          sub_1ABA8E370(v72);
          sub_1ABAAA4F4();
          v5 = v76;
        }

        sub_1ABAE4304(v107);
        *(v5 + 16) = v73 + 1;
        v74 = v5 + 16 * v73;
        *(v74 + 32) = v20;
        *(v74 + 40) = v21;
LABEL_42:
        v11 = v82;
      }

      v8 = v83;
      goto LABEL_44;
    }

    if (v4 != 1)
    {
      v20 = v107[2];
      v21 = v107[3];
      switch(BYTE2(v107[6]))
      {
        case 1:
          goto LABEL_30;
        case 2:
        case 3:
          goto LABEL_29;
        case 4:
          goto LABEL_33;
        default:
          v22 = LOWORD(v107[6]);
          goto LABEL_36;
      }
    }

LABEL_44:
    if (++v9 == v8)
    {

      v2 = v77;
      v1 = v78;
      goto LABEL_48;
    }

    v10 = *(v11 + 16);
  }

  __break(1u);
LABEL_52:
  __break(1u);
}

void sub_1ABD86AC4()
{
  sub_1ABA7E2A8();
  v1 = 0;
  v2 = *(v0 + 80);
  v102 = MEMORY[0x1E69E7CC0];
  v88 = v2;
  v89 = *(v2 + 16);
LABEL_2:
  if (v1 != v89)
  {
    if (v1 < *(v88 + 16))
    {
      sub_1ABA9F0E0(v101);
      v87 = v1 + 1;
      sub_1ABA9F0E0(v100);
      sub_1ABAE441C(v101, __dst);
      sub_1ABD7D6C8();
      v4 = v3;
      v5 = 0;
      v91 = *(v3 + 16);
      v90 = MEMORY[0x1E69E7CC0];
LABEL_5:
      for (i = 144 * v5 + 32; ; i += 144)
      {
        if (v91 == v5)
        {
          sub_1ABC6D404(v101);

          sub_1ABD7DEE8(v90);
          v1 = v87;
          goto LABEL_2;
        }

        if (v5 >= *(v4 + 16))
        {
          break;
        }

        memcpy(__dst, (v4 + i), sizeof(__dst));
        KnosisFact.splitSubentityIdentifier()(&v93);
        v8 = v93;
        v7 = v94;
        v9 = v95;
        v10 = v96;
        v12 = v97;
        v11 = v98;
        v13 = v99;
        if (v95)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1ABA7BEF0();
            sub_1ABAD8E08();
            v90 = v18;
          }

          v15 = *(v90 + 16);
          v14 = *(v90 + 24);
          v16 = v15 + 1;
          if (v15 >= v14 >> 1)
          {
            sub_1ABA7BBEC(v14);
            v86 = v19;
            sub_1ABAD8E08();
            v16 = v86;
            v90 = v20;
          }

          ++v5;
          *(v90 + 16) = v16;
          v17 = v90 + 56 * v15;
          *(v17 + 32) = v8;
          *(v17 + 40) = v7;
          *(v17 + 48) = v9;
          *(v17 + 56) = v10;
          *(v17 + 64) = v12;
          *(v17 + 72) = v11;
          *(v17 + 80) = v13;
          goto LABEL_5;
        }

        sub_1ABD0DCB0(v93, v94, 0);
        ++v5;
      }

      __break(1u);
LABEL_53:
      sub_1ABD7DAF4(v93);
      sub_1ABD7DAF4(v4);
      sub_1ABE8AC38();
      sub_1ABA7BC1C();
      return;
    }

    goto LABEL_56;
  }

  v21 = 0;
  v22 = v102;
  v23 = *(v102 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  v24 = 32;
  while (v23 != v21)
  {
    if (v21 >= *(v22 + 16))
    {
      goto LABEL_57;
    }

    v25 = *(v22 + v24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1ABA7E974();
      sub_1ABAD89C8(v27, v28, v29, v30);
      v4 = v31;
    }

    v26 = *(v4 + 16);
    if (v26 >= *(v4 + 24) >> 1)
    {
      sub_1ABA898F8();
      sub_1ABAD89C8(v32, v33, v34, v35);
      v4 = v36;
    }

    *(v4 + 16) = v26 + 1;
    *(v4 + 8 * v26 + 32) = v25;
    v24 += 56;
    ++v21;
  }

  v37 = 0;
  v93 = MEMORY[0x1E69E7CC0];
LABEL_25:
  if (v37 == v89)
  {
    v62 = 0;
    v93 = MEMORY[0x1E69E7CC0];
    while (v62 != v89)
    {
      if (v62 >= *(v88 + 16))
      {
        goto LABEL_59;
      }

      sub_1ABA9538C();
      memcpy(v63, v64, v65);
      ++v62;
      sub_1ABA9538C();
      memcpy(v66, v67, v68);
      sub_1ABAE441C(__dst, v100);
      sub_1ABD7D6C8();
      v70 = v69;
      v71 = 0;
      v72 = *(v69 + 16);
      v73 = MEMORY[0x1E69E7CC0];
      while (v72 != v71)
      {
        if (v71 >= *(v70 + 16))
        {
          goto LABEL_55;
        }

        ++v71;
        sub_1ABA82B0C();
        if (v50)
        {
          v75 = *v74;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v78 = sub_1ABA7BEF0();
            sub_1ABAD89C8(v78, v79, v80, v73);
            v73 = v81;
          }

          v77 = *(v73 + 16);
          v76 = *(v73 + 24);
          if (v77 >= v76 >> 1)
          {
            v82 = sub_1ABA9A58C(v76);
            sub_1ABAD89C8(v82, v83, v84, v73);
            v73 = v85;
          }

          *(v73 + 16) = v77 + 1;
          *(v73 + 8 * v77 + 32) = v75;
        }
      }

      sub_1ABC6D404(__dst);

      sub_1ABD7DAF4(v73);
    }

    goto LABEL_53;
  }

  if (v37 < *(v88 + 16))
  {
    sub_1ABA9538C();
    memcpy(v38, v39, v40);
    ++v37;
    sub_1ABA9538C();
    memcpy(v41, v42, v43);
    sub_1ABAE441C(__dst, v100);
    sub_1ABD7D6C8();
    v45 = v44;
    v46 = 0;
    v47 = *(v44 + 16);
    v48 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v47 == v46)
      {
        sub_1ABC6D404(__dst);

        sub_1ABD7DAF4(v48);
        goto LABEL_25;
      }

      if (v46 >= *(v45 + 16))
      {
        break;
      }

      ++v46;
      sub_1ABA82B0C();
      if (v50)
      {
        v51 = *v49;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_1ABA7BEF0();
          sub_1ABAD89C8(v54, v55, v56, v48);
          v48 = v57;
        }

        v53 = *(v48 + 16);
        v52 = *(v48 + 24);
        if (v53 >= v52 >> 1)
        {
          v58 = sub_1ABA9A58C(v52);
          sub_1ABAD89C8(v58, v59, v60, v48);
          v48 = v61;
        }

        *(v48 + 16) = v53 + 1;
        *(v48 + 8 * v53 + 32) = v51;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
  }

  __break(1u);
LABEL_59:
  __break(1u);
}

void KnosisFact.splitSubentityIdentifier()(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = 0xE000000000000000;
  v5 = 0;
  switch(*(v1 + 50))
  {
    case 1:
      v48 = *(v1 + 16);
      v5 = EntityIdentifier.stringValue.getter();
      v3 = v7;
      break;
    case 4:
      break;
    default:

      v5 = v2;
      v3 = v6;
      break;
  }

  v48 = v5;
  v49 = v3;
  sub_1ABAE28EC();
  sub_1ABAA0F58();
  v8 = sub_1ABF248E4();

  if (*(v8 + 16) <= 2uLL)
  {
    goto LABEL_15;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABD8EF48();
    v8 = v43;
  }

  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 32 * v9);
    v11 = *v10;
    v12 = v10[1];
    v13 = v10[2];
    v14 = v10[3];
    *(v8 + 16) = v9 - 1;
    if (v9 != 1)
    {
      v15 = (v8 + 32 + 32 * (v9 - 2));
      v16 = *v15;
      v17 = v15[1];
      v19 = v15[2];
      v18 = v15[3];
      *(v8 + 16) = v9 - 2;
      if (v9 == 2)
      {
      }

      else
      {
        v46 = v11;
        v47 = v16;
        v44 = v13;
        v45 = v12;
        *(v8 + 16) = v9 - 3;

        v20 = sub_1ABA894EC();
        MEMORY[0x1AC5A9330](v20);

        v21 = sub_1ABA7E79C();
        EntityIdentifier.init(_:)(v21, v22, v23);
        if (v49)
        {

LABEL_15:

          *(a1 + 48) = 0;
          *(a1 + 16) = 0u;
          *(a1 + 32) = 0u;
          *a1 = 0u;
          return;
        }

        v24 = v48;
        MEMORY[0x1AC5A9330](v47, v17, v19, v18);

        v25 = sub_1ABA7E79C();
        v27 = sub_1ABA9AC84(v25, v26);
        v29 = v28;
        v31 = v30;
        v33 = v32;

        if (v33)
        {
          goto LABEL_15;
        }

        sub_1ABA91D48(v27, v29, v31, &v48);
        v35 = v48;
        v34 = v49;
        v37 = v50;
        v36 = v51;
        v38 = v52;
        MEMORY[0x1AC5A9330](v46, v45, v44, v14);

        v39 = sub_1ABA894EC();
        RelationshipIdentifier.init(_:)(v39, v40, v41);
        if ((v49 & 1) == 0)
        {
          v42 = v48;
          *a1 = v24;
          *(a1 + 8) = v35;
          *(a1 + 16) = v34;
          *(a1 + 24) = v37;
          *(a1 + 32) = v36;
          *(a1 + 40) = v38;
          *(a1 + 48) = v42;
          return;
        }
      }
    }

    goto LABEL_15;
  }

  __break(1u);
}

void sub_1ABD8728C()
{
  sub_1ABA7BCA8();
  v170 = v5;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  switch(*(v0 + 34))
  {
    case 1:
      v160 = v4[1];
      v161 = *v4;
      v175 = v1;
      v159 = v3;
      sub_1ABAD509C(*v0, v3);
      sub_1ABA8071C();
      v11 = 0xD000000000000018;
      if (v9)
      {
        v11 = v8;
        v10 = v9;
      }

      v162 = v11;
      v163 = v10;
      v12 = v0;
      if (*(v0 + 96))
      {
        v2 = sub_1ABF25054();

        if ((v2 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
      }

      *(v0 + 56) = v162;
      *(v0 + 64) = v163;
      goto LABEL_86;
    case 2:
    case 3:

      *(v0 + 56) = v6;
      *(v0 + 64) = v7;
      goto LABEL_86;
    case 4:
      goto LABEL_86;
    default:
      v160 = v4[1];
      v161 = *v4;
      v159 = v3;
      v162 = *v0;
      v175 = v1;
      v163 = *(v0 + 8);

      v12 = v0;
LABEL_9:
      v13 = 0;
      v185 = MEMORY[0x1E69E7CC0];
      v158 = v12;
      v14 = *(v12 + 80);
      v178[0] = MEMORY[0x1E69E7CC0];
      v167 = *(v14 + 16);
      break;
  }

LABEL_10:
  if (v13 == v167)
  {
    v39 = 0;
    v40 = MEMORY[0x1E69E7CC0];
    v174 = v178[0];
    v176 = *(v178[0] + 16);
    v164 = 32;
LABEL_44:
    v41 = 112 * v39 + 32;
    while (v176 != v39)
    {
      sub_1ABC43DF0();
      memcpy(v184, (v174 + v41), sizeof(v184));
      if (__OFADD__(v39, 1))
      {
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
        goto LABEL_183;
      }

      v42 = memcpy(v183, v184, sizeof(v183));
      MEMORY[0x1EEE9AC00](v42);
      sub_1ABB345D8(v184, v178);
      if (!sub_1ABB2F8A4())
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v181 = v40;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1ABA8A0AC(*(v40 + 16));
          v40 = v181;
        }

        v45 = *(v40 + 16);
        v44 = *(v40 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_1ABA7BBEC(v44);
          sub_1ABA8BB08();
          sub_1ABADDC8C(v46, v47, v48);
          v40 = v181;
        }

        *(v40 + 16) = v45 + 1;
        memcpy((v40 + 112 * v45 + 32), v184, 0x70uLL);
        ++v39;
        goto LABEL_44;
      }

      sub_1ABB34634(v184);
      ++v39;
      v41 += 112;
    }

    v184[0] = v170;

    sub_1ABD7DB90(v40);
    sub_1ABE43280(v184[0]);
    sub_1ABAD219C(&qword_1EB4D9510, &unk_1ABF60F20);
    swift_allocObject();
    sub_1ABAE6998();
    v49 = 0;
    sub_1ABAA034C(MEMORY[0x1E69E7CC0]);
LABEL_55:
    if (v49 == v165)
    {
LABEL_88:
      v83 = 0;
      v156 = v178[0];
      sub_1ABAA034C(MEMORY[0x1E69E7CC0]);
      while (v83 != v165)
      {
        sub_1ABAA0790();
        sub_1ABAB1170();
        sub_1ABAB2B8C();
        v169 = v83 + 1;
        v172 = v84;
        sub_1ABA99594();
        v87 = v86 & v85;
        swift_bridgeObjectRetain_n();
        v88 = sub_1ABA8B348();
        sub_1ABAE441C(v88, v89);
        v90 = 0;
        v91 = (v83 + 64) >> 6;
        v92 = MEMORY[0x1E69E7CC0];
        while (v87)
        {
LABEL_96:
          sub_1ABA9739C();
          v96 = *(v95 + ((v90 << 9) | (8 * v94)));
          v97 = *(v96 + 16);
          v98 = *(v92 + 16);
          if (__OFADD__(v98, v97))
          {
            goto LABEL_175;
          }

          if (!swift_isUniquelyReferenced_nonNull_native() || v98 + v97 > *(v92 + 24) >> 1)
          {
            sub_1ABAD88DC();
            v92 = v99;
          }

          v87 &= v87 - 1;
          if (*(v96 + 16))
          {
            sub_1ABA84218();
            if (v100 < v97)
            {
              goto LABEL_178;
            }

            swift_arrayInitWithCopy();

            if (v97)
            {
              v101 = *(v92 + 16);
              v28 = __OFADD__(v101, v97);
              v102 = v101 + v97;
              if (v28)
              {
                goto LABEL_182;
              }

              *(v92 + 16) = v102;
            }
          }

          else
          {

            if (v97)
            {
              goto LABEL_176;
            }
          }
        }

        while (1)
        {
          v93 = v90 + 1;
          if (__OFADD__(v90, 1))
          {
            __break(1u);
LABEL_163:
            __break(1u);
            goto LABEL_164;
          }

          if (v93 >= v91)
          {
            break;
          }

          v87 = *(v172 + 8 * v93);
          ++v90;
          if (v87)
          {
            v90 = v93;
            goto LABEL_96;
          }
        }

        v103 = 0;
        v104 = *(v92 + 16);
        v105 = MEMORY[0x1E69E7CC0];
LABEL_108:
        v106 = v164 + 144 * v103;
        while (v104 != v103)
        {
          if (v103 >= *(v92 + 16))
          {
            goto LABEL_163;
          }

          memcpy(v177, (v92 + v106), sizeof(v177));
          KnosisFact.splitSubentityIdentifier()(v183);
          if (*&v183[1])
          {
            v107 = *&v183[0];
            sub_1ABD0DCB0(*&v183[0], *(&v183[0] + 1), *&v183[1]);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v110 = sub_1ABA7BEF0();
              sub_1ABAD89C8(v110, v111, v112, v105);
              v105 = v113;
            }

            v109 = *(v105 + 16);
            v108 = *(v105 + 24);
            if (v109 >= v108 >> 1)
            {
              sub_1ABA7BBEC(v108);
              sub_1ABA8BB08();
              sub_1ABAD89C8(v114, v115, v116, v105);
              v105 = v117;
            }

            ++v103;
            *(v105 + 16) = v109 + 1;
            *(v105 + 8 * v109 + 32) = v107;
            goto LABEL_108;
          }

          v106 += 144;
          ++v103;
        }

        sub_1ABC6D404(v184);
        sub_1ABD7DAF4(v105);
        v83 = v169;
      }

      goto LABEL_124;
    }

    sub_1ABAA0790();
    sub_1ABAB1170();
    sub_1ABAB2B8C();
    v168 = v49 + 1;
    v171 = v50;
    sub_1ABA99594();
    v53 = v52 & v51;
    swift_bridgeObjectRetain_n();
    v54 = sub_1ABA8B348();
    sub_1ABAE441C(v54, v55);
    v56 = 0;
    v57 = (v49 + 64) >> 6;
    v58 = MEMORY[0x1E69E7CC0];
    while (v53)
    {
LABEL_62:
      sub_1ABA9739C();
      v62 = *(v61 + ((v56 << 9) | (8 * v60)));
      v63 = *(v62 + 16);
      v64 = *(v58 + 16);
      if (__OFADD__(v64, v63))
      {
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:

LABEL_86:
        sub_1ABA7BC90();
        return;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v64 + v63 > *(v58 + 24) >> 1)
      {
        sub_1ABA9ECC4();
        sub_1ABAD88DC();
        v58 = v65;
      }

      v53 &= v53 - 1;
      if (*(v62 + 16))
      {
        sub_1ABA84218();
        if (v67 < v63)
        {
          __break(1u);
          goto LABEL_174;
        }

        sub_1ABAA1FF8(v66);
        swift_arrayInitWithCopy();

        if (v63)
        {
          v68 = *(v58 + 16);
          v28 = __OFADD__(v68, v63);
          v69 = v68 + v63;
          if (v28)
          {
            goto LABEL_177;
          }

          *(v58 + 16) = v69;
        }
      }

      else
      {

        if (v63)
        {
          goto LABEL_170;
        }
      }
    }

    while (1)
    {
      v59 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      if (v59 >= v57)
      {

        v70 = 0;
        v71 = *(v58 + 16);
        v72 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v71 == v70)
          {

            sub_1ABC6D404(v184);
            sub_1ABD7DAF4(v72);
            v49 = v168;
            goto LABEL_55;
          }

          if (v70 >= *(v58 + 16))
          {
            break;
          }

          ++v70;
          sub_1ABA82B0C();
          if (v139)
          {
            v74 = *v73;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v77 = sub_1ABA7BEF0();
              sub_1ABAD89C8(v77, v78, v79, v72);
              v72 = v80;
            }

            v76 = *(v72 + 16);
            v75 = *(v72 + 24);
            if (v76 >= v75 >> 1)
            {
              v81 = sub_1ABA7BBEC(v75);
              sub_1ABAD89C8(v81, v76 + 1, 1, v72);
              v72 = v82;
            }

            *(v72 + 16) = v76 + 1;
            *(v72 + 8 * v76 + 32) = v74;
          }
        }

        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:

        v150 = v185;
        if (v185[2] == 1)
        {

          if (v150[2] == 1)
          {
            sub_1ABC43DF0();
            v151 = v150[4];
            v152 = v150[5];

            *(v158 + 56) = v151;
            *(v158 + 64) = v152;
          }

          else
          {
LABEL_167:
          }
        }

        else
        {
LABEL_164:

          *(v158 + 56) = v162;
          *(v158 + 64) = v163;
        }

        goto LABEL_86;
      }

      v53 = *(v171 + 8 * v59);
      ++v56;
      if (v53)
      {
        v56 = v59;
        goto LABEL_62;
      }
    }
  }

  else
  {
    sub_1ABAA0790();
    sub_1ABAB1170();
    v174 = v13 + 1;
    sub_1ABAB2B8C();
    v176 = v15;
    sub_1ABA99594();
    v18 = v17 & v16;
    swift_bridgeObjectRetain_n();
    v19 = sub_1ABA8B348();
    sub_1ABAE441C(v19, v20);
    v21 = 0;
    v22 = MEMORY[0x1E69E7CC0];
    while (v18)
    {
LABEL_17:
      sub_1ABA9739C();
      sub_1ABD91530();
      v24 = *(v22 + 16);
      if (__OFADD__(v24, v2))
      {
        __break(1u);
LABEL_166:
        __break(1u);
        goto LABEL_167;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v24 + v2 > *(v22 + 24) >> 1)
      {
        sub_1ABAD88DC();
        v22 = v25;
      }

      v18 &= v18 - 1;
      if (*(v7 + 16))
      {
        sub_1ABA84218();
        if (v26 < v2)
        {
          __break(1u);
          goto LABEL_169;
        }

        swift_arrayInitWithCopy();

        if (v2)
        {
          v27 = *(v22 + 16);
          v28 = __OFADD__(v27, v2);
          v29 = v27 + v2;
          if (v28)
          {
            goto LABEL_171;
          }

          *(v22 + 16) = v29;
        }
      }

      else
      {

        if (v2)
        {
          goto LABEL_166;
        }
      }
    }

    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_88;
      }

      if (v23 >= ((v13 + 64) >> 6))
      {
        break;
      }

      v18 = *(v176 + 8 * v23);
      ++v21;
      if (v18)
      {
        v21 = v23;
        goto LABEL_17;
      }
    }

    v30 = 0;
    v186 = *(v22 + 16);
    v31 = 32;
    v2 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v186 == v30)
      {

        sub_1ABC6D404(v184);
        sub_1ABD7DB90(v2);
        v13 = v174;
        goto LABEL_10;
      }

      if (v30 >= *(v22 + 16))
      {
        break;
      }

      memcpy(v182, (v22 + v31), sizeof(v182));
      KnosisFact.extendedTriples()();
      v33 = *(v32 + 16);
      v34 = *(v2 + 16);
      if (__OFADD__(v34, v33))
      {
        goto LABEL_120;
      }

      v7 = v32;
      if (!swift_isUniquelyReferenced_nonNull_native() || (v35 = *(v2 + 24) >> 1, v35 < v34 + v33))
      {
        sub_1ABAD89DC();
        v2 = v36;
        v35 = *(v36 + 24) >> 1;
      }

      if (*(v7 + 16))
      {
        if (v35 - *(v2 + 16) < v33)
        {
          goto LABEL_122;
        }

        swift_arrayInitWithCopy();

        if (v33)
        {
          v37 = *(v2 + 16);
          v28 = __OFADD__(v37, v33);
          v38 = v37 + v33;
          if (v28)
          {
            goto LABEL_158;
          }

          *(v2 + 16) = v38;
        }
      }

      else
      {

        if (v33)
        {
          goto LABEL_121;
        }
      }

      v31 += 144;
      ++v30;
    }

    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
  }

  __break(1u);
LABEL_124:
  v184[0] = v156;
  sub_1ABD7DAF4(v178[0]);
  v118 = 0;
  v119 = sub_1ABE8AC38() + 56;
  sub_1ABA7D32C();
  v122 = v121 & v120;
  v124 = (v123 + 63) >> 6;
  v125 = v175;
  v154 = v119;
  v153 = v124;
  while (v122)
  {
LABEL_130:
    sub_1ABD7F2B4(v184);
    if (v125)
    {
      goto LABEL_172;
    }

    v122 &= v122 - 1;
    if (v184[1])
    {
      v166 = v118;
      v183[0] = v161;
      v183[1] = v160;
      sub_1ABD62C00(v184, v159, v183, v178);
      sub_1ABAA2D68();
      sub_1ABD5B81C(v127, v128);
      v155 = v180;
      v157 = v179;
      sub_1ABA93E20(v178, v179);
      v129 = 0;
      v173 = MEMORY[0x1E69E7CC0];
LABEL_133:
      v130 = (v174 + 32 + 112 * v129);
      while (v176 != v129)
      {
        if (v129 >= *(v174 + 16))
        {
          goto LABEL_179;
        }

        memcpy(v184, v130, sizeof(v184));
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_184;
        }

        if (*(_Records_GDEntityPredicate_records + 4) >= 3481)
        {
          goto LABEL_180;
        }

        if (*(_Records_GDEntityPredicate_records + 5) >= 4281)
        {
          goto LABEL_181;
        }

        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_185;
        }

        v132 = v184[1];
        v131 = v184[2];
        v133 = sub_1ABA8B348();
        sub_1ABB345D8(v133, v134);

        v135 = sub_1ABF23DD4();
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_186;
        }

        v137 = v135;
        v138 = v136;
        sub_1ABF23DD4();
        v139 = v132 == v137 && v131 == v138;
        if (v139)
        {
        }

        else
        {
          v140 = sub_1ABF25054();

          if ((v140 & 1) == 0)
          {
            v141 = v173;
            v142 = swift_isUniquelyReferenced_nonNull_native();
            v181 = v173;
            if ((v142 & 1) == 0)
            {
              sub_1ABA8A0AC(*(v173 + 16));
              v141 = v181;
            }

            v144 = *(v141 + 16);
            v143 = *(v141 + 24);
            if (v144 >= v143 >> 1)
            {
              sub_1ABA7BBEC(v143);
              sub_1ABA8BB08();
              sub_1ABADDC8C(v145, v146, v147);
              v141 = v181;
            }

            ++v129;
            *(v141 + 16) = v144 + 1;
            v173 = v141;
            memcpy((v141 + 112 * v144 + 32), v184, 0x70uLL);
            goto LABEL_133;
          }
        }

        sub_1ABB34634(v184);
        v130 += 112;
        ++v129;
      }

      v184[3] = sub_1ABAD219C(&qword_1EB4D93B0, &qword_1ABF5FF18);
      sub_1ABA7D918();
      v184[4] = sub_1ABAB47C4(&qword_1EB4CE740, &qword_1EB4D93B0, &qword_1ABF5FF18, v148);
      v184[0] = v173;
      v149 = (*(v155 + 24))(v184, v157);
      if (v184[3])
      {
        sub_1ABA84B54(v184);
      }

      sub_1ABD7DA50(v149);
      sub_1ABA84B54(v178);
      v125 = 0;
      v119 = v154;
      v118 = v166;
      v124 = v153;
    }
  }

  while (1)
  {
    v126 = v118 + 1;
    if (__OFADD__(v118, 1))
    {
      break;
    }

    if (v126 >= v124)
    {
      goto LABEL_159;
    }

    v122 = *(v119 + 8 * v126);
    ++v118;
    if (v122)
    {
      v118 = v126;
      goto LABEL_130;
    }
  }

LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
}

void sub_1ABD88238()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v2 = 279;
  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_67;
  }

  v3 = v1[6];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), __dst);
  v142[0] = __dst[0];
  v142[1] = __dst[1];
  v143 = __dst[2];
  v4 = v1[9];
  v5 = sub_1ABAD50DC(v142, v4);
  sub_1ABAE4478(v142);
  if (v5)
  {
    if (*(v5 + 16))
    {
      v6 = memcpy(__dst, (v5 + 32), sizeof(__dst));
      v8 = *(&__dst[6] + 1);
      v7 = *&__dst[6];
      v9 = BYTE2(__dst[8]);
      sub_1ABD91518(v6, v10, v11, v12, v13, v14, v15, v16, v100, v101, v102, v105, v107, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v133, v134, v136);

      switch(v9)
      {
        case 1:
          v7 = EntityIdentifier.stringValue.getter();
          v8 = v99;
          goto LABEL_63;
        case 4:
          sub_1ABAE4304(__dst);

          v7 = 0;
          v8 = 0xE000000000000000;
          break;
        default:

LABEL_63:
          sub_1ABAE4304(__dst);

          break;
      }

      v1[5] = v7;
      goto LABEL_65;
    }
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_68;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[732], *(_Records_GDEntityPredicate_records + 184), *(_Records_GDEntityPredicate_records + 185), __dst);
  v140[0] = __dst[0];
  v140[1] = __dst[1];
  v141 = __dst[2];
  v17 = sub_1ABAD50DC(v140, v4);
  sub_1ABAE4478(v140);
  v106 = v4;
  v108 = v3;
  if (!v17)
  {
    goto LABEL_32;
  }

  v18 = *(v17 + 16);
  if (!v18)
  {

LABEL_32:
    v32 = 0;
    v8 = 0xE000000000000000;
    goto LABEL_33;
  }

  v101 = 279;
  v103 = v1;
  v19 = 0;
  v20 = v18 - 1;
  v21 = 32;
  v8 = 0xE000000000000000;
  while (1)
  {
    v22 = memcpy(__dst, (v17 + v21), sizeof(__dst));
    v30 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v30 = v19 & 0xFFFFFFFFFFFFLL;
    }

    v31 = *(&__dst[6] + 1);
    v32 = *&__dst[6];
    v33 = BYTE2(__dst[8]);
    if (v30)
    {
      v34 = __dst[7];
      v35 = LOWORD(__dst[8]);
      v138 = 0;
      v139 = 0xE000000000000000;
      sub_1ABA9F95C();
      v135 = v44;
      switch(v33)
      {
        case 1:
          sub_1ABAA31F0();
          if ((v32 & 0x80000000000000) == 0)
          {
            v53 += 1272;
          }

          sub_1ABD91518(v45, v46, v47, v48, v49, v50, v51, v52, v100, v101, v103, v106, v108, v20, v110, v32, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v53, 0xE300000000000000, v135, 0xEC000000203A6564);
          v54 = sub_1ABF24FF4();
          MEMORY[0x1AC5A9410](v54);

          v32 = v131;
          v31 = v133;
          break;
        case 2:
        case 3:
          sub_1ABD91518(v36, v37, v38, v39, v40, v41, v42, v43, v100, v101, v103, v106, v108, v20, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v133, v44, 0xEC000000203A6564);

          break;
        case 4:
          sub_1ABD91518(v36, v37, v38, v39, v40, v41, v42, v43, v100, v101, v103, v106, v108, v20, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v133, v44, 0xEC000000203A6564);
          v32 = 0;
          v31 = 0xE000000000000000;
          break;
        default:
          sub_1ABD91518(v36, v37, v38, v39, v40, v41, v42, v43, v100, v101, v103, v106, v108, v20, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v133, v44, 0xEC000000203A6564);
          sub_1ABAE4358(v32, v31, v34, *(&v34 + 1), v35, 0);
          break;
      }

      MEMORY[0x1AC5A9410](v32, v31);

      sub_1ABA83AA4();
      MEMORY[0x1AC5A9410](v134, v136);
      sub_1ABAE4304(__dst);

      MEMORY[0x1AC5A9410](32, 0xE100000000000000);
      MEMORY[0x1AC5A9410](v19, v8);

      v32 = v138;
      v8 = v139;
      v20 = v109;
    }

    else
    {
      sub_1ABD91518(v22, v23, v24, v25, v26, v27, v28, v29, v100, v101, v103, v106, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v133, v134, v136);

      switch(v33)
      {
        case 1:
          sub_1ABAA31F0();
          if ((v32 & 0x80000000000000) == 0)
          {
            v55 += 1272;
          }

          v113 = v55;
          v114 = 0xE300000000000000;
          v138 = v32;
          v56 = sub_1ABF24FF4();
          MEMORY[0x1AC5A9410](v56);

          sub_1ABAE4304(__dst);
          v32 = v113;
          v8 = 0xE300000000000000;
          break;
        case 4:
          sub_1ABAE4304(__dst);
          v32 = 0;
          v8 = 0xE000000000000000;
          break;
        default:

          sub_1ABAE4304(__dst);
          v8 = v31;
          break;
      }
    }

    if (!v20)
    {
      break;
    }

    --v20;
    v21 += 144;
    v19 = v32;
  }

  v2 = v101;
  v1 = v103;
LABEL_33:
  if (v2 < 0x40)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (_Records_GDEntityPredicate_records)
  {
    sub_1ABA91D48(_Records_GDEntityPredicate_records[756], *(_Records_GDEntityPredicate_records + 190), *(_Records_GDEntityPredicate_records + 191), &v138);
    v57 = sub_1ABAD50DC(&v138, v106);
    sub_1ABAE4478(&v138);
    if (v57)
    {
      v58 = *(v57 + 16);
      if (v58)
      {
        v104 = v1;
        v59 = v58 - 1;
        for (i = 32; ; i += 144)
        {
          v61 = memcpy(__dst, (v57 + i), sizeof(__dst));
          v69 = HIBYTE(v8) & 0xF;
          if ((v8 & 0x2000000000000000) == 0)
          {
            v69 = v32 & 0xFFFFFFFFFFFFLL;
          }

          v71 = *(&__dst[6] + 1);
          v70 = *&__dst[6];
          v72 = BYTE2(__dst[8]);
          if (v69)
          {
            v73 = __dst[7];
            v74 = LOWORD(__dst[8]);
            sub_1ABA9F95C();
            v132 = v83;
            switch(v72)
            {
              case 1:
                sub_1ABAA31F0();
                if ((v70 & 0x80000000000000) == 0)
                {
                  v94 += 1272;
                }

                sub_1ABD91518(v86, v87, v88, v89, v90, v91, v92, v93, v100, v101, v104, v106, v108, i, v70, v94, 0xE300000000000000, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v132, 0xEC000000203A6564, 0, 0xE000000000000000);
                v95 = sub_1ABF24FF4();
                MEMORY[0x1AC5A9410](v95);

                break;
              case 2:
              case 3:
                sub_1ABD91518(v75, v76, v77, v78, v79, v80, v81, v82, v100, v101, v104, v106, v108, i, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v83, 0xEC000000203A6564, 0, 0xE000000000000000);

                break;
              case 4:
                sub_1ABD91518(v75, v76, v77, v78, v79, v80, v81, v82, v100, v101, v104, v106, v108, i, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v83, 0xEC000000203A6564, 0, 0xE000000000000000);
                break;
              default:
                sub_1ABD91518(v75, v76, v77, v78, v79, v80, v81, v82, v100, v101, v104, v106, v108, i, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v83, 0xEC000000203A6564, 0, 0xE000000000000000);
                v84 = sub_1ABA82ED0();
                sub_1ABAE4358(v84, v85, v73, *(&v73 + 1), v74, 0);
                break;
            }

            i = v109;
            v96 = sub_1ABA82ED0();
            MEMORY[0x1AC5A9410](v96);

            sub_1ABA83AA4();
            MEMORY[0x1AC5A9410](v131, v133);
            sub_1ABAE4304(__dst);

            MEMORY[0x1AC5A9410](32, 0xE100000000000000);
            MEMORY[0x1AC5A9410](v32, v8);

            v70 = v134;
            v8 = v136;
          }

          else
          {
            sub_1ABD91518(v61, v62, v63, v64, v65, v66, v67, v68, v100, v101, v104, v106, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v133, v134, v136);

            switch(v72)
            {
              case 1:
                sub_1ABAA31F0();
                if ((v70 & 0x80000000000000) == 0)
                {
                  v97 += 1272;
                }

                v113 = v97;
                v114 = 0xE300000000000000;
                v134 = v70;
                v98 = sub_1ABF24FF4();
                MEMORY[0x1AC5A9410](v98);

                sub_1ABAE4304(__dst);
                v70 = v113;
                v8 = 0xE300000000000000;
                break;
              case 4:
                sub_1ABAE4304(__dst);
                v70 = 0;
                v8 = 0xE000000000000000;
                break;
              default:

                sub_1ABAE4304(__dst);
                v8 = v71;
                break;
            }
          }

          if (!v59)
          {
            break;
          }

          --v59;
          v32 = v70;
        }

        v32 = v70;
        v1 = v104;
        goto LABEL_60;
      }
    }

LABEL_60:
    v1[5] = v32;
LABEL_65:
    v1[6] = v8;
    sub_1ABA7BC1C();
    return;
  }

LABEL_69:
  __break(1u);
}

void *sub_1ABD88954(void *result)
{
  v2 = result[2];
  if (v2)
  {
    v3 = v1;
    v4 = 0;
    for (i = result + 4; ; i += 18)
    {
      memcpy(__dst, i, sizeof(__dst));
      v31 = *&__dst[7];
      v32 = *&__dst[9];
      v33 = __dst[11];
      sub_1ABAE42A8(__dst, v29);

      sub_1ABAC9398(v4, 0);
      swift_isUniquelyReferenced_nonNull_native();
      v29[0] = *(v3 + 72);
      v6 = v29[0];
      v7 = sub_1ABAF8208();
      if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
      {
        break;
      }

      v9 = v7;
      v10 = v8;
      sub_1ABAD219C(&qword_1EB4D1FB0, &qword_1ABF351A0);
      v11 = sub_1ABF24C64();
      v12 = v29[0];
      if (v11)
      {
        v13 = sub_1ABAF8208();
        if ((v10 & 1) != (v14 & 1))
        {
          goto LABEL_19;
        }

        v9 = v13;
      }

      *(v3 + 72) = v12;
      if (v10)
      {
      }

      else
      {
        sub_1ABAA0BEC(v12 + 8 * (v9 >> 6));
        v17 = v15 + v9 * v16;
        v18 = v32;
        *v17 = v31;
        *(v17 + 16) = v18;
        *(v17 + 32) = v33;
        *(*(v12 + 56) + 8 * v9) = MEMORY[0x1E69E7CC0];
        v19 = *(v12 + 16);
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          goto LABEL_18;
        }

        *(v12 + 16) = v21;
      }

      v22 = *(v12 + 56);
      v23 = *(v22 + 8 * v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v22 + 8 * v9) = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1ABA7BEF0();
        sub_1ABAD88DC();
        v23 = v27;
        *(v22 + 8 * v9) = v27;
      }

      v26 = *(v23 + 16);
      v25 = *(v23 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1ABA8E370(v25);
        sub_1ABAD88DC();
        v23 = v28;
        *(v22 + 8 * v9) = v28;
      }

      *(v23 + 16) = v26 + 1;
      result = memcpy((v23 + 144 * v26 + 32), __dst, 0x90uLL);
      v4 = sub_1ABB4F3FC;
      if (!--v2)
      {
        return result;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    result = sub_1ABF25104();
    __break(1u);
  }

  return result;
}

void sub_1ABD88B98()
{
  sub_1ABA7E2A8();
  v83 = v3;
  sub_1ABA7FC9C();
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v95 = *(v1 + 24);
  v92 = *(v1 + 32);
  v7 = *(v1 + 34);
  v117 = *(v1 + 35);
  v118 = *(v1 + 39);
  v8 = *(v1 + 40);
  v104 = *(v1 + 56);
  v106 = *(v1 + 48);
  v103 = *(v1 + 64);
  v84 = *(v1 + 72);
  v108 = *(v1 + 80);
  v116 = *(v1 + 88);
  v100 = *(v1 + 104);
  v102 = v8;
  sub_1ABAD219C(&qword_1EB4D94E8, &unk_1ABF60F00);
  v9 = swift_allocObject();
  v98 = 4;
  *(v9 + 16) = xmmword_1ABF34060;
  v10 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 32) = v2;
  *(v9 + 40) = v0;

  v11 = sub_1ABF23E84();
  *(v9 + 88) = v10;
  *(v9 + 64) = v11;
  *(v9 + 72) = v12;
  sub_1ABA90A20(v9);

  v13 = swift_allocObject();
  v14 = sub_1ABA9FDD8(v13, xmmword_1ABF3BFB0);
  v14[5].n128_u64[1] = v10;
  v14[3].n128_u64[1] = v10;
  v14[4].n128_u64[0] = 0x4920524557534E41;
  v14[4].n128_u64[1] = 0xEA00000000003A44;
  v15 = v14;
  v88 = v5;
  v90 = v4;
  v86 = v6;
  switch(v7)
  {
    case 1:
      __dst[0] = v4;

      v4 = EntityIdentifier.stringValue.getter();
      v5 = v16;
      break;
    case 2:
    case 3:

      break;
    case 4:

      v4 = 0;
      v5 = 0xE000000000000000;
      break;
    default:

      sub_1ABAE4358(v4, v5, v6, v95, v92, 0);
      break;
  }

  v15[7].n128_u64[1] = v10;
  v15[6].n128_u64[0] = v4;
  v15[6].n128_u64[1] = v5;
  if (v106)
  {
    v17 = v102;
  }

  else
  {
    v17 = 0;
  }

  if (v106)
  {
    v18 = v106;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  __dst[0] = 40;
  __dst[1] = 0xE100000000000000;

  MEMORY[0x1AC5A9410](v17, v18);

  MEMORY[0x1AC5A9410](41, 0xE100000000000000);
  v15[9].n128_u64[1] = v10;
  v15[8].n128_u64[0] = 40;
  v15[8].n128_u64[1] = 0xE100000000000000;
  sub_1ABA90A20(v15);

  v19 = swift_allocObject();
  v20 = sub_1ABA9FDD8(v19, xmmword_1ABF3BFC0);
  v20[3].n128_u64[1] = v10;
  v20[4].n128_u64[0] = 0x696C617574786554;
  v20[4].n128_u64[1] = 0xEF3A6E6F6974617ALL;
  v20[7].n128_u64[1] = v10;
  sub_1ABA8071C();
  v23 = 0xD000000000000011;
  if (v103)
  {
    v23 = v104;
    v22 = v103;
  }

  v21[11] = v10;
  v21[12] = v23;
  v21[13] = v22;

  sub_1ABA90A20(v19);

  if (*(v100 + 16))
  {
    v24 = swift_allocObject();
    v25 = sub_1ABA9FDD8(v24, xmmword_1ABF3BFC0);
    v25[5].n128_u64[1] = v10;
    v25[3].n128_u64[1] = v10;
    strcpy(&v25[4], "REQUEST IDs:");
    v25[4].n128_u8[13] = 0;
    v25[4].n128_u16[7] = -5120;
    __dst[0] = v100;

    v26 = sub_1ABA954F0();
    sub_1ABAD219C(v26, v27);
    sub_1ABAB47C4(&qword_1ED870668, &unk_1EB4D33D0, &unk_1ABF3A8C0, MEMORY[0x1E69E6310]);
    v28 = sub_1ABF23B54();
    v30 = v29;

    v24[7].n128_u64[1] = v10;
    v24[6].n128_u64[0] = v28;
    v24[6].n128_u64[1] = v30;
    sub_1ABA90A20(v24);
  }

  v31 = *(v108 + 16);
  if (v31 && v83 >= 1)
  {
    v32 = swift_allocObject();
    v33 = sub_1ABA9FDD8(v32, xmmword_1ABF34060);
    v34 = MEMORY[0x1E69E6158];
    v33[5].n128_u64[1] = MEMORY[0x1E69E6158];
    v33[3].n128_u64[1] = v34;
    v33[4].n128_u64[0] = 0x4620544E45524150;
    sub_1ABD91540(v33);
    sub_1ABA90A20(v32);

    v35 = (v108 + 32);
    do
    {
      memcpy(__dst, v35, 0x70uLL);
      memcpy(v114, v35, 0x70uLL);
      v112 = 9;
      v113 = 0xE100000000000000;
      sub_1ABAE441C(__dst, &v110);
      MEMORY[0x1AC5A9410](v2, v0);
      sub_1ABD88B98();

      sub_1ABC6D404(__dst);
      v35 += 112;
      --v31;
    }

    while (v31);
  }

  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1ABF34060;
  v97 = v2;
  *(v36 + 32) = v2;
  *(v36 + 40) = v0;
  v37 = MEMORY[0x1E69E6158];
  *(v36 + 88) = MEMORY[0x1E69E6158];
  *(v36 + 56) = v37;
  *(v36 + 64) = 0x4620595449544E45;
  sub_1ABD91540(v36);
  sub_1ABA90A20(v36);

  __dst[0] = v90;
  __dst[1] = v88;
  __dst[2] = v86;
  __dst[3] = v95;
  LOWORD(__dst[4]) = v92;
  BYTE2(__dst[4]) = v7;
  *(&__dst[4] + 3) = v117;
  HIBYTE(__dst[4]) = v118;
  __dst[5] = v102;
  __dst[6] = v106;
  __dst[7] = v104;
  __dst[8] = v103;
  __dst[9] = v84;
  __dst[10] = v108;
  *&__dst[11] = v116;
  __dst[13] = v100;
  sub_1ABD7D6C8();
  v101 = v0;
  if (*(v38 + 16))
  {
    v39 = 0;
    v87 = v38 + 32;
    v85 = xmmword_1ABF3BF90;
    v96 = xmmword_1ABF39090;
    v40 = *(v38 + 16);
    v89 = v40;
    for (i = v38; ; v40 = *(i + 16))
    {
      if (v39 >= v40)
      {
        __break(1u);
LABEL_39:
        JUMPOUT(0);
      }

      memcpy(__dst, (v87 + 144 * v39), sizeof(__dst));
      v41 = __dst[12];
      v42 = __dst[13];
      v93 = v39 + 1;
      v43 = __dst[10];
      v44 = __dst[9];
      v45 = __dst[8];
      v46 = __dst[7];
      v47 = BYTE2(__dst[16]);
      v48 = swift_allocObject();
      v48[2].n128_u64[1] = sub_1ABA8AFA4(v48, v85, v49, v50, v51, v52, v53, v54, v55, v83, v84, v85.n128_i64[0], v85.n128_i64[1], v87, v89, i, v93, v96.n128_i64[0], v96.n128_i64[1], v97, v98, v99, v101);
      v48[3].n128_u64[1] = v37;
      v48[4].n128_u64[0] = 11565;
      v48[4].n128_u64[1] = 0xE200000000000000;
      v48[7].n128_u64[1] = v37;
      v48[5].n128_u64[1] = v37;
      v48[6].n128_u64[0] = v46;
      v48[6].n128_u64[1] = v45;
      v110 = 40;
      v111 = 0xE100000000000000;

      sub_1ABAE42A8(__dst, v114);
      MEMORY[0x1AC5A9410](v44, v43);
      MEMORY[0x1AC5A9410](41, 0xE100000000000000);
      v56 = v111;
      v48[8].n128_u64[0] = v110;
      v48[8].n128_u64[1] = v56;
      v48[11].n128_u64[1] = v37;
      v48[9].n128_u64[1] = v37;
      v48[10].n128_u64[0] = 9;
      v48[10].n128_u64[1] = 0xE100000000000000;
      v57 = 0xE000000000000000;
      v58 = 0;
      switch(v47)
      {
        case 1:
          v114[0] = v41;
          v58 = EntityIdentifier.stringValue.getter();
          break;
        case 4:
          break;
        default:

          v58 = v41;
          v57 = v42;
          break;
      }

      v48[13].n128_u64[1] = v37;
      v48[12].n128_u64[0] = v58;
      v48[12].n128_u64[1] = v57;
      sub_1ABA90A20(v48);

      memcpy(v114, __dst, sizeof(v114));
      KnosisFact.allQualifiers.getter();
      v60 = v59;
      sub_1ABAE4304(__dst);
      v61 = *(v60 + 16);
      if (v61)
      {
        v109 = v61 - 1;
        v62 = 32;
        while (1)
        {
          v107 = v62;
          memcpy(v114, (v60 + v62), sizeof(v114));
          v105 = v114[12];
          v63 = BYTE2(v114[16]);
          v65 = v114[7];
          v64 = v114[8];
          v67 = v114[9];
          v66 = v114[10];
          v68 = swift_allocObject();
          v68[2].n128_u64[1] = sub_1ABA8AFA4(v68, v96, v69, v70, v71, v72, v73, v74, v75, v83, v84, v85.n128_i64[0], v85.n128_i64[1], v87, v89, i, v94, v96.n128_i64[0], v96.n128_i64[1], v97, v98, v99, v101);
          v37 = MEMORY[0x1E69E6158];
          v68[3].n128_u64[1] = MEMORY[0x1E69E6158];
          v68[4].n128_u64[0] = 9;
          v68[4].n128_u64[1] = 0xE100000000000000;
          v68[5].n128_u64[1] = v37;
          v68[6].n128_u64[0] = 11565;
          v68[6].n128_u64[1] = 0xE200000000000000;
          v68[9].n128_u64[1] = v37;
          v68[7].n128_u64[1] = v37;
          v68[8].n128_u64[0] = v65;
          v68[8].n128_u64[1] = v64;
          v112 = 40;
          v113 = 0xE100000000000000;

          sub_1ABAE42A8(v114, &v110);
          MEMORY[0x1AC5A9410](v67, v66);
          MEMORY[0x1AC5A9410](41, 0xE100000000000000);
          v76 = v113;
          v68[10].n128_u64[0] = v112;
          v68[10].n128_u64[1] = v76;
          v68[13].n128_u64[1] = v37;
          v68[11].n128_u64[1] = v37;
          v68[12].n128_u64[0] = 9;
          v68[12].n128_u64[1] = 0xE100000000000000;
          v77 = 0xE000000000000000;
          v78 = 0;
          switch(v63)
          {
            case 0:
            case 2:
            case 3:

              v78 = v105;
              v77 = v79;
              goto LABEL_33;
            case 1:
              sub_1ABAA31F0();
              if ((v105 & 0x80000000000000) == 0)
              {
                v80 += 1272;
              }

              v110 = v80;
              v111 = 0xE300000000000000;
              v112 = v81;
              v82 = sub_1ABF24FF4();
              MEMORY[0x1AC5A9410](v82);

              v78 = v110;
              v77 = v111;
              goto LABEL_33;
            case 4:
LABEL_33:
              v68[15].n128_u64[1] = v37;
              v68[14].n128_u64[0] = v78;
              v68[14].n128_u64[1] = v77;
              sub_1ABAE4304(v114);
              sub_1ABA90A20(v68);

              if (!v109)
              {
                goto LABEL_35;
              }

              --v109;
              v62 = v107 + 144;
              break;
            default:
              goto LABEL_39;
          }
        }
      }

LABEL_35:

      v39 = v94;
      if (v94 == v89)
      {
        break;
      }
    }
  }

  sub_1ABA7BC1C();
}

uint64_t sub_1ABD894B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449726577736E61 && a2 == 0xE800000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x696C617574786574 && a2 == 0xEE006E6F6974617ALL;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7374636166 && a2 == 0xE500000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x746E65726170 && a2 == 0xE600000000000000;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x70756F7247677261 && a2 == 0xE800000000000000;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x4974736575716572 && a2 == 0xEA00000000007364)
              {

                return 7;
              }

              else
              {
                v13 = sub_1ABF25054();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1ABD8973C(char a1)
{
  result = 0x6449726577736E61;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x696C617574786574;
      break;
    case 3:
      result = 0x7374636166;
      break;
    case 4:
      result = 0x746E65726170;
      break;
    case 5:
      result = 0x65726F6373;
      break;
    case 6:
      result = 0x70756F7247677261;
      break;
    case 7:
      result = 0x4974736575716572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABD89820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD894B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD89848@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABD89734();
  *a1 = result;
  return result;
}

uint64_t sub_1ABD89870(uint64_t a1)
{
  v2 = sub_1ABD8EF5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD898AC(uint64_t a1)
{
  v2 = sub_1ABD8EF5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void KnosisAnswer.encode(to:)(void *a1)
{
  sub_1ABAD219C(&qword_1EB4D92C8, &qword_1ABF5FD50);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  v4 = *v1;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v16 = *(v1 + 8);
  v7 = *(v1 + 34);
  v8 = *(v1 + 32);
  sub_1ABA88DCC(a1, a1[3]);
  sub_1ABAE4358(v4, v16, v5, v6, v8, v7);
  sub_1ABD8EF5C();
  sub_1ABF252E4();
  sub_1ABD8EFB0();
  sub_1ABAA541C();
  sub_1ABF24F84();
  if (v17)
  {
    sub_1ABA89F48();
    v9 = sub_1ABA8C744();
    v10(v9);
  }

  else
  {
    sub_1ABA89F48();
    sub_1ABF24ED4();
    sub_1ABF24ED4();
    sub_1ABAD219C(&qword_1EB4D92E0, &qword_1ABF5FD58);
    sub_1ABD8F004();
    sub_1ABAA541C();
    sub_1ABF24F84();
    sub_1ABAD219C(&qword_1EB4D9288, &qword_1ABF5FD38);
    sub_1ABAA3D54();
    sub_1ABD8F9F8(v11, v12, &qword_1ABF5FD38, v13);
    sub_1ABAA541C();
    sub_1ABF24F84();
    sub_1ABF24F54();
    sub_1ABD8F110();
    sub_1ABAA541C();
    sub_1ABF24F84();
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABA80D40(&qword_1EB4D4308, MEMORY[0x1E69E6160]);
    sub_1ABAA541C();
    sub_1ABF24F84();
    v14 = sub_1ABA8C744();
    v15(v14);
  }

  sub_1ABA7FC10();
}

uint64_t KnosisAnswer.toEntity()@<X0>(uint64_t a1@<X8>)
{
  KnosisAnswer.extendedTriples()();
  v9 = v2;
  sub_1ABC81214(sub_1ABD8F810, v7);

  v4 = v8;
  if (HIBYTE(v8) <= 0xFEu)
  {
    if ((v8 & 0x100) != 0)
    {
      v9 = *&v7[0];
      sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
      return swift_willThrowTypedImpl();
    }

    else
    {
      v5 = v7[1];
      v6 = v7[2];
      *a1 = v7[0];
      *(a1 + 16) = v5;
      *(a1 + 32) = v6;
      *(a1 + 48) = v4;
    }
  }

  else
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

double KnosisAnswer.toGraphObject()@<D0>(uint64_t a1@<X8>)
{
  v3 = v1;
  sub_1ABA9538C();
  memcpy(v5, v6, v7);
  sub_1ABAD219C(&qword_1EB4D17D0, &qword_1ABF33960);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1ABF34740;
  memcpy((v8 + 32), v3, 0x70uLL);
  sub_1ABAE441C(v15, &v13);
  ObjectSynthesisDictionaryMapping.init()(&v13);
  v9 = v13;
  type metadata accessor for InitializationResourcesManager();
  sub_1ABA7D028();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1ABF239C4();
  v11 = sub_1ABD85134(v9, v9, v8, v10);
  if (v2)
  {
  }

  else
  {
    sub_1ABB2BBAC(v11, &v13);

    if (v14)
    {

      sub_1ABAFF5C4(&v13, a1);
    }

    else
    {
      sub_1ABA925A4(&v13, &qword_1EB4D9310, &unk_1ABF5FD70);
      *(a1 + 32) = 0;
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  return result;
}

void KnosisAnswer.toGraphObject<A>(ofType:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v29 = v3;
  sub_1ABAE2850(&qword_1EB4D6150, &unk_1ABF4FF30);
  swift_getTupleTypeMetadata2();
  sub_1ABAA1CE0();
  v30 = v4;
  v5 = sub_1ABF247E4();
  sub_1ABA7BB64();
  v28 = v6;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  sub_1ABA9538C();
  memcpy(v10, v11, v12);
  sub_1ABAD219C(&qword_1EB4D17D0, &qword_1ABF33960);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1ABF34740;
  sub_1ABA9538C();
  memcpy(v14, v15, v16);
  sub_1ABAE441C(&v32, v31);
  ObjectSynthesisDictionaryMapping.init()(v31);
  v17 = v31[0];
  type metadata accessor for InitializationResourcesManager();
  sub_1ABA7D028();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1ABF239C4();
  v31[0] = v17;
  v31[1] = v13;
  v31[2] = v18;
  CustomKnosisResultContext.graphObjectsFromAnswers<A>(ofType:)();
  if (v0)
  {
  }

  else
  {
    v27 = v5;
    v31[0] = v19;
    v20 = v30;
    sub_1ABF241F4();
    swift_getWitnessTable();
    sub_1ABF24544();

    if (sub_1ABA7E1E0(v9, 1, v20) == 1)
    {
      (*(v28 + 8))(v9, v27);
      v21 = v29;
      v22 = 1;
      v23 = 1;
      v24 = v2;
    }

    else
    {

      sub_1ABA8AD50();
      (*(v25 + 32))(v29, v9, v2);
      sub_1ABA898F8();
    }

    sub_1ABA7B9B4(v21, v22, v23, v24);
  }

  sub_1ABA7BC90();
}

uint64_t Array<A>.prettyPrint()(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 32;
    do
    {
      sub_1ABA9F0E0(v5);
      sub_1ABA9F0E0(v4);
      sub_1ABAE441C(v5, &v3);
      sub_1ABD88B98();
      result = sub_1ABC6D404(v5);
      v2 += 112;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t GraphNode.asString.getter()
{
  if (*(v0 + 34))
  {
    return 0;
  }

  v1 = *v0;

  return v1;
}

uint64_t GraphNode.asPredicate.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 34) == 2)
  {
    v3 = *(v1 + 16);
    v5 = v1[2];
    v4 = v1[3];
    v8 = v1;
    v6 = *v1;
    v7 = v8[1];
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v5 = 0;
    v4 = 0;
    v3 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  return result;
}

uint64_t GraphNode.asType.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 34) == 3)
  {
    v4 = v1[2];
    v3 = v1[3];
    v6 = *v1;
    v5 = v1[1];
    v7 = *(v1 + 32);
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v4 = 0;
    v3 = 0;
    v7 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v7;
  return result;
}

uint64_t GraphNode.description.getter()
{
  v1 = *(v0 + 34);
  v2 = 0xE000000000000000;
  strcpy(v6, "<GraphNode: ");
  BYTE5(v6[1]) = 0;
  HIWORD(v6[1]) = -5120;
  v3 = 0;
  switch(v1)
  {
    case 1:
      v3 = EntityIdentifier.stringValue.getter();
      v2 = v4;
      break;
    case 4:
      break;
    default:

      v3 = sub_1ABA950A4();
      break;
  }

  MEMORY[0x1AC5A9410](v3, v2);

  sub_1ABA83AA4();
  return v6[0];
}

uint64_t GraphNode.init(id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((sub_1ABF23E64() & 1) != 0 && (, v6 = sub_1ABA8B14C(), EntityIdentifier.init(_:)(v6, v7, v8), v32 != 1))
  {
    a1 = v31;

    a2 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 1;
  }

  else
  {
    v9 = sub_1ABA8B14C();
    v11 = sub_1ABA9AC84(v9, v10);
    if (v14)
    {
      v15 = sub_1ABA8B14C();
      result = sub_1ABB7F054(v15, v16);
      if (v20)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
      }

      else
      {
        v28 = result;
        v29 = v18;
        v30 = v19;

        result = sub_1ABA8882C(v28, v29, v30, &v31);
        a1 = v31;
        a2 = v32;
        v21 = v33;
        v22 = v34;
        v24 = 3;
        v23 = v35;
      }
    }

    else
    {
      v25 = v11;
      v26 = v12;
      v27 = v13;

      result = sub_1ABA91D48(v25, v26, v27, &v31);
      a1 = v31;
      a2 = v32;
      v21 = v33;
      v22 = v34;
      v24 = 2;
      v23 = v35;
    }
  }

  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = v21;
  *(a3 + 24) = v22;
  *(a3 + 32) = v23;
  *(a3 + 34) = v24;
  return result;
}

uint64_t GraphNode.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 34);
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABF252D4();
  sub_1ABAD219C(&qword_1EB4D9318, &unk_1ABF5FD80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34740;
  v6 = inited;
  switch(v4)
  {
    case 1:
      *(inited + 32) = 0x797469746E65;
      *(inited + 40) = 0xE600000000000000;
      v12 = v2;
      v2 = EntityIdentifier.stringValue.getter();
      v3 = v9;
      goto LABEL_8;
    case 2:
      v7 = 0x7461636964657270;
      v8 = 0xE900000000000065;
      goto LABEL_6;
    case 3:
      v7 = 0x6C43797469746E65;
      v8 = 0xEB00000000737361;
      goto LABEL_6;
    case 4:
      v2 = 0;
      *(inited + 32) = 1701736302;
      *(inited + 40) = 0xE400000000000000;
      v3 = 0xE000000000000000;
      goto LABEL_8;
    default:
      v7 = 0x676E69727473;
      v8 = 0xE600000000000000;
LABEL_6:
      *(inited + 32) = v7;
      *(inited + 40) = v8;

LABEL_8:
      *(v6 + 48) = v2;
      *(v6 + 56) = v3;
      v12 = sub_1ABF239C4();
      sub_1ABA94E50(v11, v11[3]);
      sub_1ABAD219C(&qword_1EB4D2068, &qword_1ABF41380);
      sub_1ABD8F82C();
      sub_1ABF25074();

      return sub_1ABA84B54(v11);
  }
}

BOOL static GraphNode.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 16);
  v7 = *(a1 + 34);
  v8 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  v12 = *(a2 + 16);
  v13 = *(a2 + 34);
  v61[0] = *a1;
  v61[1] = v3;
  v61[2] = v5;
  v61[3] = v4;
  v62 = v6;
  v63 = v7;
  v64 = v8;
  v65 = v9;
  v66 = v11;
  v67 = v10;
  v68 = v12;
  v69 = v13;
  switch(v7)
  {
    case 1:
      if (v13 != 1)
      {
        goto LABEL_29;
      }

      sub_1ABA925A4(v61, &qword_1EB4D9320, &unk_1ABF5FD90);
      return v2 == v8;
    case 2:
      if (v13 != 2)
      {
        goto LABEL_25;
      }

      if (v2 != v8 || v3 != v9)
      {
        v60 = sub_1ABF25054();
        v27 = sub_1ABA902A8();
        sub_1ABAE4358(v27, v28, v29, v30, v31, 2u);
        v20 = sub_1ABA7E9C8();
        v25 = 2;
        goto LABEL_24;
      }

      sub_1ABAA2D68();
      sub_1ABAE4358(v44, v45, v46, v47, v12, 2u);
      v48 = sub_1ABA7E9C8();
      v53 = 2;
      goto LABEL_33;
    case 3:
      if (v13 != 3)
      {
LABEL_25:

LABEL_26:

LABEL_29:
        v39 = sub_1ABA902A8();
        sub_1ABAE4358(v39, v40, v41, v42, v43, v13);
        sub_1ABA925A4(v61, &qword_1EB4D9320, &unk_1ABF5FD90);
        return 0;
      }

      if (v5 != v11 || v4 != v10)
      {
        sub_1ABAA2D68();
        v60 = sub_1ABF25054();
        v33 = sub_1ABA902A8();
        sub_1ABAE4358(v33, v34, v35, v36, v37, 3u);
        v20 = sub_1ABA7E9C8();
        v25 = 3;
        goto LABEL_24;
      }

      v54 = sub_1ABA82ED0();
      sub_1ABAE4358(v54, v55, v5, v4, v12, 3u);
      v48 = sub_1ABA7E9C8();
      v53 = 3;
      goto LABEL_33;
    case 4:
      if (v13 != 4 || v9 | v8 | v11 | v10 || v12)
      {
        goto LABEL_29;
      }

      goto LABEL_34;
    default:
      if (v13)
      {
        goto LABEL_26;
      }

      if (v2 == v8 && v3 == v9)
      {
        sub_1ABAA2D68();
        sub_1ABAE4358(v56, v57, v58, v59, v12, 0);
        v48 = sub_1ABA7E9C8();
        v53 = 0;
LABEL_33:
        sub_1ABAE4358(v48, v49, v50, v51, v52, v53);
LABEL_34:
        sub_1ABA925A4(v61, &qword_1EB4D9320, &unk_1ABF5FD90);
        return 1;
      }

      else
      {
        v60 = sub_1ABF25054();
        v15 = sub_1ABA902A8();
        sub_1ABAE4358(v15, v16, v17, v18, v19, 0);
        v20 = sub_1ABA7E9C8();
        v25 = 0;
LABEL_24:
        sub_1ABAE4358(v20, v21, v22, v23, v24, v25);
        sub_1ABA925A4(v61, &qword_1EB4D9320, &unk_1ABF5FD90);
        return v60 & 1;
      }
  }
}

uint64_t GraphNode.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  switch(*(v1 + 34))
  {
    case 1:
      MEMORY[0x1AC5AA8A0](1);
      return MEMORY[0x1AC5AA8D0](v2);
    case 2:
      v3 = 2;
      goto LABEL_5;
    case 3:
      MEMORY[0x1AC5AA8A0](3);
      goto LABEL_7;
    case 4:
      return MEMORY[0x1AC5AA8A0](4);
    default:
      v3 = 0;
LABEL_5:
      MEMORY[0x1AC5AA8A0](v3);
      sub_1ABA7D0EC();
LABEL_7:

      return sub_1ABF23D34();
  }
}

uint64_t GraphNode.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 34);
  sub_1ABF25234();
  switch(v2)
  {
    case 1:
      MEMORY[0x1AC5AA8A0](1);
      MEMORY[0x1AC5AA8D0](v1);
      return sub_1ABF25294();
    case 2:
      v3 = 2;
      goto LABEL_5;
    case 3:
      MEMORY[0x1AC5AA8A0](3);
      goto LABEL_7;
    case 4:
      MEMORY[0x1AC5AA8A0](4);
      return sub_1ABF25294();
    default:
      v3 = 0;
LABEL_5:
      MEMORY[0x1AC5AA8A0](v3);
LABEL_7:
      sub_1ABF23D34();
      return sub_1ABF25294();
  }
}

uint64_t sub_1ABD8AC74(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 34);
  v4 = v1[1];
  v7 = *v1;
  v8 = v4;
  v9 = v2;
  v10 = v3;
  sub_1ABF25234();
  GraphNode.hash(into:)(v6);
  return sub_1ABF25294();
}

uint64_t KnosisFact.id.setter()
{
  sub_1ABA7FC9C();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t KnosisFact.subject.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 48);
  *(a1 + 32) = v6;
  return sub_1ABAA6150(*(v1 + 50), a1, v2, v3, v4, v5, v6);
}

__n128 KnosisFact.subject.setter()
{
  sub_1ABA96494();
  sub_1ABC6D458(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 50));
  result = *v0;
  v5 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v5;
  *(v1 + 48) = v2;
  *(v1 + 50) = v3;
  return result;
}

uint64_t KnosisFact.predicate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

__n128 KnosisFact.predicate.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = a1[2].n128_u16[0];

  result = v6;
  *(v1 + 56) = v6;
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
  *(v1 + 88) = v4;
  return result;
}

uint64_t KnosisFact.object.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 128);
  *(a1 + 32) = v6;
  return sub_1ABAA6150(*(v1 + 130), a1, v2, v3, v4, v5, v6);
}

__n128 KnosisFact.object.setter()
{
  sub_1ABA96494();
  sub_1ABC6D458(*(v1 + 96), *(v1 + 104), *(v1 + 112), *(v1 + 120), *(v1 + 128), *(v1 + 130));
  result = *v0;
  v5 = *(v0 + 16);
  *(v1 + 96) = *v0;
  *(v1 + 112) = v5;
  *(v1 + 128) = v2;
  *(v1 + 130) = v3;
  return result;
}

uint64_t KnosisFact.qualifiers.setter(uint64_t a1)
{

  *(v1 + 136) = a1;
  return result;
}

uint64_t KnosisFact.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[12];
  v5 = v0[13];
  v7 = *(v0 + 130);
  v8 = 0xE000000000000000;
  sub_1ABF24AB4();

  MEMORY[0x1AC5A9410](v1, v2);
  MEMORY[0x1AC5A9410](0x616369646572702CLL, 0xEB000000003A6574);
  MEMORY[0x1AC5A9410](v3, v4);
  MEMORY[0x1AC5A9410](0x5D7463656A626F2CLL, 0xE90000000000003ALL);
  v9 = 0;
  switch(v7)
  {
    case 1:
      v9 = EntityIdentifier.stringValue.getter();
      v8 = v10;
      break;
    case 4:
      break;
    default:

      v9 = v6;
      v8 = v5;
      break;
  }

  MEMORY[0x1AC5A9410](v9, v8);

  return 979659099;
}

__n128 KnosisFact.init(subject:predicate:object:)@<Q0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a1[1];
  v37 = *a1;
  v35 = *(a1 + 16);
  v4 = *(a1 + 34);
  v5 = *a2;
  v6 = a2[1];
  sub_1ABA8B920();
  v31 = *(v7 + 16);
  v38 = *v7;
  HIDWORD(v29) = *(v7 + 32);
  v8 = *(v7 + 34);
  sub_1ABAD219C(&qword_1EB4D92F8, &unk_1ABF5FD60);
  sub_1ABAE4254();
  *(a3 + 136) = sub_1ABF239C4();
  v9 = 0xE000000000000000;
  v10 = 0;
  switch(v4)
  {
    case 1:
      v10 = EntityIdentifier.stringValue.getter();
      v9 = v11;
      break;
    case 4:
      break;
    default:
      v9 = *(&v37 + 1);

      v10 = v37;
      break;
  }

  v39 = v10;

  v12 = sub_1ABAA0F58();
  MEMORY[0x1AC5A9410](v12);

  v13 = sub_1ABA894EC();
  MEMORY[0x1AC5A9410](v13);

  v14 = sub_1ABAA0F58();
  MEMORY[0x1AC5A9410](v14);

  v15 = 0xE000000000000000;
  v16 = 0;
  switch(v8)
  {
    case 1:
      v16 = EntityIdentifier.stringValue.getter();
      v15 = v17;
      break;
    case 4:
      break;
    default:
      v15 = v38.n128_u64[1];

      v16 = v38.n128_u64[0];
      break;
  }

  MEMORY[0x1AC5A9410](v16, v15);

  *a3 = v39;
  *(a3 + 8) = v9;
  *(a3 + 16) = v37;
  *(a3 + 32) = v36;
  *(a3 + 48) = v35;
  *(a3 + 50) = v4;
  *(a3 + 56) = v5;
  *(a3 + 64) = v6;
  sub_1ABAB663C(v18, v19, v20, v21, v22, v23, v24, v25, v28, v29, v31, *(&v31 + 1), *v32, *&v32[4], v33, v34);
  result = v38;
  *(a3 + 96) = v38;
  *(a3 + 112) = v27;
  *(a3 + 128) = v30;
  *(a3 + 130) = v8;
  return result;
}

uint64_t KnosisFact.init(subject:predicate:object:relationshipId:relationshipPredicate:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v66 = *(a1 + 16);
  HIDWORD(v65) = *(a1 + 32);
  v4 = *(a1 + 34);
  v5 = *a2;
  v6 = a2[1];
  sub_1ABA8B920();
  v71 = v7[1];
  v72 = v8;
  HIDWORD(v70) = *(v7 + 16);
  v69 = *(v7 + 34);
  v56 = v9[1];
  v73 = *v9;
  v74 = *v7;
  HIDWORD(v54) = *(v9 + 16);
  v10 = *(v9 + 34);
  v12 = v11[1];
  v77 = *v11;
  v78 = v12;
  v79 = *(v11 + 16);
  v13 = sub_1ABAD219C(&qword_1EB4D92F8, &unk_1ABF5FD60);
  v67 = sub_1ABAE4254();
  v68 = v13;
  v52 = sub_1ABF239C4();
  v14 = 0xE000000000000000;
  v15 = 0;
  switch(v4)
  {
    case 1:
      v75 = v72;
      v15 = EntityIdentifier.stringValue.getter();
      v14 = v16;
      break;
    case 4:
      break;
    default:
      v14 = *(&v72 + 1);

      v15 = v72;
      break;
  }

  v75 = v15;
  v76 = v14;

  v17 = sub_1ABAA0F58();
  MEMORY[0x1AC5A9410](v17);

  MEMORY[0x1AC5A9410](v5, v6);

  v18 = sub_1ABAA0F58();
  MEMORY[0x1AC5A9410](v18);

  v19 = v75;
  v20 = 0xE000000000000000;
  v21 = 0;
  switch(v10)
  {
    case 1:
      v75 = v73;
      v21 = EntityIdentifier.stringValue.getter();
      v20 = v22;
      break;
    case 4:
      break;
    default:
      v20 = *(&v73 + 1);

      v21 = v73;
      break;
  }

  v75 = v19;
  v76 = v14;

  MEMORY[0x1AC5A9410](v21, v20);

  *a3 = v19;
  *(a3 + 8) = v14;
  *(a3 + 16) = v72;
  *(a3 + 32) = v66;
  *(a3 + 48) = WORD2(v65);
  *(a3 + 50) = v4;
  *(a3 + 56) = v5;
  *(a3 + 64) = v6;
  sub_1ABAB663C(v23, v24, v25, v26, v27, v28, v29, v30, v52, v54, v56, *(&v56 + 1), *v59, *&v59[4], v61, v63);
  *(a3 + 96) = v73;
  *(a3 + 112) = v31;
  *(a3 + 128) = WORD2(v55);
  *(a3 + 130) = v10;
  *(a3 + 136) = v53;
  sub_1ABAD219C(&qword_1EB4D1A58, &qword_1ABF33BE8);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1ABF34740;

  sub_1ABAFF1DC(&v77, &v75);
  *(v32 + 168) = sub_1ABF239C4();
  v75 = v19;
  v76 = v14;
  swift_bridgeObjectRetain_n();
  v33 = sub_1ABAA0F58();
  MEMORY[0x1AC5A9410](v33);

  v35 = *(&v77 + 1);
  v34 = v77;

  MEMORY[0x1AC5A9410](v34, v35);

  v36 = sub_1ABAA0F58();
  MEMORY[0x1AC5A9410](v36);

  v38 = v75;
  v37 = v76;
  v39 = 0xE000000000000000;
  v40 = 0;
  switch(v69)
  {
    case 1:
      v75 = v74;
      v40 = EntityIdentifier.stringValue.getter();
      v39 = v41;
      break;
    case 4:
      break;
    default:
      v39 = *(&v74 + 1);

      v40 = v74;
      break;
  }

  v75 = v38;
  v76 = v37;

  MEMORY[0x1AC5A9410](v40, v39);

  v42 = v78;
  *(v32 + 88) = v77;
  v43 = v76;
  *(v32 + 32) = v75;
  *(v32 + 40) = v43;
  *(v32 + 48) = v19;
  *(v32 + 56) = v14;
  *(v32 + 64) = 0;
  *(v32 + 72) = 0;
  *(v32 + 79) = 0;
  *(v32 + 104) = v42;
  *(v32 + 120) = v79;
  *(v32 + 128) = v74;
  *(v32 + 144) = v71;
  *(v32 + 160) = WORD2(v70);
  *(v32 + 162) = v69;
  v44 = *(a3 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = v44;
  sub_1ABAFC060(v32, &v77, isUniquelyReferenced_nonNull_native, v46, v47, v48, v49, v50, v53, v55, v57, v58, v60, v62, v64, v65, v66, *(&v66 + 1), v67, v68, v69, v70, v71, *(&v71 + 1));
  result = sub_1ABAE4478(&v77);
  *(a3 + 136) = v75;
  return result;
}

void sub_1ABD8B724()
{
  sub_1ABA7BCA8();
  v71 = v1;
  memcpy(v105, v2, 0x58uLL);
  sub_1ABAD219C(&qword_1EB4D92F8, &unk_1ABF5FD60);
  sub_1ABAE4254();
  v3 = sub_1ABF239C4();
  v70 = v105[0];
  v72 = v105[1];

  v4 = sub_1ABA7E79C();
  GraphNode.init(id:)(v4, v5, v6);
  v73 = v91;
  v74 = v92;
  v75 = v93;
  v76 = BYTE2(v93);
  v7 = v105[6];
  v8 = v105[7];
  if (!v105[7] || (, v9 = sub_1ABAA015C(), v11 = sub_1ABA9AC84(v9, v10), v13 = v12, v15 = v14, v17 = v16, v18 = v0, , (v17 & 1) != 0))
  {
    v19 = 0xE000000000000000;
    sub_1ABF24AB4();

    sub_1ABA8071C();
    *&v91 = 0xD00000000000001BLL;
    *(&v91 + 1) = v20;
    if (v8)
    {

      v19 = v8;
    }

    else
    {
      v7 = 0;
    }

    sub_1ABB24250(v105);
    MEMORY[0x1AC5A9410](v7, v19);

    v54 = *(&v91 + 1);
    sub_1ABD91400();
    swift_allocError();
    *v55 = v91;
    *(v55 + 8) = v54;
    *(v55 + 16) = 0;
    swift_willThrow();

    v24 = 0;
    v56 = 0;
    v57 = 0;
LABEL_25:
    sub_1ABC6D458(v73, *(&v73 + 1), v74, *(&v74 + 1), v75, v76);
    if (v56)
    {
    }

    if (v57)
    {
      sub_1ABC6D458(v67, v66, v65, v64, v63, v62);
    }

    sub_1ABAC9398(v24, 0);
LABEL_30:
    sub_1ABA7BC90();
    return;
  }

  sub_1ABA91D48(v11, v13, v15, &v91);
  v68 = *(&v92 + 1);
  v69 = *(&v91 + 1);
  v21 = v105[9];
  if (!v105[9])
  {
    sub_1ABB24250(v105);
    sub_1ABD91400();
    swift_allocError();
    *v58 = 0xD000000000000018;
    *(v58 + 8) = 0x80000001ABF8F0D0;
    *(v58 + 16) = 0;
    swift_willThrow();

    v24 = 0;
    v57 = 0;
    v56 = 1;
    goto LABEL_25;
  }

  v59 = v91;
  v60 = v92;
  v61 = v93;
  v22 = v105[8];

  GraphNode.init(id:)(v22, v21, &v91);
  v66 = *(&v91 + 1);
  v67 = v91;
  v64 = *(&v92 + 1);
  v65 = v92;
  v62 = BYTE2(v93);
  v63 = v93;
  v23 = v105[10];

  sub_1ABB24250(v105);
  v24 = 0;
  v25 = 0;
  v77 = v23;
  v78 = *(v23 + 16);
  v26 = 32;
  while (1)
  {
    if (v78 == v25)
    {

      sub_1ABAC9398(v24, 0);
      *v71 = v70;
      *(v71 + 8) = v72;
      *(v71 + 16) = v73;
      *(v71 + 32) = v74;
      *(v71 + 48) = v75;
      *(v71 + 50) = v76;
      *(v71 + 56) = v59;
      *(v71 + 64) = v69;
      *(v71 + 72) = v60;
      *(v71 + 80) = v68;
      *(v71 + 88) = v61;
      *(v71 + 96) = v67;
      *(v71 + 104) = v66;
      *(v71 + 112) = v65;
      *(v71 + 120) = v64;
      *(v71 + 128) = v63;
      *(v71 + 130) = v62;
      *(v71 + 136) = v3;
      goto LABEL_30;
    }

    if (v25 >= *(v23 + 16))
    {
      break;
    }

    memcpy(__dst, (v23 + v26), sizeof(__dst));
    memcpy(v90, (v23 + v26), sizeof(v90));
    sub_1ABB242A4(__dst, &v86);
    sub_1ABD8B724();
    if (v18)
    {

      v56 = 1;
      v57 = 1;
      goto LABEL_25;
    }

    v86 = v91;
    v87 = v92;
    v88 = v93;
    v89 = v94;
    v27 = *(&v95 + 1);
    v28 = *(&v96 + 1);
    v29 = v97;
    *&v85[14] = *&v100[14];
    v84 = v99;
    *v85 = *v100;
    v83 = v98;
    v80 = v96;
    v81 = v95;
    v102 = v95;
    v103 = v96;
    v104 = v97;

    sub_1ABAC9398(v24, 0);
    swift_isUniquelyReferenced_nonNull_native();
    v82 = v3;
    v30 = sub_1ABAF8208();
    if (__OFADD__(*(v3 + 16), (v31 & 1) == 0))
    {
      goto LABEL_35;
    }

    v32 = v30;
    v33 = v31;
    sub_1ABAD219C(&qword_1EB4D1FB0, &qword_1ABF351A0);
    if (sub_1ABF24C64())
    {
      v34 = sub_1ABAF8208();
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_37;
      }

      v32 = v34;
    }

    v79 = v25;
    if (v33)
    {
    }

    else
    {
      sub_1ABAA0BEC(v3 + 8 * (v32 >> 6));
      v38 = v36 + v32 * v37;
      v39 = v103;
      *v38 = v102;
      *(v38 + 16) = v39;
      *(v38 + 32) = v104;
      *(*(v3 + 56) + 8 * v32) = MEMORY[0x1E69E7CC0];
      v40 = *(v3 + 16);
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_36;
      }

      *(v3 + 16) = v42;
    }

    v43 = *(v3 + 56);
    v44 = *(v43 + 8 * v32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v43 + 8 * v32) = v44;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1ABA7BEF0();
      sub_1ABAD88DC();
      v44 = v52;
      *(v43 + 8 * v32) = v52;
    }

    v47 = *(v44 + 16);
    v46 = *(v44 + 24);
    if (v47 >= v46 >> 1)
    {
      sub_1ABA7BBEC(v46);
      sub_1ABA8BB08();
      sub_1ABAD88DC();
      v44 = v53;
      *(v43 + 8 * v32) = v53;
    }

    v18 = 0;
    *(v44 + 16) = v47 + 1;
    v48 = v44 + 144 * v47;
    v49 = v89;
    v50 = v86;
    v51 = v88;
    *(v48 + 48) = v87;
    *(v48 + 64) = v51;
    *(v48 + 32) = v50;
    *(v48 + 80) = v49;
    *(v48 + 88) = v81;
    *(v48 + 96) = v27;
    *(v48 + 104) = v80;
    *(v48 + 112) = v28;
    *(v48 + 120) = v29;
    *(v48 + 168) = *&v85[14];
    *(v48 + 154) = *v85;
    *(v48 + 138) = v84;
    *(v48 + 122) = v83;
    v26 += 88;
    v25 = v79 + 1;
    v24 = sub_1ABB4F3FC;
    v3 = v82;
    v23 = v77;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  sub_1ABF25104();
  __break(1u);
}

uint64_t static KnosisFact.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1ABF25054();
  }
}

uint64_t sub_1ABD8BDEC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7463656A626FLL && a2 == 0xE600000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x656966696C617571 && a2 == 0xEA00000000007372)
        {

          return 4;
        }

        else
        {
          v10 = sub_1ABF25054();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1ABD8BF90(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7463656A627573;
      break;
    case 2:
      result = 0x7461636964657270;
      break;
    case 3:
      result = 0x7463656A626FLL;
      break;
    case 4:
      result = 0x656966696C617571;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABD8C02C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD8BDEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD8C054(uint64_t a1)
{
  v2 = sub_1ABD8F8A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD8C090(uint64_t a1)
{
  v2 = sub_1ABD8F8A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void KnosisFact.encode(to:)()
{
  sub_1ABA7BCA8();
  v53 = v1;
  v3 = v2;
  sub_1ABAD219C(&qword_1EB4D9328, &qword_1ABF5FDA0);
  sub_1ABA7BB64();
  v5 = v4;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - v7;
  v9 = *(v0 + 16);
  v51 = *(v0 + 24);
  v52 = v9;
  v10 = *(v0 + 32);
  v49 = *(v0 + 40);
  v50 = v10;
  v60 = *(v0 + 48);
  HIDWORD(v48) = *(v0 + 50);
  v11 = *(v0 + 56);
  v46 = *(v0 + 64);
  v47 = v11;
  v12 = *(v0 + 72);
  v44 = *(v0 + 80);
  v45 = v12;
  v43 = *(v0 + 88);
  v13 = *(v0 + 104);
  v37 = *(v0 + 96);
  v14 = *(v0 + 120);
  v41 = *(v0 + 112);
  v42 = v13;
  v40 = v14;
  LODWORD(v12) = *(v0 + 128);
  v38 = *(v0 + 130);
  v39 = v12;
  v15 = *(v0 + 136);
  v16 = v3[3];
  v17 = v3;
  v19 = v18;
  sub_1ABA88DCC(v17, v16);
  sub_1ABD8F8A8();
  sub_1ABF252E4();
  LOBYTE(v54) = 0;
  v20 = v53;
  sub_1ABF24F34();
  if (!v20)
  {
    v21 = v45;
    v22 = v46;
    v23 = v47;
    v53 = v15;
    v54 = v52;
    v55 = v51;
    v56 = v50;
    v57 = v49;
    v58 = v60;
    v59 = BYTE4(v48);
    sub_1ABAE4358(v52, v51, v50, v49, v60, BYTE4(v48));
    sub_1ABD8EFB0();
    v24 = sub_1ABA96D94();
    sub_1ABA9F29C(v24, v25, v26);
    sub_1ABA90D68();
    v54 = v23;
    v55 = v22;
    v56 = v21;
    v57 = v44;
    v58 = v43;
    v27 = sub_1ABAA68CC();

    v28 = sub_1ABA96D94();
    sub_1ABA9F29C(v28, v29, v30);

    if (!v27)
    {
      v54 = v37;
      v55 = v42;
      v56 = v41;
      v57 = v40;
      v58 = v39;
      v59 = v38;
      sub_1ABAE4358(v37, v42, v41, v40, v39, v38);
      v31 = sub_1ABA96D94();
      sub_1ABA9F29C(v31, v32, v33);
      sub_1ABA90D68();
      v54 = v53;
      sub_1ABAD219C(&qword_1EB4D92E0, &qword_1ABF5FD58);
      sub_1ABD8F004();
      v34 = sub_1ABA96D94();
      sub_1ABA9F29C(v34, v35, v36);
    }
  }

  (*(v5 + 8))(v8, v19);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void KnosisFact.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 50);
  v7 = *(v1 + 96);
  v4 = *(v1 + 130);
  sub_1ABF23D34();
  switch(v3)
  {
    case 1:
      MEMORY[0x1AC5AA8A0](1);
      MEMORY[0x1AC5AA8D0](v2);
      goto LABEL_9;
    case 2:
      v5 = 2;
      goto LABEL_5;
    case 3:
      MEMORY[0x1AC5AA8A0](3);
      goto LABEL_7;
    case 4:
      MEMORY[0x1AC5AA8A0](4);
      goto LABEL_9;
    default:
      v5 = 0;
LABEL_5:
      MEMORY[0x1AC5AA8A0](v5);
LABEL_7:
      sub_1ABF23D34();
LABEL_9:
      sub_1ABF23D34();
      switch(v4)
      {
        case 1:
          MEMORY[0x1AC5AA8A0](1);
          MEMORY[0x1AC5AA8D0](v7);
          goto LABEL_17;
        case 2:
          v6 = 2;
          goto LABEL_13;
        case 3:
          MEMORY[0x1AC5AA8A0](3);
          goto LABEL_15;
        case 4:
          MEMORY[0x1AC5AA8A0](4);
          goto LABEL_17;
        default:
          v6 = 0;
LABEL_13:
          MEMORY[0x1AC5AA8A0](v6);
LABEL_15:
          sub_1ABF23D34();
LABEL_17:

          sub_1ABD8F210();
          return;
      }
  }
}

uint64_t KnosisFact.hashValue.getter()
{
  sub_1ABF25234();
  KnosisFact.hash(into:)(v1);
  return sub_1ABF25294();
}

uint64_t sub_1ABD8C5E4(uint64_t a1)
{
  sub_1ABF25234();
  KnosisFact.hash(into:)(v2);
  return sub_1ABF25294();
}

uint64_t QueryFeatures.intentArgInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 QueryFeatures.intentArgInfo.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(a1 + 6);

  *v1 = v3;
  result = *(a1 + 1);
  *(v1 + 8) = result;
  *(v1 + 24) = v4;
  return result;
}

uint64_t QueryFeatures.routeName.setter()
{
  sub_1ABA7FC9C();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t QueryFeatures.routeFlags.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_1ABD8C7B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7241746E65746E69 && a2 == 0xED00006F666E4967;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D614E6574756F72 && a2 == 0xE900000000000065;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x616C466574756F72 && a2 == 0xEA00000000007367)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABD8C8DC(char a1)
{
  if (!a1)
  {
    return 0x7241746E65746E69;
  }

  if (a1 == 1)
  {
    return 0x6D614E6574756F72;
  }

  return 0x616C466574756F72;
}

uint64_t sub_1ABD8C950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD8C7B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD8C978(uint64_t a1)
{
  v2 = sub_1ABD8F8FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD8C9B4(uint64_t a1)
{
  v2 = sub_1ABD8F8FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void QueryFeatures.encode(to:)(void *a1)
{
  v3 = sub_1ABAD219C(&qword_1EB4D9338, &qword_1ABF5FDA8);
  sub_1ABA7BB64();
  v7 = v4;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7E338();
  sub_1ABA88DCC(a1, a1[3]);
  sub_1ABD8F8FC();

  sub_1ABF252E4();
  sub_1ABD8F950();
  sub_1ABF24F84();

  if (!v6)
  {
    sub_1ABA7BF34();
    sub_1ABF24F34();
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABA80D40(&qword_1EB4D4308, MEMORY[0x1E69E6160]);
    sub_1ABA7BF34();
    sub_1ABF24F84();
  }

  (*(v7 + 8))(v1, v3);
  sub_1ABA7FC10();
}

uint64_t Debug.messages.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Debug.execSteps.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

Swift::Void __swiftcall Debug.append(contentOf:)(IntelligencePlatform::Debug contentOf)
{
  if (__OFADD__(*v1, *contentOf.indexCallCount))
  {
    __break(1u);
  }

  else
  {
    v3 = *(contentOf.indexCallCount + 8);
    v2 = *(contentOf.indexCallCount + 16);
    *v1 += *contentOf.indexCallCount;

    sub_1ABD7DA50(v3);
    sub_1ABD7DFB4(v2);
  }
}

Swift::Void __swiftcall Debug.addExecStep(_:)(IntelligencePlatform::ExecStep *a1)
{
  countAndFlagsBits = a1->queryNode._countAndFlagsBits;
  object = a1->queryNode._object;
  v5 = a1->indexQuery._countAndFlagsBits;
  v4 = a1->indexQuery._object;
  rawValue = a1->messages._rawValue;

  sub_1ABB4DCC8();
  v7 = *(*(v1 + 16) + 16);
  sub_1ABB4E0B4(v7);
  v8 = *(v1 + 16);
  *(v8 + 16) = v7 + 1;
  v9 = (v8 + 40 * v7);
  v9[4] = countAndFlagsBits;
  v9[5] = object;
  v9[6] = v5;
  v9[7] = v4;
  v9[8] = rawValue;
  *(v1 + 16) = v8;
}

uint64_t sub_1ABD8CE10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61437865646E69 && a2 == 0xEE00746E756F436CLL;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736567617373656DLL && a2 == 0xE800000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7065745363657865 && a2 == 0xE900000000000073)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABD8CF30(char a1)
{
  if (!a1)
  {
    return 0x6C61437865646E69;
  }

  if (a1 == 1)
  {
    return 0x736567617373656DLL;
  }

  return 0x7065745363657865;
}

uint64_t sub_1ABD8CFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD8CE10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD8CFC8(uint64_t a1)
{
  v2 = sub_1ABD8F9A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD8D004(uint64_t a1)
{
  v2 = sub_1ABD8F9A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Debug.encode(to:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  sub_1ABAD219C(&qword_1EB4D9350, &qword_1ABF5FDB0);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7E338();
  sub_1ABA88DCC(v2, v2[3]);
  sub_1ABD8F9A4();
  sub_1ABF252E4();
  sub_1ABA7BF34();
  sub_1ABF24F74();
  if (!v0)
  {
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABA80D40(&qword_1EB4D4308, MEMORY[0x1E69E6160]);
    sub_1ABA9F8A4();
    sub_1ABA7BF34();
    sub_1ABF24F84();
    v4 = sub_1ABA954F0();
    sub_1ABAD219C(v4, v5);
    sub_1ABD8F9F8(&qword_1EB4D9368, &qword_1EB4D9360, &qword_1ABF5FDB8, sub_1ABD8FA74);
    sub_1ABA9F8A4();
    sub_1ABA7BF34();
    sub_1ABF24F84();
  }

  v6 = sub_1ABA7D0EC();
  v7(v6);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void Debug.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  v22 = v21;
  v24 = v23;
  v25 = sub_1ABAD219C(&qword_1EB4D9378, &qword_1ABF5FDC0);
  sub_1ABA7BB64();
  v27 = v26;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v34 - v29;
  sub_1ABA88DCC(v22, v22[3]);
  sub_1ABD8F9A4();
  sub_1ABF252C4();
  if (!v20)
  {
    LOBYTE(a10) = 0;
    v31 = sub_1ABF24E54();
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    v35 = 1;
    v32 = sub_1ABA7C41C(&qword_1ED870660, MEMORY[0x1E69E6190]);
    sub_1ABA88700(v32);
    sub_1ABAD219C(&qword_1EB4D9360, &qword_1ABF5FDB8);
    v35 = 2;
    v33 = sub_1ABD8FAC8();
    sub_1ABA88700(v33);
    (*(v27 + 8))(v30, v25);
    *v24 = v31;
    v24[1] = a10;
    v24[2] = a10;
  }

  sub_1ABA84B54(v22);

  sub_1ABA7BC90();
}

uint64_t ExecStep.queryNode.setter()
{
  sub_1ABA7FC9C();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ExecStep.indexQuery.setter()
{
  sub_1ABA7FC9C();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ExecStep.messages.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t ExecStep.description.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1ABF24AB4();

  strcpy(v7, "[queryNode: ");
  v4 = sub_1ABA7E79C();
  MEMORY[0x1AC5A9410](v4);
  MEMORY[0x1AC5A9410](0x517865646E69202CLL, 0xEE00203A79726575);
  MEMORY[0x1AC5A9410](v1, v2);
  MEMORY[0x1AC5A9410](0x67617373656D202CLL, 0xEC000000203A7365);
  v5 = MEMORY[0x1AC5A9750](v3, MEMORY[0x1E69E6158]);
  MEMORY[0x1AC5A9410](v5);

  MEMORY[0x1AC5A9410](93, 0xE100000000000000);
  return v7[0];
}

uint64_t static ExecStep.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1ABF25054() & 1) == 0)
  {
    return 0;
  }

  if (v2 != v4 || v3 != v5)
  {
    sub_1ABA7E79C();
    if ((sub_1ABF25054() & 1) == 0)
    {
      return 0;
    }
  }

  v8 = sub_1ABA7D000();

  return sub_1ABB48494(v8, v9);
}

uint64_t sub_1ABD8D75C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646F4E7972657571 && a2 == 0xE900000000000065;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6575517865646E69 && a2 == 0xEA00000000007972;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x736567617373656DLL && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABD8D87C(char a1)
{
  if (!a1)
  {
    return 0x646F4E7972657571;
  }

  if (a1 == 1)
  {
    return 0x6575517865646E69;
  }

  return 0x736567617373656DLL;
}

uint64_t sub_1ABD8D8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABD8D930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD8D75C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD8D958(uint64_t a1)
{
  v2 = sub_1ABD8FBA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD8D994(uint64_t a1)
{
  v2 = sub_1ABD8FBA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ExecStep.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D9390, &qword_1ABF5FDC8);
  sub_1ABA7BB64();
  v6 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7E338();
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABD8FBA0();
  sub_1ABF252E4();
  sub_1ABA82ED0();
  sub_1ABF24F34();
  if (!v0)
  {
    sub_1ABA7BF34();
    sub_1ABF24F34();
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABA80D40(&qword_1EB4D4308, MEMORY[0x1E69E6160]);
    sub_1ABA7BF34();
    sub_1ABF24F84();
  }

  (*(v6 + 8))(v1, v4);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void ExecStep.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1ABA7BCA8();
  v26 = v25;
  v28 = v27;
  sub_1ABAD219C(&qword_1EB4D93A0, &qword_1ABF5FDD0);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA88DCC(v26, v26[3]);
  sub_1ABD8FBA0();
  sub_1ABF252C4();
  if (!v24)
  {
    v30 = sub_1ABF24E14();
    v32 = v31;
    v39 = v30;
    v33 = sub_1ABF24E14();
    v35 = v34;
    v38 = v33;
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABA7C41C(&qword_1ED870660, MEMORY[0x1E69E6190]);
    sub_1ABF24E64();
    v36 = sub_1ABA7ABFC();
    v37(v36);
    *v28 = v39;
    v28[1] = v32;
    v28[2] = v38;
    v28[3] = v35;
    v28[4] = v40;
  }

  sub_1ABA84B54(v26);

  sub_1ABA7BC90();
}

uint64_t sub_1ABD8DE10(uint64_t (*a1)(_BYTE *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1ABD7EBFC(a4, a3);
  sub_1ABE51564(v5, a1);
}

uint64_t sub_1ABD8DE70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1ABD8DED4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1ABD8DF38()
{
  result = qword_1EB4D9280;
  if (!qword_1EB4D9280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9280);
  }

  return result;
}

unint64_t sub_1ABD8DF8C()
{
  result = qword_1EB4D9298;
  if (!qword_1EB4D9298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9298);
  }

  return result;
}

unint64_t sub_1ABD8DFE0()
{
  result = qword_1EB4D92A0;
  if (!qword_1EB4D92A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D92A0);
  }

  return result;
}

unint64_t sub_1ABD8E034()
{
  result = qword_1EB4D92A8;
  if (!qword_1EB4D92A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D92A8);
  }

  return result;
}

unint64_t sub_1ABD8E088()
{
  result = qword_1EB4D92B0;
  if (!qword_1EB4D92B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D92B0);
  }

  return result;
}

uint64_t sub_1ABD8E0DC(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1ABF24CA4();
LABEL_9:
  result = sub_1ABF24B24();
  *v2 = result;
  return result;
}

uint64_t sub_1ABD8E17C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t sub_1ABD8E1F4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_1ABF24FE4();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = v7 / 2;
      if (v7 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v10 = sub_1ABF24164();
        *(v10 + 16) = v9;
      }

      sub_1ABAB5154();
      a3(v11, v12);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

char *sub_1ABD8E2FC(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 112 * a3;
    v8 = &result[-a3];
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        v11 = *(v10 - 14);
        if (*v10 >= v11)
        {
          v12 = *v10 != v11 || v10[6] >= *(v10 - 8);
          if (v12)
          {
            break;
          }
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(v13, v10, sizeof(v13));
        memcpy(v10, v10 - 14, 0x70uLL);
        result = memcpy(v10 - 14, v13, 0x70uLL);
        v10 -= 14;
        v12 = __CFADD__(v9++, 1);
      }

      while (!v12);
      ++v4;
      v7 += 112;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1ABD8E3F0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 >= v5)
      {
        goto LABEL_35;
      }

      v9 = (*a3 + 112 * v6);
      v10 = *v9;
      v11 = (*a3 + 112 * v8);
      v12 = *v11;
      if (*v9 >= *v11)
      {
        v14 = v11[6];
        v15 = v9[6];
        v16 = v10 != v12 || v15 >= v14;
        v13 = !v16;
      }

      else
      {
        v13 = 1;
      }

      v17 = v8 + 2;
      if (v5 <= v8 + 2)
      {
        v6 = v8 + 2;
      }

      else
      {
        v6 = v5;
      }

      v18 = 112 * v8;
      for (i = (*a3 + 112 * v8 + 272); ; i += 14)
      {
        if (v17 >= v5)
        {
          goto LABEL_26;
        }

        v20 = *(i - 6);
        if (v20 >= v10)
        {
          break;
        }

        if ((v13 & 1) == 0)
        {
          v6 = v17;
          goto LABEL_35;
        }

LABEL_24:
        ++v17;
        v10 = v20;
      }

      if (v20 != v10)
      {
        if (v13)
        {
          v6 = v17;
          goto LABEL_27;
        }

        goto LABEL_24;
      }

      if ((v13 ^ (*i >= *(i - 14))))
      {
        goto LABEL_24;
      }

      v6 = v17;
LABEL_26:
      if (v13)
      {
LABEL_27:
        if (v6 >= v8)
        {
          if (v8 < v6)
          {
            v21 = 112 * v6 - 112;
            v22 = v6;
            v23 = v8;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_134;
                }

                memcpy(__dst, (v24 + v18), sizeof(__dst));
                memmove((v24 + v18), (v24 + v21), 0x70uLL);
                memcpy((v24 + v21), __dst, 0x70uLL);
              }

              ++v23;
              v21 -= 112;
              v18 += 112;
            }

            while (v23 < v22);
            v5 = a3[1];
          }

          goto LABEL_35;
        }

LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
        break;
      }

LABEL_35:
      if (v6 < v5)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_128;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_129;
          }

          if (v8 + a4 >= v5)
          {
            v25 = v5;
          }

          else
          {
            v25 = v8 + a4;
          }

          if (v25 < v8)
          {
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }

          if (v6 != v25)
          {
            v79 = v7;
            v26 = *a3;
            v27 = *a3 + 112 * v6;
            v28 = v8 - v6;
            do
            {
              v29 = v28;
              v30 = v27;
              do
              {
                v31 = *(v30 - 14);
                if (*v30 >= v31 && (*v30 != v31 || v30[6] >= *(v30 - 8)))
                {
                  break;
                }

                if (!v26)
                {
                  goto LABEL_132;
                }

                memcpy(__dst, v30, sizeof(__dst));
                memcpy(v30, v30 - 14, 0x70uLL);
                memcpy(v30 - 14, __dst, 0x70uLL);
                v30 -= 14;
                v16 = __CFADD__(v29++, 1);
              }

              while (!v16);
              ++v6;
              v27 += 112;
              --v28;
            }

            while (v6 != v25);
            v6 = v25;
            v7 = v79;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_127;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABAD8820();
        v7 = v75;
      }

      v33 = v7[2];
      v34 = v33 + 1;
      if (v33 >= v7[3] >> 1)
      {
        sub_1ABAD8820();
        v7 = v76;
      }

      v7[2] = v34;
      v35 = v7 + 4;
      v36 = &v7[2 * v33 + 4];
      *v36 = v8;
      v36[1] = v6;
      v80 = *a1;
      if (!*a1)
      {
        break;
      }

      if (v33)
      {
        while (1)
        {
          v37 = v34 - 1;
          v38 = &v35[2 * v34 - 2];
          v39 = &v7[2 * v34];
          if (v34 >= 4)
          {
            break;
          }

          if (v34 == 3)
          {
            v40 = v7[4];
            v41 = v7[5];
            v50 = __OFSUB__(v41, v40);
            v42 = v41 - v40;
            v43 = v50;
LABEL_76:
            if (v43)
            {
              goto LABEL_117;
            }

            v55 = *v39;
            v54 = v39[1];
            v56 = __OFSUB__(v54, v55);
            v57 = v54 - v55;
            v58 = v56;
            if (v56)
            {
              goto LABEL_120;
            }

            v59 = v38[1];
            v60 = v59 - *v38;
            if (__OFSUB__(v59, *v38))
            {
              goto LABEL_123;
            }

            if (__OFADD__(v57, v60))
            {
              goto LABEL_125;
            }

            if (v57 + v60 >= v42)
            {
              if (v42 < v60)
              {
                v37 = v34 - 2;
              }

              goto LABEL_98;
            }

            goto LABEL_91;
          }

          if (v34 < 2)
          {
            goto LABEL_119;
          }

          v62 = *v39;
          v61 = v39[1];
          v50 = __OFSUB__(v61, v62);
          v57 = v61 - v62;
          v58 = v50;
LABEL_91:
          if (v58)
          {
            goto LABEL_122;
          }

          v64 = *v38;
          v63 = v38[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_124;
          }

          if (v65 < v57)
          {
            goto LABEL_105;
          }

LABEL_98:
          if (v37 - 1 >= v34)
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
            goto LABEL_130;
          }

          if (!*a3)
          {
            goto LABEL_133;
          }

          v69 = v7;
          v70 = &v35[2 * v37 - 2];
          v71 = *v70;
          v72 = &v35[2 * v37];
          v73 = v72[1];
          sub_1ABD8EAA0((*a3 + 112 * *v70), (*a3 + 112 * *v72), (*a3 + 112 * v73), v80);
          if (v4)
          {
            goto LABEL_110;
          }

          if (v73 < v71)
          {
            goto LABEL_112;
          }

          v74 = v69[2];
          if (v37 > v74)
          {
            goto LABEL_113;
          }

          *v70 = v71;
          v70[1] = v73;
          if (v37 >= v74)
          {
            goto LABEL_114;
          }

          v34 = v74 - 1;
          memmove(&v35[2 * v37], v72 + 2, 16 * (v74 - 1 - v37));
          v7 = v69;
          v69[2] = v74 - 1;
          if (v74 <= 2)
          {
            goto LABEL_105;
          }
        }

        v44 = &v35[2 * v34];
        v45 = *(v44 - 8);
        v46 = *(v44 - 7);
        v50 = __OFSUB__(v46, v45);
        v47 = v46 - v45;
        if (v50)
        {
          goto LABEL_115;
        }

        v49 = *(v44 - 6);
        v48 = *(v44 - 5);
        v50 = __OFSUB__(v48, v49);
        v42 = v48 - v49;
        v43 = v50;
        if (v50)
        {
          goto LABEL_116;
        }

        v51 = v39[1];
        v52 = v51 - *v39;
        if (__OFSUB__(v51, *v39))
        {
          goto LABEL_118;
        }

        v50 = __OFADD__(v42, v52);
        v53 = v42 + v52;
        if (v50)
        {
          goto LABEL_121;
        }

        if (v53 >= v47)
        {
          v67 = *v38;
          v66 = v38[1];
          v50 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v50)
          {
            goto LABEL_126;
          }

          if (v42 < v68)
          {
            v37 = v34 - 2;
          }

          goto LABEL_98;
        }

        goto LABEL_76;
      }

LABEL_105:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v83 = v7;
        goto LABEL_108;
      }
    }

    __break(1u);
    goto LABEL_136;
  }

LABEL_108:
  if (!*a1)
  {
LABEL_136:
    __break(1u);
    return;
  }

  sub_1ABD8E968(&v83, *a1, a3);
LABEL_110:
}

uint64_t sub_1ABD8E968(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1ABE7A0B4();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1ABD8EAA0((*a3 + 112 * *v4), (*a3 + 112 * *v9), (*a3 + 112 * v10), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1ABD8EAA0(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 112;
  v9 = (a3 - a2) / 112;
  if (v8 < v9)
  {
    sub_1ABADD3D0(a1, (a2 - a1) / 112, a4);
    v10 = &v4[112 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v15 = v7;
        goto LABEL_38;
      }

      if (*v6 < *v4)
      {
        break;
      }

      if (*v6 == *v4 && *(v6 + 6) < *(v4 + 6))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 112;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 112;
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 112;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    memmove(v7, v13, 0x70uLL);
    goto LABEL_18;
  }

  sub_1ABADD3D0(a2, (a3 - a2) / 112, a4);
  v10 = &v4[112 * v9];
LABEL_20:
  v15 = v6;
  v6 -= 112;
  for (v5 -= 112; v10 > v4 && v15 > v7; v5 -= 112)
  {
    v17 = *(v10 - 14);
    if (v17 < *v6 || (v17 == *v6 ? (v18 = *(v10 - 8) >= *(v15 - 8)) : (v18 = 1), !v18))
    {
      if (v5 + 112 != v15)
      {
        memmove(v5, v6, 0x70uLL);
      }

      goto LABEL_20;
    }

    if (v10 != v5 + 112)
    {
      memmove(v5, v10 - 112, 0x70uLL);
    }

    v10 -= 112;
  }

LABEL_38:
  v19 = (v10 - v4) / 112;
  if (v15 != v4 || v15 >= &v4[112 * v19])
  {
    memmove(v15, v4, 112 * v19);
  }

  return 1;
}

uint64_t sub_1ABD8ECB0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 48))(*a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1ABD8ECE8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 32))(*a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1ABD8EE9C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1ABF24CA4();
  }

  return sub_1ABF24B24();
}

unint64_t sub_1ABD8EF5C()
{
  result = qword_1EB4D92D0;
  if (!qword_1EB4D92D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D92D0);
  }

  return result;
}

unint64_t sub_1ABD8EFB0()
{
  result = qword_1EB4D92D8;
  if (!qword_1EB4D92D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D92D8);
  }

  return result;
}

unint64_t sub_1ABD8F004()
{
  result = qword_1EB4D92E8;
  if (!qword_1EB4D92E8)
  {
    sub_1ABAE2850(&qword_1EB4D92E0, &qword_1ABF5FD58);
    sub_1ABAA68CC();
    sub_1ABD8F9F8(&qword_1EB4D92F0, &qword_1EB4D92F8, &unk_1ABF5FD60, sub_1ABD8F0BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D92E8);
  }

  return result;
}

unint64_t sub_1ABD8F0BC()
{
  result = qword_1EB4D9300;
  if (!qword_1EB4D9300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9300);
  }

  return result;
}

unint64_t sub_1ABD8F110()
{
  result = qword_1EB4D9308;
  if (!qword_1EB4D9308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9308);
  }

  return result;
}

uint64_t sub_1ABD8F1B0(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1ABB32D34(v4, __dst) & 1;
}

void sub_1ABD8F210()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  v4 = v0 + 64;
  sub_1ABA7D32C();
  v7 = v6 & v5;
  v23 = (v8 + 63) >> 6;

  v29 = 0;
  v9 = 0;
  v25 = v1;
  v26 = v3;
  v24 = v4;
  if (!v7)
  {
    goto LABEL_2;
  }

  do
  {
LABEL_6:
    v27 = v9;
    v28 = v7;
    v11 = __clz(__rbit64(v7)) | (v9 << 6);
    v12 = *(*(v1 + 48) + 40 * v11 + 8);
    v13 = *(*(v1 + 56) + 8 * v11);

    if (!v12)
    {
LABEL_31:

      MEMORY[0x1AC5AA8A0](v29);
      sub_1ABA7BC1C();
      return;
    }

    memcpy(v32, v3, sizeof(v32));
    sub_1ABF23D34();

    MEMORY[0x1AC5AA8A0](*(v13 + 16));
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = v14 - 1;
      v16 = 32;
      while (1)
      {
        memcpy(__dst, (v13 + v16), sizeof(__dst));
        v17 = __dst[2];
        v18 = BYTE2(__dst[6]);
        sub_1ABAE42A8(__dst, v30);
        sub_1ABF23D34();
        switch(v18)
        {
          case 1:
            MEMORY[0x1AC5AA8A0](1);
            MEMORY[0x1AC5AA8D0](v17);
            break;
          case 2:
            v19 = 2;
            goto LABEL_13;
          case 3:
            MEMORY[0x1AC5AA8A0](3);
            sub_1ABAB67E0();
            goto LABEL_15;
          case 4:
            MEMORY[0x1AC5AA8A0](4);
            break;
          default:
            v19 = 0;
LABEL_13:
            MEMORY[0x1AC5AA8A0](v19);
LABEL_15:
            sub_1ABF23D34();
            break;
        }

        v20 = __dst[12];
        v21 = BYTE2(__dst[16]);
        sub_1ABF23D34();
        switch(v21)
        {
          case 1:
            MEMORY[0x1AC5AA8A0](1);
            MEMORY[0x1AC5AA8D0](v20);
            goto LABEL_25;
          case 2:
            v22 = 2;
            goto LABEL_21;
          case 3:
            MEMORY[0x1AC5AA8A0](3);
            sub_1ABAB67E0();
            goto LABEL_23;
          case 4:
            MEMORY[0x1AC5AA8A0](4);
            goto LABEL_25;
          default:
            v22 = 0;
LABEL_21:
            MEMORY[0x1AC5AA8A0](v22);
LABEL_23:
            sub_1ABF23D34();
LABEL_25:
            sub_1ABD8F210();
            sub_1ABAE4304(__dst);
            if (!v15)
            {

              v1 = v25;
              v3 = v26;
              v4 = v24;
              goto LABEL_29;
            }

            --v15;
            v16 += 144;
            break;
        }
      }
    }

LABEL_29:
    v7 = (v28 - 1) & v28;
    v29 ^= sub_1ABF25294();
    v9 = v27;
  }

  while (v7);
LABEL_2:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v23)
    {
      goto LABEL_31;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_1ABD8F534(const void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  sub_1ABA7D32C();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  if (v6)
  {
    while (1)
    {
      v12 = v11;
LABEL_6:
      v13 = __clz(__rbit64(v6)) | (v12 << 6);
      v14 = *(*(a2 + 48) + 24 * v13 + 8);
      v15 = *(*(a2 + 56) + 8 * v13);

      if (!v14)
      {
        break;
      }

      v6 &= v6 - 1;
      memcpy(__dst, a1, sizeof(__dst));
      sub_1ABF23D34();
      sub_1ABBB5B70();

      sub_1ABD8F68C(__dst, v15);

      result = sub_1ABF25294();
      v10 ^= result;
      v11 = v12;
      if (!v6)
      {
        goto LABEL_3;
      }
    }

LABEL_9:

    return MEMORY[0x1AC5AA8A0](v10);
  }

  else
  {
LABEL_3:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_9;
      }

      v6 = *(v3 + 8 * v12);
      ++v11;
      if (v6)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1ABD8F68C(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1ABF25294();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1AC5AA8A0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_1ABF25234();

        sub_1ABF23D34();
        v11 = sub_1ABF25294();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1ABD8F82C()
{
  result = qword_1EB4D2070;
  if (!qword_1EB4D2070)
  {
    sub_1ABAE2850(&qword_1EB4D2068, &qword_1ABF41380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2070);
  }

  return result;
}

unint64_t sub_1ABD8F8A8()
{
  result = qword_1EB4D9330;
  if (!qword_1EB4D9330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9330);
  }

  return result;
}

unint64_t sub_1ABD8F8FC()
{
  result = qword_1EB4D9340;
  if (!qword_1EB4D9340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9340);
  }

  return result;
}

unint64_t sub_1ABD8F950()
{
  result = qword_1EB4D9348;
  if (!qword_1EB4D9348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9348);
  }

  return result;
}

unint64_t sub_1ABD8F9A4()
{
  result = qword_1EB4D9358;
  if (!qword_1EB4D9358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9358);
  }

  return result;
}

uint64_t sub_1ABD8F9F8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1ABD8FA74()
{
  result = qword_1EB4D9370;
  if (!qword_1EB4D9370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9370);
  }

  return result;
}

unint64_t sub_1ABD8FAC8()
{
  result = qword_1EB4D9380;
  if (!qword_1EB4D9380)
  {
    sub_1ABAE2850(&qword_1EB4D9360, &qword_1ABF5FDB8);
    sub_1ABD8FB4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9380);
  }

  return result;
}

unint64_t sub_1ABD8FB4C()
{
  result = qword_1EB4D9388;
  if (!qword_1EB4D9388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9388);
  }

  return result;
}

unint64_t sub_1ABD8FBA0()
{
  result = qword_1EB4D9398;
  if (!qword_1EB4D9398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9398);
  }

  return result;
}

unint64_t sub_1ABD8FBF8()
{
  result = qword_1EB4D93A8;
  if (!qword_1EB4D93A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D93A8);
  }

  return result;
}

uint64_t sub_1ABD8FC58(uint64_t a1)
{
  result = sub_1ABAB47C4(&qword_1EB4D93C0, &qword_1EB4D9288, &qword_1ABF5FD38, &protocol conformance descriptor for <A> [A]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABD8FCAC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABD8FD30()
{
  result = qword_1EB4D93C8[0];
  if (!qword_1EB4D93C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4D93C8);
  }

  return result;
}

unint64_t sub_1ABD8FD88()
{
  result = qword_1EB4CF6F0;
  if (!qword_1EB4CF6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF6F0);
  }

  return result;
}

uint64_t sub_1ABD8FDE4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1ABD8FE24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for KnosisResult.Status(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

void sub_1ABD8FF70(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1ABD90330();
    if (v2 <= 0x3F)
    {
      type metadata accessor for InitializationResourcesManager();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1ABD90010(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1ABA7E1E0(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1ABD90154(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1ABA7B9B4(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

void sub_1ABD90330()
{
  if (!qword_1EB4CF838)
  {
    v0 = sub_1ABF241F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4CF838);
    }
  }
}

uint64_t sub_1ABD90380(uint64_t a1)
{
  if ((*(a1 + 34) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 34) & 7;
  }
}

uint64_t sub_1ABD9039C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
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

uint64_t sub_1ABD903DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABD90444(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    LOBYTE(a2) = 4;
    *(result + 32) = 0;
  }

  *(result + 34) = a2;
  return result;
}

uint64_t sub_1ABD90478(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_1ABD904B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABD90540(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1ABD90580(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1ABD90610(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for KnosisFact.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for KnosisAnswer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for KnosisResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABD90984()
{
  result = qword_1EB4D9450;
  if (!qword_1EB4D9450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9450);
  }

  return result;
}

unint64_t sub_1ABD909DC()
{
  result = qword_1EB4D9458;
  if (!qword_1EB4D9458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9458);
  }

  return result;
}

unint64_t sub_1ABD90A34()
{
  result = qword_1EB4D9460;
  if (!qword_1EB4D9460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9460);
  }

  return result;
}

unint64_t sub_1ABD90A8C()
{
  result = qword_1EB4D9468;
  if (!qword_1EB4D9468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9468);
  }

  return result;
}

unint64_t sub_1ABD90AE4()
{
  result = qword_1EB4D9470;
  if (!qword_1EB4D9470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9470);
  }

  return result;
}

unint64_t sub_1ABD90B3C()
{
  result = qword_1EB4D9478;
  if (!qword_1EB4D9478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9478);
  }

  return result;
}

unint64_t sub_1ABD90B94()
{
  result = qword_1EB4D9480;
  if (!qword_1EB4D9480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9480);
  }

  return result;
}

unint64_t sub_1ABD90BEC()
{
  result = qword_1EB4D9488;
  if (!qword_1EB4D9488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9488);
  }

  return result;
}

unint64_t sub_1ABD90C44()
{
  result = qword_1EB4D9490;
  if (!qword_1EB4D9490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9490);
  }

  return result;
}

unint64_t sub_1ABD90C9C()
{
  result = qword_1EB4D9498;
  if (!qword_1EB4D9498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9498);
  }

  return result;
}

unint64_t sub_1ABD90CF4()
{
  result = qword_1EB4D94A0;
  if (!qword_1EB4D94A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D94A0);
  }

  return result;
}

unint64_t sub_1ABD90D4C()
{
  result = qword_1EB4D94A8;
  if (!qword_1EB4D94A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D94A8);
  }

  return result;
}

unint64_t sub_1ABD90DA4()
{
  result = qword_1EB4D94B0;
  if (!qword_1EB4D94B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D94B0);
  }

  return result;
}

unint64_t sub_1ABD90DFC()
{
  result = qword_1EB4D94B8;
  if (!qword_1EB4D94B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D94B8);
  }

  return result;
}

unint64_t sub_1ABD90E54()
{
  result = qword_1EB4D94C0;
  if (!qword_1EB4D94C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D94C0);
  }

  return result;
}

unint64_t sub_1ABD90EAC()
{
  result = qword_1EB4D94C8;
  if (!qword_1EB4D94C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D94C8);
  }

  return result;
}

unint64_t sub_1ABD90F04()
{
  result = qword_1EB4D94D0;
  if (!qword_1EB4D94D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D94D0);
  }

  return result;
}

unint64_t sub_1ABD90F5C()
{
  result = qword_1EB4D94D8;
  if (!qword_1EB4D94D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D94D8);
  }

  return result;
}

unint64_t sub_1ABD90FB0()
{
  result = qword_1EB4D94E0;
  if (!qword_1EB4D94E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D94E0);
  }

  return result;
}

uint64_t sub_1ABD91054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  v9 = *(a1 + 32);
  return sub_1ABD7F604(v8, a2, a3, *a4, *a5, *a6, a6[1], a6[2]);
}

uint64_t sub_1ABD9116C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CustomKnosisResultContext(0, *(v4 + 16), *(v4 + 24), a4);
  v5 = sub_1ABA8C9A0();
  return sub_1ABD830B4(v5, v6, v7, v8);
}

uint64_t sub_1ABD911E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  type metadata accessor for CustomKnosisResultContext(0, *(v4 + 16), v5, a4);
  v6 = sub_1ABA8C9A0();
  return sub_1ABD82DD0(v6, v7, v8, v9, v5);
}

uint64_t sub_1ABD91270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CustomKnosisResultContext(0, *(v4 + 16), *(v4 + 24), a4);
  sub_1ABA8A54C();
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  sub_1ABA8AD50();
  v9 = sub_1ABA7D0EC();
  v10(v9);

  return MEMORY[0x1EEE6BDD0](v4, ((v6 + 32) & ~v6) + v8, v6 | 7);
}

uint64_t sub_1ABD91354(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  sub_1ABAB67E0();
  v13 = *(type metadata accessor for CustomKnosisResultContext(v9, v10, v11, v12) - 8);
  return a3(a1, a2, v3 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v7, v8);
}

unint64_t sub_1ABD91400()
{
  result = qword_1EB4D9508;
  if (!qword_1EB4D9508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9508);
  }

  return result;
}

uint64_t sub_1ABD91518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);

  return sub_1ABAE42A8(va, &a18);
}

uint64_t sub_1ABD91540(uint64_t a1)
{
  *(a1 + 72) = 0xED00003A53544341;
}

void KnosisServer.executeKGQ(request:)()
{
  sub_1ABA7E2A8();
  v96 = v0;
  v3 = v2;
  v106 = v4;
  v97 = type metadata accessor for Renderer(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7C21C();
  v98 = v6;
  v7 = sub_1ABA8409C();
  Context = type metadata accessor for QueryContext(v7);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7C21C();
  v108 = v9;
  sub_1ABA8409C();
  sub_1ABF23744();
  sub_1ABA7BB64();
  v104 = v11;
  v105 = v10;
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7AC18();
  v102 = v12 - v13;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v14);
  v103 = v94 - v15;
  sub_1ABA8409C();
  v16 = sub_1ABF237F4();
  sub_1ABA7BB64();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7BC58();
  sub_1ABAA29E0();
  sub_1ABF23774();
  sub_1ABA7BB64();
  v100 = v21;
  v101 = v20;
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA7BC58();
  v24 = v23 - v22;
  v99 = type metadata accessor for LogSignpost(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7BC58();
  v28 = v27 - v26;
  v29 = v3[1];
  v117 = *v3;
  v118 = v29;
  v119[0] = v3[2];
  *(v119 + 10) = *(v3 + 42);
  if (qword_1ED86E458 != -1)
  {
    sub_1ABA7D0C4();
    swift_once();
  }

  v30 = sub_1ABA7AA24(v16, qword_1ED86E460);
  sub_1ABD974A0(&v117, &v114);
  v94[1] = v30;
  v31 = sub_1ABF237D4();
  v32 = sub_1ABF24654();
  sub_1ABB2F6BC(&v117);
  v33 = os_log_type_enabled(v31, v32);
  v107 = v28;
  if (v33)
  {
    sub_1ABA8C938();
    v34 = swift_slowAlloc();
    sub_1ABAA4194();
    v35 = swift_slowAlloc();
    v94[0] = v18;
    v36 = v35;
    v112[0] = v35;
    *v34 = 136315138;
    v113[0] = v117;
    v113[1] = v118;
    v113[2] = v119[0];
    *(&v113[2] + 10) = *(v119 + 10);
    sub_1ABD974A0(&v117, &v114);
    v37 = KnosisKGQRequest.description.getter();
    v39 = v38;
    v114 = v113[0];
    v115 = v113[1];
    v116[0] = v113[2];
    *(v116 + 10) = *(&v113[2] + 10);
    sub_1ABB2F6BC(&v114);
    v40 = sub_1ABADD6D8(v37, v39, v112);

    *(v34 + 4) = v40;
    _os_log_impl(&dword_1ABA78000, v31, v32, "executeKGQ called with request %s", v34, 0xCu);
    sub_1ABA84B54(v36);
    v18 = v94[0];
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
    v28 = v107;
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  v41 = sub_1ABA7AA24(v16, qword_1ED871EF8);
  (*(v18 + 16))(v1, v41, v16);
  sub_1ABF23754();
  sub_1ABF23764();
  v42 = v103;
  sub_1ABF23714();
  v43 = sub_1ABF23764();
  sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v44 = swift_slowAlloc();
    sub_1ABA96C68(v44);
    sub_1ABF23724();
    sub_1ABA82EDC();
    _os_signpost_emit_with_name_impl(v45, v46, v47, v48, v49, v50, v32, 2u);
    v51 = sub_1ABA7E368();
    MEMORY[0x1AC5AB8B0](v51);
  }

  v53 = v104;
  v52 = v105;
  (*(v104 + 16))(v102, v42, v105);
  sub_1ABF237B4();
  sub_1ABA90758();
  swift_allocObject();
  sub_1ABA960A4();
  v54 = sub_1ABF237A4();
  (*(v53 + 8))(v42, v52);
  *v28 = "Knosis.executeKGQ";
  *(v28 + 8) = 17;
  *(v28 + 16) = 2;
  *(v28 + 24) = v54;
  (*(v100 + 32))(v28 + *(v99 + 24), v24, v101);
  v55 = *&v119[1];
  if ((*&v119[1] & 0x8000000000000000) != 0)
  {
    v91 = v106;
    *v106 = 0;
    v91[1] = 0;
    *(v91 + 11) = 0u;
    *(v91 + 13) = 0u;
    *(v91 + 15) = 0u;
    v91[2] = 0;
    v91[3] = 0xE000000000000000;
    v92 = MEMORY[0x1E69E7CC0];
    v91[17] = 0;
    v91[4] = v92;
    *(v91 + 40) = 2;
    v91[6] = 0xD00000000000001FLL;
    v91[7] = 0x80000001ABF8F130;
    sub_1ABA9A5B8();
    v91[8] = 0;
    v91[9] = 0;
    *(v91 + 80) = 0;
    v91[19] = 0;
    v91[20] = 0;
    v91[18] = 0;
  }

  else
  {
    v56 = v117;
    v57 = v118;
    v114 = 0uLL;
    DWORD2(v115) = 0;
    *&v115 = 0;
    v58 = *(&v119[0] + 1);
    v59 = BYTE8(v119[1]);
    v60 = BYTE9(v119[1]);
    Tree = type metadata accessor for QueryTree();
    sub_1ABAB5B14(Tree);

    v62 = sub_1ABE73548(v56, *(&v56 + 1), v57, *(&v57 + 1), 0, &v114, v58, v55, v59, v60);
    sub_1ABE8B0C8(&unk_1F208F068);
    if (qword_1ED86D438 != -1)
    {
      sub_1ABAA542C();
      swift_once();
    }

    sub_1ABAA4648(v63);
    v114 = 0uLL;
    LOBYTE(v115) = 2;
    *(&v115 + 1) = v64;
    v65 = v108;
    v66 = v96;
    v67 = sub_1ABD9421C(v108, v62, v58, &v114);
    v69 = v68;
    sub_1ABB3F860(v114, *(&v114 + 1), v115);

    sub_1ABAA5984();
    v70 = v98;
    sub_1ABD97558(v65, v98, v71);
    v72 = *(v66 + OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_defaultResultLimit);
    v73 = v97;
    *(v70 + *(v97 + 20)) = MEMORY[0x1E69E7CD0];
    *(v70 + v73[6]) = v67;
    *(v70 + v73[7]) = v69;
    *(v70 + v73[8]) = 4;
    *(v70 + v73[9]) = v72;
    *(v70 + v73[10]) = MEMORY[0x1E69E7CC0];
    sub_1ABE434CC(v113);
    if (*(v65 + *(Context + 52)) == 1)
    {
      v74 = (v108 + *(Context + 48));
      v76 = *v74;
      v75 = v74[1];
      v77 = v74[2];

      v78 = sub_1ABA826A8();
      sub_1ABAFEE5C(v78, v79);
      *&v113[9] = v76;
      *(&v113[9] + 1) = v75;
      *&v113[10] = v77;
    }

    sub_1ABA96A6C(&v114);
    sub_1ABD974FC(&v114, v112);
    v80 = sub_1ABF237D4();
    v81 = sub_1ABF24654();
    sub_1ABB2F710(&v114);
    v82 = os_log_type_enabled(v80, v81);
    v28 = v107;
    if (v82)
    {
      sub_1ABA8C938();
      v83 = swift_slowAlloc();
      sub_1ABAA4194();
      v84 = swift_slowAlloc();
      v112[0] = v84;
      *v83 = 136315138;
      sub_1ABD922F8();
      v87 = sub_1ABADD6D8(v85, v86, v112);

      *(v83 + 4) = v87;
      _os_log_impl(&dword_1ABA78000, v80, v81, "Rendered result: %s", v83, 0xCu);
      sub_1ABA84B54(v84);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      v88 = sub_1ABA7E368();
      MEMORY[0x1AC5AB8B0](v88);
    }

    sub_1ABA9A5A0();
    sub_1ABD97940(v70, v89);
    sub_1ABAA6158();
    sub_1ABD97940(v108, v90);
    sub_1ABA7F2A0(v113, &v110);
    sub_1ABA96A6C(v111);
    memcpy(v106, v113, 0xA8uLL);
    sub_1ABA96A6C(v112);
    sub_1ABD974FC(v111, &v109);
    sub_1ABB2F710(v112);
  }

  sub_1ABD96FB0();
  sub_1ABA7DC50();
  sub_1ABD97940(v28, v93);
  sub_1ABA7BC1C();
}

uint64_t sub_1ABD91E50(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v8 = a2;
  v4 = *(result + 16);
  for (i = 32; ; i += 40)
  {
    if (v4 == v3)
    {

      return v8;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    v6 = *(v2 + i + 16);
    v9[0] = *(v2 + i);
    v9[1] = v6;
    v10 = *(v2 + i + 32);
    ++v3;
    sub_1ABAFF1DC(v9, &v7);
    sub_1ABB181BC(&v7, v9);
  }

  __break(1u);
  return result;
}

void sub_1ABD91F24(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v16 = a2;
  v4 = a1 + 56;
  sub_1ABA7D32C();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  if ((v6 & v5) != 0)
  {
    do
    {
      v10 = v3;
LABEL_7:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
      v13 = *v12;
      v14 = v12[1];

      sub_1ABB1840C(v15, v13, v14);
    }

    while (v7);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v3;
    if (v7)
    {
      v3 = v10;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1ABD9202C(uint64_t a1, uint64_t a2, void (*a3)(char *, void))
{
  v5 = 0;
  v15 = a2;
  v6 = a1 + 56;
  sub_1ABA7D32C();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  if ((v8 & v7) != 0)
  {
    do
    {
      v12 = v5;
LABEL_7:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      a3(&v14, *(*(a1 + 48) + (v13 | (v12 << 6))));
    }

    while (v9);
  }

  while (1)
  {
    v12 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      return;
    }

    v9 = *(v6 + 8 * v12);
    ++v5;
    if (v9)
    {
      v5 = v12;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1ABD92104()
{
  sub_1ABA7E2A8();
  v1 = sub_1ABF23C54();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1ABA7BC58();
  v2 = sub_1ABAB1194();
  sub_1ABA7BB64();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7AC18();
  v8 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  memcpy(v19, v0, 0x69uLL);
  sub_1ABF21854();
  sub_1ABA90758();
  swift_allocObject();
  sub_1ABF21844();
  sub_1ABF21804();
  v12 = sub_1ABF21824();
  sub_1ABA8C2D0();
  sub_1ABB4D7BC();
  v13 = *(v4 + 8);
  v13(v8, v2);
  v13(v11, v2);
  v12(&v18, 0);
  sub_1ABD97670();
  sub_1ABF21834();
  sub_1ABA96DA4();
  sub_1ABA805B4();
  sub_1ABF23C24();
  if (v14)
  {
    v15 = sub_1ABA8C2D0();
  }

  else
  {
    v15 = sub_1ABA805B4();
  }

  sub_1ABA96210(v15, v16);

  sub_1ABA95918();
  sub_1ABA7BC1C();
}

void sub_1ABD922F8()
{
  sub_1ABA7E2A8();
  v1 = sub_1ABF23C54();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1ABA7BC58();
  v2 = sub_1ABAB1194();
  sub_1ABA7BB64();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7AC18();
  v8 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  memcpy(v19, v0, sizeof(v19));
  sub_1ABF21854();
  sub_1ABA90758();
  swift_allocObject();
  sub_1ABF21844();
  sub_1ABF21804();
  v12 = sub_1ABF21824();
  sub_1ABA8C2D0();
  sub_1ABB4D7BC();
  v13 = *(v4 + 8);
  v13(v8, v2);
  v13(v11, v2);
  v12(&v18, 0);
  sub_1ABD97A30();
  sub_1ABF21834();
  sub_1ABA96DA4();
  sub_1ABA805B4();
  sub_1ABF23C24();
  if (v14)
  {
    v15 = sub_1ABA8C2D0();
  }

  else
  {
    v15 = sub_1ABA805B4();
  }

  sub_1ABA96210(v15, v16);

  sub_1ABA95918();
  sub_1ABA7BC1C();
}

void sub_1ABD924EC()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1ABF23C54();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1ABA7BC58();
  v7 = sub_1ABAB1194();
  sub_1ABA7BB64();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7AC18();
  v13 = (v11 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23[-1] - v15;
  v23[4] = v5;
  v23[5] = v3;
  v23[6] = v1;
  sub_1ABF21854();
  sub_1ABA90758();
  swift_allocObject();
  sub_1ABF21844();
  sub_1ABF21804();
  v17 = sub_1ABF21824();
  sub_1ABB4D7BC();
  v18 = *(v9 + 8);
  v18(v13, v7);
  v18(v16, v7);
  v17(v23, 0);
  sub_1ABD8E088();
  sub_1ABF21834();
  sub_1ABA96DA4();
  sub_1ABA805B4();
  sub_1ABF23C24();
  if (v19)
  {
    v20 = sub_1ABA8C2D0();
  }

  else
  {
    v20 = sub_1ABA805B4();
  }

  sub_1ABA96210(v20, v21);

  sub_1ABA95918();
  sub_1ABA7BC1C();
}

char *sub_1ABD9275C(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v51 = a4;
  v50 = a2;
  v7 = sub_1ABF21CF4();
  sub_1ABA7BB64();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7AC18();
  v47 = v11 - v12;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v45 - v14;
  v15 = sub_1ABA8409C();
  v46 = type metadata accessor for KnosisConfig(v15);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7AC18();
  v48 = (v17 - v18);
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  if (qword_1ED86E458 != -1)
  {
    sub_1ABA7D0C4();
    swift_once();
  }

  v22 = sub_1ABF237F4();
  sub_1ABA7AA24(v22, qword_1ED86E460);
  v23 = sub_1ABF237D4();
  sub_1ABF24654();
  v24 = sub_1ABA90A40();
  if (os_log_type_enabled(v24, v25))
  {
    sub_1ABA8179C();
    v26 = swift_slowAlloc();
    v45 = a1;
    *v26 = 0;
    _os_log_impl(&dword_1ABA78000, v23, v4, "Initializing Knosis with SubgraphView", v26, 2u);
    a1 = v45;
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v27 = v50;
  v53[3] = sub_1ABAD219C(v50, a3);
  v53[4] = sub_1ABD97998(v51, v27, a3);
  sub_1ABA978EC();
  v28 = swift_allocObject();
  v53[0] = v28;
  v29 = *(a1 + 16);
  *(v28 + 16) = *a1;
  *(v28 + 32) = v29;
  *(v28 + 48) = *(a1 + 32);
  sub_1ABAD219C(&qword_1EB4D9550, &qword_1ABF60F80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34740;
  *(inited + 32) = 6;
  *(inited + 64) = &type metadata for TriplesIndexHandler;
  *(inited + 72) = &off_1F20843E8;
  sub_1ABA978EC();
  v31 = swift_allocObject();
  *(inited + 40) = v31;
  sub_1ABD976C4(v53, v31 + 16);
  sub_1ABAD219C(&qword_1EB4D8190, qword_1ABF60F30);
  sub_1ABD26F30();
  v54 = sub_1ABF239C4();
  v52[3] = &type metadata for ContextIndexHandler;
  v52[4] = &off_1F2084CE0;
  sub_1ABD25924(v52, 5);
  v32 = v54;
  if (qword_1ED871EA0 != -1)
  {
    swift_once();
  }

  result = sub_1ABA95398(0xD000000000000010, 0x80000001ABF8EF40);
  if (v34)
  {
    sub_1ABF21C44();

    v35 = *(v9 + 32);
    v36 = sub_1ABA826A8();
    v35(v36);
    result = sub_1ABA95398(0x614D746E65746E69, 0xE900000000000070);
    if (v37)
    {
      v38 = v47;
      sub_1ABF21C44();

      v39 = v46;
      (v35)(&v21[*(v46 + 20)], v38, v7);
      *&v21[*(v39 + 24)] = 20;
      sub_1ABA97CAC();
      v40 = v48;
      sub_1ABD97558(v21, v48, v41);
      v52[0] = v32;
      v42 = objc_allocWithZone(type metadata accessor for KnosisServer());
      v43 = KnosisServer.init(config:indexHandler:)(v40, v52);
      sub_1ABA80EB4();
      sub_1ABD97940(v21, v44);
      sub_1ABD9783C(v53);
      return v43;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *KnosisServer.__allocating_init(config:indexHandler:)(uint64_t a1, uint64_t *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_1ABA960A4();
  return KnosisServer.init(config:indexHandler:)(v5, a2);
}

char *KnosisServer.init(config:indexHandler:)(char *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = sub_1ABF21CF4();
  sub_1ABA7BB64();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7C21C();
  v140 = v10;
  v11 = sub_1ABA8409C();
  v149 = type metadata accessor for KnosisConfig(v11);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7C21C();
  v158 = v13;
  sub_1ABA8409C();
  sub_1ABF23744();
  sub_1ABA7BB64();
  v156 = v15;
  v157 = v14;
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7AC18();
  v154 = (v16 - v17);
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v18);
  v155 = &v139 - v19;
  sub_1ABA8409C();
  v20 = sub_1ABF237F4();
  sub_1ABA7BB64();
  v146 = v21;
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA7C21C();
  v145 = v23;
  sub_1ABA8409C();
  sub_1ABF23774();
  sub_1ABA7BB64();
  v152 = v25;
  v153 = v24;
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA7C21C();
  v148 = v26;
  v27 = sub_1ABA8409C();
  v147 = type metadata accessor for LogSignpost(v27);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA7C21C();
  v150 = v29;
  v30 = *a2;
  if (qword_1ED86E458 != -1)
  {
    sub_1ABA7D0C4();
    swift_once();
  }

  sub_1ABA7AA24(v20, qword_1ED86E460);

  v31 = sub_1ABF237D4();
  v32 = sub_1ABF24654();

  v33 = os_log_type_enabled(v31, v32);
  v151 = a1;
  v141 = v8;
  v142 = v6;
  v144 = v30;
  if (v33)
  {
    sub_1ABA8C938();
    v34 = swift_slowAlloc();
    sub_1ABAA4194();
    v35 = swift_slowAlloc();
    v143 = v3;
    v36 = v35;
    *&v166 = v35;
    *v34 = 136315138;

    sub_1ABAD219C(&qword_1EB4D8190, qword_1ABF60F30);
    sub_1ABD26F30();
    sub_1ABF239E4();

    v37 = sub_1ABA826A8();
    v6 = sub_1ABADD6D8(v37, v38, v39);

    *(v34 + 4) = v6;
    _os_log_impl(&dword_1ABA78000, v31, v32, "Initializing Knosis with indexHandlers: %s", v34, 0xCu);
    sub_1ABA84B54(v36);
    v3 = v143;
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v40 = v149;
  v41 = v155;
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  v42 = sub_1ABA7AA24(v20, qword_1ED871EF8);
  (*(v146 + 16))(v145, v42, v20);
  v43 = v148;
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v44 = sub_1ABF23764();
  v45 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v46 = swift_slowAlloc();
    sub_1ABA96C68(v46);
    v47 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v44, v45, v47, "Knosis.init", "", v6, 2u);
    v48 = sub_1ABA7E368();
    MEMORY[0x1AC5AB8B0](v48);
  }

  v50 = v156;
  v49 = v157;
  (*(v156 + 16))(v154, v41, v157);
  sub_1ABF237B4();
  sub_1ABA90758();
  swift_allocObject();
  sub_1ABAA1808();
  v51 = sub_1ABF237A4();
  (*(v50 + 8))(v41, v49);
  v52 = v150;
  *v150 = "Knosis.init";
  *(v52 + 8) = 11;
  *(v52 + 16) = 2;
  *(v52 + 24) = v51;
  (*(v152 + 32))(v52 + *(v147 + 24), v43, v153);
  v53 = v151;
  *&v3[OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_defaultResultLimit] = *&v151[*(v40 + 24)];
  sub_1ABA97CAC();
  v54 = v158;
  sub_1ABD97558(v53, v158, v55);
  v56 = v172;
  v57 = sub_1ABE1A26C(v54);
  v60 = v56;
  if (v56)
  {

    sub_1ABD96FB0();
    sub_1ABA80EB4();
    sub_1ABD97940(v53, v61);
    sub_1ABA7DC50();
    sub_1ABD97940(v52, v62);
    goto LABEL_39;
  }

  v143 = v3;
  v63 = &v3[OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_operators];
  *v63 = v57;
  v63[1] = v58;
  v63[2] = v59;
  v64 = v58 + 64;
  sub_1ABA7D32C();
  v67 = v66 & v65;
  v69 = (v68 + 63) >> 6;
  v152 = v70;

  v71 = 0;
  v172 = MEMORY[0x1E69E7CC0];
  v153 = v64;
  v154 = v63;
  if (!v67)
  {
    goto LABEL_13;
  }

  do
  {
    v72 = v71;
LABEL_17:
    v73 = __clz(__rbit64(v67));
    v67 &= v67 - 1;
    v74 = v73 | (v72 << 6);
    v75 = (*(v152 + 48) + 16 * v74);
    v77 = *v75;
    v76 = v75[1];
    sub_1ABA93E64(*(v152 + 56) + 40 * v74, v161);
    *&v162 = v77;
    *(&v162 + 1) = v76;
    sub_1ABA946C0(v161, &v163);

LABEL_18:
    v166 = v162;
    v167 = v163;
    v168 = v164;
    v169 = v165;
    v43 = *(&v162 + 1);
    if (!*(&v162 + 1))
    {
      v158 = v60;

      v89 = sub_1ABA826A8();
      v90 = sub_1ABE1AAD0(v89);

      if (qword_1ED86D348 != -1)
      {
        swift_once();
      }

      v91 = qword_1ED87C3F0;

      sub_1ABE1D0A4(v172, v90, v91, &v166);
      v92 = v166;
      v93 = v167;
      v94 = v168;
      v95 = &v143[OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_parser];
      *v95 = v166;
      *(v95 + 1) = v93;
      *(v95 + 2) = v94;
      v96 = *v154;
      v97 = v154[1];
      v98 = v154[2];
      v166 = v92;
      v167 = v93;
      v168 = v94;
      v172 = v96;

      v156 = v97;

      v157 = v92;

      v153 = *(&v92 + 1);

      v155 = v98;
      v99 = v158;
      sub_1ABEBFBC8(&v166, v100, v101, v102, v103, v104, v105, v106, v139, v140);
      v158 = v99;
      if (v99)
      {

        v107 = 0;
        v109 = v150;
        v108 = v151;
        v110 = v154;
        v111 = v143;
        goto LABEL_36;
      }

      v112 = OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_indexHandler;
      v113 = v143;
      *&v143[OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_indexHandler] = v144;
      v114 = v140;
      (*(v141 + 16))(v140, &v151[*(v149 + 20)], v142);
      v115 = *v154;
      v116 = v154[1];
      v117 = v154[2];
      v118 = *&v113[v112];
      v119 = *(v95 + 1);
      v172 = *v95;
      v120 = *(v95 + 3);
      v156 = *(v95 + 2);
      v157 = v119;
      v121 = *(v95 + 4);
      v122 = *(v95 + 5);
      v147 = v121;
      sub_1ABF217F4();
      sub_1ABA90758();
      swift_allocObject();
      v152 = v115;

      v149 = v116;
      v123 = v117;

      v148 = v118;

      v155 = v120;

      v153 = v122;

      sub_1ABF217E4();
      sub_1ABAA1808();
      v64 = v158;
      v124 = sub_1ABF21D34();
      if (!v64)
      {
        v71 = v153;
        v69 = v155;
        v146 = v123;
        v67 = v125;
        v60 = v124;
        sub_1ABD975DC();
        sub_1ABF217D4();
        goto LABEL_44;
      }

      v158 = v64;
      (*(v141 + 8))(v114, v142);

      v107 = 1;
      goto LABEL_35;
    }

    v78 = v166;
    sub_1ABA946C0(&v167, &v162);
    v80 = *(&v163 + 1);
    v79 = v164;
    sub_1ABA93E20(&v162, *(&v163 + 1));
    (*(*(v79 + 8) + 8))(v170, v78, v43, v80);
    v158 = v60;
    if (v60)
    {

      sub_1ABA84B54(&v162);
      v107 = 0;
LABEL_35:
      v111 = v143;
      v109 = v150;
      v108 = v151;
      v110 = v154;
      goto LABEL_36;
    }

    v81 = v170[1];
    v82 = v170[2];
    v156 = v170[0];
    v157 = v170[3];
    v83 = v170[4];
    LODWORD(v155) = v171;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABADA79C();
      v172 = v87;
    }

    v84 = *(v172 + 16);
    v43 = v84 + 1;
    if (v84 >= *(v172 + 24) >> 1)
    {
      sub_1ABADA79C();
      v172 = v88;
    }

    sub_1ABB5137C(v170);
    v85 = v172;
    *(v172 + 16) = v43;
    v86 = v85 + 48 * v84;
    *(v86 + 32) = v156;
    *(v86 + 40) = v81;
    *(v86 + 48) = v82;
    *(v86 + 56) = v155;
    *(v86 + 64) = v157;
    *(v86 + 72) = v83;
    sub_1ABA84B54(&v162);
    v60 = v158;
    v64 = v153;
  }

  while (v67);
LABEL_13:
  while (1)
  {
    v72 = v71 + 1;
    if (__OFADD__(v71, 1))
    {
      break;
    }

    if (v72 >= v69)
    {
      v67 = 0;
      v165 = 0;
      v163 = 0u;
      v164 = 0u;
      v162 = 0u;
      goto LABEL_18;
    }

    v67 = *(v64 + 8 * v72);
    ++v71;
    if (v67)
    {
      v71 = v72;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_44:
  v144 = v60;
  v145 = v67;
  v129 = v166;
  *&v162 = v148;
  *&v166 = v172;
  *(&v166 + 1) = v157;
  *&v167 = v156;
  *(&v167 + 1) = v69;
  *&v168 = v147;
  *(&v168 + 1) = v71;
  sub_1ABD1E8EC(v129, v152, v149, &v162, &v166, v160);
  v110 = v154;
  if (v64)
  {
    v158 = v64;
    v130 = sub_1ABAA2390();
    v131(v130);
    sub_1ABA96210(v144, v145);

    v107 = 1;
    v111 = v143;
    v109 = v150;
    v108 = v151;
LABEL_36:
    sub_1ABD96FB0();
    sub_1ABA80EB4();
    sub_1ABD97940(v108, v126);
    sub_1ABA7DC50();
    sub_1ABD97940(v109, v127);
    v53 = *v110;

    if (v43)
    {
      if (!v107)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v53 = *&v111[OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_parser];

    if (v107)
    {
LABEL_38:
    }

LABEL_39:
    type metadata accessor for KnosisServer();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v132 = sub_1ABAA2390();
    v133(v132);
    sub_1ABA96210(v144, v145);

    v134 = v143;
    memcpy(&v143[OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_intentHandler], v160, 0x48uLL);
    v135 = v150;
    sub_1ABD96FB0();
    sub_1ABA7DC50();
    sub_1ABD97940(v135, v136);
    v137 = type metadata accessor for KnosisServer();
    v159.receiver = v134;
    v159.super_class = v137;
    v53 = objc_msgSendSuper2(&v159, sel_init);
    sub_1ABA80EB4();
    sub_1ABD97940(v151, v138);
  }

  return v53;
}

char *static KnosisServer.withEntitySubgraphView()()
{
  if (qword_1ED86E458 != -1)
  {
    sub_1ABA7D0C4();
    swift_once();
  }

  v0 = sub_1ABF237F4();
  sub_1ABA7AA24(v0, qword_1ED86E460);
  v1 = sub_1ABF237D4();
  v2 = sub_1ABF24654();
  if (os_log_type_enabled(v1, v2))
  {
    sub_1ABA8179C();
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1ABA78000, v1, v2, "Initializing Knosis with EntitySubgraphView", v3, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v4 = type metadata accessor for ViewService();
  v5 = static ViewService.clientService.getter(v4);
  sub_1ABD97210(v8);
  v7 = sub_1ABD9275C(v8, &qword_1EB4D9558, &qword_1ABF60F88, qword_1EB4CEF38);

  return v7;
}

id KnosisServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id KnosisServer.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for KnosisServer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void __swiftcall KnosisServer.executeKGQ(request:)(GDKnosisResult *__return_ptr retstr, GDKnosisRequest *request)
{
  sub_1ABAA1D10();
  if (qword_1ED86E458 != -1)
  {
    sub_1ABA7D0C4();
    swift_once();
  }

  v3 = sub_1ABF237F4();
  sub_1ABA7AA24(v3, qword_1ED86E460);
  v4 = sub_1ABF237D4();
  sub_1ABF24654();
  v5 = sub_1ABA90A40();
  if (os_log_type_enabled(v5, v6))
  {
    sub_1ABA8179C();
    v7 = swift_slowAlloc();
    sub_1ABA96C68(v7);
    sub_1ABA995B4();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    v13 = sub_1ABA7E368();
    MEMORY[0x1AC5AB8B0](v13);
  }

  static KnosisKGQRequest.initWithGDKnosisRequest(_:)(v2, __dst);
  KnosisServer.executeKGQ(request:)();
  sub_1ABAA39B4(v14, v15, v16, v17, v18, v19, v20, v21, v23, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20]);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__src, __dst, sizeof(__src));
  KnosisResult.toGDKnosisResult()(v22);
  sub_1ABB2F710(__dst);
}

void __swiftcall KnosisServer.executeKGQWithGraphObjectContext(request:)(GDKnosisResultContext *__return_ptr retstr, GDKnosisRequest *request)
{
  sub_1ABAA1D10();
  if (qword_1ED86E458 != -1)
  {
    sub_1ABA7D0C4();
    swift_once();
  }

  v3 = sub_1ABF237F4();
  sub_1ABA7AA24(v3, qword_1ED86E460);
  v4 = sub_1ABF237D4();
  sub_1ABF24654();
  v5 = sub_1ABA90A40();
  if (os_log_type_enabled(v5, v6))
  {
    sub_1ABA8179C();
    v7 = swift_slowAlloc();
    sub_1ABA96C68(v7);
    sub_1ABA995B4();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    v13 = sub_1ABA7E368();
    MEMORY[0x1AC5AB8B0](v13);
  }

  static KnosisKGQRequest.initWithGDKnosisRequest(_:)(v2, __dst);
  KnosisServer.executeKGQ(request:)();
  sub_1ABAA39B4(v14, v15, v16, v17, v18, v19, v20, v21, v24, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20]);
  memcpy(__dst, __src, sizeof(__dst));
  type metadata accessor for GDKnosisResultContext(0);
  v22 = __dst[4];

  ObjectSynthesisDictionaryMapping.init()(__src);
  type metadata accessor for InitializationResourcesManager();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1ABF239C4();
  sub_1ABB2F710(__dst);
  __src[1] = v22;
  __src[2] = v23;
  sub_1ABC6CB84(__src);
}

uint64_t sub_1ABD9421C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v71 = a1;
  Context = type metadata accessor for QueryContext(0);
  MEMORY[0x1EEE9AC00](Context);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a4;
  v12 = *(a4 + 8);
  v14 = *(a4 + 16);
  v15 = *(a4 + 24);
  if (qword_1ED86E458 != -1)
  {
    swift_once();
  }

  v74 = v11;
  v16 = sub_1ABF237F4();
  v17 = sub_1ABA7AA24(v16, qword_1ED86E460);

  sub_1ABB3F4DC(v13, v12, v14);

  v70 = v17;
  v18 = sub_1ABF237D4();
  v19 = sub_1ABF24654();

  sub_1ABB3F860(v13, v12, v14);

  v20 = os_log_type_enabled(v18, v19);
  v72 = v12;
  v73 = v14;
  v67 = a3;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v81 = v69;
    *v21 = 136315650;
    v68 = v19;
    v22 = sub_1ABE735BC();
    v24 = sub_1ABADD6D8(v22, v23, &v81);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2048;
    *(v21 + 14) = a3;
    *(v21 + 22) = 2080;
    v75 = v13;
    v76 = v72;
    LOBYTE(v77) = v73;
    v78 = v15;
    sub_1ABB3F4DC(v13, v72, v73);

    v25 = KnosisAccessConfig.description.getter();
    v27 = v26;
    sub_1ABB3F860(v75, v76, v77);

    v28 = sub_1ABADD6D8(v25, v27, &v81);

    *(v21 + 24) = v28;
    _os_log_impl(&dword_1ABA78000, v18, v68, "Executing KGQ with queryTree:%s, requestLimit:%ld, accessConfig:%s", v21, 0x20u);
    v29 = v69;
    swift_arrayDestroy();
    MEMORY[0x1AC5AB8B0](v29, -1, -1);
    MEMORY[0x1AC5AB8B0](v21, -1, -1);
  }

  v30 = v15;
  v31 = *(v5 + OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_indexHandler);
  v32 = *(a2 + 105);
  v68 = *(a2 + 104);
  LODWORD(v69) = v32;
  v33 = v72;
  v34 = v73;
  sub_1ABB3F4DC(v13, v72, v73);

  v35 = v74;
  sub_1ABF21EA4();
  v35[1] = 0;
  v35[2] = 0;
  v36 = v35 + Context[8];
  *(v36 + 10) = 0;
  *(v36 + 3) = 0u;
  *(v36 + 4) = 0u;
  *(v36 + 1) = 0u;
  *(v36 + 2) = 0u;
  *v36 = 0u;
  *(v36 + 88) = xmmword_1ABF34940;
  v36[104] = 0;
  v37 = MEMORY[0x1E69E7CC0];
  *(v35 + Context[10]) = MEMORY[0x1E69E7CC0];
  v38 = (v35 + Context[12]);
  *v38 = 0;
  v38[1] = v37;
  v38[2] = v37;
  v39 = Context[13];
  v40 = Context[14];
  *v35 = a2;
  *(v35 + Context[9]) = v31;
  *(v35 + v39) = v68;
  v41 = v35 + Context[11];
  *v41 = v13;
  *(v41 + 1) = v33;
  v41[16] = v34;
  *(v41 + 3) = v30;
  *(v35 + v40) = v69;
  v42 = v5;
  v43 = (v5 + OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_parser);
  v44 = *(v5 + OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_parser);
  v45 = *(v5 + OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_parser + 8);
  v46 = *(v5 + OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_parser + 16);
  v47 = v43[3];
  v48 = v43[4];
  v49 = v43[5];
  v75 = v44;
  v76 = v45;
  v77 = v46;
  v78 = v47;
  v79 = v48;
  v80 = v49;
  v50 = *(a2 + 32);
  v51 = *(a2 + 40);

  v52 = sub_1ABE1CB7C(v50, v51);

  v53 = v42;
  v81 = v52;
  v54 = v67;
  if ((v67 & 0x8000000000000000) != 0)
  {
    v56 = v74;
  }

  else
  {
    v55 = *(v52 + 48);
    v56 = v74;
    if ((v55 & 0x8000000000000000) != 0)
    {
      goto LABEL_12;
    }

    if (v55 > v67)
    {
      v54 = *(v52 + 48);
    }
  }

  *(v52 + 48) = v54;
LABEL_12:
  *(a2 + 48) = v52;

  v57 = sub_1ABE18470(v56, &v81, *(v53 + OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_operators), *(v53 + OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_operators + 8), *(v53 + OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_operators + 16));

  v59 = sub_1ABF237D4();
  v60 = sub_1ABF24654();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v75 = v62;
    *v61 = 136315138;

    v63 = sub_1ABE4938C();
    v65 = v64;

    v66 = sub_1ABADD6D8(v63, v65, &v75);

    *(v61 + 4) = v66;
    _os_log_impl(&dword_1ABA78000, v59, v60, "ExecuteKGQ resultGraph:%s", v61, 0xCu);
    sub_1ABA84B54(v62);
    MEMORY[0x1AC5AB8B0](v62, -1, -1);
    MEMORY[0x1AC5AB8B0](v61, -1, -1);
  }

  sub_1ABD97A84(v56, v71);
  return v57;
}

void KnosisServer.executeKGQForXpc(request:accessConfig:)()
{
  sub_1ABA7E2A8();
  v99 = v0;
  v3 = v2;
  v108 = v4;
  v101 = type metadata accessor for Renderer(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7C21C();
  v103 = v6;
  v7 = sub_1ABA8409C();
  Context = type metadata accessor for QueryContext(v7);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7C21C();
  v102 = v9;
  sub_1ABA8409C();
  v107 = sub_1ABF23744();
  sub_1ABA7BB64();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7AC18();
  v106 = v13 - v14;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v94 - v16;
  v18 = sub_1ABF237F4();
  sub_1ABA7BB64();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7BC58();
  v24 = v23 - v22;
  v105 = sub_1ABF23774();
  sub_1ABA7BB64();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA7BC58();
  v28 = sub_1ABAA29E0();
  v104 = type metadata accessor for LogSignpost(v28);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7C21C();
  v109 = v30;
  v31 = *v3;
  v97 = v3[1];
  v98 = v31;
  v96 = *(v3 + 16);
  v95 = v3[3];
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  v32 = sub_1ABA7AA24(v18, qword_1ED871EF8);
  (*(v20 + 16))(v24, v32, v18);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v33 = sub_1ABF23764();
  v34 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v33, v34, v36, "Knosis.executeKGQForXpc", "", v35, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v37 = v107;
  (*(v11 + 16))(v106, v17, v107);
  sub_1ABF237B4();
  sub_1ABA90758();
  swift_allocObject();
  v38 = sub_1ABF237A4();
  (*(v11 + 8))(v17, v37);
  v39 = v109;
  *v109 = "Knosis.executeKGQForXpc";
  *(v39 + 8) = 23;
  *(v39 + 16) = 2;
  *(v39 + 24) = v38;
  (*(v26 + 32))(v39 + *(v104 + 24), v1, v105);
  static KnosisKGQRequest.initWithGDKnosisRequest(_:)(v108, &v125);
  if (qword_1ED86E458 != -1)
  {
    sub_1ABA7D0C4();
    swift_once();
  }

  v40 = sub_1ABA7AA24(v18, qword_1ED86E460);
  sub_1ABD974A0(&v125, &v128);
  v41 = sub_1ABF237D4();
  v42 = sub_1ABF24654();
  sub_1ABB2F6BC(&v125);
  if (os_log_type_enabled(v41, v42))
  {
    sub_1ABA8C938();
    v43 = swift_slowAlloc();
    sub_1ABAA4194();
    v44 = swift_slowAlloc();
    v113[0] = v44;
    *v43 = 136315138;
    v114 = v125;
    v115 = v126;
    v116[0] = v127[0];
    *(v116 + 10) = *(v127 + 10);
    sub_1ABD974A0(&v125, &v128);
    v45 = KnosisKGQRequest.description.getter();
    v47 = v46;
    v128 = v114;
    v129 = v115;
    v130[0] = v116[0];
    *(v130 + 10) = *(v116 + 10);
    sub_1ABB2F6BC(&v128);
    v48 = sub_1ABADD6D8(v45, v47, v113);

    *(v43 + 4) = v48;
    sub_1ABA82EDC();
    _os_log_impl(v49, v50, v51, v52, v43, 0xCu);
    sub_1ABA84B54(v44);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
    v53 = sub_1ABA7E368();
    MEMORY[0x1AC5AB8B0](v53);
  }

  v54 = *&v127[1];
  if ((*&v127[1] & 0x8000000000000000) != 0)
  {
    sub_1ABB2F6BC(&v125);
    sub_1ABA9A5B8();
    v114 = 0uLL;
    *&v115 = 0;
    *(&v115 + 1) = 0xE000000000000000;
    *&v116[0] = MEMORY[0x1E69E7CC0];
    BYTE8(v116[0]) = 2;
    *&v116[1] = 0xD00000000000001ELL;
    *(&v116[1] + 1) = 0x80000001ABF8F1B0;
    v118 = 0;
    v117 = 0;
    v119 = 0;
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    KnosisResult.toGDKnosisResult()(0xD00000000000001ELL);
    sub_1ABA96A6C(&v128);
    sub_1ABB2F710(&v128);
  }

  else
  {
    v55 = *(v99 + OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_defaultResultLimit);
    v56 = *(&v127[0] + 1);
    if (v55 >= *(&v127[0] + 1))
    {
      v57 = *(&v127[0] + 1);
    }

    else
    {
      v57 = *(v99 + OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_defaultResultLimit);
    }

    if (v57 < 0)
    {
      v57 = *(v99 + OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_defaultResultLimit);
    }

    v107 = v57;
    v108 = v40;
    v58 = *(&v125 + 1);
    v105 = v126;
    v106 = v125;
    v59 = *(&v126 + 1);
    v128 = 0uLL;
    DWORD2(v129) = 0;
    *&v129 = 0;
    v60 = BYTE8(v127[1]);
    v61 = BYTE9(v127[1]);
    Tree = type metadata accessor for QueryTree();
    sub_1ABAB5B14(Tree);

    v63 = sub_1ABE73548(v106, v58, v105, v59, 0, &v128, v107, v54, v60, v61);
    sub_1ABB2F6BC(&v125);
    *&v128 = v98;
    *(&v128 + 1) = v97;
    LOBYTE(v129) = v96;
    *(&v129 + 1) = v95;
    v64 = v102;
    v65 = sub_1ABD9421C(v102, v63, v56, &v128);
    v67 = v66;
    sub_1ABAA5984();
    v68 = v103;
    sub_1ABD97558(v64, v103, v69);
    v70 = v101;
    *(v68 + *(v101 + 20)) = MEMORY[0x1E69E7CD0];
    *(v68 + v70[6]) = v65;
    *(v68 + v70[7]) = v67;
    *(v68 + v70[8]) = 4;
    *(v68 + v70[9]) = v55;
    v71 = v64;
    *(v68 + v70[10]) = MEMORY[0x1E69E7CC0];
    sub_1ABE434CC(&v114);
    if (*(v64 + *(Context + 52)) == 1)
    {
      v72 = (v64 + *(Context + 48));
      v74 = *v72;
      v73 = v72[1];
      v75 = v72[2];
      v76 = *(&v123 + 1);
      v77 = v124;

      sub_1ABAFEE5C(v76, v77);
      *(&v123 + 1) = v74;
      *&v124 = v73;
      *(&v124 + 1) = v75;
    }

    sub_1ABA96A6C(&v128);
    sub_1ABD974FC(&v128, v113);
    v78 = sub_1ABF237D4();
    v79 = sub_1ABF24654();
    sub_1ABB2F710(&v128);
    if (os_log_type_enabled(v78, v79))
    {
      sub_1ABA8C938();
      v80 = swift_slowAlloc();
      sub_1ABAA4194();
      v81 = swift_slowAlloc();
      v113[0] = v81;
      *v80 = 136315138;
      sub_1ABD922F8();
      v84 = sub_1ABADD6D8(v82, v83, v113);

      *(v80 + 4) = v84;
      sub_1ABA82EDC();
      _os_log_impl(v85, v86, v87, v88, v80, 0xCu);
      sub_1ABA84B54(v81);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      v89 = sub_1ABA7E368();
      MEMORY[0x1AC5AB8B0](v89);
    }

    sub_1ABA7F2A0(&v114, &v110);
    sub_1ABA96A6C(v111);
    sub_1ABA96A6C(v113);
    sub_1ABD974FC(v111, v112);
    KnosisResult.toGDKnosisResult()(v90);

    memcpy(v112, v113, sizeof(v112));
    sub_1ABB2F710(v112);
    sub_1ABA9A5A0();
    sub_1ABD97940(v68, v91);
    sub_1ABAA6158();
    sub_1ABD97940(v71, v92);
    sub_1ABA96A6C(v113);
    sub_1ABB2F710(v113);
    v39 = v109;
  }

  sub_1ABD96FB0();
  sub_1ABA7DC50();
  sub_1ABD97940(v39, v93);
  sub_1ABA7BC1C();
}

void __swiftcall KnosisServer.executeIntents(request:)(GDKnosisResult *__return_ptr retstr, GDKnosisRequest *request)
{
  sub_1ABAA1D10();
  if (qword_1ED86E458 != -1)
  {
    sub_1ABA7D0C4();
    swift_once();
  }

  v3 = sub_1ABF237F4();
  sub_1ABA7AA24(v3, qword_1ED86E460);
  v4 = sub_1ABF237D4();
  sub_1ABF24654();
  v5 = sub_1ABA90A40();
  if (os_log_type_enabled(v5, v6))
  {
    sub_1ABA8179C();
    v7 = swift_slowAlloc();
    sub_1ABA96C68(v7);
    sub_1ABA995B4();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    v13 = sub_1ABA7E368();
    MEMORY[0x1AC5AB8B0](v13);
  }

  static KnosisIntentRequest.initWithGDKnosisRequest(_:)(v2, __dst);
  __dst[21] = __dst[0];
  __dst[22] = __dst[1];
  __dst[23] = __dst[2];
  v16 = *&__dst[3];
  v17 = __dst[5];
  v18 = __dst[6];
  KnosisServer.executeIntents(request:)();

  memcpy(__dst, __src, 0xA8uLL);
  KnosisResult.toGDKnosisResult()(v14);
  sub_1ABB2F710(__src);
}

void KnosisServer.executeIntents(request:)()
{
  sub_1ABA7E2A8();
  v38 = v0;
  v3 = *v1;
  v2 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 40);
  v40 = *(v1 + 32);
  v39 = *(v1 + 48);
  if (qword_1ED86E458 != -1)
  {
LABEL_17:
    sub_1ABA7D0C4();
    swift_once();
  }

  v7 = sub_1ABF237F4();
  sub_1ABA7AA24(v7, qword_1ED86E460);

  v8 = sub_1ABF237D4();
  v9 = sub_1ABF24654();

  if (os_log_type_enabled(v8, v9))
  {
    sub_1ABA8C938();
    v10 = swift_slowAlloc();
    sub_1ABAA4194();
    v37 = swift_slowAlloc();
    __dst[0] = v37;
    *v10 = 136315138;
    *v49 = v3;
    *&v49[8] = v2;
    *&v49[16] = v5;
    *&v49[24] = v4;
    *&v49[32] = v40;
    *&v49[40] = v6;
    v49[48] = v39;

    v11 = KnosisIntentRequest.description.getter();
    v13 = v12;
    v6 = *&v49[24];

    v4 = sub_1ABADD6D8(v11, v13, __dst);

    *(v10 + 4) = v4;
    _os_log_impl(&dword_1ABA78000, v8, v9, "executeIntents called with request %s", v10, 0xCu);
    sub_1ABA84B54(v37);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  memset(&v49[88], 0, 80);
  v14 = v3;
  *v49 = v3;
  *&v49[8] = v2;
  *&v49[16] = 0;
  *&v49[24] = 0xE000000000000000;
  *&v49[32] = MEMORY[0x1E69E7CC0];
  v49[40] = 2;
  *&v49[48] = 0xD000000000000012;
  *&v49[56] = 0x80000001ABF8F1D0;

  sub_1ABA9A5B8();
  v3 = 0;
  memset(&v49[64], 0, 17);
  v15 = *(v5 + 16);
  v16 = (v5 + 56);
  while (v15 != v3)
  {
    if (v3 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_17;
    }

    v17 = *v16;
    v19 = *(v16 - 2);
    v18 = *(v16 - 1);
    *&v44 = *(v16 - 3);
    *(&v44 + 1) = v19;
    *&v45 = v18;
    DWORD2(v45) = v17;
    Tree = type metadata accessor for QueryTree();
    v6 = sub_1ABAB5B14(Tree);

    v21 = sub_1ABE73548(v14, v2, 0, 0xE000000000000000, 0, &v44, v40, 0, v39, 0);
    sub_1ABE8B0C8(&unk_1F208F068);
    if (qword_1ED86D438 != -1)
    {
      sub_1ABAA542C();
      swift_once();
    }

    sub_1ABAA4648(v22);
    __src[0] = 0;
    __src[1] = 0;
    LOBYTE(__src[2]) = 2;
    __src[3] = v23;
    sub_1ABD95B48(v21, __src, &v44);

    sub_1ABB3F860(__src[0], __src[1], __src[2]);

    v4 = v46;
    sub_1ABA7ADD8(__dst);
    *v49 = v44;
    *&v49[16] = v45;
    *&v49[32] = v4;
    memcpy(&v49[40], v47, 0x80uLL);

    sub_1ABB2F710(__dst);
    v24 = *(v4 + 16);

    if (v24)
    {
      sub_1ABA7ADD8(__src);
      sub_1ABA7ADD8(&v44);
      sub_1ABD974FC(__src, v42);
      sub_1ABB2F710(&v44);
      memcpy(v38, __src, 0xA8uLL);
      goto LABEL_15;
    }

    v16 += 8;
    ++v3;
  }

  v25 = sub_1ABF237D4();
  v26 = sub_1ABF24654();
  if (os_log_type_enabled(v25, v26))
  {
    sub_1ABA8C938();
    v27 = swift_slowAlloc();
    sub_1ABAA4194();
    v28 = swift_slowAlloc();
    v42[0] = v28;
    *v27 = 136315138;
    sub_1ABA7F2A0(v49, v41);
    sub_1ABA7ADD8(&v44);
    sub_1ABA7ADD8(__src);
    sub_1ABD974FC(&v44, __dst);
    v29 = KnosisResult.description.getter();
    v31 = v30;
    memcpy(__dst, __src, sizeof(__dst));
    sub_1ABB2F710(__dst);
    sub_1ABADD6D8(v29, v31, v42);
    sub_1ABAA1808();

    *(v27 + 4) = v29;
    sub_1ABA82EDC();
    _os_log_impl(v32, v33, v34, v35, v27, 0xCu);
    sub_1ABA84B54(v28);
    v36 = sub_1ABA7E368();
    MEMORY[0x1AC5AB8B0](v36);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  sub_1ABA7F2A0(v49, v42);
  sub_1ABA7ADD8(&v44);
  memcpy(v38, v49, 0xA8uLL);
  sub_1ABA7ADD8(__dst);
  sub_1ABD974FC(&v44, __src);
  sub_1ABB2F710(__dst);
LABEL_15:
  sub_1ABA7BC1C();
}

void __swiftcall KnosisServer.executeIntentsWithGraphObjectContext(request:)(GDKnosisResultContext *__return_ptr retstr, GDKnosisRequest *request)
{
  sub_1ABAA1D10();
  if (qword_1ED86E458 != -1)
  {
    sub_1ABA7D0C4();
    swift_once();
  }

  v3 = sub_1ABF237F4();
  sub_1ABA7AA24(v3, qword_1ED86E460);
  v4 = sub_1ABF237D4();
  sub_1ABF24654();
  v5 = sub_1ABA90A40();
  if (os_log_type_enabled(v5, v6))
  {
    sub_1ABA8179C();
    v7 = swift_slowAlloc();
    sub_1ABA96C68(v7);
    sub_1ABA995B4();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    v13 = sub_1ABA7E368();
    MEMORY[0x1AC5AB8B0](v13);
  }

  static KnosisIntentRequest.initWithGDKnosisRequest(_:)(v2, v16);
  KnosisServer.executeIntents(request:)();

  type metadata accessor for GDKnosisResultContext(0);
  v14 = v18;

  ObjectSynthesisDictionaryMapping.init()(v16);
  type metadata accessor for InitializationResourcesManager();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1ABF239C4();
  sub_1ABB2F710(v17);
  v16[1] = v14;
  v16[2] = v15;
  sub_1ABC6CB84(v16);
}

uint64_t sub_1ABD95B48@<X0>(void *a1@<X0>, char **a2@<X1>, void *a3@<X8>)
{
  v102 = a3;
  v100 = type metadata accessor for Renderer(0);
  MEMORY[0x1EEE9AC00](v100);
  v101 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for IntentExecResult(0);
  MEMORY[0x1EEE9AC00](v98);
  v112 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Context = type metadata accessor for QueryContext(0);
  MEMORY[0x1EEE9AC00](Context);
  v122 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1ABF23744();
  v111 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v109 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v110 = &v96 - v10;
  v11 = sub_1ABF237F4();
  v104 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v103 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1ABF23774();
  v107 = *(v13 - 8);
  v108 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v116 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for LogSignpost(0);
  MEMORY[0x1EEE9AC00](v106);
  v16 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a2;
  v18 = a2[1];
  LODWORD(v19) = *(a2 + 16);
  v20 = a2[3];
  if (qword_1ED86E458 != -1)
  {
LABEL_29:
    swift_once();
  }

  v105 = v11;
  v21 = sub_1ABA7AA24(v11, qword_1ED86E460);

  sub_1ABB3F4DC(v17, v18, v19);

  v99 = v21;
  v22 = sub_1ABF237D4();
  v23 = sub_1ABF24654();

  sub_1ABB3F860(v17, v18, v19);

  v24 = os_log_type_enabled(v22, v23);
  v114 = v16;
  v115 = a1;
  v119 = v18;
  v120 = v17;
  LODWORD(v118) = v19;
  v117 = v20;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    __src[0] = v97;
    *v25 = 136315394;
    v26 = sub_1ABE735BC();
    v28 = sub_1ABADD6D8(v26, v27, __src);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    __dst[0] = v17;
    __dst[1] = v18;
    LOBYTE(__dst[2]) = v19;
    __dst[3] = v20;
    sub_1ABB3F4DC(v17, v18, v19);

    v29 = KnosisAccessConfig.description.getter();
    v31 = v30;
    sub_1ABB3F860(__dst[0], __dst[1], __dst[2]);

    v32 = sub_1ABADD6D8(v29, v31, __src);

    *(v25 + 14) = v32;
    _os_log_impl(&dword_1ABA78000, v22, v23, "Executing KGQ with queryTree:%s, accessConfig:%s", v25, 0x16u);
    v33 = v97;
    swift_arrayDestroy();
    MEMORY[0x1AC5AB8B0](v33, -1, -1);
    v34 = v25;
    v16 = v114;
    MEMORY[0x1AC5AB8B0](v34, -1, -1);
  }

  v35 = v113;
  v37 = v110;
  v36 = v111;
  v38 = v116;
  v40 = v103;
  v39 = v104;
  if (qword_1ED871F20 != -1)
  {
    swift_once();
  }

  v41 = v105;
  v42 = sub_1ABA7AA24(v105, qword_1ED871EF8);
  (*(v39 + 16))(v40, v42, v41);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v43 = sub_1ABF23764();
  v44 = sub_1ABF24714();
  v45 = sub_1ABF247D4();
  v46 = v119;
  if (v45)
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v43, v44, v48, "Knosis.executeIntent", "", v47, 2u);
    v49 = v47;
    v38 = v116;
    MEMORY[0x1AC5AB8B0](v49, -1, -1);
  }

  (*(v36 + 16))(v109, v37, v35);
  sub_1ABF237B4();
  swift_allocObject();
  v50 = sub_1ABF237A4();
  v51 = *(v36 + 8);
  v11 = v36 + 8;
  v51(v37, v35);
  *v16 = "Knosis.executeIntent";
  *(v16 + 1) = 20;
  v16[16] = 2;
  *(v16 + 3) = v50;
  (*(v107 + 32))(&v16[*(v106 + 24)], v38, v108);
  memcpy(__dst, (v123 + OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_intentHandler), 0x48uLL);
  memcpy(__src, (v123 + OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_intentHandler), sizeof(__src));
  v126[0] = v120;
  v126[1] = v46;
  v127 = v118;
  v128 = v117;
  sub_1ABD97890(__dst, v125);
  v52 = v112;
  sub_1ABD1F6E4(v115, v126, v112);
  v113 = 0;
  memcpy(v125, __src, sizeof(v125));
  sub_1ABD978EC(v125);
  v53 = v98;
  v17 = *(v52 + *(v98 + 20));
  sub_1ABD97558(v52, v122, type metadata accessor for QueryContext);
  v54 = *(v53 + 28);
  v55 = v52 + *(v53 + 24);
  v56 = *v55;
  v57 = *(v55 + 8);
  v116 = v17;
  v117 = v56;
  v58 = *(v55 + 16);
  LODWORD(v109) = *(v55 + 24);
  v19 = *(v55 + 40);
  v111 = *(v55 + 32);
  v59 = *(v55 + 48);
  LODWORD(v108) = *(v52 + v54);
  swift_retain_n();
  v119 = v57;

  v118 = v58;

  v110 = v19;

  swift_bridgeObjectRetain_n();
  sub_1ABD97940(v52, type metadata accessor for IntentExecResult);
  v120 = 0;
  v20 = 0;
  a1 = *(v59 + 16);
  v16 = (v59 + 40);
  v60 = MEMORY[0x1E69E7CC0];
  v18 = &unk_1F2093C40;
LABEL_9:
  v61 = &v16[16 * v20];
  while (a1 != v20)
  {
    if (v20 >= *(v59 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    ++v20;
    v17 = (v61 + 2);
    v11 = *v61;

    v19 = sub_1ABF24D84();

    v61 = v17;
    if (v19 <= 2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABADBAF4(0, *(v60 + 16) + 1, 1, v60);
        v60 = v63;
      }

      v17 = *(v60 + 16);
      v62 = *(v60 + 24);
      v11 = (v17 + 1);
      if (v17 >= v62 >> 1)
      {
        sub_1ABADBAF4(v62 > 1, (v17 + 1), 1, v60);
        v60 = v64;
      }

      *(v60 + 16) = v11;
      v17[v60 + 32] = v19;
      goto LABEL_9;
    }
  }

  v65 = v122;
  v66 = v101;
  sub_1ABD97558(v122, v101, type metadata accessor for QueryContext);
  v67 = *(v123 + OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_defaultResultLimit);
  v68 = v100;
  *(v66 + *(v100 + 20)) = MEMORY[0x1E69E7CD0];
  *(v66 + v68[6]) = v116;
  v69 = v120;
  *(v66 + v68[7]) = v120;
  *(v66 + v68[8]) = v108;
  *(v66 + v68[9]) = v67;
  *(v66 + v68[10]) = v60;
  v70 = v69;
  sub_1ABE434CC(v124);
  if (*(v65 + *(Context + 52)) == 1)
  {
    v71 = v115[8];
    if (v71)
    {
      v72 = v115[7];
      v73 = v115[9];
    }

    else
    {
      v73 = sub_1ABE8B5B0(MEMORY[0x1E69E7CC0]);
      v72 = 0;
      v71 = 0xE000000000000000;
    }

    v74 = sub_1ABB4563C(v73);
    __src[0] = 0;
    __src[1] = 0xE000000000000000;
    sub_1ABF24AB4();

    __src[0] = 0x203A746E65746E69;
    __src[1] = 0xE800000000000000;
    MEMORY[0x1AC5A9410](v72, v71);

    MEMORY[0x1AC5A9410](0x203A73677261202CLL, 0xE800000000000000);
    v75 = MEMORY[0x1AC5A9750](v74, &type metadata for IntentArg);
    v77 = v76;

    MEMORY[0x1AC5A9410](v75, v77);

    v79 = __src[0];
    v78 = __src[1];
    v80 = (v65 + *(Context + 48));
    v81 = v80[1];
    v82 = *(v81 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80[1] = v81;
    if (!isUniquelyReferenced_nonNull_native || v82 >= *(v81 + 24) >> 1)
    {
      sub_1ABAAA4F4();
      v81 = v84;
      v80[1] = v84;
    }

    sub_1ABD97720(0, 0, 1, v79, v78);

    v80[1] = v81;
    sub_1ABD97940(v66, type metadata accessor for Renderer);
    v86 = *v80;
    v85 = v80[1];
    v87 = v80[2];

    sub_1ABD97940(v122, type metadata accessor for QueryContext);
    sub_1ABAFEE5C(v124[18], v124[19]);
    v124[18] = v86;
    v124[19] = v85;
    v124[20] = v87;
  }

  else
  {
    sub_1ABD97940(v66, type metadata accessor for Renderer);

    sub_1ABD97940(v65, type metadata accessor for QueryContext);
  }

  v88 = v102;
  v90 = v118;
  v89 = v119;
  v92 = v110;
  v91 = v111;
  v93 = v109;
  sub_1ABD8DED4(v124[11], v124[12]);
  v124[11] = v117;
  v124[12] = v89;
  v124[13] = v90;
  v124[14] = v93;
  v124[15] = v91;
  v124[16] = v92;
  v124[17] = v59;
  memcpy(v88, v124, 0xA8uLL);
  v94 = v114;
  sub_1ABD96FB0();
  return sub_1ABD97940(v94, type metadata accessor for LogSignpost);
}

void KnosisServer.executeIntentsXpc(request:accessConfig:)()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v40 = *(v2 + 8);
  v41 = *v2;
  v39 = *(v2 + 16);
  v38 = *(v2 + 24);
  v3 = [v0 query];
  v4 = sub_1ABF23C04();
  v6 = v5;

  memset(&v54[6], 0, 80);
  *v51 = v4;
  *&v51[8] = v6;
  *&v52 = 0;
  *(&v52 + 1) = 0xE000000000000000;
  v53 = MEMORY[0x1E69E7CC0];
  LOBYTE(v54[0]) = 2;
  v54[1] = 0xD000000000000012;
  v54[2] = 0x80000001ABF8F1D0;
  sub_1ABA9A5B8();
  memset(&v54[3], 0, 17);
  static KnosisIntentRequest.initWithGDKnosisRequest(_:)(v1, __dst);
  v7 = __dst[1];
  v8 = __dst[2];
  v9 = __dst[3];
  v43 = __dst[4];
  v44 = __dst[0];
  v10 = __dst[5];
  v42 = __dst[6];
  if (qword_1ED86E458 != -1)
  {
LABEL_15:
    sub_1ABA7D0C4();
    swift_once();
  }

  v11 = sub_1ABF237F4();
  sub_1ABA7AA24(v11, qword_1ED86E460);
  sub_1ABA960A4();

  v12 = sub_1ABF237D4();
  v13 = sub_1ABF24654();

  if (os_log_type_enabled(v12, v13))
  {
    sub_1ABA8C938();
    v14 = swift_slowAlloc();
    sub_1ABAA4194();
    v15 = swift_slowAlloc();
    v49[0] = v15;
    *v14 = 136315138;
    __dst[0] = v44;
    __dst[1] = v7;
    __dst[2] = v8;
    __dst[3] = v9;
    __dst[4] = v43;
    __dst[5] = v10;
    LOBYTE(__dst[6]) = v42;

    v16 = KnosisIntentRequest.description.getter();
    v9 = v17;
    v10 = __dst[3];

    sub_1ABADD6D8(v16, v9, v49);
    sub_1ABA960A4();

    *(v14 + 4) = v16;
    _os_log_impl(&dword_1ABA78000, v12, v13, "ExecuteIntentsXpc called with request %s", v14, 0xCu);
    sub_1ABA84B54(v15);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v18 = *(v8 + 16);

  v19 = 0;
  v20 = (v8 + 56);
  while (v18 != v19)
  {
    if (v19 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    v21 = *v20;
    v23 = *(v20 - 2);
    v22 = *(v20 - 1);
    v49[0] = *(v20 - 3);
    v49[1] = v23;
    v49[2] = v22;
    LODWORD(v49[3]) = v21;
    Tree = type metadata accessor for QueryTree();
    v10 = sub_1ABAB5B14(Tree);

    v25 = sub_1ABE73548(v44, v7, 0, 0xE000000000000000, 0, v49, v43, 0, v42, 0);
    __src[0] = v41;
    __src[1] = v40;
    LOBYTE(__src[2]) = v39;
    __src[3] = v38;
    sub_1ABD95B48(v25, __src, v49);
    v26 = v49[4];
    sub_1ABAA2698(__dst);
    *v51 = *v49;
    v52 = *&v49[2];
    v53 = v26;
    memcpy(v54, &v49[5], sizeof(v54));

    sub_1ABB2F710(__dst);
    v9 = *(v26 + 16);

    if (v9)
    {

      swift_bridgeObjectRelease_n();
      sub_1ABAA2698(v47);
      sub_1ABAA2698(v46);
      sub_1ABD974FC(v47, v49);
      KnosisResult.toGDKnosisResult()(v37);

      memcpy(__src, v46, sizeof(__src));
      sub_1ABB2F710(__src);
      sub_1ABAA2698(v49);
      v36 = v49;
      goto LABEL_13;
    }

    ++v19;
    v20 += 8;
  }

  swift_bridgeObjectRelease_n();

  v27 = sub_1ABF237D4();
  v28 = sub_1ABF24654();
  if (os_log_type_enabled(v27, v28))
  {
    sub_1ABA8C938();
    v29 = swift_slowAlloc();
    sub_1ABAA4194();
    v30 = swift_slowAlloc();
    v47[0] = v30;
    *v29 = 136315138;
    sub_1ABA7F2A0(v51, v45);
    sub_1ABAA2698(v49);
    sub_1ABAA2698(__src);
    sub_1ABD974FC(v49, __dst);
    v31 = KnosisResult.description.getter();
    v33 = v32;
    memcpy(__dst, __src, sizeof(__dst));
    sub_1ABB2F710(__dst);
    sub_1ABADD6D8(v31, v33, v47);
    sub_1ABAA1808();

    *(v29 + 4) = v31;
    _os_log_impl(&dword_1ABA78000, v27, v28, "Rendered result: %s", v29, 0xCu);
    sub_1ABA84B54(v30);
    v34 = sub_1ABA7E368();
    MEMORY[0x1AC5AB8B0](v34);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  sub_1ABA7F2A0(v51, v46);
  sub_1ABAA2698(__src);
  sub_1ABAA2698(v47);
  sub_1ABD974FC(__src, __dst);
  KnosisResult.toGDKnosisResult()(v35);
  memcpy(v49, v47, sizeof(v49));
  sub_1ABB2F710(v49);
  sub_1ABAA2698(__dst);
  v36 = __dst;
LABEL_13:
  sub_1ABB2F710(v36);
  sub_1ABA7BC1C();
}