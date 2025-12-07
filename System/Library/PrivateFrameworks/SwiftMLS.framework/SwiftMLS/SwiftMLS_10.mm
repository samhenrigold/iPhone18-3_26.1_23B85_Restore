uint64_t sub_26BEC23AC(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = a3 + 32;
    v8 = v5 - 1;
    while (1)
    {
      v9 = *(v7 + 144);
      v10 = *(v7 + 176);
      v59 = *(v7 + 160);
      v60 = v10;
      v11 = *(v7 + 80);
      v12 = *(v7 + 112);
      v55 = *(v7 + 96);
      v56 = v12;
      v13 = *(v7 + 112);
      v14 = *(v7 + 144);
      v57 = *(v7 + 128);
      v58 = v14;
      v15 = *(v7 + 16);
      v16 = *(v7 + 48);
      v51 = *(v7 + 32);
      v52 = v16;
      v17 = *(v7 + 48);
      v18 = *(v7 + 80);
      v53 = *(v7 + 64);
      v54 = v18;
      v19 = *(v7 + 16);
      v50[0] = *v7;
      v50[1] = v19;
      v20 = *(v7 + 176);
      v47 = v59;
      v48 = v20;
      v43 = v55;
      v44 = v13;
      v45 = v57;
      v46 = v9;
      v39 = v51;
      v40 = v17;
      v41 = v53;
      v42 = v11;
      v61 = *(v7 + 192);
      v49 = *(v7 + 192);
      v37 = v50[0];
      v38 = v15;
      sub_26BE5CDE4(v50, &v24);
      v21 = a1(&v37);
      if (v3)
      {
        break;
      }

      v4 = v21;
      v34 = v47;
      v35 = v48;
      v36 = v49;
      v30 = v43;
      v31 = v44;
      v32 = v45;
      v33 = v46;
      v26 = v39;
      v27 = v40;
      v28 = v41;
      v29 = v42;
      v24 = v37;
      v25 = v38;
      sub_26BE5CD74(&v24);
      v22 = v8-- == 0;
      v7 += 200;
      if ((v4 | v22))
      {
        return v4 & 1;
      }
    }

    v34 = v47;
    v35 = v48;
    v36 = v49;
    v30 = v43;
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v26 = v39;
    v27 = v40;
    v28 = v41;
    v29 = v42;
    v24 = v37;
    v25 = v38;
    sub_26BE5CD74(&v24);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_26BEC254C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_26BEC25F8(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;
      sub_26BE00608(v9, *(&v9 + 1));
      v10 = a1(&v12);
      sub_26BE00258(v12, *(&v12 + 1));
      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t MLS.GroupState.verifyPathPresentIfRequiredInCommit(proposals:commit:)(uint64_t a1, uint64_t a2)
{
  result = _s8SwiftMLS0B0O6CommitV14isPathRequired9proposalsSbSayAC16ResolvedProposalVG_tFZ_0(a1);
  if (result)
  {
    v4 = *(a2 + 88);
    v5 = *(a2 + 120);
    v9[6] = *(a2 + 104);
    v9[7] = v5;
    v9[8] = *(a2 + 136);
    v6 = *(a2 + 24);
    v7 = *(a2 + 56);
    v9[2] = *(a2 + 40);
    v9[3] = v7;
    v9[4] = *(a2 + 72);
    v9[5] = v4;
    v9[0] = *(a2 + 8);
    v9[1] = v6;
    result = sub_26BE59C80(v9);
    if (result == 1)
    {
      sub_26BE01654();
      swift_allocError();
      *v8 = 0;
      v8[112] = 7;
      return swift_willThrow();
    }
  }

  return result;
}

void *MLS.GroupState.validateLeafNode(leafNode:validationContext:)(void *result, int *a2)
{
  v4 = *v2;
  if ((v4 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = result[2];
    v7 = result[3];
    v36 = result[14];
    v8 = *a2;
    v9 = *(a2 + 4);
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
    LOBYTE(v30) = v21[0];
    v32 = *&v21[8];
    v33 = v22;
    v34 = v23;
    MLS.Cryptography.Ciphersuite.importSignaturePublicKey(_:)(v6, v7, v35);
    if (v3)
    {
    }

    else
    {

      *v21 = *v5;
      *&v21[16] = v6;
      v22 = v7;
      v10 = v5[5];
      v25 = v5[4];
      v26 = v10;
      v27 = v5[6];
      v11 = v5[3];
      v23 = v5[2];
      v24 = v11;
      v28 = v36;
      v29 = *(v5 + 120);
      v20 = v4;
      v12 = *(v19 + 8);
      v13 = *(v19 + 16);
      v30 = v8;
      v31 = v9;
      sub_26BEC6398(&v20, v12, v13, &v30);
      *v21 = *v5;
      *&v21[16] = v6;
      v22 = v7;
      v14 = v5[5];
      v25 = v5[4];
      v26 = v14;
      v27 = v5[6];
      v15 = v5[3];
      v23 = v5[2];
      v24 = v15;
      v28 = v36;
      v29 = *(v5 + 120);
      if (sub_26BFF3840(v36, 0))
      {
        *v21 = *v5;
        *&v21[16] = v6;
        v22 = v7;
        v16 = v5[5];
        v25 = v5[4];
        v26 = v16;
        v27 = v5[6];
        v17 = v5[3];
        v23 = v5[2];
        v24 = v17;
        v28 = v36;
        v29 = *(v5 + 120);
        v30 = v8;
        v31 = v9;
        MLS.GroupState.validateLeafNodeSource(leafNode:validationContext:)(v21, &v30);
      }

      else
      {
        sub_26BE01654();
        swift_allocError();
        *v18 = 22;
        *(v18 + 8) = 0u;
        *(v18 + 24) = 0u;
        *(v18 + 40) = 0u;
        *(v18 + 56) = 0u;
        *(v18 + 72) = 0u;
        *(v18 + 88) = 0u;
        *(v18 + 104) = 0;
        *(v18 + 112) = 23;
        swift_willThrow();
      }

      return __swift_destroy_boxed_opaque_existential_1(v35);
    }
  }

  return result;
}

void MLS.GroupState.validateForNormalCommit(proposals:commitSender:)(uint64_t a1@<X0>, int *a2@<X1>, _BYTE *a3@<X8>)
{
  v8 = type metadata accessor for MLS.GroupState(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = 32;
    while (1)
    {
      v14 = *(a1 + v13 + 144);
      v15 = *(a1 + v13 + 176);
      v57 = *(a1 + v13 + 160);
      v58 = v15;
      v16 = *(a1 + v13 + 80);
      v17 = *(a1 + v13 + 112);
      v53 = *(a1 + v13 + 96);
      v54 = v17;
      v18 = *(a1 + v13 + 112);
      v19 = *(a1 + v13 + 144);
      v55 = *(a1 + v13 + 128);
      v56 = v19;
      v20 = *(a1 + v13 + 16);
      v21 = *(a1 + v13 + 48);
      v49 = *(a1 + v13 + 32);
      v50 = v21;
      v22 = *(a1 + v13 + 48);
      v23 = *(a1 + v13 + 80);
      v51 = *(a1 + v13 + 64);
      v52 = v23;
      v24 = *(a1 + v13 + 16);
      v47 = *(a1 + v13);
      v48 = v24;
      v25 = *(a1 + v13 + 176);
      v44 = v57;
      v45 = v25;
      v40[6] = v53;
      v41 = v18;
      v42 = v55;
      v43 = v14;
      v40[2] = v49;
      v40[3] = v22;
      v40[4] = v51;
      v40[5] = v16;
      v59 = *(a1 + v13 + 192);
      v46 = *(a1 + v13 + 192);
      v40[0] = v47;
      v40[1] = v20;
      v60 = v11;
      v61 = 0;
      sub_26BE5CDE4(&v47, v39);
      MLS.GroupState.validateProposal(_:commitSender:)(v40, &v60);
      if (v4)
      {
        break;
      }

      sub_26BE5CD74(&v47);
      v13 += 200;
      if (!--v12)
      {
        goto LABEL_5;
      }
    }

    sub_26BE5CD74(&v47);
    v39[0] = v4;
    v29 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED00, &qword_26C016510);
    if (swift_dynamicCast())
    {
      if (v41 == 20)
      {

        v30 = v40[0];
        v31 = BYTE4(v40[0]);
        v32 = DWORD2(v40[0]);
        v33 = BYTE12(v40[0]);
        MEMORY[0x28223BE20](v34);
        *(&v38 - 2) = v3;
        v35 = sub_26BEC23AC(sub_26BEC8B48, (&v38 - 4), a1);
        sub_26BE01654();
        swift_allocError();
        *v36 = v30;
        *(v36 + 4) = v31;
        *(v36 + 8) = v32;
        *(v36 + 12) = v33;
        *(v36 + 13) = v35 & 1;
        *(v36 + 112) = 20;
        swift_willThrow();
      }

      else
      {
        sub_26BE2DC9C(v40);
      }
    }
  }

  else
  {
LABEL_5:
    LODWORD(v47) = v11;
    sub_26BEC8154(a1, &v47);
    if (!v4)
    {
      LODWORD(v47) = v11;
      sub_26BEC825C(a1, &v47);
      sub_26BEC8344(a1);
      sub_26BEC8570(a1);
      sub_26BEC8754(a1);
      sub_26BEC898C(a1);
      sub_26BEC8A70(a1);
      sub_26BEC5C20(a1);
      sub_26BEC8BB8(v3, v10, type metadata accessor for MLS.GroupState);
      sub_26BE5BDA4(a1);

      v26 = *(v10 + 5);
      v27 = *(v10 + 12);
      v28 = *(v10 + 7);
      LOWORD(v47) = *(v10 + 16);
      *(&v47 + 1) = v26;
      LODWORD(v48) = v27;
      *(&v48 + 1) = v28;
      MEMORY[0x28223BE20](v26);
      *(&v38 - 2) = v10;

      MLS.TreeKEMPublicKey.eachLeaf(_:)(sub_26BEC8B68);

      sub_26BEC6BA0();
      MLS.GroupState.validateLeafNodeCapabilities()();
      sub_26BEC8C20(v10, type metadata accessor for MLS.GroupState);
      if (!v37)
      {
        *a3 = 0;
      }
    }
  }
}

void MLS.GroupState.validateForExternalCommit(proposals:)(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v112 = a2;
  v2 = *(result + 16);
  if (!v2)
  {
    v61 = *(MEMORY[0x277D84F90] + 16);

    if (v61 != 1)
    {
LABEL_32:
      sub_26BE01654();
      swift_allocError();
      v64 = 17;
      goto LABEL_33;
    }

    v35 = MEMORY[0x277D84F90];
LABEL_30:
    v62 = *(v35 + 16);
    if (v62 > 1)
    {

      sub_26BE01654();
      swift_allocError();
      v64 = 18;
LABEL_33:
      *v63 = v64;
      v63[112] = 3;
      swift_willThrow();
      return;
    }

    if (v62)
    {
      v65 = *(v35 + 192);
      v82 = *(v35 + 176);
      v83 = v65;
      v84 = *(v35 + 208);
      v85 = *(v35 + 224);
      v66 = *(v35 + 128);
      v78 = *(v35 + 112);
      v79 = v66;
      v67 = *(v35 + 160);
      v80 = *(v35 + 144);
      v81 = v67;
      v68 = *(v35 + 48);
      v69 = *(v35 + 80);
      v70 = *(v35 + 96);
      v75 = *(v35 + 64);
      v76 = v69;
      v77 = v70;
      v73 = *(v35 + 32);
      v74 = v68;
      sub_26BE5CDE4(&v73, v72);

      v96 = v83;
      v97 = v84;
      v98 = v85;
      v92 = v79;
      v93 = v80;
      v94 = v81;
      v95 = v82;
      v88 = v75;
      v89 = v76;
      v90 = v77;
      v91 = v78;
      v86 = v73;
      v87 = v74;
      nullsub_1();
      if (v2 == 2)
      {
        sub_26BE5CD74(&v73);
LABEL_38:
        *v112 = 1;
        return;
      }
    }

    else
    {

      sub_26BEC8B80(&v86);
      if (v2 == 1)
      {
        goto LABEL_38;
      }
    }

    v109 = v96;
    v110 = v97;
    v111 = v98;
    v105 = v92;
    v106 = v93;
    v107 = v94;
    v108 = v95;
    v101 = v88;
    v102 = v89;
    v103 = v90;
    v104 = v91;
    v99 = v86;
    v100 = v87;
    sub_26BE01654();
    swift_allocError();
    *v71 = 19;
    v71[112] = 3;
    swift_willThrow();
    sub_26BE2E258(&v99, &qword_28045EDF0, &qword_26C016518);
    return;
  }

  v4 = 0;
  v5 = result + 32;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = (v5 + 200 * v4);
    v8 = v4;
    while (1)
    {
      if (v8 >= v2)
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v9 = v7[11];
      v109 = v7[10];
      v110 = v9;
      v111 = *(v7 + 192);
      v10 = v7[7];
      v105 = v7[6];
      v106 = v10;
      v11 = v7[9];
      v107 = v7[8];
      v108 = v11;
      v12 = v7[3];
      v101 = v7[2];
      v102 = v12;
      v13 = v7[5];
      v103 = v7[4];
      v104 = v13;
      v14 = v7[1];
      v99 = *v7;
      v100 = v14;
      v4 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_41;
      }

      v15 = v7[9];
      v81 = v7[8];
      v82 = v15;
      v83 = v7[10];
      *&v84 = *(v7 + 22);
      v16 = v7[5];
      v77 = v7[4];
      v78 = v16;
      v17 = v7[7];
      v79 = v7[6];
      v80 = v17;
      v18 = v7[1];
      v73 = *v7;
      v74 = v18;
      v19 = v7[3];
      v75 = v7[2];
      v76 = v19;
      if (sub_26BE5CD48(&v73) == 5)
      {
        break;
      }

      ++v8;
      v7 = (v7 + 200);
      if (v4 == v2)
      {
        goto LABEL_14;
      }
    }

    sub_26BE5CDC8(&v73);
    sub_26BE5CDE4(&v99, &v86);
    v72[0] = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26BECBA94(0, *(v6 + 16) + 1, 1);
      v6 = v72[0];
    }

    v21 = *(v6 + 16);
    v20 = *(v6 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_26BECBA94((v20 > 1), v21 + 1, 1);
      v6 = v72[0];
    }

    *(v6 + 16) = v21 + 1;
    v22 = v6 + 200 * v21;
    *(v22 + 32) = v99;
    v23 = v100;
    v24 = v101;
    v25 = v103;
    *(v22 + 80) = v102;
    *(v22 + 96) = v25;
    *(v22 + 48) = v23;
    *(v22 + 64) = v24;
    v26 = v104;
    v27 = v105;
    v28 = v107;
    *(v22 + 144) = v106;
    *(v22 + 160) = v28;
    *(v22 + 112) = v26;
    *(v22 + 128) = v27;
    v29 = v108;
    v30 = v109;
    v31 = v110;
    *(v22 + 224) = v111;
    *(v22 + 192) = v30;
    *(v22 + 208) = v31;
    *(v22 + 176) = v29;
  }

  while (v4 != v2);
LABEL_14:
  v32 = *(v6 + 16);

  if (v32 != 1)
  {
    goto LABEL_32;
  }

  v33 = 0;
  v34 = result + 32;
  v35 = MEMORY[0x277D84F90];
LABEL_16:
  v36 = (v34 + 200 * v33);
  v37 = v33;
  while (v37 < v2)
  {
    v38 = v36[11];
    v109 = v36[10];
    v110 = v38;
    v111 = *(v36 + 192);
    v39 = v36[7];
    v105 = v36[6];
    v106 = v39;
    v40 = v36[9];
    v107 = v36[8];
    v108 = v40;
    v41 = v36[3];
    v101 = v36[2];
    v102 = v41;
    v42 = v36[5];
    v103 = v36[4];
    v104 = v42;
    v43 = v36[1];
    v99 = *v36;
    v100 = v43;
    v33 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      goto LABEL_43;
    }

    v44 = v36[9];
    v81 = v36[8];
    v82 = v44;
    v83 = v36[10];
    *&v84 = *(v36 + 22);
    v45 = v36[5];
    v77 = v36[4];
    v78 = v45;
    v46 = v36[7];
    v79 = v36[6];
    v80 = v46;
    v47 = v36[1];
    v73 = *v36;
    v74 = v47;
    v48 = v36[3];
    v75 = v36[2];
    v76 = v48;
    if (sub_26BE5CD48(&v73) == 2)
    {
      sub_26BE5CDC8(&v73);
      sub_26BE5CDE4(&v99, &v86);
      v72[0] = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26BECBA94(0, *(v35 + 16) + 1, 1);
        v35 = v72[0];
      }

      v50 = *(v35 + 16);
      v49 = *(v35 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_26BECBA94((v49 > 1), v50 + 1, 1);
        v35 = v72[0];
      }

      *(v35 + 16) = v50 + 1;
      v51 = v35 + 200 * v50;
      *(v51 + 32) = v99;
      v52 = v100;
      v53 = v101;
      v54 = v103;
      *(v51 + 80) = v102;
      *(v51 + 96) = v54;
      *(v51 + 48) = v52;
      *(v51 + 64) = v53;
      v55 = v104;
      v56 = v105;
      v57 = v107;
      *(v51 + 144) = v106;
      *(v51 + 160) = v57;
      *(v51 + 112) = v55;
      *(v51 + 128) = v56;
      v58 = v108;
      v59 = v109;
      v60 = v110;
      *(v51 + 224) = v111;
      *(v51 + 192) = v59;
      *(v51 + 208) = v60;
      *(v51 + 176) = v58;
      if (v33 != v2)
      {
        goto LABEL_16;
      }

      goto LABEL_30;
    }

    ++v37;
    v36 = (v36 + 200);
    if (v33 == v2)
    {
      goto LABEL_30;
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

void MLS.GroupInfo.sign(tree:signer:signaturePrivateKey:)(uint64_t a1, int *a2, void *a3)
{
  v5 = v3;
  v9 = _s12GroupInfoTBSVMa(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v55[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOWORD(v10) = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *a2;
  v81 = v10;
  v82 = v12;
  v83 = v13;
  v84 = v14;
  v80 = v15;
  MLS.TreeKEMPublicKey.find(leafIndex:)(&v80, &v85);
  if (!v4)
  {
    v94 = 0;
    v69[6] = v91;
    v69[7] = v92;
    v69[2] = v87;
    v69[3] = v88;
    v69[4] = v89;
    v69[5] = v90;
    v69[0] = v85;
    v69[1] = v86;
    v77 = v91;
    v78 = v92;
    v73 = v87;
    v74 = v88;
    v75 = v89;
    v76 = v90;
    v70 = v93;
    v79 = v93;
    v71 = v85;
    v72 = v86;
    if (sub_26BE59C80(&v71) == 1)
    {
      sub_26BE01654();
      swift_allocError();
      *v16 = 11;
      v16[112] = 0;
      swift_willThrow();
      return;
    }

    v58 = v9;
    v59 = v5;
    v56 = v15;
    v17 = a3[3];
    v18 = a3[4];
    v57 = a3;
    __swift_project_boxed_opaque_existential_1(a3, v17);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v60 = v55;
    v20 = *(AssociatedTypeWitness - 8);
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    v22 = &v55[-v21];
    (*(v18 + 40))(v17, v18);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v24 = (*(*(AssociatedConformanceWitness + 8) + 16))(AssociatedTypeWitness);
    v26 = v25;
    (*(v20 + 8))(v22, AssociatedTypeWitness);
    LOBYTE(v22) = sub_26BE02DEC(v24, v26, v72, *(&v72 + 1));
    sub_26BE00258(v24, v26);
    if ((v22 & 1) == 0)
    {
      sub_26BE01654();
      swift_allocError();
      *v39 = 12;
      v39[112] = 0;
      swift_willThrow();
      sub_26BE2E258(v69, &qword_28045E6A0, &unk_26C016520);
      return;
    }

    v27 = v59;
    v28 = v59[3];
    v66 = v59[2];
    v67 = v28;
    v29 = *(v59 + 9);
    v68 = *(v59 + 8);
    v30 = v59[1];
    v64 = *v59;
    v65 = v30;
    v31 = type metadata accessor for MLS.GroupInfo(0);
    v32 = v58;
    sub_26BEC8BB8(v27 + v31[6], &v11[*(v58 + 24)], type metadata accessor for MLS.Cryptography.MACTag);
    v33 = v31[7];
    v34 = *(v27 + v33);
    v35 = v67;
    *(v11 + 2) = v66;
    *(v11 + 3) = v35;
    v36 = v68;
    v37 = v65;
    *v11 = v64;
    *(v11 + 1) = v37;
    *(v11 + 8) = v36;
    *(v11 + 9) = v29;
    *&v11[*(v32 + 28)] = v34;
    v62 = xmmword_26C00BBD0;
    v63 = 0;
    sub_26BE001A8(&v64, &v61);

    v38 = v94;
    sub_26BDFF8E4(v11);
    if (v38)
    {
      sub_26BEC8C20(v11, _s12GroupInfoTBSVMa);
      sub_26BE2E258(v69, &qword_28045E6A0, &unk_26C016520);
      sub_26BE00258(v62, *(&v62 + 1));
      return;
    }

    v40 = v62;
    v41 = *(&v62 + 1) >> 62;
    v94 = 0;
    if ((*(&v62 + 1) >> 62) > 1)
    {
      if (v41 != 2)
      {
        goto LABEL_17;
      }

      v42 = *(v62 + 24);
    }

    else
    {
      if (!v41)
      {
LABEL_17:
        v43 = sub_26C00909C();
        v45 = v44;
        sub_26BEC8C20(v11, _s12GroupInfoTBSVMa);
        sub_26BE00258(v40, *(&v40 + 1));
        v46 = v59;
        *(v59 + v33) = v56;
        v47 = v57[3];
        v48 = v57[4];
        __swift_project_boxed_opaque_existential_1(v57, v47);
        v49 = v94;
        v50 = MLS.Cryptography.SignaturePrivateKey.signWithLabel(label:message:)(0x666E4970756F7247, 0xEC0000005342546FLL, v43, v45, v47, v48);
        if (v49)
        {
          sub_26BE00258(v43, v45);
          sub_26BE2E258(v69, &qword_28045E6A0, &unk_26C016520);
        }

        else
        {
          v52 = v50;
          v53 = v51;
          sub_26BE00258(v43, v45);
          sub_26BE2E258(v69, &qword_28045E6A0, &unk_26C016520);
          v54 = v46 + v31[8];
          sub_26BE00258(*v54, *(v54 + 8));
          *v54 = v52;
          *(v54 + 8) = v53;
        }

        return;
      }

      v42 = v62 >> 32;
    }

    if (v42 < 0)
    {
      __break(1u);
    }

    goto LABEL_17;
  }
}

void sub_26BEC3978(void *a1)
{
  v3 = v1;
  v5 = *(v1 + 144);
  v21[8] = *(v1 + 128);
  v21[9] = v5;
  v21[10] = *(v1 + 160);
  v22 = *(v1 + 176);
  v6 = *(v1 + 80);
  v21[4] = *(v1 + 64);
  v21[5] = v6;
  v7 = *(v1 + 112);
  v21[6] = *(v1 + 96);
  v21[7] = v7;
  v8 = *(v1 + 16);
  v21[0] = *v1;
  v21[1] = v8;
  v9 = *(v1 + 48);
  v21[2] = *(v1 + 32);
  v21[3] = v9;
  v23 = xmmword_26C00BBD0;
  v24 = 0;
  sub_26BF7F22C(v21);
  v10 = v23;
  if (!v2)
  {
    v11 = *(&v23 + 1) >> 62;
    if ((*(&v23 + 1) >> 62) > 1)
    {
      if (v11 != 2)
      {
LABEL_10:
        v13 = sub_26C00909C();
        v15 = v14;
        sub_26BE00258(v10, *(&v10 + 1));
        v16 = a1[3];
        v17 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v16);
        v18 = MLS.Cryptography.SignaturePrivateKey.signWithLabel(label:message:)(0x616B63615079654BLL, 0xED00005342546567, v13, v15, v16, v17);
        v20 = v19;
        sub_26BE00258(v13, v15);
        sub_26BE00258(*(v3 + 168), *(v3 + 176));
        *(v3 + 168) = v18;
        *(v3 + 176) = v20;
        return;
      }

      v12 = *(v23 + 24);
    }

    else
    {
      if (!v11)
      {
        goto LABEL_10;
      }

      v12 = v23 >> 32;
    }

    if (v12 < 0)
    {
      __break(1u);
    }

    goto LABEL_10;
  }

  sub_26BE00258(v23, *(&v23 + 1));
}

void MLS.GroupInfo.validateSignatureAgainstTree(tree:)(__int16 *a1)
{
  v3 = *(a1 + 1);
  v4 = *(a1 + 4);
  v5 = *(a1 + 3);
  v21 = *a1;
  v22 = v3;
  v23 = v4;
  v24 = v5;
  v20 = *(v1 + *(type metadata accessor for MLS.GroupInfo(0) + 28));
  MLS.TreeKEMPublicKey.find(leafIndex:)(&v20, &v25);
  if (!v2)
  {
    v9[6] = v31;
    v9[7] = v32;
    v9[2] = v27;
    v9[3] = v28;
    v9[4] = v29;
    v9[5] = v30;
    v9[0] = v25;
    v9[1] = v26;
    v17 = v31;
    v18 = v32;
    v13 = v27;
    v14 = v28;
    v15 = v29;
    v16 = v30;
    v10 = v33;
    v19 = v33;
    v11 = v25;
    v12 = v26;
    if (sub_26BE59C80(&v11) == 1)
    {
      sub_26BE01654();
      swift_allocError();
      *v6 = 15;
      *(v6 + 8) = 0u;
      *(v6 + 24) = 0u;
      *(v6 + 40) = 0u;
      *(v6 + 56) = 0u;
      *(v6 + 72) = 0u;
      *(v6 + 88) = 0u;
      *(v6 + 104) = 0;
      *(v6 + 112) = 23;
      swift_willThrow();
    }

    else if (*v1 - 3 < 0xFFFFFFFE)
    {
      __break(1u);
    }

    else
    {
      MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
      MLS.Cryptography.Ciphersuite.importSignaturePublicKey(_:)(v12, *(&v12 + 1), &v8);
      if (MLS.GroupInfo.verifySignature(publicKey:)(&v8))
      {
        __swift_destroy_boxed_opaque_existential_1(&v8);

        sub_26BE2E258(v9, &qword_28045E6A0, &unk_26C016520);
      }

      else
      {
        sub_26BE01654();
        swift_allocError();
        *v7 = 9;
        *(v7 + 8) = 0u;
        *(v7 + 24) = 0u;
        *(v7 + 40) = 0u;
        *(v7 + 56) = 0u;
        *(v7 + 72) = 0u;
        *(v7 + 88) = 0u;
        *(v7 + 104) = 0;
        *(v7 + 112) = 23;
        swift_willThrow();

        sub_26BE2E258(v9, &qword_28045E6A0, &unk_26C016520);
        __swift_destroy_boxed_opaque_existential_1(&v8);
      }
    }
  }
}

void MLS.KeyPackage.validateSignature(publicKey:)(void *a1)
{
  v4 = *(v1 + 144);
  v25[8] = *(v1 + 128);
  v25[9] = v4;
  v5 = *(v1 + 80);
  v25[4] = *(v1 + 64);
  v25[5] = v5;
  v6 = *(v1 + 112);
  v25[6] = *(v1 + 96);
  v25[7] = v6;
  v7 = *(v1 + 16);
  v25[0] = *v1;
  v25[1] = v7;
  v8 = *(v1 + 48);
  v25[2] = *(v1 + 32);
  v25[3] = v8;
  v9 = *(v1 + 160);
  v10 = *(v1 + 168);
  v11 = *(v1 + 176);
  v29 = xmmword_26C00BBD0;
  v30 = 0;
  v26 = v9;
  v27 = v10;
  v28 = v11;
  sub_26BF7F22C(v25);
  v13 = *(&v29 + 1);
  v12 = v29;
  if (v2)
  {
    goto LABEL_14;
  }

  v14 = *(&v29 + 1) >> 62;
  if ((*(&v29 + 1) >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_10;
    }

    v15 = *(v29 + 24);
LABEL_8:
    if (v15 < 0)
    {
      __break(1u);
    }

    goto LABEL_10;
  }

  if (v14)
  {
    v15 = v29 >> 32;
    goto LABEL_8;
  }

LABEL_10:
  v16 = v12;
  v17 = v13;
  v18 = sub_26C00909C();
  v20 = v19;
  sub_26BE00258(v16, v17);
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v23 = MLS.Cryptography.SignaturePublicKey.verifyWithLabel(label:message:signature:)(0x616B63615079654BLL, 0xED00005342546567, v18, v20, v10, v11, v21, v22);
  if ((v23 & 1) == 0)
  {
    sub_26BE01654();
    swift_allocError();
    *v24 = 31;
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

  v12 = v18;
  v13 = v20;
LABEL_14:
  sub_26BE00258(v12, v13);
}

uint64_t MLS.GroupState.minimalSupportedExtensionTypeSet()()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v21 = v5;

  sub_26BE51800(&v22);
  if (v1)
  {
  }

  else
  {

    v14[6] = v28;
    v14[7] = v29;
    v14[2] = v24;
    v14[3] = v25;
    v14[4] = v26;
    v14[5] = v27;
    v14[0] = v22;
    v14[1] = v23;
    v16[6] = v28;
    v16[7] = v29;
    v16[2] = v24;
    v16[3] = v25;
    v16[4] = v26;
    v16[5] = v27;
    v15 = v30;
    v17 = v30;
    v16[0] = v22;
    v16[1] = v23;
    if (sub_26BE59C80(v16) == 1)
    {
      return MEMORY[0x277D84FA0];
    }

    else
    {

      v8 = sub_26BEC7F8C(v7, sub_26BEC918C, &type metadata for MLS.Extension.ExtensionType, sub_26BF750CC);

      v12 = v5;
      v13 = v8;
      v9 = v2;
      v10 = v3;
      v11 = v4;

      sub_26BE50384(&v9, &v13);

      sub_26BE2E258(v14, &qword_28045E6A0, &unk_26C016520);
      return v13;
    }
  }
}

uint64_t MLS.GroupState.minimalSupportedProposalTypeSet()()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v21 = v5;

  sub_26BE51800(&v22);
  if (v1)
  {
  }

  else
  {

    v14[6] = v28;
    v14[7] = v29;
    v14[2] = v24;
    v14[3] = v25;
    v14[4] = v26;
    v14[5] = v27;
    v14[0] = v22;
    v14[1] = v23;
    v16[6] = v28;
    v16[7] = v29;
    v16[2] = v24;
    v16[3] = v25;
    v16[4] = v26;
    v16[5] = v27;
    v15 = v30;
    v17 = v30;
    v16[0] = v22;
    v16[1] = v23;
    if (sub_26BE59C80(v16) == 1)
    {
      return MEMORY[0x277D84FA0];
    }

    else
    {

      v8 = sub_26BEC7F8C(v7, sub_26BEC9138, &type metadata for MLS.ProposalType, sub_26BF750B0);

      v12 = v5;
      v13 = v8;
      v9 = v2;
      v10 = v3;
      v11 = v4;

      sub_26BE50778(&v9, &v13);

      sub_26BE2E258(v14, &qword_28045E6A0, &unk_26C016520);
      return v13;
    }
  }
}

uint64_t MLS.GroupState.minimalSupportedCredentialTypeSet()()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v21 = v5;

  sub_26BE51800(&v22);
  if (v1)
  {
  }

  else
  {

    v14[6] = v28;
    v14[7] = v29;
    v14[2] = v24;
    v14[3] = v25;
    v14[4] = v26;
    v14[5] = v27;
    v14[0] = v22;
    v14[1] = v23;
    v16[6] = v28;
    v16[7] = v29;
    v16[2] = v24;
    v16[3] = v25;
    v16[4] = v26;
    v16[5] = v27;
    v15 = v30;
    v17 = v30;
    v16[0] = v22;
    v16[1] = v23;
    if (sub_26BE59C80(v16) == 1)
    {
      return MEMORY[0x277D84FA0];
    }

    else
    {

      v8 = sub_26BEC7F8C(v7, sub_26BEC90E4, &type metadata for MLS.CredentialType, sub_26BF75094);

      v12 = v5;
      v13 = v8;
      v9 = v2;
      v10 = v3;
      v11 = v4;

      sub_26BE50E20(&v9, &v13);

      sub_26BE2E258(v14, &qword_28045E6A0, &unk_26C016520);
      return v13;
    }
  }
}

uint64_t MLS.GroupState.validateKeyPackage(_:)(__int128 *a1)
{
  v4 = type metadata accessor for MLS.GroupState(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v87 = &v80 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v80 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v80 - v13;
  v15 = a1[9];
  v122[7] = a1[8];
  v122[8] = v15;
  v123 = a1[10];
  v124 = *(a1 + 22);
  v16 = a1[5];
  v122[3] = a1[4];
  v122[4] = v16;
  v17 = a1[7];
  v122[5] = a1[6];
  v122[6] = v17;
  v18 = a1[1];
  v121 = *a1;
  v122[0] = v18;
  v19 = a1[3];
  v122[1] = a1[2];
  v122[2] = v19;
  v20 = v121;
  if (v121 != *v1)
  {
    sub_26BE01654();
    swift_allocError();
    *v25 = 1;
    v25[112] = 4;
    return swift_willThrow();
  }

  v85 = v11;
  v125 = 0;
  v126 = 3;
  sub_26BE00758(v122 + 8, v95);
  sub_26BE00758(v122 + 8, v95);
  v86 = v1;
  MLS.GroupState.validateLeafNode(leafNode:validationContext:)(a1 + 3, &v125);
  if (v2)
  {
    sub_26BE00854(v122 + 8);
    v21 = *(a1 + 104);
    v22 = *(a1 + 136);
    v100 = *(a1 + 120);
    v101 = v22;
    *&v102 = *(a1 + 19);
    v23 = *(a1 + 40);
    v24 = *(a1 + 72);
    v96 = *(a1 + 56);
    v97 = v24;
    v98 = *(a1 + 88);
    v99 = v21;
    v95[0] = *(a1 + 24);
    v95[1] = v23;
    return sub_26BE00854(v95);
  }

  v26 = *(a1 + 104);
  v27 = *(a1 + 136);
  v119[6] = *(a1 + 120);
  v119[7] = v27;
  v120 = *(a1 + 19);
  v28 = *(a1 + 40);
  v29 = *(a1 + 72);
  v119[2] = *(a1 + 56);
  v119[3] = v29;
  v119[4] = *(a1 + 88);
  v119[5] = v26;
  v119[0] = *(a1 + 24);
  v119[1] = v28;
  sub_26BE00854(v119);
  v115 = *(&v122[6] + 8);
  v116 = *(&v122[7] + 8);
  v117 = *(&v122[8] + 1);
  v111 = *(&v122[2] + 8);
  v112 = *(&v122[3] + 8);
  v113 = *(&v122[4] + 8);
  v114 = *(&v122[5] + 8);
  v109 = *(v122 + 8);
  v110 = *(&v122[1] + 8);
  if ((v20 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
    goto LABEL_40;
  }

  v30 = v20 != 1;
  v127 = v20 != 1;
  sub_26BF34320(v118);
  v107[6] = v115;
  v107[7] = v116;
  v108 = v117;
  v107[2] = v111;
  v107[3] = v112;
  v107[4] = v113;
  v107[5] = v114;
  v107[0] = v109;
  v107[1] = v110;
  sub_26BE00854(v107);
  if ((*&v122[3] & 0x2000000000000000) == 0)
  {
    goto LABEL_7;
  }

  v1 = v86;
  v34 = *(v86 + *(v4 + 76));
  if (!v34)
  {
    if (qword_28045DF80 == -1)
    {
LABEL_12:
      v39 = sub_26C009A5C();
      __swift_project_value_buffer(v39, qword_280478EE8);
      sub_26BEC8BB8(v1, v7, type metadata accessor for MLS.GroupState);
      sub_26BE2DFC0(&v121, v95);
      v40 = sub_26C009A3C();
      v41 = sub_26C00AA0C();
      sub_26BE2E01C(&v121);
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *&v95[0] = v43;
        *v42 = 136315394;
        v44 = MLS.GroupState.description.getter();
        v46 = v45;
        sub_26BEC8C20(v7, type metadata accessor for MLS.GroupState);
        v47 = sub_26BE29740(v44, v46, v95);

        *(v42 + 4) = v47;
        *(v42 + 12) = 2080;
        *(v42 + 14) = sub_26BE29740(0x393035782ELL, 0xE500000000000000, v95);
        _os_log_impl(&dword_26BDFE000, v40, v41, "%s: Client was nil when verifying KeyPackage with credential type %s", v42, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69A4E0](v43, -1, -1);
        MEMORY[0x26D69A4E0](v42, -1, -1);
      }

      else
      {

        sub_26BEC8C20(v7, type metadata accessor for MLS.GroupState);
      }

      sub_26BE01654();
      swift_allocError();
      *v32 = 17;
      *(v32 + 8) = 0u;
      *(v32 + 24) = 0u;
      *(v32 + 40) = 0u;
      *(v32 + 56) = 0u;
      *(v32 + 72) = 0u;
      *(v32 + 88) = 0u;
      *(v32 + 104) = 0;
      v33 = 23;
      goto LABEL_19;
    }

LABEL_40:
    swift_once();
    goto LABEL_12;
  }

  v81 = *&v122[3];
  v82 = *(&v122[2] + 1);
  swift_beginAccess();
  sub_26BE038A8(v34 + 240, v95);
  v35 = v96;
  v83 = *(&v95[1] + 1);
  __swift_project_boxed_opaque_existential_1(v95, *(&v95[1] + 1));
  v36 = sub_26C00921C();
  (*(*(v36 - 8) + 56))(v14, 1, 1, v36);
  v37 = *(v35 + 8);
  v84 = v34;

  v38 = v37(v118, v14, v83, v35);
  v48 = v38;
  v49 = v82;
  v50 = v84;
  sub_26BE2E258(v14, &qword_28045E4A8, &unk_26C00ECB0);
  __swift_destroy_boxed_opaque_existential_1(v95);
  if ((v48 & 1) == 0)
  {
    v52 = v86;
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v53 = sub_26C009A5C();
    __swift_project_value_buffer(v53, qword_280478EE8);
    v54 = v87;
    sub_26BEC8BB8(v52, v87, type metadata accessor for MLS.GroupState);
    v55 = sub_26C009A3C();
    v56 = sub_26C00AA0C();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v95[0] = v58;
      *v57 = 136315138;
      v59 = MLS.GroupState.description.getter();
      v61 = v60;
      sub_26BEC8C20(v54, type metadata accessor for MLS.GroupState);
      v62 = sub_26BE29740(v59, v61, v95);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_26BDFE000, v55, v56, "%s: Credential was found invalid by isValidMember", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v58);
      MEMORY[0x26D69A4E0](v58, -1, -1);
      v63 = v57;
LABEL_25:
      MEMORY[0x26D69A4E0](v63, -1, -1);

LABEL_35:
      sub_26BE01654();
      swift_allocError();
      *v79 = 18;
      *(v79 + 8) = 0u;
      *(v79 + 24) = 0u;
      *(v79 + 40) = 0u;
      *(v79 + 56) = 0u;
      *(v79 + 72) = 0u;
      *(v79 + 88) = 0u;
      *(v79 + 104) = 0;
      *(v79 + 112) = 23;
      swift_willThrow();

      return sub_26BE2DBC4(v118);
    }

    v78 = v54;
LABEL_34:
    sub_26BEC8C20(v78, type metadata accessor for MLS.GroupState);
    goto LABEL_35;
  }

  sub_26BE295A0(v50 + 40, v95);
  v51 = v106;
  if (v106 == 2)
  {
    v93 = &type metadata for SwiftMLSFeatureFlags;
    v94 = sub_26BE295D8();
    LOBYTE(v92) = 1;
    v51 = sub_26C00929C();
    sub_26BE29710(v95);
    __swift_destroy_boxed_opaque_existential_1(&v92);
  }

  else
  {
    sub_26BE29710(v95);
  }

  if (v51)
  {
    *&v92 = v49;
    *(&v92 + 1) = v81;

    sub_26C006590(&v92, v95);
    v64 = v95[0];
    v92 = v95[0];
    sub_26C006990();
    v66 = v65;
    v68 = v67;
    sub_26BE0489C(v64, *(&v64 + 1));
    if (v68 >> 60 == 15)
    {
      if (qword_28045DF80 != -1)
      {
        swift_once();
      }

      v69 = sub_26C009A5C();
      __swift_project_value_buffer(v69, qword_280478EE8);
      v70 = v85;
      sub_26BEC8BB8(v86, v85, type metadata accessor for MLS.GroupState);
      v55 = sub_26C009A3C();
      v71 = sub_26C00AA0C();
      if (os_log_type_enabled(v55, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        *&v95[0] = v73;
        *v72 = 136315138;
        v74 = MLS.GroupState.description.getter();
        v76 = v75;
        sub_26BEC8C20(v70, type metadata accessor for MLS.GroupState);
        v77 = sub_26BE29740(v74, v76, v95);

        *(v72 + 4) = v77;
        _os_log_impl(&dword_26BDFE000, v55, v71, "%s: Failed to parse public key from credential", v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v73);
        MEMORY[0x26D69A4E0](v73, -1, -1);
        v63 = v72;
        goto LABEL_25;
      }

      v78 = v70;
      goto LABEL_34;
    }

    v88 = v30;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
    v88 = v95[0];
    v89 = *(v95 + 8);
    v90 = *(&v95[1] + 1);
    v91 = v96;
    MLS.Cryptography.Ciphersuite.importSignaturePublicKey(_:)(v66, v68, &v92);

    v102 = v122[7];
    v103 = v122[8];
    v104 = v123;
    v105 = v124;
    v98 = v122[3];
    v99 = v122[4];
    v100 = v122[5];
    v101 = v122[6];
    v95[0] = v121;
    v95[1] = v122[0];
    v96 = v122[1];
    v97 = v122[2];
    MLS.KeyPackage.validateSignature(publicKey:)(&v92);
    __swift_destroy_boxed_opaque_existential_1(&v92);
    sub_26BE136AC(v66, v68);
  }

LABEL_7:
  if (sub_26BE02DEC(*(&v122[0] + 1), *&v122[1], *(&v121 + 1), *&v122[0]))
  {
    sub_26BE01654();
    swift_allocError();
    *v32 = 3;
    v33 = 4;
LABEL_19:
    *(v32 + 112) = v33;
    swift_willThrow();
  }

  return sub_26BE2DBC4(v118);
}

void MLS.GroupState.validateProposal(_:commitSender:)(__int128 *a1, int *a2)
{
  v5 = type metadata accessor for MLS.GroupState(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[9];
  v9 = a1[7];
  v140 = a1[8];
  v141 = v8;
  v10 = a1[9];
  v142 = a1[10];
  v11 = a1[5];
  v12 = a1[3];
  v136 = a1[4];
  v137 = v11;
  v13 = a1[5];
  v14 = a1[7];
  v138 = a1[6];
  v139 = v14;
  v15 = a1[1];
  v132 = *a1;
  v133 = v15;
  v16 = a1[3];
  v18 = *a1;
  v17 = a1[1];
  v134 = a1[2];
  v135 = v16;
  v144[8] = v140;
  v144[9] = v10;
  v144[10] = a1[10];
  v144[4] = v136;
  v144[5] = v13;
  v144[6] = v138;
  v144[7] = v9;
  v144[0] = v18;
  v144[1] = v17;
  v143 = *(a1 + 22);
  v19 = *(a1 + 46);
  v20 = *(a1 + 188);
  v21 = *a2;
  v22 = *(a2 + 4);
  v145 = *(a1 + 22);
  v144[2] = v134;
  v144[3] = v12;
  v23 = sub_26BE5CD48(v144);
  if (v23 > 2)
  {
    switch(v23)
    {
      case 3:
        sub_26BE5CDC8(v144);
        sub_26BE01654();
        swift_allocError();
        *v41 = 0xD000000000000029;
        *(v41 + 8) = 0x800000026C02B3B0;
        v42 = 2;
LABEL_25:
        *(v41 + 112) = v42;
        swift_willThrow();
        return;
      case 5:
        sub_26BE5CDC8(v144);
        sub_26BE01654();
        swift_allocError();
        v43 = 12;
        goto LABEL_24;
      case 6:
        v33 = sub_26BE5CDC8(v144);
        v34 = (*v33 + 32);
        v35 = *(*v33 + 16) + 1;
        v36 = v77;
        while (--v35)
        {
          v37 = v34 + 12;
          v38 = *v34;
          v34 += 12;
          if (v38 == 3)
          {
            LOWORD(v78[0]) = 3;
            *(v78 + 8) = *(v37 - 1);
            sub_26BE6FE6C(&v132, &v120);
            sub_26BFF740C(v78, &v89);
            if (v36)
            {
              sub_26BE718E0(&v132);
              return;
            }

            sub_26BE718E0(&v132);
            v55 = v89;
            if (!v89)
            {
              return;
            }

            v56 = v2;
            v57 = MLS.GroupState.minimalSupportedExtensionTypeSet()();
            v58 = sub_26BFF375C(v55);
            sub_26BEC8C80(v55);

            v60 = sub_26BEC7F8C(v59, sub_26BEC918C, &type metadata for MLS.Extension.ExtensionType, sub_26BF750CC);

            v61 = sub_26BEC2238(v57, v60);

            if (v61)
            {
              goto LABEL_28;
            }

            v62 = sub_26BEC7F8C(v58, sub_26BEC918C, &type metadata for MLS.Extension.ExtensionType, sub_26BF750CC);

            if (*(v57 + 16) <= *(v62 + 16) >> 3)
            {
              *&v120 = v62;
              sub_26BEC7710(v57);
            }

            else
            {
              sub_26BEC7818(v57, v62);
            }

            v2 = v56;
            sub_26BEBE83C();

            v20 = v120;
            LODWORD(v5) = BYTE2(v120);
            if (qword_28045DF80 != -1)
            {
              goto LABEL_44;
            }

            goto LABEL_39;
          }
        }

        return;
    }

LABEL_20:
    sub_26BE01654();
    swift_allocError();
    v43 = 15;
LABEL_24:
    *v41 = v43;
    v42 = 3;
    goto LABEL_25;
  }

  if (!v23)
  {
    v39 = sub_26BE5CDC8(v144);
    v97 = *(v39 + 128);
    v98 = *(v39 + 144);
    v99 = *(v39 + 160);
    v100 = *(v39 + 176);
    v93 = *(v39 + 64);
    v94 = *(v39 + 80);
    v95 = *(v39 + 96);
    v96 = *(v39 + 112);
    v89 = *v39;
    v90 = *(v39 + 16);
    v91 = *(v39 + 32);
    v92 = *(v39 + 48);
    v122 = v134;
    v123 = v135;
    v120 = v132;
    v121 = v133;
    v126 = v138;
    v127 = v139;
    v124 = v136;
    v125 = v137;
    v131 = v143;
    v129 = v141;
    v130 = v142;
    v128 = v140;
    v40 = sub_26BE5CDC8(&v120);
    sub_26BEC8CCC(v40, v78);
    MLS.GroupState.validateKeyPackage(_:)(&v89);
    v85 = v97;
    v86 = v98;
    v87 = v99;
    v88 = v100;
    v81 = v93;
    v82 = v94;
    v83 = v95;
    v84 = v96;
    v78[0] = v89;
    v78[1] = v90;
    v79 = v91;
    v80 = v92;
    sub_26BE2E01C(v78);
    return;
  }

  if (v23 == 1)
  {
    v44 = sub_26BE5CDC8(v144);
    if ((v20 & 1) == 0)
    {
      v45 = v44;
      v46 = *(v2 + 40);
      v47 = *(v2 + 48);
      v48 = *(v2 + 56);
      v116 = *(v2 + 32);
      v117 = v46;
      v118 = v47;
      v119 = v48;
      v147 = v19;

      v49 = v77;
      MLS.TreeKEMPublicKey.find(leafIndex:)(&v147, &v89);
      if (v49)
      {
LABEL_28:

        return;
      }

      v114[6] = v95;
      v114[7] = v96;
      v114[2] = v91;
      v114[3] = v92;
      v114[4] = v93;
      v114[5] = v94;
      v114[0] = v89;
      v114[1] = v90;
      v83 = v95;
      v84 = v96;
      v79 = v91;
      v80 = v92;
      v81 = v93;
      v82 = v94;
      v115 = v97;
      *&v85 = v97;
      v78[0] = v89;
      v78[1] = v90;
      if (sub_26BE59C80(v78) != 1)
      {
        sub_26BE2E258(v114, &qword_28045E6A0, &unk_26C016520);
        v50 = *(v45 + 112);
        v111 = *(v45 + 96);
        v112 = v50;
        v113 = *(v45 + 128);
        v51 = *(v45 + 48);
        v107 = *(v45 + 32);
        v108 = v51;
        v52 = *(v45 + 80);
        v109 = *(v45 + 64);
        v110 = v52;
        v53 = *(v45 + 16);
        v105 = *v45;
        v106 = v53;
        v103 = v19;
        v104 = 0;
        v122 = v134;
        v123 = v135;
        v120 = v132;
        v121 = v133;
        v126 = v138;
        v127 = v139;
        v124 = v136;
        v125 = v137;
        v131 = v143;
        v129 = v141;
        v130 = v142;
        v128 = v140;
        v54 = sub_26BE5CDC8(&v120);
        sub_26BE5CEB0(v54, v101);
        MLS.GroupState.validateLeafNode(leafNode:validationContext:)(&v105, &v103);
        v101[6] = v111;
        v101[7] = v112;
        v102 = v113;
        v101[2] = v107;
        v101[3] = v108;
        v101[4] = v109;
        v101[5] = v110;
        v101[0] = v105;
        v101[1] = v106;
        sub_26BE00854(v101);
        return;
      }
    }

    sub_26BE01654();
    swift_allocError();
    *v41 = 2;
    v42 = 7;
    goto LABEL_25;
  }

  if (v23 != 2)
  {
    goto LABEL_20;
  }

  v7 = *sub_26BE5CDC8(v144);
  v24 = *(v2 + 32);
  v25 = *(v2 + 40);
  v26 = *(v2 + 48);
  v76 = v2;
  v27 = *(v2 + 56);
  LOWORD(v120) = v24;
  *(&v120 + 1) = v25;
  v146 = v26;
  LODWORD(v121) = v26;
  *(&v121 + 1) = v27;
  if ((v7 & 0x80000000) != 0)
  {
    __break(1u);
LABEL_44:
    swift_once();
LABEL_39:
    v63 = sub_26C009A5C();
    __swift_project_value_buffer(v63, qword_280478EE8);
    sub_26BEC8BB8(v2, v7, type metadata accessor for MLS.GroupState);
    v64 = sub_26C009A3C();
    v65 = sub_26C00AA0C();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      LODWORD(v77) = v5;
      v67 = v66;
      v68 = swift_slowAlloc();
      *&v120 = v68;
      *v67 = 136315394;
      v69 = MLS.GroupState.description.getter();
      v71 = v70;
      sub_26BEC8C20(v7, type metadata accessor for MLS.GroupState);
      v72 = sub_26BE29740(v69, v71, &v120);

      *(v67 + 4) = v72;
      *(v67 + 12) = 2080;
      LOWORD(v89) = v20;
      BYTE2(v89) = v77;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EDF8, &unk_26C016530);
      v73 = sub_26C00A4FC();
      v75 = sub_26BE29740(v73, v74, &v120);

      *(v67 + 14) = v75;
      _os_log_impl(&dword_26BDFE000, v64, v65, "%s: A proposal to update the group context extensions contained a required capability, for extension %s, that is not supported by all group members", v67, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v68, -1, -1);
      MEMORY[0x26D69A4E0](v67, -1, -1);
    }

    else
    {

      sub_26BEC8C20(v7, type metadata accessor for MLS.GroupState);
    }

    sub_26BE01654();
    swift_allocError();
    *v41 = 0;
    v42 = 8;
    goto LABEL_25;
  }

  LODWORD(v89) = 2 * v7;
  v28 = v77;
  v29 = MLS.TreeKEMPublicKey.blankAt(index:)(&v89);
  v30 = v28;
  if (v28)
  {
LABEL_9:
    sub_26BE01654();
    swift_allocError();
    *v32 = 10;
    v32[112] = 3;
    swift_willThrow();

    return;
  }

  if ((v7 >= v146) | v29 & 1)
  {
    sub_26BE01654();
    v30 = swift_allocError();
    *v31 = 10;
    v31[112] = 3;
    swift_willThrow();
    goto LABEL_9;
  }

  if (v7 == *(v76 + *(v5 + 52)))
  {
    sub_26BE01654();
    swift_allocError();
    *v41 = v21;
    *(v41 + 4) = v22;
    *(v41 + 8) = v19;
    *(v41 + 12) = v20;
    *(v41 + 13) = 0;
    v42 = 20;
    goto LABEL_25;
  }
}

uint64_t sub_26BEC5C20(uint64_t a1)
{
  result = MLS.GroupState.minimalSupportedProposalTypeSet()();
  if (!v1)
  {
    v4 = result;
    v42 = 0;
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = a1 + 32;
      v8 = result + 56;
      do
      {
        v9 = v7 + 200 * v6;
        v10 = *(v9 + 144);
        v11 = *(v9 + 176);
        v37 = *(v9 + 160);
        v38 = v11;
        v12 = *(v9 + 80);
        v13 = *(v9 + 112);
        v33 = *(v9 + 96);
        v34 = v13;
        v14 = *(v9 + 144);
        v15 = *(v9 + 112);
        v35 = *(v9 + 128);
        v36 = v14;
        v16 = *(v9 + 16);
        v17 = *(v9 + 48);
        v29 = *(v9 + 32);
        v30 = v17;
        v18 = *(v9 + 80);
        v19 = *(v9 + 48);
        v31 = *(v9 + 64);
        v32 = v18;
        v20 = *(v9 + 16);
        v28[0] = *v9;
        v28[1] = v20;
        v40[8] = v35;
        v40[9] = v10;
        v40[10] = v37;
        v40[4] = v31;
        v40[5] = v12;
        v40[6] = v33;
        v40[7] = v15;
        v40[0] = v28[0];
        v40[1] = v16;
        v39 = *(v9 + 192);
        v41 = *(v9 + 176);
        v40[2] = v29;
        v40[3] = v19;
        v21 = sub_26BE5CD48(v40);
        if (v21 <= 4)
        {
          if (v21 == 2)
          {
            sub_26BE5CDC8(v40);
            goto LABEL_15;
          }
        }

        else
        {
          if (v21 > 7)
          {
            if (v21 == 8)
            {
              v22 = 61444;
              goto LABEL_19;
            }

            if (v21 == 9)
            {
              v22 = 61443;
              goto LABEL_19;
            }

            v22 = 0xFFFF;
            if (!*(v4 + 16))
            {
              goto LABEL_26;
            }

LABEL_22:
            sub_26C00B05C();
            sub_26C00B08C();
            v23 = sub_26C00B0CC();
            v24 = -1 << *(v4 + 32);
            v25 = v23 & ~v24;
            if (((*(v8 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
            {
LABEL_26:

              sub_26BE5CD74(v28);
              sub_26BE01654();
              swift_allocError();
              *v27 = 7;
              v27[112] = 3;
              return swift_willThrow();
            }

            v26 = ~v24;
            while (*(*(v4 + 48) + 2 * v25) != v22)
            {
              v25 = (v25 + 1) & v26;
              if (((*(v8 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
              {
                goto LABEL_26;
              }
            }

LABEL_15:
            sub_26BE5CD74(v28);
            goto LABEL_16;
          }

          if (v21 != 5 && v21 != 6)
          {
            v22 = 61442;
LABEL_19:
            sub_26BE5CDC8(v40);
            if (!*(v4 + 16))
            {
              goto LABEL_26;
            }

            goto LABEL_22;
          }
        }

        sub_26BE5CDC8(v40);
LABEL_16:
        ++v6;
      }

      while (v6 != v5);
    }
  }

  return result;
}

uint64_t sub_26BEC5E84(__int128 *a1, unsigned __int16 *a2)
{
  v4 = a1[9];
  v5 = a1[7];
  v50 = a1[8];
  v51 = v4;
  v6 = a1[9];
  v52 = a1[10];
  v7 = a1[5];
  v8 = a1[3];
  v46 = a1[4];
  v47 = v7;
  v9 = a1[5];
  v10 = a1[7];
  v48 = a1[6];
  v49 = v10;
  v11 = a1[1];
  v43[0] = *a1;
  v43[1] = v11;
  v12 = a1[3];
  v14 = *a1;
  v13 = a1[1];
  v44 = a1[2];
  v45 = v12;
  v54[8] = v50;
  v54[9] = v6;
  v54[10] = a1[10];
  v54[4] = v46;
  v54[5] = v9;
  v54[6] = v48;
  v54[7] = v5;
  v54[0] = v14;
  v54[1] = v13;
  v53 = *(a1 + 22);
  v55 = *(a1 + 22);
  v54[2] = v44;
  v54[3] = v8;
  if (sub_26BE5CD48(v54) || (v16 = sub_26BE5CDC8(v54), (v17 = *(a2 + *(type metadata accessor for MLS.GroupState(0) + 76))) == 0))
  {
    v15 = 0;
    return v15 & 1;
  }

  sub_26BE6FE6C(v43, &v32);

  v15 = v17;
  sub_26BE1C10C();
  if (v2)
  {

    sub_26BE718E0(v43);
    return v15 & 1;
  }

  sub_26BE16490(&v32);
  v27 = *(&v32 + 1);
  v28 = v32;
  v18 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
  swift_beginAccess();
  sub_26BE038A8(v17 + v18, &v32);
  v19 = *(&v33 + 1);
  v20 = v34;
  __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
  v26 = *(v20 + 40);
  v42[3] = swift_getAssociatedTypeWitness();
  v42[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v42);
  v26(v19, v20);
  result = __swift_destroy_boxed_opaque_existential_1(&v32);
  v41[0] = v28;
  v41[1] = v27;
  v22 = *(v16 + 120);
  v37 = *(v16 + 104);
  v38 = v22;
  v39 = *(v16 + 136);
  v40 = *(v16 + 152);
  v23 = *(v16 + 56);
  v33 = *(v16 + 40);
  v34 = v23;
  v24 = *(v16 + 88);
  v35 = *(v16 + 72);
  v36 = v24;
  v32 = *(v16 + 24);
  v25 = *a2;
  if ((v25 - 3) >= 0xFFFFFFFE)
  {
    v56 = v25 != 1;
    sub_26BE00758(v16 + 24, v29);
    sub_26BF34320(v31);
    v29[6] = v38;
    v29[7] = v39;
    v30 = v40;
    v29[2] = v34;
    v29[3] = v35;
    v29[4] = v36;
    v29[5] = v37;
    v29[0] = v32;
    v29[1] = v33;
    sub_26BE00854(v29);
    v15 = _s8SwiftMLS0B0O5GroupO6MemberV2eeoiySbAG_AGtFZ_0(v41, v31);

    sub_26BE718E0(v43);
    sub_26BE2DBC4(v31);
    sub_26BE2DBC4(v41);
    return v15 & 1;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLS.GroupState.validateLeafNodesInExistingTree()()
{

  MLS.TreeKEMPublicKey.eachLeaf(_:)(sub_26BEC91E0);

  if (!v0)
  {
    sub_26BEC6BA0();
    MLS.GroupState.validateLeafNodeCapabilities()();
  }
}

void *sub_26BEC6284@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1;
  v5 = *v1;
  v6 = *(v1 + 1);
  v7 = *(v1 + 2);
  v8 = *(v1 + 3);
  v9 = *(v1 + 5);
  v10 = *(v1 + 12);
  v30 = v1[16];
  v31 = v9;
  v32 = v10;
  result = sub_26BE592D0();
  if (!v2)
  {
    v13 = result;
    v33 = 0;
    v20 = a1;
    v14 = v12;
    v15 = type metadata accessor for MLS.GroupState(0);
    v16 = v3 + *(v15 + 36);
    v17 = *(v16 + 8);
    v18 = *(v16 + 16);
    v19 = *(v3 + *(v15 + 40));
    v21 = v5;
    v22 = v6;
    v23 = v7;
    v24 = v8;
    v25 = v13;
    v26 = v14;
    v27 = v17;
    v28 = v18;
    v29 = v19;
    sub_26BE00608(v13, v14);
    sub_26BE00608(v6, v7);
    sub_26BE00608(v17, v18);
    swift_bridgeObjectRetain_n();
    sub_26BE00204(&v21);
    sub_26BE8206C(v19, v20);
  }

  return result;
}

void sub_26BEC6398(unsigned __int16 *a1, uint64_t a2, unint64_t a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *a1;
  v8 = *a4;
  v9 = *(v4 + 104);
  if (*(a4 + 4) > 1u)
  {
    if (*(a4 + 4) != 2)
    {
      v6 = 0;
      v8 = 0;
      v5 = 0xF000000000000000;
LABEL_9:
      v10 = v4[5];
      v22 = v4[4];
      v23 = v10;
      v24 = *(v4 + 12);
      v11 = v4[1];
      v18 = *v4;
      v19 = v11;
      v12 = v4[3];
      v20 = v4[2];
      v21 = v12;
      v25 = v9;
      *(v26 + 15) = *(v4 + 120);
      v26[0] = *(v4 + 105);
      v17 = v7;
      v14 = v6;
      v15 = v5;
      v16 = v8;
      sub_26BE2BAE8(v6, v5);
      sub_26BE5B7E0(&v17, &v14);
      sub_26BE132D4(v14, v15);
      sub_26BE132D4(v6, v5);
      return;
    }

    goto LABEL_8;
  }

  if (!*(a4 + 4))
  {
    if (v9 < 2)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v9 == 1)
  {
LABEL_8:
    sub_26BE00608(a2, a3);
    goto LABEL_9;
  }

LABEL_10:
  sub_26BE01654();
  swift_allocError();
  *v13 = 0;
  v13[112] = 5;
  swift_willThrow();
}

void MLS.GroupState.validateLeafNodeSource(leafNode:validationContext:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  if (*(a2 + 4) > 1u)
  {
    if (*(a2 + 4) == 2 || v4 == 0)
    {
      return;
    }

LABEL_12:
    sub_26BE01654();
    swift_allocError();
    *v13 = 0;
    v13[112] = 5;
    swift_willThrow();
    return;
  }

  if (*(a2 + 4))
  {
    if (v4 == 1)
    {
      return;
    }

    goto LABEL_12;
  }

  if (v4 < 2)
  {
    goto LABEL_12;
  }

  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2;
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v33 = *(v2 + 32);
  v34 = v8;
  v35 = v9;
  v36 = v10;
  v32 = v7;

  MLS.TreeKEMPublicKey.find(leafIndex:)(&v32, &v37);
  v11 = v3;
  if (v3)
  {
  }

  else
  {

    v21[6] = v43;
    v21[7] = v44;
    v21[2] = v39;
    v21[3] = v40;
    v21[4] = v41;
    v21[5] = v42;
    v21[0] = v37;
    v21[1] = v38;
    v29 = v43;
    v30 = v44;
    v25 = v39;
    v26 = v40;
    v27 = v41;
    v28 = v42;
    v22 = v45;
    v31 = v45;
    *v23 = v37;
    v24 = v38;
    if (sub_26BE59C80(v23) == 1)
    {
      sub_26BE01654();
      v14 = swift_allocError();
      *v15 = 1;
      v15[112] = 5;
      v11 = v14;
      swift_willThrow();
    }

    else
    {
      if (!sub_26BE02DEC(v23[0], v23[1], v5, v6))
      {
        sub_26BE2E258(v21, &qword_28045E6A0, &unk_26C016520);
        return;
      }

      sub_26BE01654();
      v16 = swift_allocError();
      *v17 = 2;
      v17[112] = 5;
      v11 = v16;
      swift_willThrow();
      sub_26BE2E258(v21, &qword_28045E6A0, &unk_26C016520);
    }
  }

  v23[0] = v11;
  v18 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED00, &qword_26C016510);
  if (swift_dynamicCast())
  {
    if (v44 == 23 && v37 == 30 && (v19 = vorrq_s8(vorrq_s8(vorrq_s8(v40, v42), vorrq_s8(v41, v43)), vorrq_s8(v38, v39)), !(*&vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL)) | *(&v37 + 1))))
    {

      sub_26BE01654();
      swift_allocError();
      *v20 = 1;
      v20[112] = 5;
      swift_willThrow();
    }

    else
    {
      sub_26BE2DC9C(&v37);
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLS.GroupState.validateLeafNodeCapabilities()()
{
  sub_26BEC6284(v22);
  if (!v1)
  {
    v2 = v22[0];
    if (v22[0])
    {
      v3 = MLS.GroupState.minimalSupportedExtensionTypeSet()();
      v4 = MLS.GroupState.minimalSupportedProposalTypeSet()();
      v25 = MLS.GroupState.minimalSupportedCredentialTypeSet()();

      v6 = sub_26BEC7F8C(v5, sub_26BEC918C, &type metadata for MLS.Extension.ExtensionType, sub_26BF750CC);

      v7 = sub_26BEC2238(v3, v6);

      if (v7)
      {

        v9 = sub_26BEC7F8C(v8, sub_26BEC9138, &type metadata for MLS.ProposalType, sub_26BF750B0);

        v10 = sub_26BEC2238(v4, v9);

        if (v10)
        {

          v12 = sub_26BEC7F8C(v11, sub_26BEC90E4, &type metadata for MLS.CredentialType, sub_26BF75094);

          sub_26BEC8C80(v2);
          v13 = sub_26BEC2238(v25, v12);

          if (v13)
          {
            goto LABEL_6;
          }

          sub_26BE01654();
          swift_allocError();
          v21 = 2;
        }

        else
        {

          sub_26BEC8C80(v2);
          sub_26BE01654();
          swift_allocError();
          v21 = 1;
        }

        *v20 = v21;
      }

      else
      {

        sub_26BEC8C80(v2);
        sub_26BE01654();
        swift_allocError();
        *v20 = 0;
      }

      v20[112] = 8;
      swift_willThrow();
      return;
    }

LABEL_6:
    v14 = MLS.GroupState.minimalSupportedCredentialTypeSet()();
    v15 = *(v0 + 32);
    v16 = *(v0 + 40);
    v17 = *(v0 + 48);
    v18 = *(v0 + 56);
    LOWORD(v22[0]) = v15;
    v22[1] = v16;
    LODWORD(v23) = v17;
    v24 = v18;
    v19 = v14;

    sub_26BE51214(v22, v19);
  }
}

uint64_t sub_26BEC6BA0()
{
  v14 = MEMORY[0x277D84FA0];
  v15 = MEMORY[0x277D84FA0];
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  LOWORD(v11[0]) = *(v0 + 32);
  v11[1] = v2;
  v12 = v3;
  v13 = v4;

  sub_26BE50B6C(v11, &v15, &v14);

  if (!v1)
  {
    v5 = *(v15 + 16);
    v11[0] = v4;
    MLS.RatchetTree.leafCount.getter(&v10);
    if (v5 == v10)
    {
      v6 = *(v14 + 16);
      v11[0] = v4;
      MLS.RatchetTree.leafCount.getter(&v10);
      if (v6 == v10)
      {
        goto LABEL_8;
      }

      v7 = 4;
    }

    else
    {
      v7 = 3;
    }

    sub_26BE01654();
    swift_allocError();
    *v8 = v7;
    v8[112] = 5;
    swift_willThrow();
  }

LABEL_8:
}

void *sub_26BEC6CE4(int *a1, void *a2)
{
  v3 = *a1;
  v4 = 2;
  return MLS.GroupState.validateLeafNode(leafNode:validationContext:)(a2, &v3);
}

uint64_t sub_26BEC6D24(uint64_t a1)
{
  if (*(a1 + 36))
  {
    sub_26BE01654();
    swift_allocError();
    *v3 = 8;
    v3[112] = 0;
    return swift_willThrow();
  }

  v5 = *(a1 + 32);
  v6 = v1[16];
  v7 = *(v1 + 5);
  v8 = *(v1 + 12);
  v9 = v1;
  v10 = *(v1 + 7);
  v53 = v6;
  v54 = v7;
  v55 = v8;
  v56 = v10;
  v52 = v5;

  MLS.TreeKEMPublicKey.find(leafIndex:)(&v52, &v57);
  if (v2)
  {
  }

  else
  {

    v41[6] = v63;
    v41[7] = v64;
    v41[2] = v59;
    v41[3] = v60;
    v41[4] = v61;
    v41[5] = v62;
    v41[0] = v57;
    v41[1] = v58;
    v49 = v63;
    v50 = v64;
    v45 = v59;
    v46 = v60;
    v47 = v61;
    v48 = v62;
    v42 = v65;
    v51 = v65;
    v43 = v57;
    v44 = v58;
    result = sub_26BE59C80(&v43);
    if (result == 1)
    {
      sub_26BE01654();
      swift_allocError();
      *v11 = 6;
      v11[112] = 6;
      return swift_willThrow();
    }

    v12 = *v1;
    if ((v12 - 3) < 0xFFFFFFFE)
    {
      __break(1u);
    }

    else
    {
      MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
      v27[0] = v31[0];
      *&v27[8] = *&v31[8];
      *&v27[24] = *&v31[24];
      *&v28 = v32;
      MLS.Cryptography.Ciphersuite.importSignaturePublicKey(_:)(v44, *(&v44 + 1), v40);

      v39 = v12;
      v13 = *(v1 + 2);
      v66 = *(v1 + 1);
      v25 = *(v1 + 3);
      v26 = v13;
      v35 = v6;
      v36 = v7;
      v37 = v8;
      v38 = v10;
      v14 = sub_26BE592D0();
      v16 = v15;
      v17 = type metadata accessor for MLS.GroupState(0);
      v18 = v9;
      v19 = v9 + *(v17 + 36);
      v20 = *(v19 + 1);
      v21 = *(v19 + 2);
      v22 = *(v18 + *(v17 + 40));
      *v31 = v12;
      v23 = v66;
      *&v31[8] = v66;
      *&v31[16] = v26;
      *&v31[24] = v25;
      *&v32 = v14;
      *(&v32 + 1) = v16;
      *&v33 = v20;
      *(&v33 + 1) = v21;
      v34 = v22;
      sub_26BE00608(v14, v16);
      sub_26BE00608(v23, v26);
      sub_26BE00608(v20, v21);

      LOBYTE(v14) = MLS.AuthenticatedContent.verify(ciphersuiteID:signaturePublicKey:context:)(&v39, v40, v31);
      v28 = v32;
      v29 = v33;
      v30 = v34;
      *v27 = *v31;
      *&v27[16] = *&v31[16];
      sub_26BE2E258(v27, &qword_28045E750, &unk_26C011558);
      if (v14)
      {
        __swift_destroy_boxed_opaque_existential_1(v40);
        return sub_26BE2E258(v41, &qword_28045E6A0, &unk_26C016520);
      }

      else
      {
        sub_26BE01654();
        swift_allocError();
        *v24 = 10;
        *(v24 + 8) = 0u;
        *(v24 + 24) = 0u;
        *(v24 + 40) = 0u;
        *(v24 + 56) = 0u;
        *(v24 + 72) = 0u;
        *(v24 + 88) = 0u;
        *(v24 + 104) = 0;
        *(v24 + 112) = 23;
        swift_willThrow();
        sub_26BE2E258(v41, &qword_28045E6A0, &unk_26C016520);
        return __swift_destroy_boxed_opaque_existential_1(v40);
      }
    }
  }

  return result;
}

uint64_t sub_26BEC7148(uint64_t a1)
{
  v3 = *(a1 + 200);
  v76[8] = *(a1 + 184);
  v76[9] = v3;
  v77[0] = *(a1 + 216);
  *(v77 + 9) = *(a1 + 225);
  v4 = *(a1 + 136);
  v76[4] = *(a1 + 120);
  v76[5] = v4;
  v5 = *(a1 + 168);
  v76[6] = *(a1 + 152);
  v76[7] = v5;
  v6 = *(a1 + 72);
  v76[0] = *(a1 + 56);
  v76[1] = v6;
  v7 = *(a1 + 104);
  v76[2] = *(a1 + 88);
  v76[3] = v7;
  v8 = *(a1 + 200);
  v78[8] = *(a1 + 184);
  v78[9] = v8;
  v79[0] = *(a1 + 216);
  *(v79 + 9) = *(a1 + 225);
  v9 = *(a1 + 136);
  v78[4] = *(a1 + 120);
  v78[5] = v9;
  v10 = *(a1 + 168);
  v78[6] = *(a1 + 152);
  v78[7] = v10;
  v11 = *(a1 + 72);
  v78[0] = *(a1 + 56);
  v78[1] = v11;
  v12 = *(a1 + 104);
  v78[2] = *(a1 + 88);
  v78[3] = v12;
  if (sub_26BE6917C(v78) != 2)
  {
    sub_26BE01654();
    swift_allocError();
    *v22 = 12;
    v23 = 6;
    goto LABEL_5;
  }

  nullsub_1();
  v14 = v13;
  v67 = *(v13 + 8);
  v15 = *(v13 + 40);
  v16 = *(v13 + 56);
  v17 = *(v13 + 72);
  v68 = *(v13 + 24);
  v70 = v16;
  v71 = v17;
  v69 = v15;
  v18 = *(v13 + 104);
  v19 = *(v13 + 136);
  v20 = *(v13 + 88);
  v74 = *(v13 + 120);
  v75 = v19;
  v72 = v20;
  v73 = v18;
  result = sub_26BE59C80(&v67);
  if (result == 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v22 = 0;
    v23 = 7;
LABEL_5:
    v22[112] = v23;
    return swift_willThrow();
  }

  v24 = *v1;
  if ((v24 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v25 = v1;
    LOBYTE(v55) = v24 != 1;
    sub_26BE71438(v76, v60);
    sub_26BE7ABF0(v14 + 8, v60);
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
    v60[0] = v51[0];
    *&v60[8] = *&v51[8];
    *&v60[24] = *&v51[24];
    *&v61 = v52;
    MLS.Cryptography.Ciphersuite.importSignaturePublicKey(_:)(v68, *(&v68 + 1), v64);
    if (v2)
    {
      sub_26BE6FD84(v76);
      sub_26BE2E258(v14 + 8, &qword_28045E8B0, &qword_26C012560);
    }

    else
    {

      v59 = v24;
      v27 = *(v1 + 1);
      v26 = *(v1 + 2);
      v28 = *(v1 + 3);
      v29 = *(v1 + 5);
      v30 = *(v1 + 12);
      v31 = *(v1 + 7);
      v55 = v1[16];
      v56 = v29;
      v57 = v30;
      v58 = v31;
      v32 = sub_26BE592D0();
      v80 = v33;
      v34 = type metadata accessor for MLS.GroupState(0);
      v35 = v25;
      v36 = v25 + *(v34 + 36);
      v37 = v28;
      v38 = *(v36 + 1);
      v39 = *(v36 + 2);
      v40 = *(v35 + *(v34 + 40));
      *v60 = v24;
      *&v60[8] = v27;
      *&v60[16] = v26;
      *&v60[24] = v37;
      *&v61 = v32;
      *(&v61 + 1) = v80;
      *&v62 = v38;
      *(&v62 + 1) = v39;
      v63 = v40;
      sub_26BE00608(v32, v80);
      sub_26BE00608(v27, v26);
      sub_26BE00608(v38, v39);

      LOBYTE(v32) = MLS.AuthenticatedContent.verify(ciphersuiteID:signaturePublicKey:context:)(&v59, v64, v60);
      v52 = v61;
      v53 = v62;
      v54 = v63;
      *v51 = *v60;
      *&v51[16] = *&v60[16];
      sub_26BE2E258(v51, &qword_28045E750, &unk_26C011558);
      if ((v32 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_26C011280;
        sub_26C00AC1C();

        v43 = v65;
        v42 = v66;
        __swift_project_boxed_opaque_existential_1(v64, v65);
        v44 = (*(*(v42 + 8) + 16))(v43);
        v46 = v45;
        sub_26BF87240(v44, v45);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
        sub_26BE3C0F4();
        v47 = sub_26C00A3EC();
        v49 = v48;
        sub_26BE00258(v44, v46);

        MEMORY[0x26D699090](v47, v49);

        *(v41 + 56) = MEMORY[0x277D837D0];
        *(v41 + 32) = 0xD00000000000001FLL;
        *(v41 + 40) = 0x800000026C02C310;
        sub_26C00B03C();

        sub_26BE01654();
        swift_allocError();
        *v50 = 10;
        *(v50 + 8) = 0u;
        *(v50 + 24) = 0u;
        *(v50 + 40) = 0u;
        *(v50 + 56) = 0u;
        *(v50 + 72) = 0u;
        *(v50 + 88) = 0u;
        *(v50 + 104) = 0;
        *(v50 + 112) = 23;
        swift_willThrow();
      }

      sub_26BE2E258(v14 + 8, &qword_28045E8B0, &qword_26C012560);
      sub_26BE6FD84(v76);
      return __swift_destroy_boxed_opaque_existential_1(v64);
    }
  }

  return result;
}

uint64_t sub_26BEC7710(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_26BE2AE90(*(*(v2 + 48) + ((v9 << 7) | (2 * v10))), v11);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_26BEC7818(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v53 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v46 = a1;
    v47 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v45 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v46;
          v16 = v47;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v47 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v46;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v5 = *(*(v15 + 48) + ((v47 << 7) | (2 * v18)));
        sub_26C00B05C();
        sub_26C00B08C();
        v19 = sub_26C00B0CC();
        v20 = -1 << *(v6 + 32);
        v2 = v19 & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
      }

      while (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0);
      v21 = *(v6 + 48);
      if (*(v21 + 2 * v2) == v5)
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
        if (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0)
        {
          break;
        }

        if (*(v21 + 2 * v2) == v5)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v50 = v45;
    v51 = v47;
    v52 = v11;
    v49[0] = v46;
    v49[1] = v8;
    v14 = (63 - v20) >> 6;
    v5 = 8 * v14;

    if (v14 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v39 = swift_slowAlloc();
      memcpy(v39, (v6 + 56), v5);
      v40 = sub_26BEC7CA0(v39, v14, v6, v2, v49);

      MEMORY[0x26D69A4E0](v39, -1, -1);
      v45 = v50;
      v47 = v51;
      v6 = v40;
      goto LABEL_43;
    }

LABEL_18:
    v42 = v14;
    v43 = &v41;
    MEMORY[0x28223BE20](v22);
    v14 = &v41 - v23;
    memcpy(&v41 - v23, (v6 + 56), v5);
    v24 = *(v6 + 16);
    *(v14 + 8 * v3) &= ~v4;
    v25 = v24 - 1;
    v3 = 1;
    v4 = v46;
LABEL_19:
    v44 = v25;
    while (v11)
    {
LABEL_27:
      v29 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v5 = *(*(v4 + 48) + ((v47 << 7) | (2 * v29)));
      sub_26C00B05C();
      v2 = v48;
      sub_26C00B08C();
      v30 = sub_26C00B0CC();
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) != 0)
      {
        v35 = *(v6 + 48);
        if (*(v35 + 2 * v32) == v5)
        {
LABEL_20:
          v26 = *(v14 + 8 * v33);
          *(v14 + 8 * v33) = v26 & ~v34;
          if ((v26 & v34) != 0)
          {
            v25 = v44 - 1;
            if (__OFSUB__(v44, 1))
            {
              __break(1u);
            }

            if (v44 == 1)
            {

              v6 = MEMORY[0x277D84FA0];
              goto LABEL_43;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v36 = ~v31;
          while (1)
          {
            v32 = (v32 + 1) & v36;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) == 0)
            {
              break;
            }

            if (*(v35 + 2 * v32) == v5)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v27 = v47;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v28 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v28);
      ++v27;
      if (v11)
      {
        v47 = v28;
        goto LABEL_27;
      }
    }

    if (v12 <= v47 + 1)
    {
      v37 = v47 + 1;
    }

    else
    {
      v37 = v12;
    }

    v47 = v37 - 1;
    v6 = sub_26BEBE098(v14, v42, v44, v6);
LABEL_43:
    sub_26BE2DA4C();
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v6;
}

uint64_t sub_26BEC7CA0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + ((v14 << 7) | (2 * __clz(__rbit64(v13)))));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    sub_26C00B05C();
    sub_26C00B08C();
    result = sub_26C00B0CC();
    v18 = -1 << *(a3 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) != 0)
    {
      v22 = *(a3 + 48);
      if (*(v22 + 2 * v19) == v17)
      {
LABEL_2:
        v11 = v7[v20];
        v7[v20] = v11 & ~v21;
        if ((v11 & v21) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return MEMORY[0x277D84FA0];
          }
        }
      }

      else
      {
        v23 = ~v18;
        while (1)
        {
          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) == 0)
          {
            break;
          }

          if (*(v22 + 2 * v19) == v17)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v25 = v12 + 1;
  }

  else
  {
    v25 = (a5[2] + 64) >> 6;
  }

  a5[3] = v25 - 1;
  a5[4] = 0;

  return sub_26BEBE098(v7, a2, v9, a3);
}

uint64_t sub_26BEC7E78(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_26BEC9090();
  result = MEMORY[0x26D699320](v2, &type metadata for MLS.Group.PureSwiftGroup.EraEpoch, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v6 = *(v5 - 2);
      v7 = *v5;
      v5 += 2;
      sub_26BF75208(v8, v6, v7);
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_26BEC7F8C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(_BYTE *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x26D699320](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t sub_26BEC800C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_26BEC903C();
  result = MEMORY[0x26D699320](v2, MEMORY[0x277CC9318], v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      sub_26BE00608(v7, *v5);
      sub_26BF7532C(v8, v7, v6);
      sub_26BE00258(v8[0], v8[1]);
      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_26BEC80A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE08, &qword_26C016570);
  v4 = sub_26BEC8FC0();
  result = MEMORY[0x26D699320](v2, v3, v4);
  v10 = result;
  if (v2)
  {
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      sub_26BF757B4(&v9, v8, v7);

      v6 += 2;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_26BEC8154(uint64_t result, int *a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *a2;
    for (i = (result + 220); ; i += 200)
    {
      v5 = *(i - 44);
      v13[8] = *(i - 60);
      v13[9] = v5;
      v13[10] = *(i - 28);
      v14 = *(i - 12);
      v6 = *(i - 108);
      v13[4] = *(i - 124);
      v13[5] = v6;
      v7 = *(i - 76);
      v13[6] = *(i - 92);
      v13[7] = v7;
      v8 = *(i - 172);
      v13[0] = *(i - 188);
      v13[1] = v8;
      v9 = *(i - 140);
      v13[2] = *(i - 156);
      v13[3] = v9;
      v10 = *(i - 1);
      v11 = *i;
      result = sub_26BE5CD48(v13);
      if (result == 1)
      {
        result = sub_26BE5CDC8(v13);
        if ((v11 & 1) == 0 && v10 == v3)
        {
          break;
        }
      }

      if (!--v2)
      {
        return result;
      }
    }

    sub_26BE01654();
    swift_allocError();
    *v12 = 0;
    v12[112] = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26BEC825C(uint64_t result, int *a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *a2;
    for (i = result + 32; ; i += 200)
    {
      v5 = *(i + 144);
      v11[8] = *(i + 128);
      v11[9] = v5;
      v11[10] = *(i + 160);
      v12 = *(i + 176);
      v6 = *(i + 80);
      v11[4] = *(i + 64);
      v11[5] = v6;
      v7 = *(i + 112);
      v11[6] = *(i + 96);
      v11[7] = v7;
      v8 = *(i + 16);
      v11[0] = *i;
      v11[1] = v8;
      v9 = *(i + 48);
      v11[2] = *(i + 32);
      v11[3] = v9;
      result = sub_26BE5CD48(v11);
      if (result == 2)
      {
        result = sub_26BE5CDC8(v11);
        if (*result == v3)
        {
          break;
        }
      }

      if (!--v2)
      {
        return result;
      }
    }

    sub_26BE01654();
    swift_allocError();
    *v10 = 1;
    v10[112] = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26BEC8344(uint64_t a1)
{
  v40 = MEMORY[0x277D84FA0];
  v1 = *(a1 + 16);
  if (!v1)
  {
  }

  v2 = 0;
  v3 = a1 + 32;
  while (1)
  {
    v4 = v3 + 200 * v2;
    v5 = *(v4 + 144);
    v6 = *(v4 + 176);
    v35 = *(v4 + 160);
    v36 = v6;
    v7 = *(v4 + 80);
    v8 = *(v4 + 112);
    v31 = *(v4 + 96);
    v32 = v8;
    v9 = *(v4 + 144);
    v10 = *(v4 + 112);
    v33 = *(v4 + 128);
    v34 = v9;
    v11 = *(v4 + 16);
    v12 = *(v4 + 48);
    v27 = *(v4 + 32);
    v28 = v12;
    v13 = *(v4 + 80);
    v14 = *(v4 + 48);
    v29 = *(v4 + 64);
    v30 = v13;
    v15 = *(v4 + 16);
    v26[0] = *v4;
    v26[1] = v15;
    v38[8] = v33;
    v38[9] = v5;
    v38[10] = v35;
    v38[4] = v29;
    v38[5] = v7;
    v38[6] = v31;
    v38[7] = v10;
    v38[0] = v26[0];
    v38[1] = v11;
    v37 = *(v4 + 192);
    v39 = *(v4 + 176);
    v38[2] = v27;
    v38[3] = v14;
    v16 = sub_26BE5CD48(v38);
    if (v16 == 2)
    {
      v17 = *sub_26BE5CDC8(v38);
    }

    else
    {
      if (v16 != 1)
      {
        goto LABEL_4;
      }

      sub_26BE5CDC8(v38);
      if (BYTE12(v36))
      {
        goto LABEL_4;
      }

      v17 = DWORD2(v36);
    }

    v18 = v40;
    if (*(v40 + 16))
    {
      sub_26C00B05C();
      sub_26C00B09C();
      v19 = sub_26C00B0CC();
      v20 = -1 << *(v18 + 32);
      v21 = v19 & ~v20;
      if ((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        break;
      }
    }

LABEL_3:
    sub_26BF7593C(v25, v17);
LABEL_4:
    if (++v2 == v1)
    {
    }
  }

  v22 = ~v20;
  while (*(*(v18 + 48) + 4 * v21) != v17)
  {
    v21 = (v21 + 1) & v22;
    if (((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  sub_26BE5CDE4(v26, v25);

  sub_26BE01654();
  swift_allocError();
  *v23 = 2;
  v23[112] = 3;
  swift_willThrow();
  return sub_26BE5CD74(v26);
}

uint64_t sub_26BEC8570(uint64_t a1)
{
  v36 = MEMORY[0x277D84FA0];
  v1 = *(a1 + 16);
  if (!v1)
  {
  }

  v2 = a1 + 32;
  for (i = v1 - 1; ; --i)
  {
    v4 = *(v2 + 144);
    v5 = *(v2 + 176);
    v31 = *(v2 + 160);
    v32 = v5;
    v6 = *(v2 + 80);
    v7 = *(v2 + 112);
    v27 = *(v2 + 96);
    v28 = v7;
    v8 = *(v2 + 144);
    v9 = *(v2 + 112);
    v29 = *(v2 + 128);
    v30 = v8;
    v10 = *(v2 + 16);
    v11 = *(v2 + 48);
    v23 = *(v2 + 32);
    v24 = v11;
    v12 = *(v2 + 80);
    v13 = *(v2 + 48);
    v25 = *(v2 + 64);
    v26 = v12;
    v14 = *(v2 + 16);
    v22[0] = *v2;
    v22[1] = v14;
    v34[8] = v29;
    v34[9] = v4;
    v34[10] = v31;
    v34[4] = v25;
    v34[5] = v6;
    v34[6] = v27;
    v34[7] = v9;
    v34[0] = v22[0];
    v34[1] = v10;
    v33 = *(v2 + 192);
    v35 = *(v2 + 176);
    v34[2] = v23;
    v34[3] = v13;
    if (sub_26BE5CD48(v34))
    {
      goto LABEL_6;
    }

    v15 = sub_26BE5CDC8(v34);
    v16 = *(v15 + 40);
    v17 = *(v15 + 48);
    v18 = v36;
    sub_26BE5CDE4(v22, v21);
    sub_26BE5CDE4(v22, v21);
    sub_26BE00608(v16, v17);
    if (sub_26BF32868(v16, v17, v18))
    {
      break;
    }

    sub_26BE00608(v16, v17);
    sub_26BF7532C(v21, v16, v17);
    sub_26BE5CD74(v22);
    sub_26BE5CD74(v22);
    sub_26BE00258(v16, v17);
    sub_26BE00258(v21[0], v21[1]);
LABEL_6:
    if (!i)
    {
    }

    v2 += 200;
  }

  sub_26BE01654();
  swift_allocError();
  *v20 = 3;
  v20[112] = 3;
  swift_willThrow();
  sub_26BE00258(v16, v17);
  sub_26BE5CD74(v22);
  return sub_26BE5CD74(v22);
}

uint64_t sub_26BEC8754(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 0;
    v3 = result + 32;
    v4 = MEMORY[0x277D84F90];
    do
    {
      v5 = (v3 + 200 * v2);
      v6 = v2;
      while (1)
      {
        if (v6 >= v1)
        {
          __break(1u);
LABEL_20:
          __break(1u);
          return result;
        }

        v7 = v5[11];
        v43 = v5[10];
        v44 = v7;
        v45 = *(v5 + 192);
        v8 = v5[7];
        v39 = v5[6];
        v40 = v8;
        v9 = v5[9];
        v41 = v5[8];
        v42 = v9;
        v10 = v5[3];
        v35 = v5[2];
        v36 = v10;
        v11 = v5[5];
        v37 = v5[4];
        v38 = v11;
        v12 = v5[1];
        v33 = *v5;
        v34 = v12;
        v2 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_20;
        }

        v13 = v5[9];
        v46[8] = v5[8];
        v46[9] = v13;
        v46[10] = v5[10];
        v47 = *(v5 + 22);
        v14 = v5[5];
        v46[4] = v5[4];
        v46[5] = v14;
        v15 = v5[7];
        v46[6] = v5[6];
        v46[7] = v15;
        v16 = v5[1];
        v46[0] = *v5;
        v46[1] = v16;
        v17 = v5[3];
        v46[2] = v5[2];
        v46[3] = v17;
        result = sub_26BE5CD48(v46);
        if (result == 6)
        {
          break;
        }

        ++v6;
        v5 = (v5 + 200);
        if (v2 == v1)
        {
          goto LABEL_16;
        }
      }

      sub_26BE5CDC8(v46);
      sub_26BE5CDE4(&v33, v32);
      result = swift_isUniquelyReferenced_nonNull_native();
      v48 = v4;
      if ((result & 1) == 0)
      {
        result = sub_26BECBA94(0, *(v4 + 16) + 1, 1);
        v4 = v48;
      }

      v19 = *(v4 + 16);
      v18 = *(v4 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_26BECBA94((v18 > 1), v19 + 1, 1);
        v4 = v48;
      }

      *(v4 + 16) = v19 + 1;
      v20 = v4 + 200 * v19;
      *(v20 + 32) = v33;
      v21 = v34;
      v22 = v35;
      v23 = v37;
      *(v20 + 80) = v36;
      *(v20 + 96) = v23;
      *(v20 + 48) = v21;
      *(v20 + 64) = v22;
      v24 = v38;
      v25 = v39;
      v26 = v41;
      *(v20 + 144) = v40;
      *(v20 + 160) = v26;
      *(v20 + 112) = v24;
      *(v20 + 128) = v25;
      v27 = v42;
      v28 = v43;
      v29 = v44;
      *(v20 + 224) = v45;
      *(v20 + 192) = v28;
      *(v20 + 208) = v29;
      *(v20 + 176) = v27;
    }

    while (v2 != v1);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

LABEL_16:
  v30 = *(v4 + 16);

  if (v30 > 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v31 = 4;
    v31[112] = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26BEC898C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 32;
    v3 = *(result + 16);
    while (1)
    {
      v4 = *(v2 + 144);
      v10[8] = *(v2 + 128);
      v10[9] = v4;
      v10[10] = *(v2 + 160);
      v11 = *(v2 + 176);
      v5 = *(v2 + 80);
      v10[4] = *(v2 + 64);
      v10[5] = v5;
      v6 = *(v2 + 112);
      v10[6] = *(v2 + 96);
      v10[7] = v6;
      v7 = *(v2 + 16);
      v10[0] = *v2;
      v10[1] = v7;
      v8 = *(v2 + 48);
      v10[2] = *(v2 + 32);
      v10[3] = v8;
      result = sub_26BE5CD48(v10);
      if (result == 4)
      {
        break;
      }

      v2 += 200;
      if (!--v3)
      {
        return result;
      }
    }

    result = sub_26BE5CDC8(v10);
    if (v1 != 1)
    {
      sub_26BE01654();
      swift_allocError();
      *v9 = 5;
      v9[112] = 3;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_26BEC8A70(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    for (i = result + 32; ; i += 200)
    {
      v3 = *(i + 144);
      v9[8] = *(i + 128);
      v9[9] = v3;
      v9[10] = *(i + 160);
      v10 = *(i + 176);
      v4 = *(i + 80);
      v9[4] = *(i + 64);
      v9[5] = v4;
      v5 = *(i + 112);
      v9[6] = *(i + 96);
      v9[7] = v5;
      v6 = *(i + 16);
      v9[0] = *i;
      v9[1] = v6;
      v7 = *(i + 48);
      v9[2] = *(i + 32);
      v9[3] = v7;
      result = sub_26BE5CD48(v9);
      if (result == 5)
      {
        break;
      }

      if (!--v1)
      {
        return result;
      }
    }

    sub_26BE5CDC8(v9);
    sub_26BE01654();
    swift_allocError();
    *v8 = 6;
    v8[112] = 3;
    return swift_willThrow();
  }

  return result;
}

double sub_26BEC8B80(uint64_t a1)
{
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 0x3000000000000000;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0x3000000000000000;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  result = 1.72723371e-77;
  *(a1 + 176) = xmmword_26C016500;
  *(a1 + 192) = 0;
  return result;
}

uint64_t sub_26BEC8BB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BEC8C20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BEC8C80(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *sub_26BEC8D28(int *a1, void *a2)
{
  v3 = *a1;
  v4 = 2;
  return MLS.GroupState.validateLeafNode(leafNode:validationContext:)(a2, &v3);
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s25LeafNodeValidationContextOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 5))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 4);
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

uint64_t _s25LeafNodeValidationContextOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 4) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_26BEC8E08(uint64_t a1)
{
  if (*(a1 + 4) <= 2u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_26BEC8E20(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 4) = a2;
  return result;
}

uint64_t sub_26BEC8E48(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_26BEC8ED4();
  result = MEMORY[0x26D699320](v2, &type metadata for MLS.Identity.SigningIdentity, v3);
  v8 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      sub_26BE2DB68(v5, v6);
      sub_26BF76554(v7, v6);
      sub_26BE2DBC4(v7);
      v5 += 56;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_26BEC8ED4()
{
  result = qword_28045EE00;
  if (!qword_28045EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EE00);
  }

  return result;
}

uint64_t sub_26BEC8F28(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26D699320](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_26BF75B2C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_26BEC8FC0()
{
  result = qword_28045EE10;
  if (!qword_28045EE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045EE08, &qword_26C016570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EE10);
  }

  return result;
}

unint64_t sub_26BEC903C()
{
  result = qword_28045EE18;
  if (!qword_28045EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EE18);
  }

  return result;
}

unint64_t sub_26BEC9090()
{
  result = qword_28045EE20;
  if (!qword_28045EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EE20);
  }

  return result;
}

unint64_t sub_26BEC90E4()
{
  result = qword_28045EE28;
  if (!qword_28045EE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EE28);
  }

  return result;
}

unint64_t sub_26BEC9138()
{
  result = qword_28045EE30;
  if (!qword_28045EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EE30);
  }

  return result;
}

unint64_t sub_26BEC918C()
{
  result = qword_28045EE38;
  if (!qword_28045EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EE38);
  }

  return result;
}

uint64_t sub_26BEC91F8@<X0>(unint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v104 = a2;
  v105 = a4;
  v101 = a1;
  v86 = a5;
  v93 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  MEMORY[0x28223BE20](v93);
  v94 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_26C00959C();
  v88 = *(v90 - 8);
  v7 = MEMORY[0x28223BE20](v90);
  v89 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v96 = &v85 - v9;
  v98 = _s18SignatureAlgorithmVMa(0);
  v10 = MEMORY[0x28223BE20](v98);
  v91 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v95 = &v85 - v12;
  v102 = sub_26C00978C();
  v100 = *(v102 - 8);
  v13 = MEMORY[0x28223BE20](v102);
  v87 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v92 = &v85 - v16;
  MEMORY[0x28223BE20](v15);
  v99 = &v85 - v17;
  v18 = _s9PublicKeyVMa(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = _s25CertificateSigningRequestVMa(0);
  MEMORY[0x28223BE20](v97);
  v22 = (&v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = a3[3];
  v24 = a3[4];
  v116 = a3;
  __swift_project_boxed_opaque_existential_1(a3, v23);
  v25 = *(v24 + 40);
  *(&v112 + 1) = swift_getAssociatedTypeWitness();
  *&v113 = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(&v111);
  v26 = v24;
  v27 = v20;
  v25(v23, v26);
  v28 = v103;
  sub_26BE103EC(&v111, v20);
  if (v28)
  {

    return __swift_destroy_boxed_opaque_existential_1(v116);
  }

  else
  {
    v30 = v98;
    v31 = type metadata accessor for MLS.CertificationRequestInfo(0);
    sub_26BEC9F84(v27, v22 + *(v31 + 24), _s9PublicKeyVMa);
    v32 = v104;
    *v22 = v101;
    v22[1] = v32;
    *(v22 + *(v31 + 28)) = v105;
    v33 = v99;
    sub_26C00977C();
    sub_26BEC9EE0(&qword_28045EE40, type metadata accessor for MLS.CertificationRequestInfo, &protocol conformance descriptor for MLS.CertificationRequestInfo);
    sub_26C00976C();
    v34 = (v100 + 8);
    v35 = v22;
    v36 = sub_26C00971C();
    v104 = v34;
    v105 = v36;
    v37 = *v34;
    (*v34)(v33, v102);
    v38 = v116;
    v40 = v116[3];
    v39 = v116[4];
    __swift_project_boxed_opaque_existential_1(v116, v40);
    (*(*(v39 + 8) + 24))(&v111, v40);
    LOBYTE(v39) = v111;

    v85 = v27;
    v103 = v37;
    if (v39)
    {
      if (qword_28045E148 != -1)
      {
        swift_once();
      }

      v41 = qword_280479188;
    }

    else
    {
      if (qword_28045E160 != -1)
      {
        swift_once();
      }

      v41 = qword_2804791D0;
    }

    v42 = __swift_project_value_buffer(v30, v41);
    sub_26BEC9F84(v42, v35 + *(v97 + 20), _s18SignatureAlgorithmVMa);
    v43 = v38[3];
    v44 = v38[4];
    __swift_project_boxed_opaque_existential_1(v38, v43);

    v46 = v35;
    v47 = sub_26BE12418(v45);
    v49 = v48;

    v50 = (*(v44 + 32))(v47, v49, v43, v44);
    v52 = v51;
    sub_26BE00258(v47, v49);
    v53 = v97;
    v54 = *(v97 + 20);
    v55 = v95;
    sub_26BEC9F84(v46 + v54, v95, _s18SignatureAlgorithmVMa);
    sub_26BE00608(v50, v52);
    sub_26BF2E8B4(v50, v52);
    v56 = v96;
    sub_26C00957C();
    sub_26BFE6910(v55, v56, v109);
    v57 = v46;
    v100 = v50;
    v101 = v52;
    v58 = v46 + v53[6];
    v59 = v109[3];
    *(v58 + 32) = v109[2];
    *(v58 + 48) = v59;
    *(v58 + 64) = v110;
    v60 = v109[1];
    *v58 = v109[0];
    *(v58 + 16) = v60;
    v61 = v105;
    v62 = (2 * *(v105 + 16)) | 1;
    v63 = (v46 + v53[7]);
    *v63 = v105;
    v63[1] = v61 + 32;
    v63[2] = 0;
    v63[3] = v62;
    v64 = v46 + v54;
    v65 = v91;
    sub_26BEC9F84(v64, v91, _s18SignatureAlgorithmVMa);
    v66 = *(v93 + 20);
    v67 = sub_26C0094DC();
    v68 = v94;
    (*(*(v67 - 8) + 56))(&v94[v66], 1, 1, v67);
    sub_26BEC9E14(v68 + v66);
    sub_26BEC9E7C(v65, v68);
    v69 = v92;
    sub_26C00977C();
    sub_26BEC9EE0(&qword_28045EE50, type metadata accessor for MLS.AlgorithmIdentifier, &protocol conformance descriptor for MLS.AlgorithmIdentifier);
    sub_26C00976C();
    v70 = sub_26C00971C();
    v103(v69, v102);
    sub_26BEC9FEC(v68, type metadata accessor for MLS.AlgorithmIdentifier);
    v71 = (2 * *(v70 + 16)) | 1;
    v72 = (v57 + v53[8]);
    *v72 = v70;
    v72[1] = v70 + 32;
    v72[2] = 0;
    v72[3] = v71;
    v73 = *(v58 + 16);
    v74 = *(v58 + 48);
    v113 = *(v58 + 32);
    v114 = v74;
    v75 = *(v58 + 16);
    v111 = *v58;
    v112 = v75;
    v76 = *(v58 + 48);
    v107[2] = v113;
    v107[3] = v76;
    v115 = *(v58 + 64);
    v108 = *(v58 + 64);
    v107[0] = v111;
    v107[1] = v73;
    sub_26BEC9F28(&v111, &v106);
    v77 = v89;
    sub_26BFE6D24(v107);
    v78 = v87;
    sub_26C00977C();
    v79 = v90;
    sub_26C00976C();
    v80 = (v88 + 8);
    v81 = v100;
    v105 = sub_26C00971C();
    sub_26BE00258(v81, v101);
    v103(v78, v102);
    (*v80)(v77, v79);
    sub_26BEC9FEC(v85, _s9PublicKeyVMa);
    v82 = v105 + 32;
    v83 = (2 * *(v105 + 16)) | 1;
    v84 = (v57 + v53[9]);
    *v84 = v105;
    v84[1] = v82;
    v84[2] = 0;
    v84[3] = v83;
    sub_26BEC9F84(v57, v86, _s25CertificateSigningRequestVMa);
    __swift_destroy_boxed_opaque_existential_1(v116);
    return sub_26BEC9FEC(v57, _s25CertificateSigningRequestVMa);
  }
}

uint64_t sub_26BEC9E14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BEC9E7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BEC9EE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BEC9F84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BEC9FEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void MLS.RatchetTree.leafCount.getter(_DWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (!v4)
  {
    v6 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = (v3 + 32 + 136 * v5);
    v8 = v5;
    while (1)
    {
      if (v8 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      v9 = v7[7];
      v35 = v7[6];
      v36 = v9;
      v37 = *(v7 + 16);
      v10 = v7[3];
      v31 = v7[2];
      v32 = v10;
      v11 = v7[5];
      v33 = v7[4];
      v34 = v11;
      v12 = v7[1];
      v29 = *v7;
      v30 = v12;
      memmove(__dst, v7, 0x88uLL);
      if (sub_26BE58C10(__dst) != 1)
      {
        break;
      }

LABEL_4:
      ++v8;
      v7 = (v7 + 136);
      if (v4 == v8)
      {
        goto LABEL_16;
      }
    }

    v27[6] = __dst[6];
    v27[7] = __dst[7];
    v28 = v39;
    v27[2] = __dst[2];
    v27[3] = __dst[3];
    v27[4] = __dst[4];
    v27[5] = __dst[5];
    v27[0] = __dst[0];
    v27[1] = __dst[1];
    if (sub_26BE592C4(v27) == 1)
    {
      sub_26BE13A3C(v27);
      goto LABEL_4;
    }

    sub_26BE13A3C(v27);
    v25[6] = v35;
    v25[7] = v36;
    v26 = v37;
    v25[2] = v31;
    v25[3] = v32;
    v25[4] = v33;
    v25[5] = v34;
    v25[0] = v29;
    v25[1] = v30;
    sub_26BE59BD8(v25, v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_26BECB854(0, *(v6 + 16) + 1, 1);
      v6 = v40;
    }

    v15 = *(v6 + 16);
    v14 = *(v6 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_26BECB854((v14 > 1), v15 + 1, 1);
      v6 = v40;
    }

    v5 = v8 + 1;
    *(v6 + 16) = v15 + 1;
    v16 = v6 + 136 * v15;
    *(v16 + 32) = v29;
    v17 = v30;
    v18 = v31;
    v19 = v33;
    *(v16 + 80) = v32;
    *(v16 + 96) = v19;
    *(v16 + 48) = v17;
    *(v16 + 64) = v18;
    v20 = v34;
    v21 = v35;
    v22 = v36;
    *(v16 + 160) = v37;
    *(v16 + 128) = v21;
    *(v16 + 144) = v22;
    *(v16 + 112) = v20;
  }

  while (v4 - 1 != v8);
LABEL_16:
  v23 = *(v6 + 16);

  if (HIDWORD(v23))
  {
LABEL_19:
    __break(1u);
  }

  else
  {
    *a1 = v23;
  }
}

void sub_26BECA280(unsigned int a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = a1 - v3;
  if (v4 >= 1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v1 = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = sub_26BEEB900(0, v3 + 1, 1, v2);
      *v1 = v2;
    }

    sub_26BE2E2B8(v17);
    *v1 = v2;
    v6 = v2[2];
    v7 = 136 * v6 + 32;
    do
    {
      v8 = v2[3];
      v9 = v6 + 1;
      if (v6 >= v8 >> 1)
      {
        v2 = sub_26BEEB900((v8 > 1), v6 + 1, 1, v2);
      }

      v2[2] = v9;
      v10 = v2 + v7;
      *v10 = v17[0];
      v11 = v17[1];
      v12 = v17[2];
      v13 = v17[4];
      *(v10 + 3) = v17[3];
      *(v10 + 4) = v13;
      *(v10 + 1) = v11;
      *(v10 + 2) = v12;
      v14 = v17[5];
      v15 = v17[6];
      v16 = v17[7];
      *(v10 + 16) = v18;
      *(v10 + 6) = v15;
      *(v10 + 7) = v16;
      *(v10 + 5) = v14;
      v7 += 136;
      v6 = v9;
      --v4;
    }

    while (v4);
    *v1 = v2;
  }
}

uint64_t MLS.RatchetTree.hasLeaf(leafData:)(unsigned int *a1, uint64_t a2, unint64_t a3)
{
  v92 = *MEMORY[0x277D85DE8];
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (!v6)
  {
    goto LABEL_75;
  }

  v7 = 0;
  v8 = (v5 + 32);
  v55 = a1;
  if (a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3 == 0xC000000000000000;
  }

  v10 = !v9;
  v60 = v10;
  v64 = a3 >> 62;
  v11 = __OFSUB__(HIDWORD(a2), a2);
  v57 = v11;
  v56 = HIDWORD(a2) - a2;
  v59 = BYTE6(a3);
  v12 = v6 - 1;
  v13 = 0xFFFFFFFFLL;
  v62 = v6 - 1;
  v63 = *v3;
  while (1)
  {
    v82 = *v8;
    v14 = v8[1];
    v15 = v8[2];
    v16 = v8[4];
    v85 = v8[3];
    v86 = v16;
    v83 = v14;
    v84 = v15;
    v17 = v8[5];
    v18 = v8[6];
    v19 = v8[7];
    v90 = *(v8 + 16);
    v88 = v18;
    v89 = v19;
    v87 = v17;
    if (!v13)
    {
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
      goto LABEL_93;
    }

    memmove(__dst, v8, 0x88uLL);
    if (sub_26BE58C10(__dst) == 1)
    {
      goto LABEL_16;
    }

    v80[6] = v88;
    v80[7] = v89;
    v81 = v90;
    v80[2] = v84;
    v80[3] = v85;
    v80[4] = v86;
    v80[5] = v87;
    v80[0] = v82;
    v80[1] = v83;
    if (sub_26BE592C4(v80) == 1)
    {
      sub_26BE13A3C(v80);
LABEL_16:
      if (v12 == v7)
      {
        goto LABEL_74;
      }

      goto LABEL_17;
    }

    v20 = sub_26BE13A3C(v80);
    v76 = xmmword_26C00BBD0;
    v77 = 0;
    v72 = *(v20 + 80);
    v73 = *(v20 + 96);
    v74 = *(v20 + 112);
    v75 = *(v20 + 128);
    v68 = *(v20 + 16);
    v69 = *(v20 + 32);
    v70 = *(v20 + 48);
    v71 = *(v20 + 64);
    v67 = *v20;
    v78[2] = v84;
    v78[3] = v85;
    v78[0] = v82;
    v78[1] = v83;
    v79 = v90;
    v78[6] = v88;
    v78[7] = v89;
    v78[4] = v86;
    v78[5] = v87;
    sub_26BE59BD8(v78, &v65);
    sub_26BE7EBA4(&v67);
    if (v4)
    {
      goto LABEL_79;
    }

    v22 = *(v20 + 120);
    v21 = *(v20 + 128);
    v23 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v23 != 2)
      {
        LOBYTE(v24) = 0;
LABEL_34:
        LOBYTE(v65) = v24;
        v28 = MEMORY[0x277D838B0];
        *(&v68 + 1) = MEMORY[0x277D838B0];
        *&v69 = MEMORY[0x277CC9C18];
        *&v67 = &v65;
        v29 = &v65 + 1;
        goto LABEL_36;
      }

      v26 = *(v22 + 16);
      v25 = *(v22 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_88;
      }

      if ((v24 & 0x8000000000000000) != 0)
      {
        break;
      }

      goto LABEL_29;
    }

    if (!v23)
    {
      v24 = BYTE6(v21);
      goto LABEL_29;
    }

    LODWORD(v24) = HIDWORD(v22) - v22;
    if (__OFSUB__(HIDWORD(v22), v22))
    {
      goto LABEL_87;
    }

    v24 = v24;
    if ((v24 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_29:
    if (v24 <= 0x3F)
    {
      goto LABEL_34;
    }

    if (v24 >> 14)
    {
      if (v24 >> 30)
      {
        break;
      }

      v65 = bswap32(v24 | 0x80000000);
      v28 = MEMORY[0x277D838B0];
      *(&v68 + 1) = MEMORY[0x277D838B0];
      *&v69 = MEMORY[0x277CC9C18];
      *&v67 = &v65;
      v29 = &v66;
    }

    else
    {
      LOWORD(v65) = bswap32(v24 | 0x4000) >> 16;
      v28 = MEMORY[0x277D838B0];
      *(&v68 + 1) = MEMORY[0x277D838B0];
      *&v69 = MEMORY[0x277CC9C18];
      *&v67 = &v65;
      v29 = &v65 + 2;
    }

LABEL_36:
    *(&v67 + 1) = v29;
    __swift_project_boxed_opaque_existential_1(&v67, v28);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v67);
    *(&v68 + 1) = MEMORY[0x277CC9318];
    *&v69 = MEMORY[0x277CC9300];
    *&v67 = v22;
    *(&v67 + 1) = v21;
    v30 = __swift_project_boxed_opaque_existential_1(&v67, MEMORY[0x277CC9318]);
    v31 = *v30;
    v32 = v30[1];
    sub_26BE00608(v22, v21);
    sub_26BE121A0(v31, v32, &v76);
    __swift_destroy_boxed_opaque_existential_1(&v67);
    v33 = v76;
    v34 = *(&v76 + 1) >> 62;
    if ((*(&v76 + 1) >> 62) > 1)
    {
      if (v34 != 2)
      {
        goto LABEL_43;
      }

      v35 = *(v76 + 24);
    }

    else
    {
      if (!v34)
      {
        goto LABEL_43;
      }

      v35 = v76 >> 32;
    }

    if (v35 < 0)
    {
      goto LABEL_86;
    }

LABEL_43:
    v36 = sub_26C00909C();
    v38 = v37;
    sub_26BE00258(v33, *(&v33 + 1));
    v39 = v38 >> 62;
    if (v38 >> 62 == 3)
    {
      v40 = 0;
      if (v36)
      {
        v41 = 0;
      }

      else
      {
        v41 = v38 == 0xC000000000000000;
      }

      v42 = v64;
      v44 = !v41 || v64 < 3;
      if (((v44 | v60) & 1) == 0)
      {
        v38 = 0xC000000000000000;
        goto LABEL_80;
      }

LABEL_61:
      if (v42 <= 1)
      {
        goto LABEL_62;
      }

      goto LABEL_66;
    }

    v42 = v64;
    if (v39 == 2)
    {
      v46 = *(v36 + 16);
      v45 = *(v36 + 24);
      v40 = v45 - v46;
      if (__OFSUB__(v45, v46))
      {
        goto LABEL_91;
      }

      goto LABEL_61;
    }

    if (v39 == 1)
    {
      if (__OFSUB__(HIDWORD(v36), v36))
      {
        goto LABEL_92;
      }

      v40 = HIDWORD(v36) - v36;
      if (v64 <= 1)
      {
LABEL_62:
        v47 = v59;
        if (v42)
        {
          v47 = v56;
          if (v57)
          {
            goto LABEL_89;
          }
        }

        goto LABEL_68;
      }
    }

    else
    {
      v40 = BYTE6(v38);
      if (v64 <= 1)
      {
        goto LABEL_62;
      }
    }

LABEL_66:
    if (v42 != 2)
    {
      if (!v40)
      {
        goto LABEL_77;
      }

      goto LABEL_73;
    }

    v49 = *(a2 + 16);
    v48 = *(a2 + 24);
    v27 = __OFSUB__(v48, v49);
    v47 = v48 - v49;
    if (v27)
    {
      goto LABEL_90;
    }

LABEL_68:
    if (v40 == v47)
    {
      if (v40 < 1 || (sub_26BE00608(a2, a3), (sub_26BECB6A4(v36, v38, a2, a3) & 1) != 0))
      {
LABEL_77:
        v40 = v36;
LABEL_80:
        v53 = -v13 - 1;
        if (v13)
        {
          if (v53)
          {
            sub_26BE01654();
            swift_allocError();
            *v54 = 0xD000000000000026;
            *(v54 + 8) = 0x800000026C02B600;
            *(v54 + 112) = 15;
            swift_willThrow();
            sub_26BE00258(v40, v38);
            sub_26BE7DCC0(&v82);
          }

          else
          {
            sub_26BE7DCC0(&v82);
            sub_26BE00258(v40, v38);
            *v55 = v53 >> 1;
            v50 = 1;
          }

          return v50 & 1;
        }

LABEL_93:
        __break(1u);
      }
    }

LABEL_73:
    sub_26BE00258(v36, v38);
    sub_26BE7DCC0(&v82);
    v12 = v62;
    v5 = v63;
    if (v62 == v7)
    {
LABEL_74:
      a1 = v55;
LABEL_75:
      v50 = 0;
      *a1 = 0;
      return v50 & 1;
    }

LABEL_17:
    ++v7;
    --v13;
    v8 = (v8 + 136);
    if (v7 >= *(v5 + 16))
    {
      goto LABEL_85;
    }
  }

  sub_26BE01600();
  swift_allocError();
  *v52 = 3;
  swift_willThrow();
LABEL_79:
  sub_26BE7DCC0(&v82);
  sub_26BE00258(v76, *(&v76 + 1));
  return v50 & 1;
}

Swift::Void __swiftcall MLS.RatchetTree.halve()()
{
  v1 = *v0;
  v2 = *(*v0 + 16) - (*(*v0 + 16) >> 1);

  v3 = sub_26BE55FBC(v2, v1);

  *v0 = v3;
}

void MLS.RatchetTree.rawRepresentation.getter()
{
  v2 = *v0;
  sub_26BE7D80C(&v2);
  if (!v1)
  {
    sub_26C00909C();
  }

  sub_26BE00258(0, 0xC000000000000000);
}

void static MLS.credentialsFromRatchetTree(_:ciphersuiteID:)(uint64_t a1, unint64_t a2, __int16 *a3)
{
  v6 = 0;
  v137 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v6 = *(a1 + 16);
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    v6 = a1;
LABEL_6:
    sub_26BE00608(a1, a2);
  }

  *&v101 = a1;
  *(&v101 + 1) = a2;
  *&v102 = v6;
  sub_26BE00608(a1, a2);
  sub_26BE00608(a1, a2);
  sub_26BF30764(&v101, &__dst);
  if (v3)
  {
    sub_26BE00258(v101, *(&v101 + 1));
    *&v101 = a1;
    *(&v101 + 1) = a2;
    *&v102 = v6;
    goto LABEL_9;
  }

  if (BYTE8(__dst))
  {
    sub_26BE00258(v101, *(&v101 + 1));
    v9 = a2;
    v10 = a1;
LABEL_13:
    sub_26BE00258(v10, v9);
    *&v101 = a1;
    *(&v101 + 1) = a2;
    *&v102 = v6;
    sub_26BE01600();
    swift_allocError();
    *v11 = 1;
LABEL_14:
    swift_willThrow();
    *&__dst = &type metadata for MLS.RatchetTree;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4C0, &unk_26C011290);
    v12 = sub_26C00A4FC();
    sub_26BE826C4(v12, v13, a1, a2);

    swift_willThrow();
    sub_26BE00258(v101, *(&v101 + 1));
    return;
  }

  v14 = __dst;
  sub_26BE00258(a1, a2);
  if (v14 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v15 = 5;
LABEL_9:
    swift_willThrow();
LABEL_10:
    sub_26BE00258(v101, *(&v101 + 1));
    *&v101 = a1;
    *(&v101 + 1) = a2;
    *&v102 = v6;
    goto LABEL_14;
  }

  v16 = sub_26BF2A44C(v14);
  if (v17 >> 60 == 15)
  {
    v9 = *(&v101 + 1);
    v10 = v101;
    goto LABEL_13;
  }

  *&v92 = v16;
  *(&v92 + 1) = v17;
  v19 = MEMORY[0x277D84F90];
  *&v93 = v18;
  while (1)
  {
    v20 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v20 == 2)
      {
        v21 = *(v16 + 24);
      }

      else
      {
        v21 = 0;
      }
    }

    else if (v20)
    {
      v21 = v16 >> 32;
    }

    else
    {
      v21 = BYTE6(v17);
    }

    v22 = __OFSUB__(v21, v18);
    v23 = v21 - v18;
    if (v22)
    {
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    if (v23 < 1)
    {
      break;
    }

    v24 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_93;
    }

    if (v20 <= 1)
    {
      if (v20)
      {
        v25 = v16 >> 32;
      }

      else
      {
        v25 = BYTE6(v17);
      }

LABEL_36:
      if (v25 < v24)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    }

    if (v20 == 2)
    {
      v25 = *(v16 + 24);
      goto LABEL_36;
    }

    if (v24 > 0)
    {
LABEL_49:
      sub_26BE01600();
      swift_allocError();
      *v36 = 1;
LABEL_88:
      swift_willThrow();

      sub_26BE00258(v92, *(&v92 + 1));
      goto LABEL_10;
    }

LABEL_39:
    *&v119 = v16;
    *(&v119 + 1) = v17;
    if (v24 < v18)
    {
      goto LABEL_94;
    }

    *&v110 = v18;
    *(&v110 + 1) = v18 + 1;
    sub_26BE00608(v16, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    sub_26BE016A8();
    sub_26BE016FC();
    sub_26C008E1C();
    sub_26BE00258(v119, *(&v119 + 1));
    *&v93 = v24;
    sub_26BE2E2B8(&v119);
    v134 = v125;
    v135 = v126;
    v136 = v127;
    v130 = v121;
    v131 = v122;
    v132 = v123;
    v133 = v124;
    __dst = v119;
    v129 = v120;
    sub_26BECBB94(&v119, &v110);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_26BEEB900(0, v19[2] + 1, 1, v19);
    }

    v27 = v19[2];
    v26 = v19[3];
    if (v27 >= v26 >> 1)
    {
      v19 = sub_26BEEB900((v26 > 1), v27 + 1, 1, v19);
    }

    v116 = v134;
    v117 = v135;
    v118 = v136;
    v112 = v130;
    v113 = v131;
    v114 = v132;
    v115 = v133;
    v110 = __dst;
    v111 = v129;
    sub_26BE7DCC0(&v110);
    v19[2] = v27 + 1;
    v28 = &v19[17 * v27];
    *(v28 + 2) = v119;
    v29 = v123;
    v31 = v120;
    v30 = v121;
    *(v28 + 5) = v122;
    *(v28 + 6) = v29;
    *(v28 + 3) = v31;
    *(v28 + 4) = v30;
    v33 = v125;
    v32 = v126;
    v34 = v124;
    v28[20] = v127;
    *(v28 + 8) = v33;
    *(v28 + 9) = v32;
    *(v28 + 7) = v34;
    v17 = *(&v92 + 1);
    v16 = v92;
    v18 = v93;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v35 = *(v16 + 24);
    }

    else
    {
      v35 = 0;
    }
  }

  else if (v20)
  {
    v35 = v16 >> 32;
  }

  else
  {
    v35 = BYTE6(v17);
  }

  if (__OFSUB__(v35, v18))
  {
    __break(1u);
LABEL_101:
    __break(1u);
  }

  if (v35 != v18)
  {
    sub_26BE01654();
    swift_allocError();
    *v71 = 0;
    v71[112] = 1;
    goto LABEL_88;
  }

  sub_26BE00258(v16, v17);
  sub_26BE00258(a1, a2);
  sub_26BE00258(v101, *(&v101 + 1));
  LOWORD(v110) = v7;
  *&v119 = v19;
  MLS.TreeKEMPublicKey.init(ciphersuiteID:ratchetTree:)(&v110, &v119, &__dst);
  v37 = *(&__dst + 1);
  v38 = v129;
  v39 = *(&v129 + 1);
  v40 = MEMORY[0x277D84F90];
  if (v129)
  {
    v41 = 0;
    v42 = v129 - 1;
    v43 = 2 * (v129 - 1);
    v87 = *(&v129 + 1);
    v88 = *(&v129 + 1) + 32;
    v79 = 1 - v129;
    v80 = v129;
    v44 = -v129;
    v85 = v43;
    v86 = v129 - 1;
    v81 = v44;
LABEL_58:
    v45 = 0;
    v46 = v41;
    if (v41 <= v38)
    {
      v47 = v38;
    }

    else
    {
      v47 = v41;
    }

    v48 = v41 - v47;
    v49 = 2 * v41;
    v50 = v44 + v46;
    v90 = v46;
    while (v48 + v45)
    {
      if (v46 + v45 < 0)
      {
        goto LABEL_96;
      }

      if (v42 < 0)
      {
        goto LABEL_97;
      }

      if (v49 > v43)
      {
        goto LABEL_90;
      }

      if (*(v39 + 16) > v49)
      {
        v51 = (v88 + 136 * v49);
        memmove(&__dst, v51, 0x88uLL);
        if (sub_26BE58C10(&__dst) != 1)
        {
          v110 = *v51;
          v52 = v51[1];
          v53 = v51[2];
          v54 = v51[4];
          v113 = v51[3];
          v114 = v54;
          v111 = v52;
          v112 = v53;
          v55 = v51[5];
          v56 = v51[6];
          v57 = v51[7];
          v118 = *(v51 + 16);
          v116 = v56;
          v117 = v57;
          v115 = v55;
          memmove(&v119, v51, 0x88uLL);
          if (sub_26BE58C10(&v119) == 1)
          {
            goto LABEL_90;
          }

          v107 = v125;
          v108 = v126;
          v109 = v127;
          v103 = v121;
          v104 = v122;
          v105 = v123;
          v106 = v124;
          v101 = v119;
          v102 = v120;
          v44 = v81;
          if (sub_26BE592C4(&v101) == 1)
          {
            sub_26BE13A3C(&v101);
            v98 = v125;
            v99 = v126;
            v100 = v127;
            v94 = v121;
            v95 = v122;
            v96 = v123;
            v97 = v124;
            v92 = v119;
            v93 = v120;
            v73 = sub_26BE13A3C(&v92);
            v74 = v73[2];
            v75 = v73[3];
            sub_26BE00608(*v73, v73[1]);
            sub_26BE00608(v74, v75);

            sub_26BE01654();
            swift_allocError();
            *v76 = 28;
            *(v76 + 8) = 0u;
            *(v76 + 24) = 0u;
            *(v76 + 40) = 0u;
            *(v76 + 56) = 0u;
            *(v76 + 72) = 0u;
            *(v76 + 88) = 0u;
            *(v76 + 104) = 0;
            *(v76 + 112) = 23;
            swift_willThrow();
            sub_26BE7DCC0(&v110);
            goto LABEL_91;
          }

          v58 = sub_26BE13A3C(&v101);
          v60 = *(v58 + 32);
          v59 = *(v58 + 40);
          if ((v59 & 0x2000000000000000) != 0)
          {
            v61 = *(v60 + 16);
            if (v61)
            {
              v77 = v37;
              v91 = MEMORY[0x277D84F90];
              sub_26BECBB94(&v110, &v92);
              v78 = v59;
              sub_26BE04890(v60, v59);
              sub_26C00ACBC();
              v62 = 0;
              v63 = (v60 + 40);
              v82 = v61;
              v83 = v60;
              while (1)
              {
                v89 = v62;
                if (v62 >= *(v60 + 16))
                {
                  goto LABEL_101;
                }

                v64 = *(v63 - 1);
                v65 = *v63;
                sub_26BE00608(v64, *v63);
                v66 = sub_26C0090DC();
                v67 = SecCertificateCreateWithData(0, v66);

                if (!v67)
                {
                  break;
                }

                sub_26BE00258(v64, v65);
                sub_26C00AC8C();
                sub_26C00ACCC();
                sub_26C00ACDC();
                sub_26C00AC9C();
                v62 = v89 + 1;
                v63 += 2;
                v60 = v83;
                if (v82 == v89 + 1)
                {
                  sub_26BE0489C(v83, v78);
                  v60 = v91;
                  v37 = v77;
                  v44 = v81;
                  goto LABEL_81;
                }
              }

              __break(1u);
              return;
            }

            sub_26BECBB94(&v110, &v92);
            v60 = MEMORY[0x277D84F90];
LABEL_81:
            v59 = 0x2000000000000000;
          }

          else
          {
            sub_26BECBB94(&v110, &v92);
            sub_26BE04890(v60, v59);
          }

          v84 = v60;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = sub_26BEED8C8(0, *(v40 + 2) + 1, 1, v40);
          }

          v69 = *(v40 + 2);
          v68 = *(v40 + 3);
          if (v69 >= v68 >> 1)
          {
            v40 = sub_26BEED8C8((v68 > 1), v69 + 1, 1, v40);
          }

          v41 = v90 + v45 + 1;
          sub_26BE7DCC0(&v110);
          *(v40 + 2) = v69 + 1;
          v70 = &v40[16 * v69];
          *(v70 + 4) = v84;
          *(v70 + 5) = v59;
          v39 = v87;
          v38 = v80;
          v43 = v85;
          v42 = v86;
          if (v90 + v45 + v79)
          {
            goto LABEL_58;
          }

          goto LABEL_91;
        }

        v39 = v87;
        v43 = v85;
        v42 = v86;
        LODWORD(v46) = v90;
      }

      ++v45;
      v49 += 2;
      if (!(v50 + v45))
      {
        goto LABEL_91;
      }
    }

LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_90:

    sub_26BE01654();
    swift_allocError();
    *v72 = 30;
    *(v72 + 8) = 0u;
    *(v72 + 24) = 0u;
    *(v72 + 40) = 0u;
    *(v72 + 56) = 0u;
    *(v72 + 72) = 0u;
    *(v72 + 88) = 0u;
    *(v72 + 104) = 0;
    *(v72 + 112) = 23;
    swift_willThrow();
  }

LABEL_91:
}

uint64_t sub_26BECB6A4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_26BF25B2C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_26BE00258(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_26BE567B0(v13, a3, a4, &v12);
  v10 = v4;
  sub_26BE00258(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

char *sub_26BECB834(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BFD6374(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26BECB854(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BFD6480(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECB874(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BFD65C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECB894(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BFD66BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECB8B4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BFD66D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26BECB8D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BFD6AF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECB8F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BFD68EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECB914(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BFD6B18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECB934(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BFD6C24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECB954(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BFD67D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECB974(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BFD6D24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26BECB994(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BFD6E30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECB9B4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BFD69F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26BECB9D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BFD6F64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECB9F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BFD7170(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECBA14(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BFD7274(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECBA34(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BFD7378(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECBA54(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BFD74A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECBA74(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BFD75C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECBA94(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BFD76D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECBAB4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BFD7800(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26BECBAD4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BFD7920(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26BECBAF4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BFD7A68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECBB14(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BFD7C40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECBB34(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BFD7D3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECBB54(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BFD7E68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECBB74(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BFD7F90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26BECBB94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4C8, &unk_26C0112A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BECBC04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 40) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 40) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26BECBC58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *(result + 40) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_26BECBCC4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_26C00B05C();
  v3 = (v2 >> 60) & 3;
  if (!v3)
  {
    MEMORY[0x26D699B20](0);
LABEL_6:
    sub_26C00911C();
    return sub_26C00B0CC();
  }

  if (v3 != 1)
  {
    MEMORY[0x26D699B20](2);
    sub_26C00B07C();
    goto LABEL_6;
  }

  MEMORY[0x26D699B20](1);
  sub_26C00B07C();
  sub_26C00911C();
  MEMORY[0x26D699B60](v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BECBD98(uint64_t a1)
{
  v2 = (*(v1 + 16) >> 60) & 3;
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = *(v1 + 24);
      MEMORY[0x26D699B20](1);
      sub_26C00B07C();
      sub_26C00911C();
      return MEMORY[0x26D699B60](v3);
    }

    MEMORY[0x26D699B20](2);
    sub_26C00B07C();
  }

  else
  {
    MEMORY[0x26D699B20](0);
  }

  return sub_26C00911C();
}

uint64_t sub_26BECBE70(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  sub_26C00B05C();
  v4 = (v3 >> 60) & 3;
  if (!v4)
  {
    MEMORY[0x26D699B20](0);
LABEL_6:
    sub_26C00911C();
    return sub_26C00B0CC();
  }

  if (v4 != 1)
  {
    MEMORY[0x26D699B20](2);
    sub_26C00B07C();
    goto LABEL_6;
  }

  MEMORY[0x26D699B20](1);
  sub_26C00B07C();
  sub_26C00911C();
  MEMORY[0x26D699B60](v2);
  return sub_26C00B0CC();
}

uint64_t sub_26BECBF5C()
{
  sub_26C00B05C();
  v1 = (*(v0 + 16) >> 60) & 3;
  if (!v1)
  {
    MEMORY[0x26D699B20](0);
LABEL_6:
    sub_26C00911C();
    goto LABEL_7;
  }

  if (v1 != 1)
  {
    MEMORY[0x26D699B20](2);
    sub_26C00B07C();
    goto LABEL_6;
  }

  v2 = *(v0 + 24);
  MEMORY[0x26D699B20](1);
  sub_26C00B07C();
  sub_26C00911C();
  MEMORY[0x26D699B60](v2);
LABEL_7:
  sub_26C00911C();
  return sub_26C00B0CC();
}

uint64_t sub_26BECC050(uint64_t a1)
{
  v2 = (*(v1 + 16) >> 60) & 3;
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = *(v1 + 24);
      MEMORY[0x26D699B20](1);
      sub_26C00B07C();
      sub_26C00911C();
      MEMORY[0x26D699B60](v3);
      goto LABEL_7;
    }

    MEMORY[0x26D699B20](2);
    sub_26C00B07C();
  }

  else
  {
    MEMORY[0x26D699B20](0);
  }

  sub_26C00911C();
LABEL_7:

  return sub_26C00911C();
}

uint64_t sub_26BECC134(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  sub_26C00B05C();
  v4 = (v3 >> 60) & 3;
  if (!v4)
  {
    MEMORY[0x26D699B20](0);
LABEL_6:
    sub_26C00911C();
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    MEMORY[0x26D699B20](2);
    sub_26C00B07C();
    goto LABEL_6;
  }

  MEMORY[0x26D699B20](1);
  sub_26C00B07C();
  sub_26C00911C();
  MEMORY[0x26D699B60](v2);
LABEL_7:
  sub_26C00911C();
  return sub_26C00B0CC();
}

BOOL sub_26BECC220(unint64_t *a1, uint64_t *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a2[4];
  v5 = a2[5];
  if (!sub_26BECC860(*a1, a1[1], a1[2], a1[3], *a2, a2[1], a2[2], a2[3]))
  {
    return 0;
  }

  return sub_26BE02DEC(v2, v3, v4, v5);
}

unint64_t sub_26BECC2A4()
{
  result = qword_28045EE58;
  if (!qword_28045EE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EE58);
  }

  return result;
}

unint64_t sub_26BECC2F8(__int128 *a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a1[1];
  v41 = *a1;
  v42 = v4;
  v5 = (v4 >> 60) & 3;
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = 2;
    }

    else
    {
      v6 = v41;
    }
  }

  else
  {
    v6 = 1;
  }

  v34 = v6;
  v7 = MEMORY[0x277D838B0];
  v8 = MEMORY[0x277CC9C18];
  v39 = MEMORY[0x277D838B0];
  v40 = MEMORY[0x277CC9C18];
  v37 = &v34;
  v38 = &v35;
  __swift_project_boxed_opaque_existential_1(&v37, MEMORY[0x277D838B0]);
  sub_26BECC978(&v41, &v35);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v37);
  v9 = *(&v41 + 1);
  v10 = v41;
  v11 = v42;
  v12 = (v42 >> 60) & 3;
  if (!v12)
  {
    v14 = *(&v41 + 1) >> 62;
    if ((*(&v41 + 1) >> 62) <= 1)
    {
      if (!v14)
      {
        v7 = BYTE14(v41);
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    goto LABEL_21;
  }

  if (v12 == 1)
  {
    v2 = *(&v42 + 1);
    LOBYTE(v35) = v41;
    v39 = v7;
    v40 = v8;
    v37 = &v35;
    v38 = (&v35 + 1);
    __swift_project_boxed_opaque_existential_1(&v37, v7);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v37);
    v13 = v11 >> 62;
    if ((v11 >> 62) <= 1)
    {
      if (!v13)
      {
        v10 = BYTE6(v11);
        goto LABEL_28;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v9 = sub_26BE11228(*(&v41 + 1), v42 & 0xCFFFFFFFFFFFFFFFLL);
    sub_26BECC9B0(&v41);
    v10 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      goto LABEL_41;
    }

    __break(1u);
  }

  if (v13 != 2)
  {
    v10 = 0;
    goto LABEL_28;
  }

  v15 = *(v9 + 16);
  v14 = *(v9 + 24);
  v10 = v14 - v15;
  if (__OFSUB__(v14, v15))
  {
    __break(1u);
LABEL_21:
    if (v14 != 2)
    {
      v7 = 0;
      goto LABEL_37;
    }

    v17 = *(v10 + 16);
    v16 = *(v10 + 24);
    v7 = v16 - v17;
    if (!__OFSUB__(v16, v17))
    {
LABEL_37:
      v22 = sub_26BF30414(v7);
      if (!v1)
      {
        v24 = v22;
        sub_26BE11228(v10, v9);
        sub_26BECC9B0(&v41);
        v25 = v24 + v7;
        if (__OFADD__(v24, v7))
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v10 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        goto LABEL_41;
      }

      return sub_26BECC9B0(&v41);
    }

    __break(1u);
LABEL_25:
    if (__OFSUB__(HIDWORD(v9), v9))
    {
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
    }

    v10 = HIDWORD(v9) - v9;
  }

LABEL_28:
  v18 = sub_26BF30414(v10);
  if (v1)
  {
    return sub_26BECC9B0(&v41);
  }

  v19 = v11 & 0xCFFFFFFFFFFFFFFFLL;
  v20 = v18;
  sub_26BE11228(v9, v19);
  v21 = v20 + v10;
  if (__OFADD__(v20, v10))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v9 = v21 + 2;
  if (__OFADD__(v21, 2))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v35 = bswap64(v2);
  v39 = v7;
  v40 = v8;
  v37 = &v35;
  v38 = &v36;
  __swift_project_boxed_opaque_existential_1(&v37, v7);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v37);
  sub_26BECC9B0(&v41);
  v10 = v9 + 8;
  if (__OFADD__(v9, 8))
  {
    __break(1u);
LABEL_34:
    if (__OFSUB__(HIDWORD(v10), v10))
    {
      goto LABEL_63;
    }

    v7 = HIDWORD(v10) - v10;
    goto LABEL_37;
  }

LABEL_41:
  v27 = *(a1 + 4);
  v26 = *(a1 + 5);
  v28 = v26 >> 62;
  if ((v26 >> 62) <= 1)
  {
    if (!v28)
    {
      v29 = BYTE6(v26);
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  if (v28 != 2)
  {
    v29 = 0;
    goto LABEL_51;
  }

  v31 = *(v27 + 16);
  v30 = *(v27 + 24);
  v29 = v30 - v31;
  if (__OFSUB__(v30, v31))
  {
    __break(1u);
LABEL_48:
    if (__OFSUB__(HIDWORD(v27), v27))
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v29 = HIDWORD(v27) - v27;
  }

LABEL_51:
  result = sub_26BF30414(v29);
  if (v1)
  {
    return result;
  }

  v32 = result;
  sub_26BE11228(v27, v26);
  v33 = v32 + v29;
  if (__OFADD__(v32, v29))
  {
    __break(1u);
    goto LABEL_56;
  }

  result = v10 + v33;
  if (__OFADD__(v10, v33))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  return result;
}

void sub_26BECC664(uint64_t *a1@<X8>)
{
  v5 = sub_26BEE62D4();
  if ((v5 & 0x100) != 0)
  {
LABEL_8:
    sub_26BE01600();
    swift_allocError();
    v16 = 1;
LABEL_9:
    *v15 = v16;
    swift_willThrow();
    return;
  }

  LOBYTE(v6) = v5;
  if (v5 == 1)
  {
    v17 = sub_26BF2F7B0();
    if (v3)
    {
      return;
    }

    v6 = v17;
    v10 = v18;
    v19 = 0;
    v20 = 0;
  }

  else
  {
    if (v5 == 2)
    {
      v7 = sub_26BEE62D4();
      if ((v7 & 0x100) == 0)
      {
        LOBYTE(v6) = v7;
        v8 = sub_26BF2F7B0();
        if (v3)
        {
          return;
        }

        v10 = v8;
        v11 = v9;
        v12 = sub_26BEEE594();
        if (v13)
        {
          sub_26BE01600();
          swift_allocError();
          *v14 = 1;
          swift_willThrow();
          sub_26BE00258(v10, v11);
          return;
        }

        v20 = v12;
        v6 = v6;
        v19 = v11 | 0x1000000000000000;
        goto LABEL_23;
      }

      goto LABEL_8;
    }

    v21 = *v2;
    v22 = v2[1];
    v23 = v2[2];
    v24 = v22 >> 62;
    if ((v22 >> 62) > 1)
    {
      if (v24 == 2)
      {
        v26 = *(v21 + 24);
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v25 = BYTE6(v22);
      v26 = v21 >> 32;
      if (!v24)
      {
        v26 = v25;
      }
    }

    if (__OFSUB__(v26, v23))
    {
      __break(1u);
      return;
    }

    v27 = sub_26BF2A51C(v26 - v23);
    if (!v27)
    {
      sub_26BE01600();
      swift_allocError();
      v16 = 5;
      goto LABEL_9;
    }

    v10 = sub_26BE12418(v27);
    v29 = v28;

    v20 = 0;
    v6 = v6;
    v19 = v29 | 0x2000000000000000;
  }

LABEL_23:
  v30 = sub_26BF2F7B0();
  if (v3)
  {
    sub_26BECC944(v6, v10, v19);
  }

  else
  {
    *a1 = v6;
    a1[1] = v10;
    a1[2] = v19;
    a1[3] = v20;
    a1[4] = v30;
    a1[5] = v31;
  }
}

BOOL sub_26BECC860(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  v10 = a7 & 0x3000000000000000;
  v11 = (a3 >> 60) & 3;
  if (!v11)
  {
    if (v10)
    {
      return 0;
    }

    v14 = a5;
    v13 = a6;

    return sub_26BE02DEC(a1, a2, v14, v13);
  }

  if (v11 != 1)
  {
    result = 0;
    if (v10 != 0x2000000000000000 || v9 != a5)
    {
      return result;
    }

    a1 = a2;
    a2 = a3 & 0xCFFFFFFFFFFFFFFFLL;
    v13 = a7 & 0xCFFFFFFFFFFFFFFFLL;
    v14 = a6;

    return sub_26BE02DEC(a1, a2, v14, v13);
  }

  result = 0;
  if (v10 == 0x1000000000000000 && v9 == a5)
  {
    return sub_26BE02DEC(a2, a3 & 0xCFFFFFFFFFFFFFFFLL, a6, a7 & 0xCFFFFFFFFFFFFFFFLL) & (a4 == a8);
  }

  return result;
}

void sub_26BECC944(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = (a3 >> 60) & 3;
  if (((a3 >> 60) & 3) > 1)
  {
    if (v3 != 2)
    {
      return;
    }
  }

  else if (!v3)
  {
    sub_26BE00258(a1, a2);
    return;
  }

  sub_26BE00258(a2, a3 & 0xCFFFFFFFFFFFFFFFLL);
}

uint64_t sub_26BECC9E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 32))
  {
    return (*a1 + 2);
  }

  if ((~*(a1 + 16) & 0x3000000000000000) != 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_26BECCA28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = xmmword_26C016500;
    }
  }

  return result;
}

unint64_t sub_26BECCAAC()
{
  result = qword_28045EE60;
  if (!qword_28045EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EE60);
  }

  return result;
}

uint64_t sub_26BECCB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v146 = a6;
  v147 = a8;
  v120 = a5;
  v153 = a4;
  *&v148 = a2;
  v133 = a1;
  v118 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE68, &unk_26C016A90);
  MEMORY[0x28223BE20](v13 - 8);
  v117 = &v108 - v14;
  v112 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  MEMORY[0x28223BE20](v112);
  v115 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_26C00959C();
  v114 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v119 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_26C00978C();
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v124 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EEF0, &unk_26C0212A0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v130 = (&v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v19);
  v129 = &v108 - v22;
  MEMORY[0x28223BE20](v21);
  v131 = &v108 - v23;
  v24 = _s25RelativeDistinguishedNameVMa(0);
  v132 = *(v24 - 8);
  MEMORY[0x28223BE20](v24 - 8);
  v135 = (&v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v127 = _s9AttributeVMa(0);
  v26 = MEMORY[0x28223BE20](v127);
  v128 = &v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v134 = &v108 - v28;
  v123 = _s21RCSTBSParticipantInfoVMa(0);
  v113 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v125 = &v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for MLS.Validity(0);
  v30 = MEMORY[0x28223BE20](v126);
  v136 = &v108 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v137 = &v108 - v32;
  v33 = sub_26C00921C();
  v140 = *(v33 - 8);
  v141 = v33;
  v34 = MEMORY[0x28223BE20](v33);
  v139 = &v108 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v142 = &v108 - v36;
  v37 = type metadata accessor for MLS.Time(0);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v138 = &v108 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v143 = &v108 - v40;
  v41 = type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  v111 = *(v41 - 8);
  v42 = MEMORY[0x28223BE20](v41);
  v44 = &v108 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v46 = &v108 - v45;
  v47 = *(a10 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(&v150);
  v145 = a3;
  v48 = a7;
  v47(a7, a10);
  v49 = v46;
  v50 = v144;
  sub_26BE106CC(&v150, v46);
  if (v50)
  {

    (*(*(v147 - 8) + 8))(v153);
    return (*(*(a7 - 8) + 8))(v145, a7);
  }

  else
  {
    v52 = v139;
    v53 = v140;
    v54 = v141;
    v110 = v44;
    v109 = v41;
    v144 = a10;
    v55 = v142;
    sub_26C0091CC();
    v56 = v143;
    static MLS.Time.makeTime(from:)(v143);
    v108 = v49;
    v57 = *(v53 + 8);
    v57(v55, v54);
    sub_26C0091CC();
    v58 = v138;
    static MLS.Time.makeTime(from:)(v138);
    v140 = v48;
    v142 = 0;
    v57(v52, v54);
    v59 = v137;
    sub_26BED38EC(v56, v137, type metadata accessor for MLS.Time);
    sub_26BED38EC(v58, v59 + *(v126 + 20), type metadata accessor for MLS.Time);
    v60 = v147;
    AssociatedTypeWitness = v147;
    AssociatedConformanceWitness = a11;
    v61 = __swift_allocate_boxed_opaque_existential_1(&v150);
    v141 = *(v60 - 8);
    (*(v141 + 16))(v61, v153, v60);
    sub_26BED38EC(v59, v136, type metadata accessor for MLS.Validity);
    if (qword_28045E118 != -1)
    {
      swift_once();
    }

    v62 = sub_26C00947C();
    v63 = __swift_project_value_buffer(v62, qword_2804790F8);
    v64 = v134;
    (*(*(v62 - 8) + 16))(v134, v63, v62);
    v65 = (v64 + *(v127 + 20));
    v66 = v148;
    *v65 = v133;
    v65[1] = v66;
    _s9AttributeV5ValueV7StorageOMa(0);
    swift_storeEnumTagMultiPayload();
    v67 = v128;
    sub_26BED38EC(v64, v128, _s9AttributeVMa);
    v68 = v131;
    sub_26BED38EC(v67, v131, _s9AttributeVMa);
    v69 = v129;
    sub_26BE2E1F0(v68, v129, &qword_28045EEF0, &unk_26C0212A0);
    v70 = v130;
    sub_26BE2E1F0(v69, v130, &qword_28045EEF0, &unk_26C0212A0);
    v71 = v135;
    *v135 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
    swift_storeEnumTagMultiPayload();
    sub_26BFD3478(v70);
    sub_26BE2E258(v70, &qword_28045EEF0, &unk_26C0212A0);
    sub_26BE2E258(v69, &qword_28045EEF0, &unk_26C0212A0);
    sub_26BFD99CC(v71);
    v72 = v71;
    sub_26BE2E258(v68, &qword_28045EEF0, &unk_26C0212A0);
    sub_26BED399C(v67, _s9AttributeVMa);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E510, &qword_26C00E4A0);
    v73 = (*(v132 + 80) + 32) & ~*(v132 + 80);
    v74 = swift_allocObject();
    v148 = xmmword_26C011280;
    *(v74 + 16) = xmmword_26C011280;
    sub_26BED38EC(v72, v74 + v73, _s25RelativeDistinguishedNameVMa);
    sub_26BE038A8(&v150, &v149);
    v75 = v142;
    sub_26BE106CC(&v149, v110);
    v76 = v146;
    if (v75)
    {

      (*(v141 + 8))(v153, v60);
      (*(*(v140 - 8) + 8))(v145);
      sub_26BED399C(v72, _s25RelativeDistinguishedNameVMa);
      sub_26BED399C(v64, _s9AttributeVMa);
      sub_26BED399C(v136, type metadata accessor for MLS.Validity);
      sub_26BED399C(v137, type metadata accessor for MLS.Validity);
      sub_26BED399C(v138, type metadata accessor for MLS.Time);
      sub_26BED399C(v143, type metadata accessor for MLS.Time);
      sub_26BED399C(v108, type metadata accessor for MLS.SubjectPublicKeyInfo);
      return __swift_destroy_boxed_opaque_existential_1(&v150);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E540, &qword_26C016B90);
      v77 = *(_s11GeneralNameOMa(0) - 8);
      v78 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v79 = swift_allocObject();
      *(v79 + 16) = v148;
      v80 = (v79 + v78);
      *v80 = v120;
      v80[1] = v76;
      swift_storeEnumTagMultiPayload();
      sub_26BED399C(v72, _s25RelativeDistinguishedNameVMa);
      sub_26BED399C(v64, _s9AttributeVMa);
      __swift_destroy_boxed_opaque_existential_1(&v150);
      v81 = v123;
      v82 = v125;
      sub_26BED39FC(v110, v125 + *(v123 + 28), type metadata accessor for MLS.SubjectPublicKeyInfo);
      *v82 = v74;
      *(v82 + 8) = 1;
      sub_26BED39FC(v136, v82 + *(v81 + 24), type metadata accessor for MLS.Validity);
      *(v82 + *(v81 + 32)) = v79;
      sub_26C00977C();
      sub_26BED3954(&qword_28045EEF8, _s21RCSTBSParticipantInfoVMa, &unk_26C014038);
      sub_26C00976C();
      v83 = v140;
      v84 = sub_26C00971C();
      v85 = sub_26BE12418(v84);
      v87 = v86;

      v89 = v144;
      v88 = v145;
      v90 = (*(v144 + 32))(v85, v87, v83, v144);
      v142 = 0;
      v91 = v90;
      v93 = v92;
      sub_26BE00258(v85, v87);
      sub_26BE00608(v91, v93);
      sub_26BF2E8B4(v91, v93);
      sub_26C00957C();
      (*(*(v89 + 8) + 24))(&v150, v83);
      LOBYTE(v82) = v150;

      if (v82)
      {
        v94 = v118;
        v95 = v117;
        v96 = v153;
        v97 = v115;
        v98 = v109;
        if (qword_28045E018 != -1)
        {
          swift_once();
        }

        v99 = qword_28045FFC0;
      }

      else
      {
        v94 = v118;
        v95 = v117;
        v96 = v153;
        v97 = v115;
        v98 = v109;
        if (qword_28045E010 != -1)
        {
          swift_once();
        }

        v99 = qword_28045FFA8;
      }

      v100 = __swift_project_value_buffer(v112, v99);
      sub_26BED38EC(v100, v97, type metadata accessor for MLS.AlgorithmIdentifier);
      sub_26BE00258(v91, v93);
      (*(v141 + 8))(v96, v147);
      (*(*(v83 - 8) + 8))(v88, v83);
      (*(v121 + 8))(v124, v122);
      sub_26BED399C(v138, type metadata accessor for MLS.Time);
      sub_26BED399C(v143, type metadata accessor for MLS.Time);
      v101 = _s18RCSParticipantInfoVMa(0);
      sub_26BED39FC(v137, &v94[v101[5]], type metadata accessor for MLS.Validity);
      sub_26BED39FC(v108, v95, type metadata accessor for MLS.SubjectPublicKeyInfo);
      v102 = *(v111 + 56);
      v102(v95, 0, 1, v98);
      v103 = v98;
      v104 = v101[8];
      v102(&v94[v104], 1, 1, v103);
      v105 = v101[10];
      v153 = v101[9];
      v106 = *(v113 + 56);
      v107 = v123;
      v106(&v94[v105], 1, 1, v123);
      *v94 = 1;
      sub_26BED39FC(v97, &v94[v101[6]], type metadata accessor for MLS.AlgorithmIdentifier);
      (*(v114 + 32))(&v94[v101[7]], v119, v116);
      sub_26BED3050(v95, &v94[v104]);
      *&v94[v153] = 0;
      sub_26BE2E258(&v94[v105], &qword_28045E680, &unk_26C00ECF8);
      sub_26BED39FC(v125, &v94[v105], _s21RCSTBSParticipantInfoVMa);
      return (v106)(&v94[v105], 0, 1, v107);
    }
  }
}

uint64_t sub_26BECE0F8()
{
  v0 = sub_26C009A5C();
  __swift_allocate_value_buffer(v0, qword_280478F20);
  __swift_project_value_buffer(v0, qword_280478F20);
  return sub_26C009A4C();
}

uint64_t MLS.SubjectPublicKeyInfo.description.getter()
{
  sub_26C00AC1C();
  MEMORY[0x26D699090](0xD000000000000020, 0x800000026C02C330);
  v0 = MLS.AlgorithmIdentifier.description.getter();
  MEMORY[0x26D699090](v0);

  MEMORY[0x26D699090](0x63696C627570202CLL, 0xED0000203A79654BLL);
  type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  sub_26C00959C();
  sub_26C00AD4C();
  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_26BECE270()
{
  v1 = v0;
  v2 = 7104878;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE68, &unk_26C016A90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_26C00AC1C();
  v22 = v19;
  v23 = v20;
  MEMORY[0x26D699090](0xD00000000000001DLL, 0x800000026C02C360);
  v19 = *v0;
  v6 = sub_26C00AEFC();
  MEMORY[0x26D699090](v6);

  MEMORY[0x26D699090](0x6964696C6176202CLL, 0xEC000000203A7974);
  v7 = _s18RCSParticipantInfoVMa(0);
  type metadata accessor for MLS.Validity(0);
  sub_26C00AD4C();
  MEMORY[0x26D699090](0xD000000000000016, 0x800000026C02C380);
  v8 = MLS.AlgorithmIdentifier.description.getter();
  MEMORY[0x26D699090](v8);

  MEMORY[0x26D699090](0x74616E676973202CLL, 0xED0000203A657275);
  sub_26C00959C();
  sub_26C00AD4C();
  MEMORY[0x26D699090](0x63696C627570202CLL, 0xED0000203A79654BLL);
  sub_26BE2E1F0(v0 + *(v7 + 32), v5, &qword_28045EE68, &unk_26C016A90);
  v9 = type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  if ((*(*(v9 - 8) + 48))(v5, 1, v9) == 1)
  {
    sub_26BE2E258(v5, &qword_28045EE68, &unk_26C016A90);
    v10 = 0xE300000000000000;
    v11 = 7104878;
  }

  else
  {
    v12 = MLS.SubjectPublicKeyInfo.description.getter();
    v10 = v13;
    sub_26BED399C(v5, type metadata accessor for MLS.SubjectPublicKeyInfo);
    v11 = v12;
  }

  MEMORY[0x26D699090](v11, v10);

  MEMORY[0x26D699090](0xD000000000000017, 0x800000026C02C3A0);
  v14 = *(v1 + *(v7 + 36));
  if (v14)
  {
    v19 = v14;
    v20 = sub_26BFB29AC;
    v21 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EEA0, &unk_26C022440);
    sub_26BED2530();
    v2 = sub_26C00A3EC();
    v16 = v15;
  }

  else
  {
    v16 = 0xE300000000000000;
  }

  MEMORY[0x26D699090](v2, v16);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return v22;
}

void *sub_26BECE624@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v48 = a2;
  v53 = sub_26C00930C();
  v50 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE68, &unk_26C016A90);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v49 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v61 = &v43 - v6;
  v60 = sub_26C00959C();
  v54 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v55 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  MEMORY[0x28223BE20](v56);
  v57 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for MLS.Validity(0);
  MEMORY[0x28223BE20](v59);
  v58 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26C00934C();
  v51 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v43 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v43 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v43 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v23);
  sub_26C0096AC();
  v24 = v62;
  result = sub_26C0096BC();
  if (!v24)
  {
    v62 = v22;
    v46 = v16;
    v47 = v19;
    v44 = v13;
    v45 = v10;
    v27 = v60;
    v26 = v61;
    v28 = v64;
    _s8SwiftMLS0B0O8ValidityV17defaultIdentifier0A12ASN1Internal0fE0VvgZ_0();
    sub_26BED3954(&qword_28045EDD8, type metadata accessor for MLS.Validity, &protocol conformance descriptor for MLS.Validity);
    v29 = v58;
    sub_26C0096BC();
    v59 = v28;
    _s8SwiftMLS0B0O8ValidityV17defaultIdentifier0A12ASN1Internal0fE0VvgZ_0();
    sub_26BED3954(&qword_28045EEC0, type metadata accessor for MLS.AlgorithmIdentifier, &protocol conformance descriptor for MLS.AlgorithmIdentifier);
    sub_26C0096BC();
    sub_26C0096AC();
    sub_26C0096BC();
    v30 = v29;
    v31 = type metadata accessor for MLS.SubjectPublicKeyInfo(0);
    _s8SwiftMLS0B0O8ValidityV17defaultIdentifier0A12ASN1Internal0fE0VvgZ_0();
    sub_26BED3954(&qword_28045E678, type metadata accessor for MLS.SubjectPublicKeyInfo, &protocol conformance descriptor for MLS.SubjectPublicKeyInfo);
    sub_26C0096BC();
    v62 = *(*(v31 - 8) + 56);
    v62(v26, 0, 1, v31);
    (*(v50 + 104))(v52, *MEMORY[0x277D6A898], v53);
    v32 = v44;
    sub_26C0092EC();
    sub_26BED2624();
    sub_26C0097BC();
    v63 = 0;
    v33 = v54;
    (*(v51 + 8))(v32, v45);
    v34 = v64;
    v35 = v26;
    v36 = _s18RCSParticipantInfoVMa(0);
    v37 = v48;
    sub_26BED39FC(v30, v48 + v36[5], type metadata accessor for MLS.Validity);
    sub_26BED39FC(v57, v37 + v36[6], type metadata accessor for MLS.AlgorithmIdentifier);
    (*(v33 + 32))(v37 + v36[7], v55, v27);
    v38 = v49;
    sub_26BED2FE0(v35, v49);
    v39 = v36[8];
    v62(v37 + v39, 1, 1, v31);
    v40 = v36[9];
    v41 = v36[10];
    v42 = _s21RCSTBSParticipantInfoVMa(0);
    (*(*(v42 - 8) + 56))(v37 + v41, 1, 1, v42);
    *v37 = v59;
    result = sub_26BED3050(v38, v37 + v39);
    *(v37 + v40) = v34;
  }

  return result;
}

uint64_t sub_26BECEE70(uint64_t a1, void *a2)
{
  v3 = sub_26C00930C();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C00934C();
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE68, &unk_26C016A90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - v10;
  v12 = type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a2;
  v35 = *a2;
  v16 = v34;
  result = sub_26C00976C();
  if (!v16)
  {
    v28 = v5;
    v29 = v13;
    v34 = v11;
    v26 = v6;
    v27 = v15;
    v18 = v32;
    v25 = v8;
    v19 = _s18RCSParticipantInfoVMa(0);
    type metadata accessor for MLS.Validity(0);
    sub_26BED3954(&qword_28045EA80, type metadata accessor for MLS.Validity, &protocol conformance descriptor for MLS.Validity);
    v20 = v33;
    sub_26C00976C();
    type metadata accessor for MLS.AlgorithmIdentifier(0);
    sub_26BED3954(&qword_28045EE50, type metadata accessor for MLS.AlgorithmIdentifier, &protocol conformance descriptor for MLS.AlgorithmIdentifier);
    sub_26C00976C();
    sub_26C00959C();
    sub_26C00976C();
    v21 = v34;
    sub_26BE2E1F0(v20 + *(v19 + 32), v34, &qword_28045EE68, &unk_26C016A90);
    if ((*(v29 + 48))(v21, 1, v12) == 1)
    {
      result = sub_26BE2E258(v21, &qword_28045EE68, &unk_26C016A90);
    }

    else
    {
      v22 = v21;
      v23 = v27;
      sub_26BED39FC(v22, v27, type metadata accessor for MLS.SubjectPublicKeyInfo);
      sub_26BED3954(&qword_28045EA88, type metadata accessor for MLS.SubjectPublicKeyInfo, &protocol conformance descriptor for MLS.SubjectPublicKeyInfo);
      sub_26C00976C();
      result = sub_26BED399C(v23, type metadata accessor for MLS.SubjectPublicKeyInfo);
    }

    if (*(v20 + *(v19 + 36)))
    {
      v35 = *(v20 + *(v19 + 36));
      (*(v31 + 104))(v28, *MEMORY[0x277D6A898], v18);

      v24 = v25;
      sub_26C0092EC();
      sub_26BED2624();
      sub_26C00974C();
      (*(v30 + 8))(v24, v26);
    }
  }

  return result;
}

uint64_t sub_26BECF358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 32);
  v13 = type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  (*(*(v13 - 8) + 56))(a4 + v12, 1, 1, v13);
  v14 = *(a3 + 40);
  *(a4 + *(a3 + 36)) = 0;
  v15 = _s21RCSTBSParticipantInfoVMa(0);
  (*(*(v15 - 8) + 56))(a4 + v14, 1, 1, v15);
  sub_26C0097FC();
  v16 = sub_26C00934C();
  (*(*(v16 - 8) + 8))(a2, v16);
  v17 = sub_26C00950C();
  (*(*(v17 - 8) + 8))(a1, v17);
  sub_26BE2E258(a4 + v12, &qword_28045EE68, &unk_26C016A90);
  if (v4)
  {
    return sub_26BE2E258(a4 + v14, &qword_28045E680, &unk_26C00ECF8);
  }

  sub_26BE2E258(a4 + v14, &qword_28045E680, &unk_26C00ECF8);
  return sub_26BED39FC(v10, a4, _s18RCSParticipantInfoVMa);
}

void sub_26BECF754(void *a1)
{
  v2 = sub_26C00934C();
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_28045DF68 != -1)
  {
    swift_once();
  }

  v3 = sub_26C00947C();
  __swift_project_value_buffer(v3, qword_28045E5E0);
  sub_26BED3954(&qword_28045E920, MEMORY[0x277D6A958], MEMORY[0x277D6A970]);
  sub_26C00AEFC();
  v4 = sub_26C00A45C();

  v5 = SecCertificateCopyExtensionValue();
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_26C0090FC();
    }
  }

  type metadata accessor for MLS.IdentityError(0);
  sub_26BED3954(&qword_28045EB48, type metadata accessor for MLS.IdentityError, &protocol conformance descriptor for MLS.IdentityError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_26BE136AC(0, 0xF000000000000000);
}

void *sub_26BECFA10(__SecCertificate *a1)
{
  v2 = sub_26C00934C();
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26C00978C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = SecCertificateCopySubjectSequence();
  if (result)
  {
    v10 = result;
    v11 = sub_26C00910C();
    v13 = v12;

    sub_26BE00608(v11, v13);
    v14 = SecCertificateCopyKey(a1);
    if (!v14)
    {
      type metadata accessor for MLS.IdentityError(0);
      sub_26BED3954(&qword_28045EB48, type metadata accessor for MLS.IdentityError, &protocol conformance descriptor for MLS.IdentityError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_13;
    }

    v28 = v6;
    v15 = v14;
    result = SecKeyCopySubjectPublicKeyInfo();
    if (result)
    {
      v16 = result;
      v32 = sub_26C00910C();
      v34 = v17;

      v18 = sub_26C00A45C();
      v19 = SecCertificateCopyExtensionValue();
      if (v19)
      {
        v20 = v19;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v33 = xmmword_26C00DA60;
          sub_26C0090FC();

          v21 = *(&v33 + 1);
          if (*(&v33 + 1) >> 60 != 15)
          {
            v27 = v33;
            sub_26BE00258(v11, v13);
            sub_26C00977C();
            v22 = _s8SwiftMLS0B0O8ValidityV17defaultIdentifier0A12ASN1Internal0fE0VvgZ_0();
            v26[1] = v26;
            MEMORY[0x28223BE20](v22);
            v26[-8] = v11;
            v26[-7] = v13;
            v23 = v30;
            v24 = v32;
            v26[-6] = v29;
            v26[-5] = v24;
            v25 = v27;
            v26[-4] = v34;
            v26[-3] = v25;
            v29 = v21;
            v26[-2] = v21;
            sub_26C00973C();
            if (v23)
            {
              sub_26BE00258(v11, v13);
              sub_26BE00258(v32, v34);
              sub_26BE136AC(v27, v29);

              (*(v31 + 8))(v4, v2);
            }

            else
            {
              (*(v31 + 8))(v4, v2);
              v31 = sub_26C00971C();
              v2 = sub_26BE12418(v31);

              sub_26BE00258(v11, v13);
              sub_26BE00258(v32, v34);
              sub_26BE136AC(v27, v29);
            }

            (*(v28 + 8))(v8, v5);
            return v2;
          }
        }

        else
        {
        }
      }

      type metadata accessor for MLS.IdentityError(0);
      sub_26BED3954(&qword_28045EB48, type metadata accessor for MLS.IdentityError, &protocol conformance descriptor for MLS.IdentityError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_26BE136AC(0, 0xF000000000000000);

      sub_26BE00258(v32, v34);
LABEL_13:
      sub_26BE00258(v11, v13);
      sub_26BE00258(v11, v13);
      return v2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26BECFEF4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  sub_26BE00608(a2, a3);
  sub_26BF974A8(a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
  sub_26BED3888();
  sub_26C00972C();

  result = sub_26C00976C();
  if (!v8)
  {
    _s18RCSParticipantInfoVMa(0);
    type metadata accessor for MLS.Validity(0);
    sub_26BED3954(&qword_28045EA80, type metadata accessor for MLS.Validity, &protocol conformance descriptor for MLS.Validity);
    sub_26C00976C();
    sub_26BE00608(a5, a6);
    sub_26BF974A8(a5, a6);
    sub_26C00972C();

    sub_26BE00608(a7, a8);
    sub_26BF974A8(a7, a8);
    sub_26C00972C();
  }

  return result;
}

uint64_t sub_26BED00C4(__SecCertificate *a1, uint64_t a2)
{
  v163 = a2;
  v148 = _s9PublicKeyV16BackingPublicKeyOMa(0);
  MEMORY[0x28223BE20](v148);
  v149 = v136 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MLS.Time(0);
  MEMORY[0x28223BE20](v5 - 8);
  v144 = v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  MEMORY[0x28223BE20](v7 - 8);
  v150 = v136 - v8;
  v152 = sub_26C00921C();
  v154 = *(v152 - 8);
  v9 = MEMORY[0x28223BE20](v152);
  v151 = v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v146 = v136 - v12;
  MEMORY[0x28223BE20](v11);
  v147 = v136 - v13;
  v162 = sub_26C00959C();
  v158 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v157 = v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  MEMORY[0x28223BE20](v15 - 8);
  v155 = v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _s18SignatureAlgorithmVMa(0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v156 = v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v159 = v136 - v20;
  v21 = _s9PublicKeyVMa(0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v145 = v136 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v153 = v136 - v25;
  MEMORY[0x28223BE20](v24);
  v160 = v136 - v26;
  v27 = type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  v28 = *(v27 - 8);
  v164 = v27;
  v165 = v28;
  v29 = MEMORY[0x28223BE20](v27);
  v161 = v136 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = v136 - v31;
  v33 = sub_26C00934C();
  MEMORY[0x28223BE20](v33 - 8);
  v35 = v136 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE68, &unk_26C016A90);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v39 = v136 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v37);
  v42 = v136 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v45 = v136 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = v136 - v46;
  v48 = v170;
  v49 = sub_26BECFA10(a1);
  if (v48)
  {
    return 1;
  }

  v136[1] = v35;
  v137 = v42;
  v140 = v39;
  v139 = a1;
  v138 = v32;
  v143 = 0;
  v141 = v49;
  v142 = v50;
  v52 = _s18RCSParticipantInfoVMa(0);
  v53 = v2;
  sub_26BE2E1F0(v2 + *(v52 + 32), v47, &qword_28045EE68, &unk_26C016A90);
  v170 = v47;
  sub_26BE2E1F0(v47, v45, &qword_28045EE68, &unk_26C016A90);
  v54 = v164;
  v55 = *(v165 + 48);
  v56 = (v55)(v45, 1, v164);
  sub_26BE2E258(v45, &qword_28045EE68, &unk_26C016A90);
  if (v56 != 1)
  {
    v139 = v55;
    v66 = v54;
    v67 = v170;
    v68 = v163;
    v69 = v162;
    goto LABEL_9;
  }

  v57 = SecCertificateCopyKey(v139);
  if (!v57)
  {
    type metadata accessor for MLS.IdentityError(0);
    sub_26BED3954(&qword_28045EB48, type metadata accessor for MLS.IdentityError, &protocol conformance descriptor for MLS.IdentityError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_26BE00258(v141, v142);
LABEL_14:
    v75 = v170;
LABEL_15:
    sub_26BE2E258(v75, &qword_28045EE68, &unk_26C016A90);
    return 1;
  }

  v58 = v57;
  v139 = v55;
  v136[0] = v52;
  result = SecKeyCopySubjectPublicKeyInfo();
  if (result)
  {
    v59 = result;
    v60 = sub_26C00910C();
    v62 = v61;

    sub_26BE00608(v60, v62);
    sub_26BF974A8(v60, v62);
    _s8SwiftMLS0B0O8ValidityV17defaultIdentifier0A12ASN1Internal0fE0VvgZ_0();
    sub_26BED3954(&qword_28045E678, type metadata accessor for MLS.SubjectPublicKeyInfo, &protocol conformance descriptor for MLS.SubjectPublicKeyInfo);
    v63 = v137;
    v64 = v143;
    sub_26C0096CC();
    v65 = v170;
    sub_26BE2E258(v170, &qword_28045EE68, &unk_26C016A90);

    sub_26BE00258(v60, v62);
    v143 = v64;
    if (v64)
    {
      sub_26BE00258(v141, v142);
      return 1;
    }

    v2 = v53;
    v66 = v54;
    (*(v165 + 56))(v63, 0, 1, v54);
    sub_26BED2FE0(v63, v65);
    v67 = v65;
    v68 = v163;
    v69 = v162;
    v52 = v136[0];
LABEL_9:
    v70 = v140;
    sub_26BE2E1F0(v67, v140, &qword_28045EE68, &unk_26C016A90);
    v71 = (v139)(v70, 1, v66);
    v72 = v161;
    if (v71 == 1)
    {
      sub_26BE2E258(v70, &qword_28045EE68, &unk_26C016A90);
      type metadata accessor for MLS.IdentityError(0);
      sub_26BED3954(&qword_28045EB48, type metadata accessor for MLS.IdentityError, &protocol conformance descriptor for MLS.IdentityError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_26BE00258(v141, v142);
      sub_26BE2E258(v67, &qword_28045EE68, &unk_26C016A90);
      return 1;
    }

    v136[0] = v52;
    v73 = v138;
    sub_26BED39FC(v70, v138, type metadata accessor for MLS.SubjectPublicKeyInfo);
    sub_26BED38EC(v73, v72, type metadata accessor for MLS.SubjectPublicKeyInfo);
    v74 = v143;
    sub_26BFCD8D0(v72, v160);
    if (v74)
    {
      sub_26BE00258(v141, v142);
      sub_26BED399C(v73, type metadata accessor for MLS.SubjectPublicKeyInfo);
      sub_26BE2E258(v170, &qword_28045EE68, &unk_26C016A90);
      return 1;
    }

    v76 = v136[0];
    v77 = v155;
    sub_26BED38EC(v2 + *(v136[0] + 24), v155, type metadata accessor for MLS.AlgorithmIdentifier);
    v78 = v159;
    sub_26BFD001C(v77, v159);
    v79 = v156;
    sub_26BED38EC(v78, v156, _s18SignatureAlgorithmVMa);
    v80 = v2 + *(v76 + 28);
    v81 = v157;
    (*(v158 + 16))(v157, v80, v69);
    sub_26BFE6910(v79, v81, v166);
    v165 = v2;
    v168[2] = v166[2];
    v168[3] = v166[3];
    v169 = v167;
    v168[0] = v166[0];
    v168[1] = v166[1];
    v82 = sub_26BED16C4(v168, v141, v142, v78);
    v83 = v170;
    v84 = v78;
    if (v82)
    {
      v85 = v68;
      v86 = v150;
      sub_26BE2E1F0(v85, v150, &qword_28045E4A8, &unk_26C00ECB0);
      v87 = v154;
      v88 = v152;
      if ((*(v154 + 48))(v86, 1, v152) == 1)
      {
        sub_26BE2E258(v86, &qword_28045E4A8, &unk_26C00ECB0);
      }

      else
      {
        v113 = v147;
        (*(v87 + 32))(v147, v86, v88);
        v114 = v165 + *(v136[0] + 20);
        v115 = v144;
        sub_26BED38EC(v114, v144, type metadata accessor for MLS.Time);
        v116 = v146;
        Date.init(_:)(v115, v146);
        v117 = type metadata accessor for MLS.Validity(0);
        sub_26BED38EC(v114 + *(v117 + 20), v115, type metadata accessor for MLS.Time);
        Date.init(_:)(v115, v151);
        sub_26BED3954(&qword_28045EED0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        if ((sub_26C00A40C() & 1) == 0 || (sub_26C00A3FC() & 1) == 0)
        {
          v165 = type metadata accessor for MLS.IdentityError(0);
          sub_26BED3954(&qword_28045EB48, type metadata accessor for MLS.IdentityError, &protocol conformance descriptor for MLS.IdentityError);
          v143 = swift_allocError();
          v120 = v119;
          v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EAB0, &qword_26C014280);
          v122 = *(v121 + 48);
          v123 = *(v121 + 64);
          v124 = v113;
          v125 = v116;
          v126 = v154;
          v127 = *(v154 + 16);
          v128 = v124;
          v127(v120);
          (v127)(v120 + v122, v125, v88);
          v129 = v151;
          (v127)(v120 + v123, v151, v88);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          sub_26BEC9DC0(v168);
          sub_26BE00258(v141, v142);
          v130 = *(v126 + 8);
          v130(v129, v88);
          v130(v125, v88);
          v130(v128, v88);
          sub_26BED399C(v159, _s18SignatureAlgorithmVMa);
          sub_26BED399C(v160, _s9PublicKeyVMa);
          sub_26BED399C(v138, type metadata accessor for MLS.SubjectPublicKeyInfo);
          v75 = v170;
          goto LABEL_15;
        }

        v118 = *(v154 + 8);
        v118(v151, v88);
        v118(v116, v88);
        v118(v113, v88);
        v83 = v170;
      }

      v89 = *(v165 + *(v136[0] + 36));
      v90 = v78;
      if (v89)
      {
        v91 = v160;
        if (*(v89 + 16) && (sub_26BFB2598(v73, v89) & 1) == 0)
        {
          type metadata accessor for MLS.IdentityError(0);
          sub_26BED3954(&qword_28045EB48, type metadata accessor for MLS.IdentityError, &protocol conformance descriptor for MLS.IdentityError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          sub_26BEC9DC0(v168);
          sub_26BE00258(v141, v142);
          sub_26BED399C(v90, _s18SignatureAlgorithmVMa);
          sub_26BED399C(v91, _s9PublicKeyVMa);
          sub_26BED399C(v73, type metadata accessor for MLS.SubjectPublicKeyInfo);
          v75 = v83;
          goto LABEL_15;
        }
      }

      else
      {
        v91 = v160;
      }

      sub_26BEC9DC0(v168);
      sub_26BE00258(v141, v142);
      sub_26BED399C(v90, _s18SignatureAlgorithmVMa);
      sub_26BED399C(v91, _s9PublicKeyVMa);
      sub_26BED399C(v73, type metadata accessor for MLS.SubjectPublicKeyInfo);
      v75 = v83;
      goto LABEL_15;
    }

    if (qword_28045DF98 != -1)
    {
      swift_once();
    }

    v92 = sub_26C009A5C();
    __swift_project_value_buffer(v92, qword_280478F20);
    v93 = v160;
    v94 = v153;
    sub_26BED38EC(v160, v153, _s9PublicKeyVMa);
    v95 = v141;
    v96 = v142;
    sub_26BE00608(v141, v142);
    sub_26BEC9F28(v168, v166);
    v97 = sub_26C009A3C();
    v98 = sub_26C00A9FC();
    sub_26BE00258(v95, v96);
    sub_26BEC9DC0(v168);
    if (!os_log_type_enabled(v97, v98))
    {

      sub_26BED399C(v94, _s9PublicKeyVMa);
LABEL_46:
      type metadata accessor for MLS.IdentityError(0);
      sub_26BED3954(&qword_28045EB48, type metadata accessor for MLS.IdentityError, &protocol conformance descriptor for MLS.IdentityError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_26BEC9DC0(v168);
      sub_26BE00258(v141, v142);
      sub_26BED399C(v84, _s18SignatureAlgorithmVMa);
      sub_26BED399C(v93, _s9PublicKeyVMa);
      sub_26BED399C(v73, type metadata accessor for MLS.SubjectPublicKeyInfo);
      goto LABEL_14;
    }

    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    *&v166[0] = v100;
    *v99 = 136315650;
    v101 = v141;
    v102 = v142;
    sub_26BE00608(v141, v142);
    v103 = v94;
    v104 = sub_26C00901C();
    v106 = v105;
    sub_26BE00258(v101, v102);
    v107 = sub_26BE29740(v104, v106, v166);

    *(v99 + 4) = v107;
    *(v99 + 12) = 2080;
    v108 = v103;
    v109 = v145;
    sub_26BED38EC(v108, v145, _s9PublicKeyVMa);
    v110 = v149;
    sub_26BED38EC(v109, v149, _s9PublicKeyV16BackingPublicKeyOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v132 = 0x800000026C02C3C0;
        v131 = 0xD000000000000011;
        goto LABEL_42;
      }

      v112 = 825374032;
    }

    else if (EnumCaseMultiPayload)
    {
      v112 = 876098384;
    }

    else
    {
      v112 = 909455952;
    }

    v131 = v112 | 0x6275502E00000000;
    v132 = 0xEE0079654B63696CLL;
LABEL_42:
    sub_26BED399C(v109, _s9PublicKeyVMa);
    sub_26BED399C(v153, _s9PublicKeyVMa);
    sub_26BED399C(v110, _s9PublicKeyV16BackingPublicKeyOMa);
    v133 = sub_26BE29740(v131, v132, v166);

    *(v99 + 14) = v133;
    *(v99 + 22) = 2080;
    if (v169)
    {
      v134 = 0x4153444445;
    }

    else
    {
      v134 = 0x4153444345;
    }

    v135 = sub_26BE29740(v134, 0xE500000000000000, v166);

    *(v99 + 24) = v135;
    _os_log_impl(&dword_26BDFE000, v97, v98, "Verify for %s failed (key: %s, sig: %s)", v99, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v100, -1, -1);
    MEMORY[0x26D69A4E0](v99, -1, -1);

    v73 = v138;
    v93 = v160;
    v84 = v159;
    goto LABEL_46;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BED16C4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v70 = a3;
  v71 = a2;
  v67 = a1;
  v64 = sub_26C009BBC();
  v66 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v68 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_26C00A2EC();
  v65 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v59 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_26C00A25C();
  v62 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C00A18C();
  v60 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s9PublicKeyV16BackingPublicKeyOMa(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s18SignatureAlgorithmVMa(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for MLS.Digest(0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v56 - v25;
  sub_26BED38EC(a4, v17, _s18SignatureAlgorithmVMa);
  sub_26BFD0404(v17, v20);
  v58 = v9;
  v57 = v8;
  v27 = v68;
  v28 = v69;
  v29 = v70;
  sub_26BED2678(v71, v70, v20, v24);
  sub_26BED399C(v20, type metadata accessor for MLS.AlgorithmIdentifier);
  v31 = v71;
  v32 = v24;
  v33 = v26;
  sub_26BED39FC(v32, v26, type metadata accessor for MLS.Digest);
  v34 = v14;
  sub_26BED38EC(v28, v14, _s9PublicKeyV16BackingPublicKeyOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v41 = v33;
    if (EnumCaseMultiPayload == 2)
    {
      v42 = v65;
      v43 = v59;
      v44 = v63;
      (*(v65 + 32))(v59, v34, v63);
      v45 = *(v67 + 48);
      v74 = *(v67 + 32);
      v75 = v45;
      v76 = *(v67 + 64);
      v46 = *(v67 + 16);
      v72 = *v67;
      v73 = v46;
      v40 = sub_26BFC6258(&v72, v41);
      (*(v42 + 8))(v43, v44);
      sub_26BED399C(v41, type metadata accessor for MLS.Digest);
    }

    else
    {
      v52 = v66;
      v53 = v14;
      v54 = v64;
      (*(v66 + 32))(v27, v53, v64);
      v78 = v31;
      v79 = v29;
      v55 = v67;
      if (*(v67 + 64))
      {
        v77 = *v67;
        sub_26BE00608(v31, v29);
        sub_26BEC9F28(v55, &v72);
        sub_26BE016A8();
        v40 = sub_26C009B8C();
        (*(v52 + 8))(v27, v54);
        sub_26BED399C(v41, type metadata accessor for MLS.Digest);
        sub_26BE00258(v78, v79);
        sub_26BEC9DC0(v55);
      }

      else
      {
        sub_26BE00608(v31, v29);
        (*(v52 + 8))(v27, v54);
        sub_26BED399C(v41, type metadata accessor for MLS.Digest);
        sub_26BE00258(v78, v79);
        v40 = 0;
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v47 = v62;
      v48 = v57;
      v49 = v61;
      (*(v62 + 32))(v57, v14, v61);
      v50 = *(v67 + 48);
      v74 = *(v67 + 32);
      v75 = v50;
      v76 = *(v67 + 64);
      v51 = *(v67 + 16);
      v72 = *v67;
      v73 = v51;
      v40 = sub_26BFC5C08(&v72, v33);
      (*(v47 + 8))(v48, v49);
    }

    else
    {
      v36 = v60;
      v37 = v58;
      (*(v60 + 32))(v11, v34, v58);
      v38 = *(v67 + 48);
      v74 = *(v67 + 32);
      v75 = v38;
      v76 = *(v67 + 64);
      v39 = *(v67 + 16);
      v72 = *v67;
      v73 = v39;
      v40 = sub_26BFC5454(&v72, v33);
      (*(v36 + 8))(v11, v37);
    }

    sub_26BED399C(v33, type metadata accessor for MLS.Digest);
  }

  return v40 & 1;
}

uint64_t sub_26BED1E34(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for MLS.Validity(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_9:
    v13 = *(v8 + 48);

    return v13(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_9;
  }

  v11 = sub_26C00959C();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[7];
    goto LABEL_9;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE68, &unk_26C016A90);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[8];
    goto LABEL_9;
  }

  if (a2 == 2147483646)
  {
    v15 = *(a1 + a3[9]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    v16 = v15 - 1;
    if (v16 < 0)
    {
      v16 = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E680, &unk_26C00ECF8);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[10];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_26BED206C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for MLS.Validity(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v15 = *(v10 + 56);

    return v15(a1 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = sub_26C00959C();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE68, &unk_26C016A90);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[9]) = a2;
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E680, &unk_26C00ECF8);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + a4[10];

    return v17(v18, a2, a2, v16);
  }

  return result;
}

uint64_t _s18RCSParticipantInfoVMa(uint64_t a1)
{
  result = qword_28045EE70;
  if (!qword_28045EE70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BED22D0(uint64_t a1)
{
  type metadata accessor for MLS.Validity(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MLS.AlgorithmIdentifier(319);
    if (v2 <= 0x3F)
    {
      sub_26C00959C();
      if (v3 <= 0x3F)
      {
        sub_26BED244C(319, &qword_28045EE80, type metadata accessor for MLS.SubjectPublicKeyInfo);
        if (v4 <= 0x3F)
        {
          sub_26BED23FC();
          if (v5 <= 0x3F)
          {
            sub_26BED244C(319, &qword_28045EE90, _s21RCSTBSParticipantInfoVMa);
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

void sub_26BED23FC()
{
  if (!qword_28045EE88)
  {
    v0 = sub_26C00AAAC();
    if (!v1)
    {
      atomic_store(v0, &qword_28045EE88);
    }
  }
}

void sub_26BED244C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_26BED2530()
{
  result = qword_28045EEA8;
  if (!qword_28045EEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045EEA0, &unk_26C022440);
    sub_26BED25B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EEA8);
  }

  return result;
}

unint64_t sub_26BED25B4()
{
  result = qword_28045EEB0;
  if (!qword_28045EEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EEB0);
  }

  return result;
}

unint64_t sub_26BED2624()
{
  result = qword_28045EEB8;
  if (!qword_28045EEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EEB8);
  }

  return result;
}

uint64_t sub_26BED2678@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a2;
  v52 = a4;
  v6 = sub_26C00A33C();
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x28223BE20](v6);
  v42 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26C00A31C();
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v45 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26C00A30C();
  v48 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26C00A35C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a3;
  sub_26BED38EC(a3, v19, type metadata accessor for MLS.AlgorithmIdentifier);
  if (qword_28045E080 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v17, qword_2804600F8);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v20, v19))
  {
    goto LABEL_7;
  }

  if (qword_28045E078 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v17, qword_2804600E0);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v21, v19))
  {
LABEL_7:
    sub_26BED399C(v19, type metadata accessor for MLS.AlgorithmIdentifier);
    sub_26BED3954(&qword_28045E908, MEMORY[0x277CC5598], MEMORY[0x277CC5590]);
    sub_26C009BFC();
    v22 = v49;
    sub_26BE00608(a1, v49);
    sub_26BE770BC(a1, v22, v16);
    sub_26BE00258(a1, v22);
    sub_26C009BDC();
    (*(v14 + 8))(v16, v13);
LABEL_8:
    type metadata accessor for MLS.Digest(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (qword_28045E090 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v17, qword_280460128);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v24, v19))
  {
    goto LABEL_15;
  }

  if (qword_28045E088 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v17, qword_280460110);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v25, v19))
  {
LABEL_15:
    sub_26BED399C(v19, type metadata accessor for MLS.AlgorithmIdentifier);
    sub_26BED3954(&qword_28045E370, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    sub_26C009BFC();
    v26 = v49;
    sub_26BE00608(a1, v49);
    sub_26BED30C0(a1, v26, v12);
    sub_26BE00258(a1, v26);
    sub_26C009BDC();
    (*(v48 + 8))(v12, v10);
    goto LABEL_8;
  }

  if (qword_28045E0A0 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v17, qword_280460158);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v27, v19))
  {
    goto LABEL_22;
  }

  if (qword_28045E098 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v17, qword_280460140);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v28, v19))
  {
LABEL_22:
    sub_26BED399C(v19, type metadata accessor for MLS.AlgorithmIdentifier);
    sub_26BED3954(&qword_28045EEE0, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
    v29 = v45;
    v30 = v47;
    sub_26C009BFC();
    v31 = v49;
    sub_26BE00608(a1, v49);
    sub_26BED32E4(a1, v31, v29);
    sub_26BE00258(a1, v31);
    sub_26C009BDC();
    (*(v46 + 8))(v29, v30);
    goto LABEL_8;
  }

  if (qword_28045E0B0 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v17, qword_280460188);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v32, v19))
  {
    sub_26BED399C(v19, type metadata accessor for MLS.AlgorithmIdentifier);
LABEL_30:
    sub_26BED3954(&qword_28045E368, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
    v35 = v42;
    v36 = v44;
    sub_26C009BFC();
    v37 = v49;
    sub_26BE00608(a1, v49);
    sub_26BED3508(a1, v37, v35);
    sub_26BE00258(a1, v37);
    sub_26C009BDC();
    (*(v43 + 8))(v35, v36);
    goto LABEL_8;
  }

  if (qword_28045E0A8 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v17, qword_280460170);
  v34 = _s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v33, v19);
  sub_26BED399C(v19, type metadata accessor for MLS.AlgorithmIdentifier);
  if (v34)
  {
    goto LABEL_30;
  }

  v50 = 0;
  v51 = 0xE000000000000000;
  sub_26C00AC1C();

  v50 = 0xD00000000000001ALL;
  v51 = 0x800000026C02C3E0;
  v38 = MLS.AlgorithmIdentifier.description.getter();
  MEMORY[0x26D699090](v38);

  v39 = sub_26BFCD430(v50, v51, 0xD000000000000016, 0x800000026C02C400, 40);

  sub_26BED380C();
  swift_allocError();
  *v40 = v39;
  return swift_willThrow();
}

uint64_t sub_26BED2FE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE68, &unk_26C016A90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BED3050(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE68, &unk_26C016A90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BED30C0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_26C00A30C();
      sub_26BED3954(&qword_28045E370, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_26C009BCC();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_26BED372C(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5540], &qword_28045E370, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_26BED372C(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5540], &qword_28045E370, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  }

  sub_26C00A30C();
  sub_26BED3954(&qword_28045E370, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_26C009BCC();
}

uint64_t sub_26BED32E4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_26C00A31C();
      sub_26BED3954(&qword_28045EEE0, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
      return sub_26C009BCC();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_26BED372C(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5550], &qword_28045EEE0, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_26BED372C(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5550], &qword_28045EEE0, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
  }

  sub_26C00A31C();
  sub_26BED3954(&qword_28045EEE0, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
  return sub_26C009BCC();
}

uint64_t sub_26BED3508(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_26C00A33C();
      sub_26BED3954(&qword_28045E368, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
      return sub_26C009BCC();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_26BED372C(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5560], &qword_28045E368, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_26BED372C(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5560], &qword_28045E368, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
  }

  sub_26C00A33C();
  sub_26BED3954(&qword_28045E368, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
  return sub_26C009BCC();
}

uint64_t sub_26BED372C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  result = sub_26C008E9C();
  if (!result || (result = sub_26C008ECC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_26C008EBC();
      a5(0);
      sub_26BED3954(a6, a7, a8);
      return sub_26C009BCC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_26BED380C()
{
  result = qword_28045EED8;
  if (!qword_28045EED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EED8);
  }

  return result;
}

unint64_t sub_26BED3888()
{
  result = qword_28045EEE8;
  if (!qword_28045EEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045E228, &qword_26C00CDD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EEE8);
  }

  return result;
}

uint64_t sub_26BED38EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BED3954(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BED399C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BED39FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_26BED3A64(uint64_t a1@<X8>)
{
  v3 = v1;
  v97 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for MLS.Cryptography.MACTag(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BFAF814(v95);
  if (v2)
  {
    return;
  }

  v92 = v95[2];
  v93 = v95[3];
  v94 = v96;
  v90 = v95[0];
  v91 = v95[1];
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  sub_26BE00608(*v3, v3[1]);
  sub_26BE00608(v8, v9);
  sub_26BF30764(v3, &v87);
  if (v88)
  {
    sub_26BE00258(*v3, v3[1]);
    *v3 = v8;
    v3[1] = v9;
    v11 = v9;
    v12 = v8;
    v3[2] = v10;
LABEL_6:
    sub_26BE00258(v12, v11);
    *v3 = v8;
    v3[1] = v9;
    v3[2] = v10;
    sub_26BE01600();
    swift_allocError();
    *v13 = 1;
    goto LABEL_7;
  }

  v78 = v10;
  v14 = v87;
  sub_26BE00258(v8, v9);
  if (v14 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v15 = 5;
    swift_willThrow();
    v16 = v78;
    goto LABEL_3;
  }

  v17 = sub_26BF2A44C(v14);
  if (v18 >> 60 == 15)
  {
    v12 = *v3;
    v11 = v3[1];
    v10 = v78;
    goto LABEL_6;
  }

  v20 = v19;
  v87 = v17;
  v88 = v18;
  v21 = v18 >> 62;
  v71 = v17 >> 32;
  v81 = MEMORY[0x277D84F90];
  v72 = BYTE6(v18);
  v89 = v19;
  v76 = v9;
  v77 = v8;
  v75 = a1;
  v74 = v17;
  v73 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    goto LABEL_16;
  }

LABEL_14:
  v22 = v72;
  if (v21)
  {
    v22 = v71;
  }

  while (1)
  {
    v23 = __OFSUB__(v22, v20);
    v24 = v22 - v20;
    if (v23)
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    if (v24 < 1)
    {
      v51 = v88 >> 62;
      if ((v88 >> 62) > 1)
      {
        if (v51 == 2)
        {
          v52 = *(v87 + 24);
        }

        else
        {
          v52 = 0;
        }
      }

      else if (v51)
      {
        v52 = v87 >> 32;
      }

      else
      {
        v52 = BYTE6(v88);
      }

      v54 = v52 == v20;
      if (!__OFSUB__(v52, v20))
      {
        v16 = v78;
        if (!v54)
        {
          sub_26BE01654();
          swift_allocError();
          *v55 = 0;
          v55[112] = 1;
          swift_willThrow();

          sub_26BE00258(v87, v88);
          goto LABEL_3;
        }

        sub_26BE00258(v87, v88);
        sub_26BE00258(v8, v9);
        v87 = sub_26BF2F7B0();
        v88 = v56;
        sub_26C009C5C();
        v57 = sub_26BEE6028();
        if ((v57 & 0x100000000) != 0)
        {

          sub_26BE01600();
          swift_allocError();
          *v60 = 1;
          swift_willThrow();
          sub_26BE00204(&v90);
          sub_26BEB658C(v7);
        }

        else
        {
          v58 = a1;
          v59 = v57;
          v61 = sub_26BF2F7B0();
          v63 = v62;
          v64 = type metadata accessor for MLS.GroupInfo(0);
          sub_26BED4D74(v7, v58 + v64[6]);
          v65 = v93;
          *(v58 + 32) = v92;
          *(v58 + 48) = v65;
          v66 = v94;
          v67 = v91;
          *v58 = v90;
          *(v58 + 16) = v67;
          v68 = v81;
          *(v58 + 64) = v66;
          *(v58 + 72) = v68;
          *(v58 + v64[7]) = v59;
          v69 = (v58 + v64[8]);
          *v69 = v61;
          v69[1] = v63;
        }

        return;
      }

LABEL_79:
      __break(1u);
    }

    v84 = 0;
    v25 = v20 + 2;
    if (__OFADD__(v20, 2))
    {
      goto LABEL_74;
    }

    v26 = v87;
    v27 = v88;
    v28 = v88 >> 62;
    if ((v88 >> 62) <= 1)
    {
      if (v28)
      {
        v29 = v87 >> 32;
      }

      else
      {
        v29 = BYTE6(v88);
      }

LABEL_28:
      if (v29 < v25)
      {
        goto LABEL_63;
      }

      goto LABEL_31;
    }

    if (v28 == 2)
    {
      v29 = *(v87 + 24);
      goto LABEL_28;
    }

    if (v25 > 0)
    {
      goto LABEL_63;
    }

LABEL_31:
    v85 = v87;
    v86 = v88;
    if (v25 < v20)
    {
      goto LABEL_75;
    }

    v82 = v20;
    v83 = v20 + 2;
    sub_26BE00608(v87, v88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    v80 = v26;
    sub_26BE016A8();
    sub_26BE016FC();
    v30 = v80;
    sub_26C008E1C();
    sub_26BE00258(v85, v86);
    v31 = v84;
    v89 = v20 + 2;
    sub_26BE00608(v30, v27);
    sub_26BE00608(v30, v27);
    sub_26BF30764(&v87, &v85);
    if (v86)
    {
      break;
    }

    v32 = v85;
    sub_26BE00258(v30, v27);
    v23 = __OFADD__(v89, v32);
    v20 = v89 + v32;
    if (v23)
    {
      goto LABEL_76;
    }

    v33 = v87;
    v34 = v88;
    v35 = v88 >> 62;
    if ((v88 >> 62) <= 1)
    {
      if (v35)
      {
        v36 = v87 >> 32;
      }

      else
      {
        v36 = BYTE6(v88);
      }

LABEL_40:
      if (v36 < v20)
      {
        goto LABEL_62;
      }

      goto LABEL_43;
    }

    if (v35 == 2)
    {
      v36 = *(v87 + 24);
      goto LABEL_40;
    }

    if (v20 > 0)
    {
      goto LABEL_62;
    }

LABEL_43:
    HIDWORD(v79) = v31;
    if (v20 < v89)
    {
      goto LABEL_77;
    }

    v37 = sub_26C00909C();
    v38 = v37;
    v40 = v39;
    v89 = v20;
    v41 = v39 >> 62;
    if ((v39 >> 62) > 1)
    {
      if (v41 != 2)
      {
        goto LABEL_51;
      }

      v37 = *(v37 + 16);
      v42 = *(v38 + 24);
    }

    else
    {
      if (!v41)
      {
        goto LABEL_51;
      }

      v37 = v37;
      v42 = v38 >> 32;
    }

    if (v42 < v37)
    {
      goto LABEL_78;
    }

LABEL_51:
    v43 = sub_26C00909C();
    v45 = v44;
    sub_26BE00258(v38, v40);
    sub_26BE00258(v80, v27);
    sub_26BE00608(v43, v45);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v81 = sub_26BEEBD8C(0, *(v81 + 2) + 1, 1, v81);
    }

    v47 = *(v81 + 2);
    v46 = *(v81 + 3);
    if (v47 >= v46 >> 1)
    {
      v81 = sub_26BEEBD8C((v46 > 1), v47 + 1, 1, v81);
    }

    v48 = bswap32(HIDWORD(v79)) >> 16;
    sub_26BE00258(v43, v45);
    v49 = v81;
    *(v81 + 2) = v47 + 1;
    v50 = &v49[24 * v47];
    *(v50 + 16) = v48;
    *(v50 + 5) = v43;
    *(v50 + 6) = v45;
    v9 = v76;
    v8 = v77;
    a1 = v75;
    v17 = v74;
    LODWORD(v21) = v73;
    if (v73 <= 1)
    {
      goto LABEL_14;
    }

LABEL_16:
    if (v21 == 2)
    {
      v22 = *(v17 + 24);
    }

    else
    {
      v22 = 0;
    }
  }

  sub_26BE00258(v87, v88);
  v34 = v27;
  v33 = v30;
LABEL_62:
  sub_26BE00258(v33, v34);
  v87 = v30;
  v88 = v27;
  v89 = v25;
LABEL_63:
  sub_26BE01600();
  swift_allocError();
  *v53 = 1;
  v16 = v78;
  swift_willThrow();

  sub_26BE00258(v87, v88);
  v8 = v77;
LABEL_3:
  sub_26BE00258(*v3, v3[1]);
  *v3 = v8;
  v3[1] = v9;
  v3[2] = v16;
LABEL_7:
  swift_willThrow();
  sub_26BE00204(&v90);
}

uint64_t MLS.GroupInfo.groupContext.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_26BE001A8(v8, v7);
}

__n128 MLS.GroupInfo.groupContext.setter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v8 = *(v1 + 64);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  sub_26BE00204(v7);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t MLS.GroupInfo.confirmationTag.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MLS.GroupInfo(0) + 24);

  return sub_26BE8236C(v3, a1);
}

uint64_t type metadata accessor for MLS.GroupInfo(uint64_t a1)
{
  result = qword_28045EF00;
  if (!qword_28045EF00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MLS.GroupInfo.confirmationTag.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MLS.GroupInfo(0) + 24);

  return sub_26BED4520(a1, v3);
}

uint64_t sub_26BED4520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.Cryptography.MACTag(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MLS.GroupInfo.signer.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for MLS.GroupInfo(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t MLS.GroupInfo.signer.setter(int *a1)
{
  v2 = *a1;
  result = type metadata accessor for MLS.GroupInfo(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t MLS.GroupInfo.signature.getter()
{
  v1 = v0 + *(type metadata accessor for MLS.GroupInfo(0) + 32);
  v2 = *v1;
  sub_26BE00608(*v1, *(v1 + 8));
  return v2;
}

void MLS.GroupInfo.signature.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for MLS.GroupInfo(0) + 32);
  sub_26BE00258(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
}

uint64_t sub_26BED4760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MLS.Cryptography.MACTag(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26BED4820(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MLS.Cryptography.MACTag(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26BED48C4(uint64_t a1)
{
  sub_26BED4970();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MLS.Cryptography.MACTag(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BED4970()
{
  if (!qword_28045E208)
  {
    v0 = sub_26C00A7AC();
    if (!v1)
    {
      atomic_store(v0, &qword_28045E208);
    }
  }
}

void sub_26BED49C0(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  v52 = *(a1 + 32);
  v53 = v4;
  v5 = *(a1 + 16);
  v51[0] = *a1;
  v51[1] = v5;
  v6 = *(a1 + 48);
  v48 = v52;
  v49 = v6;
  v54 = *(a1 + 64);
  v50 = *(a1 + 64);
  v46 = v51[0];
  v47 = v3;
  sub_26BE001A8(v51, &v41);
  sub_26BFAF494(&v46);
  if (v1)
  {
    v43 = v48;
    v44 = v49;
    v45 = v50;
    v41 = v46;
    v42 = v47;
    sub_26BE00204(&v41);
    return;
  }

  v8 = v7;
  v43 = v48;
  v44 = v49;
  v45 = v50;
  v41 = v46;
  v42 = v47;
  sub_26BE00204(&v41);
  v9 = *(a1 + 72);
  v37 = xmmword_26C00BBD0;
  v38 = 0;
  v10 = sub_26BEEAC24(0, v9);
  v11 = sub_26BF30414(v10);
  sub_26BF2A30C(&v37);
  sub_26BE00258(v37, *(&v37 + 1));
  v12 = v11 + v10;
  if (__OFADD__(v11, v10))
  {
    goto LABEL_31;
  }

  v13 = v8 + v12;
  if (__OFADD__(v8, v12))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v14 = type metadata accessor for MLS.GroupInfo(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
  sub_26C009C3C();
  v15 = sub_26BE12418(v37);
  v17 = v16;

  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    v19 = 0;
    if (v18 != 2)
    {
      goto LABEL_14;
    }

    v21 = *(v15 + 16);
    v20 = *(v15 + 24);
    v19 = v20 - v21;
    if (!__OFSUB__(v20, v21))
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  else if (!v18)
  {
    v19 = BYTE6(v17);
    goto LABEL_14;
  }

  if (__OFSUB__(HIDWORD(v15), v15))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v19 = HIDWORD(v15) - v15;
LABEL_14:
  v35 = v14;
  v22 = v13;
  v23 = sub_26BF30414(v19);
  sub_26BE11228(v15, v17);
  sub_26BE00258(v15, v17);
  v24 = v23 + v19;
  if (__OFADD__(v23, v19))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v25 = v22 + v24;
  if (__OFADD__(v22, v24))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v36 = bswap32(*(a1 + *(v35 + 28)));
  v39 = MEMORY[0x277D838B0];
  v40 = MEMORY[0x277CC9C18];
  *&v37 = &v36;
  *(&v37 + 1) = &v37;
  __swift_project_boxed_opaque_existential_1(&v37, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v37);
  v26 = v25 + 4;
  if (__OFADD__(v25, 4))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v27 = (a1 + *(v35 + 32));
  v28 = *v27;
  v29 = v27[1];
  v30 = v29 >> 62;
  if ((v29 >> 62) <= 1)
  {
    if (!v30)
    {
      v31 = BYTE6(v29);
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (v30 != 2)
  {
    v31 = 0;
    goto LABEL_27;
  }

  v33 = *(v28 + 16);
  v32 = *(v28 + 24);
  v31 = v32 - v33;
  if (__OFSUB__(v32, v33))
  {
    __break(1u);
LABEL_24:
    if (__OFSUB__(HIDWORD(v28), v28))
    {
      goto LABEL_38;
    }

    v31 = HIDWORD(v28) - v28;
  }

LABEL_27:
  v34 = sub_26BF30414(v31);
  sub_26BE11228(v28, v29);
  if (__OFADD__(v34, v31))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  if (__OFADD__(v26, v34 + v31))
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }
}

uint64_t sub_26BED4D74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.Cryptography.MACTag(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BED4DD8(uint64_t *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v9 = type metadata accessor for MLS.Cryptography.MACTag(0);
  v10 = *(v9 - 8);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v15 = *a1;
  v14 = a1[1];
  v16 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    v17 = 0;
    if (v16 != 2)
    {
      goto LABEL_10;
    }

    v19 = *(v15 + 16);
    v18 = *(v15 + 24);
    v17 = v18 - v19;
    if (!__OFSUB__(v18, v19))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v16)
  {
    v17 = BYTE6(v14);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(v15), v15))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v17 = HIDWORD(v15) - v15;
LABEL_10:
  v39 = v13;
  v20 = sub_26BF30414(v17);
  if (v2)
  {
    return v3;
  }

  v21 = v20;
  v38 = 0;
  result = sub_26BE11228(v15, v14);
  v22 = __OFADD__(v21, v17);
  v3 = v21 + v17;
  if (v22)
  {
    __break(1u);
    goto LABEL_33;
  }

  v23 = type metadata accessor for MLS.FramedContentAuthData(0);
  sub_26BED5200(a1 + *(v23 + 20), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_26BE2E258(v8, &qword_28045E4E8, &qword_26C012550);
    return v3;
  }

  v24 = v40;
  sub_26BED4D74(v8, v40);
  if (v39 != 3)
  {
    sub_26BE01654();
    swift_allocError();
    *v31 = 6;
    *(v31 + 8) = 0u;
    *(v31 + 24) = 0u;
    *(v31 + 40) = 0u;
    *(v31 + 56) = 0u;
    *(v31 + 72) = 0u;
    *(v31 + 88) = 0u;
    *(v31 + 104) = 0;
    *(v31 + 112) = 23;
    swift_willThrow();
LABEL_28:
    sub_26BEB658C(v24);
    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
  v25 = v38;
  sub_26C009C3C();
  v26 = sub_26BE12418(v41);
  v28 = v27;

  v29 = v28 >> 62;
  if ((v28 >> 62) > 1)
  {
    v30 = 0;
    if (v29 != 2 || (v33 = *(v26 + 16), v32 = *(v26 + 24), v30 = v32 - v33, !__OFSUB__(v32, v33)))
    {
LABEL_26:
      v34 = sub_26BF30414(v30);
      if (v25)
      {
        sub_26BE00258(v26, v28);
        goto LABEL_28;
      }

      v35 = v34;
      sub_26BE11228(v26, v28);
      sub_26BE00258(v26, v28);
      result = sub_26BEB658C(v24);
      v36 = v35 + v30;
      if (!__OFADD__(v35, v30))
      {
        v22 = __OFADD__(v3, v36);
        v3 += v36;
        if (!v22)
        {
          return v3;
        }

        goto LABEL_35;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    __break(1u);
  }

  else if (!v29)
  {
    v30 = BYTE6(v28);
    goto LABEL_26;
  }

  if (!__OFSUB__(HIDWORD(v26), v26))
  {
    v30 = HIDWORD(v26) - v26;
    goto LABEL_26;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t MLS.FramedContentAuthData.confirmationTag.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MLS.FramedContentAuthData(0) + 20);

  return sub_26BED5200(v3, a1);
}

uint64_t type metadata accessor for MLS.FramedContentAuthData(uint64_t a1)
{
  result = qword_28045EF10;
  if (!qword_28045EF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BED5200(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}