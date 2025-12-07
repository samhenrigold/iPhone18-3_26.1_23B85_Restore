__n128 MLS.LeafNode.init(encryptionKey:signatureKey:credential:capabilities:content:extensions:signature:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, __int128 *a6@<X5>, __n128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v11 = *a6;
  v12 = a6[1];
  *(a9 + 32) = *a5;
  *(a9 + 48) = v11;
  v13 = *(a6 + 4);
  v14 = a7[1].n128_u8[0];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 64) = v12;
  *(a9 + 80) = v13;
  result = *a7;
  *(a9 + 88) = *a7;
  *(a9 + 104) = v14;
  *(a9 + 112) = a8;
  *(a9 + 120) = a10;
  *(a9 + 128) = a11;
  return result;
}

uint64_t MLS.LeafNode.encryptionKey.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

void MLS.LeafNode.encryptionKey.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
}

uint64_t MLS.LeafNode.signatureKey.getter()
{
  v1 = *(v0 + 16);
  sub_26BE00608(v1, *(v0 + 24));
  return v1;
}

void MLS.LeafNode.signatureKey.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void MLS.LeafNode.credential.getter(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v3;
  sub_26BE04890(v2, v3);
}

void MLS.LeafNode.credential.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_26BE0489C(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
}

void MLS.LeafNode.content.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 104);
  *(a1 + 16) = v4;
  sub_26BE5A15C(v2, v3, v4);
}

void MLS.LeafNode.content.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  sub_26BE5A170(*(v1 + 88), *(v1 + 96), *(v1 + 104));
  *(v1 + 88) = v2;
  *(v1 + 96) = v3;
  *(v1 + 104) = v4;
}

uint64_t MLS.LeafNode.extensions.setter(uint64_t a1)
{

  *(v1 + 112) = a1;
  return result;
}

void sub_26BE7EBA4(unint64_t a1)
{
  v70 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v59 = *(a1 + 48);
  v60 = *(a1 + 64);
  v63 = *(a1 + 72);
  *&v64 = *(a1 + 40);
  v61 = *(a1 + 56);
  v62 = *(a1 + 80);
  v7 = *(a1 + 112);
  v8 = v3 >> 62;
  v56 = *(a1 + 88);
  v57 = *(a1 + 96);
  v58 = *(a1 + 104);
  if ((v3 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v11 = *(v2 + 16);
  v10 = *(v2 + 24);
  v9 = v10 - v11;
  if (__OFSUB__(v10, v11))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v9 = HIDWORD(v2) - v2;
  }

LABEL_11:
  v12 = sub_26BF30414(v9);
  if (v1)
  {
    return;
  }

  v13 = v12;
  v55 = v7;
  v14 = 0;
  a1 = sub_26BE11228(v2, v3);
  v15 = __OFADD__(v13, v9);
  v16 = v13 + v9;
  if (v15)
  {
    __break(1u);
    goto LABEL_35;
  }

  v17 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v17 != 2)
    {
      v18 = 0;
      goto LABEL_23;
    }

    v20 = *(v5 + 16);
    v19 = *(v5 + 24);
    v18 = v19 - v20;
    if (!__OFSUB__(v19, v20))
    {
      goto LABEL_23;
    }

    __break(1u);
  }

  else if (!v17)
  {
    v18 = BYTE6(v4);
    goto LABEL_23;
  }

  if (__OFSUB__(HIDWORD(v5), v5))
  {
    __break(1u);
    goto LABEL_41;
  }

  v18 = HIDWORD(v5) - v5;
LABEL_23:
  v1 = 0;
  v21 = sub_26BF30414(v18);
  a1 = sub_26BE11228(v5, v4);
  v22 = v21 + v18;
  if (__OFADD__(v21, v18))
  {
    goto LABEL_36;
  }

  v4 = v16 + v22;
  if (__OFADD__(v16, v22))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    v5 = a1;
    a1 = sub_26BF30414(a1);
    v14 = v1;
    if (v1)
    {
LABEL_39:
      sub_26BE00258(v66, *(&v66 + 1));

      return;
    }

    goto LABEL_42;
  }

  *&v66 = v6;
  *(&v66 + 1) = v64;
  sub_26BE04890(v6, v64);
  sub_26BE03BF4(&v66);
  v14 = 0;
  v24 = v23;
  sub_26BE0489C(v66, *(&v66 + 1));
  v6 = v4 + v24;
  if (!__OFADD__(v4, v24))
  {
    v64 = xmmword_26C00BBD0;
    v66 = xmmword_26C00BBD0;
    v67 = 0;

    v25 = sub_26BE7F3F4(0, v59);
    v26 = sub_26BF30414(v25);
    sub_26BF2A30C(&v66);
    sub_26BE00258(v66, *(&v66 + 1));
    v15 = __OFADD__(v26, v25);
    v28 = v26 + v25;
    if (v15)
    {
      __break(1u);
      goto LABEL_48;
    }

    v66 = xmmword_26C00BBD0;
    v67 = 0;
    v29 = sub_26BE7F300(0, v61);
    v30 = sub_26BF30414(v29);
    sub_26BF2A30C(&v66);
    sub_26BE00258(v66, *(&v66 + 1));
    v31 = v30 + v29;
    if (__OFADD__(v30, v29))
    {
      __break(1u);
    }

    else
    {
      v15 = __OFADD__(v28, v31);
      v32 = v28 + v31;
      v29 = v61;
      if (!v15)
      {
        v66 = xmmword_26C00BBD0;
        v67 = 0;
        v33 = sub_26BE7F300(0, v60);
        v34 = sub_26BF30414(v33);
        sub_26BF2A30C(&v66);
        sub_26BE00258(v66, *(&v66 + 1));
        v35 = v34 + v33;
        if (__OFADD__(v34, v33))
        {
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        v4 = v32 + v35;
        if (__OFADD__(v32, v35))
        {
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        v1 = 0;
        v66 = xmmword_26C00BBD0;
        v67 = 0;
        a1 = sub_26BE7F300(0, v63);
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_62:
    if (v31 != 2)
    {
      v45 = 0;
      goto LABEL_70;
    }

    v47 = *(v56 + 16);
    v46 = *(v56 + 24);
    v45 = v46 - v47;
    if (!__OFSUB__(v46, v47))
    {
      goto LABEL_68;
    }

    __break(1u);
LABEL_66:
    if (__OFSUB__(HIDWORD(v56), v56))
    {
LABEL_92:
      __break(1u);
      return;
    }

    v45 = HIDWORD(v56) - v56;
LABEL_68:
    sub_26BE00608(v56, v57);
    goto LABEL_70;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  v36 = a1;
  sub_26BF2A30C(&v66);
  sub_26BE00258(v66, *(&v66 + 1));
  v37 = v36 + v5;
  if (__OFADD__(v36, v5))
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v15 = __OFADD__(v4, v37);
  v25 = v4 + v37;
  if (v15)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v66 = v64;
  v67 = 0;
  v38 = sub_26BE7F300(0, v62);
  if (v14)
  {
    goto LABEL_39;
  }

  v14 = v38;
  v27 = sub_26BF30414(v38);
  v54 = 0;
LABEL_48:
  v39 = v27;
  sub_26BF2A30C(&v66);
  sub_26BE00258(v66, *(&v66 + 1));

  v40 = v39 + v14;
  if (__OFADD__(v39, v14))
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v15 = __OFADD__(v25, v40);
  v41 = v25 + v40;
  if (v15)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v15 = __OFADD__(v6, v41);
  v42 = v6 + v41;
  if (v15)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  LOBYTE(v65) = 0x20301u >> (8 * v58);
  v43 = MEMORY[0x277D838B0];
  v44 = MEMORY[0x277CC9C18];
  v68 = MEMORY[0x277D838B0];
  v69 = MEMORY[0x277CC9C18];
  *&v66 = &v65;
  *(&v66 + 1) = &v65 + 1;
  __swift_project_boxed_opaque_existential_1(&v66, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v66);
  v29 = v42 + 1;
  if (__OFADD__(v42, 1))
  {
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  if (!v58)
  {
    v68 = v43;
    v69 = v44;
    v65 = bswap64(v56);
    *&v66 = &v65;
    *(&v66 + 1) = &v66;
    __swift_project_boxed_opaque_existential_1(&v66, v43);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v66);
    v65 = bswap64(v57);
    *&v66 = &v65;
    v68 = v43;
    v69 = v44;
    *(&v66 + 1) = &v66;
    __swift_project_boxed_opaque_existential_1(&v66, v43);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v66);
    v15 = __OFADD__(v29, 16);
    v29 = v42 + 17;
    if (v15)
    {
      __break(1u);
    }

    goto LABEL_74;
  }

  if (v58 != 1)
  {
    goto LABEL_74;
  }

  v31 = v57 >> 62;
  if ((v57 >> 62) > 1)
  {
    goto LABEL_62;
  }

  if (v31)
  {
    goto LABEL_66;
  }

  v45 = BYTE6(v57);
LABEL_70:
  v48 = sub_26BF30414(v45);
  if (v54)
  {
    sub_26BE5A170(v56, v57, 1);
    return;
  }

  v49 = v48;
  sub_26BE11228(v56, v57);
  sub_26BE5A170(v56, v57, 1);
  v50 = v49 + v45;
  if (__OFADD__(v49, v45))
  {
    goto LABEL_89;
  }

  v15 = __OFADD__(v29, v50);
  v29 += v50;
  if (v15)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

LABEL_74:
  v66 = v64;
  v67 = 0;
  v51 = sub_26BEEAC24(0, v55);
  if (v54)
  {
    sub_26BE00258(v66, *(&v66 + 1));
    return;
  }

  v52 = v51;
  v53 = sub_26BF30414(v51);
  sub_26BF2A30C(&v66);
  sub_26BE00258(v66, *(&v66 + 1));
  if (__OFADD__(v53, v52))
  {
    goto LABEL_91;
  }

  if (__OFADD__(v29, v53 + v52))
  {
    __break(1u);
    goto LABEL_81;
  }
}

uint64_t sub_26BE7F300(uint64_t a1, uint64_t a2)
{
  v11[5] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  v5 = MEMORY[0x277D838B0];
  v6 = MEMORY[0x277CC9C18];
  while (v3)
  {
    v7 = *v4++;
    v10 = bswap32(v7) >> 16;
    v11[3] = v5;
    v11[4] = v6;
    v11[0] = &v10;
    v11[1] = v11;
    __swift_project_boxed_opaque_existential_1(v11, v5);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(v11);
    --v3;
    v8 = __OFADD__(a1, 2);
    a1 += 2;
    if (v8)
    {
      __break(1u);
      return a1;
    }
  }

  return a1;
}

uint64_t sub_26BE7F3F4(uint64_t a1, uint64_t a2)
{
  v9[5] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 16) + 1;
  v4 = MEMORY[0x277D838B0];
  v5 = MEMORY[0x277CC9C18];
  while (--v3)
  {
    v8 = 256;
    v9[3] = v4;
    v9[4] = v5;
    v9[0] = &v8;
    v9[1] = v9;
    __swift_project_boxed_opaque_existential_1(v9, v4);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(v9);
    v6 = __OFADD__(a1, 2);
    a1 += 2;
    if (v6)
    {
      __break(1u);
      return a1;
    }
  }

  return a1;
}

BOOL _s8SwiftMLS0B0O8LeafNodeV0cD13SourceContentO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4 == 1)
    {
      if (v7 == 1)
      {
        sub_26BE5A15C(*a2, *(a2 + 8), 1);
        sub_26BE5A15C(v3, v2, 1);
        v8 = sub_26BE02DEC(v3, v2, v6, v5);
        sub_26BE5A170(v3, v2, 1);
        sub_26BE5A170(v6, v5, 1);
        return v8;
      }

      sub_26BE00608(*a1, v2);
    }

    else if (v7 == 2 && (v5 | v6) == 0)
    {
      sub_26BE5A170(*a1, v2, 2);
      sub_26BE5A170(0, 0, 2);
      return 1;
    }

    goto LABEL_19;
  }

  if (*(a2 + 16))
  {
LABEL_19:
    sub_26BE5A15C(v6, v5, v7);
    sub_26BE5A170(v3, v2, v4);
    sub_26BE5A170(v6, v5, v7);
    return 0;
  }

  sub_26BE5A170(*a1, v2, 0);
  sub_26BE5A170(v6, v5, 0);
  return v3 == v6 && v2 == v5;
}

BOOL _s8SwiftMLS0B0O8LeafNodeV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v29 = *(a1 + 48);
  v31 = *(a1 + 56);
  v33 = *(a1 + 64);
  v35 = *(a1 + 72);
  v36 = *(a1 + 80);
  v28 = *(a1 + 88);
  v27 = *(a1 + 96);
  v26 = *(a1 + 104);
  v22 = *(a1 + 112);
  v20 = *(a1 + 120);
  v19 = *(a1 + 128);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v30 = *(a2 + 48);
  v32 = *(a2 + 56);
  v10 = *(a2 + 72);
  v34 = *(a2 + 64);
  v11 = *(a2 + 80);
  v24 = *(a2 + 96);
  v25 = *(a2 + 88);
  v23 = *(a2 + 104);
  v21 = *(a2 + 112);
  v18 = *(a2 + 120);
  v17 = *(a2 + 128);
  if (!sub_26BE02DEC(*a1, *(a1 + 8), *a2, *(a2 + 8)) || !sub_26BE02DEC(v2, v3, v7, v6))
  {
    return 0;
  }

  if ((v4 & 0x2000000000000000) != 0)
  {
    if ((v8 & 0x2000000000000000) != 0)
    {
      sub_26BE04890(v9, v8);
      sub_26BE04890(v5, v4);
      sub_26BE04890(v9, v8);
      sub_26BE04890(v5, v4);
      v12 = sub_26BFB20FC(v5, v9);
      goto LABEL_9;
    }

LABEL_7:
    sub_26BE04890(v9, v8);
    sub_26BE04890(v5, v4);
    sub_26BE0489C(v5, v4);
    sub_26BE0489C(v9, v8);
    return 0;
  }

  if ((v8 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

  sub_26BE04890(v9, v8);
  sub_26BE04890(v5, v4);
  sub_26BE04890(v9, v8);
  sub_26BE04890(v5, v4);
  v12 = sub_26BE02DEC(v5, v4, v9, v8);
LABEL_9:
  v13 = v12;
  sub_26BE0489C(v5, v4);
  sub_26BE0489C(v9, v8);
  sub_26BE0489C(v9, v8);
  sub_26BE0489C(v5, v4);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v42 = v29;
  v43 = v31;
  v44 = v33;
  v45 = v35;
  v46 = v36;
  v37 = v30;
  v38 = v32;
  v39 = v34;
  v40 = v10;
  v41 = v11;
  v16 = _s8SwiftMLS0B0O12CapabilitiesV2eeoiySbAE_AEtFZ_0(&v42, &v37);

  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v42 = v28;
  v43 = v27;
  LOBYTE(v44) = v26;
  v37 = v25;
  v38 = v24;
  LOBYTE(v39) = v23;
  sub_26BE5A15C(v28, v27, v26);
  sub_26BE5A15C(v25, v24, v23);
  v14 = _s8SwiftMLS0B0O8LeafNodeV0cD13SourceContentO2eeoiySbAG_AGtFZ_0(&v42, &v37);
  sub_26BE5A170(v37, v38, v39);
  sub_26BE5A170(v42, v43, v44);
  if (!v14 || (sub_26BFB1C64(v22, v21) & 1) == 0)
  {
    return 0;
  }

  return sub_26BE02DEC(v20, v19, v18, v17);
}

uint64_t sub_26BE7F9EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BE7FA34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_26BE7FAB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26BE7FB00(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26BE7FB44(uint64_t result, unsigned int a2)
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

uint64_t MLS.Lifetime.init(notBefore:notAfter:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void MLS.CiphersuiteID.outer.getter(BOOL *a1@<X8>)
{
  v2 = *v1;
  if ((v2 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    *a1 = v2 != 1;
  }
}

unint64_t sub_26BE7FC54()
{
  result = qword_28045EA28;
  if (!qword_28045EA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EA28);
  }

  return result;
}

uint64_t sub_26BE7FCA8()
{
  sub_26C00B05C();
  sub_26C00B08C();
  return sub_26C00B0CC();
}

uint64_t sub_26BE7FD1C(uint64_t a1)
{
  sub_26C00B05C();
  sub_26C00B08C();
  return sub_26C00B0CC();
}

uint64_t MLS.GroupState.generateAddProposal(keyPackage:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[9];
  v4 = a1[7];
  v28 = a1[8];
  v29 = v3;
  v5 = a1[9];
  v30 = a1[10];
  v6 = a1[5];
  v7 = a1[3];
  v24 = a1[4];
  v25 = v6;
  v8 = a1[5];
  v9 = a1[7];
  v26 = a1[6];
  v27 = v9;
  v10 = a1[1];
  v21[0] = *a1;
  v21[1] = v10;
  v11 = a1[3];
  v13 = *a1;
  v12 = a1[1];
  v22 = a1[2];
  v23 = v11;
  v40 = v28;
  v41 = v5;
  v42 = a1[10];
  v36 = v24;
  v37 = v8;
  v38 = v26;
  v39 = v4;
  v32 = v13;
  v33 = v12;
  v31 = *(a1 + 22);
  v43 = *(a1 + 22);
  v34 = v22;
  v35 = v7;
  sub_26BE7FED4(&v32);
  v14 = v41;
  *(a2 + 128) = v40;
  *(a2 + 144) = v14;
  *(a2 + 160) = v42;
  *(a2 + 176) = v43;
  v15 = v37;
  *(a2 + 64) = v36;
  *(a2 + 80) = v15;
  v16 = v39;
  *(a2 + 96) = v38;
  *(a2 + 112) = v16;
  v17 = v33;
  *a2 = v32;
  *(a2 + 16) = v17;
  v18 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v18;
  return sub_26BE2DFC0(v21, v20);
}

void *sub_26BE7FED4(void *result)
{
  v1 = result[19] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[22] & 0xCFFFFFFFFFFFFFFFLL;
  result[16] &= 0xCFFFFFFFFFFFFFFFLL;
  result[19] = v1;
  result[22] = v2;
  return result;
}

double MLS.GroupState.generateRemoveProposal(leafIndex:)@<D0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  LODWORD(v9[0]) = *a1;
  sub_26BE71934(v9);
  v3 = v17;
  *(a2 + 128) = v16;
  *(a2 + 144) = v3;
  *(a2 + 160) = v18;
  *(a2 + 176) = v19;
  v4 = v13;
  *(a2 + 64) = v12;
  *(a2 + 80) = v4;
  v5 = v15;
  *(a2 + 96) = v14;
  *(a2 + 112) = v5;
  v6 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v6;
  result = *&v10;
  v8 = v11;
  *(a2 + 32) = v10;
  *(a2 + 48) = v8;
  return result;
}

double MLS.GroupState.generateServerRemoveProposal(leafIndex:)@<D0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  LODWORD(v9[0]) = *a1;
  sub_26BE80014(v9);
  v3 = v17;
  *(a2 + 128) = v16;
  *(a2 + 144) = v3;
  *(a2 + 160) = v18;
  *(a2 + 176) = v19;
  v4 = v13;
  *(a2 + 64) = v12;
  *(a2 + 80) = v4;
  v5 = v15;
  *(a2 + 96) = v14;
  *(a2 + 112) = v5;
  v6 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v6;
  result = *&v10;
  v8 = v11;
  *(a2 + 32) = v10;
  *(a2 + 48) = v8;
  return result;
}

void *sub_26BE80014(void *result)
{
  v1 = result[19] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[22] & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  result[16] &= 0xCFFFFFFFFFFFFFFFLL;
  result[19] = v1;
  result[22] = v2;
  return result;
}

double MLS.GroupState.generateSelfRemoveProposal()@<D0>(uint64_t a1@<X8>)
{
  sub_26BE800C4(v8);
  v2 = v16;
  *(a1 + 128) = v15;
  *(a1 + 144) = v2;
  *(a1 + 160) = v17;
  *(a1 + 176) = v18;
  v3 = v12;
  *(a1 + 64) = v11;
  *(a1 + 80) = v3;
  v4 = v14;
  *(a1 + 96) = v13;
  *(a1 + 112) = v4;
  v5 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v5;
  result = *&v9;
  v7 = v10;
  *(a1 + 32) = v9;
  *(a1 + 48) = v7;
  return result;
}

void *sub_26BE800C4(void *result)
{
  v1 = result[19] & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  v2 = result[22] & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  result[16] &= 0xCFFFFFFFFFFFFFFFLL;
  result[19] = v1;
  result[22] = v2;
  return result;
}

uint64_t MLS.GroupState.generateGroupContextExtensionsProposal(extensions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v9[0] = a1;
  sub_26BE80190(v9);
  v3 = v9[9];
  *(a2 + 128) = v9[8];
  *(a2 + 144) = v3;
  *(a2 + 160) = v9[10];
  *(a2 + 176) = v10;
  v4 = v9[5];
  *(a2 + 64) = v9[4];
  *(a2 + 80) = v4;
  v5 = v9[7];
  *(a2 + 96) = v9[6];
  *(a2 + 112) = v5;
  v6 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v6;
  v7 = v9[3];
  *(a2 + 32) = v9[2];
  *(a2 + 48) = v7;
}

void *sub_26BE80190(void *result)
{
  v1 = result[19] & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  v2 = result[22] & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  result[16] &= 0xCFFFFFFFFFFFFFFFLL;
  result[19] = v1;
  result[22] = v2;
  return result;
}

char *MLS.GroupState.generateAddAndRemoveProposals(adds:removes:serverRemove:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v6 = (a2 + 32);
    v7 = MEMORY[0x277D84F90];
    do
    {
      v19 = *v6++;
      v18 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (a3)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v7 = sub_26BEED780(0, *(v7 + 2) + 1, 1, v7);
        }

        v22 = *(v7 + 2);
        v21 = *(v7 + 3);
        v23 = v22 + 1;
        if (v22 >= v21 >> 1)
        {
          v7 = sub_26BEED780((v21 > 1), v22 + 1, 1, v7);
        }

        LODWORD(v57) = v18;
        sub_26BE80014(&v57);
      }

      else
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v7 = sub_26BEED780(0, *(v7 + 2) + 1, 1, v7);
        }

        v22 = *(v7 + 2);
        v24 = *(v7 + 3);
        v23 = v22 + 1;
        if (v22 >= v24 >> 1)
        {
          v7 = sub_26BEED780((v24 > 1), v22 + 1, 1, v7);
        }

        LODWORD(v57) = v18;
        sub_26BE71934(&v57);
      }

      *(v7 + 2) = v23;
      v8 = &v7[184 * v22];
      v9 = v57;
      v10 = v58;
      v11 = v60;
      *(v8 + 4) = v59;
      *(v8 + 5) = v11;
      *(v8 + 2) = v9;
      *(v8 + 3) = v10;
      v12 = v61;
      v13 = v62;
      v14 = v64;
      *(v8 + 8) = v63;
      *(v8 + 9) = v14;
      *(v8 + 6) = v12;
      *(v8 + 7) = v13;
      v15 = v65;
      v16 = v66;
      v17 = v67;
      *(v8 + 26) = v68;
      *(v8 + 11) = v16;
      *(v8 + 12) = v17;
      *(v8 + 10) = v15;
      --v4;
    }

    while (v4);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = (a1 + 32);
    do
    {
      v27 = v26[9];
      v65 = v26[8];
      v66 = v27;
      v67 = v26[10];
      v68 = *(v26 + 22);
      v28 = v26[5];
      v61 = v26[4];
      v62 = v28;
      v29 = v26[7];
      v63 = v26[6];
      v64 = v29;
      v30 = v26[1];
      v57 = *v26;
      v58 = v30;
      v31 = v26[3];
      v59 = v26[2];
      v60 = v31;
      sub_26BE2DFC0(&v57, &v45);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_26BEED780(0, *(v7 + 2) + 1, 1, v7);
      }

      v33 = *(v7 + 2);
      v32 = *(v7 + 3);
      if (v33 >= v32 >> 1)
      {
        v7 = sub_26BEED780((v32 > 1), v33 + 1, 1, v7);
      }

      v53 = v65;
      v54 = v66;
      v55 = v67;
      v56 = v68;
      v49 = v61;
      v50 = v62;
      v51 = v63;
      v52 = v64;
      v45 = v57;
      v46 = v58;
      v47 = v59;
      v48 = v60;
      sub_26BE7FED4(&v45);
      *(v7 + 2) = v33 + 1;
      v34 = &v7[184 * v33];
      v35 = v45;
      v36 = v46;
      v37 = v48;
      *(v34 + 4) = v47;
      *(v34 + 5) = v37;
      *(v34 + 2) = v35;
      *(v34 + 3) = v36;
      v38 = v49;
      v39 = v50;
      v40 = v52;
      *(v34 + 8) = v51;
      *(v34 + 9) = v40;
      *(v34 + 6) = v38;
      *(v34 + 7) = v39;
      v41 = v53;
      v42 = v54;
      v43 = v55;
      *(v34 + 26) = v56;
      *(v34 + 11) = v42;
      *(v34 + 12) = v43;
      *(v34 + 10) = v41;
      v26 = (v26 + 184);
      --v25;
    }

    while (v25);
  }

  return v7;
}

uint64_t sub_26BE80498(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = v2[16];
  v8 = *(v2 + 5);
  v9 = *(v4 + 12);
  v10 = *(v4 + 7);
  v108 = v7;
  v109 = v8;
  v110 = v9;
  v111 = v10;
  v11 = type metadata accessor for MLS.GroupState(0);
  v12 = v11[13];
  v107 = *(v4 + v12);

  MLS.TreeKEMPublicKey.find(leafIndex:)(&v107, v112);
  if (v3)
  {
  }

  v105[0] = v112[6];
  v105[1] = v112[7];
  v106 = v113;
  v101 = v112[2];
  v102 = v112[3];
  v103 = v112[4];
  v104 = v112[5];
  v99 = v112[0];
  v100 = v112[1];
  result = sub_26BE59C80(&v99);
  if (result == 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v14 = 15;
    v14[112] = 0;
    return swift_willThrow();
  }

  v52 = a1;
  v53 = v99;
  v117 = v102;
  v118 = v103;
  v119 = v104;
  v115 = v100;
  v116 = v101;
  v54 = *&v105[0];
  LODWORD(v55) = BYTE8(v105[0]);
  *(&v55 + 1) = *(&v104 + 1);
  v56 = *(&v105[1] + 1);
  *(v114 + 7) = *&v105[1];
  v114[0] = *(v105 + 9);
  v120 = v106;
  v15 = *(v4 + v11[19]);
  if (v15)
  {
    swift_beginAccess();
    sub_26BE295A0(v15 + 40, v57);

    sub_26BE1118C(v95);
    v48 = a2;
    sub_26BE29710(v57);
LABEL_9:

    sub_26BE03890(v95, &v96);
    v17 = v97;
    v18 = v98;
    __swift_project_boxed_opaque_existential_1(&v96, v97);
    v19 = *(v18 + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v51 = &v48;
    v21 = *(AssociatedTypeWitness - 8);
    v49 = AssociatedTypeWitness;
    v50 = v21;
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    v23 = &v48 - v22;
    (*(v19 + 32))(v17, v19);
    v24 = v49;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v26 = (*(AssociatedConformanceWitness + 16))(v24, AssociatedConformanceWitness);
    v28 = v27;
    (*(v50 + 8))(v23, v24);
    sub_26BE00258(v53, *(&v53 + 1));
    sub_26BE5A170(*(&v55 + 1), v54, v55);
    v30 = *(v4 + 1);
    v29 = *(v4 + 2);
    v31 = *(v4 + v12);
    v54 = v11[14];
    *&v55 = v26;
    *&v57[0] = v26;
    *(&v57[0] + 1) = v28;
    v32 = v29;
    *(&v55 + 1) = v28;
    v57[3] = v117;
    v57[4] = v118;
    v57[1] = v115;
    v57[2] = v116;
    v59 = 0;
    *&v60[0] = 0;
    v58 = v119;
    BYTE8(v60[0]) = 2;
    *(v60 + 9) = v114[0];
    *&v60[1] = *(v114 + 7);
    *(&v60[1] + 1) = v56;
    v61 = v120;
    v92 = v60[0];
    v93 = v60[1];
    v94 = v120;
    v88 = v116;
    v89 = v117;
    v90 = v118;
    v91 = v119;
    v87[0] = v57[0];
    v87[1] = v115;
    v85[0] = v30;
    v85[1] = v29;
    v86 = v31;
    sub_26BE00608(v30, v29);
    sub_26BE00758(v57, v77);
    v33 = sub_26BE5B600(v85);
    v34 = (v4 + v54);
    v82 = v92;
    v83 = v93;
    v84 = v94;
    v78 = v88;
    v79 = v89;
    v80 = v90;
    v81 = v91;
    v77[0] = v87[0];
    v77[1] = v87[1];
    v36 = v35;
    sub_26BE00854(v77);
    v37 = v34[3];
    v38 = v34[4];
    __swift_project_boxed_opaque_existential_1(v34, v37);
    v54 = v36;
    v39 = MLS.Cryptography.SignaturePrivateKey.signWithLabel(label:message:)(0x65646F4E6661654CLL, 0xEB00000000534254, v33, v36, v37, v38);
    v41 = v40;
    sub_26BE00258(v30, v32);
    sub_26BE00258(v33, v54);
    sub_26BE00258(v56, v120);
    v42 = v55;
    v63 = v55;
    v66 = v117;
    v67 = v118;
    v64 = v115;
    v65 = v116;
    *&v69[0] = 0;
    v68 = v119;
    BYTE8(v69[0]) = 2;
    *(v69 + 9) = v114[0];
    *&v69[1] = *(v114 + 7);
    *(&v69[1] + 1) = v39;
    v70 = v41;
    v43 = v52;
    *(v52 + 128) = v41;
    v44 = v68;
    v43[4] = v67;
    v43[5] = v44;
    v45 = v66;
    v43[2] = v65;
    v43[3] = v45;
    v46 = v64;
    *v43 = v63;
    v43[1] = v46;
    v47 = v69[1];
    v43[6] = v69[0];
    v43[7] = v47;
    sub_26BE03890(&v96, v48);
    v71[0] = v42;
    v71[3] = v117;
    v71[4] = v118;
    v71[2] = v116;
    v71[1] = v115;
    v74 = 0;
    v72 = v119;
    v73 = 0;
    v75 = 2;
    *&v76[7] = *(v114 + 7);
    *v76 = v114[0];
    *&v76[15] = v39;
    *&v76[23] = v41;
    sub_26BE00758(&v63, &v62);
    return sub_26BE00854(v71);
  }

  v16 = *v4;
  if ((v16 - 3) >= 0xFFFFFFFE)
  {
    LOBYTE(v57[0]) = v16 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
    LOBYTE(v77[0]) = v87[0];
    *(v77 + 8) = *(v87 + 8);
    *(&v77[1] + 1) = *(&v87[1] + 1);
    *&v78 = v88;
    MLS.Cryptography.Ciphersuite.generateHPKEPrivateKey()(v95);
    v48 = a2;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t MLS.GroupState.generateUpdateProposalWithRotatedHPKEKey()@<X0>(uint64_t a1@<X8>)
{
  result = sub_26BE80498(&v34, v43);
  if (!v2)
  {
    v20[6] = v40;
    v20[7] = v41;
    v21 = v42;
    v20[2] = v36;
    v20[3] = v37;
    v20[4] = v38;
    v20[5] = v39;
    v20[0] = v34;
    v20[1] = v35;
    v5 = v1 + *(type metadata accessor for MLS.GroupState(0) + 64);
    sub_26BE2E258(v5, &qword_28045E730, &qword_26C011528);
    sub_26BE03890(v43, v5);
    v6 = v38;
    *(v5 + 120) = v39;
    v7 = v39;
    *(v5 + 136) = v40;
    v8 = v40;
    *(v5 + 152) = v41;
    v9 = v34;
    *(v5 + 56) = v35;
    v10 = v35;
    *(v5 + 72) = v36;
    v11 = v36;
    *(v5 + 88) = v37;
    v12 = v37;
    *(v5 + 104) = v38;
    *(v5 + 40) = v34;
    v28 = v8;
    v29 = v41;
    v24 = v11;
    v25 = v12;
    v26 = v6;
    v27 = v7;
    v13 = v42;
    *(v5 + 168) = v42;
    *&v30 = v13;
    v22 = v9;
    v23 = v10;
    sub_26BE821D4(&v22);
    v14 = v31;
    *(a1 + 128) = v30;
    *(a1 + 144) = v14;
    *(a1 + 160) = v32;
    *(a1 + 176) = v33;
    v15 = v27;
    *(a1 + 64) = v26;
    *(a1 + 80) = v15;
    v16 = v29;
    *(a1 + 96) = v28;
    *(a1 + 112) = v16;
    v17 = v23;
    *a1 = v22;
    *(a1 + 16) = v17;
    v18 = v25;
    *(a1 + 32) = v24;
    *(a1 + 48) = v18;
    return sub_26BE00758(v20, v19);
  }

  return result;
}

uint64_t MLS.GroupState.generateProposalMessage(_:options:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[9];
  v26 = a1[8];
  v27 = v4;
  *v28 = a1[10];
  *&v28[16] = *(a1 + 22);
  v5 = a1[5];
  v22 = a1[4];
  v23 = v5;
  v6 = a1[7];
  v24 = a1[6];
  v25 = v6;
  v7 = a1[1];
  v18 = *a1;
  v19 = v7;
  v8 = a1[3];
  v20 = a1[2];
  v21 = v8;
  v9 = *a2;
  v12 = *(a2 + 8);
  v10 = *(a2 + 24);
  sub_26BE82200(&v18);
  v16[8] = v26;
  v16[9] = v27;
  v17[0] = *v28;
  *(v17 + 9) = *&v28[9];
  v16[4] = v22;
  v16[5] = v23;
  v16[6] = v24;
  v16[7] = v25;
  v16[0] = v18;
  v16[1] = v19;
  v16[2] = v20;
  v16[3] = v21;
  v13[0] = v9;
  v14 = v12;
  v15 = v10;
  return sub_26BE68838(v16, v13, a3);
}

void MLS.GroupState.generateApplicationMessage(message:options:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v8 = _s11HashRatchetVMa(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v22 - v13;
  v15 = *a3;
  v16 = *(a3 + 8);
  v24 = *(a3 + 16);
  if (*(a3 + 26) == 1)
  {
    sub_26BE00608(a1, a2);
LABEL_3:
    *&v32[0] = a1;
    *(&v32[0] + 1) = a2;
    sub_26BE8220C(v32);
    v30[8] = v32[8];
    v30[9] = v32[9];
    v31[0] = v33[0];
    *(v31 + 9) = *(v33 + 9);
    v30[4] = v32[4];
    v30[5] = v32[5];
    v30[6] = v32[6];
    v30[7] = v32[7];
    v30[0] = v32[0];
    v30[1] = v32[1];
    v30[2] = v32[2];
    v30[3] = v32[3];
    v26[0] = 1;
    v27 = v15;
    v28 = v16;
    v29 = v24;
    sub_26BE00608(v15, v16);
    sub_26BE68838(v30, v26, v25);
    sub_26BE00258(v15, v16);
    sub_26BE00258(a1, a2);
    return;
  }

  v23 = v12;
  v17 = *(a3 + 24);
  LODWORD(v32[0]) = *(v4 + *(type metadata accessor for MLS.GroupState(0) + 52));
  v22 = v4;
  v18 = v34;
  sub_26BF94CD0(1, v32, v11);
  if (!v18)
  {
    sub_26BE82214(v11, v14);
    v19 = *&v14[*(v23 + 24)];
    sub_26BE823D0(v14, _s11HashRatchetVMa);
    LOWORD(v32[0]) = v17;
    sub_26BE71984(a1, a2, v32, v19);
    a1 = v20;
    a2 = v21;
    v34 = 0;
    goto LABEL_3;
  }
}

void MLS.GroupState.generateSignedMessage(aadData:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_26BE82278(v12);
  v22 = v12[8];
  v23 = v12[9];
  *v24 = v12[10];
  *&v24[16] = v13;
  v18 = v12[4];
  v19 = v12[5];
  v20 = v12[6];
  v21 = v12[7];
  v14 = v12[0];
  v15 = v12[1];
  v16 = v12[2];
  v17 = v12[3];
  sub_26BE82200(&v14);
  v10[8] = v22;
  v10[9] = v23;
  v11[0] = *v24;
  *(v11 + 9) = *&v24[9];
  v10[4] = v18;
  v10[5] = v19;
  v10[6] = v20;
  v10[7] = v21;
  v10[0] = v14;
  v10[1] = v15;
  v10[2] = v16;
  v10[3] = v17;
  v6[0] = 0;
  v7 = a1;
  v8 = a2;
  v9 = 0;
  sub_26BE00608(a1, a2);
  sub_26BE68838(v10, v6, a3);
  sub_26BE00258(a1, a2);
}

void MLS.GroupState.generateSignedMessage(messageID:verifiableDerivedContent:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  sub_26BE038A8(a3, &v37);
  v10 = type metadata accessor for MLS.GroupState(0);
  v11 = sub_26BE81FE0(*(v6 + *(v10 + 40)));
  if (v5)
  {
  }

  else if ((v11 & 0x100000000) == 0)
  {
    goto LABEL_5;
  }

  LODWORD(v11) = sub_26BE4126C();
LABEL_5:
  v24 = v37;
  v25 = v38;
  *&v26 = v39;
  memset(v54, 0, sizeof(v54));
  v55 = 0;
  v50 = 1;
  v51 = a1;
  v52 = a2;
  v53 = v11;
  sub_26BE00608(a1, a2);
  sub_26BE822A4(&v24, v54);
  v48 = xmmword_26C00BBD0;
  v49 = 0;
  sub_26BFF933C(&v50);
  v12 = v48;
  v13 = *(&v48 + 1) >> 62;
  if ((*(&v48 + 1) >> 62) > 1)
  {
    v15 = *(&v48 + 1);
    if (v13 != 2)
    {
      goto LABEL_13;
    }

    v14 = v48;
    v16 = *(v48 + 24);
LABEL_11:
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_13:
    v14 = v12;
    goto LABEL_14;
  }

  if (v13)
  {
    v15 = *(&v48 + 1);
    v14 = v48;
    v16 = v48 >> 32;
    goto LABEL_11;
  }

  v15 = *(&v48 + 1);
  v14 = v48;
LABEL_14:
  v17 = sub_26C00909C();
  v19 = v18;
  sub_26BE00258(v14, v15);
  sub_26BE82278(v35);
  v45 = v35[8];
  v46 = v35[9];
  *v47 = v35[10];
  *&v47[16] = v36;
  v41 = v35[4];
  v42 = v35[5];
  v43 = v35[6];
  v44 = v35[7];
  v37 = v35[0];
  v38 = v35[1];
  v39 = v35[2];
  v40 = v35[3];
  sub_26BE82200(&v37);
  v32 = v45;
  v33 = v46;
  v34[0] = *v47;
  *(v34 + 9) = *&v47[9];
  v28 = v41;
  v29 = v42;
  v30 = v43;
  v31 = v44;
  v24 = v37;
  v25 = v38;
  v26 = v39;
  v27 = v40;
  v20[0] = 0;
  v21 = v17;
  v22 = v19;
  v23 = 0;
  sub_26BE00608(v17, v19);
  sub_26BE68838(&v24, v20, a4);
  sub_26BE00258(v17, v19);
  sub_26BE6FDD8(&v50);
  sub_26BE00258(v17, v19);
}

uint64_t MLS.GroupState.authenticatedDataForMessage(messageID:verifiableDerivedContent:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = type metadata accessor for MLS.GroupState(0);
  v11 = sub_26BE81FE0(*(v4 + *(v10 + 40)));
  if (v5)
  {
  }

  else
  {
    v12 = v11;
    if ((v11 & 0x100000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v12 = sub_26BE4126C();
LABEL_5:
  if (a2 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = a1;
  }

  if (a2 >> 60 == 15)
  {
    v14 = 0xC000000000000000;
  }

  else
  {
    v14 = a2;
  }

  sub_26BE2E1F0(a3, v16, &qword_28045E2A8, &qword_26C028DD0);
  *(a4 + 48) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 64) = 0;
  *a4 = 1;
  *(a4 + 8) = v13;
  *(a4 + 16) = v14;
  *(a4 + 24) = v12;
  sub_26BE2E408(a1, a2);
  return sub_26BE822A4(v16, a4 + 32);
}

uint64_t MLS.GroupState.generateGroupInfo(commitOptions:)@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v96 = a1;
  v97 = a2;
  v4 = sub_26C009C8C();
  v115 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v89[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v89[-v8];
  v10 = type metadata accessor for MLS.Cryptography.MACTag(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v89[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for MLS.GroupState(0);
  v14 = v3 + *(v13 + 44);
  v15 = v3 + *(v13 + 36);
  v16 = *(v15 + 2);
  v99 = *(v15 + 1);
  v98 = v16;
  v17 = *(v14 + 24);
  v18 = *(v14 + 32);
  LOBYTE(v111) = *v14;
  v112 = *(v14 + 8);
  v113 = v17;
  v114 = v18;
  v95 = type metadata accessor for MLS.KeySchedule(0);
  (*(v115 + 16))(v7, v14 + *(v95 + 48), v4);
  sub_26BE82314();
  v19 = v12;

  sub_26C009C5C();
  v20 = v100;
  MLS.Cryptography.Ciphersuite.digestMAC(_:_:)(v9, v99, v98);
  if (v20)
  {
    (*(v115 + 8))(v9, v4);
  }

  v99 = v14;
  v100 = v13;
  (*(v115 + 8))(v9, v4);

  v22 = *v3;
  v23 = *(v3 + 1);
  v24 = *(v3 + 2);
  v25 = *(v3 + 3);
  v26 = *(v3 + 5);
  v27 = *(v3 + 12);
  v28 = *(v3 + 7);
  v107 = v3[16];
  v108 = v26;
  v109 = v27;
  v110 = v28;
  v29 = sub_26BE592D0();
  v98 = 0;
  v30 = *(v15 + 1);
  v31 = *(v15 + 2);
  v92 = v30;
  v91 = v31;
  v32 = v19;
  v33 = *(v3 + *(v100 + 40));
  v94 = v29;
  v93 = v34;
  sub_26BE00608(v29, v34);
  sub_26BE00608(v23, v24);
  sub_26BE00608(v30, v31);

  v35 = sub_26BEE04CC(3, v33);
  v90 = v22;
  v36 = v35;
  v37 = v25;
  v38 = type metadata accessor for MLS.GroupInfo(0);
  v39 = v97;
  v40 = v97 + v38[6];
  v115 = v32;
  sub_26BE8236C(v32, v40);
  v41 = *(v100 + 52);
  v42 = *(v3 + v41);
  *v39 = v90;
  *(v39 + 8) = v23;
  *(v39 + 16) = v24;
  v43 = v94;
  *(v39 + 24) = v37;
  *(v39 + 32) = v43;
  v44 = v92;
  *(v39 + 40) = v93;
  *(v39 + 48) = v44;
  *(v39 + 56) = v91;
  *(v39 + 64) = v33;
  v94 = v36;
  *(v39 + 72) = v36;
  *(v39 + v38[7]) = v42;
  *(v39 + v38[8]) = xmmword_26C00BBD0;
  if (*(v96 + *(type metadata accessor for MLS.GroupState.CommitOptions(0) + 28)))
  {
    v96 = v3;
    v45 = v115;
  }

  else
  {
    v59 = v41;
    v60 = *(v3 + 5);
    v61 = *(v3 + 12);
    v62 = *(v3 + 7);
    LOWORD(v111) = v3[16];
    *&v112 = v60;
    DWORD2(v112) = v61;
    v113 = v62;
    v63 = v98;
    MLS.TreeKEMPublicKey.rawRepresentation.getter();
    if (v63)
    {
      sub_26BE823D0(v115, type metadata accessor for MLS.Cryptography.MACTag);
      return sub_26BE823D0(v39, type metadata accessor for MLS.GroupInfo);
    }

    v96 = v3;
    MLS.RatchetTree.init(rawValue:)(v64, v65, &v104);
    v45 = v115;
    v111 = v104;
    MLS.RatchetTree.rawValue.getter();
    v80 = v79;
    v82 = v81;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98 = 0;
    v84 = v59;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v94 = sub_26BEEBD8C(0, *(v94 + 2) + 1, 1, v94);
    }

    v86 = *(v94 + 2);
    v85 = *(v94 + 3);
    if (v86 >= v85 >> 1)
    {
      v94 = sub_26BEEBD8C((v85 > 1), v86 + 1, 1, v94);
    }

    v87 = v94;
    *(v94 + 2) = v86 + 1;
    v88 = &v87[24 * v86];
    *(v88 + 16) = 2;
    *(v88 + 5) = v80;
    *(v88 + 6) = v82;
    v39 = v97;
    *(v97 + 72) = v87;
    v41 = v84;
  }

  sub_26BE2E1F0(v99 + *(v95 + 64), v101, &qword_28045E6A8, &qword_26C0112B0);
  v46 = v102;
  if (!v102)
  {
    sub_26BE2E258(v101, &qword_28045E6A8, &qword_26C0112B0);
    v104 = 0u;
    v105 = 0u;
    AssociatedConformanceWitness = 0;
    v52 = v100;
    goto LABEL_12;
  }

  v47 = v41;
  v48 = v103;
  __swift_project_boxed_opaque_existential_1(v101, v102);
  v49 = *(v48 + 8);
  v50 = *(v49 + 32);
  *(&v105 + 1) = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(&v104);
  v51 = v49;
  v45 = v115;
  v50(v46, v51);
  v41 = v47;
  __swift_destroy_boxed_opaque_existential_1(v101);
  v52 = v100;
  if (!*(&v105 + 1))
  {
LABEL_12:
    sub_26BE2E258(&v104, &qword_28045EA30, &qword_26C013D38);
    v66 = v98;
    goto LABEL_13;
  }

  sub_26BE03890(&v104, &v111);
  v53 = v113;
  v54 = v114;
  __swift_project_boxed_opaque_existential_1(&v111, v113);
  v55 = (*(*(v54 + 8) + 16))(v53);
  v57 = v56;
  v58 = v98;
  sub_26BFFAFE8(v55, v56, &v104);
  if (v58)
  {
    sub_26BE823D0(v45, type metadata accessor for MLS.Cryptography.MACTag);
    sub_26BE00258(v55, v57);
    sub_26BE823D0(v39, type metadata accessor for MLS.GroupInfo);
    return __swift_destroy_boxed_opaque_existential_1(&v111);
  }

  v66 = 0;
  sub_26BE00258(v55, v57);
  v72 = v104;
  v73 = *(&v104 + 1);
  v74 = v105;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v94 = sub_26BEEBD8C(0, *(v94 + 2) + 1, 1, v94);
  }

  v76 = *(v94 + 2);
  v75 = *(v94 + 3);
  if (v76 >= v75 >> 1)
  {
    v94 = sub_26BEEBD8C((v75 > 1), v76 + 1, 1, v94);
  }

  v77 = v94;
  *(v94 + 2) = v76 + 1;
  v78 = &v77[24 * v76];
  *(v78 + 16) = v72;
  *(v78 + 5) = v73;
  *(v78 + 6) = v74;
  *(v39 + 72) = v77;
  __swift_destroy_boxed_opaque_existential_1(&v111);
  v52 = v100;
  v41 = v47;
LABEL_13:
  v67 = v96;
  v68 = *(v96 + 5);
  v69 = *(v96 + 12);
  v70 = *(v96 + 7);
  LOWORD(v111) = v96[16];
  *&v112 = v68;
  DWORD2(v112) = v69;
  v113 = v70;
  LODWORD(v104) = *(v96 + v41);
  v71 = *(v52 + 56);

  MLS.GroupInfo.sign(tree:signer:signaturePrivateKey:)(&v111, &v104, (v67 + v71));

  result = sub_26BE823D0(v45, type metadata accessor for MLS.Cryptography.MACTag);
  if (v66)
  {
    return sub_26BE823D0(v39, type metadata accessor for MLS.GroupInfo);
  }

  return result;
}

uint64_t static MLS.GroupState.authenticatedDataForParameters(era:messageID:verifiableDerivedContent:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a3 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  if (a3 >> 60 == 15)
  {
    v10 = 0xC000000000000000;
  }

  else
  {
    v10 = a3;
  }

  sub_26BE2E1F0(a4, v12, &qword_28045E2A8, &qword_26C028DD0);
  *(a5 + 48) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 64) = 0;
  *a5 = 1;
  *(a5 + 8) = v9;
  *(a5 + 16) = v10;
  *(a5 + 24) = a1;
  sub_26BE2E408(a2, a3);
  return sub_26BE822A4(v12, a5 + 32);
}

uint64_t sub_26BE81FE0(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 16) + 1;
  do
  {
    if (!--v3)
    {
      v7 = 0;
      return v7 | ((v3 == 0) << 32);
    }

    v4 = v2 + 12;
    v5 = *v2;
    v2 += 12;
  }

  while (v5 != -4095);
  v8 = -4095;
  v9 = *(v4 - 1);
  result = sub_26BE34C94(&v8);
  if (v1)
  {
    return result;
  }

  v7 = result;
  return v7 | ((v3 == 0) << 32);
}

void sub_26BE8206C(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = (result + 32);
  v3 = *(result + 16) + 1;
  while (--v3)
  {
    v4 = v2 + 12;
    v5 = *v2;
    v2 += 12;
    if (v5 == 3)
    {
      v6 = 3;
      v7 = *(v4 - 1);
      sub_26BFF740C(&v6, a2);
      return;
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

double sub_26BE820D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + 32);
  v4 = *(a1 + 16) + 1;
  do
  {
    if (!--v4)
    {
      result = 0.0;
      *a2 = xmmword_26C00DA60;
      return result;
    }

    v5 = v3 + 12;
    v6 = *v3;
    v3 += 12;
  }

  while (v6 != -4091);
  v11 = -4091;
  v12 = *(v5 - 1);
  sub_26BFDB8C0(&v11);
  if (!v2)
  {
    *a2 = v8;
    *(a2 + 8) = v9;
  }

  return result;
}

double sub_26BE82154@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + 32);
  v4 = *(a1 + 16) + 1;
  do
  {
    if (!--v4)
    {
      result = 0.0;
      *a2 = xmmword_26C00DA60;
      return result;
    }

    v5 = v3 + 12;
    v6 = *v3;
    v3 += 12;
  }

  while (v6 != 4);
  v11 = 4;
  v12 = *(v5 - 1);
  sub_26BFDB8C0(&v11);
  if (!v2)
  {
    *a2 = v8;
    *(a2 + 8) = v9;
  }

  return result;
}

void *sub_26BE821D4(void *result)
{
  v1 = result[22] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[19] & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  result[16] &= 0xCFFFFFFFFFFFFFFFLL;
  result[19] = v2;
  result[22] = v1;
  return result;
}

uint64_t sub_26BE82214(uint64_t a1, uint64_t a2)
{
  v4 = _s11HashRatchetVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_26BE82278(void *result)
{
  v1 = result[19] | 0x3000000000000000;
  v2 = result[22] & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  result[16] &= 0xCFFFFFFFFFFFFFFFLL;
  result[19] = v1;
  result[22] = v2;
  return result;
}

uint64_t sub_26BE822A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E2A8, &qword_26C028DD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_26BE82314()
{
  result = qword_28045E8B8;
  if (!qword_28045E8B8)
  {
    sub_26C009C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E8B8);
  }

  return result;
}

uint64_t sub_26BE8236C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.Cryptography.MACTag(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BE823D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BE82430()
{
  sub_26C00B05C();
  sub_26C00B07C();
  return sub_26C00B0CC();
}

unint64_t sub_26BE824B8()
{
  result = qword_28045EA38;
  if (!qword_28045EA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EA38);
  }

  return result;
}

uint64_t sub_26BE8250C(uint64_t a1)
{
  sub_26C00B05C();
  sub_26C00B07C();
  return sub_26C00B0CC();
}

void sub_26BE82550(uint64_t a1, void (*a2)(__int128 *, uint64_t))
{
  v6 = xmmword_26C00BBD0;
  v7 = 0;
  a2(&v6, a1);
  if (v2)
  {
    sub_26BE00258(v6, *(&v6 + 1));
  }

  else
  {
    v3 = *(&v6 + 1) >> 62;
    if ((*(&v6 + 1) >> 62) > 1)
    {
      if (v3 == 2)
      {
        v4 = *(v6 + 24);
      }

      else
      {
        v4 = 0;
      }
    }

    else if (v3)
    {
      v4 = v6 >> 32;
    }

    else
    {
      v4 = BYTE14(v6);
    }

    if (v4 < v7)
    {
      __break(1u);
    }

    else
    {
      v5 = v6;
      sub_26C00909C();
      sub_26BE00258(v5, *(&v5 + 1));
    }
  }
}

uint64_t sub_26BE82640()
{
  v0 = sub_26C009A5C();
  __swift_allocate_value_buffer(v0, qword_280478F00);
  __swift_project_value_buffer(v0, qword_280478F00);
  return sub_26C009A4C();
}

void sub_26BE826C4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_28045DF88 != -1)
  {
    swift_once();
  }

  v8 = sub_26C009A5C();
  __swift_project_value_buffer(v8, qword_280478F00);

  sub_26BE00608(a3, a4);
  v9 = sub_26C009A3C();
  v10 = sub_26C00AA0C();

  sub_26BE00258(a3, a4);
  if (os_log_type_enabled(v9, v10))
  {
    osloga = v8;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_26BE29740(a1, a2, &v26);
    *(v11 + 12) = 2080;
    v13 = sub_26BE832D4(a3, a4);
    v15 = a1;
    v16 = sub_26BE29740(v13, v14, &v26);

    *(v11 + 14) = v16;
    a1 = v15;
    _os_log_impl(&dword_26BDFE000, v9, v10, "Failed to deserialize %s from %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v12, -1, -1);
    v17 = v11;
    v8 = osloga;
    MEMORY[0x26D69A4E0](v17, -1, -1);
  }

  if (qword_28045DFD0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v8, qword_280478FB0);

  sub_26BE00608(a3, a4);
  oslog = sub_26C009A3C();
  v18 = sub_26C00A9FC();

  sub_26BE00258(a3, a4);
  if (os_log_type_enabled(oslog, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_26BE29740(a1, a2, &v26);
    *(v19 + 12) = 2080;
    v21 = sub_26C0090EC();
    v23 = sub_26BE29740(v21, v22, &v26);

    *(v19 + 14) = v23;
    _os_log_impl(&dword_26BDFE000, oslog, v18, "Full data from failure to deserialize %s: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v20, -1, -1);
    MEMORY[0x26D69A4E0](v19, -1, -1);
  }
}

void static MLS.parseMLSMessage(data:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MLS.MLSMessage(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = 0;
  v14 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_7;
    }

    v13 = *(a1 + 16);
  }

  else
  {
    if (!v14)
    {
      goto LABEL_7;
    }

    v13 = a1;
  }

  sub_26BE00608(a1, a2);
  sub_26BE00608(a1, a2);
LABEL_7:
  v28 = a1;
  v29 = a2;
  v30 = v13;
  sub_26BEE3C08(v12);
  if (v3)
  {
    swift_willThrow();
    sub_26BE00258(a1, a2);
    sub_26BE00258(v28, v29);
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v15 = sub_26C009A5C();
    __swift_project_value_buffer(v15, qword_280478EE8);
    v16 = sub_26C009A3C();
    v17 = sub_26C00AA0C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26BDFE000, v16, v17, "parseMLSMessage failed to parse incoming message as MLSMessage, trying CommitList", v18, 2u);
      MEMORY[0x26D69A4E0](v18, -1, -1);
    }

    v26 = a1;
    v27 = a2;
    sub_26BE00608(a1, a2);
    MLS.Group.Message.asSingleCommit()(&v28);
    sub_26BE00258(v26, v27);
    MLS.MLSMessage.init(rawValue:quiet:)(v28, v29, 0, v10);
    sub_26BE831AC(v10, a3);
    v20 = sub_26C009A3C();
    v23 = sub_26C00AA1C();
    if (os_log_type_enabled(v20, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_26BDFE000, v20, v23, "parseMLSMessage successfully parsed incoming message as CommitList", v24, 2u);
      MEMORY[0x26D69A4E0](v24, -1, -1);
    }
  }

  else
  {
    sub_26BE00258(a1, a2);
    sub_26BE00258(v28, v29);
    sub_26BE831AC(v12, a3);
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v19 = sub_26C009A5C();
    __swift_project_value_buffer(v19, qword_280478EE8);
    v20 = sub_26C009A3C();
    v21 = sub_26C00AA1C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_26BDFE000, v20, v21, "parseMLSMessage successfully parsed incoming message as MLSMessage", v22, 2u);
      MEMORY[0x26D69A4E0](v22, -1, -1);
    }
  }
}

void static MLS.parseKeyPackage(data:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_7;
    }

    v7 = a3;
    v8 = v3;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = a3;
    v8 = v3;
  }

  sub_26BE00608(a1, a2);
  v3 = v8;
  a3 = v7;
LABEL_7:
  sub_26BE00E2C(a3);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EA40, &qword_26C013E18);
    v9 = sub_26C00A4FC();
    sub_26BE826C4(v9, v10, a1, a2);

    swift_willThrow();
  }

  sub_26BE00258(a1, a2);
}

void static MLS.parseWelcome(data:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_7;
    }

    v7 = a3;
    v8 = v3;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = a3;
    v8 = v3;
  }

  sub_26BE00608(a1, a2);
  v3 = v8;
  a3 = v7;
LABEL_7:
  sub_26BE343E4(a3);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EA48, &qword_26C013E20);
    v9 = sub_26C00A4FC();
    sub_26BE826C4(v9, v10, a1, a2);

    swift_willThrow();
  }

  sub_26BE00258(a1, a2);
}

void static MLS.parseGroupInfo(data:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_7;
    }

    v7 = a3;
    v8 = v3;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = a3;
    v8 = v3;
  }

  sub_26BE00608(a1, a2);
  v3 = v8;
  a3 = v7;
LABEL_7:
  sub_26BED3A64(a3);
  if (v3)
  {
    type metadata accessor for MLS.GroupInfo(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EA50, &qword_26C013E28);
    v9 = sub_26C00A4FC();
    sub_26BE826C4(v9, v10, a1, a2);

    swift_willThrow();
  }

  sub_26BE00258(a1, a2);
}

uint64_t sub_26BE831AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.MLSMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BE83210()
{
  sub_26C00AC1C();

  v0 = sub_26C00AEFC();
  MEMORY[0x26D699090](v0);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  MEMORY[0x26D699090](0xD000000000000011, 0x800000026C02B9D0);
}

uint64_t sub_26BE832D4(uint64_t a1, unint64_t a2)
{
  sub_26BE00608(a1, a2);
  sub_26BE3C290(0x10uLL, a1, a2, &v15);
  v4 = v15;
  v5 = v16;
  v17 = sub_26BF87240(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
  sub_26BE3C0F4();
  v6 = sub_26C00A3EC();
  v8 = v7;
  sub_26BE00258(v4, v5);

  v17 = v6;
  v18 = v8;
  MEMORY[0x26D699090](3026478, 0xE300000000000000);
  sub_26BE00608(a1, a2);
  sub_26BE83448(16, a1, a2, &v15);
  v9 = v15;
  v10 = v16;
  sub_26BF87240(v15, v16);
  v11 = sub_26C00A3EC();
  v13 = v12;
  sub_26BE00258(v9, v10);

  MEMORY[0x26D699090](v11, v13);

  return v17;
}

void sub_26BE83448(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v5 = a2;
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 == 2)
    {
      a2 = *(a2 + 16);
      v8 = *(v5 + 24);
    }

    else
    {
      a2 = 0;
      v8 = 0;
    }
  }

  else
  {
    if (v7)
    {
      a2 = a2;
    }

    else
    {
      a2 = 0;
    }

    if (v7)
    {
      v8 = v5 >> 32;
    }

    else
    {
      v8 = BYTE6(a3);
    }
  }

  v9 = -a1;
  v10 = sub_26BE855EC(v8, a2, v5, a3);
  if (v10 > 0 || v10 <= v9)
  {
    v11 = sub_26BE85588(v8, v9, v5, a3);
    if (v7 <= 1)
    {
      if (!v7)
      {
        v12 = BYTE6(a3);
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v7 == 3)
    {
      v12 = 0;
      goto LABEL_27;
    }

LABEL_24:
    v12 = *(v5 + 24);
    goto LABEL_27;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_28;
    }

    v11 = *(v5 + 16);
    goto LABEL_24;
  }

  if (!v7)
  {
    v11 = 0;
    v12 = BYTE6(a3);
    goto LABEL_27;
  }

  v11 = v5;
LABEL_26:
  v12 = v5 >> 32;
LABEL_27:
  if (v12 >= v11)
  {
LABEL_28:
    v13 = sub_26C00909C();
    v15 = v14;
    sub_26BE00258(v5, a3);
    *a4 = v13;
    a4[1] = v15;
    return;
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_26BE83594(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2 || !__OFSUB__(*(result + 24), *(result + 16)))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v4)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
LABEL_9:
    v5 = sub_26C00AEFC();
    MEMORY[0x26D699090](v5);

    MEMORY[0x26D699090](0x203A736574796220, 0xE800000000000000);
    v6 = sub_26BE832D4(v3, a2);
    MEMORY[0x26D699090](v6);

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t MLS.RatchetTree.description.getter()
{
  MLS.RatchetTree.rawRepresentation.getter();
  v1 = v0;
  v3 = v2;
  sub_26C00AC1C();

  v4 = sub_26C00AEFC();
  MEMORY[0x26D699090](v4);

  result = MEMORY[0x26D699090](8236, 0xE200000000000000);
  if (v3 >> 60 == 15)
  {
    v6 = sub_26C00AEFC();
    MEMORY[0x26D699090](v6);

    MEMORY[0x26D699090](0x203A736574796220, 0xE800000000000000);
    v7 = 0xE500000000000000;
    v8 = 0x3E6C696E3CLL;
LABEL_14:
    MEMORY[0x26D699090](v8, v7);

    sub_26BE136AC(v1, v3);
    return 0xD000000000000019;
  }

  v9 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_26BE136AC(v1, v3);
LABEL_13:
      v10 = sub_26C00AEFC();
      MEMORY[0x26D699090](v10);

      MEMORY[0x26D699090](0x203A736574796220, 0xE800000000000000);
      sub_26BE00608(v1, v3);
      v11 = sub_26BE832D4(v1, v3);
      v7 = v12;
      sub_26BE136AC(v1, v3);
      v8 = v11;
      goto LABEL_14;
    }

    if (!__OFSUB__(*(v1 + 24), *(v1 + 16)))
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (!v9)
  {
    goto LABEL_12;
  }

  if (!__OFSUB__(HIDWORD(v1), v1))
  {
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_26BE83970()
{
  v1 = sub_26BE83594(*v0, *(v0 + 8));
  MEMORY[0x26D699090](v1);

  MEMORY[0x26D699090](41, 0xE100000000000000);
}

uint64_t sub_26BE839E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BE83594(*v3, *(v3 + 8));
  MEMORY[0x26D699090](v4);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return a3;
}

uint64_t MLS.GroupContext.description.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[8];
  v44 = v0[7];
  v46 = v0[6];
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_26C00AC1C();
  MEMORY[0x26D699090](0xD000000000000016, 0x800000026C02B8B0);
  sub_26C00AD4C();
  MEMORY[0x26D699090](0x726568706963202CLL, 0xEF203A6574697573);
  sub_26C00AD4C();
  MEMORY[0x26D699090](0x4970756F7267202CLL, 0xEB00000000203A44);
  v7 = sub_26BE83594(v1, v2);
  MEMORY[0x26D699090](v7);

  MEMORY[0x26D699090](0x3A68636F7065202CLL, 0xE900000000000020);
  v54 = v3;
  v8 = sub_26C00AEFC();
  MEMORY[0x26D699090](v8);

  MEMORY[0x26D699090](0x614865657274202CLL, 0xEC000000203A6873);
  v9 = sub_26BE83594(v4, v5);
  MEMORY[0x26D699090](v9);

  MEMORY[0x26D699090](0xD00000000000001BLL, 0x800000026C02B8D0);
  v10 = sub_26BE83594(v46, v44);
  MEMORY[0x26D699090](v10);

  MEMORY[0x26D699090](0x736E65747865202CLL, 0xEE00203A736E6F69);
  v11 = *(v6 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
LABEL_15:
    v40 = MEMORY[0x26D6991B0](v12, MEMORY[0x277D837D0]);
    v42 = v41;

    MEMORY[0x26D699090](v40, v42);

    MEMORY[0x26D699090](41, 0xE100000000000000);
    return v57;
  }

  v56 = MEMORY[0x277D84F90];
  sub_26BECB834(0, v11, 0);
  v12 = v56;
  v13 = (v6 + 48);
  while (1)
  {
    v14 = *(v13 - 8);
    v15 = *(v13 - 1);
    v16 = *v13;
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_26BE00608(v15, v16);
    sub_26C00AC1C();

    v54 = 0xD000000000000010;
    v55 = 0x800000026C02B8F0;
    LOWORD(v52) = v14;
    v17 = MLS.Extension.ExtensionType.description.getter();
    MEMORY[0x26D699090](v17);

    result = MEMORY[0x26D699090](0x203A61746164202CLL, 0xE800000000000000);
    v52 = 0;
    v53 = 0xE000000000000000;
    v19 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      break;
    }

    if (v19)
    {
      LODWORD(v20) = HIDWORD(v15) - v15;
      if (__OFSUB__(HIDWORD(v15), v15))
      {
        goto LABEL_16;
      }

      v20 = v20;
    }

    else
    {
      v20 = BYTE6(v16);
    }

LABEL_12:
    v43 = v13;
    v47 = v11;
    v50 = v20;
    v24 = sub_26C00AEFC();
    MEMORY[0x26D699090](v24);

    MEMORY[0x26D699090](0x203A736574796220, 0xE800000000000000);
    sub_26BE00608(v15, v16);
    sub_26BE3C290(0x10uLL, v15, v16, &v48);
    v45 = v12;
    v25 = v48;
    v26 = v49;
    v50 = sub_26BF87240(v48, v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE3C0F4();
    v27 = sub_26C00A3EC();
    v29 = v28;
    sub_26BE00258(v25, v26);

    v50 = v27;
    v51 = v29;
    MEMORY[0x26D699090](3026478, 0xE300000000000000);
    sub_26BE00608(v15, v16);
    sub_26BE83448(16, v15, v16, &v48);
    v30 = v48;
    v31 = v49;
    sub_26BF87240(v48, v49);
    v32 = sub_26C00A3EC();
    v34 = v33;
    sub_26BE00258(v30, v31);
    v12 = v45;

    MEMORY[0x26D699090](v32, v34);

    MEMORY[0x26D699090](v50, v51);

    MEMORY[0x26D699090](v52, v53);

    MEMORY[0x26D699090](41, 0xE100000000000000);
    sub_26BE00258(v15, v16);
    v35 = v54;
    v36 = v55;
    v56 = v45;
    v38 = *(v45 + 16);
    v37 = *(v45 + 24);
    if (v38 >= v37 >> 1)
    {
      sub_26BECB834((v37 > 1), v38 + 1, 1);
      v12 = v56;
    }

    v13 = v43 + 3;
    *(v12 + 16) = v38 + 1;
    v39 = v12 + 16 * v38;
    *(v39 + 32) = v35;
    *(v39 + 40) = v36;
    v11 = v47 - 1;
    if (v47 == 1)
    {
      goto LABEL_15;
    }
  }

  v20 = 0;
  if (v19 != 2)
  {
    goto LABEL_12;
  }

  v22 = *(v15 + 16);
  v21 = *(v15 + 24);
  v23 = __OFSUB__(v21, v22);
  v20 = v21 - v22;
  if (!v23)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t MLS.Extension.Extension.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_26C00AC1C();

  v3 = MLS.Extension.ExtensionType.description.getter();
  MEMORY[0x26D699090](v3);

  MEMORY[0x26D699090](0x203A61746164202CLL, 0xE800000000000000);
  v4 = sub_26BE83594(v1, v2);
  MEMORY[0x26D699090](v4);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t MLS.GroupInfo.description.getter()
{
  v1 = v0;
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_26C00AC1C();
  MEMORY[0x26D699090](0xD000000000000018, 0x800000026C02B910);
  v2 = MLS.GroupContext.description.getter();
  MEMORY[0x26D699090](v2);

  MEMORY[0x26D699090](0x736E65747865202CLL, 0xEE00203A736E6F69);
  v3 = *(v0 + 72);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
LABEL_16:
    v33 = MEMORY[0x26D6991B0](v5, MEMORY[0x277D837D0]);
    v35 = v34;

    MEMORY[0x26D699090](v33, v35);

    MEMORY[0x26D699090](0x72656E676973202CLL, 0xEA0000000000203ALL);
    v36 = type metadata accessor for MLS.GroupInfo(0);
    sub_26BE83210();
    MEMORY[0x26D699090](0x74616E676973202CLL, 0xED0000203A657275);
    v37 = sub_26BE83594(*(v1 + *(v36 + 32)), *(v1 + *(v36 + 32) + 8));
    MEMORY[0x26D699090](v37);

    MEMORY[0x26D699090](41, 0xE100000000000000);
    return v51;
  }

  v38 = v0;
  v50 = MEMORY[0x277D84F90];
  sub_26BECB834(0, v4, 0);
  v5 = v50;
  v6 = (v3 + 48);
  while (1)
  {
    v7 = *(v6 - 8);
    v8 = *(v6 - 1);
    v9 = *v6;
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_26BE00608(v8, v9);
    sub_26C00AC1C();

    v48 = 0xD000000000000010;
    v49 = 0x800000026C02B8F0;
    LOWORD(v46) = v7;
    v10 = MLS.Extension.ExtensionType.description.getter();
    MEMORY[0x26D699090](v10);

    result = MEMORY[0x26D699090](0x203A61746164202CLL, 0xE800000000000000);
    v46 = 0;
    v47 = 0xE000000000000000;
    v12 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      break;
    }

    if (v12)
    {
      LODWORD(v13) = HIDWORD(v8) - v8;
      if (__OFSUB__(HIDWORD(v8), v8))
      {
        goto LABEL_17;
      }

      v13 = v13;
    }

    else
    {
      v13 = BYTE6(v9);
    }

LABEL_12:
    v39 = v6;
    v41 = v4;
    v44 = v13;
    v17 = sub_26C00AEFC();
    MEMORY[0x26D699090](v17);

    MEMORY[0x26D699090](0x203A736574796220, 0xE800000000000000);
    sub_26BE00608(v8, v9);
    sub_26BE3C290(0x10uLL, v8, v9, &v42);
    v19 = v42;
    v18 = v43;
    v44 = sub_26BF87240(v42, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE3C0F4();
    v40 = v5;
    v20 = sub_26C00A3EC();
    v22 = v21;
    sub_26BE00258(v19, v18);

    v44 = v20;
    v45 = v22;
    MEMORY[0x26D699090](3026478, 0xE300000000000000);
    sub_26BE00608(v8, v9);
    sub_26BE83448(16, v8, v9, &v42);
    v23 = v42;
    v24 = v43;
    sub_26BF87240(v42, v43);
    v25 = sub_26C00A3EC();
    v27 = v26;
    sub_26BE00258(v23, v24);

    MEMORY[0x26D699090](v25, v27);
    v5 = v40;

    MEMORY[0x26D699090](v44, v45);

    MEMORY[0x26D699090](v46, v47);

    MEMORY[0x26D699090](41, 0xE100000000000000);
    sub_26BE00258(v8, v9);
    v28 = v48;
    v29 = v49;
    v50 = v40;
    v31 = *(v40 + 16);
    v30 = *(v40 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_26BECB834((v30 > 1), v31 + 1, 1);
      v5 = v50;
    }

    v6 = v39 + 3;
    *(v5 + 16) = v31 + 1;
    v32 = v5 + 16 * v31;
    *(v32 + 32) = v28;
    *(v32 + 40) = v29;
    v4 = v41 - 1;
    if (v41 == 1)
    {
      v1 = v38;
      goto LABEL_16;
    }
  }

  v13 = 0;
  if (v12 != 2)
  {
    goto LABEL_12;
  }

  v15 = *(v8 + 16);
  v14 = *(v8 + 24);
  v16 = __OFSUB__(v14, v15);
  v13 = v14 - v15;
  if (!v16)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t MLS.KeyPackage.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 52);
  v5 = *(v0 + 68);
  v67 = *(v0 + 60);
  v68 = v5;
  v6 = *(v0 + 20);
  v69 = *(v0 + 19);
  v7 = *(v0 + 20);
  v8 = *(v0 + 36);
  v63 = *(v0 + 28);
  v64 = v8;
  v65 = *(v0 + 44);
  v66 = v4;
  v61 = *(v0 + 12);
  v62 = v7;
  v9 = *(v0 + 21);
  v10 = *(v0 + 22);
  v59 = 0;
  v60 = 0xE000000000000000;
  sub_26C00AC1C();
  MEMORY[0x26D699090](0xD000000000000014, 0x800000026C02B930);
  sub_26C00AD4C();
  MEMORY[0x26D699090](0x726568706963202CLL, 0xEF203A6574697573);
  LOWORD(v56) = v1;
  sub_26C00AD4C();
  MEMORY[0x26D699090](0x654B74696E69202CLL, 0xEB00000000203A79);
  v11 = sub_26BE832D4(v2, v3);
  MEMORY[0x26D699090](v11);

  MEMORY[0x26D699090](0x6F4E6661656C202CLL, 0xEC000000203A6564);
  v12 = MLS.LeafNode.description.getter();
  MEMORY[0x26D699090](v12);

  MEMORY[0x26D699090](0x736E65747865202CLL, 0xEE00203A736E6F69);
  v13 = *(v6 + 16);
  v14 = MEMORY[0x277D84F90];
  if (!v13)
  {
LABEL_16:
    v42 = MEMORY[0x26D6991B0](v14, MEMORY[0x277D837D0]);
    v44 = v43;

    MEMORY[0x26D699090](v42, v44);

    MEMORY[0x26D699090](0x74616E676973202CLL, 0xED0000203A657275);
    v45 = sub_26BE83594(v9, v10);
    MEMORY[0x26D699090](v45);

    MEMORY[0x26D699090](41, 0xE100000000000000);
    return v59;
  }

  v46 = v10;
  v47 = v9;
  v58 = MEMORY[0x277D84F90];
  sub_26BECB834(0, v13, 0);
  v14 = v58;
  v15 = (v6 + 48);
  while (1)
  {
    v16 = *(v15 - 8);
    v17 = *(v15 - 1);
    v18 = *v15;
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_26BE00608(v17, v18);
    sub_26C00AC1C();

    v56 = 0xD000000000000010;
    v57 = 0x800000026C02B8F0;
    LOWORD(v54) = v16;
    v19 = MLS.Extension.ExtensionType.description.getter();
    MEMORY[0x26D699090](v19);

    result = MEMORY[0x26D699090](0x203A61746164202CLL, 0xE800000000000000);
    v54 = 0;
    v55 = 0xE000000000000000;
    v21 = v18 >> 62;
    if ((v18 >> 62) > 1)
    {
      break;
    }

    if (v21)
    {
      LODWORD(v22) = HIDWORD(v17) - v17;
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_17;
      }

      v22 = v22;
    }

    else
    {
      v22 = BYTE6(v18);
    }

LABEL_12:
    v48 = v15;
    v49 = v13;
    v52 = v22;
    v26 = sub_26C00AEFC();
    MEMORY[0x26D699090](v26);

    MEMORY[0x26D699090](0x203A736574796220, 0xE800000000000000);
    sub_26BE00608(v17, v18);
    sub_26BE3C290(0x10uLL, v17, v18, &v50);
    v27 = v50;
    v28 = v51;
    v52 = sub_26BF87240(v50, v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE3C0F4();
    v29 = sub_26C00A3EC();
    v31 = v30;
    sub_26BE00258(v27, v28);

    v52 = v29;
    v53 = v31;
    MEMORY[0x26D699090](3026478, 0xE300000000000000);
    sub_26BE00608(v17, v18);
    sub_26BE83448(16, v17, v18, &v50);
    v32 = v50;
    v33 = v51;
    sub_26BF87240(v50, v51);
    v34 = sub_26C00A3EC();
    v36 = v35;
    sub_26BE00258(v32, v33);

    MEMORY[0x26D699090](v34, v36);

    MEMORY[0x26D699090](v52, v53);

    MEMORY[0x26D699090](v54, v55);

    MEMORY[0x26D699090](41, 0xE100000000000000);
    sub_26BE00258(v17, v18);
    v37 = v56;
    v38 = v57;
    v58 = v14;
    v40 = *(v14 + 16);
    v39 = *(v14 + 24);
    if (v40 >= v39 >> 1)
    {
      sub_26BECB834((v39 > 1), v40 + 1, 1);
      v14 = v58;
    }

    v15 = v48 + 3;
    *(v14 + 16) = v40 + 1;
    v41 = v14 + 16 * v40;
    *(v41 + 32) = v37;
    *(v41 + 40) = v38;
    v13 = v49 - 1;
    if (v49 == 1)
    {
      v10 = v46;
      v9 = v47;
      goto LABEL_16;
    }
  }

  v22 = 0;
  if (v21 != 2)
  {
    goto LABEL_12;
  }

  v24 = *(v17 + 16);
  v23 = *(v17 + 24);
  v25 = __OFSUB__(v23, v24);
  v22 = v23 - v24;
  if (!v25)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t MLS.LeafNode.description.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 80);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  *&v54 = 0;
  *(&v54 + 1) = 0xE000000000000000;
  sub_26C00AC1C();
  v57 = v54;
  MEMORY[0x26D699090](0xD000000000000015, 0x800000026C02B950);
  *&v54 = v1;
  *(&v54 + 1) = v2;
  v8 = MLS.Credential.description.getter();
  v43 = *(v0 + 64);
  v45 = *(v0 + 48);
  MEMORY[0x26D699090](v8);

  MEMORY[0x26D699090](0xD000000000000010, 0x800000026C02B970);
  v54 = v45;
  v55 = v43;
  v56 = v3;
  sub_26C00AD4C();
  MEMORY[0x26D699090](0xD000000000000012, 0x800000026C02B990);
  LOBYTE(v54) = 0x20301u >> (8 * v4);
  sub_26C00AD4C();
  MEMORY[0x26D699090](0x736E65747865202CLL, 0xEE00203A736E6F69);
  v9 = *(v5 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
LABEL_16:
    v37 = MEMORY[0x26D6991B0](v10, MEMORY[0x277D837D0]);
    v39 = v38;

    MEMORY[0x26D699090](v37, v39);

    MEMORY[0x26D699090](0x74616E676973202CLL, 0xED0000203A657275);
    v40 = sub_26BE83594(v6, v7);
    MEMORY[0x26D699090](v40);

    MEMORY[0x26D699090](41, 0xE100000000000000);
    return v57;
  }

  v41 = v7;
  v42 = v6;
  v53 = MEMORY[0x277D84F90];
  sub_26BECB834(0, v9, 0);
  v10 = v53;
  v11 = (v5 + 48);
  while (1)
  {
    v12 = *(v11 - 8);
    v13 = *(v11 - 1);
    v14 = *v11;
    *&v54 = 0;
    *(&v54 + 1) = 0xE000000000000000;
    sub_26BE00608(v13, v14);
    sub_26C00AC1C();

    *&v54 = 0xD000000000000010;
    *(&v54 + 1) = 0x800000026C02B8F0;
    LOWORD(v51) = v12;
    v15 = MLS.Extension.ExtensionType.description.getter();
    MEMORY[0x26D699090](v15);

    result = MEMORY[0x26D699090](0x203A61746164202CLL, 0xE800000000000000);
    v51 = 0;
    v52 = 0xE000000000000000;
    v17 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      break;
    }

    if (v17)
    {
      LODWORD(v18) = HIDWORD(v13) - v13;
      if (__OFSUB__(HIDWORD(v13), v13))
      {
        goto LABEL_17;
      }

      v18 = v18;
    }

    else
    {
      v18 = BYTE6(v14);
    }

LABEL_12:
    v46 = v9;
    v49 = v18;
    v22 = sub_26C00AEFC();
    MEMORY[0x26D699090](v22);

    MEMORY[0x26D699090](0x203A736574796220, 0xE800000000000000);
    sub_26BE00608(v13, v14);
    sub_26BE3C290(0x10uLL, v13, v14, &v47);
    v23 = v47;
    v24 = v48;
    v44 = v10;
    v49 = sub_26BF87240(v47, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE3C0F4();
    v25 = sub_26C00A3EC();
    v27 = v26;
    sub_26BE00258(v23, v24);

    v49 = v25;
    v50 = v27;
    MEMORY[0x26D699090](3026478, 0xE300000000000000);
    sub_26BE00608(v13, v14);
    sub_26BE83448(16, v13, v14, &v47);
    v28 = v47;
    v29 = v48;
    sub_26BF87240(v47, v48);
    v30 = sub_26C00A3EC();
    v32 = v31;
    sub_26BE00258(v28, v29);

    v33 = v30;
    v10 = v44;
    MEMORY[0x26D699090](v33, v32);

    MEMORY[0x26D699090](v49, v50);

    MEMORY[0x26D699090](v51, v52);

    MEMORY[0x26D699090](41, 0xE100000000000000);
    sub_26BE00258(v13, v14);
    v34 = v54;
    v53 = v44;
    v36 = *(v44 + 16);
    v35 = *(v44 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_26BECB834((v35 > 1), v36 + 1, 1);
      v10 = v53;
    }

    v11 += 3;
    *(v10 + 16) = v36 + 1;
    *(v10 + 16 * v36 + 32) = v34;
    v9 = v46 - 1;
    if (v46 == 1)
    {
      v7 = v41;
      v6 = v42;
      goto LABEL_16;
    }
  }

  v18 = 0;
  if (v17 != 2)
  {
    goto LABEL_12;
  }

  v20 = *(v13 + 16);
  v19 = *(v13 + 24);
  v21 = __OFSUB__(v19, v20);
  v18 = v19 - v20;
  if (!v21)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t MLS.Credential.description.getter()
{
  sub_26C00AC1C();

  v0 = MLS.CredentialType.description.getter();
  MEMORY[0x26D699090](v0);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0xD000000000000015;
}

unint64_t MLS.LeafIndex.description.getter()
{
  sub_26C00AC1C();

  v0 = sub_26C00AEFC();
  MEMORY[0x26D699090](v0);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0xD000000000000011;
}

uint64_t MLS.GroupState.description.getter()
{
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_26C00AC1C();
  MEMORY[0x26D699090](0xD000000000000014, 0x800000026C02B9F0);
  v1 = sub_26BE832D4(v0[1], v0[2]);
  MEMORY[0x26D699090](v1);

  MEMORY[0x26D699090](0x203A617265202CLL, 0xE700000000000000);
  v2 = type metadata accessor for MLS.GroupState(0);
  v3 = sub_26BE81FE0(*(v0 + *(v2 + 40)));
  if ((v3 & 0x100000000) != 0)
  {
    LODWORD(v3) = sub_26BE4126C();
  }

  LODWORD(v17) = v3;
  v4 = sub_26C00AEFC();
  MEMORY[0x26D699090](v4);

  MEMORY[0x26D699090](0x3A68636F7065202CLL, 0xE900000000000020);
  v17 = v0[3];
  v5 = sub_26C00AEFC();
  MEMORY[0x26D699090](v5);

  MEMORY[0x26D699090](0x4168636F7065202CLL, 0xED0000203A687475);
  type metadata accessor for MLS.KeySchedule(0);
  sub_26C009C3C();
  v6 = sub_26BE832D4(v17, v18);
  v8 = v7;
  sub_26BE00258(v17, v18);
  MEMORY[0x26D699090](v6, v8);

  MEMORY[0x26D699090](0x61654C6D756E202CLL, 0xED0000203A736576);
  v17 = v0[7];
  MLS.RatchetTree.leafCount.getter(&v16);
  v9 = sub_26C00AEFC();
  MEMORY[0x26D699090](v9);

  MEMORY[0x26D699090](0xD000000000000019, 0x800000026C02BA10);
  v17 = *(*(v0 + *(v2 + 60)) + 16);
  v10 = sub_26C00AEFC();
  MEMORY[0x26D699090](v10);

  MEMORY[0x26D699090](0x534C4D646E65202CLL, 0xEA0000000000203ALL);
  v11 = sub_26BE5CC90();
  v12 = !v11;
  if (v11)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v12)
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  MEMORY[0x26D699090](v13, v14);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return v19;
}

uint64_t sub_26BE85588(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_26BE855EC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_26BE856B4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MLS.Validity(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for MLS.SubjectPublicKeyInfo(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_26BE857EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for MLS.Validity(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for MLS.SubjectPublicKeyInfo(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t _s21RCSTBSParticipantInfoVMa(uint64_t a1)
{
  result = qword_28045EA58;
  if (!qword_28045EA58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BE8595C(uint64_t a1)
{
  result = type metadata accessor for MLS.Validity(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MLS.SubjectPublicKeyInfo(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26BE85A00()
{
  sub_26C00AC1C();
  MEMORY[0x26D699090](0xD000000000000021, 0x800000026C02BA30);
  sub_26BE85E88();
  v0 = sub_26C00AEFC();
  MEMORY[0x26D699090](v0);

  MEMORY[0x26D699090](0x726F646E6576202CLL, 0xEC000000203A6449);
  v1 = sub_26C00AEFC();
  MEMORY[0x26D699090](v1);

  MEMORY[0x26D699090](0x6964696C6176202CLL, 0xEC000000203A7974);
  _s21RCSTBSParticipantInfoVMa(0);
  type metadata accessor for MLS.Validity(0);
  sub_26C00AD4C();
  MEMORY[0x26D699090](0x203A696B7073202CLL, 0xE800000000000000);
  v2 = MLS.SubjectPublicKeyInfo.description.getter();
  MEMORY[0x26D699090](v2);

  MEMORY[0x26D699090](0x203A6E6173202CLL, 0xE700000000000000);
  sub_26BE85EDC();
  v3 = sub_26C00AEFC();
  MEMORY[0x26D699090](v3);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_26BE85BFC(uint64_t a1, uint64_t *a2)
{
  sub_26BE85F4C();
  result = sub_26C00976C();
  if (!v2)
  {
    sub_26C00976C();
    _s21RCSTBSParticipantInfoVMa(0);
    type metadata accessor for MLS.Validity(0);
    sub_26BE85FA0(&qword_28045EA80, type metadata accessor for MLS.Validity, &protocol conformance descriptor for MLS.Validity);
    sub_26C00976C();
    type metadata accessor for MLS.SubjectPublicKeyInfo(0);
    sub_26BE85FA0(&qword_28045EA88, type metadata accessor for MLS.SubjectPublicKeyInfo, &protocol conformance descriptor for MLS.SubjectPublicKeyInfo);
    sub_26C00976C();
    sub_26BE85FE8();
    return sub_26C00976C();
  }

  return result;
}

uint64_t sub_26BE85D80()
{
  v1 = sub_26C00934C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s8SwiftMLS0B0O8ValidityV17defaultIdentifier0A12ASN1Internal0fE0VvgZ_0();
  v7 = v0;
  sub_26C00973C();
  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_26BE85E88()
{
  result = qword_28045EA68;
  if (!qword_28045EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EA68);
  }

  return result;
}

unint64_t sub_26BE85EDC()
{
  result = qword_28045EA70;
  if (!qword_28045EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EA70);
  }

  return result;
}

unint64_t sub_26BE85F4C()
{
  result = qword_28045EA78;
  if (!qword_28045EA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EA78);
  }

  return result;
}

uint64_t sub_26BE85FA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26BE85FE8()
{
  result = qword_28045EA90;
  if (!qword_28045EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EA90);
  }

  return result;
}

uint64_t MLS.CredentialType.description.getter()
{
  v1 = *v0;
  if (v1 == 1)
  {
    return 0x63697361622ELL;
  }

  if (v1 == 2)
  {
    return 0x393035782ELL;
  }

  sub_26C00AC1C();

  v3 = sub_26C00AEFC();
  MEMORY[0x26D699090](v3);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0xD000000000000019;
}

unint64_t sub_26BE8616C()
{
  result = qword_28045EA98;
  if (!qword_28045EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EA98);
  }

  return result;
}

uint64_t MLS.LeafIndex.hashValue.getter()
{
  sub_26C00B05C();
  sub_26C00B09C();
  return sub_26C00B0CC();
}

unint64_t sub_26BE862AC()
{
  result = qword_28045EAA0;
  if (!qword_28045EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EAA0);
  }

  return result;
}

uint64_t MLS.MLSError.errorCode.getter()
{
  sub_26BE2DC18(v0, &v4);
  result = 1;
  switch(v18)
  {
    case 1:
      result = 2;
      break;
    case 2:
      sub_26BE2DC9C(&v4);
      result = 3;
      break;
    case 3:
      result = 6;
      break;
    case 4:
      result = 7;
      break;
    case 5:
      result = 8;
      break;
    case 6:
      result = 9;
      break;
    case 7:
      result = 10;
      break;
    case 8:
      result = 11;
      break;
    case 9:
      result = 12;
      break;
    case 10:
      result = 13;
      break;
    case 11:
      result = 16;
      break;
    case 12:
      result = 17;
      break;
    case 13:
      result = 18;
      break;
    case 14:
      sub_26BE2DC9C(&v4);
      result = 19;
      break;
    case 15:
      sub_26BE2DC9C(&v4);
      result = 20;
      break;
    case 16:
      sub_26BE2DC9C(&v4);
      result = 23;
      break;
    case 17:
      result = 24;
      break;
    case 18:
      result = 33;
      break;
    case 19:
      result = 51;
      break;
    case 20:
      result = 56;
      break;
    case 21:
      sub_26BE2E258(&v11, &qword_28045EAA8, &unk_26C014260);
      sub_26BE2E258(&v4, &qword_28045EAA8, &unk_26C014260);
      result = 57;
      break;
    case 22:
      sub_26BE2E258(&v4, &qword_28045EAA8, &unk_26C014260);
      result = 58;
      break;
    case 23:
      if (v17 | v4 | v16 | v15 | v14 | v13 | v12 | v11 | v10 | v9 | v8 | v7 | v6 | v5)
      {
        v2 = v16 | v17 | v15 | v14 | v13 | v12 | v11 | v10 | v9 | v8 | v7 | v6 | v5;
        if (v4 != 1 || v2)
        {
          if (v4 != 2 || v2)
          {
            if (v4 != 3 || v2)
            {
              if (v4 != 4 || v2)
              {
                if (v4 != 5 || v2)
                {
                  if (v4 != 6 || v2)
                  {
                    if (v4 != 7 || v2)
                    {
                      if (v4 != 8 || v2)
                      {
                        if (v4 != 9 || v2)
                        {
                          if (v4 != 10 || v2)
                          {
                            if (v4 != 11 || v2)
                            {
                              if (v4 != 12 || v2)
                              {
                                if (v4 != 13 || v2)
                                {
                                  if (v4 != 14 || v2)
                                  {
                                    if (v4 != 15 || v2)
                                    {
                                      if (v4 != 16 || v2)
                                      {
                                        if (v4 != 17 || v2)
                                        {
                                          if (v4 != 18 || v2)
                                          {
                                            if (v4 != 19 || v2)
                                            {
                                              if (v4 != 20 || v2)
                                              {
                                                if (v4 != 21 || v2)
                                                {
                                                  if (v4 != 22 || v2)
                                                  {
                                                    if (v4 != 23 || v2)
                                                    {
                                                      if (v4 != 24 || v2)
                                                      {
                                                        if (v4 != 25 || v2)
                                                        {
                                                          if (v4 != 26 || v2)
                                                          {
                                                            if (v4 != 27 || v2)
                                                            {
                                                              if (v4 != 28 || v2)
                                                              {
                                                                if (v4 != 29 || v2)
                                                                {
                                                                  if (v4 != 30 || v2)
                                                                  {
                                                                    if (v4 != 31 || v2)
                                                                    {
                                                                      if (v4 != 32 || v2)
                                                                      {
                                                                        if (v4 != 33 || v2)
                                                                        {
                                                                          if (v4 != 34 || v2)
                                                                          {
                                                                            if (v4 != 35 || v2)
                                                                            {
                                                                              if (v4 != 36 || v2)
                                                                              {
                                                                                if (v4 != 37 || v2)
                                                                                {
                                                                                  if (v4 != 38 || v2)
                                                                                  {
                                                                                    if (v4 != 39 || v2)
                                                                                    {
                                                                                      if (v4 != 40 || v2)
                                                                                      {
                                                                                        if (v4 != 41 || v2)
                                                                                        {
                                                                                          if (v4 != 42 || v2)
                                                                                          {
                                                                                            if (v4 != 43 || v2)
                                                                                            {
                                                                                              if (v4 != 44 || v2)
                                                                                              {
                                                                                                if (v4 != 45 || v2)
                                                                                                {
                                                                                                  if (v2)
                                                                                                  {
                                                                                                    v3 = 0;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v3 = v4 == 46;
                                                                                                  }

                                                                                                  if (v3)
                                                                                                  {
                                                                                                    result = 70;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    result = 71;
                                                                                                  }
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  result = 69;
                                                                                                }
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                result = 68;
                                                                                              }
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              result = 67;
                                                                                            }
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            result = 66;
                                                                                          }
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          result = 65;
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        result = 64;
                                                                                      }
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      result = 63;
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    result = 62;
                                                                                  }
                                                                                }

                                                                                else
                                                                                {
                                                                                  result = 61;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                result = 60;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              result = 59;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            result = 55;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          result = 54;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        result = 53;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      result = 52;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    result = 50;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  result = 49;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                result = 48;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              result = 47;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            result = 46;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          result = 45;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        result = 44;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      result = 43;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    result = 42;
                                                  }
                                                }

                                                else
                                                {
                                                  result = 41;
                                                }
                                              }

                                              else
                                              {
                                                result = 40;
                                              }
                                            }

                                            else
                                            {
                                              result = 39;
                                            }
                                          }

                                          else
                                          {
                                            result = 38;
                                          }
                                        }

                                        else
                                        {
                                          result = 37;
                                        }
                                      }

                                      else
                                      {
                                        result = 36;
                                      }
                                    }

                                    else
                                    {
                                      result = 35;
                                    }
                                  }

                                  else
                                  {
                                    result = 34;
                                  }
                                }

                                else
                                {
                                  result = 32;
                                }
                              }

                              else
                              {
                                result = 31;
                              }
                            }

                            else
                            {
                              result = 30;
                            }
                          }

                          else
                          {
                            result = 29;
                          }
                        }

                        else
                        {
                          result = 28;
                        }
                      }

                      else
                      {
                        result = 27;
                      }
                    }

                    else
                    {
                      result = 26;
                    }
                  }

                  else
                  {
                    result = 25;
                  }
                }

                else
                {
                  result = 22;
                }
              }

              else
              {
                result = 21;
              }
            }

            else
            {
              result = 15;
            }
          }

          else
          {
            result = 14;
          }
        }

        else
        {
          result = 5;
        }
      }

      else
      {
        result = 4;
      }

      break;
    default:
      return result;
  }

  return result;
}

unint64_t MLS.MLSError.errorUserInfo.getter()
{
  sub_26BE2DC18(v0, v19);
  if (v20 > 4u)
  {
    if (v20 <= 6u)
    {
      if (v20 == 5)
      {
        v1 = v19[0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_26C011280;
        *(inited + 32) = sub_26C00A48C();
        v3 = inited + 32;
        *(inited + 40) = v10;
        v5 = &type metadata for MLS.InvalidLeafNodeError;
        goto LABEL_23;
      }

      if (v20 == 6)
      {
        v1 = v19[0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_26C011280;
        *(inited + 32) = sub_26C00A48C();
        v3 = inited + 32;
        *(inited + 40) = v8;
        v5 = &type metadata for MLS.InvalidMessageError;
        goto LABEL_23;
      }
    }

    else
    {
      switch(v20)
      {
        case 7u:
          v1 = v19[0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_26C011280;
          *(inited + 32) = sub_26C00A48C();
          v3 = inited + 32;
          *(inited + 40) = v14;
          v5 = &type metadata for MLS.InvalidCommitError;
          goto LABEL_23;
        case 8u:
          v1 = v19[0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_26C011280;
          *(inited + 32) = sub_26C00A48C();
          v3 = inited + 32;
          *(inited + 40) = v16;
          v5 = &type metadata for MLS.InvalidCapabilitiesError;
          goto LABEL_23;
        case 9u:
          v1 = v19[0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_26C011280;
          *(inited + 32) = sub_26C00A48C();
          v3 = inited + 32;
          *(inited + 40) = v6;
          v5 = &type metadata for MLS.RCSError;
          goto LABEL_23;
      }
    }

LABEL_26:
    v17 = sub_26C0055D4(MEMORY[0x277D84F90]);
    sub_26BE2DC9C(v19);
    return v17;
  }

  if (v20 <= 1u)
  {
    v1 = v19[0];
    if (v20)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26C011280;
      *(inited + 32) = sub_26C00A48C();
      v3 = inited + 32;
      *(inited + 40) = v7;
      v5 = &type metadata for MLS.MLSSerializationError;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26C011280;
      *(inited + 32) = sub_26C00A48C();
      v3 = inited + 32;
      *(inited + 40) = v9;
      v5 = &type metadata for MLS.MLSInternalError;
    }

    goto LABEL_23;
  }

  if (v20 != 2)
  {
    if (v20 == 3)
    {
      v1 = v19[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26C011280;
      *(inited + 32) = sub_26C00A48C();
      v3 = inited + 32;
      *(inited + 40) = v15;
      v5 = &type metadata for MLS.InvalidProposalListError;
      goto LABEL_23;
    }

    if (v20 == 4)
    {
      v1 = v19[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26C011280;
      *(inited + 32) = sub_26C00A48C();
      v3 = inited + 32;
      *(inited + 40) = v4;
      v5 = &type metadata for MLS.InvalidKeyPackageError;
LABEL_23:
      *(inited + 72) = v5;
      *(inited + 48) = v1;
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  v11 = v19[0];
  v12 = v19[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C011280;
  *(inited + 32) = sub_26C00A48C();
  v3 = inited + 32;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v13;
  *(inited + 48) = v11;
  *(inited + 56) = v12;
LABEL_24:
  v17 = sub_26C0055D4(inited);
  swift_setDeallocating();
  sub_26BE2E258(v3, &qword_28045E940, &unk_26C014270);
  return v17;
}

uint64_t sub_26BE86DA8(uint64_t a1)
{
  v2 = sub_26BE8BEDC();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26BE86DE4(uint64_t a1)
{
  v2 = sub_26BE8BEDC();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_26BE86E7C(uint64_t a1)
{
  v2 = sub_26BE8BE34();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t MLS.MLSInternalError.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  v3 = 34;
  switch(result)
  {
    case 1:
      goto LABEL_50;
    case 2:
      v2 = 1;
      goto LABEL_50;
    case 3:
      v2 = 2;
      goto LABEL_50;
    case 4:
      v2 = 3;
      goto LABEL_50;
    case 5:
      v2 = 4;
      goto LABEL_50;
    case 6:
      v2 = 5;
      goto LABEL_50;
    case 7:
      v2 = 6;
      goto LABEL_50;
    case 8:
      v2 = 7;
      goto LABEL_50;
    case 9:
      v2 = 8;
      goto LABEL_50;
    case 10:
      v2 = 9;
      goto LABEL_50;
    case 11:
      v2 = 10;
      goto LABEL_50;
    case 12:
      v2 = 11;
      goto LABEL_50;
    case 13:
      v2 = 12;
      goto LABEL_50;
    case 14:
      v2 = 13;
      goto LABEL_50;
    case 15:
      v2 = 14;
      goto LABEL_50;
    case 16:
      v2 = 15;
      goto LABEL_50;
    case 17:
      v2 = 16;
      goto LABEL_50;
    case 18:
      v2 = 17;
      goto LABEL_50;
    case 19:
      v2 = 18;
      goto LABEL_50;
    case 20:
      v2 = 19;
      goto LABEL_50;
    case 21:
      v2 = 20;
      goto LABEL_50;
    case 22:
      v2 = 21;
      goto LABEL_50;
    case 23:
      v2 = 22;
      goto LABEL_50;
    case 24:
      v2 = 23;
      goto LABEL_50;
    case 25:
      v2 = 24;
      goto LABEL_50;
    case 26:
      v2 = 25;
      goto LABEL_50;
    case 27:
      v2 = 26;
      goto LABEL_50;
    case 28:
      v2 = 27;
      goto LABEL_50;
    case 29:
      v2 = 28;
      goto LABEL_50;
    case 30:
      v2 = 29;
      goto LABEL_50;
    case 31:
      v2 = 30;
      goto LABEL_50;
    case 32:
      v2 = 31;
      goto LABEL_50;
    case 33:
      v2 = 32;
      goto LABEL_50;
    case 34:
      v2 = 33;
LABEL_50:
      v3 = v2;
      goto LABEL_51;
    case 35:
LABEL_51:
      *a2 = v3;
      break;
    case 36:
      *a2 = 35;
      break;
    case 37:
      *a2 = 36;
      break;
    case 38:
      *a2 = 37;
      break;
    case 39:
      *a2 = 38;
      break;
    case 40:
      *a2 = 39;
      break;
    case 41:
      *a2 = 40;
      break;
    case 42:
      *a2 = 41;
      break;
    case 43:
      *a2 = 42;
      break;
    case 44:
      *a2 = 43;
      break;
    case 45:
      *a2 = 44;
      break;
    case 46:
      *a2 = 45;
      break;
    case 47:
      *a2 = 46;
      break;
    case 48:
      *a2 = 47;
      break;
    case 49:
      *a2 = 48;
      break;
    case 50:
      *a2 = 49;
      break;
    case 51:
      *a2 = 50;
      break;
    case 52:
      *a2 = 51;
      break;
    default:
      *a2 = 52;
      break;
  }

  return result;
}

uint64_t sub_26BE87224(uint64_t a1)
{
  v2 = sub_26BE8BD8C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t MLS.InvalidProposalListError.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  v3 = 3;
  switch(result)
  {
    case 1:
      goto LABEL_11;
    case 2:
      v2 = 1;
      goto LABEL_11;
    case 3:
      v2 = 2;
LABEL_11:
      v3 = v2;
      goto LABEL_12;
    case 4:
LABEL_12:
      *a2 = v3;
      break;
    case 5:
      *a2 = 4;
      break;
    case 6:
      *a2 = 5;
      break;
    case 7:
      *a2 = 6;
      break;
    case 8:
      *a2 = 7;
      break;
    case 9:
      *a2 = 8;
      break;
    case 10:
      *a2 = 9;
      break;
    case 11:
      *a2 = 10;
      break;
    case 12:
      *a2 = 11;
      break;
    case 13:
      *a2 = 12;
      break;
    case 14:
      *a2 = 13;
      break;
    case 15:
      *a2 = 14;
      break;
    case 16:
      *a2 = 15;
      break;
    case 17:
      *a2 = 16;
      break;
    case 18:
      *a2 = 17;
      break;
    case 19:
      *a2 = 18;
      break;
    case 20:
      *a2 = 19;
      break;
    case 21:
      *a2 = 20;
      break;
    default:
      *a2 = 21;
      break;
  }

  return result;
}

uint64_t sub_26BE87454(uint64_t a1)
{
  v2 = sub_26BE8BCE4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26BE874F4(uint64_t a1)
{
  v2 = sub_26BE8BC3C();

  return MEMORY[0x28211F4B8](a1, v2);
}

unint64_t MLS.InvalidLeafNodeError.init(rawValue:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x40302010005uLL >> (8 * result);
  if (result >= 6)
  {
    LOBYTE(v2) = 5;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_26BE875C4(uint64_t a1)
{
  v2 = sub_26BE8BB94();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t MLS.InvalidMessageError.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result - 1;
  if ((result - 1) >= 0xD)
  {
    v2 = 13;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_26BE87684(uint64_t a1)
{
  v2 = sub_26BE8BAEC();

  return MEMORY[0x28211F4B8](a1, v2);
}

unint64_t MLS.InvalidCommitError.init(rawValue:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x302010004uLL >> (8 * result);
  if (result >= 5)
  {
    LOBYTE(v2) = 4;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_26BE87754(uint64_t a1)
{
  v2 = sub_26BE8BA44();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26BE877F4(uint64_t a1)
{
  v2 = sub_26BE8B99C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t MLS.RCSError.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result - 1;
  if ((result - 1) >= 0xE)
  {
    v2 = 14;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_26BE878B4(uint64_t a1)
{
  v2 = sub_26BE8B8A0();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26BE8791C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void))
{
  v6 = a3(a1, a2);
  v7 = a4();
  v8 = sub_26BE8B948();

  return MEMORY[0x28211F498](a1, v6, v7, v8);
}

unint64_t MLS.IdentityError.errorUserInfo.getter()
{
  v1 = v0;
  v2 = sub_26C00921C();
  v56[0] = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v56 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = v56 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v56 - v15;
  v17 = type metadata accessor for MLS.IdentityError(0);
  MEMORY[0x28223BE20](v17);
  v19 = (v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BE8A684(v1, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v32 = *v19;
        v33 = v19[1];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
        inited = swift_initStackObject();
        *(inited + 32) = 0xD000000000000010;
        v35 = MEMORY[0x277D83B88];
        *(inited + 16) = xmmword_26C0125B0;
        *(inited + 40) = 0x800000026C02BC70;
        *(inited + 48) = v32;
        *(inited + 72) = v35;
        *(inited + 80) = 0x726F646E65566970;
        *(inited + 120) = v35;
        *(inited + 88) = 0xEA00000000006449;
        *(inited + 96) = v33;
        v36 = sub_26C0055D4(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E940, &unk_26C014270);
LABEL_25:
        swift_arrayDestroy();
        return v36;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v21 = *v19;
        v22 = v19[1];
        v24 = v19[2];
        v23 = v19[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
        v25 = swift_initStackObject();
        v26 = v25;
        *(v25 + 16) = xmmword_26C0125B0;
        *(v25 + 32) = 0x4B676E696E676973;
        v27 = MEMORY[0x277CC9318];
        *(v25 + 40) = 0xEA00000000007965;
        *(v25 + 48) = v21;
        *(v25 + 56) = v22;
        *(v25 + 72) = v27;
        *(v25 + 80) = 0x79654B74726563;
        *(v25 + 88) = 0xE700000000000000;
        if (v23 >> 60 == 15)
        {
          *(v25 + 120) = MEMORY[0x277D837D0];
          *(v25 + 96) = 7104878;
          *(v25 + 104) = 0xE300000000000000;
        }

        else
        {
          v58 = v27;
          *&v57 = v24;
          *(&v57 + 1) = v23;
          sub_26BE5B0F0(&v57, (v25 + 96));
        }

        v36 = sub_26C0055D4(v26);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E940, &unk_26C014270);
        goto LABEL_25;
      }

      goto LABEL_20;
    }

LABEL_18:
    v39 = *v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
    v40 = swift_initStackObject();
    *(v40 + 16) = xmmword_26C011280;
    *(v40 + 32) = 0x737574617453534FLL;
    v30 = v40 + 32;
    *(v40 + 40) = 0xE800000000000000;
    *(v40 + 72) = MEMORY[0x277D849A8];
    *(v40 + 48) = v39;
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_26BE8A790(v19, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
      v37 = swift_initStackObject();
      *(v37 + 16) = xmmword_26C011280;
      *(v37 + 32) = 0x6D617473656D6974;
      *(v37 + 40) = 0xE900000000000070;
      sub_26BE2E1F0(v16, v14, &qword_28045E4A8, &unk_26C00ECB0);
      v38 = v56[0];
      if ((*(v56[0] + 48))(v14, 1, v2) == 1)
      {
        sub_26BE2E258(v14, &qword_28045E4A8, &unk_26C00ECB0);
        *(v37 + 72) = MEMORY[0x277D837D0];
        *(v37 + 48) = 7104878;
        *(v37 + 56) = 0xE300000000000000;
      }

      else
      {
        v58 = v2;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v57);
        (*(v38 + 32))(boxed_opaque_existential_1, v14, v2);
        sub_26BE5B0F0(&v57, (v37 + 48));
      }

      v36 = sub_26C0055D4(v37);
      swift_setDeallocating();
      sub_26BE2E258(v37 + 32, &qword_28045E940, &unk_26C014270);
      v52 = &qword_28045E4A8;
      v53 = &unk_26C00ECB0;
      v54 = v16;
      goto LABEL_29;
    }

    v28 = *v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
    v29 = swift_initStackObject();
    *(v29 + 16) = xmmword_26C011280;
    *(v29 + 32) = sub_26C00A48C();
    v30 = v29 + 32;
    *(v29 + 40) = v31;
    if (v28)
    {
      v58 = sub_26BE8A744();
      *&v57 = v28;
      sub_26BE5B0F0(&v57, (v29 + 48));
    }

    else
    {
      *(v29 + 72) = MEMORY[0x277D837D0];
      *(v29 + 48) = 7104878;
      *(v29 + 56) = 0xE300000000000000;
    }

    v40 = v29;
LABEL_28:
    v36 = sub_26C0055D4(v40);
    swift_setDeallocating();
    v52 = &qword_28045E940;
    v53 = &unk_26C014270;
    v54 = v30;
LABEL_29:
    sub_26BE2E258(v54, v52, v53);
    return v36;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload != 7)
    {
LABEL_20:
      v36 = sub_26C0055D4(MEMORY[0x277D84F90]);
      sub_26BE8A6E8(v19);
      return v36;
    }

    goto LABEL_18;
  }

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EAB0, &qword_26C014280);
  v42 = *(v41 + 48);
  v43 = *(v41 + 64);
  v44 = *(v56[0] + 32);
  v44(v10, v19, v2);
  v44(v8, (v19 + v42), v2);
  v44(v5, (v19 + v43), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
  v45 = swift_initStackObject();
  *(v45 + 16) = xmmword_26C0125A0;
  *(v45 + 32) = 0x6D617473656D6974;
  *(v45 + 40) = 0xE900000000000070;
  *(v45 + 72) = v2;
  v46 = __swift_allocate_boxed_opaque_existential_1((v45 + 48));
  v47 = *(v56[0] + 16);
  v47(v46, v10, v2);
  *(v45 + 80) = 0x726F666542746F6ELL;
  *(v45 + 88) = 0xE900000000000065;
  *(v45 + 120) = v2;
  v48 = __swift_allocate_boxed_opaque_existential_1((v45 + 96));
  v47(v48, v8, v2);
  *(v45 + 128) = 0x7265746641746F6ELL;
  *(v45 + 136) = 0xE800000000000000;
  *(v45 + 168) = v2;
  v49 = __swift_allocate_boxed_opaque_existential_1((v45 + 144));
  v47(v49, v5, v2);
  v36 = sub_26C0055D4(v45);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E940, &unk_26C014270);
  swift_arrayDestroy();
  v50 = *(v56[0] + 8);
  v50(v5, v2);
  v50(v8, v2);
  v50(v10, v2);
  return v36;
}

uint64_t MLS.IdentityError.errorCode.getter()
{
  v1 = type metadata accessor for MLS.IdentityError(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BE8A684(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 1;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_26BE8A6E8(v3);
      result = 9;
      break;
    case 2:
      result = 10;
      break;
    case 3:
      result = 11;
      break;
    case 4:
      sub_26BE8A6E8(v3);
      result = 12;
      break;
    case 5:
      sub_26BE8A6E8(v3);
      result = 13;
      break;
    case 6:
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EAB0, &qword_26C014280);
      v7 = *(v6 + 48);
      v8 = *(v6 + 64);
      v9 = sub_26C00921C();
      v10 = *(*(v9 - 8) + 8);
      v10(&v3[v8], v9);
      v10(&v3[v7], v9);
      v10(v3, v9);
      result = 21;
      break;
    case 7:
      result = 25;
      break;
    case 8:
      result = 26;
      break;
    case 9:
      result = 27;
      break;
    case 10:
      return result;
    case 11:
      result = 2;
      break;
    case 12:
      result = 3;
      break;
    case 13:
      result = 5;
      break;
    case 14:
      result = 6;
      break;
    case 15:
      result = 7;
      break;
    case 16:
      result = 14;
      break;
    case 17:
      result = 15;
      break;
    case 18:
      result = 16;
      break;
    case 19:
      result = 17;
      break;
    case 20:
      result = 18;
      break;
    case 21:
      result = 19;
      break;
    case 22:
      result = 20;
      break;
    case 23:
      result = 22;
      break;
    case 24:
      result = 23;
      break;
    case 25:
      result = 24;
      break;
    case 26:
      result = 28;
      break;
    default:
      result = 4;
      break;
  }

  return result;
}

uint64_t sub_26BE884C8(uint64_t a1)
{
  v2 = sub_26BE8BF30(&qword_28045EB88, type metadata accessor for MLS.IdentityError, &protocol conformance descriptor for MLS.IdentityError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26BE88534(uint64_t a1)
{
  v2 = sub_26BE8BF30(&qword_28045EB88, type metadata accessor for MLS.IdentityError, &protocol conformance descriptor for MLS.IdentityError);

  return MEMORY[0x28211F4A8](a1, v2);
}

BOOL _s8SwiftMLS0B0O8MLSErrorO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_26BE2DC18(a1, &v48);
  sub_26BE2DC18(a2, &v63);
  switch(v62)
  {
    case 1:
      sub_26BE2DC18(&v48, &v42);
      if (v67 == 1)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    case 2:
      sub_26BE2DC18(&v48, &v42);
      v3 = *(&v42 + 1);
      if (v67 != 2)
      {
        goto LABEL_12;
      }

      goto LABEL_5;
    case 3:
      sub_26BE2DC18(&v48, &v42);
      if (v67 != 3)
      {
        goto LABEL_13;
      }

      goto LABEL_61;
    case 4:
      sub_26BE2DC18(&v48, &v42);
      if (v67 != 4)
      {
        goto LABEL_13;
      }

      goto LABEL_61;
    case 5:
      sub_26BE2DC18(&v48, &v42);
      if (v67 != 5)
      {
        goto LABEL_13;
      }

      goto LABEL_61;
    case 6:
      sub_26BE2DC18(&v48, &v42);
      if (v67 != 6)
      {
        goto LABEL_13;
      }

      goto LABEL_61;
    case 7:
      sub_26BE2DC18(&v48, &v42);
      if (v67 != 7)
      {
        goto LABEL_13;
      }

      goto LABEL_61;
    case 8:
      sub_26BE2DC18(&v48, &v42);
      if (v67 == 8)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    case 9:
      sub_26BE2DC18(&v48, &v42);
      if (v67 != 9)
      {
        goto LABEL_13;
      }

      goto LABEL_61;
    case 10:
      sub_26BE2DC18(&v48, &v42);
      if (v67 == 10)
      {
        goto LABEL_58;
      }

      goto LABEL_13;
    case 11:
      sub_26BE2DC18(&v48, &v42);
      if (v67 != 11)
      {
        goto LABEL_13;
      }

      if (v42 != v63)
      {
        goto LABEL_137;
      }

      goto LABEL_52;
    case 12:
      sub_26BE2DC18(&v48, &v42);
      if (v67 != 12)
      {
        goto LABEL_13;
      }

      goto LABEL_61;
    case 13:
      sub_26BE2DC18(&v48, &v42);
      if (v67 != 13)
      {
        goto LABEL_13;
      }

      if (v42 != v63)
      {
        goto LABEL_137;
      }

LABEL_52:
      v11 = DWORD1(v42);
      v12 = DWORD1(v63);
      goto LABEL_62;
    case 14:
      sub_26BE2DC18(&v48, &v42);
      v3 = *(&v42 + 1);
      if (v67 != 14)
      {
        goto LABEL_12;
      }

      goto LABEL_5;
    case 15:
      sub_26BE2DC18(&v48, &v42);
      v3 = *(&v42 + 1);
      if (v67 != 15)
      {
        goto LABEL_12;
      }

      goto LABEL_5;
    case 16:
      sub_26BE2DC18(&v48, &v42);
      v3 = *(&v42 + 1);
      if (v67 != 16)
      {
LABEL_12:

        goto LABEL_13;
      }

LABEL_5:
      if (v42 == v63 && v3 == *(&v63 + 1))
      {

        goto LABEL_15;
      }

      v5 = sub_26C00AF2C();

      if (v5)
      {
        goto LABEL_15;
      }

      goto LABEL_137;
    case 17:
      sub_26BE2DC18(&v48, &v42);
      if (v67 != 17)
      {
        goto LABEL_13;
      }

      if (v42 != v63)
      {
        goto LABEL_137;
      }

      v7 = BYTE4(v63);
      if (BYTE4(v42))
      {
        goto LABEL_70;
      }

      v8 = WORD1(v42) == WORD1(v63);
      goto LABEL_114;
    case 18:
      sub_26BE2DC18(&v48, &v42);
      if (v67 != 18)
      {
        goto LABEL_13;
      }

LABEL_58:
      if (v42 != v63)
      {
        goto LABEL_137;
      }

      v11 = WORD1(v42);
      v12 = WORD1(v63);
LABEL_62:
      v13 = v11 == v12;
      sub_26BE2DC9C(&v48);
      return v13;
    case 19:
      sub_26BE2DC18(&v48, &v42);
      if (v67 != 19)
      {
        goto LABEL_13;
      }

      if (v42 != v63)
      {
        goto LABEL_137;
      }

      v7 = v64.u8[0];
      if (v43)
      {
LABEL_70:
        if (v7)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v8 = *(&v42 + 1) == *(&v63 + 1);
LABEL_114:
        if (!v8)
        {
          LOBYTE(v7) = 1;
        }

        if ((v7 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_137;
    case 20:
      sub_26BE2DC18(&v48, &v42);
      if (v67 != 20)
      {
        goto LABEL_13;
      }

      v9 = BYTE4(v63);
      if (BYTE4(v42))
      {
        if (!BYTE4(v63))
        {
          goto LABEL_137;
        }
      }

      else
      {
        if (v42 != v63)
        {
          v9 = 1;
        }

        if (v9)
        {
          goto LABEL_137;
        }
      }

      if (BYTE12(v42))
      {
        if (!BYTE12(v63))
        {
          goto LABEL_137;
        }
      }

      else
      {
        if (DWORD2(v42) == DWORD2(v63))
        {
          v17 = BYTE12(v63);
        }

        else
        {
          v17 = 1;
        }

        if (v17)
        {
          goto LABEL_137;
        }
      }

      if (BYTE13(v42) == 2)
      {
        if (BYTE13(v63) == 2)
        {
          goto LABEL_15;
        }
      }

      else if (BYTE13(v63) != 2 && ((BYTE13(v63) ^ BYTE13(v42)) & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_137;
    case 21:
      sub_26BE2DC18(&v48, &v42);
      if (v67 != 21)
      {
        sub_26BE2E258(v46, &qword_28045EAA8, &unk_26C014260);
        sub_26BE2E258(&v42, &qword_28045EAA8, &unk_26C014260);
        goto LABEL_13;
      }

      v32[0] = v46[0];
      v32[1] = v46[1];
      v32[2] = v46[2];
      v33 = v47;
      v28 = *&v66[8];
      v29 = *&v66[24];
      v30 = *&v66[40];
      v31 = *&v66[56];
      v34 = v42;
      v35 = v43;
      v36 = v44;
      v38 = v63;
      v39 = v64;
      v40 = v65;
      v37 = v45;
      v41 = *v66;
      if (!*(&v44 + 1))
      {
        if (!v40.i64[1])
        {
          sub_26BE2E258(&v34, &qword_28045EAA8, &unk_26C014260);
          goto LABEL_96;
        }

LABEL_119:
        sub_26BE2E258(&v34, &qword_28045EC50, &unk_26C015A70);
LABEL_120:
        sub_26BE2E258(&v28, &qword_28045EAA8, &unk_26C014260);
        v18 = v32;
        v19 = &qword_28045EAA8;
        v20 = &unk_26C014260;
        goto LABEL_136;
      }

      sub_26BE2E1F0(&v34, v27, &qword_28045EAA8, &unk_26C014260);
      if (!v40.i64[1])
      {
        sub_26BE2DAF8(v27);
        goto LABEL_119;
      }

      v23 = v38;
      v24 = v39;
      v25 = v40;
      v26 = v41;
      v10 = _s8SwiftMLS0B0O5GroupO6MemberV2eeoiySbAG_AGtFZ_0(v27, &v23);
      sub_26BE2DAF8(&v23);
      sub_26BE2DAF8(v27);
      sub_26BE2E258(&v34, &qword_28045EAA8, &unk_26C014260);
      if ((v10 & 1) == 0)
      {
        goto LABEL_120;
      }

LABEL_96:
      sub_26BE2E1F0(v32, &v34, &qword_28045EAA8, &unk_26C014260);
      sub_26BE2E1F0(&v28, &v38, &qword_28045EAA8, &unk_26C014260);
      if (*(&v36 + 1))
      {
        sub_26BE2E1F0(&v34, v27, &qword_28045EAA8, &unk_26C014260);
        if (v40.i64[1])
        {
          v23 = v38;
          v24 = v39;
          v25 = v40;
          v26 = v41;
          v14 = _s8SwiftMLS0B0O5GroupO6MemberV2eeoiySbAG_AGtFZ_0(v27, &v23);
          sub_26BE2DAF8(&v23);
          sub_26BE2E258(&v28, &qword_28045EAA8, &unk_26C014260);
          sub_26BE2E258(v32, &qword_28045EAA8, &unk_26C014260);
          sub_26BE2DAF8(v27);
          goto LABEL_99;
        }

        sub_26BE2E258(&v28, &qword_28045EAA8, &unk_26C014260);
        sub_26BE2E258(v32, &qword_28045EAA8, &unk_26C014260);
        v21 = v27;
LABEL_134:
        sub_26BE2DAF8(v21);
        goto LABEL_135;
      }

      sub_26BE2E258(&v28, &qword_28045EAA8, &unk_26C014260);
      sub_26BE2E258(v32, &qword_28045EAA8, &unk_26C014260);
LABEL_128:
      if (!v40.i64[1])
      {
        sub_26BE2E258(&v34, &qword_28045EAA8, &unk_26C014260);
LABEL_15:
        sub_26BE2DC9C(&v48);
        return 1;
      }

LABEL_135:
      v19 = &qword_28045EC50;
      v20 = &unk_26C015A70;
      v18 = &v34;
LABEL_136:
      sub_26BE2E258(v18, v19, v20);
LABEL_137:
      sub_26BE2DC9C(&v48);
      return 0;
    case 22:
      sub_26BE2DC18(&v48, &v42);
      if (v67 != 22)
      {
        sub_26BE2E258(&v42, &qword_28045EAA8, &unk_26C014260);
        goto LABEL_13;
      }

      v34 = v42;
      v35 = v43;
      v36 = v44;
      v38 = v63;
      v39 = v64;
      v40 = v65;
      v37 = v45;
      v41 = *v66;
      if (!*(&v44 + 1))
      {
        goto LABEL_128;
      }

      sub_26BE2E1F0(&v34, v32, &qword_28045EAA8, &unk_26C014260);
      if (!v40.i64[1])
      {
        v21 = v32;
        goto LABEL_134;
      }

      v28 = v38;
      v29 = v39;
      v30 = v40;
      v31 = v41;
      v14 = _s8SwiftMLS0B0O5GroupO6MemberV2eeoiySbAG_AGtFZ_0(v32, &v28);
      sub_26BE2DAF8(&v28);
      sub_26BE2DAF8(v32);
LABEL_99:
      sub_26BE2E258(&v34, &qword_28045EAA8, &unk_26C014260);
      if ((v14 & 1) == 0)
      {
        goto LABEL_137;
      }

      goto LABEL_15;
    case 23:
      if (v61 | v48 | v60 | v59 | v58 | v57 | v56 | v55 | v54 | v53 | v52 | v51 | v50 | v49)
      {
        v15 = v60 | v61 | v59 | v58 | v57 | v56 | v55 | v54 | v53 | v52 | v51 | v50 | v49;
        if (v48 != 1 || v15)
        {
          if (v48 != 2 || v15)
          {
            if (v48 != 3 || v15)
            {
              if (v48 != 4 || v15)
              {
                if (v48 != 5 || v15)
                {
                  if (v48 != 6 || v15)
                  {
                    if (v48 != 7 || v15)
                    {
                      if (v48 != 8 || v15)
                      {
                        if (v48 != 9 || v15)
                        {
                          if (v48 != 10 || v15)
                          {
                            if (v48 != 11 || v15)
                            {
                              if (v48 != 12 || v15)
                              {
                                if (v48 != 13 || v15)
                                {
                                  if (v48 != 14 || v15)
                                  {
                                    if (v48 != 15 || v15)
                                    {
                                      if (v48 != 16 || v15)
                                      {
                                        if (v48 != 17 || v15)
                                        {
                                          if (v48 != 18 || v15)
                                          {
                                            if (v48 != 19 || v15)
                                            {
                                              if (v48 != 20 || v15)
                                              {
                                                if (v48 != 21 || v15)
                                                {
                                                  if (v48 != 22 || v15)
                                                  {
                                                    if (v48 != 23 || v15)
                                                    {
                                                      if (v48 != 24 || v15)
                                                      {
                                                        if (v48 != 25 || v15)
                                                        {
                                                          if (v48 != 26 || v15)
                                                          {
                                                            if (v48 != 27 || v15)
                                                            {
                                                              if (v48 != 28 || v15)
                                                              {
                                                                if (v48 != 29 || v15)
                                                                {
                                                                  if (v48 != 30 || v15)
                                                                  {
                                                                    if (v48 != 31 || v15)
                                                                    {
                                                                      if (v48 != 32 || v15)
                                                                      {
                                                                        if (v48 != 33 || v15)
                                                                        {
                                                                          if (v48 != 34 || v15)
                                                                          {
                                                                            if (v48 != 35 || v15)
                                                                            {
                                                                              if (v48 != 36 || v15)
                                                                              {
                                                                                if (v48 != 37 || v15)
                                                                                {
                                                                                  if (v48 != 38 || v15)
                                                                                  {
                                                                                    if (v48 != 39 || v15)
                                                                                    {
                                                                                      if (v48 != 40 || v15)
                                                                                      {
                                                                                        if (v48 != 41 || v15)
                                                                                        {
                                                                                          if (v48 != 42 || v15)
                                                                                          {
                                                                                            if (v48 != 43 || v15)
                                                                                            {
                                                                                              if (v48 != 44 || v15)
                                                                                              {
                                                                                                if (v48 != 45 || v15)
                                                                                                {
                                                                                                  if (v48 != 46 || v15)
                                                                                                  {
                                                                                                    if (v67 != 23 || v63 != 47)
                                                                                                    {
                                                                                                      goto LABEL_13;
                                                                                                    }
                                                                                                  }

                                                                                                  else if (v67 != 23 || v63 != 46)
                                                                                                  {
                                                                                                    goto LABEL_13;
                                                                                                  }
                                                                                                }

                                                                                                else if (v67 != 23 || v63 != 45)
                                                                                                {
                                                                                                  goto LABEL_13;
                                                                                                }
                                                                                              }

                                                                                              else if (v67 != 23 || v63 != 44)
                                                                                              {
                                                                                                goto LABEL_13;
                                                                                              }
                                                                                            }

                                                                                            else if (v67 != 23 || v63 != 43)
                                                                                            {
                                                                                              goto LABEL_13;
                                                                                            }
                                                                                          }

                                                                                          else if (v67 != 23 || v63 != 42)
                                                                                          {
                                                                                            goto LABEL_13;
                                                                                          }
                                                                                        }

                                                                                        else if (v67 != 23 || v63 != 41)
                                                                                        {
                                                                                          goto LABEL_13;
                                                                                        }
                                                                                      }

                                                                                      else if (v67 != 23 || v63 != 40)
                                                                                      {
                                                                                        goto LABEL_13;
                                                                                      }
                                                                                    }

                                                                                    else if (v67 != 23 || v63 != 39)
                                                                                    {
                                                                                      goto LABEL_13;
                                                                                    }
                                                                                  }

                                                                                  else if (v67 != 23 || v63 != 38)
                                                                                  {
                                                                                    goto LABEL_13;
                                                                                  }
                                                                                }

                                                                                else if (v67 != 23 || v63 != 37)
                                                                                {
                                                                                  goto LABEL_13;
                                                                                }
                                                                              }

                                                                              else if (v67 != 23 || v63 != 36)
                                                                              {
                                                                                goto LABEL_13;
                                                                              }
                                                                            }

                                                                            else if (v67 != 23 || v63 != 35)
                                                                            {
                                                                              goto LABEL_13;
                                                                            }
                                                                          }

                                                                          else if (v67 != 23 || v63 != 34)
                                                                          {
                                                                            goto LABEL_13;
                                                                          }
                                                                        }

                                                                        else if (v67 != 23 || v63 != 33)
                                                                        {
                                                                          goto LABEL_13;
                                                                        }
                                                                      }

                                                                      else if (v67 != 23 || v63 != 32)
                                                                      {
                                                                        goto LABEL_13;
                                                                      }
                                                                    }

                                                                    else if (v67 != 23 || v63 != 31)
                                                                    {
                                                                      goto LABEL_13;
                                                                    }
                                                                  }

                                                                  else if (v67 != 23 || v63 != 30)
                                                                  {
                                                                    goto LABEL_13;
                                                                  }
                                                                }

                                                                else if (v67 != 23 || v63 != 29)
                                                                {
                                                                  goto LABEL_13;
                                                                }
                                                              }

                                                              else if (v67 != 23 || v63 != 28)
                                                              {
                                                                goto LABEL_13;
                                                              }
                                                            }

                                                            else if (v67 != 23 || v63 != 27)
                                                            {
                                                              goto LABEL_13;
                                                            }
                                                          }

                                                          else if (v67 != 23 || v63 != 26)
                                                          {
                                                            goto LABEL_13;
                                                          }
                                                        }

                                                        else if (v67 != 23 || v63 != 25)
                                                        {
                                                          goto LABEL_13;
                                                        }
                                                      }

                                                      else if (v67 != 23 || v63 != 24)
                                                      {
                                                        goto LABEL_13;
                                                      }
                                                    }

                                                    else if (v67 != 23 || v63 != 23)
                                                    {
                                                      goto LABEL_13;
                                                    }
                                                  }

                                                  else if (v67 != 23 || v63 != 22)
                                                  {
                                                    goto LABEL_13;
                                                  }
                                                }

                                                else if (v67 != 23 || v63 != 21)
                                                {
                                                  goto LABEL_13;
                                                }
                                              }

                                              else if (v67 != 23 || v63 != 20)
                                              {
                                                goto LABEL_13;
                                              }
                                            }

                                            else if (v67 != 23 || v63 != 19)
                                            {
                                              goto LABEL_13;
                                            }
                                          }

                                          else if (v67 != 23 || v63 != 18)
                                          {
                                            goto LABEL_13;
                                          }
                                        }

                                        else if (v67 != 23 || v63 != 17)
                                        {
                                          goto LABEL_13;
                                        }
                                      }

                                      else if (v67 != 23 || v63 != 16)
                                      {
                                        goto LABEL_13;
                                      }
                                    }

                                    else if (v67 != 23 || v63 != 15)
                                    {
                                      goto LABEL_13;
                                    }
                                  }

                                  else if (v67 != 23 || v63 != 14)
                                  {
                                    goto LABEL_13;
                                  }
                                }

                                else if (v67 != 23 || v63 != 13)
                                {
                                  goto LABEL_13;
                                }
                              }

                              else if (v67 != 23 || v63 != 12)
                              {
                                goto LABEL_13;
                              }
                            }

                            else if (v67 != 23 || v63 != 11)
                            {
                              goto LABEL_13;
                            }
                          }

                          else if (v67 != 23 || v63 != 10)
                          {
                            goto LABEL_13;
                          }
                        }

                        else if (v67 != 23 || v63 != 9)
                        {
                          goto LABEL_13;
                        }
                      }

                      else if (v67 != 23 || v63 != 8)
                      {
                        goto LABEL_13;
                      }
                    }

                    else if (v67 != 23 || v63 != 7)
                    {
                      goto LABEL_13;
                    }
                  }

                  else if (v67 != 23 || v63 != 6)
                  {
                    goto LABEL_13;
                  }
                }

                else if (v67 != 23 || v63 != 5)
                {
                  goto LABEL_13;
                }
              }

              else if (v67 != 23 || v63 != 4)
              {
                goto LABEL_13;
              }
            }

            else if (v67 != 23 || v63 != 3)
            {
              goto LABEL_13;
            }
          }

          else if (v67 != 23 || v63 != 2)
          {
            goto LABEL_13;
          }
        }

        else if (v67 != 23 || v63 != 1)
        {
          goto LABEL_13;
        }

        v22 = vorrq_s8(vorrq_s8(vorrq_s8(*v66, *&v66[32]), vorrq_s8(*&v66[16], *&v66[48])), vorrq_s8(v64, v65));
        if (!(*&vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL)) | *(&v63 + 1)))
        {
          goto LABEL_15;
        }
      }

      else if (v67 == 23)
      {
        v16 = vorrq_s8(vorrq_s8(vorrq_s8(*v66, *&v66[32]), vorrq_s8(*&v66[16], *&v66[48])), vorrq_s8(v64, v65));
        if (!(*&vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL)) | *(&v63 + 1) | v63))
        {
          goto LABEL_15;
        }
      }

LABEL_13:
      sub_26BE2E258(&v48, &qword_28045EC48, &qword_26C015A68);
      return 0;
    default:
      sub_26BE2DC18(&v48, &v42);
      if (v67)
      {
        goto LABEL_13;
      }

LABEL_61:
      v11 = v42;
      v12 = v63;
      goto LABEL_62;
  }
}

uint64_t _s8SwiftMLS0B0O13IdentityErrorO2eeoiySbAE_AEtFZ_0(uint64_t *a1, char *a2)
{
  v140 = a1;
  v141 = a2;
  v2 = sub_26C00921C();
  v138 = *(v2 - 8);
  v139 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v132 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v130 = &v126 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v136 = &v126 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v137 = &v126 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v131 = &v126 - v12;
  MEMORY[0x28223BE20](v11);
  v126 = &v126 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  MEMORY[0x28223BE20](v14 - 8);
  v127 = &v126 - v15;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EC30, &qword_26C015A58);
  MEMORY[0x28223BE20](v128);
  v129 = &v126 - v16;
  v17 = type metadata accessor for MLS.IdentityError(0);
  v18 = MEMORY[0x28223BE20](v17);
  v134 = (&v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v18);
  v133 = (&v126 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = (&v126 - v23);
  v25 = MEMORY[0x28223BE20](v22);
  v135 = &v126 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = (&v126 - v28);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v126 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = (&v126 - v34);
  v36 = MEMORY[0x28223BE20](v33);
  v38 = (&v126 - v37);
  v39 = MEMORY[0x28223BE20](v36);
  v41 = (&v126 - v40);
  MEMORY[0x28223BE20](v39);
  v43 = (&v126 - v42);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EC38, &qword_26C015A60);
  v45 = MEMORY[0x28223BE20](v44 - 8);
  v47 = &v126 - v46;
  v48 = (&v126 + *(v45 + 56) - v46);
  sub_26BE8A684(v140, &v126 - v46);
  v140 = v48;
  sub_26BE8A684(v141, v48);
  v141 = v47;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26BE8A684(v141, v41);
      v70 = *v41;
      v69 = v41[1];
      v72 = v41[2];
      v71 = v41[3];
      v73 = v140;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_26BE136AC(v72, v71);
        sub_26BE00258(v70, v69);
        v49 = v141;
        goto LABEL_77;
      }

      v75 = *v73;
      v74 = v73[1];
      v77 = v73[2];
      v76 = v73[3];
      if (sub_26BE02DEC(v70, v69, v75, v74))
      {
        if (v71 >> 60 == 15)
        {
          sub_26BE00258(v75, v74);
          sub_26BE00258(v70, v69);
          if (v76 >> 60 == 15)
          {
            sub_26BE136AC(v72, v71);
LABEL_99:
            v115 = v141;
            goto LABEL_72;
          }

          goto LABEL_91;
        }

        if (v76 >> 60 == 15)
        {
          sub_26BE00258(v75, v74);
          sub_26BE00258(v70, v69);
LABEL_91:
          sub_26BE136AC(v72, v71);
          sub_26BE136AC(v77, v76);
          goto LABEL_92;
        }

        sub_26BE2E408(v72, v71);
        sub_26BE2E408(v77, v76);
        v125 = sub_26BE02DEC(v72, v71, v77, v76);
        sub_26BE136AC(v77, v76);
        sub_26BE136AC(v77, v76);
        sub_26BE136AC(v72, v71);
        sub_26BE00258(v75, v74);
        sub_26BE00258(v70, v69);
        sub_26BE136AC(v72, v71);
        if (v125)
        {
          goto LABEL_99;
        }
      }

      else
      {
        sub_26BE136AC(v77, v76);
        sub_26BE136AC(v72, v71);
        sub_26BE00258(v75, v74);
        sub_26BE00258(v70, v69);
      }

LABEL_92:
      sub_26BE8A6E8(v141);
      goto LABEL_78;
    case 2u:
      v49 = v141;
      sub_26BE8A684(v141, v38);
      v64 = v140;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_77;
      }

      v67 = *v38;
      goto LABEL_59;
    case 3u:
      v49 = v141;
      sub_26BE8A684(v141, v35);
      v64 = v140;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_77;
      }

      v67 = *v35;
      goto LABEL_59;
    case 4u:
      v49 = v141;
      sub_26BE8A684(v141, v32);
      v56 = v140;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_26BE2E258(v32, &qword_28045E4A8, &unk_26C00ECB0);
        goto LABEL_77;
      }

      v57 = v129;
      v58 = *(v128 + 48);
      sub_26BE8A790(v32, v129);
      sub_26BE8A790(v56, v57 + v58);
      v60 = v138;
      v59 = v139;
      v61 = v138[6];
      if (v61(v57, 1, v139) == 1)
      {
        if (v61(v57 + v58, 1, v59) == 1)
        {
          sub_26BE2E258(v57, &qword_28045E4A8, &unk_26C00ECB0);
          goto LABEL_71;
        }

        goto LABEL_82;
      }

      v120 = v127;
      sub_26BE2E1F0(v57, v127, &qword_28045E4A8, &unk_26C00ECB0);
      if (v61(v57 + v58, 1, v59) == 1)
      {
        (v60[1])(v120, v59);
LABEL_82:
        sub_26BE2E258(v57, &qword_28045EC30, &qword_26C015A58);
        goto LABEL_97;
      }

      v122 = v126;
      (v60[4])(v126, v57 + v58, v59);
      sub_26BE8BF30(&qword_28045EC40, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v123 = sub_26C00A43C();
      v124 = v60[1];
      v124(v122, v59);
      v124(v120, v59);
      sub_26BE2E258(v57, &qword_28045E4A8, &unk_26C00ECB0);
      if (v123)
      {
LABEL_71:
        v115 = v49;
LABEL_72:
        sub_26BE8A6E8(v115);
        v108 = 1;
        return v108 & 1;
      }

      goto LABEL_97;
    case 5u:
      v49 = v141;
      sub_26BE8A684(v141, v29);
      v80 = *v29;
      v81 = v140;
      if (swift_getEnumCaseMultiPayload() != 5)
      {

        goto LABEL_77;
      }

      v82 = *v81;
      if (v80)
      {
        if (v82)
        {
          sub_26BE8A744();
          v83 = v80;
          v84 = sub_26C00AA9C();

          if (v84)
          {
            goto LABEL_71;
          }

LABEL_97:
          sub_26BE8A6E8(v49);
LABEL_78:
          v108 = 0;
          return v108 & 1;
        }

        v82 = v80;
      }

      else if (!v82)
      {
        goto LABEL_71;
      }

      goto LABEL_97;
    case 6u:
      v49 = v141;
      v87 = v135;
      sub_26BE8A684(v141, v135);
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EAB0, &qword_26C014280);
      v89 = *(v88 + 48);
      v90 = *(v88 + 64);
      v91 = v140;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        v116 = v138[1];
        v117 = v87 + v90;
        v118 = v139;
        v116(v117, v139);
        v116(v87 + v89, v118);
        v116(v87, v118);
LABEL_77:
        sub_26BE2E258(v49, &qword_28045EC38, &qword_26C015A60);
        goto LABEL_78;
      }

      v93 = v138;
      v92 = v139;
      v94 = v138[4];
      v95 = v131;
      v94(v131, v91, v139);
      v94(v137, (v87 + v89), v92);
      v94(v136, (v87 + v90), v92);
      v96 = v91 + v89;
      v97 = v130;
      v94(v130, v96, v92);
      v98 = v91 + v90;
      v99 = v132;
      v94(v132, v98, v92);
      v100 = v95;
      v101 = sub_26C0091FC();
      v102 = v93[1];
      v102(v87, v92);
      if ((v101 & 1) == 0)
      {
        v102(v99, v92);
        v102(v97, v92);
        v102(v136, v92);
        v121 = v137;
LABEL_94:
        v102(v121, v92);
        v102(v100, v92);
        goto LABEL_97;
      }

      v104 = v136;
      v103 = v137;
      if ((sub_26C0091FC() & 1) == 0)
      {
        v102(v132, v92);
        v102(v97, v92);
        v102(v104, v92);
        v121 = v103;
        goto LABEL_94;
      }

      v105 = v100;
      v106 = v132;
      v107 = v97;
      v108 = sub_26C0091FC();
      v102(v106, v92);
      v102(v107, v92);
      v102(v104, v92);
      v102(v103, v92);
      v102(v105, v92);
LABEL_63:
      sub_26BE8A6E8(v49);
      return v108 & 1;
    case 7u:
      v49 = v141;
      sub_26BE8A684(v141, v24);
      v64 = v140;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_77;
      }

      v67 = *v24;
      goto LABEL_59;
    case 8u:
      v49 = v141;
      v63 = v133;
      sub_26BE8A684(v141, v133);
      v64 = v140;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_58;
      }

      goto LABEL_77;
    case 9u:
      v49 = v141;
      v63 = v134;
      sub_26BE8A684(v141, v134);
      v64 = v140;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_77;
      }

LABEL_58:
      v67 = *v63;
LABEL_59:
      v52 = v67 == *v64;
      goto LABEL_60;
    case 0xAu:
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v49 = v141;
      if (EnumCaseMultiPayload != 10)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    case 0xBu:
      v55 = swift_getEnumCaseMultiPayload();
      v49 = v141;
      if (v55 != 11)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    case 0xCu:
      v62 = swift_getEnumCaseMultiPayload();
      v49 = v141;
      if (v62 != 12)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    case 0xDu:
      v86 = swift_getEnumCaseMultiPayload();
      v49 = v141;
      if (v86 != 13)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    case 0xEu:
      v54 = swift_getEnumCaseMultiPayload();
      v49 = v141;
      if (v54 != 14)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    case 0xFu:
      v68 = swift_getEnumCaseMultiPayload();
      v49 = v141;
      if (v68 != 15)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    case 0x10u:
      v53 = swift_getEnumCaseMultiPayload();
      v49 = v141;
      if (v53 != 16)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    case 0x11u:
      v78 = swift_getEnumCaseMultiPayload();
      v49 = v141;
      if (v78 != 17)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    case 0x12u:
      v109 = swift_getEnumCaseMultiPayload();
      v49 = v141;
      if (v109 != 18)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    case 0x13u:
      v112 = swift_getEnumCaseMultiPayload();
      v49 = v141;
      if (v112 != 19)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    case 0x14u:
      v79 = swift_getEnumCaseMultiPayload();
      v49 = v141;
      if (v79 != 20)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    case 0x15u:
      v85 = swift_getEnumCaseMultiPayload();
      v49 = v141;
      if (v85 != 21)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    case 0x16u:
      v111 = swift_getEnumCaseMultiPayload();
      v49 = v141;
      if (v111 != 22)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    case 0x17u:
      v113 = swift_getEnumCaseMultiPayload();
      v49 = v141;
      if (v113 != 23)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    case 0x18u:
      v66 = swift_getEnumCaseMultiPayload();
      v49 = v141;
      if (v66 != 24)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    case 0x19u:
      v65 = swift_getEnumCaseMultiPayload();
      v49 = v141;
      if (v65 != 25)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    case 0x1Au:
      v114 = swift_getEnumCaseMultiPayload();
      v49 = v141;
      if (v114 == 26)
      {
        goto LABEL_71;
      }

      goto LABEL_77;
    default:
      v49 = v141;
      sub_26BE8A684(v141, v43);
      v50 = v43[1];
      v51 = v140;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_77;
      }

      if (*v43 != *v51)
      {
        goto LABEL_97;
      }

      v52 = v50 == v51[1];
LABEL_60:
      v108 = v52;
      goto LABEL_63;
  }
}

uint64_t type metadata accessor for MLS.IdentityError(uint64_t a1)
{
  result = qword_28045EB50;
  if (!qword_28045EB50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BE8A684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.IdentityError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BE8A6E8(uint64_t a1)
{
  v2 = type metadata accessor for MLS.IdentityError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26BE8A744()
{
  result = qword_28045EAB8;
  if (!qword_28045EAB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28045EAB8);
  }

  return result;
}

uint64_t sub_26BE8A790(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26BE8A808()
{
  result = qword_28045EAC0;
  if (!qword_28045EAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EAC0);
  }

  return result;
}

unint64_t sub_26BE8A864()
{
  result = qword_28045EAC8;
  if (!qword_28045EAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EAC8);
  }

  return result;
}

unint64_t sub_26BE8A8B8()
{
  result = qword_28045EAD0;
  if (!qword_28045EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EAD0);
  }

  return result;
}

unint64_t sub_26BE8A914()
{
  result = qword_28045EAD8;
  if (!qword_28045EAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EAD8);
  }

  return result;
}

unint64_t sub_26BE8A968()
{
  result = qword_28045EAE0;
  if (!qword_28045EAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EAE0);
  }

  return result;
}

unint64_t sub_26BE8A9C4()
{
  result = qword_28045EAE8;
  if (!qword_28045EAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EAE8);
  }

  return result;
}

unint64_t sub_26BE8AA18()
{
  result = qword_28045EAF0;
  if (!qword_28045EAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EAF0);
  }

  return result;
}

unint64_t sub_26BE8AA74()
{
  result = qword_28045EAF8;
  if (!qword_28045EAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EAF8);
  }

  return result;
}

unint64_t sub_26BE8AAC8()
{
  result = qword_28045EB00;
  if (!qword_28045EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EB00);
  }

  return result;
}

unint64_t sub_26BE8AB24()
{
  result = qword_28045EB08;
  if (!qword_28045EB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EB08);
  }

  return result;
}

unint64_t sub_26BE8AB78()
{
  result = qword_28045EB10;
  if (!qword_28045EB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EB10);
  }

  return result;
}

unint64_t sub_26BE8ABD4()
{
  result = qword_28045EB18;
  if (!qword_28045EB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EB18);
  }

  return result;
}

unint64_t sub_26BE8AC28()
{
  result = qword_28045EB20;
  if (!qword_28045EB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EB20);
  }

  return result;
}

unint64_t sub_26BE8AC84()
{
  result = qword_28045EB28;
  if (!qword_28045EB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EB28);
  }

  return result;
}

unint64_t sub_26BE8ACD8()
{
  result = qword_28045EB30;
  if (!qword_28045EB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EB30);
  }

  return result;
}

unint64_t sub_26BE8AD34()
{
  result = qword_28045EB38;
  if (!qword_28045EB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EB38);
  }

  return result;
}

unint64_t sub_26BE8AD8C()
{
  result = qword_28045EB40;
  if (!qword_28045EB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EB40);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8SwiftMLS0B0O5GroupO6MemberVSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8SwiftMLS0B0O8MLSErrorO(uint64_t a1)
{
  if ((*(a1 + 112) & 0x1Fu) <= 0x16)
  {
    return *(a1 + 112) & 0x1F;
  }

  else
  {
    return (*a1 + 23);
  }
}

uint64_t sub_26BE8AE5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE9 && *(a1 + 113))
  {
    return (*a1 + 233);
  }

  v3 = *(a1 + 112);
  if (v3 >= 0x18)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BE8AE98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE8)
  {
    *(result + 112) = 0;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 233;
    if (a3 >= 0xE9)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE9)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 112) = -a2;
    }
  }

  return result;
}

uint64_t sub_26BE8AEF0(uint64_t result, unsigned int a2)
{
  if (a2 > 0x16)
  {
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    v2 = a2 - 23;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 23;
    *result = v2;
  }

  *(result + 112) = a2;
  return result;
}

uint64_t _s16MLSInternalErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCD)
  {
    goto LABEL_17;
  }

  if (a2 + 51 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 51) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 51;
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

      return (*a1 | (v4 << 8)) - 51;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 51;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x34;
  v8 = v6 - 52;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s16MLSInternalErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 51 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 51) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCD)
  {
    v4 = 0;
  }

  if (a2 > 0xCC)
  {
    v5 = ((a2 - 205) >> 8) + 1;
    *result = a2 + 51;
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
    *result = a2 + 51;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s24InvalidProposalListErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s24InvalidProposalListErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s20InvalidLeafNodeErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s20InvalidLeafNodeErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26BE8B344(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_26BE8B3D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s8RCSErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8RCSErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_26BE8B610(uint64_t a1)
{
  sub_26BE8B708();
  if (v1 <= 0x3F)
  {
    sub_26BE8B768(319);
    if (v2 <= 0x3F)
    {
      sub_26BE8B7E0(319, &qword_28045EB70, MEMORY[0x277CC9578]);
      if (v3 <= 0x3F)
      {
        sub_26BE8B7E0(319, &qword_28045EB78, sub_26BE8A744);
        if (v4 <= 0x3F)
        {
          sub_26BE8B834(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26BE8B708()
{
  if (!qword_28045EB60)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28045EB60);
    }
  }
}

void sub_26BE8B768(uint64_t a1)
{
  if (!qword_28045EB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045E778, &qword_26C0159E0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28045EB68);
    }
  }
}

void sub_26BE8B7E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26C00AAAC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26BE8B834(uint64_t a1)
{
  if (!qword_28045EB80)
  {
    sub_26C00921C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_28045EB80);
    }
  }
}

unint64_t sub_26BE8B8A0()
{
  result = qword_28045EB90;
  if (!qword_28045EB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EB90);
  }

  return result;
}

unint64_t sub_26BE8B8F4()
{
  result = qword_28045EB98;
  if (!qword_28045EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EB98);
  }

  return result;
}

unint64_t sub_26BE8B948()
{
  result = qword_28045EBA0;
  if (!qword_28045EBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EBA0);
  }

  return result;
}

unint64_t sub_26BE8B99C()
{
  result = qword_28045EBA8;
  if (!qword_28045EBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EBA8);
  }

  return result;
}

unint64_t sub_26BE8B9F0()
{
  result = qword_28045EBB0;
  if (!qword_28045EBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EBB0);
  }

  return result;
}

unint64_t sub_26BE8BA44()
{
  result = qword_28045EBB8;
  if (!qword_28045EBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EBB8);
  }

  return result;
}

unint64_t sub_26BE8BA98()
{
  result = qword_28045EBC0;
  if (!qword_28045EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EBC0);
  }

  return result;
}

unint64_t sub_26BE8BAEC()
{
  result = qword_28045EBC8;
  if (!qword_28045EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EBC8);
  }

  return result;
}

unint64_t sub_26BE8BB40()
{
  result = qword_28045EBD0;
  if (!qword_28045EBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EBD0);
  }

  return result;
}

unint64_t sub_26BE8BB94()
{
  result = qword_28045EBD8;
  if (!qword_28045EBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EBD8);
  }

  return result;
}

unint64_t sub_26BE8BBE8()
{
  result = qword_28045EBE0;
  if (!qword_28045EBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EBE0);
  }

  return result;
}

unint64_t sub_26BE8BC3C()
{
  result = qword_28045EBE8;
  if (!qword_28045EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EBE8);
  }

  return result;
}

unint64_t sub_26BE8BC90()
{
  result = qword_28045EBF0;
  if (!qword_28045EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EBF0);
  }

  return result;
}

unint64_t sub_26BE8BCE4()
{
  result = qword_28045EBF8;
  if (!qword_28045EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EBF8);
  }

  return result;
}

unint64_t sub_26BE8BD38()
{
  result = qword_28045EC00;
  if (!qword_28045EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EC00);
  }

  return result;
}

unint64_t sub_26BE8BD8C()
{
  result = qword_28045EC08;
  if (!qword_28045EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EC08);
  }

  return result;
}

unint64_t sub_26BE8BDE0()
{
  result = qword_28045EC10;
  if (!qword_28045EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EC10);
  }

  return result;
}

unint64_t sub_26BE8BE34()
{
  result = qword_28045EC18;
  if (!qword_28045EC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EC18);
  }

  return result;
}

unint64_t sub_26BE8BE88()
{
  result = qword_28045EC20;
  if (!qword_28045EC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EC20);
  }

  return result;
}

unint64_t sub_26BE8BEDC()
{
  result = qword_28045EC28;
  if (!qword_28045EC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EC28);
  }

  return result;
}

uint64_t sub_26BE8BF30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26BE8C044(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v6)
    {
      v7 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v6 != 2)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v9 = *(v2 + 16);
  v8 = *(v2 + 24);
  v7 = v8 - v9;
  if (__OFSUB__(v8, v9))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
      goto LABEL_19;
    }

    v7 = HIDWORD(v2) - v2;
  }

LABEL_11:
  result = sub_26BF30414(v7);
  v11 = result;
  if (v1)
  {
    return result;
  }

  sub_26BE11228(v2, v3);
  v12 = __OFADD__(v11, v7);
  v13 = v11 + v7;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = bswap64(v4);
  v14 = MEMORY[0x277D838B0];
  v15 = MEMORY[0x277CC9C18];
  v20 = MEMORY[0x277D838B0];
  v21 = MEMORY[0x277CC9C18];
  v18 = &v17;
  v19 = &v18;
  __swift_project_boxed_opaque_existential_1(&v18, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v18);
  v12 = __OFADD__(v13, 8);
  v16 = v13 + 8;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  LOBYTE(v17) = v5;
  v20 = v14;
  v21 = v15;
  v18 = &v17;
  v19 = (&v17 + 1);
  __swift_project_boxed_opaque_existential_1(&v18, v14);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v18);
  result = v16 + 1;
  if (__OFADD__(v16, 1))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t MLS.AuthenticatedContent.content.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 184);
  v3 = *(v1 + 216);
  v18[12] = *(v1 + 200);
  v19[0] = v3;
  *(v19 + 9) = *(v1 + 225);
  v4 = *(v1 + 120);
  v5 = *(v1 + 152);
  v18[8] = *(v1 + 136);
  v18[9] = v5;
  v18[10] = *(v1 + 168);
  v18[11] = v2;
  v6 = *(v1 + 56);
  v7 = *(v1 + 88);
  v18[4] = *(v1 + 72);
  v18[5] = v7;
  v18[6] = *(v1 + 104);
  v18[7] = v4;
  v8 = *(v1 + 24);
  v18[0] = *(v1 + 8);
  v18[1] = v8;
  v18[2] = *(v1 + 40);
  v18[3] = v6;
  v9 = *(v1 + 184);
  v10 = *(v1 + 216);
  a1[12] = *(v1 + 200);
  a1[13] = v10;
  *(a1 + 217) = *(v1 + 225);
  v11 = *(v1 + 120);
  v12 = *(v1 + 152);
  a1[8] = *(v1 + 136);
  a1[9] = v12;
  a1[10] = *(v1 + 168);
  a1[11] = v9;
  v13 = *(v1 + 56);
  v14 = *(v1 + 88);
  a1[4] = *(v1 + 72);
  a1[5] = v14;
  a1[6] = *(v1 + 104);
  a1[7] = v11;
  v15 = *(v1 + 24);
  *a1 = *(v1 + 8);
  a1[1] = v15;
  a1[2] = *(v1 + 40);
  a1[3] = v13;
  return sub_26BE2FB24(v18, &v17);
}

__n128 MLS.AuthenticatedContent.content.setter(uint64_t a1)
{
  v3 = *(v1 + 184);
  v4 = *(v1 + 216);
  v18[12] = *(v1 + 200);
  v19[0] = v4;
  *(v19 + 9) = *(v1 + 225);
  v5 = *(v1 + 120);
  v6 = *(v1 + 152);
  v18[8] = *(v1 + 136);
  v18[9] = v6;
  v18[10] = *(v1 + 168);
  v18[11] = v3;
  v7 = *(v1 + 56);
  v8 = *(v1 + 88);
  v18[4] = *(v1 + 72);
  v18[5] = v8;
  v18[6] = *(v1 + 104);
  v18[7] = v5;
  v9 = *(v1 + 24);
  v18[0] = *(v1 + 8);
  v18[1] = v9;
  v18[2] = *(v1 + 40);
  v18[3] = v7;
  sub_26BE71494(v18);
  v10 = *(a1 + 160);
  *(v1 + 184) = *(a1 + 176);
  v11 = *(a1 + 208);
  *(v1 + 200) = *(a1 + 192);
  *(v1 + 216) = v11;
  *(v1 + 225) = *(a1 + 217);
  v12 = *(a1 + 96);
  *(v1 + 120) = *(a1 + 112);
  v13 = *(a1 + 144);
  *(v1 + 136) = *(a1 + 128);
  *(v1 + 152) = v13;
  *(v1 + 168) = v10;
  v14 = *(a1 + 32);
  *(v1 + 56) = *(a1 + 48);
  v15 = *(a1 + 80);
  *(v1 + 72) = *(a1 + 64);
  *(v1 + 88) = v15;
  *(v1 + 104) = v12;
  result = *a1;
  v17 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v17;
  *(v1 + 40) = v14;
  return result;
}

uint64_t MLS.AuthenticatedContent.auth.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MLS.AuthenticatedContent(0) + 24);

  return sub_26BE8C448(v3, a1);
}

uint64_t type metadata accessor for MLS.AuthenticatedContent(uint64_t a1)
{
  result = qword_28045EC58;
  if (!qword_28045EC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BE8C448(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MLS.AuthenticatedContent.auth.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MLS.AuthenticatedContent(0) + 24);

  return sub_26BE8C4FC(a1, v3);
}

uint64_t sub_26BE8C4FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MLS.AuthenticatedContent.init(wireFormat:content:)@<X0>(__int16 *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(type metadata accessor for MLS.AuthenticatedContent(0) + 24);
  v7 = type metadata accessor for MLS.FramedContentAuthData(0);
  v16 = *(*(v7 - 8) + 56);
  (v16)((v7 - 8), a3 + v6, 1, 1, v7);
  v8 = a2[10];
  *(a3 + 184) = a2[11];
  v9 = a2[13];
  *(a3 + 200) = a2[12];
  *(a3 + 216) = v9;
  *(a3 + 225) = *(a2 + 217);
  v10 = a2[6];
  *(a3 + 120) = a2[7];
  v11 = a2[9];
  *(a3 + 136) = a2[8];
  *(a3 + 152) = v11;
  *(a3 + 168) = v8;
  v12 = a2[2];
  *(a3 + 56) = a2[3];
  v13 = a2[5];
  *(a3 + 72) = a2[4];
  *(a3 + 88) = v13;
  *(a3 + 104) = v10;
  v14 = a2[1];
  *(a3 + 8) = *a2;
  *(a3 + 24) = v14;
  *a3 = v5;
  *(a3 + 40) = v12;
  sub_26BE8C6E0(a3 + v6);

  return v16(a3 + v6, 1, 1, v7);
}

uint64_t sub_26BE8C6E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BE8C75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 36);
    if (v4 > 2)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26BE8C824(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 36) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26BE8C8D0(uint64_t a1)
{
  sub_26BE8C954(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26BE8C954(uint64_t a1)
{
  if (!qword_28045EC68)
  {
    type metadata accessor for MLS.FramedContentAuthData(255);
    v1 = sub_26C00AAAC();
    if (!v2)
    {
      atomic_store(v1, &qword_28045EC68);
    }
  }
}

uint64_t sub_26BE8C9AC(unsigned __int16 *a1)
{
  v72 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v36 - v3;
  v5 = type metadata accessor for MLS.FramedContentAuthData(0);
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOWORD(v42) = bswap32(*a1) >> 16;
  *(&v57 + 1) = MEMORY[0x277D838B0];
  *&v58 = MEMORY[0x277CC9C18];
  *&v56 = &v42;
  *(&v56 + 1) = &v42 + 2;
  __swift_project_boxed_opaque_existential_1(&v56, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v56);
  v8 = *(a1 + 100);
  v70[11] = *(a1 + 92);
  v70[12] = v8;
  v71[0] = *(a1 + 108);
  *(v71 + 9) = *(a1 + 225);
  v9 = *(a1 + 60);
  v10 = *(a1 + 76);
  v70[8] = *(a1 + 68);
  v70[9] = v10;
  v70[10] = *(a1 + 84);
  v11 = *(a1 + 28);
  v12 = *(a1 + 44);
  v70[4] = *(a1 + 36);
  v70[5] = v12;
  v70[6] = *(a1 + 52);
  v70[7] = v9;
  v13 = *(a1 + 12);
  v70[0] = *(a1 + 4);
  v70[1] = v13;
  v70[2] = *(a1 + 20);
  v70[3] = v11;
  v14 = *(a1 + 100);
  v67 = *(a1 + 92);
  v68 = v14;
  v69[0] = *(a1 + 108);
  *(v69 + 9) = *(a1 + 225);
  v15 = *(a1 + 60);
  v16 = *(a1 + 76);
  v64 = *(a1 + 68);
  v65 = v16;
  v66 = *(a1 + 84);
  v17 = *(a1 + 28);
  v18 = *(a1 + 44);
  v60 = *(a1 + 36);
  v61 = v18;
  v62 = *(a1 + 52);
  v63 = v15;
  v19 = *(a1 + 12);
  v56 = *(a1 + 4);
  v57 = v19;
  v58 = *(a1 + 20);
  v59 = v17;
  sub_26BE2FB24(v70, &v42);
  v20 = v38;
  v21 = sub_26BEDC390(&v56);
  v38 = v20;
  if (v20)
  {
    v54 = v68;
    v55[0] = v69[0];
    *(v55 + 9) = *(v69 + 9);
    v50 = v64;
    v51 = v65;
    v52 = v66;
    v53 = v67;
    v46 = v60;
    v47 = v61;
    v48 = v62;
    v49 = v63;
    v42 = v56;
    v43 = v57;
    v44 = v58;
    v45 = v59;
    return sub_26BE71494(&v42);
  }

  v23 = v21;
  v53 = v67;
  v54 = v68;
  v55[0] = v69[0];
  *(v55 + 9) = *(v69 + 9);
  v50 = v64;
  v51 = v65;
  v52 = v66;
  v46 = v60;
  v47 = v61;
  v48 = v62;
  v49 = v63;
  v42 = v56;
  v43 = v57;
  v44 = v58;
  v45 = v59;
  sub_26BE71494(&v42);
  v24 = v23 + 2;
  if (__OFADD__(v23, 2))
  {
    __break(1u);
    goto LABEL_15;
  }

  v25 = type metadata accessor for MLS.AuthenticatedContent(0);
  sub_26BE8C448(a1 + *(v25 + 24), v4);
  if ((*(v37 + 48))(v4, 1, v5) == 1)
  {
    sub_26BE8C6E0(v4);
    sub_26BE01654();
    swift_allocError();
    *v26 = 6;
    v26[112] = 1;
    return swift_willThrow();
  }

  sub_26BE8CE38(v4, v7);
  v27 = *(a1 + 100);
  v40[8] = *(a1 + 92);
  v40[9] = v27;
  v41[0] = *(a1 + 108);
  *(v41 + 9) = *(a1 + 225);
  v28 = *(a1 + 68);
  v40[4] = *(a1 + 60);
  v40[5] = v28;
  v29 = *(a1 + 84);
  v40[6] = *(a1 + 76);
  v40[7] = v29;
  v30 = *(a1 + 36);
  v40[0] = *(a1 + 28);
  v40[1] = v30;
  v31 = *(a1 + 52);
  v40[2] = *(a1 + 44);
  v40[3] = v31;
  v32 = sub_26BE6917C(v40);
  if (v32)
  {
    v33 = v38;
    if (v32 == 1)
    {
      nullsub_1();
      v34 = 2;
    }

    else
    {
      nullsub_1();
      v34 = 3;
    }
  }

  else
  {
    nullsub_1();
    v34 = 1;
    v33 = v38;
  }

  v39 = v34;
  v35 = sub_26BED4DD8(v7, &v39);
  result = sub_26BE8CE9C(v7);
  if (!v33)
  {
    result = v24 + v35;
    if (__OFADD__(v24, v35))
    {
LABEL_15:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_26BE8CE38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.FramedContentAuthData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BE8CE9C(uint64_t a1)
{
  v2 = type metadata accessor for MLS.FramedContentAuthData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BE8CF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  return MEMORY[0x2822009F8](sub_26BE8CF58, 0, 0);
}

uint64_t sub_26BE8CF58()
{
  v1 = v0[5];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[9] = v2;
  v0[10] = v3;
  v0[11] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_26BE8D068;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE8D068()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE8D2F4, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[14] = v3;
    *v3 = v2;
    v3[1] = sub_26BE8D1E0;
    v4 = v2[7];
    v5 = v2[8];
    v6 = v2[6];

    return sub_26BE192D0(v3, v6, v4, v5);
  }
}

uint64_t sub_26BE8D1E0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_26BE8D764;
  }

  else
  {
    v2 = sub_26BE8D534;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE8D2F4()
{
  v16 = v0;

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478E70);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x746E65696C43, 0xE600000000000000, v15);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v15);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = v0[13];
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v12 = v0[7];
  v11 = v0[8];

  sub_26BE0489C(v12, v11);
  v13 = v0[1];

  return v13();
}

uint64_t sub_26BE8D534()
{
  v0[16] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_26BE8D5D8;

  return sub_26BEAB784();
}

uint64_t sub_26BE8D5D8()
{

  return MEMORY[0x2822009F8](sub_26BE8D6F0, 0, 0);
}

uint64_t sub_26BE8D6F0()
{
  v1 = v0[7];
  v2 = v0[8];

  sub_26BE0489C(v1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_26BE8D764()
{
  v0[18] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_26BE8D808;

  return sub_26BEAB784();
}

uint64_t sub_26BE8D808()
{

  return MEMORY[0x2822009F8](sub_26BE8D920, 0, 0);
}

uint64_t sub_26BE8D920(uint64_t a1)
{
  swift_willThrow();
  v3 = v1[7];
  v2 = v1[8];

  sub_26BE0489C(v3, v2);
  v4 = v1[1];

  return v4();
}

uint64_t sub_26BE8D9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return MEMORY[0x2822009F8](sub_26BE8D9C4, 0, 0);
}

uint64_t sub_26BE8D9C4()
{
  v1 = v0[5];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[7] = v2;
  v0[8] = v3;
  v0[9] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_26BE8DAD4;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE8DAD4()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE8DD5C, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[12] = v3;
    *v3 = v2;
    v3[1] = sub_26BE8DC48;
    v4 = v2[6];

    return sub_26BE24628(v3, v4);
  }
}

uint64_t sub_26BE8DC48()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_26BE8E148;
  }

  else
  {
    v2 = sub_26BE8DF8C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE8DD5C()
{
  v14 = v0;

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478E70);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x746E65696C43, 0xE600000000000000, v13);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = *(v0 + 88);
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26BE8DF8C()
{
  v0[14] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_26BE8E030;

  return sub_26BEAB784();
}

uint64_t sub_26BE8E030()
{

  return MEMORY[0x2822009F8](sub_26BEAFB04, 0, 0);
}

uint64_t sub_26BE8E148()
{
  v0[16] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_26BE8E1EC;

  return sub_26BEAB784();
}

uint64_t sub_26BE8E1EC()
{

  return MEMORY[0x2822009F8](sub_26BEAFAB4, 0, 0);
}

uint64_t sub_26BE8E304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_26BE8E328, 0, 0);
}

uint64_t sub_26BE8E328()
{
  v1 = v0[8];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[10] = v2;
  v0[11] = v3;
  v0[12] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_26BE8E438;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE8E438()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE8E6C8, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[15] = v3;
    *v3 = v2;
    v3[1] = sub_26BE8E5B4;
    v4 = v2[9];

    return sub_26BE1C4E4((v2 + 5), v4);
  }
}

uint64_t sub_26BE8E5B4()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_26BE8EABC;
  }

  else
  {
    v2 = sub_26BE8E8F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE8E6C8()
{
  v14 = v0;

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478E70);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x746E65696C43, 0xE600000000000000, v13);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = *(v0 + 112);
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26BE8E8F8()
{
  v1 = *(v0 + 64);
  **(v0 + 56) = *(v0 + 40);
  *(v0 + 136) = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_26BE8E9A4;

  return sub_26BEAB784();
}

uint64_t sub_26BE8E9A4()
{

  return MEMORY[0x2822009F8](sub_26BEAFB10, 0, 0);
}

uint64_t sub_26BE8EABC()
{
  v0[19] = *(v0[8] + 16);

  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_26BE8EB60;

  return sub_26BEAB784();
}

uint64_t sub_26BE8EB60()
{

  return MEMORY[0x2822009F8](sub_26BEAFABC, 0, 0);
}

uint64_t sub_26BE8EC78(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_26BE8EC98, 0, 0);
}

uint64_t sub_26BE8EC98()
{
  v1 = v0[5];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[7] = v2;
  v0[8] = v3;
  v0[9] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_26BE8EDAC;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE8EDAC()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE8F49C, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    *(v2 + 96) = v3;
    *v3 = v2;
    v3[1] = sub_26BE8EF20;

    return sub_26BF3536C();
  }
}

uint64_t sub_26BE8EF20(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_26BE8F26C;
  }

  else
  {
    *(v4 + 112) = a1;
    v5 = sub_26BE8F048;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BE8F048()
{
  v0[15] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_26BE8F0EC;

  return sub_26BEAB784();
}

uint64_t sub_26BE8F0EC()
{

  return MEMORY[0x2822009F8](sub_26BE8F204, 0, 0);
}

uint64_t sub_26BE8F204()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 112);

  return v1(v2);
}

uint64_t sub_26BE8F26C()
{
  v0[17] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_26BE8F310;

  return sub_26BEAB784();
}

uint64_t sub_26BE8F310()
{

  return MEMORY[0x2822009F8](sub_26BE8F428, 0, 0);
}

uint64_t sub_26BE8F428(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_26BE8F49C()
{
  v14 = v0;

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v13);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = *(v0 + 88);
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26BE8F6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return MEMORY[0x2822009F8](sub_26BE8F6FC, 0, 0);
}

uint64_t sub_26BE8F6FC()
{
  v1 = v0[5];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[7] = v2;
  v0[8] = v3;
  v0[9] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_26BE8F810;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE8F810()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE8F49C, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    *(v2 + 96) = v3;
    *v3 = v2;
    v3[1] = sub_26BE8F984;

    return sub_26BF5DAA0();
  }
}

uint64_t sub_26BE8F984()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_26BE8FCB8;
  }

  else
  {
    v2 = sub_26BE8FA98;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE8FA98()
{
  v0[14] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_26BE8FB3C;

  return sub_26BEAB784();
}

uint64_t sub_26BE8FB3C()
{

  return MEMORY[0x2822009F8](sub_26BE8FC54, 0, 0);
}

uint64_t sub_26BE8FC54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BE8FCB8()
{
  v0[16] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_26BE8FD5C;

  return sub_26BEAB784();
}

uint64_t sub_26BE8FD5C()
{

  return MEMORY[0x2822009F8](sub_26BE8F428, 0, 0);
}

uint64_t sub_26BE8FE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_26BE8FE98, 0, 0);
}