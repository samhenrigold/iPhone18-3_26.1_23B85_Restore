uint64_t sub_1C0D2ADA8(uint64_t a1, unint64_t a2)
{
  v39[5] = *MEMORY[0x1E69E9840];
  v4 = sub_1C0D786CC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v9 = 0;
    if (v8 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v9 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v8)
  {
    v9 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    __break(1u);
    goto LABEL_41;
  }

  v9 = HIDWORD(a1) - a1;
LABEL_10:
  if (qword_1EBE6CCB0 != -1)
  {
    swift_once();
  }

  if (v9 != qword_1EBE72D88)
  {
    sub_1C0D2FE30();
    swift_allocError();
    *v18 = 3;
    swift_willThrow();
    return v4;
  }

  v39[3] = MEMORY[0x1E6969080];
  v39[4] = MEMORY[0x1E6969078];
  v39[0] = a1;
  v39[1] = a2;
  v12 = __swift_project_boxed_opaque_existential_1(v39, MEMORY[0x1E6969080]);
  v13 = *v12;
  v14 = v12[1];
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 != 2)
    {
      memset(v37, 0, 14);
      sub_1C0CF6468(a1, a2);
      v16 = v37;
      v17 = v37;
      goto LABEL_36;
    }

    v19 = *(v13 + 16);
    v20 = *(v13 + 24);
    sub_1C0CF6468(a1, a2);
    a2 = v14 & 0x3FFFFFFFFFFFFFFFLL;
    a1 = sub_1C0D7812C();
    if (a1)
    {
      a2 = v14 & 0x3FFFFFFFFFFFFFFFLL;
      v21 = sub_1C0D7815C();
      v13 = v19 - v21;
      if (__OFSUB__(v19, v21))
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      a1 += v13;
    }

    v22 = __OFSUB__(v20, v19);
    v23 = v20 - v19;
    if (!v22)
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  else if (!v15)
  {
    v37[0] = *v12;
    LOWORD(v37[1]) = v14;
    BYTE2(v37[1]) = BYTE2(v14);
    BYTE3(v37[1]) = BYTE3(v14);
    BYTE4(v37[1]) = BYTE4(v14);
    BYTE5(v37[1]) = BYTE5(v14);
    sub_1C0CF6468(a1, a2);
    v16 = v37;
    v17 = v37 + BYTE6(v14);
    goto LABEL_36;
  }

  v24 = v13;
  v25 = v13 >> 32;
  v23 = v25 - v24;
  if (v25 < v24)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  sub_1C0CF6468(a1, a2);
  a1 = sub_1C0D7812C();
  if (a1)
  {
    v26 = sub_1C0D7815C();
    if (!__OFSUB__(v24, v26))
    {
      a1 += v24 - v26;
      goto LABEL_28;
    }

LABEL_43:
    __break(1u);
  }

LABEL_28:
  v27 = sub_1C0D7814C();
  if (v27 >= v23)
  {
    v28 = v23;
  }

  else
  {
    v28 = v27;
  }

  v29 = (v28 + a1);
  if (a1)
  {
    v17 = v29;
  }

  else
  {
    v17 = 0;
  }

  v16 = a1;
LABEL_36:
  sub_1C0D20850(v16, v17, v38);
  v30 = v38[0];
  v31 = v38[1];
  __swift_destroy_boxed_opaque_existential_1(v39);
  LODWORD(v39[0]) = 0;
  sub_1C0D7884C();
  sub_1C0CF6468(v30, v31);
  sub_1C0D30240(&qword_1EBE6D428, MEMORY[0x1E6966580], MEMORY[0x1E6966578]);
  sub_1C0D786EC();
  v32 = sub_1C0D786BC();
  (*(v5 + 8))(v7, v4);
  v33 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v34 = sub_1C0D7830C();
  v4 = [v33 initFromPublicKeyBytes:v34 inGroup:v32 compressed:1 corecryptoError:v39];

  sub_1C0CF448C(v30, v31);
  if (!v4)
  {
    v4 = LODWORD(v39[0]);
    sub_1C0CF8DE0();
    swift_allocError();
    *v35 = v4;
    *(v35 + 4) = 0;
    swift_willThrow();
  }

  sub_1C0CF448C(v30, v31);
  return v4;
}

uint64_t sub_1C0D2B360(uint64_t a1, unint64_t a2, unint64_t a3)
{
  sub_1C0D2B420(a1, a2);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1C0D2F670(*(v3 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server), *(v3 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 8), *(v3 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 16), a3, v5, v7, v9);
  v12 = v11;

  return v12;
}

void sub_1C0D2B420(uint64_t a1, unint64_t a2)
{
  v94 = *MEMORY[0x1E69E9840];
  v5 = sub_1C0D786CC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v11 = v7;
    v12 = 0;
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v12 = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v11 = v7;
    v12 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v11 = v7;
  v12 = HIDWORD(a1) - a1;
LABEL_10:
  if (qword_1EBE6CCC0 != -1)
  {
    swift_once();
  }

  if (v12 != qword_1EBE72D98)
  {
    sub_1C0D2FE30();
    swift_allocError();
    *v21 = 6;
    swift_willThrow();
    return;
  }

  v90 = MEMORY[0x1E6969080];
  v91 = MEMORY[0x1E6969078];
  v88 = a1;
  v89 = a2;
  v15 = __swift_project_boxed_opaque_existential_1(&v88, MEMORY[0x1E6969080]);
  v16 = *v15;
  v17 = v15[1];
  v18 = v17 >> 62;
  if ((v17 >> 62) <= 1)
  {
    if (!v18)
    {
      v86[0] = *v15;
      LOWORD(v86[1]) = v17;
      BYTE2(v86[1]) = BYTE2(v17);
      BYTE3(v86[1]) = BYTE3(v17);
      BYTE4(v86[1]) = BYTE4(v17);
      BYTE5(v86[1]) = BYTE5(v17);
      sub_1C0CF6468(a1, a2);
      v19 = v86;
      v20 = v86 + BYTE6(v17);
      goto LABEL_36;
    }

    goto LABEL_24;
  }

  if (v18 != 2)
  {
    memset(v86, 0, 14);
    sub_1C0CF6468(a1, a2);
    v19 = v86;
    v20 = v86;
    goto LABEL_36;
  }

  v22 = *(v16 + 16);
  v23 = *(v16 + 24);
  sub_1C0CF6468(a1, a2);
  a2 = v17 & 0x3FFFFFFFFFFFFFFFLL;
  a1 = sub_1C0D7812C();
  if (a1)
  {
    a2 = v17 & 0x3FFFFFFFFFFFFFFFLL;
    v24 = sub_1C0D7815C();
    v16 = v22 - v24;
    if (__OFSUB__(v22, v24))
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
    }

    a1 += v16;
  }

  v25 = __OFSUB__(v23, v22);
  v26 = v23 - v22;
  if (v25)
  {
    __break(1u);
LABEL_24:
    v27 = v16;
    v28 = v16 >> 32;
    v26 = v28 - v27;
    if (v28 < v27)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    sub_1C0CF6468(a1, a2);
    a1 = sub_1C0D7812C();
    if (a1)
    {
      v29 = sub_1C0D7815C();
      if (__OFSUB__(v27, v29))
      {
        goto LABEL_52;
      }

      a1 += v27 - v29;
    }
  }

  v30 = sub_1C0D7814C();
  if (v30 >= v26)
  {
    v31 = v26;
  }

  else
  {
    v31 = v30;
  }

  v32 = (v31 + a1);
  if (a1)
  {
    v20 = v32;
  }

  else
  {
    v20 = 0;
  }

  v19 = a1;
LABEL_36:
  sub_1C0D20850(v19, v20, v87);
  v33 = v87[0];
  v34 = v87[1];
  __swift_destroy_boxed_opaque_existential_1(&v88);
  v92 = v33;
  v93 = v34;
  v35 = objc_opt_self();
  sub_1C0D7884C();
  sub_1C0D30240(&qword_1EBE6D428, MEMORY[0x1E6966580], MEMORY[0x1E6966578]);
  sub_1C0D786EC();
  v36 = sub_1C0D786BC();
  v38 = *(v6 + 8);
  v37 = v6 + 8;
  v39 = v11;
  v85 = v38;
  v38(v9, v11);
  v83 = v35;
  v40 = [v35 groupOrderByteCountForCP_];
  if ((v40 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v41 = v40;
  v80 = v2;
  v42 = v92;
  v43 = v93;
  sub_1C0CF6468(v92, v93);
  sub_1C0D01560(v41, v42, v43, &v88);
  v44 = v37;
  v46 = v88;
  v45 = v89;
  sub_1C0D22268(v41);
  LODWORD(v88) = 0;
  sub_1C0CF6468(v46, v45);
  sub_1C0D786EC();
  v47 = sub_1C0D786BC();
  v84 = v44;
  v85(v9, v39);
  v48 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v49 = sub_1C0D7830C();
  v50 = [v48 initWithData:v49 inGroup:v47 reduction:0 corecryptoError:&v88];

  sub_1C0CF448C(v46, v45);
  if (!v50)
  {
    v74 = v88;
    sub_1C0CF8DE0();
    swift_allocError();
    *v75 = v74;
    *(v75 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v46, v45);
    sub_1C0CF448C(v92, v93);
    return;
  }

  sub_1C0CF448C(v46, v45);
  sub_1C0D786EC();
  v51 = sub_1C0D786BC();
  v85(v9, v39);
  v52 = [v83 compressedx962PointByteCountForCurveParameters_];
  if ((v52 & 0x8000000000000000) != 0)
  {
    goto LABEL_47;
  }

  v53 = v52;
  v81 = v50;
  v54 = v92;
  v55 = v93;
  sub_1C0CF6468(v92, v93);
  sub_1C0D01560(v53, v54, v55, &v88);
  v57 = v88;
  v56 = v89;
  sub_1C0D22268(v53);
  LODWORD(v88) = 0;
  sub_1C0CF6468(v57, v56);
  sub_1C0D786EC();
  v58 = sub_1C0D786BC();
  v85(v9, v39);
  v59 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v60 = sub_1C0D7830C();
  v82 = v39;
  v61 = v60;
  v62 = [v59 initFromPublicKeyBytes:v60 inGroup:v58 compressed:1 corecryptoError:&v88];

  sub_1C0CF448C(v57, v56);
  if (!v62)
  {
    v76 = v88;
    sub_1C0CF8DE0();
    swift_allocError();
    *v77 = v76;
    *(v77 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v57, v56);
    sub_1C0CF448C(v92, v93);

    return;
  }

  sub_1C0CF448C(v57, v56);
  sub_1C0D786EC();
  v63 = sub_1C0D786BC();
  v85(v9, v82);
  v64 = [v83 compressedx962PointByteCountForCurveParameters_];
  if ((v64 & 0x8000000000000000) != 0)
  {
    goto LABEL_49;
  }

  v65 = v64;
  v66 = v92;
  v67 = v93;
  sub_1C0CF6468(v92, v93);
  sub_1C0D01560(v65, v66, v67, &v88);
  v68 = v88;
  v69 = v89;
  sub_1C0D22268(v65);
  LODWORD(v88) = 0;
  sub_1C0CF6468(v68, v69);
  sub_1C0D786EC();
  v70 = sub_1C0D786BC();
  v85(v9, v82);
  v71 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v72 = sub_1C0D7830C();
  v73 = [v71 initFromPublicKeyBytes:v72 inGroup:v70 compressed:1 corecryptoError:&v88];

  sub_1C0CF448C(v68, v69);
  if (v73)
  {
    sub_1C0CF448C(v68, v69);
    sub_1C0CF448C(v92, v93);
  }

  else
  {
    v78 = v88;
    sub_1C0CF8DE0();
    swift_allocError();
    *v79 = v78;
    *(v79 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v68, v69);
    sub_1C0CF448C(v92, v93);
  }
}

id sub_1C0D2BE44(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1C0D2BEDC(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  result = [a1 sub:a2 corecryptoError:&v4];
  if (!result)
  {
    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD00000000000003FLL, 0x80000001C0D80820);
    v3 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v3);

    result = sub_1C0D78EBC();
    __break(1u);
  }

  return result;
}

id sub_1C0D2BFF8(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  result = [a1 add:a2 corecryptoError:&v4];
  if (!result)
  {
    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD00000000000003CLL, 0x80000001C0D80790);
    v3 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v3);

    result = sub_1C0D78EBC();
    __break(1u);
  }

  return result;
}

id sub_1C0D2C114(void *a1, uint64_t a2)
{

  return sub_1C0D2C16C(a1, a2);
}

id sub_1C0D2C16C(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  result = [a1 sub:a2 corecryptoError:&v4];
  if (!result)
  {
    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD000000000000040, 0x80000001C0D80CE0);
    v3 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v3);

    result = sub_1C0D78EBC();
    __break(1u);
  }

  return result;
}

id sub_1C0D2C288(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = sub_1C0D786CC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0;
  v6 = objc_opt_self();
  sub_1C0D7884C();
  sub_1C0D30240(&qword_1EBE6D428, MEMORY[0x1E6966580], MEMORY[0x1E6966578]);
  sub_1C0D786EC();
  v7 = sub_1C0D786BC();
  v8 = *(v3 + 8);
  v8(v5, v2);
  v9 = [v6 groupOrderByteCountForCP_];
  if (v9 < 0)
  {
    __break(1u);
  }

  v10 = sub_1C0D053E8(0, v9);
  v12 = v11;
  LODWORD(v24[0]) = 0;
  sub_1C0CF6468(v10, v11);
  sub_1C0D786EC();
  v13 = sub_1C0D786BC();
  v8(v5, v2);
  v14 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v15 = sub_1C0D7830C();
  v16 = [v14 initWithData:v15 inGroup:v13 reduction:1 corecryptoError:v24];

  sub_1C0CF448C(v10, v12);
  if (v16)
  {
    sub_1C0CF448C(v10, v12);
    v17 = [v16 sub:a1 corecryptoError:&v25];
    if (v17)
    {
      v18 = v17;

      return v18;
    }
  }

  else
  {
    v20 = v24[0];
    sub_1C0CF8DE0();
    swift_allocError();
    *v21 = v20;
    *(v21 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v10, v12);
    swift_unexpectedError();
    __break(1u);
  }

  v24[0] = 0;
  v24[1] = 0xE000000000000000;
  sub_1C0D78DAC();
  MEMORY[0x1C68E3B00](0xD00000000000003CLL, 0x80000001C0D80D30);
  v23[1] = v25;
  v22 = sub_1C0D78F2C();
  MEMORY[0x1C68E3B00](v22);

  result = sub_1C0D78EBC();
  __break(1u);
  return result;
}

void *sub_1C0D2C610(void *a1, unint64_t a2)
{
  v85 = *MEMORY[0x1E69E9840];
  v5 = sub_1C0D786CC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v10 = 0;
    if (v9 != 2)
    {
      goto LABEL_10;
    }

    v12 = a1[2];
    v11 = a1[3];
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v10 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v10 = HIDWORD(a1) - a1;
LABEL_10:
  if (qword_1EBE6CCC8 != -1)
  {
    swift_once();
  }

  if (v10 != qword_1EBE72DA0)
  {
    sub_1C0D2FE30();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
    return a1;
  }

  v81 = MEMORY[0x1E6969080];
  v82 = MEMORY[0x1E6969078];
  v79 = a1;
  v80 = a2;
  v13 = __swift_project_boxed_opaque_existential_1(&v79, MEMORY[0x1E6969080]);
  v14 = *v13;
  v15 = v13[1];
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v16 != 2)
    {
      memset(v77, 0, 14);
      sub_1C0CF6468(a1, a2);
      v17 = v77;
      goto LABEL_42;
    }

    v76 = v6;
    v19 = v5;
    v20 = *(v14 + 16);
    v21 = *(v14 + 24);
    sub_1C0CF6468(a1, a2);
    v22 = sub_1C0D7812C();
    if (v22)
    {
      v23 = sub_1C0D7815C();
      if (__OFSUB__(v20, v23))
      {
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
      }

      v22 += v20 - v23;
    }

    if (__OFSUB__(v21, v20))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v24 = sub_1C0D7814C();
    if (v24 >= v21 - v20)
    {
      v25 = v21 - v20;
    }

    else
    {
      v25 = v24;
    }

    v26 = &v22[v25];
    if (v22)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    sub_1C0D20850(v22, v27, v78);
    v73 = v2;
    v5 = v19;
LABEL_40:
    v6 = v76;
    goto LABEL_43;
  }

  if (v16)
  {
    v76 = v6;
    v28 = v5;
    v29 = v14;
    v30 = v14 >> 32;
    v31 = v30 - v29;
    if (v30 < v29)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    sub_1C0CF6468(a1, a2);
    v32 = sub_1C0D7812C();
    if (v32)
    {
      v33 = sub_1C0D7815C();
      if (__OFSUB__(v29, v33))
      {
        goto LABEL_57;
      }

      v32 += v29 - v33;
    }

    v5 = v28;
    v34 = sub_1C0D7814C();
    if (v34 >= v31)
    {
      v35 = v31;
    }

    else
    {
      v35 = v34;
    }

    v36 = &v32[v35];
    if (v32)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    sub_1C0D20850(v32, v37, v78);
    v73 = v2;
    goto LABEL_40;
  }

  v77[0] = *v13;
  LOWORD(v77[1]) = v15;
  BYTE2(v77[1]) = BYTE2(v15);
  BYTE3(v77[1]) = BYTE3(v15);
  BYTE4(v77[1]) = BYTE4(v15);
  BYTE5(v77[1]) = BYTE5(v15);
  sub_1C0CF6468(a1, a2);
  v17 = v77 + BYTE6(v15);
LABEL_42:
  sub_1C0D20850(v77, v17, v78);
  v73 = v2;
LABEL_43:
  v38 = v78[0];
  v39 = v78[1];
  __swift_destroy_boxed_opaque_existential_1(&v79);
  v83 = v38;
  v84 = v39;
  v40 = objc_opt_self();
  sub_1C0D7884C();
  v75 = sub_1C0D30240(&qword_1EBE6D428, MEMORY[0x1E6966580], MEMORY[0x1E6966578]);
  sub_1C0D786EC();
  v41 = sub_1C0D786BC();
  v44 = *(v6 + 8);
  v43 = v6 + 8;
  v42 = v44;
  v44(v8, v5);
  v45 = [v40 groupOrderByteCountForCP_];
  if ((v45 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v46 = v45;
  v74 = v40;
  v47 = v83;
  v48 = v84;
  sub_1C0CF6468(v83, v84);
  sub_1C0D01560(v46, v47, v48, &v79);
  v50 = v79;
  v49 = v80;
  sub_1C0D22268(v46);
  LODWORD(v79) = 0;
  sub_1C0CF6468(v50, v49);
  sub_1C0D786EC();
  v51 = sub_1C0D786BC();
  v42(v8, v5);
  v52 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v53 = sub_1C0D7830C();
  v76 = v43;
  v54 = v5;
  v55 = v53;
  a1 = [v52 initWithData:v53 inGroup:v51 reduction:0 corecryptoError:&v79];

  sub_1C0CF448C(v50, v49);
  if (!a1)
  {
    v68 = v79;
    sub_1C0CF8DE0();
    swift_allocError();
    *v69 = v68;
    *(v69 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v50, v49);
    sub_1C0CF448C(v83, v84);
    return a1;
  }

  sub_1C0CF448C(v50, v49);
  sub_1C0D786EC();
  v56 = sub_1C0D786BC();
  v42(v8, v54);
  v57 = [v74 groupOrderByteCountForCP_];
  if ((v57 & 0x8000000000000000) != 0)
  {
    goto LABEL_52;
  }

  v58 = v57;
  v59 = v83;
  v60 = v84;
  sub_1C0CF6468(v83, v84);
  sub_1C0D01560(v58, v59, v60, &v79);
  v61 = v79;
  v62 = v80;
  sub_1C0D22268(v58);
  LODWORD(v79) = 0;
  sub_1C0CF6468(v61, v62);
  sub_1C0D786EC();
  v63 = sub_1C0D786BC();
  v42(v8, v54);
  v64 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v65 = sub_1C0D7830C();
  v66 = [v64 initWithData:v65 inGroup:v63 reduction:0 corecryptoError:&v79];

  sub_1C0CF448C(v61, v62);
  if (v66)
  {
    sub_1C0CF448C(v61, v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D7B0, &qword_1C0D7C8E8);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1C0D7B690;
    *(v67 + 32) = v66;
    sub_1C0CF448C(v83, v84);
  }

  else
  {
    v70 = v79;
    sub_1C0CF8DE0();
    swift_allocError();
    *v71 = v70;
    *(v71 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v61, v62);
    sub_1C0CF448C(v83, v84);
  }

  return a1;
}

void sub_1C0D2CD8C(_BYTE *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v174 = *MEMORY[0x1E69E9840];
  v7 = sub_1C0D786CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = MEMORY[0x1E6969080];
  v171 = MEMORY[0x1E6969078];
  v168 = a1;
  v169 = a2;
  v161 = a2;
  v11 = __swift_project_boxed_opaque_existential_1(&v168, MEMORY[0x1E6969080]);
  v12 = *v11;
  v13 = v11[1];
  v14 = v13 >> 62;
  v159 = a1;
  v152 = a3;
  if ((v13 >> 62) <= 1)
  {
    if (!v14)
    {
      v166[0] = v12;
      LOWORD(v166[1]) = v13;
      BYTE2(v166[1]) = BYTE2(v13);
      BYTE3(v166[1]) = BYTE3(v13);
      BYTE4(v166[1]) = BYTE4(v13);
      BYTE5(v166[1]) = BYTE5(v13);
      sub_1C0CF6468(a1, v161);
      v15 = v166;
      v16 = v166 + BYTE6(v13);
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  if (v14 != 2)
  {
    memset(v166, 0, 14);
    sub_1C0CF6468(a1, v161);
    v15 = v166;
    v16 = v166;
    goto LABEL_23;
  }

  v17 = *(v12 + 16);
  v18 = *(v12 + 24);
  sub_1C0CF6468(a1, v161);
  a1 = sub_1C0D7812C();
  if (a1)
  {
    v19 = sub_1C0D7815C();
    v12 = v17 - v19;
    if (__OFSUB__(v17, v19))
    {
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    a1 += v12;
  }

  v20 = __OFSUB__(v18, v17);
  v21 = v18 - v17;
  if (v20)
  {
    __break(1u);
LABEL_11:
    v22 = v12;
    v23 = v12 >> 32;
    v21 = v23 - v22;
    if (v23 < v22)
    {
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    sub_1C0CF6468(a1, v161);
    a1 = sub_1C0D7812C();
    if (a1)
    {
      v24 = sub_1C0D7815C();
      if (__OFSUB__(v22, v24))
      {
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      a1 += v22 - v24;
    }
  }

  v25 = sub_1C0D7814C();
  if (v25 >= v21)
  {
    v26 = v21;
  }

  else
  {
    v26 = v25;
  }

  v27 = &a1[v26];
  if (a1)
  {
    v16 = v27;
  }

  else
  {
    v16 = 0;
  }

  v15 = a1;
LABEL_23:
  sub_1C0D20850(v15, v16, v167);
  v151 = v3;
  v28 = v167[0];
  v29 = v167[1];
  __swift_destroy_boxed_opaque_existential_1(&v168);
  v172 = v28;
  v173 = v29;
  v30 = objc_opt_self();
  v31 = sub_1C0D7884C();
  v32 = sub_1C0D30240(&qword_1EBE6D428, MEMORY[0x1E6966580], MEMORY[0x1E6966578]);
  sub_1C0D786EC();
  v33 = sub_1C0D786BC();
  v36 = *(v8 + 8);
  v35 = v8 + 8;
  v34 = v36;
  v36(v10, v7);
  v164 = v30;
  v37 = [v30 compressedx962PointByteCountForCurveParameters_];
  if ((v37 & 0x8000000000000000) != 0)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v38 = v35;
  v39 = v7;
  v40 = v37;
  v41 = v172;
  v42 = v173;
  v165 = v38;
  sub_1C0CF6468(v172, v173);
  sub_1C0D01560(v40, v41, v42, &v168);
  v44 = v168;
  v43 = v169;
  sub_1C0D22268(v40);
  LODWORD(v168) = 0;
  sub_1C0CF6468(v44, v43);
  v160 = v31;
  v163 = v32;
  sub_1C0D786EC();
  v45 = sub_1C0D786BC();
  v162 = v39;
  v46 = v39;
  v47 = v34;
  v34(v10, v46);
  v48 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v49 = sub_1C0D7830C();
  v50 = [v48 initFromPublicKeyBytes:v49 inGroup:v45 compressed:1 corecryptoError:&v168];

  sub_1C0CF448C(v44, v43);
  if (!v50)
  {
    v54 = v168;
    sub_1C0CF8DE0();
    swift_allocError();
    *v55 = v54;
    *(v55 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v44, v43);
LABEL_65:
    sub_1C0CF448C(v172, v173);
    return;
  }

  sub_1C0CF448C(v44, v43);
  v51 = v161 >> 62;
  v153 = v50;
  if ((v161 >> 62) <= 1)
  {
    v52 = v162;
    if (!v51)
    {
      v53 = BYTE6(v161);
      goto LABEL_36;
    }

    goto LABEL_33;
  }

  v52 = v162;
  if (v51 != 2)
  {
    v53 = 0;
    goto LABEL_36;
  }

  v57 = *(v159 + 16);
  v56 = *(v159 + 24);
  v53 = v56 - v57;
  if (__OFSUB__(v56, v57))
  {
    __break(1u);
LABEL_33:
    if (__OFSUB__(HIDWORD(v159), v159))
    {
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    v53 = HIDWORD(v159) - v159;
  }

LABEL_36:
  sub_1C0D786EC();
  v58 = sub_1C0D786BC();
  v47(v10, v52);
  v59 = [v164 compressedx962PointByteCountForCurveParameters_];
  if ((v59 & 0x8000000000000000) != 0)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v60 = v53 - v59;
  if (__OFSUB__(v53, v59))
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  sub_1C0D786EC();
  v61 = sub_1C0D786BC();
  v47(v10, v52);
  v62 = [v164 groupOrderByteCountForCP_];
  if (v62 < 0)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v63 = 3 * v62;
  if ((v62 * 3) >> 64 != (3 * v62) >> 63)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v20 = __OFSUB__(v60, v63);
  v64 = v60 - v63;
  if (v20)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  sub_1C0D786EC();
  v65 = sub_1C0D786BC();
  v47(v10, v52);
  v66 = [v164 groupOrderByteCountForCP_];
  if (v66 < 0)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  if (v66 + 0x4000000000000000 < 0)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  if (!v66)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  if (v51 <= 1)
  {
    if (!v51)
    {
      v67 = BYTE6(v161);
      goto LABEL_54;
    }

    goto LABEL_51;
  }

  if (v51 != 2)
  {
    v67 = 0;
    goto LABEL_54;
  }

  v69 = *(v159 + 16);
  v68 = *(v159 + 24);
  v67 = v68 - v69;
  if (__OFSUB__(v68, v69))
  {
    __break(1u);
LABEL_51:
    if (__OFSUB__(HIDWORD(v159), v159))
    {
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    v67 = HIDWORD(v159) - v159;
  }

LABEL_54:
  v70 = v64 / (2 * v66);
  if (v67 != sub_1C0D3ACBC(v70))
  {
    sub_1C0D2FE30();
    swift_allocError();
    *v86 = 1;
    swift_willThrow();

    goto LABEL_65;
  }

  v167[0] = MEMORY[0x1E69E7CC0];
  v166[0] = MEMORY[0x1E69E7CC0];
  if (v70 < 0)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v156 = v70;
  if (!v70)
  {
    v159 = MEMORY[0x1E69E7CC0];
    v157 = MEMORY[0x1E69E7CC0];
    goto LABEL_76;
  }

  v159 = MEMORY[0x1E69E7CC0];
  v71 = v70;
  do
  {
    sub_1C0D786EC();
    v72 = sub_1C0D786BC();
    v47(v10, v52);
    v73 = [v164 groupOrderByteCountForCP_];
    if ((v73 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    v74 = v52;
    v75 = v73;
    v161 = v71;
    v76 = v172;
    v77 = v173;
    sub_1C0CF6468(v172, v173);
    sub_1C0D01560(v75, v76, v77, &v168);
    v78 = v168;
    v79 = v169;
    sub_1C0D22268(v75);
    LODWORD(v168) = 0;
    sub_1C0CF6468(v78, v79);
    sub_1C0D786EC();
    v80 = sub_1C0D786BC();
    v47(v10, v74);
    v81 = objc_allocWithZone(MEMORY[0x1E6999650]);
    v82 = sub_1C0D7830C();
    v83 = [v81 initWithData:v82 inGroup:v80 reduction:0 corecryptoError:&v168];

    sub_1C0CF448C(v78, v79);
    if (!v83)
    {
      v87 = v168;
      sub_1C0CF8DE0();
      swift_allocError();
      *v88 = v87;
      *(v88 + 4) = 0;
      swift_willThrow();

      sub_1C0CF448C(v78, v79);
      sub_1C0CF448C(v172, v173);

      return;
    }

    v84 = sub_1C0CF448C(v78, v79);
    MEMORY[0x1C68E3BD0](v84);
    v85 = v161;
    if (*(v167[0] + 16) >= *(v167[0] + 24) >> 1)
    {
      sub_1C0D78C0C();
    }

    sub_1C0D78C3C();
    v159 = v167[0];
    v71 = v85 - 1;
    v52 = v162;
  }

  while (v71);
  v89 = 0;
  v90 = MEMORY[0x1E69E7CC0];
  v154 = v10;
  v155 = v47;
  do
  {
    if (__OFADD__(v89, 1))
    {
      goto LABEL_88;
    }

    v158 = v89 + 1;
    v161 = v89;
    sub_1C0D786EC();
    v91 = sub_1C0D786BC();
    v47(v10, v52);
    v92 = [v164 groupOrderByteCountForCP_];
    if ((v92 & 0x8000000000000000) != 0)
    {
      goto LABEL_89;
    }

    v93 = v52;
    v94 = v92;
    v157 = v90;
    v95 = v172;
    v96 = v173;
    sub_1C0CF6468(v172, v173);
    sub_1C0D01560(v94, v95, v96, &v168);
    v98 = v168;
    v97 = v169;
    sub_1C0D22268(v94);
    LODWORD(v168) = 0;
    sub_1C0CF6468(v98, v97);
    sub_1C0D786EC();
    v99 = sub_1C0D786BC();
    v100 = v10;
    v101 = v155;
    v155(v100, v93);
    v102 = objc_allocWithZone(MEMORY[0x1E6999650]);
    v103 = sub_1C0D7830C();
    v104 = [v102 initWithData:v103 inGroup:v99 reduction:0 corecryptoError:&v168];

    sub_1C0CF448C(v98, v97);
    if (!v104)
    {
      v106 = v168;
      sub_1C0CF8DE0();
      swift_allocError();
      *v107 = v106;
      *(v107 + 4) = 0;
      swift_willThrow();

      sub_1C0CF448C(v98, v97);
      sub_1C0CF448C(v172, v173);

      return;
    }

    v47 = v101;
    v105 = sub_1C0CF448C(v98, v97);
    MEMORY[0x1C68E3BD0](v105);
    if (*(v166[0] + 16) >= *(v166[0] + 24) >> 1)
    {
      sub_1C0D78C0C();
    }

    sub_1C0D78C3C();
    v90 = v166[0];
    v52 = v162;
    v89 = v161 + 1;
    v10 = v154;
  }

  while (v158 != v156);
  v157 = v166[0];
LABEL_76:
  sub_1C0D786EC();
  v108 = sub_1C0D786BC();
  v47(v10, v52);
  v109 = [v164 groupOrderByteCountForCP_];
  if ((v109 & 0x8000000000000000) != 0)
  {
    goto LABEL_101;
  }

  v110 = v109;
  v111 = v172;
  v112 = v173;
  sub_1C0CF6468(v172, v173);
  sub_1C0D01560(v110, v111, v112, &v168);
  v113 = v168;
  v114 = v169;
  sub_1C0D22268(v110);
  LODWORD(v168) = 0;
  sub_1C0CF6468(v113, v114);
  sub_1C0D786EC();
  v115 = sub_1C0D786BC();
  v47(v10, v162);
  v116 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v117 = sub_1C0D7830C();
  v118 = [v116 initWithData:v117 inGroup:v115 reduction:0 corecryptoError:&v168];

  sub_1C0CF448C(v113, v114);
  if (!v118)
  {
    v144 = v168;
    sub_1C0CF8DE0();
    swift_allocError();
    *v145 = v144;
    *(v145 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v113, v114);
    sub_1C0CF448C(v172, v173);

    v146 = v153;
    goto LABEL_86;
  }

  v163 = v118;
  sub_1C0CF448C(v113, v114);
  sub_1C0D786EC();
  v119 = sub_1C0D786BC();
  v47(v10, v162);
  v120 = [v164 groupOrderByteCountForCP_];
  if ((v120 & 0x8000000000000000) != 0)
  {
    goto LABEL_106;
  }

  v121 = v120;
  v122 = v172;
  v123 = v173;
  sub_1C0CF6468(v172, v173);
  sub_1C0D01560(v121, v122, v123, &v168);
  v124 = v168;
  v125 = v169;
  sub_1C0D22268(v121);
  LODWORD(v168) = 0;
  sub_1C0CF6468(v124, v125);
  sub_1C0D786EC();
  v126 = sub_1C0D786BC();
  v47(v10, v162);
  v127 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v128 = sub_1C0D7830C();
  v129 = [v127 initWithData:v128 inGroup:v126 reduction:0 corecryptoError:&v168];

  sub_1C0CF448C(v124, v125);
  if (!v129)
  {
    v147 = v168;
    sub_1C0CF8DE0();
    swift_allocError();
    *v148 = v147;
    *(v148 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v124, v125);
    sub_1C0CF448C(v172, v173);

    v146 = v163;
    goto LABEL_86;
  }

  v161 = v129;
  sub_1C0CF448C(v124, v125);
  sub_1C0D786EC();
  v130 = sub_1C0D786BC();
  v47(v10, v162);
  v131 = [v164 groupOrderByteCountForCP_];
  if ((v131 & 0x8000000000000000) != 0)
  {
LABEL_107:
    __break(1u);
  }

  v132 = v131;
  v133 = v172;
  v134 = v173;
  sub_1C0CF6468(v172, v173);
  sub_1C0D01560(v132, v133, v134, &v168);
  v135 = v168;
  v136 = v169;
  sub_1C0D22268(v132);
  LODWORD(v168) = 0;
  sub_1C0CF6468(v135, v136);
  sub_1C0D786EC();
  v137 = sub_1C0D786BC();
  v47(v10, v162);
  v138 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v139 = sub_1C0D7830C();
  v140 = [v138 initWithData:v139 inGroup:v137 reduction:0 corecryptoError:&v168];

  sub_1C0CF448C(v135, v136);
  if (v140)
  {
    sub_1C0CF448C(v135, v136);
    sub_1C0CF448C(v172, v173);
    v141 = v152;
    v142 = v159;
    *v152 = v153;
    v141[1] = v142;
    v143 = v163;
    v141[2] = v157;
    v141[3] = v143;
    v141[4] = v161;
    v141[5] = v140;
    v141[6] = v156;
    return;
  }

  v149 = v168;
  sub_1C0CF8DE0();
  swift_allocError();
  *v150 = v149;
  *(v150 + 4) = 0;
  swift_willThrow();
  sub_1C0CF448C(v135, v136);
  sub_1C0CF448C(v172, v173);

  v146 = v161;
LABEL_86:
}

void *sub_1C0D2DEAC(uint64_t a1)
{
  v90 = *MEMORY[0x1E69E9840];
  v4 = *(v1[2] + 16);
  if (v4 != *(v1[3] + 16) || (v5 = v1[4], v6 = v1[5], v7 = *(v5 + 16), v7 != *(v6 + 16)))
  {
    sub_1C0D30124();
    swift_allocError();
    v53 = 2;
    goto LABEL_41;
  }

  if (*(a1 + 16) != v4)
  {
    sub_1C0D30124();
    swift_allocError();
    v53 = 1;
LABEL_41:
    *v52 = v53;
LABEL_42:
    swift_willThrow();
    return v3;
  }

  v70 = v1[2];
  v8 = MEMORY[0x1E69E7CC0];
  v89 = MEMORY[0x1E69E7CC0];
  v9 = v1[6];
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v9 + 32;
    v81 = a1 + 32;
    v84 = v5 + 32;
    v78 = v6 + 32;
    v13 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v14 = (v12 + 16 * v11);
      v15 = *v14;
      if (*v14 >= v7)
      {
LABEL_45:

        sub_1C0D30124();
        swift_allocError();
        *v55 = 0;
        goto LABEL_42;
      }

      v82 = v13;
      v16 = v14[1];
      v17 = v11 + 1;
      v18 = v16[2];
      v19 = v16 + 5;
      v20 = v18 + 1;
      while (--v20)
      {
        v21 = *(v19 - 1);
        v22 = *v19;
        v19 += 2;
        if (v21 >= v4 || v22 >= v7)
        {
          goto LABEL_45;
        }
      }

      if (!v18)
      {
        goto LABEL_61;
      }

      v24 = v16[4];
      if (v24 >= v4)
      {
        goto LABEL_62;
      }

      v71 = v15;
      v72 = v12;
      v73 = v17;
      v74 = v10;
      v75 = v5;
      v76 = a1;
      v77 = v2;
      v25 = v16[5];
      v83 = v7;
      if (v25 >= v7)
      {
        goto LABEL_63;
      }

      v26 = *(v81 + 8 * v24);
      v27 = *(v84 + 8 * v25);
      sub_1C0D78BFC();
      v28 = v26;
      v29 = v27;
      v30 = sub_1C0D13834(v28, v29);

      if (v16[2] < v18)
      {
        goto LABEL_64;
      }

      v31 = v18 - 1;
      if (v18 != 1)
      {
        v69 = v30;
        v79 = v1;
        v88 = v8;
        sub_1C0D78E3C();
        v32 = v16 + 7;
        while (1)
        {
          v33 = *(v32 - 1);
          if (v33 >= v4)
          {
            break;
          }

          if (*v32 >= v83)
          {
            goto LABEL_59;
          }

          v34 = *(v81 + 8 * v33);
          v35 = *(v84 + 8 * *v32);
          v87 = 0;
          v36 = v34;
          v37 = v35;
          if (![v37 multiply:v36 corecryptoError:&v87])
          {
            goto LABEL_68;
          }

          v32 += 2;

          sub_1C0D78E0C();
          sub_1C0D78E4C();
          sub_1C0D78E5C();
          sub_1C0D78E1C();
          if (!--v31)
          {

            v38 = v88;
            v1 = v79;
            v30 = v69;
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
      }

      v38 = v8;
LABEL_27:
      v39 = *(v38 + 16);
      v40 = v30;
      v80 = v40;
      if (v39)
      {
        break;
      }

LABEL_32:

      v46 = v40;
      MEMORY[0x1C68E3BD0]();
      if (*(v89 + 16) >= *(v89 + 24) >> 1)
      {
        sub_1C0D78C0C();
      }

      sub_1C0D78C3C();
      v47 = v89;
      v48 = (v78 + 16 * v71);
      v85 = *v48;
      v86 = v48[1];
      swift_bridgeObjectRetain_n();
      MEMORY[0x1C68E3B00](0x646E696C622DLL, 0xE600000000000000);

      v13 = v82;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1C0CF49E8(0, *(v82 + 2) + 1, 1, v82);
      }

      v50 = *(v13 + 2);
      v49 = *(v13 + 3);
      v3 = (v50 + 1);
      if (v50 >= v49 >> 1)
      {
        v13 = sub_1C0CF49E8((v49 > 1), v50 + 1, 1, v13);
      }

      *(v13 + 2) = v3;
      v51 = &v13[16 * v50];
      *(v51 + 4) = v85;
      *(v51 + 5) = v86;
      v11 = v73;
      v10 = v74;
      a1 = v76;
      v2 = v77;
      v8 = MEMORY[0x1E69E7CC0];
      v5 = v75;
      v7 = v83;
      v12 = v72;
      if (v73 == v74)
      {
        goto LABEL_47;
      }
    }

    v41 = 0;
    v42 = v40;
    while (1)
    {
      if (v41 >= *(v38 + 16))
      {
        goto LABEL_60;
      }

      v43 = *(v38 + 32 + 8 * v41);
      LODWORD(v88) = 0;
      v44 = v43;
      v45 = [v42 add:v44 corecryptoError:&v88];
      if (!v45)
      {
        break;
      }

      v40 = v45;

      ++v41;
      v42 = v40;
      if (v39 == v41)
      {
        goto LABEL_32;
      }
    }

    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD00000000000003CLL, 0x80000001C0D80790);
    v87 = v88;
    v66 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v66);

    goto LABEL_69;
  }

  v47 = MEMORY[0x1E69E7CC0];
LABEL_47:
  v56 = a1;
  sub_1C0D2EDD0(*v1, v1[1], v5, v47);
  if (v2)
  {

    return v3;
  }

  v3 = v57;

  v88 = v8;
  if (!v4)
  {
    return v3;
  }

  v58 = (v70 + 32);
  for (i = (v56 + 32); ; ++i)
  {
    v60 = *v58;
    v61 = *i;
    v87 = 0;
    v62 = v60;
    v63 = v61;
    v64 = [v3 multiply:v62 corecryptoError:&v87];
    if (!v64)
    {
      break;
    }

    v65 = v64;
    v87 = 0;
    if (![v63 sub:v64 corecryptoError:&v87])
    {
      sub_1C0D78DAC();
      MEMORY[0x1C68E3B00](0xD000000000000040, 0x80000001C0D80CE0);
      v67 = sub_1C0D78F2C();
      MEMORY[0x1C68E3B00](v67);

      goto LABEL_69;
    }

    MEMORY[0x1C68E3BD0]();
    if (*(v88 + 16) >= *(v88 + 24) >> 1)
    {
      sub_1C0D78C0C();
    }

    sub_1C0D78C3C();

    ++v58;
    if (!--v4)
    {
      return v3;
    }
  }

LABEL_68:
  sub_1C0D78DAC();
  MEMORY[0x1C68E3B00](0xD000000000000042, 0x80000001C0D807D0);
  v68 = sub_1C0D78F2C();
  MEMORY[0x1C68E3B00](v68);

LABEL_69:
  result = sub_1C0D78EBC();
  __break(1u);
  return result;
}

void sub_1C0D2E720(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v9 = *a1;
  v8 = a1[1];
  v11 = a1[2];
  v10 = a1[3];
  v12 = a1[4];
  v13 = sub_1C0D13834(*a1, a2);

  v14 = sub_1C0D13834(v10, a3);
  v36 = sub_1C0D1388C(v13, v14);

  v15 = sub_1C0D13834(v8, a2);
  v16 = sub_1C0D13834(v12, a3);

  v17 = sub_1C0D1388C(v15, v16);
  v18 = sub_1C0D13834(v11, a2);
  v19 = sub_1C0D78F2C();
  strcpy(&v37, "ATHMV1-P256-");
  BYTE13(v37) = 0;
  HIWORD(v37) = -5120;
  MEMORY[0x1C68E3B00](v19);

  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](45, 0xE100000000000000);

  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](a4, a5);

  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](0x696D6D6F4379654BLL, 0xEE0073746E656D74);

  *&v38 = MEMORY[0x1E69E7CC0];
  *(&v38 + 1) = MEMORY[0x1E69E7CC0];
  *&v39 = MEMORY[0x1E69E7CC0];
  *(&v39 + 1) = MEMORY[0x1E69E7CC0];
  v40 = MEMORY[0x1E69E7CC0];
  v20 = sub_1C0D21940(122, 0xE100000000000000, v11);

  v21 = sub_1C0D2EAB0(0x6F746172656E6567, 0xEA00000000004772, a2, &v37);
  v22 = sub_1C0D2EAB0(90, 0xE100000000000000, v18, &v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4D8, &qword_1C0D7C030);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C0D7B690;
  *(v23 + 32) = v20;
  *(v23 + 40) = v21;
  v24 = v40;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_1C0CF4AF4(0, v24[2] + 1, 1, v24);
  }

  v26 = v24[2];
  v25 = v24[3];
  if (v26 >= v25 >> 1)
  {
    v24 = sub_1C0CF4AF4((v25 > 1), v26 + 1, 1, v24);
  }

  v24[2] = v26 + 1;
  v27 = &v24[2 * v26];
  v27[4] = v22;
  v27[5] = v23;
  v40 = v24;
  v42 = v24;
  v41[0] = v37;
  v41[1] = v38;
  v41[2] = v39;
  v28 = v43;
  v29 = sub_1C0D21A5C();
  if (v28)
  {

    sub_1C0D13578(v41, &qword_1EBE6D4E0, &qword_1C0D7C038);
  }

  else
  {
    v31 = v29;
    v32 = v30;
    sub_1C0D13578(v41, &qword_1EBE6D4E0, &qword_1C0D7C038);
    *a6 = v36;
    a6[1] = v17;
    a6[2] = v18;
    a6[3] = v31;
    a6[4] = v32;
  }
}

uint64_t sub_1C0D2EAB0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D478, &unk_1C0D7C850);
  v17[4] = sub_1C0D30178();
  v17[0] = a3;
  v8 = *(a4 + 40);
  v9 = a3;
  sub_1C0D78BFC();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1C0CF49E8(0, *(v8 + 2) + 1, 1, v8);
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1C0CF49E8((v10 > 1), v11 + 1, 1, v8);
  }

  *(v8 + 2) = v11 + 1;
  v12 = &v8[16 * v11];
  *(v12 + 4) = a1;
  *(v12 + 5) = a2;
  *(a4 + 40) = v8;
  sub_1C0D301DC(v17, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D7A8, &qword_1C0D7C8E0);
  v13 = swift_dynamicCast();
  MEMORY[0x1C68E3BD0](v13);
  if (*(*(a4 + 32) + 16) >= *(*(a4 + 32) + 24) >> 1)
  {
    sub_1C0D78C0C();
  }

  sub_1C0D78C3C();
  v14 = *(*(a4 + 32) + 16) - 1;
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v14;
}

uint64_t sub_1C0D2EC40(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D478, &unk_1C0D7C850);
  v17[4] = sub_1C0D30178();
  v17[0] = a3;
  v8 = *(a4 + 32);
  v9 = a3;
  sub_1C0D78BFC();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1C0CF49E8(0, *(v8 + 2) + 1, 1, v8);
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1C0CF49E8((v10 > 1), v11 + 1, 1, v8);
  }

  *(v8 + 2) = v11 + 1;
  v12 = &v8[16 * v11];
  *(v12 + 4) = a1;
  *(v12 + 5) = a2;
  *(a4 + 32) = v8;
  sub_1C0D301DC(v17, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D7A8, &qword_1C0D7C8E0);
  v13 = swift_dynamicCast();
  MEMORY[0x1C68E3BD0](v13);
  if (*(*(a4 + 24) + 16) >= *(*(a4 + 24) + 24) >> 1)
  {
    sub_1C0D78C0C();
  }

  sub_1C0D78C3C();
  v14 = *(*(a4 + 24) + 16) - 1;
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v14;
}

void sub_1C0D2EDD0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v56 = xmmword_1C0D7BAB0;
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = (a3 + 32);
    while (1)
    {
      v15 = *v5;
      v16 = [v15 serializedPublicKey_];
      if (!v16)
      {
        break;
      }

      v17 = v16;
      v18 = sub_1C0D7832C();
      v20 = v19;

      v21 = v20 >> 62;
      if ((v20 >> 62) > 1)
      {
        if (v21 == 2)
        {
          v23 = *(v18 + 16);
          v22 = *(v18 + 24);
          v6 = v22 - v23;
          if (__OFSUB__(v22, v23))
          {
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            break;
          }
        }

        else
        {
          v6 = 0;
        }
      }

      else if (v21)
      {
        if (__OFSUB__(HIDWORD(v18), v18))
        {
          goto LABEL_30;
        }

        v6 = HIDWORD(v18) - v18;
      }

      else
      {
        v6 = BYTE6(v20);
      }

      v7 = sub_1C0D053E8(v6, 2);
      v9 = v8;
      v54 = v7;
      v55 = v8;
      v52 = MEMORY[0x1E6969080];
      v53 = MEMORY[0x1E6969078];
      v50 = v18;
      v51 = v20;
      v10 = __swift_project_boxed_opaque_existential_1(&v50, MEMORY[0x1E6969080]);
      v12 = *v10;
      v11 = v10[1];
      sub_1C0CF6468(v7, v9);
      sub_1C0CF6468(v18, v20);
      sub_1C0D4268C(v12, v11, &v54);
      sub_1C0CF448C(v7, v9);
      __swift_destroy_boxed_opaque_existential_1(&v50);
      v13 = v54;
      v14 = v55;
      sub_1C0D7834C();
      sub_1C0CF448C(v13, v14);
      sub_1C0CF448C(v18, v20);
      ++v5;
      if (!--v4)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    v24 = *(v57 + 16);
    if (!v24)
    {
LABEL_29:
      v44 = v56;
      sub_1C0D78BFC();
      v45 = sub_1C0D07698(a1, a2);
      v47 = v46;
      sub_1C0D0E630(v44, *(&v44 + 1), v45, v46);
      sub_1C0CF448C(v45, v47);
      sub_1C0CF448C(v44, *(&v44 + 1));
      return;
    }

    v25 = (v57 + 32);
    while (1)
    {
      v35 = *v25;
      v36 = [v35 serializedPublicKey_];
      if (!v36)
      {
        break;
      }

      v37 = v36;
      v38 = sub_1C0D7832C();
      v40 = v39;

      v41 = v40 >> 62;
      if ((v40 >> 62) > 1)
      {
        if (v41 == 2)
        {
          v43 = *(v38 + 16);
          v42 = *(v38 + 24);
          v26 = v42 - v43;
          if (__OFSUB__(v42, v43))
          {
            goto LABEL_31;
          }
        }

        else
        {
          v26 = 0;
        }
      }

      else if (v41)
      {
        if (__OFSUB__(HIDWORD(v38), v38))
        {
          goto LABEL_32;
        }

        v26 = HIDWORD(v38) - v38;
      }

      else
      {
        v26 = BYTE6(v40);
      }

      v27 = sub_1C0D053E8(v26, 2);
      v29 = v28;
      v54 = v27;
      v55 = v28;
      v52 = MEMORY[0x1E6969080];
      v53 = MEMORY[0x1E6969078];
      v50 = v38;
      v51 = v40;
      v30 = __swift_project_boxed_opaque_existential_1(&v50, MEMORY[0x1E6969080]);
      v32 = *v30;
      v31 = v30[1];
      sub_1C0CF6468(v27, v29);
      sub_1C0CF6468(v38, v40);
      sub_1C0D4268C(v32, v31, &v54);
      sub_1C0CF448C(v27, v29);
      __swift_destroy_boxed_opaque_existential_1(&v50);
      v33 = v54;
      v34 = v55;
      sub_1C0D7834C();
      sub_1C0CF448C(v33, v34);
      sub_1C0CF448C(v38, v40);
      ++v25;
      if (!--v24)
      {
        goto LABEL_29;
      }
    }
  }

  __break(1u);
}

id sub_1C0D2F14C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v49 = *MEMORY[0x1E69E9840];
  v43 = sub_1C0D786CC();
  v14 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  v41 = sub_1C0D2BFF8(*(a1 + 16), a3);
  v17 = *a1;
  v18 = sub_1C0D13834(a7, *a1);
  v44 = a4;
  v19 = sub_1C0D13834(a4, v17);
  v42 = *(a1 + 8);
  v20 = sub_1C0D2BEDC(v42, v19);

  v21 = sub_1C0D13834(a7, v20);
  v48 = 0;
  v22 = [v18 add:v18 corecryptoError:&v48];
  if (v22)
  {
    v23 = v22;
    v24 = (v14 + 8);
    while (1)
    {
      v25 = [v18 isEqual_];

      if ((v25 & 1) == 0)
      {

        return v41;
      }

      sub_1C0D7884C();
      sub_1C0D30240(&qword_1EBE6D428, MEMORY[0x1E6966580], MEMORY[0x1E6966578]);
      sub_1C0D786EC();
      v26 = sub_1C0D786BC();
      (*v24)(v16, v43);
      v27 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];

      if (!v27)
      {
        __break(1u);
      }

      v48 = 0;
      v28 = [v17 multiply:v27 corecryptoError:&v48];
      if (!v28 || (v29 = v28, v18, v48 = 0, (v30 = [v17 multiply:v44 corecryptoError:&v48]) == 0))
      {
LABEL_13:
        v46 = 0;
        v47 = 0xE000000000000000;
        sub_1C0D78DAC();
        MEMORY[0x1C68E3B00](0xD000000000000042, 0x80000001C0D807D0);
        v45 = v48;
        v38 = sub_1C0D78F2C();
        MEMORY[0x1C68E3B00](v38);

        goto LABEL_15;
      }

      v31 = v30;
      v48 = 0;
      v32 = [v42 sub:v30 corecryptoError:&v48];
      if (!v32)
      {
        break;
      }

      v33 = v32;

      v48 = 0;
      v34 = [v33 multiply:v27 corecryptoError:&v48];
      if (!v34)
      {
        goto LABEL_13;
      }

      v35 = v34;

      v48 = 0;
      v23 = [v29 add:v29 corecryptoError:&v48];
      a7 = v27;
      v18 = v29;
      v21 = v35;
      if (!v23)
      {
        goto LABEL_10;
      }
    }

    v46 = 0;
    v47 = 0xE000000000000000;
    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD00000000000003FLL, 0x80000001C0D80820);
    v45 = v48;
    v39 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v39);
  }

  else
  {
LABEL_10:
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD00000000000003CLL, 0x80000001C0D80790);
    v45 = v48;
    v36 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v36);
  }

LABEL_15:
  result = sub_1C0D78EBC();
  __break(1u);
  return result;
}

void sub_1C0D2F670(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, void *a6, void *a7)
{
  v60 = a7;
  v61 = a6;
  v58 = a3;
  v59 = a5;
  v56 = a1;
  v57 = a2;
  v66 = *MEMORY[0x1E69E9840];
  v8 = sub_1C0D786CC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 <= 0)
  {
    sub_1C0D2FE30();
    swift_allocError();
    *v19 = 0;
    goto LABEL_6;
  }

  v12 = v61;
  v13 = sub_1C0D1388C(v61, v61);
  v14 = [v12 isEqual_];

  if (v14 & 1) != 0 || (v15 = v60, v16 = sub_1C0D1388C(v60, v60), v17 = [v15 isEqual_], v16, (v17))
  {
LABEL_4:
    sub_1C0D2FE30();
    swift_allocError();
    *v18 = 6;
LABEL_6:
    swift_willThrow();
    return;
  }

  v20 = 0;
  v21 = (v9 + 8);
  v22 = -1;
  v54 = v8;
  v55 = a4;
  v52 = (v9 + 8);
  v53 = v11;
LABEL_8:
  v51 = v22;
  do
  {
    if (v20 >= a4)
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    if (__OFADD__(v20, 1))
    {
      goto LABEL_25;
    }

    v62 = v20 + 1;
    v64 = v20;
    sub_1C0D7884C();
    sub_1C0D30240(&qword_1EBE6D428, MEMORY[0x1E6966580], MEMORY[0x1E6966578]);
    sub_1C0D786EC();
    v23 = sub_1C0D786BC();
    v24 = *v21;
    (*v21)(v11, v8);
    v63 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
    if (!v63)
    {
      goto LABEL_27;
    }

    v25 = objc_opt_self();
    sub_1C0D786EC();
    v26 = sub_1C0D786BC();
    v24(v11, v8);
    v27 = [v25 groupOrderByteCountForCP_];
    if (v27 < 0)
    {
      goto LABEL_26;
    }

    v28 = sub_1C0D053E8(v64, v27);
    v30 = v29;
    v65 = 0;
    sub_1C0CF6468(v28, v29);
    sub_1C0D786EC();
    v31 = sub_1C0D786BC();
    v24(v11, v8);
    v32 = objc_allocWithZone(MEMORY[0x1E6999650]);
    v33 = sub_1C0D7830C();
    v34 = [v32 initWithData:v33 inGroup:v31 reduction:1 corecryptoError:&v65];

    sub_1C0CF448C(v28, v30);
    if (!v34)
    {
      v47 = v65;
      sub_1C0CF8DE0();
      swift_allocError();
      *v48 = v47;
      *(v48 + 4) = 0;
      swift_willThrow();
      sub_1C0CF448C(v28, v30);

      return;
    }

    sub_1C0CF448C(v28, v30);
    v35 = v63;
    v36 = sub_1C0D2BFF8(v34, v63);

    v37 = sub_1C0D23BD0(v59, v58);
    v38 = sub_1C0D2BFF8(v56, v37);

    v39 = v57;
    v40 = sub_1C0D23BD0(v36, v57);
    v41 = sub_1C0D2BFF8(v38, v40);

    v42 = v61;
    v43 = sub_1C0D13834(v41, v61);

    v44 = sub_1C0D23BD0(v35, v39);
    v45 = sub_1C0D13834(v44, v42);

    v46 = sub_1C0D2BEDC(v43, v45);
    if ([v60 isEqual_])
    {
      v8 = v54;
      a4 = v55;
      v21 = v52;
      v11 = v53;
      if (v51 == -1)
      {

        v20 = v62;
        v22 = v64;
        if (v62 != a4)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_1C0D2FE30();
        swift_allocError();
        *v49 = 6;
        swift_willThrow();
      }

      return;
    }

    v20 = v64 + 1;
    v8 = v54;
    a4 = v55;
    v21 = v52;
    v11 = v53;
  }

  while (v62 != v55);
  if (v51 == -1)
  {
    goto LABEL_4;
  }
}

uint64_t _s16CryptoKitPrivate18ATHMKeyCommitmentsC6verify03keyE4Data10numBuckets12deploymentIDSb10Foundation0H0V_SiSStFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v10 = sub_1C0D23CF0(v14, 3, a3, a4, a5);
  v11 = v14[0];
  sub_1C0D23FF4(a1, a2, v14);
  LOBYTE(v5) = sub_1C0D24920(v10, v11, a3, a4, v5);

  v19 = v14[0];
  sub_1C0D13578(&v19, &qword_1EBE6D478, &unk_1C0D7C850);
  v18 = v14[1];
  sub_1C0D13578(&v18, &qword_1EBE6D478, &unk_1C0D7C850);
  v17 = v14[2];
  sub_1C0D13578(&v17, &qword_1EBE6D478, &unk_1C0D7C850);
  v13 = v14[4];
  v16 = v14[3];
  sub_1C0D13578(&v16, &qword_1EBE6D480, &unk_1C0D7BF30);
  v15 = v13;
  sub_1C0D13578(&v15, &qword_1EBE6D488, &qword_1C0D7C860);
  return v5 & 1;
}

unint64_t sub_1C0D2FE30()
{
  result = qword_1EBE6D770;
  if (!qword_1EBE6D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6D770);
  }

  return result;
}

unint64_t sub_1C0D30124()
{
  result = qword_1EBE6D798;
  if (!qword_1EBE6D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6D798);
  }

  return result;
}

unint64_t sub_1C0D30178()
{
  result = qword_1EBE6D7A0;
  if (!qword_1EBE6D7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE6D478, &unk_1C0D7C850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6D7A0);
  }

  return result;
}

uint64_t sub_1C0D301DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C0D30240(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1C0D30290(void *a1, uint64_t a2)
{

  return sub_1C0CEACF0(a1, a2);
}

id sub_1C0D302E8(void *a1, uint64_t a2)
{

  return sub_1C0CEAD48(a1, a2);
}

uint64_t sub_1C0D30340(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_getAssociatedConformanceWitness();
    result = swift_getAssociatedTypeWitness();
    if (v6 <= 0x3F)
    {
      result = _s13ResponseProofVMa(319, v2, v1, v5);
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C0D30494(int *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  swift_getAssociatedConformanceWitness();
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v6 + 80);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  if (v9 <= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = *(v8 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v10 + v11;
  v16 = v11 | v12 | 7;
  v17 = v16 + v13;
  v18 = v10 + 7;
  if (v14 >= a2)
  {
    goto LABEL_29;
  }

  v19 = ((v17 + ((v10 + v12 + (v15 & ~v11)) & ~v12)) & ~v16) + ((v13 + ((v13 + v12 + ((v13 + v12 + (((((v18 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12)) & ~v12)) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v20 = v19 & 0xFFFFFFF8;
  if ((v19 & 0xFFFFFFF8) != 0)
  {
    v21 = 2;
  }

  else
  {
    v21 = a2 - v14 + 1;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v26 = v24 - 1;
    if (v20)
    {
      v26 = 0;
      v27 = *a1;
    }

    else
    {
      v27 = 0;
    }

    return v14 + (v27 | v26) + 1;
  }

  if (v23)
  {
    v24 = *(a1 + v19);
    if (v24)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v7 == v14)
  {
    v28 = *(v6 + 48);

    return v28(a1, v7, AssociatedTypeWitness);
  }

  else
  {
    v29 = (((a1 + v15) & ~v11) + v10 + v12) & ~v12;
    if (v9 == v14)
    {
      v30 = *(v8 + 48);

      return v30(v29);
    }

    else
    {
      v31 = *((v18 + ((v17 + v29) & ~v16)) & 0xFFFFFFFFFFFFFFF8);
      if (v31 >= 0xFFFFFFFF)
      {
        LODWORD(v31) = -1;
      }

      return (v31 + 1);
    }
  }
}

void sub_1C0D30824(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  swift_getAssociatedConformanceWitness();
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v8 + 80);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (v11 <= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = *(v10 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  v17 = v13 | v14 | 7;
  v18 = v17 + v15;
  v19 = v12 + 7;
  v20 = ((v17 + v15 + ((v12 + v14 + ((v12 + v13) & ~v13)) & ~v14)) & ~v17) + ((v15 + ((v15 + v14 + ((v15 + v14 + ((((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v14 + 8) & ~v14)) & ~v14)) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v16 >= a3)
  {
    v23 = 0;
    v24 = a2 - v16;
    if (a2 <= v16)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((v17 + v15 + ((v12 + v14 + ((v12 + v13) & ~v13)) & ~v14)) & ~v17) + ((v15 + ((v15 + v14 + ((v15 + v14 + ((((((v12 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + v14 + 8) & ~v14)) & ~v14)) & ~v14) + 7) & 0xFFFFFFF8) == -8)
    {
      v21 = a3 - v16 + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = a2 - v16;
    if (a2 <= v16)
    {
LABEL_19:
      if (v23 > 1)
      {
        if (v23 != 2)
        {
          *(a1 + v20) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v20) = 0;
      }

      else if (v23)
      {
        *(a1 + v20) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v9 == v16)
      {
        v27 = *(v8 + 56);

        v27(a1, a2, v9, AssociatedTypeWitness);
      }

      else
      {
        v28 = (((a1 + v12 + v13) & ~v13) + v12 + v14) & ~v14;
        if (v11 == v16)
        {
          v29 = *(v10 + 56);

          v29(v28, a2);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v30 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v30 = (a2 - 1);
          }

          *((v19 + ((v18 + v28) & ~v17)) & 0xFFFFFFFFFFFFFFF8) = v30;
        }
      }

      return;
    }
  }

  if (((v17 + v15 + ((v12 + v14 + ((v12 + v13) & ~v13)) & ~v14)) & ~v17) + ((v15 + ((v15 + v14 + ((v15 + v14 + ((((((v12 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + v14 + 8) & ~v14)) & ~v14)) & ~v14) + 7) & 0xFFFFFFF8) == -8)
  {
    v25 = v24;
  }

  else
  {
    v25 = 1;
  }

  if (((v17 + v15 + ((v12 + v14 + ((v12 + v13) & ~v13)) & ~v14)) & ~v17) + ((v15 + ((v15 + v14 + ((v15 + v14 + ((((((v12 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + v14 + 8) & ~v14)) & ~v14)) & ~v14) + 7) & 0xFFFFFFF8) != -8)
  {
    v26 = ~v16 + a2;
    bzero(a1, v20);
    *a1 = v26;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      *(a1 + v20) = v25;
    }

    else
    {
      *(a1 + v20) = v25;
    }
  }

  else if (v23)
  {
    *(a1 + v20) = v25;
  }
}

void *sub_1C0D30C08(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C0D7836C();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_1C0CF448C(a1, a2);
      return MEMORY[0x1E69E7CC0];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_1C0CF3BC0(v10, 0);
      v14 = sub_1C0D7827C();
      sub_1C0CF448C(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_1C0D30E00@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *a3 = *v4;
  a3[1] = v6;
  return sub_1C0CF6468(v5, v6);
}

uint64_t sub_1C0D30E54(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v5;
  v7[1] = v6;
  sub_1C0CF6468(v5, v6);
  return sub_1C0CF448C(v8, v9);
}

uint64_t sub_1C0D30ED8(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  v3 = *v2;
  sub_1C0CF6468(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_1C0D30F3C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  return sub_1C0CF448C(v7, v8);
}

void *AlishaSPAKE2Prover.init(password:salt:authenticatedData:keyDerivationCost:)(void *a1, char *a2, char *a3, char *a4)
{
  v65 = a4;
  v68 = *MEMORY[0x1E69E9840];
  v10 = sub_1C0D78AEC();
  v11 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = ccspake_cp_256();
  if (!v14)
  {
    __break(1u);
    goto LABEL_47;
  }

  v15 = v14;
  v64 = ccspake_sizeof_w();
  if (v64 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  v58 = v15;
  v63 = v4;
  sub_1C0D78ABC();
  v15 = sub_1C0D78ADC();
  (*(v11 + 8))(v13, v10);
  v16 = [a1 dataUsingEncoding_];
  if (!v16)
  {
LABEL_47:
    __break(1u);
  }

  v4 = v16;
  v13 = sub_1C0D7832C();
  v11 = v17;

  v6 = sub_1C0D7830C();
  v5 = a2;
  v18 = ccscrypt_storage_size();
  if (v18 < 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v19 = 2 * v64;
  if (v18)
  {
    v20 = v18;
    v21 = sub_1C0D78C2C();
    *(v21 + 16) = v20;
    bzero((v21 + 32), v20);
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v60 = v11;
  v61 = a1;
  v59 = v13;
  v62 = a3;
  if (v19)
  {
    a1 = sub_1C0D78C2C();
    a1[2] = v19;
    bzero(a1 + 4, v19);
    goto LABEL_12;
  }

LABEL_11:
  a1 = MEMORY[0x1E69E7CC0];
LABEL_12:
  [v6 length];
  [v6 bytes];
  [v5 length];
  [v5 bytes];
  v22 = v5;
  v15 = (a1 + 4);
  sub_1C0D78BFC();
  sub_1C0D78BFC();
  v23 = ccscrypt();

  swift_bridgeObjectRelease_n();
  if (v23)
  {

    v5 = 0;
    v24 = v61;
LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D850, &unk_1C0D7C910);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1C0D7B690;
    *(v32 + 56) = MEMORY[0x1E69E6158];
    *(v32 + 32) = 0xD000000000000050;
    *(v32 + 40) = 0x80000001C0D80D90;
    sub_1C0D78FCC();

    v33 = v59;
    v34 = v60;
LABEL_21:
    sub_1C0CF448C(v33, v34);
LABEL_22:
    type metadata accessor for AlishaSPAKE2Prover();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v5 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:a1 + 4 length:v19];

  v65 = v22;
  if (!v5 || (v25 = [v5 length], v6 = v63, v25 != v19))
  {
    v24 = v61;
    v22 = v65;
    goto LABEL_20;
  }

  v10 = v64;
  v26 = [v5 subdataWithRange_];
  a3 = sub_1C0D7832C();
  v11 = v27;

  a2 = [v5 subdataWithRange_];
  v4 = sub_1C0D7832C();
  v13 = v28;

  v29 = SPAKE2CtxSize();
  if (v29 < 0)
  {
    goto LABEL_40;
  }

  v64 = v4;
  if (v29)
  {
    v30 = v29;
    v31 = sub_1C0D78C2C();
    *(v31 + 16) = v30;
    bzero((v31 + 32), v30);
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  a1 = OBJC_IVAR____TtC16CryptoKitPrivate18AlishaSPAKE2Prover_spakeCtxData;
  *(v6 + OBJC_IVAR____TtC16CryptoKitPrivate18AlishaSPAKE2Prover_spakeCtxData) = v31;
  v15 = v62;
  v36 = sub_1C0D7832C();
  v38 = v37;

  v4 = sub_1C0D30C08(v36, v38);
  swift_beginAccess();
  a2 = *(a1 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v6) = a2;
  if (isUniquelyReferenced_nonNull_native)
  {
    v40 = ccspake_mac_hkdf_cmac_aes128_sha256();
    if (v40)
    {
      goto LABEL_26;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_41:
  a2 = sub_1C0CFD670(a2);
  *(a1 + v6) = a2;
  v40 = ccspake_mac_hkdf_cmac_aes128_sha256();
  if (!v40)
  {
    goto LABEL_42;
  }

LABEL_26:
  v10 = v40;
  v67 = 0;
  result = ccrng();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v62 = a1;
  v57 = v15;
  if (v67)
  {
    goto LABEL_43;
  }

  v41 = v4;
  v53 = v4[2];
  SPAKE2Alishaz0Size();
  sub_1C0CF6468(a3, v11);
  sub_1C0D30C08(a3, v11);
  v56 = v11;
  v54 = a3;
  a3 = v64;
  sub_1C0CF6468(v64, v13);
  sub_1C0D30C08(a3, v13);
  v55 = v13;
  v42 = ccspake_prover_init();
  v43 = v62;
  v6 = v63;
  *&v62[v63] = a2;
  swift_endAccess();

  if (v42)
  {
    sub_1C0CF448C(v59, v60);
    sub_1C0CF448C(v54, v56);
    sub_1C0CF448C(a3, v55);

    goto LABEL_22;
  }

  v13 = v43;
  v53 = v41;
  a1 = v54;
  v10 = v55;
  v11 = v56;
  v44 = ccspake_sizeof_point();
  if ((v44 & 0x8000000000000000) == 0)
  {
    if (v44)
    {
      v45 = v44;
      a2 = sub_1C0D78C2C();
      *(a2 + 2) = v45;
      bzero(a2 + 32, v45);
    }

    else
    {
      a2 = MEMORY[0x1E69E7CC0];
    }

    a3 = v10;
    swift_beginAccess();
    v10 = *&v13[v6];
    v46 = swift_isUniquelyReferenced_nonNull_native();
    *&v13[v6] = v10;
    if (v46)
    {
      goto LABEL_35;
    }

    goto LABEL_45;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  v10 = sub_1C0CFD670(v10);
  *&v13[v6] = v10;
LABEL_35:
  ccspake_sizeof_point();
  v47 = ccspake_kex_generate();
  *&v13[v6] = v10;
  swift_endAccess();
  sub_1C0CF448C(v59, v60);

  *(v6 + OBJC_IVAR____TtC16CryptoKitPrivate18AlishaSPAKE2Prover_X) = a2;
  v48 = (v6 + OBJC_IVAR____TtC16CryptoKitPrivate18AlishaSPAKE2Prover_z0_self);
  *v48 = a1;
  v48[1] = v11;
  v49 = (v6 + OBJC_IVAR____TtC16CryptoKitPrivate18AlishaSPAKE2Prover_z1_self);
  *v49 = v64;
  v49[1] = a3;
  *(v6 + OBJC_IVAR____TtC16CryptoKitPrivate18AlishaSPAKE2Prover_aad) = v53;
  if (v47)
  {

    sub_1C0CF448C(*(v6 + OBJC_IVAR____TtC16CryptoKitPrivate18AlishaSPAKE2Prover_z0_self), *(v6 + OBJC_IVAR____TtC16CryptoKitPrivate18AlishaSPAKE2Prover_z0_self + 8));
    v33 = *(v6 + OBJC_IVAR____TtC16CryptoKitPrivate18AlishaSPAKE2Prover_z1_self);
    v34 = *(v6 + OBJC_IVAR____TtC16CryptoKitPrivate18AlishaSPAKE2Prover_z1_self + 8);
    goto LABEL_21;
  }

  v50 = type metadata accessor for AlishaSPAKE2Prover();
  v66.receiver = v6;
  v66.super_class = v50;
  v51 = objc_msgSendSuper2(&v66, sel_init);

  return v51;
}

id sub_1C0D3190C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CryptoKitPrivate18AlishaSPAKE2Prover_X);
  v2 = *(v1 + 16);
  v3 = objc_allocWithZone(MEMORY[0x1E695DEF0]);

  return [v3 initWithBytes:v1 + 32 length:v2];
}

void *sub_1C0D319C0(void *a1, void *a2)
{
  v5 = [a1 length];
  result = ccspake_cp_256();
  if (result)
  {
    if (v5 == ccspake_sizeof_point() && [a2 length] == 16)
    {
      v7 = sub_1C0D78C2C();
      v7[2] = 16;
      v7[4] = 0;
      v7[5] = 0;
      v8 = sub_1C0D78C2C();
      v8[2] = 16;
      v8[4] = 0;
      v8[5] = 0;
      v9 = OBJC_IVAR____TtC16CryptoKitPrivate18AlishaSPAKE2Prover_spakeCtxData;
      swift_beginAccess();
      v10 = *(v2 + v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + v9) = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_1C0CFD670(v10);
        *(v2 + v9) = v10;
      }

      [a1 length];
      v12 = sub_1C0D7832C();
      sub_1C0D30C08(v12, v13);
      v14 = ccspake_kex_process();
      *(v2 + v9) = v10;
      swift_endAccess();

      if (v14)
      {
        goto LABEL_13;
      }

      swift_beginAccess();
      v15 = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + v9) = v10;
      if ((v15 & 1) == 0)
      {
        v10 = sub_1C0CFD670(v10);
        *(v2 + v9) = v10;
      }

      v16 = ccspake_mac_compute();
      *(v2 + v9) = v10;
      swift_endAccess();
      if (v16)
      {
        goto LABEL_13;
      }

      swift_beginAccess();
      v17 = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + v9) = v10;
      if ((v17 & 1) == 0)
      {
        v10 = sub_1C0CFD670(v10);
        *(v2 + v9) = v10;
      }

      [a2 length];
      v18 = sub_1C0D7832C();
      sub_1C0D30C08(v18, v19);
      session_key = ccspake_mac_verify_and_get_session_key();
      *(v2 + v9) = v10;
      swift_endAccess();

      if (session_key)
      {
LABEL_13:
        v21 = 0;
      }

      else
      {
        v22 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:v25 length:v7[2]];
        v23 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:v8 + 4 length:v8[2]];
        v24 = objc_allocWithZone(type metadata accessor for AlishaSPAKE2ProverConfirmed());
        v21 = sub_1C0D31F40(v22, v23);
      }

      return v21;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id AlishaSPAKE2Prover.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_1C0D31F40(void *a1, void *a2)
{
  v4 = OBJC_IVAR____TtC16CryptoKitPrivate27AlishaSPAKE2ProverConfirmed_alishaKey;
  *&v2[OBJC_IVAR____TtC16CryptoKitPrivate27AlishaSPAKE2ProverConfirmed_alishaKey] = a1;
  v5 = OBJC_IVAR____TtC16CryptoKitPrivate27AlishaSPAKE2ProverConfirmed_M2;
  *&v2[OBJC_IVAR____TtC16CryptoKitPrivate27AlishaSPAKE2ProverConfirmed_M2] = a2;
  v6 = a1;
  v7 = a2;
  result = sub_1C0D32518(v6);
  if (!result)
  {

    type metadata accessor for AlishaSPAKE2ProverConfirmed();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v9 = result;
  if (!result[2])
  {
    __break(1u);
    goto LABEL_12;
  }

  result = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:result[4] + 32 length:*(result[4] + 16)];
  *&v2[OBJC_IVAR____TtC16CryptoKitPrivate27AlishaSPAKE2ProverConfirmed_KEnc] = result;
  if (v9[2] < 2uLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:v9[5] + 32 length:*(v9[5] + 16)];
  *&v2[OBJC_IVAR____TtC16CryptoKitPrivate27AlishaSPAKE2ProverConfirmed_KMac] = result;
  if (v9[2] < 3uLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:v9[6] + 32 length:*(v9[6] + 16)];
  *&v2[OBJC_IVAR____TtC16CryptoKitPrivate27AlishaSPAKE2ProverConfirmed_KRMac] = result;
  if (v9[2] < 4uLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:v9[7] + 32 length:*(v9[7] + 16)];
  *&v2[OBJC_IVAR____TtC16CryptoKitPrivate27AlishaSPAKE2ProverConfirmed_SymmetricLTS] = result;
  if (v9[2] < 5uLL)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:v9[8] + 32 length:*(v9[8] + 16)];
  *&v2[OBJC_IVAR____TtC16CryptoKitPrivate27AlishaSPAKE2ProverConfirmed_Kble_intro] = result;
  if (v9[2] >= 6uLL)
  {
    v10 = v9[9];
    swift_bridgeObjectRetain_n();

    v11 = *(v10 + 16);

    v12 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:v10 + 32 length:v11];

    *&v2[OBJC_IVAR____TtC16CryptoKitPrivate27AlishaSPAKE2ProverConfirmed_Kble_oob_master] = v12;
    v14.receiver = v2;
    v14.super_class = type metadata accessor for AlishaSPAKE2ProverConfirmed();
    v13 = objc_msgSendSuper2(&v14, sel_init);

    return v13;
  }

LABEL_16:
  __break(1u);
  return result;
}

id sub_1C0D32224(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1C0D32518(void *a1)
{
  v2 = sub_1C0D78AEC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D78ACC();
  v6 = sub_1C0D78AAC();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  if (v8 >> 60 == 15)
  {
    goto LABEL_71;
  }

  sub_1C0D30C08(v6, v8);
  v10 = sub_1C0D78C2C();
  *(v10 + 16) = 96;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0u;
  *(v10 + 96) = 0u;
  *(v10 + 112) = 0u;
  sub_1C0D78BFC();
  ccsha256_di();
  [a1 length];
  [a1 bytes];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1C0CF48F4(0, *(v10 + 16), 0, v10);
  }

  v11 = cchkdf();

  if (v11)
  {

    return 0;
  }

  v13 = *(v10 + 16);
  v44 = v10;
  v45 = v13;
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v17 = __OFADD__(v15, 16);
      v15 += 16;
      if (v17)
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      ++v14;
      if (v15 >= v45)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = 0;
LABEL_14:
    v46 = MEMORY[0x1E69E7CC0];
    result = sub_1C0CF7C20(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      goto LABEL_70;
    }

    v12 = v46;
    if (!v16)
    {
      v23 = 0;
      result = v44;
LABEL_39:
      if (v23 >= v45)
      {
LABEL_60:

        return v12;
      }

      v31 = -v23;
      v32 = v23 + 16;
      v33 = v23;
      while (1)
      {
        v34 = v33 + 16;
        if (__OFADD__(v33, 16))
        {
          goto LABEL_67;
        }

        v35 = *(result + 16);
        if (v35 >= v34)
        {
          v36 = v33 + 16;
        }

        else
        {
          v36 = *(result + 16);
        }

        if (v36 < v33)
        {
          goto LABEL_68;
        }

        if (v23 < 0)
        {
          goto LABEL_69;
        }

        if (v35 >= v32)
        {
          v37 = v32;
        }

        else
        {
          v37 = *(result + 16);
        }

        v38 = v37 + v31;
        if (v37 + v31 == v35)
        {
          sub_1C0D78BFC();
          result = v44;
          v39 = v44;
        }

        else
        {
          v39 = MEMORY[0x1E69E7CC0];
          if (v33 != v36)
          {
            if (v38 >= 1)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D058, &qword_1C0D7B550);
              v39 = swift_allocObject();
              v42 = 2 * _swift_stdlib_malloc_size(v39);
              result = v44;
              v39[2] = v38;
              v39[3] = v42 - 64;
            }

            memcpy(v39 + 4, (result + v33 + 32), v38);
            result = v44;
          }
        }

        v46 = v12;
        v41 = *(v12 + 16);
        v40 = *(v12 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_1C0CF7C20((v40 > 1), v41 + 1, 1);
          result = v44;
          v12 = v46;
        }

        *(v12 + 16) = v41 + 1;
        *(v12 + 8 * v41 + 32) = v39;
        v33 += 16;
        v31 -= 16;
        v32 += 16;
        if (v34 >= v45)
        {
          goto LABEL_60;
        }
      }
    }

    v18 = 0;
    result = v44;
    v19 = *(v44 + 16);
    v20 = 16;
    v21 = 32;
    while (1)
    {
      v22 = v19 >= v20 ? v20 : v19;
      if (v18 >= v45)
      {
        break;
      }

      if (v18 == 0x7FFFFFFFFFFFFFF0)
      {
        goto LABEL_64;
      }

      v23 = v18 + 16;
      if (v19 >= (v18 + 16))
      {
        v24 = v18 + 16;
      }

      else
      {
        v24 = v19;
      }

      if (v24 < v18)
      {
        goto LABEL_65;
      }

      v25 = *(result + 16);
      if (v25 < v18 || v25 < v24)
      {
        goto LABEL_66;
      }

      v26 = v22 + v21 - 32;
      if (v26 == v25)
      {
        sub_1C0D78BFC();
        result = v44;
        v27 = v44;
      }

      else
      {
        v27 = MEMORY[0x1E69E7CC0];
        if (v18 != v24)
        {
          if (v26 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D058, &qword_1C0D7B550);
            v27 = swift_allocObject();
            v30 = 2 * _swift_stdlib_malloc_size(v27);
            result = v44;
            v27[2] = v26;
            v27[3] = v30 - 64;
          }

          memcpy(v27 + 4, (result + v18 + 32), v26);
          result = v44;
        }
      }

      v46 = v12;
      v29 = *(v12 + 16);
      v28 = *(v12 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1C0CF7C20((v28 > 1), v29 + 1, 1);
        result = v44;
        v12 = v46;
      }

      *(v12 + 16) = v29 + 1;
      *(v12 + 8 * v29 + 32) = v27;
      v20 += 16;
      v21 -= 16;
      v18 += 16;
      if (!--v16)
      {
        goto LABEL_39;
      }
    }
  }

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
  return result;
}

uint64_t Curve25519.KeyAgreement.PrivateKey.init(ikm:)(uint64_t a1)
{
  result = sub_1C0D7869C();
  if ((result - 0x1000000000000000) >> 61 == 7)
  {
    if (result > 3)
    {
      sub_1C0D7867C();
      v5 = sub_1C0D32C3C(0, 0xC000000000000000, 0x6B72705F706B64, 0xE700000000000000, v12, v13);
      v7 = v6;
      v8 = sub_1C0D32FB0(v5, v6, 27507, 0xE200000000000000, 0, 0xC000000000000000, 0x20uLL);
      v10 = v9;
      sub_1C0CF6468(v8, v9);
      sub_1C0D785BC();
      v11 = sub_1C0D786AC();
      (*(*(v11 - 8) + 8))(a1, v11);
      sub_1C0CF448C(v8, v10);
      sub_1C0CF448C(v5, v7);
      return sub_1C0CF448C(v12, v13);
    }

    else
    {
      sub_1C0CF8DE0();
      swift_allocError();
      *v3 = 1;
      *(v3 + 4) = 1;
      swift_willThrow();
      v4 = sub_1C0D786AC();
      return (*(*(v4 - 8) + 8))(a1, v4);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0D32C3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v31 = a4;
  v32 = a6;
  v29 = a5;
  v30 = a3;
  *&v33 = a1;
  *(&v33 + 1) = a2;
  v6 = sub_1C0D786AC();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D8B0, &qword_1C0D7D9F0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - v11;
  v40 = xmmword_1C0D7BAB0;
  sub_1C0D782BC();
  sub_1C0D74CCC(0x31762D454B5048, 0xE700000000000000);
  sub_1C0D74CCC(5064011, 0xE300000000000000);
  v13 = sub_1C0D053E8(0x20uLL, 2);
  v15 = v14;
  v16 = MEMORY[0x1E6969080];
  v17 = MEMORY[0x1E6969078];
  v38 = MEMORY[0x1E6969080];
  v39 = MEMORY[0x1E6969078];
  *&v37 = v13;
  *(&v37 + 1) = v14;
  v18 = __swift_project_boxed_opaque_existential_1(&v37, MEMORY[0x1E6969080]);
  v19 = *v18;
  v20 = v18[1];
  sub_1C0CF6468(v13, v15);
  sub_1C0D4268C(v19, v20, &v40);
  sub_1C0CF448C(v13, v15);
  __swift_destroy_boxed_opaque_existential_1(&v37);
  sub_1C0D74CCC(v30, v31);
  v38 = v16;
  v39 = v17;
  v21 = v29;
  v22 = v32;
  *&v37 = v29;
  *(&v37 + 1) = v32;
  v23 = __swift_project_boxed_opaque_existential_1(&v37, v16);
  v24 = *v23;
  v25 = v23[1];
  sub_1C0CF6468(v21, v22);
  sub_1C0D4268C(v24, v25, &v40);
  __swift_destroy_boxed_opaque_existential_1(&v37);
  v37 = v40;
  sub_1C0CF6468(v40, *(&v40 + 1));
  sub_1C0D7868C();
  v37 = v33;
  sub_1C0CF6468(v33, *(&v33 + 1));
  sub_1C0D789EC();
  sub_1C0CF6410();
  sub_1C0D17E68();
  sub_1C0D787FC();
  sub_1C0D13830(v37, *(&v37 + 1));
  (*(v34 + 8))(v8, v35);
  v38 = v9;
  v39 = sub_1C0D3339C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v37);
  (*(v10 + 16))(boxed_opaque_existential_1, v12, v9);
  __swift_project_boxed_opaque_existential_1(&v37, v38);
  sub_1C0D7819C();
  (*(v10 + 8))(v12, v9);
  v27 = v36;
  __swift_destroy_boxed_opaque_existential_1(&v37);
  sub_1C0CF448C(v40, *(&v40 + 1));
  return v27;
}

uint64_t sub_1C0D32FB0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v41 = a7;
  *&v42 = a1;
  v37 = a6;
  v38 = a3;
  v39 = a4;
  *(&v42 + 1) = a2;
  v9 = sub_1C0D786AC();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C0D053E8(0x20uLL, 2);
  v14 = v13;
  sub_1C0D75198(5064011, 0xE300000000000000, v12, v13, &v45);
  sub_1C0CF448C(v12, v14);
  v15 = v45;
  v40 = v45;
  v16 = sub_1C0D053E8(a7, 2);
  v18 = v17;
  v48 = v16;
  v49 = v17;
  sub_1C0CF6468(v16, v17);
  sub_1C0D74CCC(0x31762D454B5048, 0xE700000000000000);
  sub_1C0CF448C(v16, v18);
  v19 = v48;
  v20 = v49;
  v50 = v48;
  v51 = v49;
  v21 = MEMORY[0x1E6969080];
  v22 = MEMORY[0x1E6969078];
  v46 = MEMORY[0x1E6969080];
  v47 = MEMORY[0x1E6969078];
  v45 = v15;
  v23 = __swift_project_boxed_opaque_existential_1(&v45, MEMORY[0x1E6969080]);
  v25 = *v23;
  v24 = v23[1];
  sub_1C0CF6468(v19, v20);
  sub_1C0CF6468(v15, *(&v15 + 1));
  sub_1C0D4268C(v25, v24, &v50);
  sub_1C0CF448C(v19, v20);
  __swift_destroy_boxed_opaque_existential_1(&v45);
  v26 = v50;
  v27 = v51;
  v48 = v50;
  v49 = v51;
  sub_1C0CF6468(v50, v51);
  sub_1C0D74CCC(v38, v39);
  sub_1C0CF448C(v26, v27);
  v28 = v48;
  v29 = v49;
  v50 = v48;
  v51 = v49;
  v46 = v21;
  v47 = v22;
  v30 = v37;
  *&v45 = a5;
  *(&v45 + 1) = v37;
  v31 = __swift_project_boxed_opaque_existential_1(&v45, v21);
  v32 = *v31;
  v33 = v31[1];
  sub_1C0CF6468(v28, v29);
  sub_1C0CF6468(a5, v30);
  sub_1C0D4268C(v32, v33, &v50);
  sub_1C0CF448C(v28, v29);
  __swift_destroy_boxed_opaque_existential_1(&v45);
  v34 = v50;
  v35 = v51;
  v45 = v42;
  sub_1C0CF6468(v50, v51);
  sub_1C0D789EC();
  sub_1C0CF6410();
  sub_1C0D17E68();
  sub_1C0D787EC();
  sub_1C0D13830(v50, v51);
  sub_1C0D7867C();
  sub_1C0CF448C(v34, v35);
  sub_1C0CF448C(v40, *(&v15 + 1));
  (*(v43 + 8))(v11, v44);
  return v45;
}

uint64_t sub_1C0D332D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x1E69E6290];
  v14[4] = MEMORY[0x1E6969DF8];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v14, MEMORY[0x1E69E6290]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_1C0D77CE4(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_1C0D77DA4(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_1C0D77E20(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

unint64_t sub_1C0D3339C()
{
  result = qword_1EBE6D8B8;
  if (!qword_1EBE6D8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE6D8B0, &qword_1C0D7D9F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6D8B8);
  }

  return result;
}

uint64_t sub_1C0D33418(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = __OFSUB__(result, 1);
  if (result >= 1)
  {
    v2 = __OFSUB__(a2, 1);
    if (a2 >= 1)
    {
      return (a2 - 1) / result + 1;
    }
  }

  if ((a2 & result) < 0 == v2)
  {
    if (result != -1 || a2 != 0x8000000000000000)
    {
      return a2 / result;
    }

    goto LABEL_13;
  }

  v3 = (a2 + 1) / result;
  result = v3 + 1;
  if (__OFADD__(v3, 1))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t PIR.PirAlgorithm.hashValue.getter()
{
  v1 = *v0;
  sub_1C0D78FFC();
  MEMORY[0x1C68E3FF0](v1);
  return sub_1C0D7902C();
}

void PIR.PirParams.encryptionParams.getter(_BYTE *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t PIR.PirParams.init(encryptionParams:algorithm:entriesCount:entrySize:dimensions:batchSize:internalBatchSize:compressResponse:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10)
{
  if (a4 < 1)
  {
    goto LABEL_21;
  }

  v15 = *a1;
  v27 = *a2;
  v28 = a1[1];
  result = cche_encryption_params_plaintext_modulus();
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v17 = result;
  result = cche_encryption_params_polynomial_degree();
  if (a4 >> 60)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  v18 = (__clz(v17) ^ 0x3F) * result;
  if (v18 >= (8 * a4))
  {
    v19 = v18 / (8 * a4);
  }

  else
  {
    v19 = 1;
  }

  result = sub_1C0D33418(v19, a3);
  v20 = *(a5 + 16);
  if (v20)
  {
    v21 = (a5 + 32);
    v22 = 1;
    do
    {
      v23 = *v21++;
      v24 = v22 * v23;
      if ((v22 * v23) >> 64 != (v22 * v23) >> 63)
      {
        __break(1u);
        goto LABEL_24;
      }

      v22 = v24;
      --v20;
    }

    while (v20);
    if (v24 >= result)
    {
      goto LABEL_14;
    }

    goto LABEL_21;
  }

  if (result > 1)
  {
LABEL_21:

    sub_1C0CF8DE0();
    swift_allocError();
    *v26 = 5;
    *(v26 + 4) = 1;
    return swift_willThrow();
  }

LABEL_14:
  if (a8)
  {
    v25 = 1;
  }

  else
  {
    v25 = a7;
  }

  if (!v25)
  {
    goto LABEL_26;
  }

  if (a6 == 0x8000000000000000 && v25 == -1)
  {
    goto LABEL_27;
  }

  if (a6 % v25)
  {
    goto LABEL_21;
  }

  *a9 = v15;
  *(a9 + 1) = v28;
  *(a9 + 2) = v27;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = v19;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 57) = a10;
  return result;
}

unint64_t sub_1C0D33720()
{
  result = qword_1EBE6D8C0[0];
  if (!qword_1EBE6D8C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE6D8C0);
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C0D337A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0D337E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C0D33848(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = 0;
    v7 = (v3 + 32);
    v8 = 1;
    do
    {
      v9 = v7[v6];
      if ((v8 * v9) >> 64 != (v8 * v9) >> 63)
      {
        __break(1u);
        goto LABEL_19;
      }

      v8 *= v9;
      ++v6;
    }

    while (v4 != v6);
    v17 = MEMORY[0x1E69E7CC0];
    sub_1C0CF7C60(0, v4, 0);
    result = v17;
    while (1)
    {
      v11 = *v7++;
      v10 = v11;
      if (!v11)
      {
        break;
      }

      if (v8 == 0x8000000000000000 && v10 == -1)
      {
        goto LABEL_23;
      }

      v8 /= v10;
      if (!v8)
      {
        goto LABEL_20;
      }

      if (a1 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_24;
      }

      v12 = a1 / v8;
      v13 = a1 / v8 * v8;
      if ((a1 / v8 * v8) >> 64 != v13 >> 63)
      {
        goto LABEL_21;
      }

      v14 = __OFSUB__(a1, v13);
      a1 %= v8;
      if (v14)
      {
        goto LABEL_22;
      }

      v18 = result;
      v16 = *(result + 16);
      v15 = *(result + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1C0CF7C60((v15 > 1), v16 + 1, 1);
        result = v18;
      }

      *(result + 16) = v16 + 1;
      *(result + 8 * v16 + 32) = v12;
      if (!--v4)
      {
        return result;
      }
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0D339A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = v4;
  swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  result = _s13ClientSecretsVMa(319, v6, v7, v8);
  if (v11 <= 0x3F)
  {
    result = _s15ServerPublicKeyVMa(319, v2, v1, v10);
    if (v13 <= 0x3F)
    {
      result = type metadata accessor for ARC.Ciphersuite(319, v2, v1, v12);
      if (v15 <= 0x3F)
      {
        if (v5 > 0x3F)
        {
          return AssociatedTypeWitness;
        }

        else
        {
          result = _s17CredentialRequestVMa(319, v2, v1, v14);
          if (v16 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C0D33B60(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = *(swift_checkMetadataState() - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v6 + 80);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  if (v7 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v7;
  }

  if (v14 <= v9)
  {
    v15 = *(v8 + 84);
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= v7)
  {
    v16 = v7;
  }

  else
  {
    v16 = v15;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = ((v10 + v11 + ((v10 + v11 + ((v10 + v11) & ~v11)) & ~v11)) & ~v11) + v10 + v12;
  v18 = v13 + v12;
  v19 = ((v13 + v12) & ~v12) + v13;
  v20 = ((v19 + v12) & ~v12) + v13 + 7;
  v21 = v12 + 40;
  v22 = v11 | 7;
  v23 = v22 | v12;
  v24 = (v22 | v12) + v13;
  if (v16 < a2)
  {
    v25 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v19 + v22) & ~v22) + ((v24 + ((v18 + ((v21 + ((v20 + (v17 & ~v12)) & 0xFFFFFFFFFFFFFFF8)) & ~v12)) & ~v12)) & ~v23) + 8;
    v26 = v25 & 0xFFFFFFF8;
    if ((v25 & 0xFFFFFFF8) != 0)
    {
      v27 = 2;
    }

    else
    {
      v27 = a2 - v16 + 1;
    }

    if (v27 >= 0x10000)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    if (v27 >= 2)
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    if (v29 > 1)
    {
      if (v29 == 2)
      {
        v30 = *(a1 + v25);
        if (!v30)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v30 = *(a1 + v25);
        if (!v30)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      if (!v29)
      {
        goto LABEL_33;
      }

      v30 = *(a1 + v25);
      if (!v30)
      {
        goto LABEL_33;
      }
    }

    v32 = v30 - 1;
    if (v26)
    {
      v32 = 0;
      v33 = *a1;
    }

    else
    {
      v33 = 0;
    }

    return v16 + (v33 | v32) + 1;
  }

LABEL_33:
  if (v7 >= v15)
  {
    v37 = *(v6 + 48);
    v38 = a1;
  }

  else
  {
    v34 = ~v12;
    v35 = (a1 + v17) & v34;
    if (v9 == v16)
    {
LABEL_35:
      v36 = *(v8 + 48);

      return v36(v35);
    }

    v39 = (v20 + v35) & 0xFFFFFFFFFFFFFFF8;
    if ((v16 & 0x80000000) == 0)
    {
      v40 = *(v39 + 16);
      if (v40 >= 0xFFFFFFFF)
      {
        LODWORD(v40) = -1;
      }

      return (v40 + 1);
    }

    v35 = (v24 + ((v18 + ((v21 + v39) & v34)) & v34)) & ~v23;
    if (v9 >= v14)
    {
      goto LABEL_35;
    }

    v37 = *(v6 + 48);
    v38 = ((v22 + v13 + ((v18 + v35) & v34)) & ~v22);
  }

  return v37(v38, v7, AssociatedTypeWitness);
}

void sub_1C0D33F4C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v52 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_checkMetadataState() - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v8 + 80);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (v9 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v9;
  }

  if (v16 <= v11)
  {
    v17 = *(v10 + 84);
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= v9)
  {
    v18 = v9;
  }

  else
  {
    v18 = v17;
  }

  v19 = ((v12 + v13 + ((v12 + v13 + ((v12 + v13) & ~v13)) & ~v13)) & ~v13) + v12;
  v20 = v19 + v14;
  v21 = v15 + v14;
  v22 = ((v15 + v14) & ~v14) + v15;
  v23 = ((v22 + v14) & ~v14) + v15 + 7;
  v24 = v14 + 40;
  v25 = v13 | 7;
  v26 = v13 | 7 | v14;
  v27 = v26 + v15;
  v28 = (v22 + (v13 | 7)) & ~(v13 | 7);
  v29 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v30 = v28 + v29;
  v31 = ((v26 + v15 + ((v15 + v14 + ((v14 + 40 + ((v23 + ((v19 + v14) & ~v14)) & 0xFFFFFFFFFFFFFFF8)) & ~v14)) & ~v14)) & ~v26) + v28 + v29;
  if (v18 >= a3)
  {
    v35 = 0;
    v36 = a2 - v18;
    if (a2 <= v18)
    {
      goto LABEL_23;
    }

LABEL_28:
    if (v31)
    {
      v37 = 1;
    }

    else
    {
      v37 = v36;
    }

    if (v31)
    {
      v38 = ~v18 + a2;
      bzero(a1, v31);
      *a1 = v38;
    }

    if (v35 > 1)
    {
      if (v35 == 2)
      {
        *&a1[v31] = v37;
      }

      else
      {
        *&a1[v31] = v37;
      }
    }

    else if (v35)
    {
      a1[v31] = v37;
    }

    return;
  }

  v32 = a3 - v18;
  if (v31)
  {
    v33 = 2;
  }

  else
  {
    v33 = v32 + 1;
  }

  if (v33 >= 0x10000)
  {
    v34 = 4;
  }

  else
  {
    v34 = 2;
  }

  if (v33 < 0x100)
  {
    v34 = 1;
  }

  if (v33 >= 2)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  v36 = a2 - v18;
  if (a2 > v18)
  {
    goto LABEL_28;
  }

LABEL_23:
  if (v35 > 1)
  {
    if (v35 != 2)
    {
      *&a1[v31] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&a1[v31] = 0;
LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!v35)
  {
    goto LABEL_38;
  }

  a1[v31] = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v9 < v17)
  {
    v39 = ~v14;
    v40 = &a1[v20] & ~v14;
    if (v11 == v18)
    {
      v41 = *(v10 + 56);
LABEL_42:

      v41(v40, a2);
      return;
    }

    v45 = (v23 + v40) & 0xFFFFFFFFFFFFFFF8;
    if ((v18 & 0x80000000) == 0)
    {
      if ((a2 & 0x80000000) != 0)
      {
        *(v45 + 8) = 0u;
        *(v45 + 24) = 0u;
        *v45 = a2 & 0x7FFFFFFF;
      }

      else
      {
        *(v45 + 16) = (a2 - 1);
      }

      return;
    }

    v48 = ((v27 + ((v21 + ((v24 + v45) & v39)) & v39)) & ~v26);
    if (v17 < a2)
    {
      if (v30)
      {
        v49 = ~v17 + a2;
        bzero(v48, v30);
        *v48 = v49;
      }

      return;
    }

    if (v11 >= v16)
    {
      v41 = *(v10 + 56);
      v40 = (v27 + ((v21 + ((v24 + v45) & v39)) & v39)) & ~v26;
      goto LABEL_42;
    }

    v47 = ((v25 + v15 + ((v48 + v21) & v39)) & ~v25);
    if (v16 < a2)
    {
      if (v29)
      {
        v50 = ~v16 + a2;
        v51 = v47;
        bzero(v47, v29);
        *v51 = v50;
      }

      return;
    }

    v46 = *(v52 + 56);
    goto LABEL_66;
  }

  if (v9 >= a2)
  {
    v46 = *(v52 + 56);
    v47 = a1;
LABEL_66:

    v46(v47, a2, v9, AssociatedTypeWitness);
    return;
  }

  if (v19 <= 3)
  {
    v42 = ~(-1 << (8 * v19));
  }

  else
  {
    v42 = -1;
  }

  if (v19)
  {
    v43 = v42 & (~v9 + a2);
    if (v19 <= 3)
    {
      v44 = v19;
    }

    else
    {
      v44 = 4;
    }

    bzero(a1, v19);
    if (v44 > 2)
    {
      if (v44 == 3)
      {
        *a1 = v43;
        a1[2] = BYTE2(v43);
      }

      else
      {
        *a1 = v43;
      }
    }

    else if (v44 == 1)
    {
      *a1 = v43;
    }

    else
    {
      *a1 = v43;
    }
  }
}

void sub_1C0D344D8(uint64_t a1)
{
  sub_1C0D783EC();
  if (v1 <= 0x3F)
  {
    sub_1C0D345E4(319, &qword_1EBE6D9E8, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState);
    if (v2 <= 0x3F)
    {
      sub_1C0D345E4(319, &qword_1EBE6D9F0, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C0D345E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C0D78D3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C0D34680(uint64_t a1)
{
  result = sub_1C0D783EC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CryptoKitSecretSharing_HybridSecretSharingSharedState.Ciphersuite(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CryptoKitSecretSharing_HybridSecretSharingSharedState.Ciphersuite(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1C0D34788(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C0D347A4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1C0D347FC(uint64_t a1)
{
  result = sub_1C0D783EC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C0D348C8(uint64_t a1)
{
  result = sub_1C0D783EC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C0D34960@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result == 0;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C0D34978()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_1C0D34990@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result == 0;
  *a2 = *result;
  v3 = v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_1C0D349AC(void *a1@<X8>)
{
  if (*(v1 + 8))
  {
    *a1 = 0;
  }

  else
  {
    *a1 = *v1;
  }
}

uint64_t sub_1C0D349C8(uint64_t a1, uint64_t a2)
{
  sub_1C0D78FFC();
  sub_1C0D78A4C();
  return sub_1C0D7902C();
}

uint64_t sub_1C0D34A34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0D384A4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C0D34A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C0D78FFC();
  sub_1C0D78A4C();
  return sub_1C0D7902C();
}

BOOL sub_1C0D34AE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = 0;
  }

  else
  {
    v3 = *a1;
  }

  if (*(a2 + 8))
  {
    v2 = 0;
  }

  return v3 == v2;
}

unint64_t sub_1C0D34B1C()
{
  result = qword_1EBE6DA18;
  if (!qword_1EBE6DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DA18);
  }

  return result;
}

unint64_t sub_1C0D34B74()
{
  result = qword_1EBE6DA20;
  if (!qword_1EBE6DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DA20);
  }

  return result;
}

unint64_t sub_1C0D34BCC()
{
  result = qword_1EBE6DA28;
  if (!qword_1EBE6DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DA28);
  }

  return result;
}

uint64_t sub_1C0D34C30()
{
  v0 = sub_1C0D7859C();
  __swift_allocate_value_buffer(v0, qword_1EBE72CF8);
  __swift_project_value_buffer(v0, qword_1EBE72CF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DAC0, &qword_1C0D7D2D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DAC8, &qword_1C0D7D2D8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0D7CAD0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C0D7857C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sharedState";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "keyToBeShared";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "sealedBox";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  return sub_1C0D7858C();
}

uint64_t sub_1C0D34E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C0D7844C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_1C0D7848C();
      }

      else if (result == 4)
      {
        sub_1C0D35008(a1, v5, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_1C0D784AC();
    }

    else if (result == 2)
    {
      sub_1C0D34F54(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C0D34F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization(0);
  type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState(0);
  sub_1C0D37580(&qword_1EBE6DA48, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState, &unk_1C0D7CECC);
  return sub_1C0D784BC();
}

uint64_t sub_1C0D35008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization(0);
  type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox(0);
  sub_1C0D37580(&qword_1EBE6DA68, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox, &unk_1C0D7D034);
  return sub_1C0D784BC();
}

uint64_t sub_1C0D350BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D9D0, &qword_1C0D7CAF8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v31 = &v28 - v7;
  v32 = type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox(0);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D9C8, &qword_1C0D7CAF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v3)
  {
    result = sub_1C0D7855C();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  v28 = type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization(0);
  sub_1C0D13734(v3 + *(v28 + 28), v11, &qword_1EBE6D9C8, &qword_1C0D7CAF0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1C0D13578(v11, &qword_1EBE6D9C8, &qword_1C0D7CAF0);
    v17 = v5;
  }

  else
  {
    sub_1C0D37A20(v11, v15, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState);
    sub_1C0D37580(&qword_1EBE6DA48, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState, &unk_1C0D7CECC);
    v17 = v5;
    sub_1C0D7856C();
    result = sub_1C0D37A88(v15, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState);
    if (v5)
    {
      return result;
    }
  }

  v18 = *(v3 + 8);
  v19 = *(v3 + 16);
  v20 = v19 >> 62;
  v21 = v32;
  v22 = v31;
  if ((v19 >> 62) > 1)
  {
    v23 = v28;
    if (v20 != 2)
    {
      goto LABEL_16;
    }

    v24 = *(v18 + 16);
    v25 = *(v18 + 24);
  }

  else
  {
    v23 = v28;
    if (!v20)
    {
      if ((v19 & 0xFF000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v24 = v18;
    v25 = v18 >> 32;
  }

  if (v24 == v25)
  {
    goto LABEL_16;
  }

LABEL_15:
  result = sub_1C0D7854C();
  if (v17)
  {
    return result;
  }

LABEL_16:
  sub_1C0D13734(v3 + *(v23 + 32), v22, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
  if ((*(v30 + 48))(v22, 1, v21) == 1)
  {
    sub_1C0D13578(v22, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
  }

  else
  {
    v26 = v22;
    v27 = v29;
    sub_1C0D37A20(v26, v29, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
    sub_1C0D37580(&qword_1EBE6DA68, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox, &unk_1C0D7D034);
    sub_1C0D7856C();
    result = sub_1C0D37A88(v27, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
    if (v17)
    {
      return result;
    }
  }

  return sub_1C0D783CC();
}

uint64_t sub_1C0D35558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = xmmword_1C0D7BAB0;
  sub_1C0D783DC();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 32);
  v7 = type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1C0D35650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C0D783EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C0D356C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C0D783EC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C0D3578C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0D37580(&qword_1EBE6DAB8, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization, &unk_1C0D7D164);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C0D3582C(uint64_t a1)
{
  v2 = sub_1C0D37580(&qword_1EBE6DA88, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization, &unk_1C0D7D1E0);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C0D35898(uint64_t a1, uint64_t a2)
{
  sub_1C0D37580(&qword_1EBE6DA88, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization, &unk_1C0D7D1E0);

  return sub_1C0D7850C();
}

uint64_t sub_1C0D35918()
{
  result = MEMORY[0x1C68E3B00](0x4264656C6165532ELL, 0xEA0000000000786FLL);
  qword_1EBE72D10 = 0xD000000000000040;
  *algn_1EBE72D18 = 0x80000001C0D810B0;
  return result;
}

uint64_t sub_1C0D35988()
{
  v0 = sub_1C0D7859C();
  __swift_allocate_value_buffer(v0, qword_1EBE72D20);
  __swift_project_value_buffer(v0, qword_1EBE72D20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DAC0, &qword_1C0D7D2D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DAC8, &qword_1C0D7D2D8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0D7BEF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "nonce";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C0D7857C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ciphertext";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "tag";
  *(v11 + 8) = 3;
  *(v11 + 16) = 2;
  v9();
  return sub_1C0D7858C();
}

uint64_t sub_1C0D35B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C0D7844C();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      sub_1C0D7848C();
    }
  }

  return result;
}

uint64_t sub_1C0D35C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 == v9)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = sub_1C0D7854C();
  if (v4)
  {
    return result;
  }

LABEL_10:
  v11 = v3[2];
  v12 = v3[3];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_19;
    }

    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
  }

  else
  {
    if (!v13)
    {
      if ((v12 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v14 = v11;
    v15 = v11 >> 32;
  }

  if (v14 == v15)
  {
    goto LABEL_19;
  }

LABEL_18:
  result = sub_1C0D7854C();
  if (v4)
  {
    return result;
  }

LABEL_19:
  v16 = v3[4];
  v17 = v3[5];
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 != 2)
    {
      goto LABEL_28;
    }

    v19 = *(v16 + 16);
    v20 = *(v16 + 24);
  }

  else
  {
    if (!v18)
    {
      if ((v17 & 0xFF000000000000) == 0)
      {
        goto LABEL_28;
      }

LABEL_27:
      result = sub_1C0D7854C();
      if (v4)
      {
        return result;
      }

      goto LABEL_28;
    }

    v19 = v16;
    v20 = v16 >> 32;
  }

  if (v19 != v20)
  {
    goto LABEL_27;
  }

LABEL_28:
  type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox(0);
  return sub_1C0D783CC();
}

uint64_t sub_1C0D35D94@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1C0D7BAB0;
  a1[1] = xmmword_1C0D7BAB0;
  a1[2] = xmmword_1C0D7BAB0;
  return sub_1C0D783DC();
}

uint64_t sub_1C0D35DC4()
{
  if (qword_1EBE6CC80 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBE72D10;
  sub_1C0D78BFC();
  return v0;
}

uint64_t sub_1C0D35E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1C0D783EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C0D35EA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1C0D783EC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C0D35F68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0D37580(&qword_1EBE6DAE8, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox, &unk_1C0D7CFFC);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C0D36008(uint64_t a1)
{
  v2 = sub_1C0D37580(&qword_1EBE6DA68, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox, &unk_1C0D7D034);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C0D36074(uint64_t a1, uint64_t a2)
{
  sub_1C0D37580(&qword_1EBE6DA68, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox, &unk_1C0D7D034);

  return sub_1C0D7850C();
}

uint64_t sub_1C0D360F4()
{
  v0 = sub_1C0D7859C();
  __swift_allocate_value_buffer(v0, qword_1EBE72D38);
  __swift_project_value_buffer(v0, qword_1EBE72D38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DAC0, &qword_1C0D7D2D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DAC8, &qword_1C0D7D2D8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0D7CAE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C0D7857C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ciphersuite";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "includeThreshold";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "threshold";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "includeAuthenticatedData";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "authenticatedData";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "insecureToChangeIncludeMessageEntropy";
  *(v20 + 1) = 37;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "shamirGeneratorState";
  *(v22 + 1) = 20;
  v22[16] = 2;
  v9();
  return sub_1C0D7858C();
}

uint64_t sub_1C0D36444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C0D7844C();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 4)
      {
        if (result <= 6)
        {
          if (result == 5)
          {
            goto LABEL_4;
          }

LABEL_19:
          sub_1C0D7848C();
          goto LABEL_5;
        }

        if (result == 7)
        {
LABEL_4:
          sub_1C0D7845C();
          goto LABEL_5;
        }

        if (result == 8)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (result > 2)
        {
          if (result == 3)
          {
            goto LABEL_4;
          }

LABEL_20:
          sub_1C0D784AC();
          goto LABEL_5;
        }

        if (result == 1)
        {
          goto LABEL_20;
        }

        if (result == 2)
        {
          sub_1C0D384A4();
          sub_1C0D7846C();
        }
      }

LABEL_5:
      result = sub_1C0D7844C();
    }
  }

  return result;
}

uint64_t sub_1C0D36598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3)
  {
    result = sub_1C0D7855C();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v3 + 16) & 1) == 0)
  {
    if (*(v3 + 8))
    {
      sub_1C0D384A4();
      result = sub_1C0D7853C();
      if (v4)
      {
        return result;
      }
    }
  }

  if (*(v3 + 17) == 1)
  {
    result = sub_1C0D7852C();
    if (v4)
    {
      return result;
    }
  }

  if (*(v3 + 20))
  {
    result = sub_1C0D7855C();
    if (v4)
    {
      return result;
    }
  }

  if (*(v3 + 24) == 1)
  {
    result = sub_1C0D7852C();
    if (v4)
    {
      return result;
    }
  }

  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_21;
    }

    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    goto LABEL_19;
  }

  if (v8)
  {
    v9 = v6;
    v10 = v6 >> 32;
LABEL_19:
    if (v9 == v10)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if ((v7 & 0xFF000000000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_20:
  result = sub_1C0D7854C();
  if (v4)
  {
    return result;
  }

LABEL_21:
  if (*(v3 + 48) != 1 || (result = sub_1C0D7852C(), !v4))
  {
    v11 = *(v3 + 56);
    v12 = *(v3 + 64);
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_32;
      }

      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
    }

    else
    {
      if (!v13)
      {
        if ((v12 & 0xFF000000000000) == 0)
        {
          goto LABEL_32;
        }

LABEL_31:
        result = sub_1C0D7854C();
        if (v4)
        {
          return result;
        }

        goto LABEL_32;
      }

      v14 = v11;
      v15 = v11 >> 32;
    }

    if (v14 != v15)
    {
      goto LABEL_31;
    }

LABEL_32:
    type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState(0);
    return sub_1C0D783CC();
  }

  return result;
}

uint64_t sub_1C0D367B8@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = xmmword_1C0D7BAB0;
  *(a1 + 48) = 0;
  *(a1 + 56) = xmmword_1C0D7BAB0;
  return sub_1C0D783DC();
}

uint64_t sub_1C0D36820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_1C0D783EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C0D36894(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = sub_1C0D783EC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C0D3695C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0D37580(&qword_1EBE6DAF0, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState, &unk_1C0D7CE94);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C0D369FC(uint64_t a1)
{
  v2 = sub_1C0D37580(&qword_1EBE6DA48, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState, &unk_1C0D7CECC);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C0D36A68(uint64_t a1, uint64_t a2)
{
  sub_1C0D37580(&qword_1EBE6DA48, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState, &unk_1C0D7CECC);

  return sub_1C0D7850C();
}

uint64_t sub_1C0D36AE8()
{
  v0 = sub_1C0D7859C();
  __swift_allocate_value_buffer(v0, qword_1EBE72D50);
  __swift_project_value_buffer(v0, qword_1EBE72D50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DAC0, &qword_1C0D7D2D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DAC8, &qword_1C0D7D2D8) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C0D7B690;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 0;
  *v4 = "AES_GCM_256_128";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C0D7857C();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1C0D7858C();
}

uint64_t sub_1C0D36C74()
{
  v0 = sub_1C0D7859C();
  __swift_allocate_value_buffer(v0, qword_1EBE72D68);
  __swift_project_value_buffer(v0, qword_1EBE72D68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DAC0, &qword_1C0D7D2D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DAC8, &qword_1C0D7D2D8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0D7CAD0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C0D7857C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "prime";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "threshold";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "shamirGeneratorState";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  return sub_1C0D7858C();
}

uint64_t sub_1C0D36EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C0D7844C();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_2;
      }

      if (result == 4)
      {
        sub_1C0D7848C();
      }
    }

    else if (result == 1 || result == 2)
    {
LABEL_2:
      sub_1C0D784AC();
    }
  }
}

uint64_t sub_1C0D36F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C0D7855C(), !v4))
  {
    if (!*(v3 + 4) || (result = sub_1C0D7855C(), !v4))
    {
      if (!*(v3 + 8) || (result = sub_1C0D7855C(), !v4))
      {
        v6 = *(v3 + 16);
        v7 = *(v3 + 24);
        v8 = v7 >> 62;
        if ((v7 >> 62) > 1)
        {
          if (v8 != 2)
          {
            goto LABEL_16;
          }

          v9 = *(v6 + 16);
          v10 = *(v6 + 24);
        }

        else
        {
          if (!v8)
          {
            if ((v7 & 0xFF000000000000) == 0)
            {
              goto LABEL_16;
            }

LABEL_15:
            result = sub_1C0D7854C();
            if (v4)
            {
              return result;
            }

            goto LABEL_16;
          }

          v9 = v6;
          v10 = v6 >> 32;
        }

        if (v9 != v10)
        {
          goto LABEL_15;
        }

LABEL_16:
        type metadata accessor for CryptoKitSecretSharing_ShamirShareGeneratorSerialization(0);
        return sub_1C0D783CC();
      }
    }
  }

  return result;
}

uint64_t sub_1C0D37090@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = xmmword_1C0D7BAB0;
  return sub_1C0D783DC();
}

uint64_t sub_1C0D370E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1C0D783EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C0D37154(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_1C0D783EC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C0D3721C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0D37580(&qword_1EBE6DAB0, type metadata accessor for CryptoKitSecretSharing_ShamirShareGeneratorSerialization, &unk_1C0D7CD7C);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C0D372BC@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1C0D7859C();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1C0D37358(uint64_t a1)
{
  v2 = sub_1C0D37580(qword_1EBE6CBC8, type metadata accessor for CryptoKitSecretSharing_ShamirShareGeneratorSerialization, &unk_1C0D7D258);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C0D373C4(uint64_t a1, uint64_t a2)
{
  sub_1C0D78FFC();
  sub_1C0D78A4C();
  return sub_1C0D7902C();
}

uint64_t sub_1C0D3741C(uint64_t a1, uint64_t a2)
{
  sub_1C0D37580(qword_1EBE6CBC8, type metadata accessor for CryptoKitSecretSharing_ShamirShareGeneratorSerialization, &unk_1C0D7D258);

  return sub_1C0D7850C();
}

uint64_t sub_1C0D37498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C0D78FFC();
  sub_1C0D78A4C();
  return sub_1C0D7902C();
}

uint64_t sub_1C0D37580(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C0D3792C()
{
  result = qword_1EBE6DA98;
  if (!qword_1EBE6DA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE6DAA0, qword_1C0D7D1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DA98);
  }

  return result;
}

uint64_t sub_1C0D37A20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C0D37A88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1C0D37B84(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox(0);
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D9D0, &qword_1C0D7CAF8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v44 = &v40 - v8;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DAD0, &qword_1C0D7D2E0);
  MEMORY[0x1EEE9AC00](v45);
  v10 = &v40 - v9;
  v11 = type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D9C8, &qword_1C0D7CAF0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v40 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DAD8, &qword_1C0D7D2E8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  if (*a1 != *a2)
  {
    goto LABEL_25;
  }

  v40 = v6;
  v42 = v10;
  v21 = a2;
  v41 = type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization(0);
  v22 = *(v41 + 28);
  v23 = *(v18 + 48);
  v43 = a1;
  sub_1C0D13734(a1 + v22, v20, &qword_1EBE6D9C8, &qword_1C0D7CAF0);
  sub_1C0D13734(v21 + v22, &v20[v23], &qword_1EBE6D9C8, &qword_1C0D7CAF0);
  v24 = *(v12 + 48);
  if (v24(v20, 1, v11) == 1)
  {
    if (v24(&v20[v23], 1, v11) == 1)
    {
      sub_1C0D13578(v20, &qword_1EBE6D9C8, &qword_1C0D7CAF0);
      goto LABEL_9;
    }

LABEL_7:
    v25 = &qword_1EBE6DAD8;
    v26 = &qword_1C0D7D2E8;
    v27 = v20;
LABEL_24:
    sub_1C0D13578(v27, v25, v26);
    goto LABEL_25;
  }

  sub_1C0D13734(v20, v17, &qword_1EBE6D9C8, &qword_1C0D7CAF0);
  if (v24(&v20[v23], 1, v11) == 1)
  {
    sub_1C0D37A88(v17, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState);
    goto LABEL_7;
  }

  sub_1C0D37A20(&v20[v23], v14, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState);
  v28 = sub_1C0D38354(v17, v14);
  sub_1C0D37A88(v14, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState);
  sub_1C0D37A88(v17, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState);
  sub_1C0D13578(v20, &qword_1EBE6D9C8, &qword_1C0D7CAF0);
  if ((v28 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_9:
  v29 = v43;
  if (!sub_1C0D04660(*(v43 + 1), *(v43 + 2), *(v21 + 1), *(v21 + 2)))
  {
    goto LABEL_25;
  }

  v30 = v42;
  v31 = *(v41 + 32);
  v32 = *(v45 + 48);
  sub_1C0D13734(v29 + v31, v42, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
  sub_1C0D13734(v21 + v31, v30 + v32, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
  v33 = v47;
  v34 = *(v46 + 48);
  if (v34(v30, 1, v47) != 1)
  {
    v36 = v44;
    sub_1C0D13734(v30, v44, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
    if (v34(v30 + v32, 1, v33) == 1)
    {
      sub_1C0D37A88(v36, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
      goto LABEL_16;
    }

    v37 = v40;
    sub_1C0D37A20(v30 + v32, v40, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
    if (!sub_1C0D04660(*v36, *(v36 + 8), *v37, *(v37 + 8)) || !sub_1C0D04660(*(v36 + 16), *(v36 + 24), *(v37 + 16), *(v37 + 24)) || !sub_1C0D04660(*(v36 + 32), *(v36 + 40), *(v37 + 32), *(v37 + 40)))
    {
      sub_1C0D37A88(v37, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
      sub_1C0D37A88(v36, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
      v25 = &qword_1EBE6D9D0;
      v26 = &qword_1C0D7CAF8;
      goto LABEL_23;
    }

    sub_1C0D783EC();
    sub_1C0D37580(&qword_1EBE6DAE0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v38 = sub_1C0D78A7C();
    sub_1C0D37A88(v37, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
    sub_1C0D37A88(v36, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
    sub_1C0D13578(v30, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
    if (v38)
    {
      goto LABEL_13;
    }

LABEL_25:
    v35 = 0;
    return v35 & 1;
  }

  if (v34(v30 + v32, 1, v33) != 1)
  {
LABEL_16:
    v25 = &qword_1EBE6DAD0;
    v26 = &qword_1C0D7D2E0;
LABEL_23:
    v27 = v30;
    goto LABEL_24;
  }

  sub_1C0D13578(v30, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
LABEL_13:
  sub_1C0D783EC();
  sub_1C0D37580(&qword_1EBE6DAE0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v35 = sub_1C0D78A7C();
  return v35 & 1;
}

uint64_t sub_1C0D38284(uint64_t a1, uint64_t a2)
{
  if (!sub_1C0D04660(*a1, *(a1 + 8), *a2, *(a2 + 8)) || !sub_1C0D04660(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) || !sub_1C0D04660(*(a1 + 32), *(a1 + 40), *(a2 + 32), *(a2 + 40)))
  {
    return 0;
  }

  type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox(0);
  sub_1C0D783EC();
  sub_1C0D37580(&qword_1EBE6DAE0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C0D78A7C() & 1;
}

uint64_t sub_1C0D38354(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    v2 = *(a1 + 8);
    if (*(a2 + 16))
    {
      if (v2)
      {
        return 0;
      }

      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    v2 = 0;
LABEL_8:
    if (v2 != *(a2 + 8))
    {
      return 0;
    }
  }

LABEL_9:
  if (*(a1 + 17) == *(a2 + 17) && *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24) && sub_1C0D04660(*(a1 + 32), *(a1 + 40), *(a2 + 32), *(a2 + 40)) && *(a1 + 48) == *(a2 + 48) && sub_1C0D04660(*(a1 + 56), *(a1 + 64), *(a2 + 56), *(a2 + 64)))
  {
    type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState(0);
    sub_1C0D783EC();
    sub_1C0D37580(&qword_1EBE6DAE0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return sub_1C0D78A7C() & 1;
  }

  return 0;
}

unint64_t sub_1C0D384A4()
{
  result = qword_1EBE6DAF8[0];
  if (!qword_1EBE6DAF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE6DAF8);
  }

  return result;
}

uint64_t sub_1C0D384F8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || !sub_1C0D04660(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)))
  {
    return 0;
  }

  type metadata accessor for CryptoKitSecretSharing_ShamirShareGeneratorSerialization(0);
  sub_1C0D783EC();
  sub_1C0D37580(&qword_1EBE6DAE0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C0D78A7C() & 1;
}

uint64_t sub_1C0D38600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for ARC.Errors(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ARC.Errors(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C0D387A8()
{
  result = qword_1EBE6DB80;
  if (!qword_1EBE6DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DB80);
  }

  return result;
}

void *sub_1C0D387FC(uint64_t a1)
{
  sub_1C0D7821C();
  swift_allocObject();
  sub_1C0D7820C();
  sub_1C0D781EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DB88, &unk_1C0D7D400);
  result = sub_1C0D78EEC();
  v3 = 0;
  v41 = a1;
  v4 = *(a1 + 64);
  v38 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v46 = v6 & v4;
  v7 = (v5 + 63) >> 6;
  v44 = result;
  v40 = result + 8;
  v39 = v7;
  if ((v6 & v4) != 0)
  {
    do
    {
      v8 = __clz(__rbit64(v46));
      v46 &= v46 - 1;
LABEL_10:
      v11 = v8 | (v3 << 6);
      v12 = (*(v41 + 48) + 16 * v11);
      v13 = v12[1];
      v43 = *v12;
      v14 = (*(v41 + 56) + 16 * v11);
      v15 = *v14;
      v16 = v14[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D090, &qword_1C0D7B730);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1C0D7B690;
      *(v17 + 32) = v15;
      v18 = *(v16 + 16);
      if (v18)
      {
        v19 = swift_allocObject();
        v20 = _swift_stdlib_malloc_size(v19);
        v21 = v20 - 32;
        if (v20 < 32)
        {
          v21 = v20 - 25;
        }

        v19[2] = v18;
        v19[3] = 2 * (v21 >> 3);
        v22 = sub_1C0D0EBC8(&v45, v19 + 4, v18, v16);
        v23 = v45;
        v42 = v22;
        sub_1C0D78BFC();
        sub_1C0CF6468(v43, v13);
        sub_1C0D78BFC();
        result = sub_1C0D38C0C(v23);
        if (v42 != v18)
        {
          goto LABEL_36;
        }

        v24 = v13;
        v7 = v39;
        v25 = v43;
      }

      else
      {
        sub_1C0CF6468(v43, v13);
        result = sub_1C0D78BFC();
        v19 = MEMORY[0x1E69E7CC0];
        v25 = v43;
        v24 = v13;
      }

      v26 = v19[2];
      v27 = *(v17 + 16);
      v28 = v27 + v26;
      if (__OFADD__(v27, v26))
      {
        goto LABEL_33;
      }

      v29 = *(v17 + 24) >> 1;
      if (v29 < v28)
      {
        if (v27 <= v28)
        {
          v33 = v27 + v26;
        }

        else
        {
          v33 = *(v17 + 16);
        }

        result = sub_1C0CF4C28(1, v33, 1, v17);
        v17 = result;
        v27 = result[2];
        v29 = result[3] >> 1;
        if (!v19[2])
        {
LABEL_27:

          if (v26)
          {
            goto LABEL_34;
          }

          goto LABEL_28;
        }
      }

      else if (!v26)
      {
        goto LABEL_27;
      }

      if ((v29 - v27) < v26)
      {
        goto LABEL_37;
      }

      memcpy((v17 + 8 * v27 + 32), v19 + 4, 8 * v26);

      if (v26)
      {
        v30 = *(v17 + 16);
        v31 = __OFADD__(v30, v26);
        v32 = v30 + v26;
        if (v31)
        {
          goto LABEL_38;
        }

        *(v17 + 16) = v32;
      }

LABEL_28:

      *(v40 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v34 = (v44[6] + 16 * v11);
      *v34 = v25;
      v34[1] = v24;
      *(v44[7] + 8 * v11) = v17;
      v35 = v44[2];
      v31 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v31)
      {
        goto LABEL_35;
      }

      v44[2] = v36;
    }

    while (v46);
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      v45 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4E8, &qword_1C0D7C040);
      sub_1C0D38C14();
      v37 = sub_1C0D781FC();

      return v37;
    }

    v10 = *(v38 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v46 = (v10 - 1) & v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1C0D38C14()
{
  result = qword_1EBE6DB90;
  if (!qword_1EBE6DB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE6D4E8, &qword_1C0D7C040);
    sub_1C0D38CA0();
    sub_1C0D38CF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DB90);
  }

  return result;
}

unint64_t sub_1C0D38CA0()
{
  result = qword_1EBE6DB98;
  if (!qword_1EBE6DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DB98);
  }

  return result;
}

unint64_t sub_1C0D38CF4()
{
  result = qword_1EBE6DBA0[0];
  if (!qword_1EBE6DBA0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE6D0A0, &qword_1C0D7B770);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE6DBA0);
  }

  return result;
}

uint64_t sub_1C0D38D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C0D38DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C0D38EAC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C0D38EE8(void *a1)
{
  v1 = [a1 serializedBigEndianScalar];
  if (!v1)
  {
    goto LABEL_20;
  }

  v2 = v1;
  v3 = sub_1C0D7832C();
  v5 = v4;

  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_15;
    }

    v9 = *(v3 + 16);
    v8 = *(v3 + 24);
    v10 = __OFSUB__(v8, v9);
    v7 = v8 - v9;
    if (!v10)
    {
LABEL_11:
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
      }

      else if ((v7 & 0x8000000000000000) == 0)
      {
        if (v7)
        {
          v11 = 2 * v7;
          v12 = sub_1C0D78C2C();
          *(v12 + 16) = v11;
          bzero((v12 + 32), v11);
LABEL_16:
          v15 = 0;
          v16 = v12;
          sub_1C0CF6468(v3, v5);
          sub_1C0D39098(v3, v5, &v16, &v15);
          sub_1C0CF448C(v3, v5);
          v13 = sub_1C0D78AFC();

          sub_1C0CF448C(v3, v5);
          return v13;
        }

LABEL_15:
        v12 = MEMORY[0x1E69E7CC0];
        goto LABEL_16;
      }

      __break(1u);
      goto LABEL_19;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v7 = BYTE6(v5);
    goto LABEL_11;
  }

  LODWORD(v7) = HIDWORD(v3) - v3;
  if (!__OFSUB__(HIDWORD(v3), v3))
  {
    v7 = v7;
    goto LABEL_11;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1C0D78EBC();
  __break(1u);
  return result;
}

uint64_t sub_1C0D39098(uint64_t a1, unint64_t a2, uint64_t *a3, void *a4)
{
  v23 = sub_1C0D7836C();
  MEMORY[0x1EEE9AC00](v23);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v10;
  sub_1C0CF6468(a1, a2);
  sub_1C0D7837C();
  sub_1C0D39328();
  result = sub_1C0D78D4C();
  if (v25)
  {
    return (*(v22 + 8))(v9, v23);
  }

  v12 = v24;
  while (1)
  {
    v13 = *a4;
    if (*a4 + 0x4000000000000000 < 0)
    {
      break;
    }

    if (v12 <= 0x9F)
    {
      v14 = (v12 >> 4) | 0x30;
    }

    else
    {
      v14 = (v12 >> 4) + 87;
    }

    v15 = *a3;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v15;
    if (result)
    {
      v16 = 2 * v13;
      if (2 * v13 < 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      result = sub_1C0CFD670(v15);
      v15 = result;
      *a3 = result;
      v16 = 2 * v13;
      if (2 * v13 < 0)
      {
        goto LABEL_26;
      }
    }

    if (v16 >= *(v15 + 16))
    {
      goto LABEL_27;
    }

    *(v15 + v16 + 32) = v14;
    v17 = *a4;
    if (*a4 + 0x4000000000000000 < 0)
    {
      goto LABEL_28;
    }

    v18 = *a3;
    if ((v12 & 0xF) <= 9)
    {
      v19 = v12 & 0xF | 0x30;
    }

    else
    {
      v19 = (v12 & 0xF) + 87;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v18;
    if (result)
    {
      if (v17 < 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      result = sub_1C0CFD670(v18);
      v18 = result;
      *a3 = result;
      if (v17 < 0)
      {
LABEL_24:
        __break(1u);
        break;
      }
    }

    v20 = (2 * v17) | 1;
    if (v20 >= *(v18 + 16))
    {
      goto LABEL_29;
    }

    *(v18 + v20 + 32) = v19;
    if (__OFADD__(*a4, 1))
    {
      goto LABEL_30;
    }

    ++*a4;
    result = sub_1C0D78D4C();
    v12 = v24;
    if (v25 == 1)
    {
      return (*(v22 + 8))(v9, v23);
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

unint64_t sub_1C0D39328()
{
  result = qword_1ED9076D8;
  if (!qword_1ED9076D8)
  {
    sub_1C0D7836C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9076D8);
  }

  return result;
}

unint64_t sub_1C0D393E0()
{
  result = qword_1EBE6DC28;
  if (!qword_1EBE6DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DC28);
  }

  return result;
}

unint64_t sub_1C0D39434()
{
  result = qword_1EBE6C9D0;
  if (!qword_1EBE6C9D0)
  {
    sub_1C0D3949C(255, &qword_1EBE6C9C8, 0x1E69E58C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6C9D0);
  }

  return result;
}

uint64_t sub_1C0D3949C(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_1C0D39510(__SecKey *a1, void (*a2)(uint64_t, uint64_t, uint64_t, void))
{
  v4 = SecKeyCopyAttributes(a1);
  if (!v4)
  {
    sub_1C0D393E0();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();

    return;
  }

  v5 = v4;
  sub_1C0D3949C(0, &qword_1EBE6C9C8, 0x1E69E58C0);
  sub_1C0D39434();
  v6 = sub_1C0D78A3C();
  v7 = v5;
  v8 = sub_1C0D78A8C();
  v9 = v8;
  if ((v6 & 0xC000000000000001) != 0)
  {
    v27 = a2;
    v10 = sub_1C0D78EAC();

    if (!v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (!*(v6 + 16) || (sub_1C0D0F100(v8), (v12 & 1) == 0))
    {

LABEL_13:

      sub_1C0D393E0();
      swift_allocError();
      *v17 = 1;
      swift_willThrow();

      return;
    }

    v27 = a2;
    swift_unknownObjectRetain();
  }

  v13 = sub_1C0D78A3C();

  v14 = sub_1C0D78A8C();
  v15 = v14;
  if ((v13 & 0xC000000000000001) != 0)
  {
    v16 = sub_1C0D78EAC();

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (!*(v13 + 16) || (v18 = sub_1C0D0F100(v14), (v19 & 1) == 0))
    {

      goto LABEL_22;
    }

    v16 = *(*(v13 + 56) + 8 * v18);
    swift_unknownObjectRetain();
  }

  if ([v16 respondsToSelector_])
  {
    if ([v16 BOOLValue])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DC30, &qword_1C0D7D5C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C0D7B690;
      *(inited + 32) = sub_1C0D78A9C();
      *(inited + 40) = v21;
      sub_1C0D3949C(0, &qword_1EBE6DC38, 0x1E696AD98);
      *(inited + 48) = sub_1C0D78D0C();
      v22 = sub_1C0D39B78(inited);
      swift_setDeallocating();
      sub_1C0D39C7C(inited + 32);
      swift_unknownObjectRelease();
LABEL_23:
      swift_unknownObjectRetain();
      objc_opt_self();
      v23 = swift_dynamicCastObjCClassUnconditional();
      v24 = sub_1C0D7832C();
      v26 = v25;

      v27(v24, v26, v22, 0);
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
LABEL_22:
    v22 = 0;
    goto LABEL_23;
  }

  __break(1u);
}

void *sub_1C0D39970(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D350, &unk_1C0D7BAA0);
  v3 = sub_1C0D78F0C();
  LODWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1C0D0EF18(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_1C0D78BFC();
    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 4 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 2);
    v15 = *v10;
    sub_1C0D78BFC();
    v8 = sub_1C0D0EF18(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C0D39A80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DC58, &qword_1C0D7D698);
    v3 = sub_1C0D78F0C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_1C0D0EF8C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C0D39B78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DC50, &qword_1C0D7D690);
    v3 = sub_1C0D78F0C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1C0D78BFC();
      swift_unknownObjectRetain();
      result = sub_1C0D0F040(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C0D39C7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DC40, &qword_1C0D7D5C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for SecKeySEPInteropErrors(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SecKeySEPInteropErrors(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C0D39E38()
{
  result = qword_1EBE6DC48;
  if (!qword_1EBE6DC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DC48);
  }

  return result;
}

uint64_t sub_1C0D39E8C(void *a1, void *a2, void *a3)
{
  if (qword_1EBE6CCC0 != -1)
  {
    swift_once();
  }

  v22 = sub_1C0D6E528(qword_1EBE72D98);
  v6 = [a1 serializedBigEndianScalar];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1C0D7832C();
    v10 = v9;

    sub_1C0D7834C();
    sub_1C0CF448C(v8, v10);
    v11 = [a2 serializedPublicKey_];
    if (v11)
    {
      v12 = v11;
      v13 = sub_1C0D7832C();
      v15 = v14;

      sub_1C0D7834C();
      sub_1C0CF448C(v13, v15);
      v16 = [a3 serializedPublicKey_];
      if (v16)
      {
        v17 = v16;
        v18 = sub_1C0D7832C();
        v20 = v19;

        sub_1C0D7834C();
        sub_1C0CF448C(v18, v20);
        return v22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  result = sub_1C0D78EBC();
  __break(1u);
  return result;
}

id sub_1C0D3A04C()
{
  v2 = v0;
  if (qword_1EBE6CCA8 != -1)
  {
    swift_once();
  }

  v21 = sub_1C0D6E528(qword_1EBE72D80);
  v22 = v3;
  result = [*(v0 + 16) serializedPublicKey_];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_1C0D7832C();
  v8 = v7;

  sub_1C0D7834C();
  sub_1C0CF448C(v6, v8);
  result = [*v2 serializedPublicKey_];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = result;
  v10 = sub_1C0D7832C();
  v12 = v11;

  sub_1C0D7834C();
  sub_1C0CF448C(v10, v12);
  result = [*(v2 + 8) serializedPublicKey_];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = sub_1C0D7832C();
  v16 = v15;

  sub_1C0D7834C();
  sub_1C0CF448C(v14, v16);
  v17 = sub_1C0D3AE84(*(v2 + 24), *(v2 + 32));
  if (v1)
  {
    return sub_1C0CF448C(v21, v22);
  }

  v19 = v17;
  v20 = v18;
  sub_1C0D7834C();
  sub_1C0CF448C(v19, v20);
  return v21;
}

uint64_t sub_1C0D3A200()
{
  v1 = v0;
  if (qword_1EBE6CCB8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EBE72D90;
  v3 = sub_1C0D3ACBC(*(v1 + 72));
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v25 = sub_1C0D6E528(v5);
  v6 = [*v1 serializedPublicKey_];
  if (!v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  v8 = sub_1C0D7832C();
  v10 = v9;

  sub_1C0D7834C();
  sub_1C0CF448C(v8, v10);
  v11 = [*(v1 + 8) serializedPublicKey_];
  if (!v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = v11;
  v13 = sub_1C0D7832C();
  v15 = v14;

  sub_1C0D7834C();
  sub_1C0CF448C(v13, v15);
  v16 = [*(v1 + 16) serializedBigEndianScalar];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1C0D7832C();
    v20 = v19;

    sub_1C0D7834C();
    sub_1C0CF448C(v18, v20);
    v21 = sub_1C0D3A698();
    v23 = v22;
    sub_1C0D7834C();
    sub_1C0CF448C(v21, v23);
    return v25;
  }

LABEL_11:
  result = sub_1C0D78EBC();
  __break(1u);
  return result;
}

uint64_t sub_1C0D3A3F0()
{
  v0 = sub_1C0D786CC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  sub_1C0D7884C();
  sub_1C0D3AB30();
  sub_1C0D786EC();
  v5 = sub_1C0D786BC();
  (*(v1 + 8))(v3, v0);
  result = [v4 compressedx962PointByteCountForCurveParameters_];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v0 = 3 * result;
    if ((result * 3) >> 64 == (3 * result) >> 63)
    {
      if (qword_1EBE6CCC8 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_8:
  result = swift_once();
LABEL_4:
  if (__OFADD__(v0, qword_1EBE72DA0))
  {
    __break(1u);
  }

  else
  {
    qword_1EBE72D80 = v0 + qword_1EBE72DA0;
  }

  return result;
}

uint64_t sub_1C0D3A56C()
{
  v0 = sub_1C0D786CC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  sub_1C0D7884C();
  sub_1C0D3AB30();
  sub_1C0D786EC();
  v5 = sub_1C0D786BC();
  (*(v1 + 8))(v3, v0);
  result = [v4 compressedx962PointByteCountForCurveParameters_];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    qword_1EBE72D88 = result;
  }

  return result;
}

uint64_t sub_1C0D3A698()
{
  v1 = v0;
  v2 = *(v0 + 48);
  v3 = sub_1C0D3ACBC(v2);
  v41 = sub_1C0D6E528(v3);
  v4 = [*v0 serializedPublicKey_];
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = v4;
  v6 = sub_1C0D7832C();
  v8 = v7;

  sub_1C0D7834C();
  sub_1C0CF448C(v6, v8);
  if (v2 < 0)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v2)
  {
    v9 = 0;
    v10 = *(v1 + 8);
    do
    {
      if (v9 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_17;
      }

      v11 = *(v10 + 32 + 8 * v9);
      v12 = [v11 serializedBigEndianScalar];
      if (!v12)
      {
        goto LABEL_20;
      }

      v13 = v12;
      ++v9;
      v14 = sub_1C0D7832C();
      v16 = v15;

      sub_1C0D7834C();
      sub_1C0CF448C(v14, v16);
    }

    while (v2 != v9);
    v17 = 0;
    v18 = *(v1 + 16);
    while (v17 < *(v18 + 16))
    {
      v19 = *(v18 + 32 + 8 * v17);
      v20 = [v19 serializedBigEndianScalar];
      if (!v20)
      {
        goto LABEL_20;
      }

      v21 = v20;
      ++v17;
      v22 = sub_1C0D7832C();
      v24 = v23;

      sub_1C0D7834C();
      sub_1C0CF448C(v22, v24);
      if (v2 == v17)
      {
        goto LABEL_12;
      }
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
  v25 = [*(v1 + 24) serializedBigEndianScalar];
  if (v25)
  {
    v26 = v25;
    v27 = sub_1C0D7832C();
    v29 = v28;

    sub_1C0D7834C();
    sub_1C0CF448C(v27, v29);
    v30 = [*(v1 + 32) serializedBigEndianScalar];
    if (v30)
    {
      v31 = v30;
      v32 = sub_1C0D7832C();
      v34 = v33;

      sub_1C0D7834C();
      sub_1C0CF448C(v32, v34);
      v35 = [*(v1 + 40) serializedBigEndianScalar];
      if (v35)
      {
        v36 = v35;
        v37 = sub_1C0D7832C();
        v39 = v38;

        sub_1C0D7834C();
        sub_1C0CF448C(v37, v39);
        return v41;
      }
    }
  }

LABEL_20:
  result = sub_1C0D78EBC();
  __break(1u);
  return result;
}

int64_t sub_1C0D3A984(uint64_t a1, void *a2)
{
  v3 = sub_1C0D786CC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  sub_1C0D7884C();
  sub_1C0D3AB30();
  sub_1C0D786EC();
  v8 = sub_1C0D786BC();
  v9 = *(v4 + 8);
  v9(v6, v3);
  result = [v7 compressedx962PointByteCountForCurveParameters_];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = result;
  if (result + 0x4000000000000000 < 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1C0D786EC();
  v12 = sub_1C0D786BC();
  v9(v6, v3);
  result = [v7 groupOrderByteCountForCP_];
  if (result < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!__OFADD__(2 * v11, result))
  {
    *a2 = 2 * v11 + result;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_1C0D3AB30()
{
  result = qword_1EBE6D428;
  if (!qword_1EBE6D428)
  {
    sub_1C0D7884C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6D428);
  }

  return result;
}

int64_t sub_1C0D3AB88()
{
  v0 = sub_1C0D786CC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  sub_1C0D7884C();
  sub_1C0D3AB30();
  sub_1C0D786EC();
  v5 = sub_1C0D786BC();
  (*(v1 + 8))(v3, v0);
  result = [v4 groupOrderByteCountForCP_];
  if (result < 0)
  {
    __break(1u);
  }

  else if (result + 0x4000000000000000 >= 0)
  {
    qword_1EBE72DA0 = 2 * result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D3ACBC(uint64_t a1)
{
  v2 = sub_1C0D786CC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  sub_1C0D7884C();
  sub_1C0D3AB30();
  sub_1C0D786EC();
  v7 = sub_1C0D786BC();
  v8 = *(v3 + 8);
  v8(v5, v2);
  result = [v6 compressedx962PointByteCountForCurveParameters_];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a1 + 0x4000000000000000 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = __OFADD__(2 * a1, 3);
  v11 = 2 * a1 + 3;
  if (v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = result;
  sub_1C0D786EC();
  v13 = sub_1C0D786BC();
  v8(v5, v2);
  result = [v6 groupOrderByteCountForCP_];
  if (result < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = v11 * result;
  if ((v11 * result) >> 64 != (v11 * result) >> 63)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v12 + v14;
  if (__OFADD__(v12, v14))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0D3AE84(void *a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    if (qword_1EBE6CCC8 != -1)
    {
      swift_once();
    }

    v17 = sub_1C0D6E528(qword_1EBE72DA0);
    v4 = [a1 serializedBigEndianScalar];
    if (v4 && (v5 = v4, v6 = sub_1C0D7832C(), v8 = v7, v5, sub_1C0D7834C(), sub_1C0CF448C(v6, v8), v9 = *(a2 + 32), (v10 = [v9 serializedBigEndianScalar]) != 0))
    {
      v11 = v10;
      v12 = sub_1C0D7832C();
      v14 = v13;

      sub_1C0D7834C();
      sub_1C0CF448C(v12, v14);
      return v17;
    }

    else
    {
      result = sub_1C0D78EBC();
      __break(1u);
    }
  }

  else
  {
    sub_1C0D2FE30();
    swift_allocError();
    *v16 = 1;
    return swift_willThrow();
  }

  return result;
}

id Scrypt.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Scrypt.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Scrypt();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Scrypt.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for Scrypt();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

size_t _s16CryptoKitPrivate6ScryptC9deriveKey8password4salt10outputSize4cost05blockJ015parallelizationSo6NSDataCSgAL_AMSis6UInt64Vs6UInt32VAQtFZ_0(void *a1, void *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = ccscrypt_storage_size();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

  if (result)
  {
    v10 = result;
    v11 = sub_1C0D78C2C();
    *(v11 + 16) = v10;
    bzero((v11 + 32), v10);
    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  if (!a3)
  {
LABEL_8:
    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  v12 = sub_1C0D78C2C();
  *(v12 + 16) = a3;
  bzero((v12 + 32), a3);
LABEL_9:
  [a1 length];
  [a1 bytes];
  if (a2)
  {
    [a2 length];
    [a2 bytes];
  }

  sub_1C0D78BFC();
  sub_1C0D78BFC();
  v13 = ccscrypt();

  swift_bridgeObjectRelease_n();
  if (v13)
  {

    return 0;
  }

  else
  {
    v14 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:v12 + 32 length:{a3, a3, v12 + 32}];

    return v14;
  }
}

_BYTE *sub_1C0D3B3AC(_BYTE *result, uint64_t a2, char **a3)
{
  if (result)
  {
    v4 = *result;
    v20 = 1;
    v18 = v4;
    if (v4)
    {
      v6 = 0;
      v17 = result;
      do
      {
        result = sub_1C0D3C6C4(result, a2, &v20);
        if (v3)
        {
          break;
        }

        v9 = result;
        v10 = v7;
        v11 = v8;
        v12 = *a3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a3 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v12 = sub_1C0CF4FA0(0, *(v12 + 2) + 1, 1, v12);
          *a3 = v12;
        }

        v15 = *(v12 + 2);
        v14 = *(v12 + 3);
        if (v15 >= v14 >> 1)
        {
          v12 = sub_1C0CF4FA0((v14 > 1), v15 + 1, 1, v12);
          *a3 = v12;
        }

        ++v6;
        *(v12 + 2) = v15 + 1;
        v16 = &v12[24 * v15];
        *(v16 + 4) = v9;
        *(v16 + 5) = v10;
        *(v16 + 6) = v11;
        result = v17;
      }

      while (v6 != v18);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PIR.KeywordPirClient.init(pirParams:hashFunctionCount:secretKey:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a4;
  v6 = *(result + 16);
  v48 = *result;
  v49 = v6;
  *v50 = *(result + 32);
  *&v50[10] = *(result + 42);
  v8 = *a3;
  v7 = a3[1];
  if (BYTE2(v48) != 2)
  {
    v16 = a2;
    v17 = *(result + 16);
    v35 = *result;
    v36 = v17;
    *v37 = *(result + 32);
    *&v37[10] = *(result + 42);
    v33 = v8;
    v34 = v7;
    result = PIR.IndexPirClient.init(pirParams:secretKey:)(&v35, &v33, &v38);
    if (v4)
    {
      return result;
    }

    v45 = v40;
    v46 = v41;
    v47 = v42;
    v43 = v38;
    v44 = v39;
LABEL_10:
    *v5 = v16;
    v18 = v43;
    *(v5 + 24) = v44;
    v19 = v46;
    *(v5 + 40) = v45;
    *(v5 + 56) = v19;
    *(v5 + 72) = v47;
    *(v5 + 8) = v18;
    return result;
  }

  v9 = *&v50[8] * a2;
  if ((*&v50[8] * a2) >> 64 != (*&v50[8] * a2) >> 63)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v10 = v49;
  if (v49 <= 0)
  {
LABEL_18:
    sub_1C0CF448C(v8, v7);
LABEL_27:
    sub_1C0CF8DE0();
    swift_allocError();
    *v26 = 5;
    *(v26 + 4) = 1;
    swift_willThrow();
    return sub_1C0D3B80C(&v48);
  }

  v11 = v48;
  v29 = BYTE1(v48);
  v51 = *(&v48 + 1);
  v12 = *(&v49 + 1);
  v32 = *&v50[16];
  v31 = v50[24];
  v30 = v50[25];
  sub_1C0D3B860(&v48, &v38);
  result = cche_encryption_params_plaintext_modulus();
  if (!result)
  {
    goto LABEL_33;
  }

  v13 = result;
  result = cche_encryption_params_polynomial_degree();
  if (v10 >> 60)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  v14 = (__clz(v13) ^ 0x3F) * result;
  if (v14 >= (8 * v10))
  {
    v15 = v14 / (8 * v10);
  }

  else
  {
    v15 = 1;
  }

  result = sub_1C0D33418(v15, v51);
  v20 = *(v12 + 16);
  if (v20)
  {
    v21 = (v12 + 32);
    v22 = 1;
    do
    {
      v23 = *v21++;
      v24 = v22 * v23;
      if ((v22 * v23) >> 64 != (v22 * v23) >> 63)
      {
        __break(1u);
        goto LABEL_32;
      }

      v22 = v24;
      --v20;
    }

    while (v20);
    if (v24 >= result)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (result > 1)
  {
LABEL_17:
    sub_1C0D3B80C(&v48);
    goto LABEL_18;
  }

LABEL_20:
  v25 = v32;
  if (v31)
  {
    v25 = 1;
  }

  if (!v25)
  {
    goto LABEL_35;
  }

  if (v9 == 0x8000000000000000 && v25 == -1)
  {
    goto LABEL_36;
  }

  if (v9 % v25)
  {
    sub_1C0CF448C(v8, v7);
    sub_1C0D3B80C(&v48);
    goto LABEL_27;
  }

  sub_1C0D3B80C(&v48);
  LOBYTE(v35) = v11;
  BYTE1(v35) = v29;
  BYTE2(v35) = 2;
  *(&v35 + 1) = v51;
  *&v36 = v10;
  *(&v36 + 1) = v12;
  *v37 = v15;
  *&v37[8] = v9;
  *&v37[16] = v32;
  v37[24] = v31;
  v37[25] = v30;
  v33 = v8;
  v34 = v7;
  result = PIR.IndexPirClient.init(pirParams:secretKey:)(&v35, &v33, &v38);
  if (!v4)
  {
    v45 = v40;
    v46 = v41;
    v47 = v42;
    v43 = v38;
    v44 = v39;
    v16 = a2;
    v5 = a4;
    goto LABEL_10;
  }

  return result;
}

uint64_t PIR.KeywordPirClient.generateGaloisKey()@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 56);
  v14[2] = *(v1 + 40);
  v14[3] = v4;
  v14[4] = *(v1 + 72);
  v14[0] = *(v1 + 8);
  v14[1] = v3;
  v5 = *(v1 + 24);
  v6 = *(v1 + 56);
  v11 = *(v1 + 40);
  v12 = v6;
  v13 = *(v1 + 72);
  v9 = *(v1 + 8);
  v10 = v5;
  sub_1C0D3B974(v14, v8);
  PIR.IndexPirClient.generateGaloisKey()(a1);
  v8[2] = v11;
  v8[3] = v12;
  v8[4] = v13;
  v8[0] = v9;
  v8[1] = v10;
  return sub_1C0D3B9D0(v8);
}

uint64_t PIR.KeywordPirClient.generateRelinKey()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 80);

  return sub_1C0D61224(v3, a1);
}

char *PIR.KeywordPirClient.query(keyword:)(uint64_t a1, unint64_t a2)
{
  v4 = *(v2 + 10);
  v5 = sub_1C0CF610C(a1, a2, *(v2 + 16), *v2);
  if (v4 != 2)
  {
    return sub_1C0D5BBD0(v5);
  }

  v6 = sub_1C0D5BA94(v5);

  if (!v3)
  {
    return v6;
  }

  return result;
}

void *PIR.KeywordPirClient.decrypt(replies:keyword:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v74 = a1;
  v6 = sub_1C0D789EC();
  v51 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1C0D7865C();
  v50 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v12 = *(v3 + 24);
  v69 = *(v3 + 8);
  v70 = v12;
  v13 = *(v3 + 56);
  v71 = *(v3 + 40);
  v72 = v13;
  v73 = *(v3 + 72);
  v49 = BYTE2(v69);
  v48 = sub_1C0CF610C(a2, a3, *(&v69 + 1), v11);
  sub_1C0CF6410();
  sub_1C0D7863C();
  sub_1C0CF6468(a2, a3);
  v14 = v52;
  sub_1C0D3C2C8(a2, a3, v8);
  sub_1C0CF448C(a2, a3);
  sub_1C0D7862C();
  (*(v51 + 8))(v8, v6);
  sub_1C0D7864C();
  result = (*(v50 + 8))(v10, v53);
  v16 = v64;
  if (v49 <= 1)
  {
    v54 = v74;
    v55 = 0;
    v56 = v48;
    v57 = 0;
    v58 = 0;
    sub_1C0D78BFC();
    sub_1C0D3C178();
    if (v17)
    {
      v19 = v17;
      v20 = v18;
      while (1)
      {
        v65 = v70;
        v66 = v71;
        v67 = v72;
        v68 = v73;
        v64 = v69;
        sub_1C0D3B974(&v69, &v59);
        v21 = PIR.IndexPirClient.decrypt(reply:index:)(v19, v20);
        if (v14)
        {
          break;
        }

        v23 = v21;
        v24 = v22;
        v61 = v66;
        v62 = v67;
        v63 = v68;
        v59 = v64;
        v60 = v65;
        sub_1C0D3B9D0(&v59);

        sub_1C0CF6468(v23, v24);
        v25 = sub_1C0D3C854(v23, v24);
        v26 = (v25 + 32);
        v27 = *(v25 + 2) + 1;
        while (--v27)
        {
          v28 = v26 + 3;
          v29 = *v26;
          v26 += 3;
          if (v29 == v16)
          {
            v19 = *(v28 - 2);
            sub_1C0CF6468(v19, *(v28 - 1));
            sub_1C0CF448C(v23, v24);

            goto LABEL_23;
          }
        }

        sub_1C0CF448C(v23, v24);

        sub_1C0D3C178();
        v19 = v30;
        v20 = v31;
        if (!v30)
        {
          goto LABEL_10;
        }
      }

      v61 = v66;
      v62 = v67;
      v63 = v68;
      v59 = v64;
      v60 = v65;
      sub_1C0D3B9D0(&v59);

      goto LABEL_23;
    }

LABEL_10:

    goto LABEL_22;
  }

  v32 = v48;
  v65 = v70;
  v66 = v71;
  v67 = v72;
  v68 = v73;
  v64 = v69;
  if (*(v74 + 16))
  {
    v19 = *(v74 + 32);
    sub_1C0D3B974(&v69, &v59);
    v33 = sub_1C0D78BFC();
    PIR.IndexPirClient.decryptVectorizedPirReply(reply:indices:)(v33, v32);
    if (v14)
    {
      v61 = v66;
      v62 = v67;
      v63 = v68;
      v59 = v64;
      v60 = v65;
      sub_1C0D3B9D0(&v59);

LABEL_23:

      return v19;
    }

    v35 = v34;
    v61 = v66;
    v62 = v67;
    v63 = v68;
    v59 = v64;
    v60 = v65;
    sub_1C0D3B9D0(&v59);

    v74 = *(v35 + 16);
    if (!v74)
    {
LABEL_22:

      return 0;
    }

    v36 = 0;
    v37 = v35 + 32;
    while (v36 < *(v35 + 16))
    {
      v38 = v37;
      v39 = (v37 + 16 * v36);
      v41 = *v39;
      v40 = v39[1];
      sub_1C0CF6468(*v39, v40);
      sub_1C0CF6468(v41, v40);
      v42 = sub_1C0D3C854(v41, v40);
      ++v36;
      v43 = (v42 + 32);
      v44 = *(v42 + 2) + 1;
      while (--v44)
      {
        v45 = v43 + 3;
        v46 = *v43;
        v43 += 3;
        if (v46 == v16)
        {
          v19 = *(v45 - 2);
          sub_1C0CF6468(v19, *(v45 - 1));
          sub_1C0CF448C(v41, v40);

          goto LABEL_23;
        }
      }

      sub_1C0CF448C(v41, v40);

      v37 = v38;
      if (v36 == v74)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C0D3C178()
{
  if ((*(v0 + 32) & 1) == 0)
  {
    v1 = *(v0 + 8);
    v2 = *(*v0 + 16);
    if (v1 == v2)
    {
LABEL_5:
      *(v0 + 32) = 1;
      return;
    }

    if (v1 >= v2)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 8) = v1 + 1;
      v3 = *(v0 + 24);
      v4 = *(*(v0 + 16) + 16);
      if (v3 == v4)
      {
        goto LABEL_5;
      }

      if (v3 < v4)
      {
        *(v0 + 24) = v3 + 1;
        sub_1C0D78BFC();
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C0D3C214()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  v2 = *(v0 + 8);
  v3 = *(*v0 + 16);
  if (v2 == v3)
  {
    goto LABEL_6;
  }

  if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *(*v0 + 8 * v2 + 32);
    *(v0 + 8) = v2 + 1;
    v5 = *(v0 + 24);
    v6 = *(*(v0 + 16) + 16);
    if (v5 == v6)
    {
LABEL_6:
      result = 0;
      *(v0 + 32) = 1;
      return result;
    }

    if (v5 < v6)
    {
      *(v0 + 24) = v5 + 1;
      sub_1C0D78BFC();
      sub_1C0D78BFC();
      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D3C2C8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_1C0D789EC();
      sub_1C0CF6410();
      return sub_1C0D7861C();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1C0D3C570(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1C0D3C570(v5, v6);
  }

  sub_1C0D789EC();
  sub_1C0CF6410();
  return sub_1C0D7861C();
}

_BYTE *sub_1C0D3C448(uint64_t a1, unint64_t a2, char **a3)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v8, 0, 14);
      v4 = v8;
      return sub_1C0D3B3AC(v8, v4, a3);
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1C0D3C620(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  if (v3)
  {
    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1C0D3C620(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  v8[0] = a1;
  LOWORD(v8[1]) = a2;
  BYTE2(v8[1]) = BYTE2(a2);
  BYTE3(v8[1]) = BYTE3(a2);
  BYTE4(v8[1]) = BYTE4(a2);
  BYTE5(v8[1]) = BYTE5(a2);
  v4 = v8 + BYTE6(a2);
  return sub_1C0D3B3AC(v8, v4, a3);
}

uint64_t sub_1C0D3C570(uint64_t a1, uint64_t a2)
{
  result = sub_1C0D7812C();
  if (!result || (result = sub_1C0D7815C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1C0D7814C();
      sub_1C0D789EC();
      sub_1C0CF6410();
      return sub_1C0D7861C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

_BYTE *sub_1C0D3C620(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  result = sub_1C0D7812C();
  v8 = result;
  if (result)
  {
    result = sub_1C0D7815C();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_1C0D7814C();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = &v8[v12];
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return sub_1C0D3B3AC(v8, v14, a4);
}

uint64_t sub_1C0D3C6C4(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v4 = a2 - result;
  if (result)
  {
    v5 = a2 - result;
  }

  else
  {
    v5 = 0;
  }

  v6 = *a3 + 8;
  if (__OFADD__(*a3, 8))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = *a3 + 10;
  if (__OFADD__(v6, 2))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v5 < v7)
  {
    sub_1C0CF8DE0();
    swift_allocError();
    *v8 = 5;
    *(v8 + 4) = 1;
    swift_willThrow();
    return v3;
  }

  v9 = result;
  if (result)
  {
    v3 = *(result + *a3);
    v11 = *(result + v6);
    *a3 = v7;
    result = sub_1C0D0F990(v11);
    v16 = result;
    v17 = v13;
    v14 = v7 + v11;
    if (!__OFADD__(v7, v11))
    {
      if (v4 < v14)
      {
        goto LABEL_14;
      }

      if (v14 >= v7)
      {
        if (sub_1C0D73074(v7, v7 + v11, v9, a2) == v11)
        {
          sub_1C0D72C50(&v16, v9, a2, a3, v11);
          *a3 = v14;
          return v3;
        }

LABEL_14:
        sub_1C0CF8DE0();
        swift_allocError();
        *v15 = 5;
        *(v15 + 4) = 1;
        swift_willThrow();
        sub_1C0CF448C(v16, v17);
        return v3;
      }

      goto LABEL_19;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1C0D3C854(uint64_t a1, unint64_t a2)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_10;
    }
  }

  else if (v5)
  {
    if (a1 == a1 >> 32)
    {
LABEL_10:
      sub_1C0CF8DE0();
      swift_allocError();
      *v7 = 5;
      *(v7 + 4) = 1;
      swift_willThrow();
      return sub_1C0CF448C(a1, a2);
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_10;
  }

  v8 = MEMORY[0x1E69E7CC0];
  sub_1C0D3C448(a1, a2, &v8);
  sub_1C0CF448C(a1, a2);
  result = v8;
  if (v2)
  {
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1C0D3C968(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0D3C9B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void HE.SerializedEvaluationKey.encryptionParams.getter(_BYTE *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

_BYTE *HE.SerializedEvaluationKey.init(encryptionParams:galoisKey:relinKey:)@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = result[1];
  v5 = *a2;
  v6 = *a3;
  *a4 = *result;
  *(a4 + 1) = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t HE.SerializedEvaluationKey.init(config:secretKey:scheme:)@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 1);
  v8 = a1[16];
  v10 = *a2;
  v9 = a2[1];
  LOBYTE(v17[0]) = *a1;
  BYTE1(v17[0]) = v6;
  _s12ParamContextCMa();
  swift_allocObject();
  v11 = sub_1C0D14150(v17);
  if (v3)
  {
    sub_1C0CF448C(v10, v9);
  }

  v13 = v11;
  v17[0] = v10;
  v17[1] = v9;

  v14 = sub_1C0D51B84(v17, v13);

  if (*(v7 + 16))
  {

    sub_1C0D78BFC();

    sub_1C0D615B8(v13, v7, v14, v17);

    v15 = v17[0];
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {

    v15 = 0;
    if (!v8)
    {
LABEL_8:

      v16 = 0;
      goto LABEL_9;
    }
  }

  result = sub_1C0D61224(v14, v17);
  v16 = v17[0];
LABEL_9:
  *a3 = v5;
  *(a3 + 1) = v6;
  *(a3 + 8) = v15;
  *(a3 + 16) = v16;
  return result;
}

uint64_t sub_1C0D3CC30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C0D3CC8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t PEC.PlaintextPacking.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1C0D3CD10()
{
  result = qword_1EBE6DC60;
  if (!qword_1EBE6DC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DC60);
  }

  return result;
}

char *sub_1C0D3CD98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v12 = MEMORY[0x1E69E7CC0];
    result = sub_1C0CF7C90(0, v3, 0);
    v6 = (a1 + 32);
    while (1)
    {
      v8 = *v6++;
      v7 = v8;
      if ((v8 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (HIDWORD(v7))
      {
        goto LABEL_11;
      }

      v10 = *(v12 + 16);
      v9 = *(v12 + 24);
      if (v10 >= v9 >> 1)
      {
        result = sub_1C0CF7C90((v9 > 1), v10 + 1, 1);
      }

      *(v12 + 16) = v10 + 1;
      *(v12 + 4 * v10 + 32) = v7;
      if (!--v3)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_8:
    result = *(a2 + 24);
    if (result)
    {
      v11 = cche_ciphertext_coeff_decompose_nptexts();

      return v11;
    }
  }

  __break(1u);
  return result;
}