uint64_t sub_26BE51214(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = *(result + 16);
  if (!v4)
  {
  }

  v5 = 0;
  v6 = *(result + 24);
  v7 = (v4 - 1);
  v8 = (2 * v7);
  v26 = v6 + 32;
  v9 = a2 + 56;
  v32 = a2;
  while (v5 != 0x80000000)
  {
    if ((v7 & 0x80000000) != 0)
    {
      goto LABEL_29;
    }

    v10 = (2 * v5);
    if (v10 > v8)
    {
      sub_26BE01654();
      swift_allocError();
      *v22 = 30;
      *(v22 + 8) = 0u;
      *(v22 + 24) = 0u;
      *(v22 + 40) = 0u;
      *(v22 + 56) = 0u;
      *(v22 + 72) = 0u;
      *(v22 + 88) = 0u;
      *(v22 + 104) = 0;
      v23 = 23;
      goto LABEL_23;
    }

    if (*(v6 + 16) > v10)
    {
      v11 = (v26 + 136 * v10);
      memmove(__dst, v11, 0x88uLL);
      result = sub_26BE58C10(__dst);
      if (result != 1)
      {
        memmove(v29, v11, 0x88uLL);
        if (sub_26BE58C10(v29) == 1)
        {
          sub_26BE01654();
          swift_allocError();
          v25 = 30;
LABEL_27:
          *v24 = v25;
          *(v24 + 8) = 0u;
          *(v24 + 24) = 0u;
          *(v24 + 40) = 0u;
          *(v24 + 56) = 0u;
          *(v24 + 72) = 0u;
          *(v24 + 88) = 0u;
          *(v24 + 104) = 0;
          *(v24 + 112) = 23;
          swift_willThrow();
        }

        v27[6] = v29[6];
        v27[7] = v29[7];
        v28 = v30;
        v27[2] = v29[2];
        v27[3] = v29[3];
        v27[4] = v29[4];
        v27[5] = v29[5];
        v27[0] = v29[0];
        v27[1] = v29[1];
        v12 = sub_26BE592C4(v27);
        v13 = sub_26BE13A3C(v27);
        if (v12 == 1)
        {
          sub_26BE01654();
          swift_allocError();
          v25 = 28;
          goto LABEL_27;
        }

        v14 = v7;
        v15 = v6;
        v16 = v8;
        v17 = v3;
        if ((*(v13 + 47) & 0x20) != 0)
        {
          v18 = 2;
        }

        else
        {
          v18 = 1;
        }

        if (!*(v32 + 16) || (sub_26C00B05C(), sub_26C00B08C(), result = sub_26C00B0CC(), v19 = -1 << *(v32 + 32), v20 = result & ~v19, ((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0))
        {
LABEL_21:
          sub_26BE01654();
          swift_allocError();
          *v22 = 3;
          v23 = 8;
LABEL_23:
          *(v22 + 112) = v23;
          swift_willThrow();
        }

        v21 = ~v19;
        while (*(*(v32 + 48) + 2 * v20) != v18)
        {
          v20 = (v20 + 1) & v21;
          if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        v3 = v17;
        v8 = v16;
        v6 = v15;
        v7 = v14;
      }
    }

    if (++v5 == v4)
    {
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void (*MLS.TreeKEMPublicKey.eachLeaf(_:)(void (*result)(int *, _OWORD *)))(int *, _OWORD *)
{
  v22 = result;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(v1 + 24);
    while (v4 != 0x80000000)
    {
      if (v2 - 1 < 0)
      {
        goto LABEL_19;
      }

      if (v3 > 2 * (v2 - 1))
      {
LABEL_13:
        sub_26BE01654();
        v19 = swift_allocError();
        v21 = 30;
LABEL_14:
        *v20 = v21;
        *(v20 + 8) = 0u;
        *(v20 + 24) = 0u;
        *(v20 + 40) = 0u;
        *(v20 + 56) = 0u;
        *(v20 + 72) = 0u;
        *(v20 + 88) = 0u;
        *(v20 + 104) = 0;
        *(v20 + 112) = 23;
        v43 = v19;
        return swift_willThrow();
      }

      if (*(v5 + 16) > v3)
      {
        v6 = (v5 + 32 + 136 * v3);
        memmove(__dst, v6, 0x88uLL);
        result = sub_26BE58C10(__dst);
        if (result != 1)
        {
          v31 = *v6;
          v7 = v6[1];
          v8 = v6[2];
          v9 = v6[4];
          v34 = v6[3];
          v35 = v9;
          v32 = v7;
          v33 = v8;
          v10 = v6[5];
          v11 = v6[6];
          v12 = v6[7];
          v39 = *(v6 + 16);
          v37 = v11;
          v38 = v12;
          v36 = v10;
          memmove(v40, v6, 0x88uLL);
          if (sub_26BE58C10(v40) == 1)
          {
            goto LABEL_13;
          }

          v29[6] = v40[6];
          v29[7] = v40[7];
          v30 = v41;
          v29[2] = v40[2];
          v29[3] = v40[3];
          v29[4] = v40[4];
          v29[5] = v40[5];
          v29[0] = v40[0];
          v29[1] = v40[1];
          if (sub_26BE592C4(v29) == 1)
          {
            sub_26BE13A3C(v29);
            sub_26BE01654();
            v19 = swift_allocError();
            v21 = 28;
            goto LABEL_14;
          }

          v13 = sub_26BE13A3C(v29);
          v26 = v4;
          v14 = *(v13 + 112);
          v24[6] = *(v13 + 96);
          v24[7] = v14;
          v25 = *(v13 + 128);
          v15 = *(v13 + 48);
          v24[2] = *(v13 + 32);
          v24[3] = v15;
          v16 = *(v13 + 80);
          v24[4] = *(v13 + 64);
          v24[5] = v16;
          v17 = *(v13 + 16);
          v24[0] = *v13;
          v24[1] = v17;
          v27[2] = v33;
          v27[3] = v34;
          v27[0] = v31;
          v27[1] = v32;
          v28 = v39;
          v27[6] = v37;
          v27[7] = v38;
          v27[4] = v35;
          v27[5] = v36;
          sub_26BE59BD8(v27, v23);
          v18 = v43;
          v22(&v26, v24);
          v43 = v18;
          if (v18)
          {
            return sub_26BE2E258(&v31, &qword_28045E4C8, &unk_26C0112A0);
          }

          result = sub_26BE2E258(&v31, &qword_28045E4C8, &unk_26C0112A0);
        }
      }

      ++v4;
      v3 += 2;
      if (v2 == v4)
      {
        return result;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_26BE51800(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  if (v2)
  {
    v3 = 0;
    v14 = *v1;
    v13 = *(v1 + 1);
    v4 = *(v1 + 3);
    while (1)
    {
      if (v3 == 0x100000000)
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return;
      }

      if (v2 - 1 < 0)
      {
        goto LABEL_17;
      }

      if (v3 > 2 * (v2 - 1))
      {
        sub_26BE01654();
        swift_allocError();
        *v11 = 30;
        *(v11 + 8) = 0u;
        *(v11 + 24) = 0u;
        *(v11 + 40) = 0u;
        *(v11 + 56) = 0u;
        *(v11 + 72) = 0u;
        *(v11 + 88) = 0u;
        *(v11 + 104) = 0;
        *(v11 + 112) = 23;
        swift_willThrow();
        return;
      }

      if (*(v4 + 16) > v3)
      {
        memmove(__dst, (v4 + 32 + 136 * v3), 0x88uLL);
        if (sub_26BE58C10(__dst) != 1)
        {
          break;
        }
      }

      v3 += 2;
      if (2 * v2 == v3)
      {
        goto LABEL_12;
      }
    }

    v30 = v14;
    v31 = v13;
    v32 = v2;
    v33 = v4;
    v29 = v3;
    v5 = v45;
    MLS.TreeKEMPublicKey.expectNodeAt(index:)(&v29, &v34);
    if (!v5)
    {
      v25[6] = v40;
      v25[7] = v41;
      v25[2] = v36;
      v25[3] = v37;
      v25[4] = v38;
      v25[5] = v39;
      v25[0] = v34;
      v25[1] = v35;
      v27[6] = v40;
      v27[7] = v41;
      v27[2] = v36;
      v27[3] = v37;
      v27[4] = v38;
      v27[5] = v39;
      v26 = v42;
      v28 = v42;
      v27[0] = v34;
      v27[1] = v35;
      if (sub_26BE592C4(v27) == 1)
      {
        sub_26BE13A3C(v27);
        sub_26BE01654();
        swift_allocError();
        *v6 = 28;
        *(v6 + 8) = 0u;
        *(v6 + 24) = 0u;
        *(v6 + 40) = 0u;
        *(v6 + 56) = 0u;
        *(v6 + 72) = 0u;
        *(v6 + 88) = 0u;
        *(v6 + 104) = 0;
        *(v6 + 112) = 23;
        swift_willThrow();
        sub_26BE13854(v25);
      }

      else
      {
        v12 = sub_26BE13A3C(v27);
        v16 = *v12;
        v19 = *(v12 + 48);
        v20 = *(v12 + 64);
        v17 = *(v12 + 16);
        v18 = *(v12 + 32);
        v24 = *(v12 + 128);
        v22 = *(v12 + 96);
        v23 = *(v12 + 112);
        v21 = *(v12 + 80);
        nullsub_1();
        *(a1 + 96) = v22;
        *(a1 + 112) = v23;
        *(a1 + 128) = v24;
        *(a1 + 32) = v18;
        *(a1 + 48) = v19;
        *(a1 + 64) = v20;
        *(a1 + 80) = v21;
        *a1 = v16;
        *(a1 + 16) = v17;
      }
    }
  }

  else
  {
LABEL_12:
    sub_26BE59DB4(__dst);
    v7 = __dst[7];
    *(a1 + 96) = __dst[6];
    *(a1 + 112) = v7;
    *(a1 + 128) = v44;
    v8 = __dst[3];
    *(a1 + 32) = __dst[2];
    *(a1 + 48) = v8;
    v9 = __dst[5];
    *(a1 + 64) = __dst[4];
    *(a1 + 80) = v9;
    v10 = __dst[1];
    *a1 = __dst[0];
    *(a1 + 16) = v10;
  }
}

void MLS.TreeKEMPublicKey.rawRepresentation.getter()
{
  v2 = *(v0 + 24);
  sub_26BE7D80C(&v2);
  if (!v1)
  {
    sub_26C00909C();
  }

  sub_26BE00258(0, 0xC000000000000000);
}

uint64_t MLS.TreeKEMPrivateKey.privateKeyCache.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t MLS.TreeKEMPrivateKey.updateSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLS.TreeKEMPrivateKey(0) + 32);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.TreeKEMPrivateKey.updateSecret.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MLS.TreeKEMPrivateKey(0) + 32);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t MLS.TreeKEMPrivateKey.init(ciphersuiteID:index:)@<X0>(_WORD *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  *a3 = *a1;
  *(a3 + 4) = v4;
  type metadata accessor for MLS.TreeKEMPrivateKey(0);
  sub_26C009C5C();
  v5 = MEMORY[0x277D84F90];
  *(a3 + 8) = sub_26C004AC0(MEMORY[0x277D84F90]);
  result = sub_26C004BCC(v5);
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_26BE51E2C@<X0>(unsigned __int16 *a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v85 = a4;
  v101 = sub_26C009F3C();
  v88 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v100 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_26C009EDC();
  v90 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v98 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_26C009EEC();
  v91 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v96 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_26C009EAC();
  v87 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v94 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v14) = *a2;
  v103 = *a1;
  *a6 = v103;
  *(a6 + 4) = v14;
  v15 = *(type metadata accessor for MLS.TreeKEMPrivateKey(0) + 32);
  v16 = sub_26C009C8C();
  v81 = *(v16 - 8);
  v17 = *(v81 + 16);
  v83 = a5;
  v82 = v16;
  v17(a6 + v15, a5);
  v18 = MEMORY[0x277D84F90];
  *(a6 + 8) = sub_26C004AC0(MEMORY[0x277D84F90]);
  v19 = 0;
  *(a6 + 16) = sub_26C004BCC(v18);
  v104 = a3;
  v20 = a3 + 64;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a3 + 64);
  v24 = (v21 + 63) >> 6;
  v102 = a6;
  v93 = v20;
  v92 = v24;
LABEL_6:
  if (v23)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v28 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v28 >= v24)
    {

      v49 = 0;
      v50 = v85 + 64;
      v51 = 1 << *(v85 + 32);
      v52 = -1;
      if (v51 < 64)
      {
        v52 = ~(-1 << v51);
      }

      v53 = v52 & *(v85 + 64);
      v54 = (v51 + 63) >> 6;
      v84 = *MEMORY[0x277CC5450];
      v92 = (v91 + 104);
      LODWORD(v91) = *MEMORY[0x277CC5438];
      v90 += 13;
      v89 = *MEMORY[0x277CC5460];
      v88 += 13;
      v87 += 4;
      LODWORD(v93) = *MEMORY[0x277CC5458];
      v86 = v85 + 64;
LABEL_27:
      if (!v53)
      {
        if (v54 <= v49 + 1)
        {
          v57 = v49 + 1;
        }

        else
        {
          v57 = v54;
        }

        v58 = v57 - 1;
        while (1)
        {
          v56 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            break;
          }

          if (v56 >= v54)
          {
            v53 = 0;
            v107 = 0u;
            v108 = 0u;
            v49 = v58;
            v106 = 0u;
            goto LABEL_38;
          }

          v53 = *(v50 + 8 * v56);
          ++v49;
          if (v53)
          {
            v49 = v56;
            goto LABEL_37;
          }
        }

        __break(1u);
        break;
      }

      v56 = v49;
LABEL_37:
      v59 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      v60 = v59 | (v56 << 6);
      v61 = *(*(v85 + 48) + 4 * v60);
      sub_26BE038A8(*(v85 + 56) + 40 * v60, v105);
      LODWORD(v106) = v61;
      sub_26BE03890(v105, &v106 + 8);
LABEL_38:
      v109[1] = v107;
      v109[2] = v108;
      v109[0] = v106;
      if (!v108)
      {
        (*(v81 + 8))(v83, v82);
      }

      v62 = a6;
      LODWORD(v104) = v109[0];
      sub_26BE03890((v109 + 8), &v106);
      v63 = v93;
      if (v103 != 1)
      {
        if (v103 != 2)
        {
          goto LABEL_61;
        }

        v63 = v84;
      }

      (*v92)(v96, v63, v97);
      (*v90)(v98, v91, v99);
      (*v88)(v100, v89, v101);
      v64 = v94;
      sub_26C009E7C();
      type metadata accessor for MLS.Cryptography.Ciphersuite.SuitePrimitives(0);
      v65 = swift_allocObject();
      (*v87)(v65 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v64, v95);
      *(v65 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hash) = 0;
      sub_26BE038A8(&v106, v105);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v110 = *(v62 + 16);
      v67 = v110;
      v68 = v104;
      v70 = sub_26BEBB414(v104);
      v71 = v67[2];
      v72 = (v69 & 1) == 0;
      v73 = v71 + v72;
      if (__OFADD__(v71, v72))
      {
        goto LABEL_57;
      }

      v74 = v69;
      if (v67[3] >= v73)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v77 = v110;
          if ((v69 & 1) == 0)
          {
            goto LABEL_49;
          }
        }

        else
        {
          sub_26BE6DD70();
          v77 = v110;
          if ((v74 & 1) == 0)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
        sub_26BE69F98(v73, isUniquelyReferenced_nonNull_native);
        v75 = sub_26BEBB414(v68);
        if ((v74 & 1) != (v76 & 1))
        {
          goto LABEL_62;
        }

        v70 = v75;
        v77 = v110;
        if ((v74 & 1) == 0)
        {
LABEL_49:
          v77[(v70 >> 6) + 8] |= 1 << v70;
          *(v77[6] + 4 * v70) = v68;
          sub_26BE03890(v105, v77[7] + 40 * v70);

          __swift_destroy_boxed_opaque_existential_1(&v106);
          v78 = v77[2];
          v47 = __OFADD__(v78, 1);
          v79 = v78 + 1;
          if (v47)
          {
            goto LABEL_58;
          }

          v77[2] = v79;
          goto LABEL_26;
        }
      }

      v55 = (v77[7] + 40 * v70);
      __swift_destroy_boxed_opaque_existential_1(v55);
      sub_26BE03890(v105, v55);

      __swift_destroy_boxed_opaque_existential_1(&v106);
LABEL_26:
      a6 = v102;
      *(v102 + 16) = v77;
      v50 = v86;
      goto LABEL_27;
    }

    v23 = *(v20 + 8 * v28);
    ++v19;
    if (v23)
    {
      v19 = v28;
LABEL_11:
      v29 = __clz(__rbit64(v23)) | (v19 << 6);
      v30 = *(*(v104 + 48) + 4 * v29);
      v31 = (*(v104 + 56) + 16 * v29);
      v33 = *v31;
      v32 = v31[1];
      sub_26BE00608(*v31, v32);
      sub_26BE00608(v33, v32);
      v34 = swift_isUniquelyReferenced_nonNull_native();
      *&v109[0] = *(a6 + 8);
      v35 = *&v109[0];
      v37 = sub_26BEBB414(v30);
      v38 = *(v35 + 16);
      v39 = (v36 & 1) == 0;
      v40 = v38 + v39;
      if (__OFADD__(v38, v39))
      {
        goto LABEL_59;
      }

      v41 = v36;
      if (*(v35 + 24) >= v40)
      {
        if (v34)
        {
          v44 = *&v109[0];
          if ((v36 & 1) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_4;
        }

        sub_26BE6DC08();
        v44 = *&v109[0];
        if (v41)
        {
          goto LABEL_4;
        }

LABEL_18:
        v44[(v37 >> 6) + 8] |= 1 << v37;
        *(v44[6] + 4 * v37) = v30;
        v45 = (v44[7] + 16 * v37);
        *v45 = v33;
        v45[1] = v32;
        sub_26BE00258(v33, v32);
        v46 = v44[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (!v47)
        {
          v44[2] = v48;
          goto LABEL_5;
        }

        goto LABEL_60;
      }

      sub_26BE69D04(v40, v34);
      v42 = sub_26BEBB414(v30);
      if ((v41 & 1) != (v43 & 1))
      {
        goto LABEL_62;
      }

      v37 = v42;
      v44 = *&v109[0];
      if ((v41 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_4:
      v25 = (v44[7] + 16 * v37);
      v26 = *v25;
      v27 = v25[1];
      *v25 = v33;
      v25[1] = v32;
      sub_26BE00258(v26, v27);
      sub_26BE00258(v33, v32);
LABEL_5:
      v23 &= v23 - 1;
      a6 = v102;
      *(v102 + 8) = v44;
      v20 = v93;
      v24 = v92;
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  result = sub_26C00AF8C();
  __break(1u);
  return result;
}

void MLS.TreeKEMPrivateKey.pathSecretsInsert(index:secret:)(unsigned int *a1, uint64_t a2, unint64_t a3)
{
  v6 = *a1;
  sub_26BE00608(a2, a3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + 8);
  sub_26BE56E54(a2, a3, v6, isUniquelyReferenced_nonNull_native);
  *(v3 + 8) = v8;
}

unsigned int *MLS.TreeKEMPrivateKey.privateKeyCacheInsert(index:key:)(unsigned int *result, uint64_t a2)
{
  v3 = *v2;
  if ((v3 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v5 = *result;
    v6[55] = v3 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
    sub_26BE038A8(a2, v6);
    sub_26BE4D0C0(v6, v5);
  }

  return result;
}

void sub_26BE528E8(__int16 *a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v73 = sub_26C009C8C();
  v62 = *(v73 - 8);
  v11 = MEMORY[0x28223BE20](v73);
  v12 = MEMORY[0x28223BE20](v11);
  v13 = MEMORY[0x28223BE20](v12);
  v66 = &v59 - v14;
  MEMORY[0x28223BE20](v13);
  v72 = &v59 - v17;
  v18 = *v6;
  if ((v18 - 3) < 0xFFFFFFFE)
  {
LABEL_20:
    __break(1u);
    return;
  }

  *&v74 = a3;
  *(&v74 + 1) = a4;
  v60 = v16;
  v61 = v15;
  v19 = *a1;
  v20 = *(a1 + 1);
  v21 = *(a1 + 4);
  v22 = *(a1 + 3);
  v23 = *a2;
  LOBYTE(v76) = v18 != 1;
  MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
  v24 = v77;
  v68 = v78;
  v69 = *(&v77 + 1);
  v25 = v79;
  v67 = *(&v78 + 1);
  LOWORD(v77) = v19;
  *(&v77 + 1) = v20;
  LODWORD(v78) = v21;
  *(&v78 + 1) = v22;
  v81 = v23;
  MLS.TreeKEMPublicKey.filteredDirectPath(index:)(&v81, &v76);
  if (v5)
  {

    return;
  }

  v71 = 0;
  v65 = v25;
  v26 = v76;
  sub_26BF92810(v23, &v77);
  sub_26BE2E258(&v77, &qword_28045E6A8, &qword_26C0112B0);
  v27 = *(&v74 + 1);
  v28 = v74;
  sub_26BE00608(v74, *(&v74 + 1));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v77 = *(v6 + 1);
  sub_26BE56E54(v28, v27, v23, isUniquelyReferenced_nonNull_native);
  *(v6 + 1) = v77;
  v64 = v26;
  v30 = *(v26 + 16);
  sub_26BE00608(v28, v27);
  v63 = v30;
  if (v30)
  {
    v75 = 0;
    v70 = (v62 + 8);
    v31 = 32;
    v33 = v65;
    v32 = v66;
    v35 = v67;
    v34 = v68;
    v80 = v24;
    while (1)
    {
      LOBYTE(v77) = v24;
      *(&v77 + 1) = v69;
      *&v78 = v34;
      *(&v78 + 1) = v35;
      v79 = v33;
      v38 = *(&v74 + 1);
      v39 = v74;
      v76 = v74;
      sub_26BE00608(v74, *(&v74 + 1));
      sub_26C009C5C();
      v40 = v71;
      MLS.Cryptography.Ciphersuite.deriveSecret(_:_:)(v32, 1752457584, 0xE400000000000000, v72);
      if (v40)
      {
        (*v70)(v32, v73);
        sub_26BE00258(v39, v38);

        return;
      }

      v41 = *v70;
      (*v70)(v32, v73);
      sub_26C009C3C();
      sub_26BE00258(v39, v38);
      if (v75 >= *(v64 + 16))
      {
        break;
      }

      v71 = 0;
      v42 = v77;
      v43 = *(v64 + v31);
      sub_26BE00608(v77, *(&v77 + 1));
      v44 = swift_isUniquelyReferenced_nonNull_native();
      *&v77 = *(v6 + 1);
      v74 = v42;
      sub_26BE56E54(v42, *(&v42 + 1), v43, v44);
      *(v6 + 1) = v77;
      v45 = sub_26BEBB414(v43);
      if (v46)
      {
        v47 = v45;
        v48 = swift_isUniquelyReferenced_nonNull_native();
        v49 = *(v6 + 2);
        *&v76 = v49;
        LOBYTE(v24) = v80;
        v35 = v67;
        if (!v48)
        {
          sub_26BE6DD70();
          v49 = v76;
        }

        sub_26BE03890((*(v49 + 56) + 40 * v47), &v77);
        sub_26C000A2C(v47, v49);
        v41(v72, v73);
        *(v6 + 2) = v49;
      }

      else
      {
        v41(v72, v73);
        v79 = 0;
        v77 = 0u;
        v78 = 0u;
        LOBYTE(v24) = v80;
        v35 = v67;
      }

      v36 = v75 + 1;
      sub_26BE2E258(&v77, &qword_28045E6A8, &qword_26C0112B0);
      v31 += 16;
      v75 = v36;
      v37 = v63 == v36;
      v33 = v65;
      v32 = v66;
      v34 = v68;
      if (v37)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v33 = v65;
  v35 = v67;
  v34 = v68;
LABEL_15:

  LOBYTE(v77) = v24;
  *(&v77 + 1) = v69;
  *&v78 = v34;
  *(&v78 + 1) = v35;
  v79 = v33;
  v50 = *(&v74 + 1);
  v51 = v74;
  v76 = v74;
  sub_26BE00608(v74, *(&v74 + 1));
  v52 = v60;
  sub_26C009C5C();
  v53 = v61;
  v54 = v71;
  MLS.Cryptography.Ciphersuite.deriveSecret(_:_:)(v52, 1752457584, 0xE400000000000000, v61);
  if (v54)
  {
    (*(v62 + 8))(v52, v73);
    sub_26BE00258(v51, v50);
  }

  else
  {
    v55 = v62;
    v56 = v52;
    v57 = v73;
    (*(v62 + 8))(v56, v73);
    sub_26BE00258(v51, v50);

    v58 = type metadata accessor for MLS.TreeKEMPrivateKey(0);
    (*(v55 + 40))(v6 + *(v58 + 32), v53, v57);
  }
}

void *MLS.TreeKEMPrivateKey.sharedPathSecret(to:)@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 4);
  v20[0] = *a1;
  v20[1] = v5;
  result = sub_26BE7BE10(v20, &v21);
  if (!v3)
  {
    v7 = 0;
    v8 = v21;
    v9 = *(v2 + 8);
    v10 = 1 << *(v9 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v9 + 64);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = v7;
LABEL_11:
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v16 = v15 | (v14 << 6);
      if (*(*(v9 + 48) + 4 * v16) == v21)
      {
        v17 = (*(v9 + 56) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];

        sub_26BE00608(v19, v18);

        *a2 = v8;
        *(a2 + 8) = v19;
        *(a2 + 16) = v18;
        *(a2 + 24) = 1;
        return result;
      }
    }

    while (1)
    {
      v14 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v14 >= v13)
      {
        *a2 = v21;
        *(a2 + 8) = xmmword_26C00BBD0;
        *(a2 + 24) = 0;
        return result;
      }

      v12 = *(v9 + 64 + 8 * v14);
      ++v7;
      if (v12)
      {
        v7 = v14;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_26BE5305C(uint64_t a1@<X8>)
{
  v3 = *(v1 + 4);
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 16);
    if (*(v4 + 16))
    {
      v5 = sub_26BEBB414((2 * v3));
      if (v6)
      {
        sub_26BE038A8(*(v4 + 56) + 40 * v5, a1);
      }

      else
      {
        *(a1 + 32) = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
      }
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }
}

void MLS.TreeKEMPrivateKey.decap(from:pubKey:context:path:exceptLeaves:)(int *a1, __int16 *a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v15 = *a1;
  if (*a1 < 0)
  {
    __break(1u);
LABEL_41:
    v53 = a2;
    v61 = v12;
    v62 = v6;
    v19 = a1;
    __swift_destroy_boxed_opaque_existential_1(&v65);
    LOWORD(v65) = v13;
    v66 = v14;
    v67 = v9;
    v68 = v10;
    v74 = v73;
    a6 = v53;
    sub_26BE528E8(&v65, &v74, v19, v53);
    if (v11 || (LOWORD(v65) = v13, v66 = v14, v67 = v9, v68 = v10, (MLS.TreeKEMPrivateKey.consistent(_:)(&v65) & 1) != 0))
    {
      sub_26BE2E258(&v70, &qword_28045E6A8, &qword_26C0112B0);
      sub_26BE00258(v19, v53);
      sub_26BE00258(v61, v63);
      sub_26BE00258(v64, v6);
      return;
    }

    goto LABEL_46;
  }

  v64 = a3;
  v13 = *a2;
  v14 = *(a2 + 1);
  v9 = *(a2 + 4);
  v10 = *(a2 + 3);
  v18 = *(a5 + 136);
  LOWORD(v70) = *a2;
  *(&v70 + 1) = v14;
  LODWORD(v71) = v9;
  *(&v71 + 1) = v10;
  v74 = 2 * v15;
  MLS.TreeKEMPublicKey.filteredDirectPath(index:)(&v74, &v65);
  if (v8)
  {
    return;
  }

  v62 = a4;
  v19 = *(v65 + 16);
  if (v19 != *(v18 + 16))
  {
    goto LABEL_15;
  }

  v20 = *(v7 + 4);
  if (v20 < 0)
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    sub_26BE01654();
    swift_allocError();
    *v54 = 21;
    v54[112] = 0;
    swift_willThrow();
    sub_26BE00258(v19, a6);
    sub_26BE00258(v61, v63);
    sub_26BE00258(v64, v62);
    sub_26BE2E258(&v70, &qword_28045E6A8, &qword_26C0112B0);
    return;
  }

  v60 = v7;
  v63 = v65;
  v21 = 0;
  if (!v19)
  {
    v73 = 0;
    goto LABEL_14;
  }

  v22 = 2 * v20;
  v23 = (v65 + 40);
  while (1)
  {
    v24 = *(v23 - 2);
    v25 = __clz(__rbit32(~v24));
    v26 = v25 > 0x1E;
    LOBYTE(v25) = v25 + 1;
    v73 = v24;
    v27 = v24 >> v25;
    v28 = v22 >> v25;
    if (v26 || v28 == v27)
    {
      break;
    }

    ++v21;
    v23 += 2;
    if (v19 == v21)
    {
      goto LABEL_14;
    }
  }

  v30 = *v23;

  if (v21 == v19)
  {
    goto LABEL_14;
  }

  a6 = sub_26BE5A08C(v30, a6);

  if (v21 < *(v18 + 16))
  {
    v32 = a6[2];
    v33 = v18 + 24 * v21;
    v35 = *(v33 + 48);
    v34 = v33 + 48;
    if (v32 == *(v35 + 16))
    {
      if (!v32)
      {
LABEL_35:

        sub_26BE01654();
        swift_allocError();
        *v43 = 23;
        *(v43 + 8) = 0u;
        *(v43 + 24) = 0u;
        *(v43 + 40) = 0u;
        *(v43 + 56) = 0u;
        *(v43 + 72) = 0u;
        *(v43 + 88) = 0u;
        *(v43 + 104) = 0;
        *(v43 + 112) = 23;
        goto LABEL_16;
      }

      v36 = 0;
      v37 = 0;
      v38 = *(v60 + 8);
      v61 = *(v60 + 16);
      v58 = a6;
      v59 = a6 + 4;
      v55 = v34;
      v56 = v38;
      v57 = a6[2];
      while (v37 < a6[2])
      {
        v19 = *(v59 + v36);
        if (*(v38 + 16))
        {
          sub_26BEBB414(*(v59 + v36));
          v40 = v39;
        }

        else
        {
          v40 = 0;
        }

        if (*(v61 + 16))
        {
          v41 = sub_26BEBB414(v19);
          if (v42)
          {
            sub_26BE038A8(*(v61 + 56) + 40 * v41, &v70);
            sub_26BE2E258(&v70, &qword_28045E6A8, &qword_26C0112B0);
LABEL_34:
            if (v57 == v37)
            {
              goto LABEL_35;
            }

            if (v37 >= v58[2])
            {
              goto LABEL_48;
            }

            v44 = *(v59 + v36);

            LODWORD(v65) = v44;
            MLS.TreeKEMPrivateKey.getPrivateKey(nodeIndex:)(&v65, &v70);
            if (v37 >= *(*v55 + 16))
            {
              goto LABEL_49;
            }

            v45 = (*v55 + 8 * v36);
            v47 = v45[6];
            v46 = v45[7];
            v48 = v45[4];
            v49 = v45[5];
            sub_26BE2E1F0(&v70, &v65, &qword_28045E6A8, &qword_26C0112B0);
            if (v68)
            {
              sub_26BE00608(v47, v46);
              sub_26BE00608(v48, v49);

              v63 = v49;
              v12 = v48;
              v51 = v68;
              v50 = v69;
              __swift_project_boxed_opaque_existential_1(&v65, v68);
              v52 = v64;
              v64 = v47;
              a1 = (*(v50 + 24))(0x6150657461647055, 0xEE0065646F4E6874, v52, v62, v47, v46, v12, v63, v51, v50);
              v6 = v46;
              v11 = 0;
              goto LABEL_41;
            }

            goto LABEL_50;
          }
        }

        v72 = 0;
        v70 = 0u;
        v71 = 0u;
        sub_26BE2E258(&v70, &qword_28045E6A8, &qword_26C0112B0);
        if (v40)
        {
          goto LABEL_34;
        }

        ++v37;
        v36 += 4;
        a6 = v58;
        v38 = v56;
        if (v57 == v37)
        {
          goto LABEL_35;
        }
      }

      goto LABEL_45;
    }

LABEL_14:

LABEL_15:

    sub_26BE01654();
    swift_allocError();
    *v31 = 25;
    *(v31 + 8) = 0u;
    *(v31 + 24) = 0u;
    *(v31 + 40) = 0u;
    *(v31 + 56) = 0u;
    *(v31 + 72) = 0u;
    *(v31 + 88) = 0u;
    *(v31 + 104) = 0;
    *(v31 + 112) = 23;
LABEL_16:
    swift_willThrow();
    return;
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

uint64_t MLS.TreeKEMPrivateKey.consistent(_:)(unsigned __int16 *a1)
{
  if (*a1 != *v1)
  {
    v15 = 0;
    return v15 & 1;
  }

  v99 = v2;
  v3 = *(v1 + 2);
  v4 = v3 + 64;
  v5 = *(a1 + 3);
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v3 + 64);
  v9 = *(a1 + 4);
  v10 = (v6 + 63) >> 6;
  v11 = v9 != 0;
  v12 = v9 - 1;
  v13 = !v11;
  v135 = v12;
  v136 = v13;
  v104 = 2 * v12;
  v103 = v5 + 32;

  v14 = 0;
  v100 = v3 + 64;
  v101 = v3;
  v102 = v5;
  while (1)
  {
    if (!v8)
    {
      if (v10 <= v14 + 1)
      {
        v19 = v14 + 1;
      }

      else
      {
        v19 = v10;
      }

      v20 = v19 - 1;
      while (1)
      {
        v18 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v18 >= v10)
        {
          v8 = 0;
          v129 = 0u;
          v130 = 0u;
          v14 = v20;
          v128 = 0u;
          goto LABEL_24;
        }

        v8 = *(v4 + 8 * v18);
        ++v14;
        if (v8)
        {
          v14 = v18;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_93:

      goto LABEL_94;
    }

    v18 = v14;
LABEL_23:
    v21 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v22 = v21 | (v18 << 6);
    v23 = *(*(v3 + 48) + 4 * v22);
    sub_26BE038A8(*(v3 + 56) + 40 * v22, &v119);
    LODWORD(v128) = v23;
    sub_26BE03890(&v119, &v128 + 8);
LABEL_24:
    v134[1] = v129;
    v134[2] = v130;
    v134[0] = v128;
    if (!v130)
    {

      v15 = 1;
      return v15 & 1;
    }

    v24 = LODWORD(v134[0]);
    result = sub_26BE03890((v134 + 8), v131);
    if (v136)
    {
      break;
    }

    if (v135 < 0)
    {
      goto LABEL_97;
    }

    if (v24 > v104)
    {
LABEL_88:
      sub_26BE01654();
      swift_allocError();
      *v87 = 30;
      *(v87 + 8) = 0u;
      *(v87 + 24) = 0u;
      *(v87 + 40) = 0u;
      *(v87 + 56) = 0u;
      *(v87 + 72) = 0u;
      *(v87 + 88) = 0u;
      *(v87 + 104) = 0;
      *(v87 + 112) = 23;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(v131);
      return v15 & 1;
    }

    if (*(v5 + 16) <= v24)
    {
      goto LABEL_12;
    }

    v26 = (v103 + 136 * v24);
    memmove(&v128, v26, 0x88uLL);
    if (sub_26BE58C10(&v128) == 1)
    {
      goto LABEL_12;
    }

    v117[0] = *v26;
    v27 = v26[1];
    v28 = v26[2];
    v29 = v26[4];
    v117[3] = v26[3];
    v117[4] = v29;
    v117[1] = v27;
    v117[2] = v28;
    v30 = v26[5];
    v31 = v26[6];
    v32 = v26[7];
    v118 = *(v26 + 16);
    v117[6] = v31;
    v117[7] = v32;
    v117[5] = v30;
    memmove(&v119, v26, 0x88uLL);
    if (sub_26BE58C10(&v119) == 1)
    {
      goto LABEL_88;
    }

    v115[6] = v125;
    v115[7] = v126;
    v116 = v127;
    v115[2] = v121;
    v115[3] = v122;
    v115[4] = v123;
    v115[5] = v124;
    v115[0] = v119;
    v115[1] = v120;
    if (sub_26BE592C4(v115) == 1)
    {
      v33 = sub_26BE13A3C(v115);
      v34 = *v33;
      v97 = v33[1];
      v98 = v34;
      v112 = v125;
      v113 = v126;
      v114 = v127;
      v108 = v121;
      v109 = v122;
      v110 = v123;
      v111 = v124;
      v106 = v119;
      v107 = v120;
      v35 = sub_26BE13A3C(&v106);
      v36 = *v35;
      v91 = v35[1];
      v37 = v35[2];
      v93 = v35[3];
      v94 = v37;
      v95 = v35[4];
      v38 = v132;
      v39 = v133;
      v92 = __swift_project_boxed_opaque_existential_1(v131, v132);
      v40 = *(v39 + 8);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v88 = &v88;
      v96 = *(AssociatedTypeWitness - 8);
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v42 = &v88 - v41;
      v89 = *(v40 + 32);
      sub_26BE00608(v36, v91);
      sub_26BE00608(v94, v93);

      v89(v38, v40);
      v43 = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v45 = (*(AssociatedConformanceWitness + 16))(v43, AssociatedConformanceWitness);
      v47 = v46;
      result = (*(v96 + 8))(v42, v43);
      v48 = v97 >> 62;
      v49 = v47 >> 62;
      if (v97 >> 62 == 3)
      {
        v50 = 0;
        v4 = v100;
        v5 = v102;
        v51 = v98;
        if (!v98 && v97 == 0xC000000000000000 && v47 >> 62 == 3)
        {
          v50 = 0;
          if (!v45 && v47 == 0xC000000000000000)
          {
            v16 = 0;
            v17 = 0xC000000000000000;
            goto LABEL_11;
          }
        }

LABEL_57:
        if (v49 <= 1)
        {
LABEL_58:
          if (v49)
          {
            LODWORD(v72) = HIDWORD(v45) - v45;
            if (__OFSUB__(HIDWORD(v45), v45))
            {
              goto LABEL_100;
            }

            v72 = v72;
          }

          else
          {
            v72 = BYTE6(v47);
          }

          goto LABEL_67;
        }
      }

      else
      {
        v51 = v98;
        v4 = v100;
        if (v48 == 2)
        {
          v70 = *(v98 + 16);
          v69 = *(v98 + 24);
          v71 = __OFSUB__(v69, v70);
          v50 = v69 - v70;
          v5 = v102;
          if (v71)
          {
            goto LABEL_102;
          }

          goto LABEL_57;
        }

        v5 = v102;
        if (v48 == 1)
        {
          LODWORD(v50) = HIDWORD(v98) - v98;
          if (__OFSUB__(HIDWORD(v98), v98))
          {
            goto LABEL_104;
          }

          v50 = v50;
          if (v49 <= 1)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v50 = BYTE6(v97);
          if (v49 <= 1)
          {
            goto LABEL_58;
          }
        }
      }

      if (v49 != 2)
      {
        if (v50)
        {
          goto LABEL_90;
        }

LABEL_10:
        v16 = v45;
        v17 = v47;
LABEL_11:
        sub_26BE00258(v16, v17);
        sub_26BE2E258(v117, &qword_28045E4C8, &unk_26C0112A0);
        v3 = v101;
        goto LABEL_12;
      }

      v74 = *(v45 + 16);
      v73 = *(v45 + 24);
      v71 = __OFSUB__(v73, v74);
      v72 = v73 - v74;
      if (v71)
      {
        goto LABEL_99;
      }

LABEL_67:
      if (v50 == v72)
      {
        if (v50 < 1)
        {
          goto LABEL_10;
        }

        v75 = v97;
        sub_26BE00608(v45, v47);
        v76 = v99;
        LOBYTE(v75) = sub_26BECB6A4(v51, v75, v45, v47);
        v99 = v76;
        sub_26BE2E258(v117, &qword_28045E4C8, &unk_26C0112A0);
        sub_26BE00258(v45, v47);
        if ((v75 & 1) == 0)
        {
          goto LABEL_93;
        }

        v3 = v101;
        v5 = v102;
        goto LABEL_12;
      }

LABEL_90:

      sub_26BE00258(v45, v47);
      sub_26BE2E258(v117, &qword_28045E4C8, &unk_26C0112A0);
LABEL_94:
      __swift_destroy_boxed_opaque_existential_1(v131);
      v15 = 0;
      return v15 & 1;
    }

    v52 = sub_26BE13A3C(v115);
    v112 = v125;
    v113 = v126;
    v114 = v127;
    v108 = v121;
    v109 = v122;
    v110 = v123;
    v111 = v124;
    v106 = v119;
    v107 = v120;
    v95 = sub_26BE13A3C(&v106);
    v53 = *v52;
    v97 = v52[1];
    v98 = v53;
    v55 = v132;
    v54 = v133;
    __swift_project_boxed_opaque_existential_1(v131, v132);
    v56 = *(v54 + 8);
    v94 = swift_getAssociatedTypeWitness();
    v92 = &v88;
    v96 = *(v94 - 8);
    MEMORY[0x28223BE20](v94);
    v58 = &v88 - v57;
    v93 = *(v56 + 32);
    sub_26BE00758(v95, &v105);
    v93(v55, v56);
    v59 = v94;
    v60 = swift_getAssociatedConformanceWitness();
    v61 = (*(v60 + 16))(v59, v60);
    v63 = v62;
    result = (*(v96 + 8))(v58, v59);
    v64 = v97 >> 62;
    v65 = v63 >> 62;
    if (v97 >> 62 == 3)
    {
      v66 = 0;
      v5 = v102;
      if (v98)
      {
        goto LABEL_63;
      }

      v3 = v101;
      if (v97 == 0xC000000000000000 && v63 >> 62 == 3)
      {
        v66 = 0;
        if (!v61 && v63 == 0xC000000000000000)
        {
          v67 = 0;
          v68 = 0xC000000000000000;
          goto LABEL_87;
        }
      }
    }

    else
    {
      v5 = v102;
      if (!v64)
      {
        v66 = BYTE6(v97);
LABEL_63:
        v3 = v101;
        goto LABEL_72;
      }

      if (v64 == 1)
      {
        LODWORD(v66) = HIDWORD(v98) - v98;
        v3 = v101;
        if (__OFSUB__(HIDWORD(v98), v98))
        {
          goto LABEL_105;
        }

        v66 = v66;
      }

      else
      {
        v78 = *(v98 + 16);
        v77 = *(v98 + 24);
        v71 = __OFSUB__(v77, v78);
        v66 = v77 - v78;
        v3 = v101;
        if (v71)
        {
          goto LABEL_103;
        }
      }
    }

LABEL_72:
    if (v65 > 1)
    {
      if (v65 != 2)
      {
        if (v66)
        {
LABEL_91:

          sub_26BE00258(v61, v63);
          sub_26BE2E258(v117, &qword_28045E4C8, &unk_26C0112A0);
          goto LABEL_94;
        }

LABEL_86:
        v67 = v61;
        v68 = v63;
LABEL_87:
        sub_26BE00258(v67, v68);
        sub_26BE2E258(v117, &qword_28045E4C8, &unk_26C0112A0);
        v4 = v100;
        goto LABEL_12;
      }

      v81 = *(v61 + 16);
      v80 = *(v61 + 24);
      v71 = __OFSUB__(v80, v81);
      v79 = v80 - v81;
      if (v71)
      {
        goto LABEL_101;
      }
    }

    else if (v65)
    {
      LODWORD(v79) = HIDWORD(v61) - v61;
      if (__OFSUB__(HIDWORD(v61), v61))
      {
        goto LABEL_98;
      }

      v79 = v79;
    }

    else
    {
      v79 = BYTE6(v63);
    }

    if (v66 != v79)
    {
      goto LABEL_91;
    }

    if (v66 < 1)
    {
      goto LABEL_86;
    }

    v82 = v63;
    v83 = v61;
    v84 = v61;
    v85 = v97;
    sub_26BE00608(v84, v82);
    v86 = v99;
    LOBYTE(v85) = sub_26BECB6A4(v98, v85, v83, v82);
    v99 = v86;
    sub_26BE2E258(v117, &qword_28045E4C8, &unk_26C0112A0);
    sub_26BE00258(v83, v82);
    if ((v85 & 1) == 0)
    {
      goto LABEL_93;
    }

    v4 = v100;
    v5 = v102;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(v131);
  }

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
  return result;
}

uint64_t sub_26BE541FC(uint64_t result)
{
  v2 = *result - 1;
  if (!*result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v2 < 0)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  v3 = v1;
  v4 = 2 * v2;
  v5 = *(v1 + 8);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_6:
    while (1)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = *(*(v5 + 48) + ((v10 << 8) | (4 * v12)));
      if (v4 < v13)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_8;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26BEEBFB0(0, *(v11 + 16) + 1, 1, v11);
      v11 = result;
    }

    v16 = *(v11 + 16);
    v15 = *(v11 + 24);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      v33 = v16 + 1;
      v18 = v11;
      v19 = *(v11 + 16);
      result = sub_26BEEBFB0((v15 > 1), v16 + 1, 1, v18);
      v17 = v33;
      v16 = v19;
      v11 = result;
    }

    *(v11 + 16) = v17;
    *(v11 + 4 * v16 + 32) = v13;
  }

  while (v8);
  while (1)
  {
LABEL_8:
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v14 >= v9)
    {
      break;
    }

    v8 = *(v5 + 64 + 8 * v14);
    ++v10;
    if (v8)
    {
      v10 = v14;
      goto LABEL_6;
    }
  }

  v20 = *(v11 + 16);
  if (v20)
  {
    v21 = 32;
    do
    {
      v22 = *(v11 + v21);
      v23 = sub_26BEBB414(v22);
      if (v24)
      {
        v25 = v23;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = *(v3 + 8);
        *&v34[0] = v27;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_26BE6DC08();
          v27 = *&v34[0];
        }

        sub_26BE00258(*(*(v27 + 56) + 16 * v25), *(*(v27 + 56) + 16 * v25 + 8));
        sub_26C000898(v25, v27);
        *(v3 + 8) = v27;
      }

      v28 = sub_26BEBB414(v22);
      if (v29)
      {
        v30 = v28;
        v31 = swift_isUniquelyReferenced_nonNull_native();
        v32 = *(v3 + 16);
        v36 = v32;
        if (!v31)
        {
          sub_26BE6DD70();
          v32 = v36;
        }

        sub_26BE03890((*(v32 + 56) + 40 * v30), v34);
        sub_26C000A2C(v30, v32);
        *(v3 + 16) = v32;
      }

      else
      {
        v35 = 0;
        memset(v34, 0, sizeof(v34));
      }

      sub_26BE2E258(v34, &qword_28045E6A8, &qword_26C0112B0);
      v21 += 4;
      --v20;
    }

    while (v20);
  }
}

void sub_26BE54498(uint64_t a1@<X8>)
{
  v3 = v1;
  v61 = *MEMORY[0x277D85DE8];
  v5 = sub_26BEE6180();
  if ((v5 & 0x10000) != 0)
  {
    goto LABEL_8;
  }

  v37 = v5;
  v7 = *v1;
  v6 = v1[1];
  v8 = v1[2];
  sub_26BE00608(*v3, v3[1]);
  sub_26BE00608(v7, v6);
  sub_26BF30764(v3, &v49);
  if (v2)
  {
    sub_26BE00258(*v3, v3[1]);
    *v3 = v7;
    v3[1] = v6;
    v3[2] = v8;
    swift_willThrow();
    goto LABEL_4;
  }

  if (BYTE8(v49))
  {
    sub_26BE00258(*v3, v3[1]);
    *v3 = v7;
    v3[1] = v6;
    v9 = v6;
    v10 = v7;
    v3[2] = v8;
LABEL_7:
    sub_26BE00258(v10, v9);
    *v3 = v7;
    v3[1] = v6;
    v3[2] = v8;
LABEL_8:
    sub_26BE01600();
    swift_allocError();
    *v11 = 1;
    goto LABEL_9;
  }

  v36 = v8;
  v12 = v49;
  sub_26BE00258(v7, v6);
  if (v12 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v13 = 5;
    swift_willThrow();
    v8 = v36;
    goto LABEL_4;
  }

  v14 = sub_26BF2A44C(v12);
  if (v15 >> 60 == 15)
  {
    v10 = *v3;
    v9 = v3[1];
    v8 = v36;
    goto LABEL_7;
  }

  v58 = v14;
  v59 = v15;
  v60 = v16;
  v17 = MEMORY[0x277D84F90];
  while (1)
  {
    v18 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      if (v18 == 2)
      {
        v19 = *(v14 + 24);
      }

      else
      {
        v19 = 0;
      }
    }

    else if (v18)
    {
      v19 = v14 >> 32;
    }

    else
    {
      v19 = BYTE6(v15);
    }

    v20 = __OFSUB__(v19, v16);
    v21 = v19 - v16;
    if (v20)
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
    }

    if (v21 < 1)
    {
      break;
    }

    v22 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_54;
    }

    if (v18 <= 1)
    {
      if (v18)
      {
        v23 = v14 >> 32;
      }

      else
      {
        v23 = BYTE6(v15);
      }

LABEL_31:
      if (v23 < v22)
      {
        goto LABEL_44;
      }

      goto LABEL_34;
    }

    if (v18 == 2)
    {
      v23 = *(v14 + 24);
      goto LABEL_31;
    }

    if (v22 > 0)
    {
LABEL_44:
      sub_26BE01600();
      swift_allocError();
      *v34 = 1;
      goto LABEL_52;
    }

LABEL_34:
    *&v40 = v14;
    *(&v40 + 1) = v15;
    if (v22 < v16)
    {
      goto LABEL_55;
    }

    *&v38[0] = v16;
    *(&v38[0] + 1) = v16 + 1;
    sub_26BE00608(v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    sub_26BE016A8();
    sub_26BE016FC();
    sub_26C008E1C();
    sub_26BE00258(v40, *(&v40 + 1));
    v60 = v22;
    sub_26BE2E2B8(&v40);
    v55 = v46;
    v56 = v47;
    v57 = v48;
    v51 = v42;
    v52 = v43;
    v53 = v44;
    v54 = v45;
    v49 = v40;
    v50 = v41;
    sub_26BE2E1F0(&v40, v38, &qword_28045E4C8, &unk_26C0112A0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_26BEEB900(0, v17[2] + 1, 1, v17);
    }

    v25 = v17[2];
    v24 = v17[3];
    if (v25 >= v24 >> 1)
    {
      v17 = sub_26BEEB900((v24 > 1), v25 + 1, 1, v17);
    }

    v38[6] = v55;
    v38[7] = v56;
    v39 = v57;
    v38[2] = v51;
    v38[3] = v52;
    v38[4] = v53;
    v38[5] = v54;
    v38[0] = v49;
    v38[1] = v50;
    sub_26BE2E258(v38, &qword_28045E4C8, &unk_26C0112A0);
    v17[2] = v25 + 1;
    v26 = &v17[17 * v25];
    *(v26 + 2) = v40;
    v27 = v44;
    v29 = v41;
    v28 = v42;
    *(v26 + 5) = v43;
    *(v26 + 6) = v27;
    *(v26 + 3) = v29;
    *(v26 + 4) = v28;
    v31 = v46;
    v30 = v47;
    v32 = v45;
    v26[20] = v48;
    *(v26 + 8) = v31;
    *(v26 + 9) = v30;
    *(v26 + 7) = v32;
    v14 = v58;
    v15 = v59;
    v16 = v60;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v33 = *(v14 + 24);
    }

    else
    {
      v33 = 0;
    }
  }

  else if (v18)
  {
    v33 = v14 >> 32;
  }

  else
  {
    v33 = BYTE6(v15);
  }

  if (__OFSUB__(v33, v16))
  {
    goto LABEL_56;
  }

  if (v33 == v16)
  {
    sub_26BE00258(v14, v15);
    sub_26BE00258(v7, v6);
    LOWORD(v40) = v37;
    *&v49 = v17;
    MLS.TreeKEMPublicKey.init(ciphersuiteID:ratchetTree:)(&v40, &v49, a1);
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v35 = 0;
    v35[112] = 1;
LABEL_52:
    swift_willThrow();

    sub_26BE00258(v58, v59);
    v8 = v36;
LABEL_4:
    sub_26BE00258(*v3, v3[1]);
    *v3 = v7;
    v3[1] = v6;
    v3[2] = v8;
LABEL_9:
    swift_willThrow();
  }
}

void sub_26BE54A40(unsigned __int16 *a1)
{
  v77 = *MEMORY[0x277D85DE8];
  LOWORD(v70) = bswap32(*a1) >> 16;
  v3 = MEMORY[0x277D838B0];
  v4 = MEMORY[0x277CC9C18];
  v75 = MEMORY[0x277D838B0];
  v76 = MEMORY[0x277CC9C18];
  v73 = &v70;
  v74 = &v70 + 2;
  __swift_project_boxed_opaque_existential_1(&v73, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v73);
  LODWORD(v70) = bswap32(*(a1 + 1));
  v75 = v3;
  v76 = v4;
  v73 = &v70;
  v74 = &v70 + 4;
  v5 = a1;
  __swift_project_boxed_opaque_existential_1(&v73, v3);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v73);
  type metadata accessor for MLS.TreeKEMPrivateKey(0);
  sub_26C009C3C();
  v6 = v73;
  v7 = v74;
  v8 = v74 >> 62;
  if ((v74 >> 62) > 1)
  {
    v9 = 0;
    if (v8 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(v73 + 2);
    v10 = *(v73 + 3);
    v9 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v8)
  {
    v9 = BYTE6(v74);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(v6), v6))
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
  }

  v9 = HIDWORD(v6) - v6;
LABEL_10:
  v12 = sub_26BF30414(v9);
  if (v1)
  {
    v13 = v6;
    v14 = v7;
    goto LABEL_12;
  }

  v15 = v12;
  sub_26BE11228(v6, v7);
  sub_26BE00258(v6, v7);
  v16 = v15 + v9;
  if (__OFADD__(v15, v9))
  {
    goto LABEL_89;
  }

  v17 = v16 + 6;
  if (__OFADD__(v16, 6))
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v18 = *(v5 + 1);
  *&v70 = bswap64(*(v18 + 16));
  v19 = MEMORY[0x277D838B0];
  v75 = MEMORY[0x277D838B0];
  v76 = MEMORY[0x277CC9C18];
  v73 = &v70;
  v74 = &v70 + 8;
  __swift_project_boxed_opaque_existential_1(&v73, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v73);
  v20 = *(v18 + 16);
  v65 = v18;
  v61 = v17;
  if (v20)
  {
    v21 = sub_26BE3277C(v20, 0);
    v66 = sub_26BE34100();

    sub_26BE2DA4C();
    if (v66 != v20)
    {
      goto LABEL_93;
    }
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v73 = v21;
  sub_26BE5667C(&v73);
  v22 = v73;
  v64 = *(v73 + 2);
  if (!v64)
  {

    v24 = 8;
LABEL_57:
    if (__OFADD__(v61, v24))
    {
      goto LABEL_91;
    }

    v68 = v61 + v24;
    v44 = *(v5 + 2);
    *&v70 = bswap64(*(v44 + 16));
    v75 = v19;
    v76 = MEMORY[0x277CC9C18];
    v73 = &v70;
    v74 = &v70 + 8;
    __swift_project_boxed_opaque_existential_1(&v73, v19);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v73);
    v45 = *(v44 + 16);
    if (v45)
    {
      v46 = sub_26BE3277C(*(v44 + 16), 0);
      v47 = sub_26BE34100();

      sub_26BE2DA4C();
      if (v47 == v45)
      {
        goto LABEL_62;
      }

      __break(1u);
    }

    v46 = MEMORY[0x277D84F90];
LABEL_62:
    v73 = v46;
    sub_26BE5667C(&v73);
    v48 = 0;
    v49 = v73;
    v50 = *(v73 + 2);
    v51 = 8;
    while (v50 != v48)
    {
      if (v48 >= *(v49 + 2))
      {
        goto LABEL_79;
      }

      if (!*(v44 + 16))
      {
        goto LABEL_80;
      }

      v52 = *&v49[4 * v48 + 32];
      v53 = sub_26BEBB414(v52);
      if ((v54 & 1) == 0)
      {
        goto LABEL_81;
      }

      sub_26BE038A8(*(v44 + 56) + 40 * v53, &v73);
      v69 = bswap32(v52);
      v71 = MEMORY[0x277D838B0];
      v72 = MEMORY[0x277CC9C18];
      *&v70 = &v69;
      *(&v70 + 1) = &v70;
      __swift_project_boxed_opaque_existential_1(&v70, MEMORY[0x277D838B0]);
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v70);
      sub_26BE10BE4(&v73);
      v56 = v55;
      __swift_destroy_boxed_opaque_existential_1(&v73);
      v57 = v56 + 4;
      if (__OFADD__(v56, 4))
      {
        goto LABEL_82;
      }

      ++v48;
      v58 = __OFADD__(v51, v57);
      v51 += v57;
      if (v58)
      {
        __break(1u);
        break;
      }
    }

    if (__OFADD__(v68, v51))
    {
      __break(1u);
    }

    return;
  }

  v60 = v5;
  v23 = 0;
  v24 = 8;
  v63 = v73;
  while (1)
  {
    if (v23 >= *(v22 + 2))
    {
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
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
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    if (!*(v18 + 16))
    {
      goto LABEL_76;
    }

    v25 = *&v22[4 * v23 + 32];
    v26 = sub_26BEBB414(v25);
    if ((v27 & 1) == 0)
    {
      goto LABEL_77;
    }

    v67 = v24;
    v28 = (*(v18 + 56) + 16 * v26);
    v30 = *v28;
    v29 = v28[1];
    LODWORD(v70) = bswap32(v25);
    v75 = v19;
    v76 = MEMORY[0x277CC9C18];
    v73 = &v70;
    v74 = &v70 + 4;
    __swift_project_boxed_opaque_existential_1(&v73, v19);
    sub_26BE00608(v30, v29);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v73);
    v31 = v29 >> 62;
    if ((v29 >> 62) > 1)
    {
      if (v31 != 2)
      {
        v32 = 0;
LABEL_38:
        LOBYTE(v70) = v32;
        v75 = v19;
        v76 = MEMORY[0x277CC9C18];
        v73 = &v70;
        v74 = &v70 + 1;
        __swift_project_boxed_opaque_existential_1(&v73, v19);
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v73);
        v36 = 5;
        goto LABEL_40;
      }

      v34 = *(v30 + 16);
      v33 = *(v30 + 24);
      v32 = v33 - v34;
      if (__OFSUB__(v33, v34))
      {
        goto LABEL_83;
      }

      if ((v32 & 0x8000000000000000) != 0)
      {
        break;
      }

      goto LABEL_33;
    }

    if (!v31)
    {
      v32 = BYTE6(v29);
      goto LABEL_33;
    }

    v35 = HIDWORD(v30) - v30;
    if (__OFSUB__(HIDWORD(v30), v30))
    {
      goto LABEL_84;
    }

    v32 = v35;
    if ((v35 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_33:
    if (v32 <= 0x3F)
    {
      goto LABEL_38;
    }

    if (v32 >> 14)
    {
      if (v32 >> 30)
      {
        break;
      }

      LODWORD(v70) = bswap32(v32 | 0x80000000);
      v75 = v19;
      v76 = MEMORY[0x277CC9C18];
      v73 = &v70;
      v74 = &v70 + 4;
      __swift_project_boxed_opaque_existential_1(&v73, v19);
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v73);
      v36 = 8;
    }

    else
    {
      LOWORD(v70) = bswap32(v32 | 0x4000) >> 16;
      v75 = v19;
      v76 = MEMORY[0x277CC9C18];
      v73 = &v70;
      v74 = &v70 + 2;
      __swift_project_boxed_opaque_existential_1(&v73, v19);
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v73);
      v36 = 6;
    }

LABEL_40:
    v75 = MEMORY[0x277CC9318];
    v76 = MEMORY[0x277CC9300];
    v73 = v30;
    v74 = v29;
    v37 = __swift_project_boxed_opaque_existential_1(&v73, MEMORY[0x277CC9318]);
    v38 = *v37;
    v39 = v37[1];
    v40 = v39 >> 62;
    if ((v39 >> 62) > 1)
    {
      if (v40 != 2)
      {
        *(&v70 + 6) = 0;
        *&v70 = 0;
        sub_26BE00608(v30, v29);
        sub_26C00908C();
        goto LABEL_53;
      }

      v62 = v36;
      v42 = *(v38 + 16);
      v41 = *(v38 + 24);
      sub_26BE00608(v30, v29);
      if (sub_26C008E9C() && __OFSUB__(v42, sub_26C008ECC()))
      {
        goto LABEL_87;
      }

      if (__OFSUB__(v41, v42))
      {
        goto LABEL_86;
      }

      goto LABEL_51;
    }

    if (v40)
    {
      v43 = v38;
      if (v38 >> 32 < v38)
      {
        goto LABEL_85;
      }

      v62 = v36;
      sub_26BE00608(v30, v29);
      if (sub_26C008E9C() && __OFSUB__(v43, sub_26C008ECC()))
      {
        goto LABEL_88;
      }

LABEL_51:
      sub_26C008EBC();
      sub_26C00908C();
      v19 = MEMORY[0x277D838B0];
      v36 = v62;
      goto LABEL_53;
    }

    *&v70 = *v37;
    WORD4(v70) = v39;
    BYTE10(v70) = BYTE2(v39);
    BYTE11(v70) = BYTE3(v39);
    BYTE12(v70) = BYTE4(v39);
    BYTE13(v70) = BYTE5(v39);
    sub_26BE00608(v30, v29);
    sub_26C00908C();
LABEL_53:
    __swift_destroy_boxed_opaque_existential_1(&v73);
    sub_26BE00258(v30, v29);
    v24 = v67 + v36 + v32;
    if (__OFADD__(v67, v36 + v32))
    {
      goto LABEL_78;
    }

    ++v23;
    v18 = v65;
    v22 = v63;
    if (v64 == v23)
    {

      v5 = v60;
      goto LABEL_57;
    }
  }

  sub_26BE01600();
  swift_allocError();
  *v59 = 3;
  swift_willThrow();

  v13 = v30;
  v14 = v29;
LABEL_12:
  sub_26BE00258(v13, v14);
}

uint64_t sub_26BE553F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x277D838B0];
  v14[4] = MEMORY[0x277CC9C18];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v14, MEMORY[0x277D838B0]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_26BF2EA50(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_26BF2EB08(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_26BF2EB84(v5, v6);
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

void *sub_26BE554BC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v123 = *MEMORY[0x277D85DE8];
  v5 = sub_26C009C8C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v108 - v10;
  v12 = sub_26BEE6180();
  if ((v12 & 0x10000) != 0 || (v116 = v12, v13 = sub_26BEE6028(), (v13 & 0x100000000) != 0))
  {
    sub_26BE01600();
    swift_allocError();
    *v19 = 1;
    return swift_willThrow();
  }

  v112 = v6;
  v113 = v5;
  v111 = v13;
  result = sub_26BF2F7B0();
  if (v2)
  {
    return result;
  }

  v121 = result;
  v122 = v15;
  sub_26C009C5C();
  v16 = sub_26BEEE594();
  if (v17)
  {
    sub_26BE01600();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
    return (*(v112 + 8))(v11, v113);
  }

  v20 = v16;
  v21 = sub_26C004AC0(MEMORY[0x277D84F90]);
  v108 = v11;
  v110 = a1;
  v109 = v9;
  if (v20)
  {
    while (1)
    {
      LODWORD(v117) = 0;
      v28 = v3[2];
      v29 = v28 + 4;
      if (__OFADD__(v28, 4))
      {
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
      }

      v30 = *v3;
      v31 = v3[1];
      v32 = v31 >> 62;
      if ((v31 >> 62) <= 1)
      {
        break;
      }

      if (v32 == 2)
      {
        v33 = *(v30 + 24);
        goto LABEL_20;
      }

      if (v29 > 0)
      {
LABEL_81:
        sub_26BE01600();
        swift_allocError();
        *v103 = 1;
        goto LABEL_84;
      }

LABEL_23:
      v114 = v20;
      v115 = v21;
      v121 = v30;
      v122 = v31;
      if (v29 < v28)
      {
        goto LABEL_92;
      }

      *&v120 = v28;
      *(&v120 + 1) = v28 + 4;
      sub_26BE00608(v30, v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
      sub_26BE016A8();
      sub_26BE016FC();
      sub_26C008E1C();
      sub_26BE00258(v121, v122);
      v34 = v117;
      v3[2] = v29;
      v36 = *v3;
      v35 = v3[1];
      sub_26BE00608(*v3, v35);
      sub_26BE00608(v36, v35);
      sub_26BF30764(v3, &v121);
      if (v122)
      {
        sub_26BE00258(*v3, v3[1]);
        *v3 = v36;
        v3[1] = v35;
        v42 = v35;
        v41 = v36;
        v3[2] = v29;
LABEL_83:
        sub_26BE00258(v41, v42);
        *v3 = v36;
        v3[1] = v35;
        v3[2] = v29;
        sub_26BE01600();
        swift_allocError();
        *v104 = 1;
LABEL_84:
        swift_willThrow();

        return (*(v112 + 8))(v11, v113);
      }

      v37 = v121;
      sub_26BE00258(v36, v35);
      v38 = v3[2];
      v39 = __OFADD__(v38, v37);
      v40 = v38 + v37;
      if (v39)
      {
        goto LABEL_93;
      }

      v41 = *v3;
      v42 = v3[1];
      v43 = v42 >> 62;
      if ((v42 >> 62) <= 1)
      {
        if (v43)
        {
          v44 = v41 >> 32;
        }

        else
        {
          v44 = BYTE6(v42);
        }

LABEL_32:
        if (v44 < v40)
        {
          goto LABEL_83;
        }

        goto LABEL_35;
      }

      if (v43 == 2)
      {
        v44 = *(v41 + 24);
        goto LABEL_32;
      }

      if (v40 > 0)
      {
        goto LABEL_83;
      }

LABEL_35:
      if (v40 < v38)
      {
        goto LABEL_94;
      }

      v45 = sub_26C00909C();
      v46 = v45;
      v48 = v47;
      v3[2] = v40;
      v49 = v47 >> 62;
      if ((v47 >> 62) > 1)
      {
        if (v49 != 2)
        {
          goto LABEL_43;
        }

        v45 = *(v45 + 16);
        v50 = *(v46 + 24);
      }

      else
      {
        if (!v49)
        {
          goto LABEL_43;
        }

        v45 = v45;
        v50 = v46 >> 32;
      }

      if (v50 < v45)
      {
        goto LABEL_95;
      }

LABEL_43:
      v51 = bswap32(v34);
      v52 = sub_26C00909C();
      v54 = v53;
      sub_26BE00258(v46, v48);
      sub_26BE00258(v36, v35);
      sub_26BE00608(v52, v54);
      v55 = v115;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v121 = v55;
      v57 = sub_26BEBB414(v51);
      v59 = *(v55 + 16);
      v60 = (v58 & 1) == 0;
      v39 = __OFADD__(v59, v60);
      v61 = v59 + v60;
      if (v39)
      {
        goto LABEL_96;
      }

      v62 = v58;
      v11 = v108;
      if (*(v55 + 24) >= v61)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v67 = v57;
          sub_26BE6DC08();
          v57 = v67;
        }
      }

      else
      {
        sub_26BE69D04(v61, isUniquelyReferenced_nonNull_native);
        v57 = sub_26BEBB414(v51);
        if ((v62 & 1) != (v63 & 1))
        {
LABEL_103:
          result = sub_26C00AF8C();
          __break(1u);
          return result;
        }
      }

      a1 = v110;
      v21 = v121;
      if (v62)
      {
        v25 = (v121[7] + 16 * v57);
        v26 = *v25;
        v27 = v25[1];
        *v25 = v52;
        v25[1] = v54;
        sub_26BE00258(v26, v27);
        sub_26BE00258(v52, v54);
      }

      else
      {
        v121[(v57 >> 6) + 8] |= 1 << v57;
        *(v21[6] + 4 * v57) = v51;
        v64 = (v21[7] + 16 * v57);
        *v64 = v52;
        v64[1] = v54;
        sub_26BE00258(v52, v54);
        v65 = v21[2];
        v39 = __OFADD__(v65, 1);
        v66 = v65 + 1;
        if (v39)
        {
          goto LABEL_97;
        }

        v21[2] = v66;
      }

      v9 = v109;
      v20 = v114 - 1;
      if (v114 == 1)
      {
        goto LABEL_9;
      }
    }

    if (v32)
    {
      v33 = v30 >> 32;
    }

    else
    {
      v33 = BYTE6(v31);
    }

LABEL_20:
    if (v33 < v29)
    {
      goto LABEL_81;
    }

    goto LABEL_23;
  }

LABEL_9:
  v115 = v21;
  v22 = sub_26BEEE594();
  if (v23)
  {
    sub_26BE01600();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();
    goto LABEL_90;
  }

  v68 = v22;
  v69 = sub_26C004BCC(MEMORY[0x277D84F90]);
  if (!v68)
  {
    v70 = v116;
    v71 = v111;
LABEL_54:
    LOWORD(v120) = v70;
    LODWORD(v121) = v71;
    v73 = v112;
    v72 = v113;
    v74 = v108;
    (*(v112 + 16))(v9, v108, v113);
    sub_26BE51E2C(&v120, &v121, v115, v69, v9, a1);
    return (*(v73 + 8))(v74, v72);
  }

  while (1)
  {
    v119 = 0;
    v76 = v3[2];
    v77 = v76 + 4;
    if (__OFADD__(v76, 4))
    {
      goto LABEL_98;
    }

    v78 = *v3;
    v79 = v3[1];
    v80 = v79 >> 62;
    if ((v79 >> 62) <= 1)
    {
      if (v80)
      {
        v81 = v78 >> 32;
      }

      else
      {
        v81 = BYTE6(v79);
      }

LABEL_64:
      if (v81 < v77)
      {
        goto LABEL_86;
      }

      goto LABEL_67;
    }

    if (v80 == 2)
    {
      v81 = *(v78 + 24);
      goto LABEL_64;
    }

    if (v77 > 0)
    {
LABEL_86:
      sub_26BE01600();
      swift_allocError();
      *v105 = 1;
      swift_willThrow();

      v11 = v108;
      goto LABEL_90;
    }

LABEL_67:
    v114 = v68;
    *&v120 = v78;
    *(&v120 + 1) = v79;
    if (v77 < v76)
    {
      goto LABEL_99;
    }

    v117 = v76;
    v118 = v76 + 4;
    sub_26BE00608(v78, v79);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    sub_26BE016A8();
    sub_26BE016FC();
    sub_26C008E1C();
    sub_26BE00258(v120, *(&v120 + 1));
    v82 = v119;
    v3[2] = v77;
    v83 = sub_26BEE6180();
    if ((v83 & 0x10000) != 0)
    {
      sub_26BE01600();
      swift_allocError();
      *v106 = 1;
      goto LABEL_89;
    }

    v84 = v83;
    v85 = sub_26BEE62D4();
    if ((v85 & 0x1FE) != 0)
    {
      break;
    }

    v86 = v85;
    v87 = sub_26BF2F7B0();
    if (v84 - 3 < 0xFFFFFFFE)
    {
      goto LABEL_101;
    }

    v89 = v87;
    v90 = v88;
    LOBYTE(v117) = v84 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
    MLS.Cryptography.Ciphersuite.importDecryptionPrivateKey(_:deviceConstrained:)(v89, v90, v86 == 1, &v121);
    v91 = bswap32(v82);
    sub_26BE00258(v89, v90);

    sub_26BE038A8(&v121, &v120);
    v92 = swift_isUniquelyReferenced_nonNull_native();
    v117 = v69;
    v93 = sub_26BEBB414(v91);
    v95 = v69[2];
    v96 = (v94 & 1) == 0;
    v39 = __OFADD__(v95, v96);
    v97 = v95 + v96;
    if (v39)
    {
      goto LABEL_100;
    }

    v98 = v94;
    a1 = v110;
    v9 = v109;
    if (v69[3] < v97)
    {
      sub_26BE69F98(v97, v92);
      v93 = sub_26BEBB414(v91);
      if ((v98 & 1) != (v99 & 1))
      {
        goto LABEL_103;
      }

LABEL_76:
      v69 = v117;
      if (v98)
      {
        goto LABEL_55;
      }

      goto LABEL_77;
    }

    if (v92)
    {
      goto LABEL_76;
    }

    v102 = v93;
    sub_26BE6DD70();
    v93 = v102;
    v69 = v117;
    if (v98)
    {
LABEL_55:
      v75 = (v69[7] + 40 * v93);
      __swift_destroy_boxed_opaque_existential_1(v75);
      sub_26BE03890(&v120, v75);
      __swift_destroy_boxed_opaque_existential_1(&v121);
      goto LABEL_56;
    }

LABEL_77:
    v69[(v93 >> 6) + 8] |= 1 << v93;
    *(v69[6] + 4 * v93) = v91;
    sub_26BE03890(&v120, v69[7] + 40 * v93);
    __swift_destroy_boxed_opaque_existential_1(&v121);
    v100 = v69[2];
    v39 = __OFADD__(v100, 1);
    v101 = v100 + 1;
    if (v39)
    {
      goto LABEL_102;
    }

    v69[2] = v101;
LABEL_56:
    v70 = v116;
    v71 = v111;
    v68 = v114 - 1;
    if (v114 == 1)
    {
      goto LABEL_54;
    }
  }

  sub_26BE01654();
  swift_allocError();
  *v107 = 5;
  v107[112] = 1;
LABEL_89:
  swift_willThrow();

  v11 = v108;
LABEL_90:
  (*(v112 + 8))(v11, v113);
}

uint64_t sub_26BE55FBC(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v2 = a2;
    v3 = result;
    if (result)
    {
      v4 = *(a2 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = 0;
        v7 = a2 + 32;
        v8 = MEMORY[0x277D84F90];
        v58 = MEMORY[0x277D84F90];
        v56 = a2 + 32;
        while (1)
        {
          v57 = v6;
          v9 = (v7 + 136 * v5);
          v10 = v5;
          while (1)
          {
            if (v10 >= *(v2 + 16))
            {
              __break(1u);
              goto LABEL_31;
            }

            v11 = v9[3];
            v72 = v9[2];
            v73 = v11;
            v78 = *(v9 + 16);
            v12 = v9[7];
            v76 = v9[6];
            v77 = v12;
            v13 = v9[5];
            v74 = v9[4];
            v75 = v13;
            v14 = v9[1];
            v70 = *v9;
            v71 = v14;
            v5 = v10 + 1;
            v15 = v8[2];
            if (v15 >= v3)
            {
              break;
            }

            sub_26BE2E1F0(&v70, &v61, &qword_28045E4C8, &unk_26C0112A0);
            result = swift_isUniquelyReferenced_nonNull_native();
            v79 = v8;
            if ((result & 1) == 0)
            {
              result = sub_26BECB854(0, v15 + 1, 1);
              v8 = v79;
            }

            v17 = v8[2];
            v16 = v8[3];
            if (v17 >= v16 >> 1)
            {
              result = sub_26BECB854((v16 > 1), v17 + 1, 1);
              v8 = v79;
            }

            v8[2] = v17 + 1;
            v18 = &v8[17 * v17];
            *(v18 + 2) = v70;
            v19 = v71;
            v20 = v72;
            v21 = v74;
            *(v18 + 5) = v73;
            *(v18 + 6) = v21;
            *(v18 + 3) = v19;
            *(v18 + 4) = v20;
            v22 = v75;
            v23 = v76;
            v24 = v77;
            v18[20] = v78;
            *(v18 + 8) = v23;
            *(v18 + 9) = v24;
            *(v18 + 7) = v22;
            v9 = (v9 + 136);
            v10 = v5;
            if (v4 == v5)
            {
              goto LABEL_28;
            }
          }

          if (v57 >= v15)
          {
            goto LABEL_32;
          }

          v25 = &v8[17 * v57];
          v61 = *(v25 + 2);
          v26 = *(v25 + 3);
          v27 = *(v25 + 4);
          v28 = *(v25 + 6);
          v64 = *(v25 + 5);
          v65 = v28;
          v62 = v26;
          v63 = v27;
          v29 = *(v25 + 7);
          v30 = *(v25 + 8);
          v31 = *(v25 + 9);
          v69 = v25[20];
          v67 = v30;
          v68 = v31;
          v66 = v29;
          sub_26BE2E1F0(&v70, v59, &qword_28045E4C8, &unk_26C0112A0);
          sub_26BE2E1F0(&v61, v59, &qword_28045E4C8, &unk_26C0112A0);
          v32 = v58;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v80 = v58;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_26BECB854(0, *(v58 + 16) + 1, 1);
            v32 = v80;
          }

          v35 = *(v32 + 16);
          v34 = *(v32 + 24);
          if (v35 >= v34 >> 1)
          {
            sub_26BECB854((v34 > 1), v35 + 1, 1);
            v32 = v80;
          }

          *(v32 + 16) = v35 + 1;
          v58 = v32;
          v36 = v32 + 136 * v35;
          *(v36 + 32) = v61;
          v37 = v62;
          v38 = v63;
          v39 = v65;
          *(v36 + 80) = v64;
          *(v36 + 96) = v39;
          *(v36 + 48) = v37;
          *(v36 + 64) = v38;
          v40 = v66;
          v41 = v67;
          v42 = v68;
          *(v36 + 160) = v69;
          *(v36 + 128) = v41;
          *(v36 + 144) = v42;
          *(v36 + 112) = v40;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_26BFD983C(v8);
            v8 = result;
          }

          if (v57 >= v8[2])
          {
            goto LABEL_33;
          }

          v43 = &v8[17 * v57];
          v59[0] = *(v43 + 2);
          v44 = *(v43 + 3);
          v45 = *(v43 + 4);
          v46 = *(v43 + 6);
          v59[3] = *(v43 + 5);
          v59[4] = v46;
          v59[1] = v44;
          v59[2] = v45;
          v47 = *(v43 + 7);
          v48 = *(v43 + 8);
          v49 = *(v43 + 9);
          v60 = v43[20];
          v59[6] = v48;
          v59[7] = v49;
          v59[5] = v47;
          *(v43 + 2) = v70;
          v50 = v71;
          v51 = v72;
          v52 = v74;
          *(v43 + 5) = v73;
          *(v43 + 6) = v52;
          *(v43 + 3) = v50;
          *(v43 + 4) = v51;
          v53 = v75;
          v54 = v76;
          v55 = v77;
          v43[20] = v78;
          *(v43 + 8) = v54;
          *(v43 + 9) = v55;
          *(v43 + 7) = v53;
          result = sub_26BE2E258(v59, &qword_28045E4C8, &unk_26C0112A0);
          if ((v57 + 1) < v3)
          {
            v6 = v57 + 1;
          }

          else
          {
            v6 = 0;
          }

          v7 = v56;
          if (v4 - 1 == v10)
          {
            goto LABEL_28;
          }
        }
      }

      v58 = MEMORY[0x277D84F90];
LABEL_28:

      return v58;
    }

    return v2;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

unint64_t sub_26BE56358(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_26BEEBFC4(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_26BE58A48(v7, a2, 1, a3, _s25RelativeDistinguishedNameVMa, _s25RelativeDistinguishedNameVMa, &qword_28045E6E8, &unk_26C022D90);
  *v3 = v5;
  return result;
}

unint64_t sub_26BE56464(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_26BEEBFEC(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_26BE58A48(v7, a2, 1, a3, _s21RCSParticipantKeyRollVMa, _s21RCSParticipantKeyRollVMa, &qword_28045E6E0, &unk_26C011340);
  *v3 = v5;
  return result;
}

unint64_t sub_26BE56570(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_26BEEC014(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_26BE58A48(v7, a2, 1, a3, _s11GeneralNameOMa, _s11GeneralNameOMa, &qword_28045E6F0, &unk_26C011350);
  *v3 = v5;
  return result;
}

uint64_t sub_26BE5667C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26BFD978C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_26C00AEEC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 4;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
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
      v7 = sub_26C00A74C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_26BE580E0(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_26BE567B0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_26C008E9C();
    if (v10)
    {
      v11 = sub_26C008ECC();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_26C008EBC();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_26C008E9C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_26C008ECC();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_26C008EBC();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

void sub_26BE569E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v29 = a1;
  v9 = sub_26C00928C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_26BEBB390(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_26BE6D5C0();
      goto LABEL_9;
    }

    sub_26BE691E4(v18, a4 & 1);
    v21 = sub_26BEBB390(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    sub_26C00AF8C();
    __break(1u);
    return;
  }

LABEL_9:
  v23 = v29;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    v26 = *v25;
    v27 = v25[1];
    *v25 = v29;
    v25[1] = a2;

    sub_26BE00258(v26, v27);
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    sub_26BF747D0(v15, v12, v23, a2, v24);
  }
}

void sub_26BE56BBC(_OWORD *a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26BEBE840(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_26BE6D84C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_26BE695CC(v16, a4 & 1);
    v11 = sub_26BEBE840(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_26C00AF8C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 80 * v11;

    sub_26BE5B15C(a1, v22);
  }

  else
  {
    sub_26BF74890(v11, a2, a3, a1, v21);

    sub_26BE00608(a2, a3);
  }
}

void sub_26BE56D08(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26BEBE840(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_26BE6DA08();
      v11 = v19;
      goto LABEL_8;
    }

    sub_26BE698BC(v16, a4 & 1);
    v11 = sub_26BEBE840(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_26C00AF8C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 184 * v11;

    sub_26BE5B100(a1, v22);
  }

  else
  {
    sub_26BF748F4(v11, a2, a3, a1, v21);

    sub_26BE00608(a2, a3);
  }
}

void sub_26BE56E54(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26BEBB414(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_26BE6DC08();
      v11 = v19;
      goto LABEL_8;
    }

    sub_26BE69D04(v16, a4 & 1);
    v11 = sub_26BEBB414(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_26C00AF8C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    v23 = *v22;
    v24 = v22[1];
    *v22 = a1;
    v22[1] = a2;

    sub_26BE00258(v23, v24);
  }

  else
  {

    sub_26BF74978(v11, a3, a1, a2, v21);
  }
}

uint64_t sub_26BE56F8C(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_26BEBB414(a2);
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
      sub_26BE6DD70();
      v9 = v17;
      goto LABEL_8;
    }

    sub_26BE69F98(v14, a3 & 1);
    v9 = sub_26BEBB414(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_26C00AF8C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 40 * v9);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return sub_26BE03890(a1, v20);
  }

  else
  {

    return sub_26BF749C0(v9, a2, a1, v19);
  }
}

uint64_t sub_26BE570BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_26BEBB598(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_26BE6DEF4();
      goto LABEL_7;
    }

    sub_26BE6A238(v15, a4 & 1);
    v26 = sub_26BEBB598(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_26C00AF8C();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_26C00921C();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:

  return sub_26BF74A2C(v12, a2, a3, a1, v18);
}

uint64_t sub_26BE57234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = a1;
  v12 = *v5;
  result = sub_26BEBB618(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = result;
      sub_26BE6E178();
      result = v21;
      goto LABEL_8;
    }

    sub_26BE6A5B8(v18, a5 & 1);
    result = sub_26BEBB618(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_14:
      result = sub_26C00AF8C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * result;
    *v24 = v11;
    *(v24 + 8) = a2;
  }

  else
  {
    sub_26BF74AE0(result, a3, a4, v11, a2, v23);
  }

  return result;
}

void sub_26BE57374(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_26BEBE840(a3, a4);
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
      sub_26BE6E2F0();
      v13 = v21;
      goto LABEL_8;
    }

    sub_26BE6A878(v18, a5 & 1);
    v13 = sub_26BEBE840(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_26C00AF8C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    sub_26BE00258(v25, v26);
  }

  else
  {
    sub_26BF74B34(v13, a3, a4, a1, a2, v23);

    sub_26BE00608(a3, a4);
  }
}

uint64_t sub_26BE574C8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_26BEBB414(a2);
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
      sub_26BE6E7A8();
      goto LABEL_7;
    }

    sub_26BE6B0E8(v13, a3 & 1);
    v24 = sub_26BEBB414(a2);
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
    result = sub_26C00AF8C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_26C009C8C();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_26BF74B84(v10, a2, a1, v16);
}

uint64_t sub_26BE57630(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_26BEBB480(a2 & 0xFFFFFFFF00000001);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = _s11HashRatchetVMa(0);
      return sub_26BE5B1B8(a1, v17 + *(*(v18 - 8) + 72) * v10, _s11HashRatchetVMa);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_26BE6EA10();
    goto LABEL_7;
  }

  sub_26BE6B44C(v13, a3 & 1);
  v20 = sub_26BEBB480(a2 & 0xFFFFFFFF00000001);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_26C00AF8C();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_26BF74C30(v10, a2 & 0xFFFFFFFF00000001, a1, v16);
}

_OWORD *sub_26BE57784(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26BEBB618(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_26BE6EC68();
      v11 = v19;
      goto LABEL_8;
    }

    sub_26BE6B7CC(v16, a4 & 1);
    v11 = sub_26BEBB618(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_26C00AF8C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_26BE5B0F0(a1, v22);
  }

  else
  {
    sub_26BF74CE8(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_26BE578D4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_26BEBB208(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for MLS.KeyAndNonce(0);
      return sub_26BE5B1B8(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for MLS.KeyAndNonce);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_26BE6EE0C();
    goto LABEL_7;
  }

  sub_26BE6BA84(v13, a3 & 1);
  v20 = sub_26BEBB208(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_26C00AF8C();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_26BF74D54(v10, a2, a1, v16);
}

uint64_t sub_26BE57B28(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_26BEBB618(a2, a3);
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
    v17 = sub_26BEBB618(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_26C00AF8C();
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

uint64_t sub_26BE57CD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_26BEBB618(a2, a3);
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
    v17 = sub_26BEBB618(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_26C00AF8C();
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

uint64_t sub_26BE57E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_26BEBB618(a3, a4);
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
      sub_26BE6F748();
      v13 = v21;
      goto LABEL_8;
    }

    sub_26BE6CAA8(v18, a5 & 1);
    v13 = sub_26BEBB618(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_26C00AF8C();
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
    sub_26BF74B34(v13, a3, a4, a1, a2, v23);
  }
}

void sub_26BE57F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_26BEBB618(a3, a4);
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
      sub_26BE6F8C0();
      v13 = v21;
      goto LABEL_8;
    }

    sub_26BE6CD68(v18, a5 & 1);
    v13 = sub_26BEBB618(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_26C00AF8C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    sub_26BE00258(v25, v26);
  }

  else
  {
    sub_26BF74B34(v13, a3, a4, a1, a2, v23);
  }
}

uint64_t sub_26BE580E0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_26BFD9590(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_26BE5862C((*a3 + 4 * *v77), (*a3 + 4 * *v79), (*a3 + 4 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
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
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 4 * v17);
            *(v20 + 4 * v17) = *(v20 + 4 * v16);
            *(v20 + 4 * v16) = v18;
          }
        }

        while (++v17 < v16--);
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
      result = sub_26BEEC164(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_26BEEC164((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
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

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_26BE5862C((*a3 + 4 * *v70), (*a3 + 4 * *v72), (*a3 + 4 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 4 * v7 - 4;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 4 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 4;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
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

uint64_t sub_26BE5862C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 4)
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

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 4;
    v5 -= 4;
    v18 = v14;
    do
    {
      v19 = v5 + 4;
      v21 = *(v18 - 4);
      v18 -= 4;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 4, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 4;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFFCLL])
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

unint64_t sub_26BE58910(unint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = (v7 + 32 + 4 * result);
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + 4 * a2);
      if (result != v12 || result >= v12 + 4 * v11)
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, 4 * v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_26BE58A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t *a7, uint64_t *a8)
{
  v15 = *v8;
  result = a5(0);
  v18 = *(*(result - 8) + 72);
  v19 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v31 = a7;
  v32 = a8;
  v17 = *(*(result - 8) + 80);
  v20 = v15 + ((v17 + 32) & ~v17);
  v21 = v20 + v18 * a1;
  result = swift_arrayDestroy();
  v22 = a3 - v19;
  if (__OFSUB__(a3, v19))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = v18 * a3;
  if (v22)
  {
    v24 = *(v15 + 16);
    if (!__OFSUB__(v24, a2))
    {
      result = v21 + v23;
      v25 = v20 + v18 * a2;
      if (v21 + v23 < v25 || result >= v25 + (v24 - a2) * v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v25)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v27 = *(v15 + 16);
      v28 = __OFADD__(v27, v22);
      v29 = v27 + v22;
      if (!v28)
      {
        *(v15 + 16) = v29;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_26BE2E258(a4, v31, v32);
  }

  if (v23 < 1)
  {
    return sub_26BE2E258(a4, v31, v32);
  }

  result = sub_26BE5B088(a4, v21, a6);
  if (v18 >= v23)
  {
    return sub_26BE2E258(a4, v31, v32);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_26BE58C10(uint64_t a1)
{
  v1 = (*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 47) & 0x10 | (32 * (*(a1 + 104) >> 2));
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

void sub_26BE58C50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v61 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = *(a1 + 24);
    v7 = v4 - 1;
    v8 = 2 * (v4 - 1);
    v9 = v6 + 32;
    v10 = 2 * v4;
    v50 = v8;
    v49 = 2 * v4;
    while (1)
    {
      if (v5 == 0x100000000)
      {
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
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
      }

      if (v7 < 0)
      {
        goto LABEL_67;
      }

      if (v5 > v8)
      {
LABEL_62:
        sub_26BE01654();
        swift_allocError();
        v43 = 30;
LABEL_63:
        *v42 = v43;
        *(v42 + 8) = 0u;
        *(v42 + 24) = 0u;
        *(v42 + 40) = 0u;
        *(v42 + 56) = 0u;
        *(v42 + 72) = 0u;
        *(v42 + 88) = 0u;
        *(v42 + 104) = 0;
        *(v42 + 112) = 23;
        swift_willThrow();
        return;
      }

      if (*(v6 + 16) > v5)
      {
        v11 = (v9 + 136 * v5);
        memmove(__dst, v11, 0x88uLL);
        if (sub_26BE58C10(__dst) != 1)
        {
          break;
        }
      }

LABEL_5:
      v5 += 2;
      if (v10 == v5)
      {
        return;
      }
    }

    v56[0] = *v11;
    v12 = v11[1];
    v13 = v11[2];
    v14 = v11[4];
    v56[3] = v11[3];
    v56[4] = v14;
    v56[1] = v12;
    v56[2] = v13;
    v15 = v11[5];
    v16 = v11[6];
    v17 = v11[7];
    v57 = *(v11 + 16);
    v56[6] = v16;
    v56[7] = v17;
    v56[5] = v15;
    memmove(v58, v11, 0x88uLL);
    if (sub_26BE58C10(v58) == 1)
    {
      goto LABEL_62;
    }

    v54[6] = v58[6];
    v54[7] = v58[7];
    v55 = v59;
    v54[2] = v58[2];
    v54[3] = v58[3];
    v54[4] = v58[4];
    v54[5] = v58[5];
    v54[0] = v58[0];
    v54[1] = v58[1];
    v18 = sub_26BE592C4(v54);
    v19 = sub_26BE13A3C(v54);
    if (v18 == 1)
    {
      sub_26BE01654();
      swift_allocError();
      v43 = 28;
      goto LABEL_63;
    }

    v20 = *(v19 + 16);
    v21 = *(v19 + 24);
    v23 = *(a2 + 16);
    v22 = *(a2 + 24);
    v24 = v21 >> 62;
    v25 = v22 >> 62;
    if (v21 >> 62 == 3)
    {
      v26 = 0;
      if (!v20 && v21 == 0xC000000000000000 && v22 >> 62 == 3)
      {
        v26 = 0;
        if (!v23 && v22 == 0xC000000000000000)
        {
          return;
        }
      }
    }

    else if (v24 > 1)
    {
      if (v24 != 2)
      {
        v26 = 0;
        if (v25 <= 1)
        {
LABEL_31:
          if (v25)
          {
            LODWORD(v30) = HIDWORD(v23) - v23;
            if (__OFSUB__(HIDWORD(v23), v23))
            {
              goto LABEL_69;
            }

            v30 = v30;
          }

          else
          {
            v30 = BYTE6(v22);
          }

          goto LABEL_38;
        }

LABEL_36:
        if (v25 != 2)
        {
          if (!v26)
          {
            return;
          }

          goto LABEL_4;
        }

        v32 = *(v23 + 16);
        v31 = *(v23 + 24);
        v29 = __OFSUB__(v31, v32);
        v30 = v31 - v32;
        if (v29)
        {
          goto LABEL_68;
        }

LABEL_38:
        if (v26 == v30)
        {
          if (v26 < 1)
          {
            return;
          }

          if (v24 > 1)
          {
            if (v24 != 2)
            {
              memset(v52, 0, 14);
              sub_26BE2E1F0(v56, v53, &qword_28045E4C8, &unk_26C0112A0);
              sub_26BE00608(v23, v22);
              sub_26BE567B0(v52, v23, v22, v53);
              if (v3)
              {
                goto LABEL_76;
              }

LABEL_60:
              v3 = 0;
              sub_26BE00258(v23, v22);
              sub_26BE2E258(v56, &qword_28045E4C8, &unk_26C0112A0);
              if (v53[0])
              {
                return;
              }

              goto LABEL_4;
            }

            v47 = *(v20 + 16);
            v48 = v3;
            v45 = *(v20 + 24);
            sub_26BE2E1F0(v56, v53, &qword_28045E4C8, &unk_26C0112A0);
            sub_26BE00608(v23, v22);
            v33 = sub_26C008E9C();
            if (v33)
            {
              v34 = v33;
              v35 = sub_26C008ECC();
              v36 = v47;
              if (__OFSUB__(v47, v35))
              {
                goto LABEL_74;
              }

              v44 = v47 - v35 + v34;
            }

            else
            {
              v44 = 0;
              v36 = v47;
            }

            if (__OFSUB__(v45, v36))
            {
              goto LABEL_73;
            }

            sub_26C008EBC();
            v41 = v44;
          }

          else
          {
            if (!v24)
            {
              v52[0] = *(v19 + 16);
              LOWORD(v52[1]) = v21;
              BYTE2(v52[1]) = BYTE2(v21);
              BYTE3(v52[1]) = BYTE3(v21);
              BYTE4(v52[1]) = BYTE4(v21);
              BYTE5(v52[1]) = BYTE5(v21);
              sub_26BE2E1F0(v56, v53, &qword_28045E4C8, &unk_26C0112A0);
              sub_26BE00608(v23, v22);
              sub_26BE567B0(v52, v23, v22, v53);
              if (v3)
              {
                goto LABEL_76;
              }

              goto LABEL_60;
            }

            v48 = v3;
            v37 = v20;
            if (v20 >> 32 < v20)
            {
              goto LABEL_72;
            }

            sub_26BE2E1F0(v56, v53, &qword_28045E4C8, &unk_26C0112A0);
            sub_26BE00608(v23, v22);
            v38 = sub_26C008E9C();
            if (v38)
            {
              v46 = v38;
              v39 = sub_26C008ECC();
              if (__OFSUB__(v37, v39))
              {
                goto LABEL_75;
              }

              v40 = v37 - v39 + v46;
            }

            else
            {
              v40 = 0;
            }

            sub_26C008EBC();
            v41 = v40;
          }

          sub_26BE567B0(v41, v23, v22, v53);
          if (v48)
          {
LABEL_76:
            sub_26BE00258(v23, v22);
            __break(1u);
            return;
          }

          goto LABEL_60;
        }

LABEL_4:
        v8 = v50;
        v10 = v49;
        v9 = v6 + 32;
        goto LABEL_5;
      }

      v28 = *(v20 + 16);
      v27 = *(v20 + 24);
      v29 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v29)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (!v24)
      {
        v26 = BYTE6(v21);
        if (v25 <= 1)
        {
          goto LABEL_31;
        }

        goto LABEL_36;
      }

      LODWORD(v26) = HIDWORD(v20) - v20;
      if (__OFSUB__(HIDWORD(v20), v20))
      {
        goto LABEL_71;
      }

      v26 = v26;
    }

    if (v25 <= 1)
    {
      goto LABEL_31;
    }

    goto LABEL_36;
  }
}

void *sub_26BE592D0()
{
  v2 = v0;
  v3 = *(v0 + 8);
  v8 = *(v2 + 16);
  result = MLS.NodeIndex.init(forRoot:)(&v8, &v9);
  if (!v1)
  {
    if (*(v3 + 16) && (v5 = sub_26BEBB414(v9), (v6 & 1) != 0))
    {
      return *(*(v3 + 56) + 16 * v5);
    }

    else
    {
      sub_26BE01654();
      swift_allocError();
      *v7 = 29;
      *(v7 + 8) = 0u;
      *(v7 + 24) = 0u;
      *(v7 + 40) = 0u;
      *(v7 + 56) = 0u;
      *(v7 + 72) = 0u;
      *(v7 + 88) = 0u;
      *(v7 + 104) = 0;
      *(v7 + 112) = 23;
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_26BE5939C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = *v4;
  v8 = (v7 + 32 + 4 * result);
  if (!v6)
  {
    goto LABEL_13;
  }

  v9 = *(v7 + 16);
  v10 = __OFSUB__(v9, a2);
  v11 = v9 - a2;
  if (v10)
  {
    goto LABEL_21;
  }

  result = v8 + 4 * a3;
  v12 = (v7 + 32 + 4 * a2);
  if (result != v12 || result >= v12 + 4 * v11)
  {
    v14 = a3;
    v15 = a4;
    result = memmove(result, v12, 4 * v11);
    a3 = v14;
    a4 = v15;
  }

  v16 = *(v7 + 16);
  v10 = __OFADD__(v16, v6);
  v17 = v16 + v6;
  if (v10)
  {
    goto LABEL_22;
  }

  *(v7 + 16) = v17;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v18 = 4 * a3;

  return memcpy(v8, (a4 + 32), v18);
}

unint64_t sub_26BE59490(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(a3 + 16);
  v11 = __OFSUB__(v10, v8);
  v12 = v10 - v8;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v6 + v12;
  if (__OFADD__(v6, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v5 + 3) >> 1)
  {
    if (v6 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_26BEEBFB0(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_26BE5939C(v7, a2, v10, a3);
  *v3 = v5;
  return result;
}

void sub_26BE59564(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v61 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = *(a1 + 24);
    v7 = v4 - 1;
    v8 = 2 * (v4 - 1);
    v9 = v6 + 32;
    v10 = 2 * v4;
    v50 = v8;
    v49 = 2 * v4;
    while (1)
    {
      if (v5 == 0x100000000)
      {
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
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
      }

      if (v7 < 0)
      {
        goto LABEL_67;
      }

      if (v5 > v8)
      {
LABEL_62:
        sub_26BE01654();
        swift_allocError();
        v43 = 30;
LABEL_63:
        *v42 = v43;
        *(v42 + 8) = 0u;
        *(v42 + 24) = 0u;
        *(v42 + 40) = 0u;
        *(v42 + 56) = 0u;
        *(v42 + 72) = 0u;
        *(v42 + 88) = 0u;
        *(v42 + 104) = 0;
        *(v42 + 112) = 23;
        swift_willThrow();
        return;
      }

      if (*(v6 + 16) > v5)
      {
        v11 = (v9 + 136 * v5);
        memmove(__dst, v11, 0x88uLL);
        if (sub_26BE58C10(__dst) != 1)
        {
          break;
        }
      }

LABEL_5:
      v5 += 2;
      if (v10 == v5)
      {
        return;
      }
    }

    v56[0] = *v11;
    v12 = v11[1];
    v13 = v11[2];
    v14 = v11[4];
    v56[3] = v11[3];
    v56[4] = v14;
    v56[1] = v12;
    v56[2] = v13;
    v15 = v11[5];
    v16 = v11[6];
    v17 = v11[7];
    v57 = *(v11 + 16);
    v56[6] = v16;
    v56[7] = v17;
    v56[5] = v15;
    memmove(v58, v11, 0x88uLL);
    if (sub_26BE58C10(v58) == 1)
    {
      goto LABEL_62;
    }

    v54[6] = v58[6];
    v54[7] = v58[7];
    v55 = v59;
    v54[2] = v58[2];
    v54[3] = v58[3];
    v54[4] = v58[4];
    v54[5] = v58[5];
    v54[0] = v58[0];
    v54[1] = v58[1];
    v18 = sub_26BE592C4(v54);
    v19 = sub_26BE13A3C(v54);
    if (v18 == 1)
    {
      sub_26BE01654();
      swift_allocError();
      v43 = 28;
      goto LABEL_63;
    }

    v20 = *v19;
    v21 = v19[1];
    v23 = *a2;
    v22 = a2[1];
    v24 = v21 >> 62;
    v25 = v22 >> 62;
    if (v21 >> 62 == 3)
    {
      v26 = 0;
      if (!v20 && v21 == 0xC000000000000000 && v22 >> 62 == 3)
      {
        v26 = 0;
        if (!v23 && v22 == 0xC000000000000000)
        {
          return;
        }
      }
    }

    else if (v24 > 1)
    {
      if (v24 != 2)
      {
        v26 = 0;
        if (v25 <= 1)
        {
LABEL_31:
          if (v25)
          {
            LODWORD(v30) = HIDWORD(v23) - v23;
            if (__OFSUB__(HIDWORD(v23), v23))
            {
              goto LABEL_69;
            }

            v30 = v30;
          }

          else
          {
            v30 = BYTE6(v22);
          }

          goto LABEL_38;
        }

LABEL_36:
        if (v25 != 2)
        {
          if (!v26)
          {
            return;
          }

          goto LABEL_4;
        }

        v32 = *(v23 + 16);
        v31 = *(v23 + 24);
        v29 = __OFSUB__(v31, v32);
        v30 = v31 - v32;
        if (v29)
        {
          goto LABEL_68;
        }

LABEL_38:
        if (v26 == v30)
        {
          if (v26 < 1)
          {
            return;
          }

          if (v24 > 1)
          {
            if (v24 != 2)
            {
              memset(v52, 0, 14);
              sub_26BE2E1F0(v56, v53, &qword_28045E4C8, &unk_26C0112A0);
              sub_26BE00608(v23, v22);
              sub_26BE567B0(v52, v23, v22, v53);
              if (v3)
              {
                goto LABEL_76;
              }

LABEL_60:
              v3 = 0;
              sub_26BE00258(v23, v22);
              sub_26BE2E258(v56, &qword_28045E4C8, &unk_26C0112A0);
              if (v53[0])
              {
                return;
              }

              goto LABEL_4;
            }

            v47 = *(v20 + 16);
            v48 = v3;
            v45 = *(v20 + 24);
            sub_26BE2E1F0(v56, v53, &qword_28045E4C8, &unk_26C0112A0);
            sub_26BE00608(v23, v22);
            v33 = sub_26C008E9C();
            if (v33)
            {
              v34 = v33;
              v35 = sub_26C008ECC();
              v36 = v47;
              if (__OFSUB__(v47, v35))
              {
                goto LABEL_74;
              }

              v44 = v47 - v35 + v34;
            }

            else
            {
              v44 = 0;
              v36 = v47;
            }

            if (__OFSUB__(v45, v36))
            {
              goto LABEL_73;
            }

            sub_26C008EBC();
            v41 = v44;
          }

          else
          {
            if (!v24)
            {
              v52[0] = *v19;
              LOWORD(v52[1]) = v21;
              BYTE2(v52[1]) = BYTE2(v21);
              BYTE3(v52[1]) = BYTE3(v21);
              BYTE4(v52[1]) = BYTE4(v21);
              BYTE5(v52[1]) = BYTE5(v21);
              sub_26BE2E1F0(v56, v53, &qword_28045E4C8, &unk_26C0112A0);
              sub_26BE00608(v23, v22);
              sub_26BE567B0(v52, v23, v22, v53);
              if (v3)
              {
                goto LABEL_76;
              }

              goto LABEL_60;
            }

            v48 = v3;
            v37 = v20;
            if (v20 >> 32 < v20)
            {
              goto LABEL_72;
            }

            sub_26BE2E1F0(v56, v53, &qword_28045E4C8, &unk_26C0112A0);
            sub_26BE00608(v23, v22);
            v38 = sub_26C008E9C();
            if (v38)
            {
              v46 = v38;
              v39 = sub_26C008ECC();
              if (__OFSUB__(v37, v39))
              {
                goto LABEL_75;
              }

              v40 = v37 - v39 + v46;
            }

            else
            {
              v40 = 0;
            }

            sub_26C008EBC();
            v41 = v40;
          }

          sub_26BE567B0(v41, v23, v22, v53);
          if (v48)
          {
LABEL_76:
            sub_26BE00258(v23, v22);
            __break(1u);
            return;
          }

          goto LABEL_60;
        }

LABEL_4:
        v8 = v50;
        v10 = v49;
        v9 = v6 + 32;
        goto LABEL_5;
      }

      v28 = *(v20 + 16);
      v27 = *(v20 + 24);
      v29 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v29)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (!v24)
      {
        v26 = BYTE6(v21);
        if (v25 <= 1)
        {
          goto LABEL_31;
        }

        goto LABEL_36;
      }

      LODWORD(v26) = HIDWORD(v20) - v20;
      if (__OFSUB__(HIDWORD(v20), v20))
      {
        goto LABEL_71;
      }

      v26 = v26;
    }

    if (v25 <= 1)
    {
      goto LABEL_31;
    }

    goto LABEL_36;
  }
}

uint64_t type metadata accessor for MLS.TreeKEMPrivateKey(uint64_t a1)
{
  result = qword_28045E6B0;
  if (!qword_28045E6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BE59C80(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26BE59C98(uint64_t a1)
{
  v2 = type metadata accessor for MLS.TreeKEMPrivateKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BE59D48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
  }

  return result;
}

double sub_26BE59DB4(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_26BE59DD0(unint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = v11 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E718, &qword_26C011380);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = v12 + 16 * a3;
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    *(v12 + 8) = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_26BE59EC8(unint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > v6[3] >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    v6 = sub_26BEEC6D8(isUniquelyReferenced_nonNull_native, v16, 1, v6);
    *v4 = v6;
  }

  result = sub_26BE59DD0(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

void sub_26BE59FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * a1);
  swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      v17 = &v12[2 * a3];
      v18 = (v11 + 32 + 16 * a2);
      if (v17 != v18 || v17 >= &v18[16 * v16])
      {
        memmove(v17, v18, 16 * v16);
      }

      v20 = *(v11 + 16);
      v13 = __OFADD__(v20, v14);
      v21 = v20 + v14;
      if (!v13)
      {
        *(v11 + 16) = v21;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;
    sub_26BE00608(a4, a5);
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }
}

void *sub_26BE5A08C(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v2 = *(a2 + 16);
  if (!v2)
  {
  }

  v3 = a2 + 32;

  v5 = 0;
  while (2)
  {
    v6 = *(v3 + 4 * v5);
    if (v6 < 0)
    {
      __break(1u);
    }

    else
    {
      v7 = 0;
      ++v5;
      v8 = 2 * v6;
      v9 = *(v14 + 16);
      v10 = v14 + 32;
      while (v9 != v7)
      {
        v11 = *(v10 + 4 * v7++);
        if (v11 == v8)
        {
          v12 = 0;
          do
          {
            if (*(v10 + 4 * v12) == v8)
            {
              result = sub_26BFA7388(v12, &v13);
              goto LABEL_4;
            }

            ++v12;
          }

          while (v9 != v12);
          __break(1u);
          return v14;
        }
      }

LABEL_4:
      if (v5 != v2)
      {
        continue;
      }

      return v14;
    }

    return result;
  }
}

void sub_26BE5A15C(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 == 1)
  {
    sub_26BE00608(a1, a2);
  }
}

void sub_26BE5A170(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 == 1)
  {
    sub_26BE00258(a1, a2);
  }
}

uint64_t sub_26BE5A294(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BE5A2DC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_26BE00258(result, a2);
    sub_26BE00258(a3, a4);
  }

  return result;
}

uint64_t sub_26BE5A414(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_26C009C8C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26BE5A4D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_26C009C8C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26BE5A578(uint64_t a1)
{
  sub_26BE5A62C(319);
  if (v1 <= 0x3F)
  {
    sub_26BE5A6E4(319);
    if (v2 <= 0x3F)
    {
      sub_26C009C8C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26BE5A62C(uint64_t a1)
{
  if (!qword_28045E6C0)
  {
    sub_26BE5A690();
    v1 = sub_26C00A39C();
    if (!v2)
    {
      atomic_store(v1, &qword_28045E6C0);
    }
  }
}

unint64_t sub_26BE5A690()
{
  result = qword_28045E6C8;
  if (!qword_28045E6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E6C8);
  }

  return result;
}

void sub_26BE5A6E4(uint64_t a1)
{
  if (!qword_28045E6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045E6D8, &qword_26C011338);
    sub_26BE5A690();
    v1 = sub_26C00A39C();
    if (!v2)
    {
      atomic_store(v1, &qword_28045E6D0);
    }
  }
}

uint64_t sub_26BE5A75C(uint64_t result, uint64_t a2, uint64_t a3, char **a4)
{
  v4 = a2;
  v5 = *(result + 16);
  if (!v5)
  {
  }

  v6 = a3;
  v7 = 0;
  v8 = 0;
  v9 = *(result + 24);
  while (v8 != 0x80000000)
  {
    if (v5 - 1 < 0)
    {
      goto LABEL_26;
    }

    if (v7 > 2 * (v5 - 1))
    {
LABEL_20:
      sub_26BE01654();
      swift_allocError();
      v28 = 30;
LABEL_21:
      *v27 = v28;
      *(v27 + 8) = 0u;
      *(v27 + 24) = 0u;
      *(v27 + 40) = 0u;
      *(v27 + 56) = 0u;
      *(v27 + 72) = 0u;
      *(v27 + 88) = 0u;
      *(v27 + 104) = 0;
      *(v27 + 112) = 23;
      swift_willThrow();
    }

    if (*(v9 + 16) > v7)
    {
      v10 = (v9 + 32 + 136 * v7);
      memmove(__dst, v10, 0x88uLL);
      result = sub_26BE58C10(__dst);
      if (result != 1)
      {
        v48 = *v10;
        v11 = v10[1];
        v12 = v10[2];
        v13 = v10[4];
        v51 = v10[3];
        v52 = v13;
        v49 = v11;
        v50 = v12;
        v14 = v10[5];
        v15 = v10[6];
        v16 = v10[7];
        v56 = *(v10 + 16);
        v54 = v15;
        v55 = v16;
        v53 = v14;
        memmove(v57, v10, 0x88uLL);
        if (sub_26BE58C10(v57) == 1)
        {
          goto LABEL_20;
        }

        v46[6] = v57[6];
        v46[7] = v57[7];
        v47 = v58;
        v46[2] = v57[2];
        v46[3] = v57[3];
        v46[4] = v57[4];
        v46[5] = v57[5];
        v46[0] = v57[0];
        v46[1] = v57[1];
        if (sub_26BE592C4(v46) == 1)
        {
          sub_26BE13A3C(v46);
          sub_26BE01654();
          swift_allocError();
          v28 = 28;
          goto LABEL_21;
        }

        v17 = sub_26BE13A3C(v46);
        v18 = *(v17 + 112);
        v40 = *(v17 + 96);
        v41 = v18;
        v42 = *(v17 + 128);
        v19 = *(v17 + 48);
        v36 = *(v17 + 32);
        v37 = v19;
        v20 = *(v17 + 80);
        v38 = *(v17 + 64);
        v39 = v20;
        v21 = *(v17 + 16);
        v34 = *v17;
        v35 = v21;
        __dst[159] = *(v4 + 72);
        v44[2] = v50;
        v44[3] = v51;
        v44[0] = v48;
        v44[1] = v49;
        v45 = v56;
        v44[6] = v54;
        v44[7] = v55;
        v44[4] = v52;
        v44[5] = v53;
        sub_26BE59BD8(v44, v33);
        sub_26BF34320(v43);
        if (v32)
        {
          sub_26BE2E258(&v48, &qword_28045E4C8, &unk_26C0112A0);
        }

        if (sub_26BF33464(v43, v6))
        {
          v22 = *a4;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a4 = v22;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v22 = sub_26BEECEB4(0, *(v22 + 2) + 1, 1, v22);
            *a4 = v22;
          }

          v25 = *(v22 + 2);
          v24 = *(v22 + 3);
          if (v25 >= v24 >> 1)
          {
            *a4 = sub_26BEECEB4((v24 > 1), v25 + 1, 1, v22);
          }

          sub_26BE2DBC4(v43);
          v26 = *a4;
          *(v26 + 2) = v25 + 1;
          *&v26[4 * v25 + 32] = v8;
          v6 = a3;
          v4 = a2;
        }

        else
        {
          sub_26BE2DBC4(v43);
        }

        result = sub_26BE2E258(&v48, &qword_28045E4C8, &unk_26C0112A0);
      }
    }

    ++v8;
    v7 += 2;
    if (v5 == v8)
    {
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_26BE5AB10(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = *(result + 16);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = *(result + 24);
    v46 = v8 + 32;
    while (v7 != 0x80000000)
    {
      if (v5 - 1 < 0)
      {
        goto LABEL_19;
      }

      if (v6 > 2 * (v5 - 1))
      {
LABEL_13:
        sub_26BE01654();
        swift_allocError();
        v22 = 30;
LABEL_14:
        *v21 = v22;
        *(v21 + 8) = 0u;
        *(v21 + 24) = 0u;
        *(v21 + 40) = 0u;
        *(v21 + 56) = 0u;
        *(v21 + 72) = 0u;
        *(v21 + 88) = 0u;
        *(v21 + 104) = 0;
        *(v21 + 112) = 23;
        swift_willThrow();
        goto LABEL_15;
      }

      if (*(v8 + 16) > v6)
      {
        v9 = (v46 + 136 * v6);
        memmove(__dst, v9, 0x88uLL);
        result = sub_26BE58C10(__dst);
        if (result != 1)
        {
          v34 = *v9;
          v10 = v9[1];
          v11 = v9[2];
          v12 = v9[4];
          v37 = v9[3];
          v38 = v12;
          v35 = v10;
          v36 = v11;
          v13 = v9[5];
          v14 = v9[6];
          v15 = v9[7];
          v42 = *(v9 + 16);
          v40 = v14;
          v41 = v15;
          v39 = v13;
          memmove(v43, v9, 0x88uLL);
          if (sub_26BE58C10(v43) == 1)
          {
            goto LABEL_13;
          }

          v32[6] = v43[6];
          v32[7] = v43[7];
          v33 = v44;
          v32[2] = v43[2];
          v32[3] = v43[3];
          v32[4] = v43[4];
          v32[5] = v43[5];
          v32[0] = v43[0];
          v32[1] = v43[1];
          if (sub_26BE592C4(v32) == 1)
          {
            sub_26BE13A3C(v32);
            sub_26BE01654();
            swift_allocError();
            v22 = 28;
            goto LABEL_14;
          }

          v16 = sub_26BE13A3C(v32);
          v29 = v7;
          v17 = *(v16 + 112);
          v27[6] = *(v16 + 96);
          v27[7] = v17;
          v28 = *(v16 + 128);
          v18 = *(v16 + 48);
          v27[2] = *(v16 + 32);
          v27[3] = v18;
          v19 = *(v16 + 80);
          v27[4] = *(v16 + 64);
          v27[5] = v19;
          v20 = *(v16 + 16);
          v27[0] = *v16;
          v27[1] = v20;
          v30[2] = v36;
          v30[3] = v37;
          v30[0] = v34;
          v30[1] = v35;
          v31 = v42;
          v30[6] = v40;
          v30[7] = v41;
          v30[4] = v38;
          v30[5] = v39;
          sub_26BE59BD8(v30, v26);
          sub_26C0081F4(&v29, v27, a2, a3, a4);
          if (v4)
          {
            sub_26BE2E258(&v34, &qword_28045E4C8, &unk_26C0112A0);
            goto LABEL_15;
          }

          result = sub_26BE2E258(&v34, &qword_28045E4C8, &unk_26C0112A0);
        }
      }

      ++v7;
      v6 += 2;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:
    sub_26BE0489C(a2, a3);
  }

  return result;
}

unint64_t sub_26BE5AE38(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = sub_26BE5AF10(v8, a2, 0, a4);
  *v4 = v6;
  return result;
}

unint64_t sub_26BE5AF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_26BE5B088(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

_OWORD *sub_26BE5B0F0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_26BE5B1B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BE5B2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(a1, a2, **(v4 + 16), *(v4 + 24));
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_26BE5B2E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t MLS.LeafNode.MemberBinding.init(groupID:leafIndex:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t static MLS.LeafNode.MemberBinding.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  return sub_26BE02DEC(*a1, *(a1 + 8), *a2, *(a2 + 8)) & (v2 == v3);
}

uint64_t MLS.LeafNode.MemberBinding.hashValue.getter()
{
  sub_26C00B05C();
  sub_26C00911C();
  sub_26C00B09C();
  return sub_26C00B0CC();
}

uint64_t sub_26BE5B4C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  return sub_26BE02DEC(*a1, *(a1 + 8), *a2, *(a2 + 8)) & (v2 == v3);
}

uint64_t sub_26BE5B504()
{
  sub_26C00B05C();
  sub_26C00911C();
  sub_26C00B09C();
  return sub_26C00B0CC();
}

uint64_t sub_26BE5B5A0(uint64_t a1)
{
  sub_26C00B05C();
  sub_26C00911C();
  sub_26C00B09C();
  return sub_26C00B0CC();
}

unint64_t sub_26BE5B600(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = *(v1 + 112);
  v35 = *(v1 + 96);
  v36 = v4;
  v5 = *(v1 + 16);
  v6 = *(v1 + 48);
  v31 = *(v1 + 32);
  v32 = v6;
  v7 = *(v1 + 48);
  v8 = *(v1 + 80);
  v33 = *(v1 + 64);
  v34 = v8;
  v9 = *(v1 + 16);
  v30[0] = *v1;
  v30[1] = v9;
  v10 = *(v1 + 80);
  v11 = *(v1 + 112);
  v38[6] = *(v1 + 96);
  v38[7] = v11;
  v13 = *v1;
  v12 = *(v1 + 16);
  v14 = *(v1 + 48);
  v38[2] = *(v1 + 32);
  v38[3] = v14;
  v38[4] = *(v1 + 64);
  v38[5] = v10;
  v38[0] = *v1;
  v38[1] = v12;
  v28 = xmmword_26C00BBD0;
  v15 = *(v1 + 112);
  v26[6] = v35;
  v26[7] = v15;
  v26[2] = v31;
  v26[3] = v7;
  v26[4] = v33;
  v26[5] = v3;
  v17 = *a1;
  v16 = *(a1 + 8);
  v18 = *(a1 + 16);
  v37 = *(v1 + 128);
  v39 = *(v1 + 128);
  v40 = v17;
  v41 = v16;
  v42 = v18;
  v29 = 0;
  v27 = *(v1 + 128);
  v26[0] = v13;
  v26[1] = v5;
  v24[0] = v17;
  v24[1] = v16;
  v25 = v18;
  sub_26BE00758(v30, v23);
  sub_26BE2BAE8(v17, v16);
  sub_26BE5BCCC(v38, v23);
  sub_26BFF6CA4(v26, v24);
  if (!v2)
  {
    sub_26BE132D4(v17, v16);
    sub_26BE00854(v30);
    v19 = v28;
    v20 = *(&v28 + 1) >> 62;
    if ((*(&v28 + 1) >> 62) > 1)
    {
      if (v20 != 2)
      {
LABEL_11:
        v16 = sub_26C00909C();
        sub_26BE5BD3C(v38);
        sub_26BE00258(v19, *(&v19 + 1));
        return v16;
      }

      v21 = *(v28 + 24);
    }

    else
    {
      if (!v20)
      {
        goto LABEL_11;
      }

      v21 = v28 >> 32;
    }

    if (v21 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  sub_26BE5BD3C(v38);
  sub_26BE132D4(v17, v16);
  sub_26BE00854(v30);
  sub_26BE00258(v28, *(&v28 + 1));
  return v16;
}

unint64_t sub_26BE5B7E0(unsigned __int16 *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a2 + 16);
  *v23 = *v2;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 80);
  v27 = *(v2 + 64);
  v28 = v8;
  v29 = *(v2 + 96);
  v9 = *(v2 + 48);
  v25 = *(v2 + 32);
  v26 = v9;
  v10 = *(v2 + 112);
  v11 = *(v2 + 120);
  v12 = *(v2 + 128);
  *&v23[16] = v6;
  v24 = v7;
  v30 = v10;
  v31 = v11;
  v32 = v12;
  *v20 = *a2;
  *&v20[16] = v5;
  result = sub_26BE5B600(v20);
  if (!v3)
  {
    if ((v4 - 3) < 0xFFFFFFFE)
    {
      __break(1u);
    }

    else
    {
      v15 = result;
      v16 = v14;
      v20[0] = v4 != 1;
      MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
      v20[0] = v23[0];
      *&v20[8] = *&v23[8];
      v21 = v24;
      v22 = v25;
      MLS.Cryptography.Ciphersuite.importSignaturePublicKey(_:)(v6, v7, v23);
      v17 = v24;
      v18 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      if ((MLS.Cryptography.SignaturePublicKey.verifyWithLabel(label:message:signature:)(0x65646F4E6661654CLL, 0xEB00000000534254, v15, v16, v11, v12, v17, v18) & 1) == 0)
      {
        sub_26BE01654();
        swift_allocError();
        *v19 = 8;
        *(v19 + 8) = 0u;
        *(v19 + 24) = 0u;
        *(v19 + 40) = 0u;
        *(v19 + 56) = 0u;
        *(v19 + 72) = 0u;
        *(v19 + 88) = 0u;
        *(v19 + 104) = 0;
        *(v19 + 112) = 23;
        swift_willThrow();
      }

      sub_26BE00258(v15, v16);
      return __swift_destroy_boxed_opaque_existential_1(v23);
    }
  }

  return result;
}

void MLS.LeafNode.sign(signaturePrivateKey:binding:)(void *a1, __int128 *a2)
{
  v4 = v2;
  v6 = *(v2 + 80);
  v7 = *(v2 + 112);
  v49 = *(v2 + 96);
  v50 = v7;
  v8 = *(v2 + 16);
  v9 = *(v2 + 48);
  v45 = *(v2 + 32);
  v46 = v9;
  v10 = *(v2 + 48);
  v11 = *(v2 + 80);
  v47 = *(v2 + 64);
  v48 = v11;
  v12 = *(v2 + 16);
  v44[0] = *v2;
  v44[1] = v12;
  v13 = *(v2 + 112);
  v41 = v49;
  v42 = v13;
  v37 = v45;
  v38 = v10;
  v39 = v47;
  v40 = v6;
  v14 = *(a2 + 4);
  v51 = *(v2 + 128);
  v43 = *(v2 + 128);
  v35 = v44[0];
  v36 = v8;
  v33 = *a2;
  v34 = v14;
  sub_26BE00758(v44, &v24);
  v15 = sub_26BE5B600(&v33);
  if (v3)
  {
    v30 = v41;
    v31 = v42;
    v32 = v43;
    v26 = v37;
    v27 = v38;
    v28 = v39;
    v29 = v40;
    v24 = v35;
    v25 = v36;
    sub_26BE00854(&v24);
  }

  else
  {
    v17 = v15;
    v18 = v16;
    v30 = v41;
    v31 = v42;
    v32 = v43;
    v26 = v37;
    v27 = v38;
    v28 = v39;
    v29 = v40;
    v24 = v35;
    v25 = v36;
    sub_26BE00854(&v24);
    v19 = a1[3];
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v19);
    v21 = MLS.Cryptography.SignaturePrivateKey.signWithLabel(label:message:)(0x65646F4E6661654CLL, 0xEB00000000534254, v17, v18, v19, v20);
    v23 = v22;
    sub_26BE00258(v17, v18);
    sub_26BE00258(*(v4 + 120), *(v4 + 128));
    *(v4 + 120) = v21;
    *(v4 + 128) = v23;
  }
}

unint64_t sub_26BE5BBB0()
{
  result = qword_28045E720;
  if (!qword_28045E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E720);
  }

  return result;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_26BE5BC18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 20))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26BE5BC6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_26BE5BCCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E728, &qword_26C011520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BE5BD3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E728, &qword_26C011520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_26BE5BDA4(char *a1)
{
  v3 = v1;
  v4 = a1;
  LOWORD(v11) = 7;
  sub_26BE5BF2C(a1, &v11);
  if (!v2)
  {

    LOWORD(v11) = 2;
    sub_26BE5BF2C(v4, &v11);

    v5 = (v1 + *(type metadata accessor for MLS.GroupState(0) + 64));
    sub_26BE5CCE0(v5);
    *v5 = 0u;
    v5[1] = 0u;
    v5[2] = 0u;
    v5[3] = 0u;
    v5[4] = 0u;
    v5[5] = 0u;
    v5[6] = 0u;
    v5[7] = 0u;
    v5[8] = 0u;
    v5[9] = 0u;
    v5[10] = 0u;
    LOWORD(v11) = 3;
    sub_26BE5BF2C(v4, &v11);

    LOWORD(v11) = 1;
    v4 = sub_26BE5BF2C(v4, &v11);
    MLS.TreeKEMPublicKey.truncate()();
    if (v6)
    {
    }

    else
    {
      v11 = *(v3 + 48);
      sub_26BE541FC(&v11);
      v10 = *(v3 + 48);
      MLS.NodeIndex.init(forRoot:)(&v10, &v11);
      sub_26BE4BE9C(&v11);
      sub_26BE00258(v8, v9);
    }
  }

  return v4;
}

char *sub_26BE5BF2C(uint64_t a1, unsigned __int16 *a2)
{
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    v7 = MEMORY[0x277D84F90];
    goto LABEL_45;
  }

  v5 = 0;
  v6 = a1 + 32;
  v7 = MEMORY[0x277D84F90];
  v8 = *a2;
  do
  {
    v9 = (v6 + 200 * v5);
    v10 = v5;
    while (1)
    {
      if (v10 >= v4)
      {
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:

        goto LABEL_92;
      }

      v12 = v9[8];
      v163 = v9[9];
      v13 = v9[11];
      v164 = v9[10];
      v165 = v13;
      v14 = v9[4];
      v159 = v9[5];
      v15 = v9[7];
      v160 = v9[6];
      v161 = v15;
      v162 = v12;
      v16 = *v9;
      v155 = v9[1];
      v17 = v9[3];
      v156 = v9[2];
      v157 = v17;
      v158 = v14;
      v166 = *(v9 + 192);
      v154 = v16;
      v5 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_99;
      }

      v18 = v9[9];
      v175 = v9[8];
      v176 = v18;
      v177 = v9[10];
      v19 = v9[5];
      v171 = v9[4];
      v172 = v19;
      v20 = v9[7];
      v173 = v9[6];
      v174 = v20;
      v21 = v9[1];
      v167 = *v9;
      v168 = v21;
      v22 = v9[3];
      v169 = v9[2];
      v178 = *(v9 + 22);
      v170 = v22;
      v23 = sub_26BE5CD48(&v167);
      if (v23 <= 4)
      {
        break;
      }

      if (v23 > 7)
      {
        if (v23 == 8)
        {
          sub_26BE5CDC8(&v167);
          v11 = 61444;
        }

        else if (v23 == 9)
        {
          sub_26BE5CDC8(&v167);
          v11 = 61443;
        }

        else
        {
          v11 = 0xFFFF;
        }

LABEL_5:
        if (v8 == v11)
        {
          goto LABEL_38;
        }

LABEL_6:
        sub_26BE5CD74(&v154);
        goto LABEL_7;
      }

      if (v23 != 5)
      {
        if (v23 == 6)
        {
          sub_26BE5CDC8(&v167);
          if (v8 == 7)
          {
            goto LABEL_37;
          }

          goto LABEL_7;
        }

        sub_26BE5CDC8(&v167);
        v11 = 61442;
        goto LABEL_5;
      }

      sub_26BE5CDC8(&v167);
      if (v8 == 6)
      {
        goto LABEL_37;
      }

LABEL_7:
      ++v10;
      v9 = (v9 + 200);
      if (v5 == v4)
      {
        goto LABEL_45;
      }
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        sub_26BE5CDC8(&v167);
        if (v8 == 3)
        {
          goto LABEL_38;
        }

        goto LABEL_6;
      }

      if (v23 == 3)
      {
        sub_26BE5CDC8(&v167);
        if (v8 == 4)
        {
          goto LABEL_37;
        }
      }

      else
      {
        sub_26BE5CDC8(&v167);
        if (v8 == 5)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_7;
    }

    if (!v23)
    {
      sub_26BE5CDC8(&v167);
      if (v8 == 1)
      {
        goto LABEL_37;
      }

      goto LABEL_7;
    }

    sub_26BE5CDC8(&v167);
    if (v8 != 2)
    {
      goto LABEL_7;
    }

LABEL_37:
    sub_26BE5CDE4(&v154, &v145);
LABEL_38:
    *&__dst = v7;
    v104 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26BECBA94(0, *(v7 + 16) + 1, 1);
      v7 = __dst;
    }

    v25 = *(v7 + 16);
    v24 = *(v7 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_26BECBA94((v24 > 1), v25 + 1, 1);
      v7 = __dst;
    }

    *(v7 + 16) = v25 + 1;
    v26 = v7 + 200 * v25;
    *(v26 + 32) = v154;
    v27 = v155;
    v28 = v156;
    v29 = v158;
    *(v26 + 80) = v157;
    *(v26 + 96) = v29;
    *(v26 + 48) = v27;
    *(v26 + 64) = v28;
    v30 = v159;
    v31 = v160;
    v32 = v162;
    *(v26 + 144) = v161;
    *(v26 + 160) = v32;
    *(v26 + 112) = v30;
    *(v26 + 128) = v31;
    v33 = v163;
    v34 = v164;
    v35 = v165;
    *(v26 + 224) = v166;
    *(v26 + 192) = v34;
    *(v26 + 208) = v35;
    *(v26 + 176) = v33;
    v6 = v104;
  }

  while (v5 != v4);
LABEL_45:
  v36 = *(v7 + 16);
  if (!v36)
  {
    v38 = MEMORY[0x277D84F90];
LABEL_89:

    return v38;
  }

  v37 = 0;
  v105 = *(v7 + 16);
  v102 = v36 - 1;
  v38 = MEMORY[0x277D84F90];
  v39 = v179;
LABEL_47:
  v103 = v38;
  v40 = 200 * v37 + 32;
  v41 = v37;
  v42 = v105;
  while (2)
  {
    if (v41 >= *(v7 + 16))
    {
      goto LABEL_100;
    }

    v154 = *(v7 + v40);
    v43 = *(v7 + v40 + 16);
    v44 = *(v7 + v40 + 32);
    v45 = *(v7 + v40 + 48);
    v158 = *(v7 + v40 + 64);
    v157 = v45;
    v156 = v44;
    v155 = v43;
    v46 = *(v7 + v40 + 80);
    v47 = *(v7 + v40 + 96);
    v48 = *(v7 + v40 + 112);
    v162 = *(v7 + v40 + 128);
    v161 = v48;
    v160 = v47;
    v159 = v46;
    v49 = *(v7 + v40 + 144);
    v50 = *(v7 + v40 + 160);
    v51 = *(v7 + v40 + 176);
    v166 = *(v7 + v40 + 192);
    v165 = v51;
    v164 = v50;
    v163 = v49;
    v52 = *(v7 + v40);
    v53 = *(v7 + v40 + 16);
    v54 = *(v7 + v40 + 32);
    v170 = *(v7 + v40 + 48);
    v169 = v54;
    v168 = v53;
    v167 = v52;
    v55 = *(v7 + v40 + 64);
    v56 = *(v7 + v40 + 80);
    v57 = *(v7 + v40 + 96);
    v174 = *(v7 + v40 + 112);
    v173 = v57;
    v172 = v56;
    v171 = v55;
    v58 = *(v7 + v40 + 128);
    v59 = *(v7 + v40 + 144);
    v60 = *(v7 + v40 + 160);
    v178 = *(v7 + v40 + 176);
    v177 = v60;
    v176 = v59;
    v175 = v58;
    v61 = sub_26BE5CD48(&v167);
    if (v61 <= 1)
    {
      if (v61 == 1)
      {
        v64 = sub_26BE5CDC8(&v167);
        if ((BYTE12(v165) & 1) == 0)
        {
          v65 = v64;
          v179 = v39;
          v66 = DWORD2(v165);
          v67 = type metadata accessor for MLS.GroupState(0);
          v68 = *(v67 + 52);
          if (v66 == *(v3 + v68))
          {
            v69 = v67;
            sub_26BE5CE40(v3 + *(v67 + 64), &v131);
            if (*(&v132 + 1))
            {
              v143 = v133[7];
              v144 = v133[8];
              v138 = v133[2];
              v139 = v133[3];
              v141 = v133[5];
              v142 = v133[6];
              v140 = v133[4];
              __dst = v131;
              v135 = v132;
              v136 = v133[0];
              v137 = v133[1];
              v125[6] = *(&v133[6] + 8);
              v125[7] = *(&v133[7] + 8);
              v126 = *(&v133[8] + 1);
              v125[2] = *(&v133[2] + 8);
              v125[3] = *(&v133[3] + 8);
              v125[4] = *(&v133[4] + 8);
              v125[5] = *(&v133[5] + 8);
              v125[0] = *(v133 + 8);
              v125[1] = *(&v133[1] + 8);
              v70 = *(v65 + 112);
              v122 = *(v65 + 96);
              v123 = v70;
              v124 = *(v65 + 128);
              v71 = *(v65 + 48);
              v118 = *(v65 + 32);
              v119 = v71;
              v72 = *(v65 + 80);
              v120 = *(v65 + 64);
              v121 = v72;
              v73 = *(v65 + 16);
              v116 = *v65;
              v117 = v73;
              v113 = *(&v133[6] + 8);
              v114 = *(&v133[7] + 8);
              v115 = *(&v133[8] + 1);
              v109 = *(&v133[2] + 8);
              v110 = *(&v133[3] + 8);
              v111 = *(&v133[4] + 8);
              v112 = *(&v133[5] + 8);
              v107 = *(v133 + 8);
              v108 = *(&v133[1] + 8);
              sub_26BE5CDE4(&v154, &v145);
              sub_26BE5CDE4(&v154, &v145);
              sub_26BE5CDE4(&v154, &v145);
              sub_26BE5CEB0(v125, &v145);
              v74 = _s8SwiftMLS0B0O8LeafNodeV2eeoiySbAE_AEtFZ_0(&v116, &v107);
              v127[6] = v113;
              v127[7] = v114;
              v128 = v115;
              v127[2] = v109;
              v127[3] = v110;
              v127[4] = v111;
              v127[5] = v112;
              v127[0] = v107;
              v127[1] = v108;
              sub_26BE00854(v127);
              v129[6] = v122;
              v129[7] = v123;
              v130 = v124;
              v129[2] = v118;
              v129[3] = v119;
              v129[4] = v120;
              v129[5] = v121;
              v129[0] = v116;
              v129[1] = v117;
              sub_26BE00854(v129);
              if (v74)
              {
                v106 = *(v3 + v68);
                v75 = *(v65 + 112);
                v122 = *(v65 + 96);
                v123 = v75;
                v124 = *(v65 + 128);
                v76 = *(v65 + 48);
                v118 = *(v65 + 32);
                v119 = v76;
                v77 = *(v65 + 80);
                v120 = *(v65 + 64);
                v121 = v77;
                v78 = *(v65 + 16);
                v116 = *v65;
                v117 = v78;
                sub_26BE5CDE4(&v154, &v145);
                v79 = v179;
                MLS.TreeKEMPublicKey.updateLeaf(index:leafNode:)(&v106, &v116);
                v39 = v79;
                if (v79)
                {

                  sub_26BE5CD74(&v154);
                  sub_26BE5CD74(&v154);
                  v150 = v121;
                  v151 = v122;
                  v152 = v123;
                  v146 = v117;
                  v147 = v118;
                  v148 = v119;
                  v149 = v120;
                  v153 = v124;
                  v145 = v116;
                  sub_26BE00854(&v145);
                  sub_26BE5CF0C(&__dst);
                  goto LABEL_96;
                }

                v150 = v121;
                v151 = v122;
                v152 = v123;
                v146 = v117;
                v147 = v118;
                v148 = v119;
                v149 = v120;
                v153 = v124;
                v145 = v116;
                result = sub_26BE00854(&v145);
                v81 = *(v3 + *(v69 + 32) + 4);
                if (v81 < 0)
                {
                  goto LABEL_105;
                }

                v82 = (2 * v81);
                sub_26BE038A8(&__dst, &v107);
                sub_26BE4D0C0(&v107, v82);
                sub_26BE5CD74(&v154);
                sub_26BE5CD74(&v154);
                sub_26BE5CF0C(&__dst);
LABEL_48:
                v42 = v105;
LABEL_49:
                ++v41;
                v40 += 200;
                if (v42 == v41)
                {
                  v38 = v103;
                  goto LABEL_89;
                }

                continue;
              }

              sub_26BE5CF0C(&__dst);
            }

            else
            {
              sub_26BE5CDE4(&v154, &v145);
              sub_26BE5CDE4(&v154, &v145);

              sub_26BE5CCE0(&v131);
            }

            sub_26BE01654();
            swift_allocError();
            *v101 = 19;
            v101[112] = 0;
            swift_willThrow();
            sub_26BE5CD74(&v154);
            sub_26BE5CD74(&v154);
            goto LABEL_96;
          }

          LODWORD(v131) = v66;
          v139 = *(v65 + 80);
          v140 = *(v65 + 96);
          v141 = *(v65 + 112);
          *&v142 = *(v65 + 128);
          v135 = *(v65 + 16);
          v136 = *(v65 + 32);
          v137 = *(v65 + 48);
          v138 = *(v65 + 64);
          __dst = *v65;
          sub_26BE5CDE4(&v154, &v145);
          sub_26BE5CDE4(&v154, &v145);
          sub_26BE5CDE4(&v154, &v145);
          v88 = v179;
          MLS.TreeKEMPublicKey.updateLeaf(index:leafNode:)(&v131, &__dst);
          v39 = v88;
          if (!v88)
          {
            sub_26BE5CD74(&v154);
            sub_26BE5CD74(&v154);
            v150 = v139;
            v151 = v140;
            v152 = v141;
            v146 = v135;
            v147 = v136;
            v148 = v137;
            v149 = v138;
            v153 = v142;
            v145 = __dst;
            sub_26BE00854(&v145);
            goto LABEL_48;
          }

          sub_26BE5CD74(&v154);
LABEL_92:
          sub_26BE5CD74(&v154);
          v150 = v139;
          v151 = v140;
          v152 = v141;
          v146 = v135;
          v147 = v136;
          v148 = v137;
          v149 = v138;
          v153 = v142;
          v145 = __dst;
          sub_26BE00854(&v145);
          goto LABEL_96;
        }

        sub_26BE5CDE4(&v154, &v145);
        sub_26BE5CDE4(&v154, &v145);
        sub_26BE5CDE4(&v154, &v145);
        v38 = v103;

        sub_26BE01654();
        swift_allocError();
        *v100 = 7;
        v100[112] = 0;
        swift_willThrow();
        sub_26BE5CD74(&v154);
      }

      else
      {
        if (!v61)
        {
          v89 = sub_26BE5CDC8(&v167);
          v90 = *(v89 + 120);
          v139 = *(v89 + 104);
          v140 = v90;
          v141 = *(v89 + 136);
          *&v142 = *(v89 + 152);
          v91 = *(v89 + 56);
          v135 = *(v89 + 40);
          v136 = v91;
          v92 = *(v89 + 88);
          v137 = *(v89 + 72);
          v138 = v92;
          __dst = *(v89 + 24);
          sub_26BE5CDE4(&v154, &v145);
          sub_26BE00758(v89 + 24, &v145);
          MLS.TreeKEMPublicKey.addLeaf(_:)(&__dst, &v131);
          if (v39)
          {
            goto LABEL_101;
          }

          v150 = v139;
          v151 = v140;
          v152 = v141;
          v146 = v135;
          v147 = v136;
          v148 = v137;
          v149 = v138;
          v153 = v142;
          v145 = __dst;
          sub_26BE00854(&v145);
          v93 = v131;
          v38 = v103;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          LODWORD(v179) = v93;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v38 = sub_26BEECEB4(0, *(v103 + 2) + 1, 1, v103);
          }

          v96 = *(v38 + 2);
          v95 = *(v38 + 3);
          if (v96 >= v95 >> 1)
          {
            v38 = sub_26BEECEB4((v95 > 1), v96 + 1, 1, v38);
          }

          v37 = v41 + 1;
          sub_26BE5CD74(&v154);
          *(v38 + 2) = v96 + 1;
          *&v38[4 * v96 + 32] = v179;
          if (v102 == v41)
          {
            goto LABEL_89;
          }

          goto LABEL_47;
        }

LABEL_84:
        sub_26BE5CDE4(&v154, &v145);
        sub_26BE5CDE4(&v154, &v145);
        v38 = v103;

        sub_26BE01654();
        swift_allocError();
        *v99 = 15;
        v99[112] = 3;
        swift_willThrow();
      }

      sub_26BE5CD74(&v154);
      sub_26BE5CD74(&v154);
      return v38;
    }

    break;
  }

  if (v61 != 2)
  {
    if (v61 != 6)
    {
      goto LABEL_84;
    }

    v62 = *sub_26BE5CDC8(&v167);
    v63 = *(type metadata accessor for MLS.GroupState(0) + 40);
    sub_26BE5CDE4(&v154, &v145);

    *(v3 + v63) = v62;
    goto LABEL_48;
  }

  result = sub_26BE5CDC8(&v167);
  v83 = *result;
  if ((*result & 0x80000000) != 0)
  {
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    return result;
  }

  v84 = *(v3 + 48);
  v85 = v84 - 1;
  if (!v84)
  {
    goto LABEL_103;
  }

  if (v85 < 0)
  {
    goto LABEL_104;
  }

  v86 = (2 * v83);
  if (v86 <= 2 * v85)
  {
    v87 = *(v3 + 56);
    if (*(v87 + 16) <= v86 || (memmove(&__dst, (v87 + 136 * v86 + 32), 0x88uLL), sub_26BE58C10(&__dst) == 1))
    {
      sub_26BE5CDE4(&v154, &v145);

      sub_26BE01654();
      swift_allocError();
      *v97 = 13;
      v98 = 3;
      goto LABEL_88;
    }

    LODWORD(v131) = v83;
    sub_26BE5CDE4(&v154, &v145);
    MLS.TreeKEMPublicKey.blankPath(index:)(&v131);
    if (v39)
    {
      v38 = v103;

      goto LABEL_89;
    }

    goto LABEL_49;
  }

  sub_26BE5CDE4(&v154, &v145);

  sub_26BE01654();
  swift_allocError();
  *v97 = 30;
  *(v97 + 8) = 0u;
  *(v97 + 24) = 0u;
  *(v97 + 40) = 0u;
  *(v97 + 56) = 0u;
  *(v97 + 72) = 0u;
  *(v97 + 88) = 0u;
  *(v97 + 104) = 0;
  v98 = 23;
LABEL_88:
  *(v97 + 112) = v98;
  swift_willThrow();
LABEL_96:
  v38 = v103;

  return v38;
}

BOOL sub_26BE5CC90()
{
  v1 = *(v0 + *(type metadata accessor for MLS.GroupState(0) + 40));
  v2 = (v1 + 32);
  v3 = *(v1 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = *v2;
    v2 += 12;
  }

  while (v4 != -4094);
  return v3 != 0;
}

uint64_t sub_26BE5CCE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E730, &qword_26C011528);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BE5CD48(uint64_t a1)
{
  v1 = (*(a1 + 176) >> 58) & 0xC | (*(a1 + 152) >> 60) & 3;
  if (v1 <= 9)
  {
    return v1;
  }

  else
  {
    return (*a1 + 10);
  }
}

uint64_t sub_26BE5CDC8(uint64_t result)
{
  v1 = *(result + 176) & 0xCFFFFFFFFFFFFFFFLL;
  *(result + 152) &= 0xCFFFFFFFFFFFFFFFLL;
  *(result + 176) = v1;
  return result;
}

uint64_t sub_26BE5CE40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E730, &qword_26C011528);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BE5CF64(void (*a1)(_OWORD *__return_ptr, __int128 *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v77 = a2;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v76 = MEMORY[0x277D84F90];
    sub_26BECBA94(0, v5, 0);
    v6 = v76;
    v9 = (a3 + 32);
    for (i = v5 - 1; ; --i)
    {
      v11 = v9[9];
      v12 = v9[7];
      v72 = v9[8];
      v73 = v11;
      v13 = v9[9];
      v74 = v9[10];
      v14 = v9[5];
      v15 = v9[3];
      v68 = v9[4];
      v69 = v14;
      v16 = v9[5];
      v17 = v9[7];
      v70 = v9[6];
      v71 = v17;
      v18 = v9[1];
      v65[0] = *v9;
      v65[1] = v18;
      v19 = v9[3];
      v21 = *v9;
      v20 = v9[1];
      v66 = v9[2];
      v67 = v19;
      v59 = v72;
      v60 = v13;
      v61 = v9[10];
      v55 = v68;
      v56 = v16;
      v57 = v70;
      v58 = v12;
      v51 = v21;
      v52 = v20;
      v75 = *(v9 + 22);
      v62 = *(v9 + 22);
      v53 = v66;
      v54 = v15;
      sub_26BE71830(v65, &v37);
      a1(v63, &v51, &v50);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v35[8] = v59;
      v35[9] = v60;
      v35[10] = v61;
      v36 = v62;
      v35[4] = v55;
      v35[5] = v56;
      v35[6] = v57;
      v35[7] = v58;
      v35[0] = v51;
      v35[1] = v52;
      v35[2] = v53;
      v35[3] = v54;
      sub_26BE7188C(v35);
      v39 = v63[2];
      v40 = v63[3];
      v38 = v63[1];
      v43 = v63[6];
      v44 = v63[7];
      v41 = v63[4];
      v42 = v63[5];
      v47 = v63[10];
      v48 = v63[11];
      v45 = v63[8];
      v46 = v63[9];
      v49 = v64;
      v23 = *(v6 + 16);
      v22 = *(v6 + 24);
      v37 = v63[0];
      v76 = v6;
      if (v23 >= v22 >> 1)
      {
        sub_26BECBA94((v22 > 1), v23 + 1, 1);
        v6 = v76;
      }

      *(v6 + 16) = v23 + 1;
      v24 = v6 + 200 * v23;
      *(v24 + 32) = v37;
      v25 = v38;
      v26 = v39;
      v27 = v41;
      *(v24 + 80) = v40;
      *(v24 + 96) = v27;
      *(v24 + 48) = v25;
      *(v24 + 64) = v26;
      v28 = v42;
      v29 = v43;
      v30 = v45;
      *(v24 + 144) = v44;
      *(v24 + 160) = v30;
      *(v24 + 112) = v28;
      *(v24 + 128) = v29;
      v31 = v46;
      v32 = v47;
      v33 = v48;
      *(v24 + 224) = v49;
      *(v24 + 192) = v32;
      *(v24 + 208) = v33;
      *(v24 + 176) = v31;
      if (!i)
      {
        return v6;
      }

      v9 = (v9 + 184);
    }

    v45 = v59;
    v46 = v60;
    v47 = v61;
    *&v48 = v62;
    v41 = v55;
    v42 = v56;
    v43 = v57;
    v44 = v58;
    v37 = v51;
    v38 = v52;
    v39 = v53;
    v40 = v54;
    sub_26BE7188C(&v37);
  }

  return v6;
}

uint64_t sub_26BE5D1F0(void (*a1)(_OWORD *__return_ptr, __int128 *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v30 = MEMORY[0x277D84F90];
    sub_26BECBB34(0, v5, 0);
    v6 = v30;
    for (i = (a3 + 32); ; ++i)
    {
      v27 = *i;
      sub_26BE00608(v27, *(&v27 + 1));
      a1(v28, &v27, &v26);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_26BE00258(v27, *(&v27 + 1));
      v16 = v28[2];
      v17 = v28[3];
      v14 = v28[0];
      v15 = v28[1];
      v20 = v28[6];
      v21 = v28[7];
      v18 = v28[4];
      v19 = v28[5];
      v23 = v28[9];
      v24 = v28[10];
      v22 = v28[8];
      v25 = v29;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      v30 = v6;
      if (v11 >= v10 >> 1)
      {
        sub_26BECBB34((v10 > 1), v11 + 1, 1);
        v6 = v30;
      }

      *(v6 + 16) = v11 + 1;
      v12 = v6 + 184 * v11;
      *(v12 + 64) = v16;
      *(v12 + 80) = v17;
      *(v12 + 32) = v14;
      *(v12 + 48) = v15;
      *(v12 + 128) = v20;
      *(v12 + 144) = v21;
      *(v12 + 96) = v18;
      *(v12 + 112) = v19;
      *(v12 + 208) = v25;
      *(v12 + 176) = v23;
      *(v12 + 192) = v24;
      *(v12 + 160) = v22;
      if (!--v5)
      {
        return v6;
      }
    }

    sub_26BE00258(v27, *(&v27 + 1));
  }

  return v6;
}

uint64_t sub_26BE5D390(void (*a1)(_OWORD *__return_ptr, __int128 *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v48 = MEMORY[0x277D84F90];
    sub_26BECBB34(0, v5, 0);
    v7 = a3 + 64;
    result = sub_26C00AB4C();
    v8 = a3;
    v9 = result;
    if (result < 0 || result >= 1 << *(a3 + 32))
    {
LABEL_25:
      __break(1u);
    }

    else
    {
      result = v48;
      v28 = v5;
      v10 = *(a3 + 36);
      v11 = 1;
      while (1)
      {
        v12 = v9 >> 6;
        if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
        {
          break;
        }

        v31 = v11;
        v13 = result;
        v45 = *(*(v8 + 56) + 16 * v9);
        sub_26BE00608(v45, *(&v45 + 1));
        a1(v46, &v45, &v44);
        if (v4)
        {
          sub_26BE00258(v45, *(&v45 + 1));
        }

        sub_26BE00258(v45, *(&v45 + 1));
        v34 = v46[2];
        v35 = v46[3];
        v33 = v46[1];
        v38 = v46[6];
        v39 = v46[7];
        v36 = v46[4];
        v37 = v46[5];
        v41 = v46[9];
        v42 = v46[10];
        v40 = v46[8];
        v43 = v47;
        result = v13;
        v15 = *(v13 + 16);
        v14 = *(v13 + 24);
        v32 = v46[0];
        v48 = v13;
        if (v15 >= v14 >> 1)
        {
          sub_26BECBB34((v14 > 1), v15 + 1, 1);
          result = v48;
        }

        *(result + 16) = v15 + 1;
        v16 = result + 184 * v15;
        *(v16 + 64) = v34;
        *(v16 + 80) = v35;
        *(v16 + 32) = v32;
        *(v16 + 48) = v33;
        *(v16 + 128) = v38;
        *(v16 + 144) = v39;
        *(v16 + 96) = v36;
        *(v16 + 112) = v37;
        *(v16 + 208) = v43;
        *(v16 + 176) = v41;
        *(v16 + 192) = v42;
        *(v16 + 160) = v40;
        v8 = a3;
        v17 = 1 << *(a3 + 32);
        if (v9 >= v17)
        {
          goto LABEL_27;
        }

        v18 = *(v7 + 8 * v12);
        if ((v18 & (1 << v9)) == 0)
        {
          goto LABEL_28;
        }

        if (v10 != *(a3 + 36))
        {
          goto LABEL_29;
        }

        v19 = v18 & (-2 << (v9 & 0x3F));
        if (v19)
        {
          v9 = __clz(__rbit64(v19)) | v9 & 0x7FFFFFFFFFFFFFC0;
          v20 = v28;
        }

        else
        {
          v21 = v12 << 6;
          v22 = v12 + 1;
          v20 = v28;
          v23 = (a3 + 72 + 8 * v12);
          while (v22 < (v17 + 63) >> 6)
          {
            v25 = *v23++;
            v24 = v25;
            v21 += 64;
            ++v22;
            if (v25)
            {
              v26 = result;
              sub_26BE2E070(v9, v10, 0);
              v8 = a3;
              result = v26;
              v9 = __clz(__rbit64(v24)) + v21;
              goto LABEL_19;
            }
          }

          v27 = result;
          sub_26BE2E070(v9, v10, 0);
          v8 = a3;
          result = v27;
          v9 = v17;
        }

LABEL_19:
        v4 = 0;
        if (v31 == v20)
        {
          return result;
        }

        if ((v9 & 0x8000000000000000) == 0)
        {
          v10 = *(v8 + 36);
          v11 = v31 + 1;
          if (v9 < 1 << *(v8 + 32))
          {
            continue;
          }
        }

        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t MLS.GroupState.HandshakeMessageOptions.init(encrypt:authenticatedData:paddingSize:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

__n128 MLS.ResolvedProposal.init(proposal:sender:originalProposalType:)@<Q0>(uint64_t a1@<X0>, int *a2@<X1>, __int16 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 4);
  v6 = *a3;
  v7 = *(a3 + 2);
  v8 = *(a1 + 144);
  *(a4 + 128) = *(a1 + 128);
  *(a4 + 144) = v8;
  *(a4 + 160) = *(a1 + 160);
  *(a4 + 176) = *(a1 + 176);
  v9 = *(a1 + 80);
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = v9;
  v10 = *(a1 + 112);
  *(a4 + 96) = *(a1 + 96);
  *(a4 + 112) = v10;
  v11 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v11;
  result = *(a1 + 32);
  v13 = *(a1 + 48);
  *(a4 + 32) = result;
  *(a4 + 48) = v13;
  *(a4 + 184) = v4;
  *(a4 + 188) = v5;
  *(a4 + 190) = v6;
  *(a4 + 192) = v7;
  return result;
}

uint64_t MLS.GroupState.processIncomingMessage(_:cachedStateAndCommitMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v173 = a2;
  v109 = a3;
  v5 = type metadata accessor for MLS.AuthenticatedContent(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v108 - v9;
  v11 = type metadata accessor for MLS.GroupState(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v108 - v15;
  v17 = type metadata accessor for MLS.ValidatedContent(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v110;
  result = MLS.GroupState.unwrapMessage(_:)(a1, v19);
  if (!v20)
  {
    v22 = v173;
    v108 = v17;
    *&v110 = 0;
    v23 = *(v19 + 200);
    v168 = *(v19 + 184);
    v169 = v23;
    v170[0] = *(v19 + 216);
    *(v170 + 9) = *(v19 + 225);
    v24 = *(v19 + 136);
    v164 = *(v19 + 120);
    v165 = v24;
    v25 = *(v19 + 168);
    v166 = *(v19 + 152);
    v167 = v25;
    v26 = *(v19 + 72);
    v160 = *(v19 + 56);
    v161 = v26;
    v27 = *(v19 + 104);
    v162 = *(v19 + 88);
    v163 = v27;
    v28 = *(v19 + 200);
    v171[8] = *(v19 + 184);
    v171[9] = v28;
    v172[0] = *(v19 + 216);
    *(v172 + 9) = *(v19 + 225);
    v29 = *(v19 + 136);
    v171[4] = *(v19 + 120);
    v171[5] = v29;
    v30 = *(v19 + 168);
    v171[6] = *(v19 + 152);
    v171[7] = v30;
    v31 = *(v19 + 72);
    v171[0] = *(v19 + 56);
    v171[1] = v31;
    v32 = *(v19 + 104);
    v171[2] = *(v19 + 88);
    v171[3] = v32;
    v33 = sub_26BE6917C(v171);
    if (v33)
    {
      if (v33 != 1)
      {
        nullsub_1();
        sub_26BE6FEC8(v3, v16, type metadata accessor for MLS.GroupState);
        v51 = v110;
        sub_26BE5EF48(v14, &v149, v19, v22);
        if (v51)
        {
          sub_26BE69184(v16, type metadata accessor for MLS.GroupState);
          return sub_26BE69184(v19, type metadata accessor for MLS.ValidatedContent);
        }

        sub_26BE69184(v3, type metadata accessor for MLS.GroupState);
        v146 = v157;
        v147 = v158;
        v148[0] = v159[0];
        v142 = v153;
        v143 = v154;
        v144 = v155;
        v145 = v156;
        v138 = v149;
        v139 = v150;
        v140 = v151;
        v141 = v152;
        sub_26BE70034(v14, v3, type metadata accessor for MLS.GroupState);
        v135 = v146;
        v136 = v147;
        v137[0] = v148[0];
        v131 = v142;
        v132 = v143;
        v133 = v144;
        v134 = v145;
        v128 = v138;
        *v129 = v139;
        *&v129[16] = v140;
        v130 = v141;
        sub_26BE6FF30(&v138, &v111);
        sub_26BF91664(&v128, v3, &v122);
        v119 = v135;
        v120 = v136;
        v121 = v137[0];
        v115 = v131;
        v116 = v132;
        v117 = v133;
        v118 = v134;
        v111 = v128;
        v112 = *v129;
        v113 = *&v129[16];
        v114 = v130;
        sub_26BE6FF8C(&v111);
        sub_26BE6FF8C(&v138);
        sub_26BE69184(v19, type metadata accessor for MLS.ValidatedContent);
        v75 = v124;
        v76 = v125;
        v77 = v126;
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E740, &unk_26C011540);
        v79 = v109 + *(v78 + 48);
        sub_26BE70034(v16, v109, type metadata accessor for MLS.GroupState);
        v80 = v123;
        *v79 = v122;
        *(v79 + 1) = v80;
        v79[32] = v75;
        *(v79 + 5) = v76;
        v79[48] = v77;
        type metadata accessor for MLS.GroupState.ReceivedMessageDetails(0);
        return swift_storeEnumTagMultiPayload();
      }

      nullsub_1();
      v35 = *(v34 + 48);
      v37 = *v34;
      v36 = *(v34 + 16);
      v140 = *(v34 + 32);
      v141 = v35;
      v138 = v37;
      v139 = v36;
      v38 = *(v34 + 112);
      v40 = *(v34 + 64);
      v39 = *(v34 + 80);
      v144 = *(v34 + 96);
      v145 = v38;
      v142 = v40;
      v143 = v39;
      v42 = *(v34 + 144);
      v41 = *(v34 + 160);
      v43 = *(v34 + 128);
      *&v148[1] = *(v34 + 176);
      v147 = v42;
      v148[0] = v41;
      v146 = v43;
      v44 = sub_26BE5CD48(&v138);
      if (v44 <= 4)
      {
        if (v44 != 2)
        {
LABEL_15:
          sub_26BE5CDC8(&v138);
          v157 = v168;
          v158 = v169;
          v159[0] = v170[0];
          *(v159 + 9) = *(v170 + 9);
          v153 = v164;
          v154 = v165;
          v155 = v166;
          v156 = v167;
          v149 = v160;
          v150 = v161;
          v151 = v162;
          v152 = v163;
          nullsub_1();
          sub_26BE6FE6C(v52, &v128);
LABEL_25:
          v45 = v110;
LABEL_26:
          sub_26BE61440(v19);
          if (v45)
          {
            sub_26BE69184(v19, type metadata accessor for MLS.ValidatedContent);
            return sub_26BE6FD84(&v160);
          }

          sub_26BE6FD84(&v160);
          sub_26BE69184(v19, type metadata accessor for MLS.ValidatedContent);
          type metadata accessor for MLS.GroupState.ReceivedMessageDetails(0);
          return swift_storeEnumTagMultiPayload();
        }
      }

      else
      {
        v45 = v110;
        if (v44 <= 7)
        {
          if (v44 != 5 && v44 != 6)
          {
            sub_26BE5CDC8(&v138);
            v46 = v19;
            v47 = v19;
            v48 = v10;
            sub_26BE6FEC8(v46, v10, type metadata accessor for MLS.AuthenticatedContent);
            if (v10[36])
            {
              sub_26BE01654();
              swift_allocError();
              *v49 = 8;
              v49[112] = 6;
              swift_willThrow();
LABEL_55:
              sub_26BE69184(v10, type metadata accessor for MLS.AuthenticatedContent);
              v66 = v47;
              return sub_26BE69184(v66, type metadata accessor for MLS.ValidatedContent);
            }

            v86 = 0;
            v87 = *(v10 + 8);
            v88 = *(v10 + 5);
            v89 = *(v10 + 6);
            v90 = v89 >> 62;
            if ((v89 >> 62) > 1)
            {
              v91 = v110;
              if (v90 == 2)
              {
                v86 = *(v88 + 16);
                goto LABEL_52;
              }
            }

            else
            {
              v91 = v110;
              if (v90)
              {
                v86 = v88;
LABEL_52:
                sub_26BE00608(*(v10 + 5), *(v10 + 6));
                v91 = v110;
              }
            }

            *&v128 = v88;
            *(&v128 + 1) = v89;
            *v129 = v86;
            sub_26BFF91C8(&v149);
            if (v91)
            {
              *&v111 = &type metadata for MLS.AuthenticatedData;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E738, &unk_26C011530);
              v99 = sub_26C00A4FC();
              sub_26BE826C4(v99, v100, v88, v89);

              swift_willThrow();
              sub_26BE00258(v128, *(&v128 + 1));
              goto LABEL_55;
            }

            sub_26BE00258(v128, *(&v128 + 1));
            sub_26BE2E1F0(&v151, &v111, &qword_28045E2A8, &qword_26C028DD0);
            if (*(&v112 + 1))
            {
              sub_26BE03890(&v111, &v128);
              v110 = *&v129[8];
              v101 = __swift_project_boxed_opaque_existential_1(&v128, *&v129[8]);
              v102 = MEMORY[0x28223BE20](v101);
              *(&v108 - 2) = v110;
              *(&v108 - 2) = sub_26BE61318;
              *(&v108 - 1) = 0;
              sub_26BE82550(v102, sub_26BE6FE4C);
              v104 = v103;
              v106 = v105;
              sub_26BE6FDD8(&v149);
              sub_26BE69184(v48, type metadata accessor for MLS.AuthenticatedContent);
              sub_26BE69184(v47, type metadata accessor for MLS.ValidatedContent);
              __swift_destroy_boxed_opaque_existential_1(&v128);
            }

            else
            {
              sub_26BE6FDD8(&v149);
              sub_26BE69184(v10, type metadata accessor for MLS.AuthenticatedContent);
              sub_26BE69184(v47, type metadata accessor for MLS.ValidatedContent);
              sub_26BE2E258(&v111, &qword_28045E2A8, &qword_26C028DD0);
              v104 = 0;
              v106 = 0xC000000000000000;
            }

            v107 = v109;
            *v109 = v87;
            *(v107 + 1) = v104;
            *(v107 + 2) = v106;
            type metadata accessor for MLS.GroupState.ReceivedMessageDetails(0);
            return swift_storeEnumTagMultiPayload();
          }

          goto LABEL_15;
        }

        if (v44 != 8)
        {
          if (v44 == 9)
          {
            sub_26BE5CDC8(&v138);
            v45 = v110;
          }

          goto LABEL_26;
        }
      }

      sub_26BE5CDC8(&v138);
      goto LABEL_25;
    }

    nullsub_1();
    sub_26BE6FEC8(v19, v8, type metadata accessor for MLS.AuthenticatedContent);
    if (v8[36])
    {
      sub_26BE01654();
      swift_allocError();
      *v50 = 8;
      v50[112] = 6;
LABEL_18:
      swift_willThrow();
      sub_26BE69184(v8, type metadata accessor for MLS.AuthenticatedContent);
      v66 = v19;
      return sub_26BE69184(v66, type metadata accessor for MLS.ValidatedContent);
    }

    v53 = v19;
    v54 = *(v8 + 8);
    v55 = *(v8 + 200);
    v146 = *(v8 + 184);
    v147 = v55;
    v148[0] = *(v8 + 216);
    *(v148 + 9) = *(v8 + 225);
    v56 = *(v8 + 136);
    v142 = *(v8 + 120);
    v143 = v56;
    v57 = *(v8 + 168);
    v144 = *(v8 + 152);
    v145 = v57;
    v58 = *(v8 + 72);
    v138 = *(v8 + 56);
    v139 = v58;
    v59 = *(v8 + 104);
    v140 = *(v8 + 88);
    v141 = v59;
    v60 = *(v8 + 200);
    v157 = *(v8 + 184);
    v158 = v60;
    v159[0] = *(v8 + 216);
    *(v159 + 9) = *(v8 + 225);
    v61 = *(v8 + 136);
    v153 = *(v8 + 120);
    v154 = v61;
    v62 = *(v8 + 168);
    v155 = *(v8 + 152);
    v156 = v62;
    v63 = *(v8 + 72);
    v149 = *(v8 + 56);
    v150 = v63;
    v64 = *(v8 + 104);
    v151 = *(v8 + 88);
    v152 = v64;
    if (sub_26BE6917C(&v149))
    {
      sub_26BE01654();
      swift_allocError();
      *v65 = 4;
      v65[112] = 0;
      v19 = v53;
      goto LABEL_18;
    }

    nullsub_1();
    v68 = v67[1];
    v173 = *v67;
    v135 = v146;
    v136 = v147;
    v137[0] = v148[0];
    *(v137 + 9) = *(v148 + 9);
    v131 = v142;
    v132 = v143;
    v133 = v144;
    v134 = v145;
    v128 = v138;
    *v129 = v139;
    *&v129[16] = v140;
    v130 = v141;
    nullsub_1();
    sub_26BE00608(*v69, *(v69 + 8));
    sub_26BE69184(v8, type metadata accessor for MLS.AuthenticatedContent);
    v70 = *(v53 + 5);
    v71 = *(v53 + 6);
    v72 = v71 >> 62;
    if ((v71 >> 62) > 1)
    {
      if (v72 != 2)
      {
        goto LABEL_38;
      }

      v81 = *(v70 + 16);
      v82 = *(v70 + 24);
    }

    else
    {
      v73 = v110;
      if (!v72)
      {
        if ((v71 & 0xFF000000000000) != 0)
        {
          v74 = 0;
LABEL_46:
          *&v122 = v70;
          *(&v122 + 1) = v71;
          *&v123 = v74;
          sub_26BFF91C8(&v111);
          *&v110 = v73;
          if (v73)
          {
            v127 = &type metadata for MLS.AuthenticatedData;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E738, &unk_26C011530);
            v92 = sub_26C00A4FC();
            sub_26BE826C4(v92, v93, v70, v71);

            swift_willThrow();
            sub_26BE6FD84(&v138);
            sub_26BE00258(v122, *(&v122 + 1));
            v66 = v53;
            return sub_26BE69184(v66, type metadata accessor for MLS.ValidatedContent);
          }

          sub_26BE00258(v122, *(&v122 + 1));
          v83 = *(&v111 + 1);
          v85 = v112;
          sub_26BE00608(*(&v111 + 1), v112);
          sub_26BE6FDD8(&v111);
          v84 = 0xC000000000000000;
          goto LABEL_49;
        }

        goto LABEL_38;
      }

      v81 = v70;
      v82 = v70 >> 32;
    }

    if (v81 != v82)
    {
      if (v72 == 2)
      {
        v74 = *(v70 + 16);
      }

      else
      {
        v74 = v70;
      }

      sub_26BE00608(*(v53 + 5), *(v53 + 6));
      v73 = v110;
      goto LABEL_46;
    }

LABEL_38:
    v83 = 0;
    v84 = 0xF000000000000000;
    v85 = 0xF000000000000000;
LABEL_49:
    v94 = v53;
    v95 = &v53[*(v108 + 20)];
    v96 = *v95;
    v97 = v95[4];
    sub_26BE69184(v94, type metadata accessor for MLS.ValidatedContent);
    LOBYTE(v111) = v97;
    v98 = v109;
    *v109 = v54;
    *(v98 + 1) = v173;
    *(v98 + 2) = v68;
    *(v98 + 3) = v83;
    *(v98 + 4) = v85;
    *(v98 + 5) = 0;
    *(v98 + 6) = v84;
    v98[14] = v96;
    *(v98 + 60) = v97;
    type metadata accessor for MLS.GroupState.ReceivedMessageDetails(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}