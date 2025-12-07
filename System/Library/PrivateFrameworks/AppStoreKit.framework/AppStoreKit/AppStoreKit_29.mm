__n128 sub_1E15D1DA0@<Q0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *a1;

  sub_1E1AF216C();
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for SwiftUIArtworkView(0);
  v10 = v9[6];
  v11 = type metadata accessor for SwiftUIArtworkView.SizedContent(0);
  v12 = v11[6];
  v13 = sub_1E1AF2BAC();
  (*(*(v13 - 8) + 16))(a2 + v12, &a1[v10], v13);
  v14 = &a1[v9[7]];
  v15 = v14[1].n128_u8[0];
  v16 = a1[v9[8]];
  v17 = a1[v9[9]];
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = 0;
  v18 = (a2 + v11[7]);
  result = *v14;
  *v18 = *v14;
  v18[1].n128_u8[0] = v15;
  *(a2 + v11[8]) = v16;
  *(a2 + v11[9]) = v17;
  return result;
}

uint64_t sub_1E15D1EA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB64B0, &qword_1E1B1BAA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB64B8, &qword_1E1B1BAA8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB64C0, &qword_1E1B1BAB0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  sub_1E15D2098(v1, v6);
  v13 = *(v1 + *(type metadata accessor for SwiftUIArtworkView.SizedContent(0) + 32));
  if (v13 == 2)
  {
    LOBYTE(v13) = sub_1E15D26F8();
  }

  sub_1E137F600(v6, v9, &qword_1ECEB64B0, &qword_1E1B1BAA0);
  v9[*(v7 + 36)] = v13;
  v14 = v2[1];
  v15 = v2[2];
  v16 = *(v2 + 24);
  sub_1E137F600(v9, v12, &qword_1ECEB64B8, &qword_1E1B1BAA8);
  v17 = &v12[*(v10 + 36)];
  *v17 = v14;
  *(v17 + 1) = v15;
  v17[16] = v16;
  sub_1E137F600(v12, a1, &qword_1ECEB64C0, &qword_1E1B1BAB0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB64C8, &qword_1E1B1BAB8);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1E15D2098@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v60 = type metadata accessor for BundleArtworkView(0);
  MEMORY[0x1EEE9AC00](v60);
  v4 = &v48[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB64D0, &qword_1E1B1BAC0);
  MEMORY[0x1EEE9AC00](v58);
  v6 = &v48[-v5];
  v7 = sub_1E1AEFEAC();
  v55 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48[-v11];
  v13 = type metadata accessor for RemoteArtworkView(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = a1[2];
  v56 = a1[1];
  v57 = v16;
  v17 = *(a1 + 24);
  if ((v17 & 1) != 0 || (v54 = *a1, v18 = *(v54 + 24), *&v62[0] = *(v54 + 16), *(&v62[0] + 1) = v18, Artwork.URLTemplate.isBundleImage.getter()))
  {
    v19 = *a1;
    v20 = type metadata accessor for SwiftUIArtworkView.SizedContent(0);
    v21 = *(v20 + 24);
    v22 = v60;
    v23 = *(v60 + 24);
    v24 = sub_1E1AF2BAC();
    (*(*(v24 - 8) + 16))(&v4[v23], a1 + v21, v24);
    v25 = *(a1 + *(v20 + 32));
    v27 = v56;
    v26 = v57;
    *v4 = v19;
    *(v4 + 1) = v27;
    *(v4 + 2) = v26;
    v4[24] = v17;
    v4[*(v22 + 28)] = v25;
    v28 = *(v22 + 32);
    *&v4[v28] = swift_getKeyPath("8N;\v");
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6468, &qword_1E1B3A600);
    swift_storeEnumTagMultiPayload();
    sub_1E15D5508(v4, v6, type metadata accessor for BundleArtworkView);
    swift_storeEnumTagMultiPayload();
    sub_1E15D53D8(&qword_1ECEB64D8, type metadata accessor for RemoteArtworkView, &unk_1E1B1BBD0);
    sub_1E15D53D8(&qword_1ECEB64E0, type metadata accessor for BundleArtworkView, &unk_1E1B1BB80);

    sub_1E1AF259C();
    v29 = type metadata accessor for BundleArtworkView;
    v30 = v4;
  }

  else
  {
    v31 = type metadata accessor for SwiftUIArtworkView.SizedContent(0);
    v32 = v31[6];
    v33 = v13[6];
    v34 = sub_1E1AF2BAC();
    (*(*(v34 - 8) + 16))(&v15[v33], a1 + v32, v34);
    v35 = v31[8];
    v36 = a1 + v31[7];
    v37 = *v36;
    v50 = *(v36 + 1);
    v51 = v37;
    LODWORD(v35) = *(a1 + v35);
    v49 = v36[16];
    v52 = *(a1 + v31[9]);
    v53 = v35;
    v38 = &v15[v13[10]];
    type metadata accessor for ArtworkLoader();
    sub_1E15D53D8(&qword_1ECEB2E70, type metadata accessor for ArtworkLoader, &protocol conformance descriptor for ArtworkLoader);
    v39 = v54;

    *v38 = sub_1E1AF232C();
    v38[1] = v40;
    v41 = v13[11];
    v61[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB64E8, &qword_1E1B1BAC8);
    sub_1E1AF2BEC();
    *&v15[v41] = v62[0];
    sub_1E1AEFE9C();
    v42 = v55;
    (*(v55 + 16))(v9, v12, v7);
    sub_1E15D53D8(&qword_1EE1FADB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1E1AF6F6C();
    (*(v42 + 8))(v12, v7);
    sub_1E134E724(v62, v61);
    sub_1E1AF2BEC();
    sub_1E134B88C(v62);
    v44 = v56;
    v43 = v57;
    *v15 = v39;
    *(v15 + 1) = v44;
    *(v15 + 2) = v43;
    v45 = &v15[v13[7]];
    v46 = v50;
    *v45 = v51;
    *(v45 + 1) = v46;
    v45[16] = v49;
    LOBYTE(v46) = v52;
    v15[v13[8]] = v53;
    v15[v13[9]] = v46;
    sub_1E15D5508(v15, v6, type metadata accessor for RemoteArtworkView);
    swift_storeEnumTagMultiPayload();
    sub_1E15D53D8(&qword_1ECEB64D8, type metadata accessor for RemoteArtworkView, &unk_1E1B1BBD0);
    sub_1E15D53D8(&qword_1ECEB64E0, type metadata accessor for BundleArtworkView, &unk_1E1B1BB80);
    sub_1E1AF259C();
    v29 = type metadata accessor for RemoteArtworkView;
    v30 = v15;
  }

  return sub_1E15D5570(v30, v29);
}

uint64_t sub_1E15D26F8()
{
  if (Artwork.Crop.preferredContentMode.getter() == 1)
  {
    return 0;
  }

  if (Artwork.Crop.preferredContentMode.getter() == 2)
  {
    return 1;
  }

  return 2;
}

uint64_t sub_1E15D2764@<X0>(uint64_t a1@<X8>)
{
  v119 = a1;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6620, &qword_1E1B1BC88);
  MEMORY[0x1EEE9AC00](v117);
  v118 = (&v93 - v2);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6628, &qword_1E1B1BC90);
  MEMORY[0x1EEE9AC00](v114);
  v105 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v106 = &v93 - v5;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6630, &qword_1E1B1BC98);
  MEMORY[0x1EEE9AC00](v112);
  v113 = &v93 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB64F8, &qword_1E1B1BAD8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v100 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v104 = &v93 - v10;
  v110 = sub_1E1AF2BBC();
  v108 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v96 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v99 = &v93 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v97 = &v93 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v103 = &v93 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB65E0, &qword_1E1B1BC60);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v107 = &v93 - v19;
  v20 = sub_1E1AF2B7C();
  v98 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6638, &qword_1E1B1BCA0);
  MEMORY[0x1EEE9AC00](v109);
  v101 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v102 = &v93 - v25;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6640, &qword_1E1B1BCA8);
  MEMORY[0x1EEE9AC00](v116);
  v111 = &v93 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v93 - v28;
  v30 = sub_1E1AEFCCC();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v1;
  v34 = *v1;

  sub_1E1AEFCAC();
  v35 = v30;

  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    sub_1E1308058(v29, &unk_1ECEB4B60, &unk_1E1B02620);
LABEL_13:
    v52 = v118;
    *v118 = 0;
    *(v52 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1E15D68DC();
    return sub_1E1AF259C();
  }

  (*(v31 + 32))(v33, v29, v30);
  sub_1E1AEFC6C();
  v36 = v33;
  if (!v37)
  {
    (*(v31 + 8))(v33, v30);
    goto LABEL_13;
  }

  v38 = v115;
  v39 = *(v115 + 24);
  v95 = v31;
  v94 = v36;
  if ((v39 & 1) == 0)
  {
    v106 = v30;
    v100 = v115[2];
    if (qword_1EE1E31F8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v54 = qword_1EE1E3200;
    sub_1E1AF2BDC();
    v55 = v98;
    (*(v98 + 104))(v22, *MEMORY[0x1E6981630], v20);
    sub_1E1AF2BCC();

    (*(v55 + 8))(v22, v20);
    v56 = type metadata accessor for BundleArtworkView(0);
    v57 = *(v56 + 24);
    v58 = sub_1E1AF2BAC();
    v59 = *(v58 - 8);
    v60 = v38 + v57;
    v61 = v107;
    (*(v59 + 16))(v107, v60, v58);
    (*(v59 + 56))(v61, 0, 1, v58);
    v105 = sub_1E1AF2B8C();

    sub_1E1308058(v61, &qword_1ECEB65E0, &qword_1E1B1BC60);
    v62 = *(v38 + *(v56 + 28));
    if (v62 == 2)
    {
      LOBYTE(v62) = sub_1E15D26F8();
    }

    sub_1E1AF2D1C();
    sub_1E1AF214C();
    *&v120[6] = v121;
    *&v120[22] = v122;
    *&v120[38] = v123;
    v63 = *(v34 + 96);
    v64 = v111;
    v65 = v108;
    if (v63 > 1)
    {
      v35 = v106;
      v67 = v110;
      if (v63 != 2)
      {
        v90 = v104;
        (*(v108 + 56))(v104, 1, 1, v110);
        v91 = v103;
        sub_1E1870628(v103);
        v92 = (*(v65 + 48))(v90, 1, v67);
        if (v92 != 1)
        {
          sub_1E1308058(v90, &qword_1ECEB64F8, &qword_1E1B1BAD8);
        }

        goto LABEL_32;
      }

      v66 = MEMORY[0x1E69816C0];
    }

    else
    {
      if (*(v34 + 96))
      {
        v66 = MEMORY[0x1E69816E0];
      }

      else
      {
        v66 = MEMORY[0x1E69816C8];
      }

      v35 = v106;
      v67 = v110;
    }

    v79 = v97;
    (*(v108 + 104))(v97, *v66, v67);
    v80 = *(v65 + 32);
    v81 = v104;
    v80(v104, v79, v67);
    (*(v65 + 56))(v81, 0, 1, v67);
    v91 = v103;
    v80(v103, v81, v67);
LABEL_32:
    KeyPath = swift_getKeyPath(byte_1E1B1BAF8);
    v83 = v101;
    v84 = &v101[*(v109 + 36)];
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6518, &qword_1E1B1BAF0);
    (*(v65 + 32))(v84 + *(v85 + 28), v91, v67);
    *v84 = KeyPath;
    *v83 = v105;
    *(v83 + 8) = v62;
    *(v83 + 9) = 1;
    *(v83 + 56) = *&v120[46];
    *(v83 + 42) = *&v120[32];
    v86 = *v120;
    *(v83 + 26) = *&v120[16];
    *(v83 + 10) = v86;
    v87 = v102;
    sub_1E137F600(v83, v102, &qword_1ECEB6638, &qword_1E1B1BCA0);
    sub_1E134FD1C(v87, v113, &qword_1ECEB6638, &qword_1E1B1BCA0);
    swift_storeEnumTagMultiPayload();
    sub_1E15D6968();
    sub_1E15D6BB8();
    sub_1E1AF259C();
    v76 = v87;
    v77 = &qword_1ECEB6638;
    v78 = &qword_1E1B1BCA0;
    goto LABEL_33;
  }

  if (qword_1EE1E31F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v40 = qword_1EE1E3200;
  sub_1E1AF2BDC();
  v41 = *(type metadata accessor for BundleArtworkView(0) + 24);
  v42 = sub_1E1AF2BAC();
  v43 = *(v42 - 8);
  v44 = v115 + v41;
  v45 = v107;
  (*(v43 + 16))(v107, v44, v42);
  (*(v43 + 56))(v45, 0, 1, v42);
  v46 = sub_1E1AF2B8C();

  sub_1E1308058(v45, &qword_1ECEB65E0, &qword_1E1B1BC60);
  v47 = *(v34 + 96);
  if (v47 > 1)
  {
    v49 = v110;
    v50 = v108;
    v51 = v99;
    if (v47 != 2)
    {
      v88 = v100;
      (*(v108 + 56))(v100, 1, 1, v110);
      sub_1E1870628(v51);
      v89 = (*(v50 + 48))(v88, 1, v49);
      if (v89 != 1)
      {
        sub_1E1308058(v88, &qword_1ECEB64F8, &qword_1E1B1BAD8);
      }

      goto LABEL_27;
    }

    v48 = MEMORY[0x1E69816C0];
  }

  else
  {
    if (*(v34 + 96))
    {
      v48 = MEMORY[0x1E69816E0];
    }

    else
    {
      v48 = MEMORY[0x1E69816C8];
    }

    v49 = v110;
    v50 = v108;
    v51 = v99;
  }

  v68 = v96;
  (*(v50 + 104))(v96, *v48, v49);
  v69 = *(v50 + 32);
  v70 = v100;
  v69(v100, v68, v49);
  (*(v50 + 56))(v70, 0, 1, v49);
  v69(v51, v70, v49);
LABEL_27:
  v71 = swift_getKeyPath(byte_1E1B1BAF8);
  v72 = v105;
  v73 = &v105[*(v114 + 36)];
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6518, &qword_1E1B1BAF0);
  (*(v50 + 32))(v73 + *(v74 + 28), v51, v49);
  *v73 = v71;
  *v72 = v46;
  *(v72 + 8) = 1;
  v75 = v106;
  sub_1E137F600(v72, v106, &qword_1ECEB6628, &qword_1E1B1BC90);
  sub_1E134FD1C(v75, v113, &qword_1ECEB6628, &qword_1E1B1BC90);
  swift_storeEnumTagMultiPayload();
  sub_1E15D6968();
  sub_1E15D6BB8();
  v64 = v111;
  sub_1E1AF259C();
  v76 = v75;
  v77 = &qword_1ECEB6628;
  v78 = &qword_1E1B1BC90;
LABEL_33:
  sub_1E1308058(v76, v77, v78);
  sub_1E134FD1C(v64, v118, &qword_1ECEB6640, &qword_1E1B1BCA8);
  swift_storeEnumTagMultiPayload();
  sub_1E15D68DC();
  sub_1E1AF259C();
  sub_1E1308058(v64, &qword_1ECEB6640, &qword_1E1B1BCA8);
  return (*(v95 + 8))(v94, v35);
}

uint64_t sub_1E15D370C@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB64F0, &qword_1E1B1BAD0);
  MEMORY[0x1EEE9AC00](v44);
  v3 = &v34 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB64F8, &qword_1E1B1BAD8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v39 = &v34 - v5;
  v37 = sub_1E1AF2BBC();
  v41 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v34 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6500, &unk_1E1B1BAE0);
  MEMORY[0x1EEE9AC00](v43);
  v38 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v40 = &v34 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v34 - v14;
  v16 = sub_1E1AEFCCC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v1;
  v20 = *v1;

  sub_1E1AEFCAC();

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1E1308058(v15, &unk_1ECEB4B60, &unk_1E1B02620);
LABEL_10:
    *v3 = 0;
    v3[8] = 1;
    swift_storeEnumTagMultiPayload();
    sub_1E15D5980();
    return sub_1E1AF259C();
  }

  (*(v17 + 32))(v19, v15, v16);
  sub_1E1AEFC6C();
  if (!v21)
  {
    (*(v17 + 8))(v19, v16);
    goto LABEL_10;
  }

  v35 = sub_1E1AF2B9C();
  if (*(v20 + 96) > 1u)
  {
    v23 = v41;
    if (*(v20 + 96) != 2)
    {
      v33 = v39;
      v25 = v37;
      (*(v41 + 56))(v39, 1, 1, v37);
      type metadata accessor for SystemArtworkView(0);
      sub_1E1870628(v42);
      if ((*(v23 + 48))(v33, 1, v25) != 1)
      {
        sub_1E1308058(v33, &qword_1ECEB64F8, &qword_1E1B1BAD8);
      }

      goto LABEL_14;
    }

    v22 = MEMORY[0x1E69816C0];
  }

  else
  {
    if (*(v20 + 96))
    {
      v22 = MEMORY[0x1E69816E0];
    }

    else
    {
      v22 = MEMORY[0x1E69816C8];
    }

    v23 = v41;
  }

  v25 = v37;
  (*(v23 + 104))(v7, *v22, v37);
  v26 = *(v23 + 32);
  v27 = v39;
  v26(v39, v7, v25);
  (*(v23 + 56))(v27, 0, 1, v25);
  v26(v42, v27, v25);
LABEL_14:
  KeyPath = swift_getKeyPath(byte_1E1B1BAF8);
  v29 = v38;
  v30 = (v38 + *(v43 + 36));
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6518, &qword_1E1B1BAF0);
  (*(v23 + 32))(v30 + *(v31 + 28), v42, v25);
  *v30 = KeyPath;
  *v29 = v35;
  v32 = v40;
  sub_1E137F600(v29, v40, &qword_1ECEB6500, &unk_1E1B1BAE0);
  sub_1E134FD1C(v32, v3, &qword_1ECEB6500, &unk_1E1B1BAE0);
  swift_storeEnumTagMultiPayload();
  sub_1E15D5980();
  sub_1E1AF259C();
  sub_1E1308058(v32, &qword_1ECEB6500, &unk_1E1B1BAE0);
  return (*(v17 + 8))(v19, v16);
}

uint64_t sub_1E15D3D2C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RemoteArtworkView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB65A8, &qword_1E1B1BC20);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v13 = &v30 - v12;
  v14 = v2[1];
  if (v14 <= 0.0 || (v15 = v2[2], v15 <= 0.0))
  {
    v18 = *(v10 + 56);

    return v18(a1, 1, 1, v11);
  }

  else
  {
    v31 = v4;
    v32 = v10;
    v33 = v9;
    v34 = a1;
    v17 = *(*v2 + 72);
    v16 = *(*v2 + 80);
    *&v36 = v17;
    *(&v36 + 1) = v16;
    if (Artwork.Crop.preferredContentMode.getter() == 1)
    {
      v30 = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, v14, v15);
    }

    else
    {
      *&v36 = v17;
      *(&v36 + 1) = v16;

      v30 = Artwork.config(using:cropCodeOverride:prefersLayeredImage:)(&v36, 0, v14, v15);
    }

    *v13 = sub_1E1AF2D1C();
    *(v13 + 1) = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB65B0, &qword_1E1B1BC28);
    sub_1E15D410C(v2, &v13[*(v21 + 44)]);
    sub_1E15D5508(v2, &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RemoteArtworkView);
    v22 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v23 = swift_allocObject();
    sub_1E15D64B0(v7, v23 + v22, type metadata accessor for RemoteArtworkView);
    *(v23 + ((v22 + v6 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;
    v24 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB65B8, &qword_1E1B1BC30) + 36)];
    *v24 = sub_1E15D6518;
    v24[1] = v23;
    v24[2] = 0;
    v24[3] = 0;
    v36 = *(v2 + *(v31 + 44));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB65C0, &qword_1E1B1BC38);
    sub_1E1AF2BFC();
    v25 = v35;
    *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB65C8, &qword_1E1B1BC40) + 36)] = v25;
    sub_1E15D5508(v2, v7, type metadata accessor for RemoteArtworkView);
    v26 = swift_allocObject();
    sub_1E15D64B0(v7, v26 + v22, type metadata accessor for RemoteArtworkView);
    v27 = v33;
    v28 = &v13[*(v33 + 36)];
    *v28 = 0;
    *(v28 + 1) = 0;
    *(v28 + 2) = sub_1E15D65A4;
    *(v28 + 3) = v26;
    v29 = v34;
    sub_1E131B998(v13, v34);
    return (*(v32 + 56))(v29, 0, 1, v27);
  }
}

uint64_t sub_1E15D410C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB65D8, &qword_1E1B1BC58);
  v54 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v53 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v44 - v6;
  v7 = sub_1E1AF2B7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB65E0, &qword_1E1B1BC60);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v44 - v12;
  v14 = type metadata accessor for RemoteArtworkView(0);
  v15 = (a1 + v14[11]);
  v16 = *v15;
  v17 = v15[1];
  v65 = *v15;
  v66 = v17;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB65C0, &qword_1E1B1BC38);
  sub_1E1AF2BFC();
  if (v60)
  {
    v44 = v17;
    v45 = v16;
    v46 = v3;
    v56 = v60;
    sub_1E1AF2B5C();
    v18 = v14[6];
    v19 = sub_1E1AF2BAC();
    v20 = *(v19 - 8);
    (*(v20 + 16))(v13, a1 + v18, v19);
    (*(v20 + 56))(v13, 0, 1, v19);
    sub_1E1AF2B8C();

    sub_1E1308058(v13, &qword_1ECEB65E0, &qword_1E1B1BC60);
    (*(v8 + 104))(v10, *MEMORY[0x1E6981630], v7);
    v59 = sub_1E1AF2BCC();

    (*(v8 + 8))(v10, v7);
    v21 = *(a1 + v14[8]);
    if (v21 == 2)
    {
      LOBYTE(v21) = sub_1E15D26F8();
    }

    sub_1E1AF2D1C();
    sub_1E1AF214C();
    v50 = v77;
    v22 = v78;
    v49 = v79;
    v23 = v80;
    v58 = v81;
    v57 = v82;

    LOBYTE(v65) = v22;
    LOBYTE(v60) = v23;
    v24 = v22;
    v56 = v23;
    v55 = v21;
    v47 = 1;
    v3 = v46;
    v16 = v45;
    v17 = v44;
  }

  else
  {
    v59 = 0;
    v50 = 0;
    v49 = 0;
    v58 = 0;
    v57 = 0;
    v47 = 0;
    v56 = 0;
    v24 = 0;
    v55 = 0;
  }

  v65 = v16;
  v66 = v17;
  sub_1E1AF2BFC();
  v25 = v60;
  if (v60)
  {
  }

  v26 = (a1 + v14[7]);
  if (*(v26 + 16))
  {
    v26 = a1 + 1;
    v27 = a1 + 2;
  }

  else
  {
    v27 = v26 + 1;
  }

  v28 = *v27;
  v29 = *v26;
  v74 = *a1;
  v75 = v29;
  v76 = v28;

  v30 = sub_1E1AF2D6C();
  MEMORY[0x1EEE9AC00](v30);
  *(&v44 - 16) = v25 != 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB65E8, &qword_1E1B1BC68);
  sub_1E15D67D0();
  sub_1E15D6824();
  v31 = v51;
  sub_1E1AF2A7C();

  v32 = v54;
  v33 = *(v54 + 16);
  v34 = v53;
  v33(v53, v31, v3);
  *&v60 = v59;
  *(&v60 + 1) = v55;
  v35 = v50;
  *&v61 = v50;
  *(&v61 + 1) = v24;
  v48 = v24;
  v36 = v49;
  *&v62 = v49;
  *(&v62 + 1) = v56;
  *&v63 = v58;
  *(&v63 + 1) = v57;
  v37 = v47;
  v64 = v47;
  v38 = v52;
  v52[64] = v47;
  v39 = v63;
  *(v38 + 2) = v62;
  *(v38 + 3) = v39;
  v40 = v61;
  *v38 = v60;
  *(v38 + 1) = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6610, &qword_1E1B1BC78);
  v33(&v38[*(v41 + 48)], v34, v3);
  sub_1E134FD1C(&v60, &v65, &qword_1ECEB6618, &qword_1E1B1BC80);
  v42 = *(v32 + 8);
  v42(v31, v3);
  v42(v34, v3);
  v65 = v59;
  v66 = v55;
  v67 = v35;
  v68 = v48;
  v69 = v36;
  v70 = v56;
  v71 = v58;
  v72 = v57;
  v73 = v37;
  return sub_1E1308058(&v65, &qword_1ECEB6618, &qword_1E1B1BC80);
}

uint64_t sub_1E15D48A4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6608, &qword_1E1B1BC70);
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB65E8, &qword_1E1B1BC68);
  *(a3 + *(result + 36)) = v5;
  return result;
}

void sub_1E15D4944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteArtworkView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10[0] = *(a1 + *(v7 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB65C0, &qword_1E1B1BC38);
  sub_1E1AF2BFC();
  if (v11)
  {
  }

  else if (*(a1 + *(v4 + 40)))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB65D0, &unk_1E1B1BC48);
    sub_1E1AF2BFC();
    sub_1E15D5508(a1, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RemoteArtworkView);
    v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v9 = swift_allocObject();
    sub_1E15D64B0(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for RemoteArtworkView);
    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)(a2, 1, v10, sub_1E15D6730, v9);

    sub_1E1308058(v10, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  else
  {
    type metadata accessor for ArtworkLoader();
    sub_1E15D53D8(&qword_1ECEB2E70, type metadata accessor for ArtworkLoader, &protocol conformance descriptor for ArtworkLoader);
    sub_1E1AF231C();
    __break(1u);
  }
}

void *sub_1E15D4B8C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v5 = result;
    type metadata accessor for RemoteArtworkView(0);
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB65C0, &qword_1E1B1BC38);
    return sub_1E1AF2C0C();
  }

  return result;
}

uint64_t sub_1E15D4C00(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for RemoteArtworkView(0) + 40)))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB65D0, &unk_1E1B1BC48);
    sub_1E1AF2BFC();
    ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)(v2, 1);

    return sub_1E134B88C(v2);
  }

  else
  {
    type metadata accessor for ArtworkLoader();
    sub_1E15D53D8(&qword_1ECEB2E70, type metadata accessor for ArtworkLoader, &protocol conformance descriptor for ArtworkLoader);
    result = sub_1E1AF231C();
    __break(1u);
  }

  return result;
}

__n128 sub_1E15D4CF0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AD8, &unk_1E1B0AB10);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23[-v10];
  sub_1E15D4FB0(a1, v27);
  v25 = *&v27[0];
  v24 = BYTE8(v27[0]);
  v12 = BYTE9(v27[0]);
  _sSo6CGSizeV11AppStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  v13 = sub_1E1AF127C();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v11, 0, 1, v13);
  v15 = *(a1 + 80);
  *&v27[0] = *(a1 + 72);
  *(&v27[0] + 1) = v15;
  v16 = Artwork.Crop.preferredContentMode.getter();
  sub_1E134FD1C(v11, v8, &qword_1ECEB2AD8, &unk_1E1B0AB10);
  v17 = (*(v14 + 48))(v8, 1, v13);
  if (v17 == 1)
  {
    sub_1E1308058(v11, &qword_1ECEB2AD8, &unk_1E1B0AB10);
    sub_1E1308058(v8, &qword_1ECEB2AD8, &unk_1E1B0AB10);
    v18 = 0;
  }

  else
  {
    sub_1E1AF121C();
    v18 = v19;
    sub_1E1308058(v11, &qword_1ECEB2AD8, &unk_1E1B0AB10);
    (*(v14 + 8))(v8, v13);
  }

  sub_1E1AF2D1C();
  sub_1E1AF214C();
  *&v26[6] = v27[0];
  *&v26[22] = v27[1];
  *&v26[38] = v27[2];
  *a2 = v25;
  *(a2 + 8) = v24;
  *(a2 + 9) = v12;
  *(a2 + 16) = v18;
  *(a2 + 24) = v17 == 1;
  *(a2 + 25) = v16 != 1;
  result = *v26;
  v21 = *&v26[16];
  v22 = *&v26[32];
  *(a2 + 72) = *&v26[46];
  *(a2 + 58) = v22;
  *(a2 + 42) = v21;
  *(a2 + 26) = result;
  return result;
}

void sub_1E15D4FB0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = v4;
    sub_1E1AF2AAC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6700, &qword_1E1B1BDF8);
    sub_1E15D7068();
    sub_1E1AF259C();
  }

  else
  {
    sub_1E1AF2AEC();
    sub_1E1AF26DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6700, &qword_1E1B1BDF8);
    sub_1E15D7068();
    sub_1E1AF259C();
  }

  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 9) = v8;
}

void sub_1E15D50DC(void **a1, void (*a2)(void **__return_ptr))
{
  a2(&v5);
  v3 = v5;
  v4 = *a1;
  if (v5)
  {

    v4 = v3;
  }

  *a1 = v4;
}

uint64_t sub_1E15D5134(uint64_t a1)
{
  v2 = sub_1E1AF2BBC();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1E1AF238C();
}

uint64_t sub_1E15D51FC(uint64_t a1, double a2, double a3)
{
  result = 0;
  if (a2 > 0.0 && a3 > 0.0)
  {
    v8 = *(a1 + 72);
    v7 = *(a1 + 80);
    v10 = v8;
    v11 = v7;
    if (Artwork.Crop.preferredContentMode.getter() == 1)
    {
      return Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, a2, a3);
    }

    else
    {
      v10 = v8;
      v11 = v7;

      v9 = Artwork.config(using:cropCodeOverride:prefersLayeredImage:)(&v10, 0, a2, a3);

      return v9;
    }
  }

  return result;
}

double sub_1E15D5358@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SwiftUIArtworkView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  *&result = sub_1E15D1DA0(v4, a1).n128_u64[0];
  return result;
}

uint64_t sub_1E15D53D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E15D5420()
{
  result = qword_1ECEB6460;
  if (!qword_1ECEB6460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6430, &qword_1E1B1B970);
    sub_1E15D53D8(&qword_1ECEB6448, type metadata accessor for SwiftUIArtworkView.SizedContent, "1Z6\rx7\v");
    sub_1E1302CD4(&qword_1ECEB6450, &qword_1ECEB6440, &qword_1E1B1B980, MEMORY[0x1E697E378]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6460);
  }

  return result;
}

uint64_t sub_1E15D5508(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E15D5570(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1E15D55F8(uint64_t a1)
{
  type metadata accessor for Artwork(319);
  if (v1 <= 0x3F)
  {
    sub_1E15D57E8(319, &qword_1EE1D23F0, type metadata accessor for CGSize, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1E1AF2BAC();
      if (v3 <= 0x3F)
      {
        sub_1E15D5FB4(319, &qword_1ECEB6420, MEMORY[0x1E697DBF0], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E15D5734(uint64_t a1)
{
  type metadata accessor for Artwork(319);
  if (v1 <= 0x3F)
  {
    sub_1E15D57E8(319, &qword_1ECEB6498, MEMORY[0x1E69816E8], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E15D57E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1E15D584C()
{
  result = qword_1ECEB64A0;
  if (!qword_1ECEB64A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB64A8, &qword_1E1B1B9F8);
    sub_1E15D53D8(&qword_1ECEB6458, type metadata accessor for SystemArtworkView, &unk_1E1B1BA00);
    sub_1E15D5420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB64A0);
  }

  return result;
}

unint64_t sub_1E15D5980()
{
  result = qword_1ECEB6508;
  if (!qword_1ECEB6508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6500, &unk_1E1B1BAE0);
    sub_1E1302CD4(&qword_1ECEB6510, &qword_1ECEB6518, &qword_1E1B1BAF0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6508);
  }

  return result;
}

void sub_1E15D5A60(uint64_t a1)
{
  type metadata accessor for Artwork(319);
  if (v1 <= 0x3F)
  {
    sub_1E15D57E8(319, &qword_1EE1D23F0, type metadata accessor for CGSize, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1E1AF2BAC();
      if (v3 <= 0x3F)
      {
        sub_1E15D5FB4(319, &qword_1ECEB6420, MEMORY[0x1E697DBF0], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1E15D57E8(319, &qword_1ECEB6498, MEMORY[0x1E69816E8], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1AF2BAC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm_1(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1AF2BAC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1E15D5D28(uint64_t a1)
{
  type metadata accessor for Artwork(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      sub_1E1AF2BAC();
      if (v3 <= 0x3F)
      {
        sub_1E15D57E8(319, &qword_1EE1D23F0, type metadata accessor for CGSize, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1E15D5FB4(319, &qword_1ECEB6420, MEMORY[0x1E697DBF0], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1E15D5EBC(319);
            if (v6 <= 0x3F)
            {
              sub_1E15D5F50(319);
              if (v7 <= 0x3F)
              {
                sub_1E15D5FB4(319, &qword_1ECEB6550, MEMORY[0x1E69E69B8], MEMORY[0x1E6981790]);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1E15D5EBC(uint64_t a1)
{
  if (!qword_1ECEB6540)
  {
    type metadata accessor for ArtworkLoader();
    sub_1E15D53D8(&qword_1ECEB2E70, type metadata accessor for ArtworkLoader, &protocol conformance descriptor for ArtworkLoader);
    v1 = sub_1E1AF233C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECEB6540);
    }
  }
}

void sub_1E15D5F50(uint64_t a1)
{
  if (!qword_1ECEB6548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB64E8, &qword_1E1B1BAC8);
    v1 = sub_1E1AF2C2C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECEB6548);
    }
  }
}

void sub_1E15D5FB4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1E15D6004()
{
  result = qword_1ECEB6558;
  if (!qword_1ECEB6558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB64C8, &qword_1E1B1BAB8);
    sub_1E15D60BC();
    sub_1E1302CD4(&qword_1ECEB2FA8, &qword_1ECEB2FB0, &qword_1E1B05590, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6558);
  }

  return result;
}

unint64_t sub_1E15D60BC()
{
  result = qword_1ECEB6560;
  if (!qword_1ECEB6560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB64C0, &qword_1E1B1BAB0);
    sub_1E15D6148();
    sub_1E15D6398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6560);
  }

  return result;
}

unint64_t sub_1E15D6148()
{
  result = qword_1ECEB6568;
  if (!qword_1ECEB6568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB64B8, &qword_1E1B1BAA8);
    sub_1E15D61D4();
    sub_1E15D6344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6568);
  }

  return result;
}

unint64_t sub_1E15D61D4()
{
  result = qword_1ECEB6570;
  if (!qword_1ECEB6570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB64B0, &qword_1E1B1BAA0);
    sub_1E15D6258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6570);
  }

  return result;
}

unint64_t sub_1E15D6258()
{
  result = qword_1ECEB6578;
  if (!qword_1ECEB6578)
  {
    sub_1E15D53D8(&qword_1ECEB64D8, type metadata accessor for RemoteArtworkView, &unk_1E1B1BBD0);
    sub_1E15D53D8(&qword_1ECEB64E0, type metadata accessor for BundleArtworkView, &unk_1E1B1BB80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6578);
  }

  return result;
}

unint64_t sub_1E15D6344()
{
  result = qword_1ECEB6588;
  if (!qword_1ECEB6588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6588);
  }

  return result;
}

unint64_t sub_1E15D6398()
{
  result = qword_1ECEB6590;
  if (!qword_1ECEB6590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6590);
  }

  return result;
}

unint64_t sub_1E15D63EC()
{
  result = qword_1ECEB6598;
  if (!qword_1ECEB6598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB65A0, &qword_1E1B1BB78);
    sub_1E15D5980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6598);
  }

  return result;
}

uint64_t sub_1E15D64B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1E15D6518()
{
  v1 = *(type metadata accessor for RemoteArtworkView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1E15D4944(v0 + v2, v3);
}

uint64_t sub_1E15D65A4()
{
  v1 = *(type metadata accessor for RemoteArtworkView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1E15D4C00(v2);
}

uint64_t objectdestroy_49Tm_0()
{
  v1 = (type metadata accessor for RemoteArtworkView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  v4 = sub_1E1AF2BAC();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v2 + v1[14]));

  return swift_deallocObject();
}

void *sub_1E15D6730(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for RemoteArtworkView(0) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_1E15D4B8C(a1, a2, a3, a4, v10);
}

unint64_t sub_1E15D67D0()
{
  result = qword_1ECEB65F0;
  if (!qword_1ECEB65F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB65F0);
  }

  return result;
}

unint64_t sub_1E15D6824()
{
  result = qword_1ECEB65F8;
  if (!qword_1ECEB65F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB65E8, &qword_1E1B1BC68);
    sub_1E1302CD4(&qword_1ECEB6600, &qword_1ECEB6608, &qword_1E1B1BC70, MEMORY[0x1E697FEC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB65F8);
  }

  return result;
}

unint64_t sub_1E15D68DC()
{
  result = qword_1ECEB6648;
  if (!qword_1ECEB6648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6640, &qword_1E1B1BCA8);
    sub_1E15D6968();
    sub_1E15D6BB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6648);
  }

  return result;
}

unint64_t sub_1E15D6968()
{
  result = qword_1ECEB6650;
  if (!qword_1ECEB6650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6638, &qword_1E1B1BCA0);
    sub_1E15D6A20();
    sub_1E1302CD4(&qword_1ECEB6510, &qword_1ECEB6518, &qword_1E1B1BAF0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6650);
  }

  return result;
}

unint64_t sub_1E15D6A20()
{
  result = qword_1ECEB6658;
  if (!qword_1ECEB6658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6660, &qword_1E1B1BCB0);
    sub_1E15D6AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6658);
  }

  return result;
}

unint64_t sub_1E15D6AAC()
{
  result = qword_1ECEB6668;
  if (!qword_1ECEB6668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6670, &qword_1E1B1BCB8);
    sub_1E15D6C9C(&qword_1ECEB6678, &qword_1ECEB6680, &qword_1E1B1BCC0, sub_1E15D6344);
    sub_1E15D6B64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6668);
  }

  return result;
}

unint64_t sub_1E15D6B64()
{
  result = qword_1ECEB6688;
  if (!qword_1ECEB6688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6688);
  }

  return result;
}

unint64_t sub_1E15D6BB8()
{
  result = qword_1ECEB6690;
  if (!qword_1ECEB6690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6628, &qword_1E1B1BC90);
    sub_1E15D6C9C(&qword_1ECEB6698, &qword_1ECEB66A0, &qword_1E1B1BCC8, sub_1E15D6B64);
    sub_1E1302CD4(&qword_1ECEB6510, &qword_1ECEB6518, &qword_1E1B1BAF0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6690);
  }

  return result;
}

uint64_t sub_1E15D6C9C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E15D6D40()
{
  result = qword_1ECEB66A8;
  if (!qword_1ECEB66A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB66B0, "Dh\a");
    sub_1E15D6DC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB66A8);
  }

  return result;
}

unint64_t sub_1E15D6DC4()
{
  result = qword_1ECEB66B8;
  if (!qword_1ECEB66B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB65A8, &qword_1E1B1BC20);
    sub_1E15D6E50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB66B8);
  }

  return result;
}

unint64_t sub_1E15D6E50()
{
  result = qword_1ECEB66C0;
  if (!qword_1ECEB66C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB65C8, &qword_1E1B1BC40);
    sub_1E15D6F08();
    sub_1E1302CD4(&qword_1ECEB66E0, &qword_1ECEB66E8, &qword_1E1B1BD48, MEMORY[0x1E6980758]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB66C0);
  }

  return result;
}

unint64_t sub_1E15D6F08()
{
  result = qword_1ECEB66C8;
  if (!qword_1ECEB66C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB65B8, &qword_1E1B1BC30);
    sub_1E1302CD4(&qword_1ECEB66D0, &qword_1ECEB66D8, &qword_1E1B1BD40, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB66C8);
  }

  return result;
}

unint64_t sub_1E15D6FC0()
{
  result = qword_1ECEB66F0;
  if (!qword_1ECEB66F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB66F8, qword_1E1B1BD50);
    sub_1E15D68DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB66F0);
  }

  return result;
}

unint64_t sub_1E15D7068()
{
  result = qword_1ECEB6708;
  if (!qword_1ECEB6708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6700, &qword_1E1B1BDF8);
    sub_1E1302CD4(&qword_1ECEB6710, &qword_1ECEB6718, &qword_1E1B1BE00, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6708);
  }

  return result;
}

unint64_t sub_1E15D7120()
{
  result = qword_1ECEB6720;
  if (!qword_1ECEB6720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6728, &qword_1E1B1BE08);
    sub_1E15D71AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6720);
  }

  return result;
}

unint64_t sub_1E15D71AC()
{
  result = qword_1ECEB6730;
  if (!qword_1ECEB6730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6738, &qword_1E1B1BE10);
    sub_1E15D7238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6730);
  }

  return result;
}

unint64_t sub_1E15D7238()
{
  result = qword_1ECEB6740;
  if (!qword_1ECEB6740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6748, &qword_1E1B1BE18);
    sub_1E15D72BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6740);
  }

  return result;
}

unint64_t sub_1E15D72BC()
{
  result = qword_1ECEB6750;
  if (!qword_1ECEB6750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6758, &qword_1E1B1BE20);
    sub_1E15D7068();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6750);
  }

  return result;
}

uint64_t NSUserDefaults.date(for:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [objc_opt_self() standardUserDefaults];
  sub_1E1AF6FEC();

  *&v17 = 0xD00000000000001BLL;
  *(&v17 + 1) = 0x80000001E1B65AD0;
  v5 = 0xED000065726F7453;
  v6 = 0x7070416F5477656ELL;
  v7 = 0xEF676E6972696150;
  v8 = 0x686374615777656ELL;
  if (v3 != 2)
  {
    v8 = 0xD000000000000013;
    v7 = 0x80000001E1B57920;
  }

  if (v3)
  {
    v6 = 0xD000000000000010;
    v5 = 0x80000001E1B578F0;
  }

  if (v3 <= 1)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (v3 <= 1)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  MEMORY[0x1E68FECA0](v9, v10);

  v11 = sub_1E1AF5DBC();

  v12 = [v4 objectForKey_];

  if (v12)
  {
    sub_1E1AF6EBC();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (*(&v18 + 1))
  {
    v13 = sub_1E1AEFE6C();
    v14 = swift_dynamicCast();
    return (*(*(v13 - 8) + 56))(a2, v14 ^ 1u, 1, v13);
  }

  else
  {
    sub_1E13E44F8(v19);
    v16 = sub_1E1AEFE6C();
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }
}

void _sSo14NSUserDefaultsC11AppStoreKitE3add_4withyAC26TodayCardTriggerIdentifierO_10Foundation4DateVtF_0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1E1AEFDBC();
  sub_1E1AF6FEC();

  v4 = 0xED000065726F7453;
  v5 = 0x7070416F5477656ELL;
  v6 = 0xEF676E6972696150;
  v7 = 0x686374615777656ELL;
  if (v1 != 2)
  {
    v7 = 0xD000000000000013;
    v6 = 0x80000001E1B57920;
  }

  if (v1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001E1B578F0;
  }

  if (v1 <= 1)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (v1 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  MEMORY[0x1E68FECA0](v8, v9);

  v10 = sub_1E1AF5DBC();

  [v2 setObject:v3 forKey:v10];
}

void _sSo14NSUserDefaultsC11AppStoreKitE6removeyyAC26TodayCardTriggerIdentifierOF_0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() standardUserDefaults];
  sub_1E1AF6FEC();

  v3 = 0xED000065726F7453;
  v4 = 0x7070416F5477656ELL;
  v5 = 0xEF676E6972696150;
  v6 = 0x686374615777656ELL;
  if (v1 != 2)
  {
    v6 = 0xD000000000000013;
    v5 = 0x80000001E1B57920;
  }

  if (v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001E1B578F0;
  }

  if (v1 <= 1)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (v1 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  MEMORY[0x1E68FECA0](v7, v8);

  v9 = sub_1E1AF5DBC();

  [v2 removeObjectForKey_];
}

double ShelfBasedProductPageIntent.init(deserializing:using:)@<D0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v54 = a2;
  v5 = sub_1E1AF39DC();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v44 - v8;
  v10 = sub_1E1AF380C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  v19 = sub_1E1AEFCCC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a3;
  *a3 = 0xD00000000000001BLL;
  a3[1] = 0x80000001E1B1BE30;
  v59 = a1;
  sub_1E1AF381C();
  sub_1E1AF36FC();
  v22 = v18;
  v48 = *(v11 + 8);
  v49 = v10;
  v23 = v11 + 8;
  v48(v22, v10);
  if ((*(v20 + 48))(v9, 1, v19) == 1)
  {
    sub_1E1308058(v9, &unk_1ECEB4B60, &unk_1E1B02620);
    v24 = sub_1E1AF5A7C();
    sub_1E15D8478(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    v26 = v25;
    v27 = type metadata accessor for ShelfBasedProductPageIntent(0);
    *v26 = 7107189;
    v26[1] = 0xE300000000000000;
    v26[2] = v27;
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69AB690], v24);
    swift_willThrow();
    (*(v52 + 8))(v54, v53);
    v48(v59, v49);
  }

  else
  {
    v29 = v50;
    (*(v20 + 32))(v50, v9, v19);
    sub_1E1AF381C();
    v30 = sub_1E1AF370C();
    v31 = v48;
    v32 = v49;
    v44 = v23;
    v48(v15, v49);
    v33 = type metadata accessor for ShelfBasedProductPageIntent(0);
    v34 = *(v33 + 20);
    v35 = v33;
    v45 = v33;
    v36 = v51;
    (*(v20 + 16))(v51 + v34, v29, v19);
    *(v36 + *(v35 + 24)) = v30 & 1;
    sub_1E1AF381C();
    v37 = v52;
    v38 = v53;
    v39 = v54;
    (*(v52 + 16))(v47, v54, v53);
    sub_1E15D7EC0();
    sub_1E1AF464C();
    (*(v37 + 8))(v39, v38);
    v31(v59, v32);
    (*(v20 + 8))(v50, v19);
    v40 = v57;
    v41 = v58;
    v42 = v51 + *(v45 + 28);
    result = *&v55;
    v43 = v56;
    *v42 = v55;
    *(v42 + 1) = v43;
    *(v42 + 4) = v40;
    v42[40] = v41;
  }

  return result;
}

uint64_t type metadata accessor for ShelfBasedProductPageIntent(uint64_t a1)
{
  result = qword_1EE1D7460;
  if (!qword_1EE1D7460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E15D7EC0()
{
  result = qword_1EE1F5AC8[0];
  if (!qword_1EE1F5AC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1F5AC8);
  }

  return result;
}

__n128 ShelfBasedProductPageIntent.init(url:preloading:referrerData:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(a3 + 32);
  v9 = *(a3 + 40);
  *a4 = 0xD00000000000001BLL;
  *(a4 + 1) = 0x80000001E1B1BE30;
  v10 = type metadata accessor for ShelfBasedProductPageIntent(0);
  v11 = v10[5];
  v12 = sub_1E1AEFCCC();
  v15 = *(a3 + 16);
  v16 = *a3;
  (*(*(v12 - 8) + 32))(&a4[v11], a1, v12);
  a4[v10[6]] = a2;
  v13 = &a4[v10[7]];
  result = v16;
  *v13 = v16;
  *(v13 + 1) = v15;
  *(v13 + 4) = v8;
  v13[40] = v9;
  return result;
}

uint64_t ShelfBasedProductPageIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ShelfBasedProductPageIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfBasedProductPageIntent(0) + 20);
  v4 = sub_1E1AEFCCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void ShelfBasedProductPageIntent.referrerData.getter(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShelfBasedProductPageIntent(0) + 28);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(v3 + 40);
  *(a1 + 40) = v9;

  sub_1E13E2380(v4, v5, v6, v7, v8, v9);
}

JSValue __swiftcall ShelfBasedProductPageIntent.makeValue(in:)(JSContext in)
{
  v2 = v1;
  v4 = objc_opt_self();
  result.super.isa = [v4 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_10;
  }

  isa = result.super.isa;
  v7 = type metadata accessor for ShelfBasedProductPageIntent(0);
  v8 = isa;
  sub_1E1AEFBDC();
  v9 = [v4 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1E1AF6C5C();
  v10 = [v4 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1E1AF6C5C();
  if (*(v2 + *(v7 + 28) + 8) == 1)
  {
    v11 = in.super.isa;
    v12 = 0;
  }

  else
  {
    v15 = sub_1E194C2F4();
    v13 = in.super.isa;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260, &unk_1E1B14430);
    v12 = sub_1E1AF748C();
    sub_1E1308058(&v15, &qword_1ECEB7260, &unk_1E1B14430);
  }

  v14 = [v4 valueWithObject:v12 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (v14)
  {
    sub_1E1AF6C5C();

    return v8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1E15D8478(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *ClearSearchHistoryAction.__allocating_init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a4;
  v33 = a5;
  v30 = a2;
  v31 = a3;
  v10 = sub_1E1AEFEAC();
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v29 = a1;
  sub_1E134FD1C(a1, v39, &unk_1ECEB5670, qword_1E1B03EC0);
  v14 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v15 = sub_1E1AF3E1C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v28 = a6;
  v17(&v13[v14], a6, v15);
  sub_1E134FD1C(a7, &v13[OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics], &unk_1ECEB1770, &unk_1E1AFED20);
  v18 = &v13[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v19 = &v13[OBJC_IVAR____TtC11AppStoreKit6Action_id];
  sub_1E134FD1C(v39, &v36, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v37 + 1))
  {
    v20 = v37;
    *v19 = v36;
    *(v19 + 1) = v20;
    *(v19 + 4) = v38;
  }

  else
  {
    sub_1E1AEFE9C();
    v21 = sub_1E1AEFE7C();
    v23 = v22;
    (*(v27 + 8))(v12, v10);
    v34 = v21;
    v35 = v23;
    sub_1E1AF6F6C();
    sub_1E1308058(&v36, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a7, &unk_1ECEB1770, &unk_1E1AFED20);
  (*(v16 + 8))(v28, v15);
  sub_1E1308058(v29, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E1308058(v39, &unk_1ECEB5670, qword_1E1B03EC0);
  v24 = v31;
  *(v13 + 2) = v30;
  *(v13 + 3) = v24;
  v25 = v33;
  *(v13 + 4) = v32;
  *(v13 + 5) = v25;
  return v13;
}

void *ClearSearchHistoryAction.init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v38 = a7;
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v40 = a2;
  v37 = sub_1E1AEFEAC();
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v35 - v14;
  v16 = sub_1E1AF3E1C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v20 = a1;
  v21 = a6;
  v22 = v38;
  sub_1E134FD1C(v20, v52, &unk_1ECEB5670, qword_1E1B03EC0);
  (*(v17 + 16))(v19, v21, v16);
  sub_1E134FD1C(v22, v15, &unk_1ECEB1770, &unk_1E1AFED20);
  v23 = (v8 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v23 = 0u;
  v23[1] = 0u;
  sub_1E134FD1C(v52, &v46, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v47 + 1))
  {
    v49 = v46;
    v50 = v47;
    v51 = v48;
  }

  else
  {
    sub_1E1AEFE9C();
    v24 = v22;
    v25 = sub_1E1AEFE7C();
    v26 = v15;
    v28 = v27;
    (*(v36 + 8))(v12, v37);
    v44 = v25;
    v45 = v28;
    v22 = v24;
    v15 = v26;
    sub_1E1AF6F6C();
    sub_1E1308058(&v46, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(v22, &unk_1ECEB1770, &unk_1E1AFED20);
  (*(v17 + 8))(v21, v16);
  sub_1E1308058(v39, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E1308058(v52, &unk_1ECEB5670, qword_1E1B03EC0);
  v29 = v8 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v29 + 4) = v51;
  v30 = v50;
  *v29 = v49;
  *(v29 + 1) = v30;
  sub_1E134B7C8(v15, v8 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v31 = v41;
  v32 = v42;
  v8[2] = v40;
  v8[3] = v31;
  v33 = v43;
  v8[4] = v32;
  v8[5] = v33;
  (*(v17 + 32))(v8 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v19, v16);
  return v8;
}

char *ClearSearchHistoryAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  v12 = *(v9 + 16);
  v16 = a1;
  v12(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = Action.init(deserializing:using:)(v11, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v16, v8);
  return v13;
}

char *ClearSearchHistoryAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v17 = a1;
  v13(v12, a1, v8, v10);
  (*(v5 + 16))(v7, a2, v4);
  v14 = Action.init(deserializing:using:)(v12, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v17, v8);
  return v14;
}

uint64_t ClearSearchHistoryAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  return v0;
}

uint64_t ClearSearchHistoryAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ClearSearchHistoryAction(uint64_t a1)
{
  result = qword_1EE1D96F8;
  if (!qword_1EE1D96F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E15D9180()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1ECEB6768);
  __swift_project_value_buffer(v4, qword_1ECEB6768);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

id sub_1E15D9360(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v58 = a2;
  v60 = a1;
  v61 = a5;
  v56 = a4;
  v5 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v57 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF5AAC();
  v55 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20, &unk_1E1B02E40);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v52 - v11;
  v13 = sub_1E1AF39DC();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E1AF380C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v52 - v21;
  v23 = v59;
  sub_1E1AF6C0C();
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v59 = v12;
    v53 = v7;
    v54 = v9;
    (*(v17 + 16))(v19, v22, v16);
    sub_1E1AF39CC();
    v25 = sub_1E1608068(v19, v15);
    v27 = v26;
    v29 = v28;
    v30 = swift_allocObject();
    v31 = v56;
    v30[2] = v56;
    v30[3] = v25;
    v30[4] = v27;
    v30[5] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6798, &qword_1E1B1C050);
    v32 = v31;
    v56 = v25;

    v33 = sub_1E1AF588C();
    v34 = sub_1E1AF649C();
    v35 = v59;
    (*(*(v34 - 8) + 56))(v59, 1, 1, v34);
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = &unk_1E1B1C048;
    v36[5] = v30;
    v36[6] = v33;

    sub_1E1974308(0, 0, v35, &unk_1E1B1C058, v36);

    v37 = swift_allocObject();
    v38 = v61;
    *(v37 + 16) = v33;
    *(v37 + 24) = v38;
    sub_1E1AF490C();

    v40 = MEMORY[0x1E68FD610](v39);
    if (v40)
    {
      v41 = v40;
      v52[1] = v33;
      v59 = v29;
      v42 = swift_allocObject();
      *(v42 + 16) = 0;
      *(v42 + 24) = 1;
      *(v42 + 32) = v41;
      *(v42 + 40) = sub_1E15DBED0;
      *(v42 + 48) = v37;
      v43 = v60;

      v44 = v54;
      sub_1E1AF5A8C();

      v51 = sub_1E1AF5A9C();

      (*(v55 + 8))(v44, v53);
      (*(v17 + 8))(v22, v16);
LABEL_10:
      sub_1E15DADAC(v58, "MetricIdentifierPromise");
      return v51;
    }

    sub_1E13EB930();
    v24 = swift_allocError();
    *v45 = 0;
    swift_willThrow();

    (*(v17 + 8))(v22, v16);
  }

  if (qword_1ECEB0EC8 != -1)
  {
    swift_once();
  }

  v46 = sub_1E1AF591C();
  __swift_project_value_buffer(v46, qword_1ECEB6768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  swift_getErrorValue();
  v47 = v62;
  v48 = v63;
  v64[3] = v63;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v64);
  (*(*(v48 - 8) + 16))(boxed_opaque_existential_0, v47, v48);
  sub_1E1AF384C();
  sub_1E13E44F8(v64);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF54AC();

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v51 = result;
    sub_1E15DB6B0(v61, "MetricIdentifier");

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E15D9B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E15D9B50, 0, 0);
}

uint64_t sub_1E15D9B50()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E15D9C08;
  v4 = v0[5];

  return sub_1E1602308(v2, 0, v4, v1);
}

uint64_t sub_1E15D9C08(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1E15D9D64, 0, 0);
  }
}

uint64_t sub_1E15D9D64()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 72);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_1E15D9D88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v10 = *a1;
  v11 = a1[1];

  v7 = sub_1E1AF755C();
  v8 = [objc_opt_self() valueWithObject:v7 inContext:{a3, v10, v11}];
  result = swift_unknownObjectRelease();
  if (v8)
  {
    *a4 = v8;
    return sub_1E15DB420(a2, "MetricIdentifier");
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E15D9EC4(id a1)
{
  v3 = sub_1E1AF39DC();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - v11;
  sub_1E1AF6C0C();
  if (v1)
  {
    return a1;
  }

  (*(v7 + 16))(v9, v12, v6);
  sub_1E1AF39CC();
  v13 = sub_1E1608068(v9, v5);
  v15 = v14;
  v17 = v16;
  v18 = v13;
  v26 = v13;

  v20 = sub_1E16030D0(v18, 0, v15, v17);
  v22 = v21;
  v23 = v26;

  v25[0] = v20;
  v25[1] = v22;

  v24 = sub_1E1AF755C();
  a1 = [objc_opt_self() valueWithObject:v24 inContext:a1];
  result = swift_unknownObjectRelease();
  if (a1)
  {
    (*(v7 + 8))(v12, v6);

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E15DA248(const char *a1, const char *a2, const char *a3, uint64_t a4)
{
  v43 = a4;
  v37 = a3;
  v41 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_1E1AF0F7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v14 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v14, qword_1EE1F7BE8);
  sub_1E1AF0F8C();
  sub_1E1AF0F4C();
  v15 = sub_1E1AF0F8C();
  v16 = sub_1E1AF6A1C();
  if (sub_1E1AF6D6C())
  {
    v17 = v5;
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v15, v16, v19, a2, "", v18, 2u);
    v20 = v18;
    v5 = v17;
    MEMORY[0x1E6901640](v20, -1, -1);
  }

  v21 = *(v6 + 16);
  v21(v10, v13, v5);
  sub_1E1AF0FEC();
  swift_allocObject();
  v38 = sub_1E1AF0FDC();
  v22 = v6 + 8;
  v23 = *(v6 + 8);
  v39 = v22;
  v23(v13, v5);
  sub_1E1AF0F8C();
  v24 = v44;
  sub_1E1AF0F4C();
  v25 = sub_1E1AF0F8C();
  v26 = sub_1E1AF6A1C();
  if (sub_1E1AF6D6C())
  {
    v27 = v5;
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v25, v26, v29, v37, "", v28, 2u);
    v30 = v28;
    v5 = v27;
    v24 = v44;
    MEMORY[0x1E6901640](v30, -1, -1);
  }

  v21(v10, v24, v5);
  swift_allocObject();
  v31 = sub_1E1AF0FDC();
  v23(v24, v5);
  sub_1E13006E4(0, &qword_1EE1E2DB8, 0x1E696EB40);
  v32 = sub_1E1AF6D4C();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v41;
  v33 = v42;
  *(&v37 - 6) = v38;
  *(&v37 - 5) = v34;
  *(&v37 - 4) = v33;
  *(&v37 - 3) = v31;
  *(&v37 - 2) = ObjectType;
  v35 = sub_1E1AF6D5C();

  return v35;
}

id sub_1E15DA620(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v52 = a2;
  v54 = a1;
  v55 = a5;
  v50 = a4;
  v5 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF5AAC();
  v49 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20, &unk_1E1B02E40);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v47 - v11;
  v13 = sub_1E1AF39DC();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = sub_1E1AF380C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  v21 = v53;
  sub_1E1AF6C0C();
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v53 = v12;
    v47 = v7;
    v48 = v9;
    (*(v15 + 16))(v17, v20, v14);
    sub_1E1AF39CC();
    sub_1E15DBA90();
    v23 = sub_1E1AF62EC();
    v24 = swift_allocObject();
    v25 = v50;
    *(v24 + 16) = v50;
    *(v24 + 24) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6790, &qword_1E1B3F900);
    v26 = v25;
    v27 = sub_1E1AF588C();
    v28 = sub_1E1AF649C();
    v29 = v53;
    (*(*(v28 - 8) + 56))(v53, 1, 1, v28);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = &unk_1E1B1C020;
    v30[5] = v24;
    v30[6] = v27;

    sub_1E1974308(0, 0, v29, &unk_1E1B1C030, v30);

    v31 = swift_allocObject();
    v32 = v55;
    *(v31 + 16) = v27;
    *(v31 + 24) = v32;
    sub_1E1AF490C();

    v34 = MEMORY[0x1E68FD610](v33);
    if (v34)
    {
      v35 = v34;
      v36 = v20;
      v37 = swift_allocObject();
      *(v37 + 16) = 0;
      *(v37 + 24) = 1;
      *(v37 + 32) = v35;
      *(v37 + 40) = sub_1E15DBC6C;
      *(v37 + 48) = v31;
      v38 = v54;

      v39 = v48;
      sub_1E1AF5A8C();

      v46 = sub_1E1AF5A9C();

      (*(v49 + 8))(v39, v47);
      (*(v15 + 8))(v36, v14);
LABEL_10:
      sub_1E15DADAC(v52, "MetricFieldsPromise");
      return v46;
    }

    sub_1E13EB930();
    v22 = swift_allocError();
    *v40 = 0;
    swift_willThrow();

    (*(v15 + 8))(v20, v14);
  }

  if (qword_1ECEB0EC8 != -1)
  {
    swift_once();
  }

  v41 = sub_1E1AF591C();
  __swift_project_value_buffer(v41, qword_1ECEB6768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  swift_getErrorValue();
  v42 = v56;
  v43 = v57;
  v58[3] = v57;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v58);
  (*(*(v43 - 8) + 16))(boxed_opaque_existential_0, v42, v43);
  sub_1E1AF384C();
  sub_1E13E44F8(v58);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF54AC();

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v46 = result;
    sub_1E15DB6B0(v55, "MetricFields");

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E15DADAC(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = sub_1E1AF0FBC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF0F7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v10 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v10, qword_1EE1F7BE8);
  v11 = sub_1E1AF0F8C();
  sub_1E1AF0FCC();
  v12 = sub_1E1AF6A0C();
  if (sub_1E1AF6D6C())
  {

    sub_1E1AF0FFC();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
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
    v15 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x1E6901640](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1E15DB03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E15DB060, 0, 0);
}

uint64_t sub_1E15DB060()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1E15DB108;
  v2 = *(v0 + 32);

  return sub_1E1603A6C(v2, 0);
}

uint64_t sub_1E15DB108(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1E15DB254, 0, 0);
  }
}

uint64_t sub_1E15DB278(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a1;
  v11[3] = sub_1E1AF470C();
  v11[4] = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(v11);

  v8 = a1;
  sub_1E1AF46FC();
  sub_1E13006E4(0, &qword_1EE1E32A8, 0x1E696EB58);
  v9 = sub_1E1AF57DC();

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v9;
}

uint64_t sub_1E15DB360@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260, &unk_1E1B14430);
  v7 = sub_1E1AF755C();
  v8 = [objc_opt_self() valueWithObject:v7 inContext:a3];
  result = swift_unknownObjectRelease();
  if (v8)
  {
    *a4 = v8;
    return sub_1E15DB420(a2, "MetricFields");
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E15DB420(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = sub_1E1AF0FBC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF0F7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v10 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v10, qword_1EE1F7BE8);
  v11 = sub_1E1AF0F8C();
  sub_1E1AF0FCC();
  v12 = sub_1E1AF6A0C();
  if (sub_1E1AF6D6C())
  {

    sub_1E1AF0FFC();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "success=true";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x1E6901640](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1E15DB6B0(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = sub_1E1AF0FBC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF0F7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v10 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v10, qword_1EE1F7BE8);
  v11 = sub_1E1AF0F8C();
  sub_1E1AF0FCC();
  v12 = sub_1E1AF6A0C();
  if (sub_1E1AF6D6C())
  {

    sub_1E1AF0FFC();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "success=false";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x1E6901640](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1E15DBA90()
{
  result = qword_1EE1EA200[0];
  if (!qword_1EE1EA200[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1EA200);
  }

  return result;
}

uint64_t sub_1E15DBAE4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E130B5D8;

  return sub_1E15DB03C(a1, v5, v4);
}

uint64_t sub_1E15DBB90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E130B5DC;

  return sub_1E1973A20(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E15DBD34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E130B5DC;

  return sub_1E15D9B28(a1, v4, v5, v7, v6);
}

uint64_t sub_1E15DBDF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E130B5D8;

  return sub_1E197373C(a1, v4, v5, v6, v7, v8);
}

uint64_t ShareSheetData.activityItemProviders(with:enablePrerenderedIconArtwork:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1E1AF127C();
  v157 = *(v6 - 8);
  v158 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v152 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = MEMORY[0x1E69E7CC0];
  v9 = *(v2 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_metadata);
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    v47 = (v9 & 0x3FFFFFFFFFFFFFFFLL);
    if (v10 == 2)
    {
      v48 = type metadata accessor for URLActivityItemProvider();
      v49 = objc_allocWithZone(v48);
      *&v49[OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_shareSheetData] = v2;
      *&v49[OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_artworkLoader] = a1;
      v50 = qword_1ECEB0FE0;
      swift_retain_n();
      swift_retain_n();

      if (v50 != -1)
      {
        swift_once();
      }

      v51 = qword_1ECEB82C0;

      sub_1E15C6454(MEMORY[0x1E69E7CD0], v51);
      *&v49[OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_excludedActivityTypes] = v52;
      v53 = sub_1E1AEFBEC();
      v167.receiver = v49;
      v167.super_class = v48;
      v54 = objc_msgSendSuper2(&v167, sel_initWithPlaceholderItem_, v53);

      v55 = v54;
      MEMORY[0x1E68FEF20]();
      if (*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      sub_1E1AF62AC();
      v56 = v47[2];
      v57 = v47[3];
      v58 = type metadata accessor for TextActivityItemProvider();
      v59 = objc_allocWithZone(v58);
      v60 = &v59[OBJC_IVAR____TtC11AppStoreKit24TextActivityItemProvider_text];
      *v60 = v56;
      *(v60 + 1) = v57;
      v61 = qword_1ECEB15F8;

      if (v61 != -1)
      {
        swift_once();
      }

      v62 = qword_1ECEBBA18;

      sub_1E15C6454(MEMORY[0x1E69E7CD0], v62);
      *&v59[OBJC_IVAR____TtC11AppStoreKit24TextActivityItemProvider_excludedActivityTypes] = v63;
      v64 = sub_1E1AF5DBC();
      v166.receiver = v59;
      v166.super_class = v58;
      v65 = objc_msgSendSuper2(&v166, sel_initWithPlaceholderItem_, v64);

      v66 = v65;
      MEMORY[0x1E68FEF20]();
      if (*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      sub_1E1AF62AC();
      v67 = v47[6];
      if (v67)
      {
        v156 = v55;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB67A0, &unk_1E1B29640);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E1B02CC0;
        v69 = *MEMORY[0x1E69CDB08];
        *(inited + 32) = *MEMORY[0x1E69CDB08];

        v70 = v69;
        sub_1E1497E68(inited);
        v155 = v71;
        swift_setDeallocating();
        sub_1E15DD498(inited + 32);
        v72 = type metadata accessor for ArtworkActivityItemProvider();
        v73 = objc_allocWithZone(v72);
        v74 = OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_imageBox;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB67A8, &unk_1E1B1C070);
        swift_allocObject();

        *&v73[v74] = sub_1E14C5D90();
        *&v73[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artwork] = v67;
        *&v73[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artworkLoader] = a1;

        _sSo6CGSizeV11AppStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
        LOBYTE(inited) = sub_1E1AF125C();
        (*(v157 + 8))(v8, v158);
        v75 = 600.0;
        if (inited)
        {
          v75 = 150.0;
        }

        v76 = CGSize.fitting(_:mode:)(__PAIR128__(*&v75, *&v75), UIViewContentModeScaleAspectFit);
        *&v73[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artworkConfig] = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, v76.width, v76.height);
        if (qword_1ECEB0FB0 != -1)
        {
          swift_once();
        }

        v77 = qword_1ECEB7CB8;

        sub_1E15C6454(v155, v77);
        *&v73[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_excludedActivityTypes] = v78;
        v73[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = 0;
        v79 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
        v165.receiver = v73;
        v165.super_class = v72;
        v80 = objc_msgSendSuper2(&v165, sel_initWithPlaceholderItem_, v79);
LABEL_62:
        v145 = v80;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170, &qword_1E1B06D90);
        v146 = swift_allocObject();
        *(v146 + 16) = xmmword_1E1B06D70;
        *(v146 + 32) = *&v145[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artworkConfig];
        v147 = v145;

        ArtworkLoader.prefetchArtwork(using:)(v146);

        v148 = v147;
        MEMORY[0x1E68FEF20]();
        if (*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E1AF625C();
        }

        sub_1E1AF62AC();

        goto LABEL_65;
      }
    }

    else
    {
      v116 = type metadata accessor for URLActivityItemProvider();
      v117 = objc_allocWithZone(v116);
      *&v117[OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_shareSheetData] = v2;
      *&v117[OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_artworkLoader] = a1;
      v118 = qword_1ECEB0FE0;
      swift_retain_n();
      swift_retain_n();

      if (v118 != -1)
      {
        swift_once();
      }

      v119 = qword_1ECEB82C0;

      sub_1E15C6454(MEMORY[0x1E69E7CD0], v119);
      *&v117[OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_excludedActivityTypes] = v120;
      v121 = sub_1E1AEFBEC();
      v170.receiver = v117;
      v170.super_class = v116;
      v122 = objc_msgSendSuper2(&v170, sel_initWithPlaceholderItem_, v121);

      v55 = v122;
      MEMORY[0x1E68FEF20]();
      if (*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      sub_1E1AF62AC();
      v123 = v47[2];
      v124 = v47[3];
      v125 = type metadata accessor for TextActivityItemProvider();
      v126 = objc_allocWithZone(v125);
      v127 = &v126[OBJC_IVAR____TtC11AppStoreKit24TextActivityItemProvider_text];
      *v127 = v123;
      *(v127 + 1) = v124;
      v128 = qword_1ECEB15F8;

      if (v128 != -1)
      {
        swift_once();
      }

      v129 = qword_1ECEBBA18;

      sub_1E15C6454(MEMORY[0x1E69E7CD0], v129);
      *&v126[OBJC_IVAR____TtC11AppStoreKit24TextActivityItemProvider_excludedActivityTypes] = v130;
      v131 = sub_1E1AF5DBC();
      v169.receiver = v126;
      v169.super_class = v125;
      v132 = objc_msgSendSuper2(&v169, sel_initWithPlaceholderItem_, v131);

      v66 = v132;
      MEMORY[0x1E68FEF20]();
      if (*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      sub_1E1AF62AC();
      v133 = v47[6];
      if (v133)
      {
        v156 = v55;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB67A0, &unk_1E1B29640);
        v134 = swift_initStackObject();
        *(v134 + 16) = xmmword_1E1B02CC0;
        v135 = *MEMORY[0x1E69CDB08];
        *(v134 + 32) = *MEMORY[0x1E69CDB08];

        v136 = v135;
        sub_1E1497E68(v134);
        v155 = v137;
        swift_setDeallocating();
        sub_1E15DD498(v134 + 32);
        v138 = type metadata accessor for ArtworkActivityItemProvider();
        v139 = objc_allocWithZone(v138);
        v140 = OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_imageBox;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB67A8, &unk_1E1B1C070);
        swift_allocObject();

        *&v139[v140] = sub_1E14C5D90();
        *&v139[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artwork] = v133;
        *&v139[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artworkLoader] = a1;

        _sSo6CGSizeV11AppStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
        LOBYTE(v134) = sub_1E1AF125C();
        (*(v157 + 8))(v8, v158);
        v141 = 600.0;
        if (v134)
        {
          v141 = 150.0;
        }

        v142 = CGSize.fitting(_:mode:)(__PAIR128__(*&v141, *&v141), UIViewContentModeScaleAspectFit);
        *&v139[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artworkConfig] = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, v142.width, v142.height);
        if (qword_1ECEB0FB0 != -1)
        {
          swift_once();
        }

        v143 = qword_1ECEB7CB8;

        sub_1E15C6454(v155, v143);
        *&v139[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_excludedActivityTypes] = v144;
        v139[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = 0;
        v79 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
        v168.receiver = v139;
        v168.super_class = v138;
        v80 = objc_msgSendSuper2(&v168, sel_initWithPlaceholderItem_, v79);
        goto LABEL_62;
      }
    }

    v149 = v171;

    return v149;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB67A0, &unk_1E1B29640);
    v81 = swift_initStackObject();
    v154 = xmmword_1E1B02CC0;
    *(v81 + 16) = xmmword_1E1B02CC0;
    v82 = *MEMORY[0x1E69CDB08];
    *(v81 + 32) = *MEMORY[0x1E69CDB08];
    v83 = v82;
    v156 = (v9 & 0x3FFFFFFFFFFFFFFFLL);

    v153 = v83;
    sub_1E1497E68(v81);
    v85 = v84;
    swift_setDeallocating();
    sub_1E15DD498(v81 + 32);
    v86 = type metadata accessor for URLActivityItemProvider();
    v87 = objc_allocWithZone(v86);
    *&v87[OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_shareSheetData] = v3;
    *&v87[OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_artworkLoader] = a1;
    v88 = qword_1ECEB0FE0;
    swift_retain_n();
    swift_retain_n();
    if (v88 != -1)
    {
      swift_once();
    }

    v89 = qword_1ECEB82C0;

    sub_1E15C6454(v85, v89);
    *&v87[OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_excludedActivityTypes] = v90;
    v91 = sub_1E1AEFBEC();
    v164.receiver = v87;
    v164.super_class = v86;
    v92 = objc_msgSendSuper2(&v164, sel_initWithPlaceholderItem_, v91);

    v93 = v92;
    MEMORY[0x1E68FEF20]();
    if (*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v155 = v93;
    sub_1E1AF62AC();
    v94 = *(v156 + 12);
    v95 = swift_initStackObject();
    *(v95 + 16) = v154;
    *(v95 + 32) = v153;

    sub_1E1497E68(v95);
    v97 = v96;
    swift_setDeallocating();
    sub_1E15DD498(v95 + 32);
    v98 = type metadata accessor for ArtworkActivityItemProvider();
    v99 = objc_allocWithZone(v98);
    v100 = OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_imageBox;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB67A8, &unk_1E1B1C070);
    swift_allocObject();
    *&v99[v100] = sub_1E14C5D90();
    *&v99[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artwork] = v94;
    *&v99[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artworkLoader] = a1;

    _sSo6CGSizeV11AppStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    LOBYTE(v95) = sub_1E1AF125C();
    (*(v157 + 8))(v8, v158);
    v101 = 600.0;
    if (v95)
    {
      v101 = 150.0;
    }

    v102 = CGSize.fitting(_:mode:)(__PAIR128__(*&v101, *&v101), UIViewContentModeScaleAspectFit);
    *&v99[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artworkConfig] = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, v102.width, v102.height);
    if (qword_1ECEB0FB0 != -1)
    {
      swift_once();
    }

    v103 = qword_1ECEB7CB8;

    sub_1E15C6454(v97, v103);
    *&v99[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_excludedActivityTypes] = v104;
    v99[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = a2 & 1;
    v105 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
    v163.receiver = v99;
    v163.super_class = v98;
    v106 = objc_msgSendSuper2(&v163, sel_initWithPlaceholderItem_, v105);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170, &qword_1E1B06D90);
    v107 = swift_allocObject();
    *(v107 + 16) = xmmword_1E1B06D70;
    *(v107 + 32) = *&v106[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artworkConfig];
    v108 = v106;

    ArtworkLoader.prefetchArtwork(using:)(v107);

    v109 = v108;
    MEMORY[0x1E68FEF20]();
    if (*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    sub_1E1AF62AC();
    v110 = *(v156 + 17);
    if (v110)
    {
      v111 = type metadata accessor for NotesMetadataActivityItemProvider();
      v112 = objc_allocWithZone(v111);
      *&v112[OBJC_IVAR____TtC11AppStoreKit33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata] = xmmword_1E1B1C060;
      *&v112[OBJC_IVAR____TtC11AppStoreKit33NotesMetadataActivityItemProvider_metadata] = v110;
      swift_retain_n();
      v113 = sub_1E1AF5DBC();
      v162.receiver = v112;
      v162.super_class = v111;
      v114 = objc_msgSendSuper2(&v162, sel_initWithPlaceholderItem_, v113);

      v115 = v114;
      MEMORY[0x1E68FEF20]();
      if (*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      sub_1E1AF62AC();

      goto LABEL_65;
    }

    v149 = v171;

    v150 = v155;
LABEL_69:

    return v149;
  }

  v11 = type metadata accessor for URLActivityItemProvider();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_shareSheetData] = v2;
  *&v12[OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_artworkLoader] = a1;
  v13 = qword_1ECEB0FE0;
  swift_retain_n();
  swift_retain_n();

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_1ECEB82C0;

  sub_1E15C6454(MEMORY[0x1E69E7CD0], v14);
  *&v12[OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_excludedActivityTypes] = v15;
  v16 = sub_1E1AEFBEC();
  v161.receiver = v12;
  v161.super_class = v11;
  v17 = objc_msgSendSuper2(&v161, sel_initWithPlaceholderItem_, v16);

  v18 = v17;
  MEMORY[0x1E68FEF20]();
  if (*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1E1AF625C();
  }

  v156 = v18;
  sub_1E1AF62AC();
  v19 = *(v9 + 32);
  v20 = *(v9 + 40);
  v21 = type metadata accessor for TextActivityItemProvider();
  v22 = objc_allocWithZone(v21);
  v23 = &v22[OBJC_IVAR____TtC11AppStoreKit24TextActivityItemProvider_text];
  *v23 = v19;
  *(v23 + 1) = v20;
  v24 = qword_1ECEB15F8;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_1ECEBBA18;

  sub_1E15C6454(MEMORY[0x1E69E7CD0], v25);
  *&v22[OBJC_IVAR____TtC11AppStoreKit24TextActivityItemProvider_excludedActivityTypes] = v26;
  v27 = sub_1E1AF5DBC();
  v160.receiver = v22;
  v160.super_class = v21;
  v28 = objc_msgSendSuper2(&v160, sel_initWithPlaceholderItem_, v27);

  v29 = v28;
  MEMORY[0x1E68FEF20]();
  if (*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1E1AF625C();
  }

  sub_1E1AF62AC();
  v30 = *(v9 + 64);
  if (!v30)
  {
    v149 = v171;

    v150 = v156;
    goto LABEL_69;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB67A0, &unk_1E1B29640);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_1E1B02CC0;
  v32 = *MEMORY[0x1E69CDB08];
  *(v31 + 32) = *MEMORY[0x1E69CDB08];

  v33 = v32;
  sub_1E1497E68(v31);
  v155 = v34;
  swift_setDeallocating();
  sub_1E15DD498(v31 + 32);
  v35 = type metadata accessor for ArtworkActivityItemProvider();
  v36 = objc_allocWithZone(v35);
  v37 = OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_imageBox;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB67A8, &unk_1E1B1C070);
  swift_allocObject();

  *&v36[v37] = sub_1E14C5D90();
  *&v36[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artwork] = v30;
  *&v36[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artworkLoader] = a1;

  _sSo6CGSizeV11AppStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  LOBYTE(v31) = sub_1E1AF125C();
  (*(v157 + 8))(v8, v158);
  v38 = 600.0;
  if (v31)
  {
    v38 = 150.0;
  }

  v39 = CGSize.fitting(_:mode:)(__PAIR128__(*&v38, *&v38), UIViewContentModeScaleAspectFit);
  *&v36[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artworkConfig] = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, v39.width, v39.height);
  if (qword_1ECEB0FB0 != -1)
  {
    swift_once();
  }

  v40 = qword_1ECEB7CB8;

  sub_1E15C6454(v155, v40);
  *&v36[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_excludedActivityTypes] = v41;
  v36[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = 0;
  v42 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  v159.receiver = v36;
  v159.super_class = v35;
  v43 = objc_msgSendSuper2(&v159, sel_initWithPlaceholderItem_, v42);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170, &qword_1E1B06D90);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1E1B06D70;
  *(v44 + 32) = *&v43[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artworkConfig];
  v45 = v43;

  ArtworkLoader.prefetchArtwork(using:)(v44);

  v46 = v45;
  MEMORY[0x1E68FEF20]();
  if (*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1E1AF625C();
  }

  sub_1E1AF62AC();

LABEL_65:

  return v171;
}

uint64_t sub_1E15DD498(uint64_t a1)
{
  type metadata accessor for ActivityType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ItemAdvertRotationController.__allocating_init(itemLayoutContext:lifecycleMetricsReporter:visibilityCalculatorTracksOcclusions:objectGraph:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_1E148BABC(a1, v8 + OBJC_IVAR____TtC11AppStoreKit28ItemAdvertRotationController_managedItemLayoutContext);
  v9 = sub_1E15DD688();
  sub_1E147410C(a2, v12);
  v10 = AdvertRotationController.init(adverts:lifecycleMetricsReporter:visibilityCalculatorTracksOcclusions:objectGraph:)(v9, v12, a3, a4);

  sub_1E1308058(a2, &qword_1ECEB24F8, qword_1E1B1C080);
  sub_1E148BB20(a1);
  if (v10)
  {
  }

  return v10;
}

uint64_t ItemAdvertRotationController.init(itemLayoutContext:lifecycleMetricsReporter:visibilityCalculatorTracksOcclusions:objectGraph:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1E148BABC(a1, v4 + OBJC_IVAR____TtC11AppStoreKit28ItemAdvertRotationController_managedItemLayoutContext);
  v9 = sub_1E15DD688();
  sub_1E147410C(a2, v12);
  v10 = AdvertRotationController.init(adverts:lifecycleMetricsReporter:visibilityCalculatorTracksOcclusions:objectGraph:)(v9, v12, a3, a4);

  sub_1E1308058(a2, &qword_1ECEB24F8, qword_1E1B1C080);
  sub_1E148BB20(a1);
  if (v10)
  {
  }

  return v10;
}

void *sub_1E15DD688()
{
  type metadata accessor for ItemLayoutContext(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80, &unk_1E1B042D0);
  sub_1E1AF3DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0, &qword_1E1B02640);
  type metadata accessor for AdvertsSearchResult(0);
  if ((swift_dynamicCast() & 1) == 0 || !v11)
  {
LABEL_17:
    sub_1E1AF3DBC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB26E0, &qword_1E1B02B38);
    if (swift_dynamicCast())
    {
      if (*(&v12 + 1))
      {
        sub_1E1337DC8(&v11, &v14);
        v5 = v15;
        v6 = v16;
        __swift_project_boxed_opaque_existential_1Tm(&v14, v15);
        if (SearchAdOpportunityProviding.isSearchAdOpportunity.getter(v5, v6))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB26D8, &qword_1E1B02B30);
          v7 = swift_allocObject();
          *(v7 + 16) = xmmword_1E1B02CC0;
          sub_1E1337DC8(&v14, (v7 + 32));
          return v7;
        }

        __swift_destroy_boxed_opaque_existential_1(&v14);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
      v11 = 0u;
    }

    sub_1E1308058(&v11, &qword_1ECEB4410, &qword_1E1B1C0D0);
    return MEMORY[0x1E69E7CC0];
  }

  v0 = *(v11 + OBJC_IVAR____TtC11AppStoreKit19AdvertsSearchResult_lockups);
  *&v14 = MEMORY[0x1E69E7CC0];
  if (v0 >> 62)
  {
    goto LABEL_30;
  }

  v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  if (v1)
  {
    v2 = 0;
    while (1)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x1E68FFD80](v2, v0);
        v4 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }
      }

      else
      {
        if (v2 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_30:
          v1 = sub_1E1AF71CC();
          goto LABEL_5;
        }

        v3 = *(v0 + 8 * v2 + 32);

        v4 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_16;
        }
      }

      if (*(v3 + 416))
      {
        sub_1E1AF70BC();
        sub_1E1AF70FC();
        sub_1E1AF710C();
        sub_1E1AF70CC();
      }

      else
      {
      }

      ++v2;
      if (v4 == v1)
      {
        v9 = v14;
        goto LABEL_26;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_26:

  v10 = sub_1E14D6EA4(v9);

  return v10;
}

uint64_t sub_1E15DD974(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4408, &unk_1E1B0CFB0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - v12;
  v14 = v5 + OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_rotationPerforming;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    sub_1E148BABC(v5 + OBJC_IVAR____TtC11AppStoreKit28ItemAdvertRotationController_managedItemLayoutContext, v13);
    v18 = type metadata accessor for ItemLayoutContext(0);
    (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
    (*(v16 + 16))(a1, a2, a3, v13, a4 & 1, a5, ObjectType, v16);
    swift_unknownObjectRelease();
    return sub_1E1308058(v13, &qword_1ECEB4408, &unk_1E1B0CFB0);
  }

  return result;
}

void *ItemAdvertRotationController.deinit()
{
  v0 = AdvertRotationController.deinit();
  sub_1E148BB20(v0 + OBJC_IVAR____TtC11AppStoreKit28ItemAdvertRotationController_managedItemLayoutContext);
  return v0;
}

uint64_t ItemAdvertRotationController.__deallocating_deinit()
{
  v0 = AdvertRotationController.deinit();
  sub_1E148BB20(v0 + OBJC_IVAR____TtC11AppStoreKit28ItemAdvertRotationController_managedItemLayoutContext);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ItemAdvertRotationController(uint64_t a1)
{
  result = qword_1EE1E9920;
  if (!qword_1EE1E9920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E15DDC44(uint64_t a1)
{
  result = type metadata accessor for ItemLayoutContext(319);
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

uint64_t HorizontalRule.__allocating_init(id:style:color:isFullWidth:)(uint64_t a1, char *a2, uint64_t a3, char a4)
{
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = *a2;
  sub_1E138853C(a1, &v20);
  if (*(&v21 + 1))
  {
    v23 = v20;
    v24 = v21;
    v25 = v22;
  }

  else
  {
    sub_1E1AEFE9C();
    v14 = sub_1E1AEFE7C();
    v16 = v15;
    (*(v9 + 8))(v11, v8);
    v19[1] = v14;
    v19[2] = v16;
    sub_1E1AF6F6C();
    sub_1E13E2E98(&v20);
  }

  v17 = v24;
  *(v12 + 40) = v23;
  *(v12 + 56) = v17;
  *(v12 + 72) = v25;
  sub_1E13E2E98(a1);
  *(v12 + 16) = v13;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4 & 1;
  return v12;
}

uint64_t HorizontalRule.init(id:style:color:isFullWidth:)(uint64_t a1, char *a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  sub_1E138853C(a1, &v21);
  if (*(&v22 + 1))
  {
    v24 = v21;
    v25 = v22;
    v26 = v23;
  }

  else
  {
    sub_1E1AEFE9C();
    v15 = sub_1E1AEFE7C();
    v17 = v16;
    (*(v11 + 8))(v13, v10);
    v20[1] = v15;
    v20[2] = v17;
    sub_1E1AF6F6C();
    sub_1E13E2E98(&v21);
  }

  sub_1E13E2E98(a1);
  v18 = v25;
  *(v5 + 40) = v24;
  *(v5 + 56) = v18;
  *(v5 + 72) = v26;
  *(v5 + 16) = v14;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4 & 1;
  return v5;
}

uint64_t HorizontalRule.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  HorizontalRule.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t HorizontalRule.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v37 = a2;
  v5 = sub_1E1AEFEAC();
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  v38 = a1;
  sub_1E1AF381C();
  v20 = sub_1E1AF37CC();
  if (v21)
  {
    v39 = v20;
    v40 = v21;
  }

  else
  {
    sub_1E1AEFE9C();
    v22 = sub_1E1AEFE7C();
    v23 = v5;
    v25 = v24;
    (*(v35 + 8))(v7, v23);
    v39 = v22;
    v40 = v25;
  }

  sub_1E1AF6F6C();
  v26 = *(v9 + 8);
  v26(v19, v8);
  v27 = v42;
  *(v3 + 40) = v41;
  *(v3 + 56) = v27;
  *(v3 + 72) = v43;
  v28 = v38;
  sub_1E1AF381C();
  sub_1E15DE488();
  sub_1E1AF369C();
  v26(v16, v8);
  *(v3 + 16) = v41;
  sub_1E1AF381C();
  v29 = JSONObject.appStoreColor.getter();
  v26(v13, v8);
  if (!v29)
  {
    if (qword_1EE1E3290 != -1)
    {
      swift_once();
    }

    v29 = qword_1EE1E3298;
  }

  *(v3 + 24) = v29;
  v30 = v36;
  sub_1E1AF381C();
  v31 = sub_1E1AF370C();
  v32 = sub_1E1AF39DC();
  (*(*(v32 - 8) + 8))(v37, v32);
  v26(v28, v8);
  v26(v30, v8);
  *(v3 + 32) = v31 & 1;
  return v3;
}

unint64_t sub_1E15DE488()
{
  result = qword_1EE1DFD00;
  if (!qword_1EE1DFD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DFD00);
  }

  return result;
}

uint64_t HorizontalRule.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1E15DE554@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for HorizontalRule();
  v7 = swift_allocObject();
  result = HorizontalRule.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E15DE5CC()
{
  v1 = *v0;
  if ((v1 - 1) > 1)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170, &qword_1E1B06D90);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E1B12AE0;
  v3 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  LODWORD(v4) = 1008981770;
  if (v1 == 1)
  {
    v5 = 9.0;
  }

  else
  {
    *&v4 = 4.0;
    v5 = 5.0;
  }

  *(v2 + 32) = [v3 initWithFloat_];
  v6 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v7 = v5;
  v8 = [v6 initWithFloat_];
  result = v2;
  *(v2 + 40) = v8;
  return result;
}

uint64_t HorizontalRule.Style.lineThickness(traitCollection:)()
{
  if (!*v0)
  {
    return sub_1E1AF1E6C();
  }

  return result;
}

CGMutablePathRef __swiftcall HorizontalRule.Style.path(in:traitCollection:)(__C::CGRect in, UITraitCollection traitCollection)
{
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  v7 = *v2;
  Mutable = CGPathCreateMutable();
  if (v7)
  {
    v9 = 9.0;
    if (v7 == 1)
    {
      v10 = 0.0;
    }

    else
    {
      v9 = 5.0;
      v10 = 4.0;
    }

    v11 = v9 + v10;
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v12 = CGRectGetWidth(v28);
    v13 = 0.0;
    if (v7 == 1)
    {
      v14 = 3.0;
    }

    else
    {
      v14 = 0.0;
    }

    v15 = v12 + -2.0 - v14;
    v16 = v11 * floor(v15 / v11);
    v17 = v15 - v16;
    if (v7 == 1)
    {
      v18 = 5.0;
      v13 = 3.0;
      if (v10 + 3.0 > v17)
      {
        goto LABEL_15;
      }
    }

    else if (v10 > v17)
    {
LABEL_14:
      v18 = v14 + 2.0;
LABEL_15:
      v24 = v18 + v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB67B0, &qword_1E1B1C0D8);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1E1B02CD0;
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = height;
      v25 = v14 + CGRectGetMinX(v33) + 2.0;
      v34.origin.x = x;
      v34.origin.y = y;
      v34.size.width = width;
      v34.size.height = height;
      MidY = CGRectGetMidY(v34);
      *(v19 + 32) = v25;
      *(v19 + 40) = MidY;
      v35.origin.x = x;
      v35.origin.y = y;
      v35.size.width = width;
      v35.size.height = height;
      v23 = CGRectGetMidY(v35);
      *(v19 + 48) = v24;
      goto LABEL_16;
    }

    v16 = v16 + v10 + v13;
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB67B0, &qword_1E1B1C0D8);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1E1B02CD0;
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v20 = CGRectGetMinX(v29) + 2.0;
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v21 = CGRectGetMidY(v30);
  *(v19 + 32) = v20;
  *(v19 + 40) = v21;
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v22 = CGRectGetMaxX(v31) + -2.0;
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v23 = CGRectGetMidY(v32);
  *(v19 + 48) = v22;
LABEL_16:
  *(v19 + 56) = v23;
  sub_1E1AF685C();

  return Mutable;
}

Swift::Void __swiftcall HorizontalRule.Style.applyStyle(to:lineColor:traitCollection:)(CAShapeLayer to, CGColorRef lineColor, UITraitCollection traitCollection)
{
  v5 = *v3;
  [(objc_class *)to.super.super.isa setStrokeColor:lineColor];
  if (sub_1E15DE5CC())
  {
    sub_1E1380D6C();
    v6 = sub_1E1AF620C();
  }

  else
  {
    v6 = 0;
  }

  [(objc_class *)to.super.super.isa setLineDashPattern:v6];

  if (v5 == 1)
  {
    v7 = *MEMORY[0x1E6979E78];
    [(objc_class *)to.super.super.isa setLineCap:v7];

    v8 = 3.0;
  }

  else
  {
    v9 = *MEMORY[0x1E6979E70];
    [(objc_class *)to.super.super.isa setLineCap:v9];

    v8 = 1.0;
    if (!v5)
    {
      sub_1E1AF1E6C();
    }
  }

  [(objc_class *)to.super.super.isa setLineWidth:v8];
}

AppStoreKit::HorizontalRule::Style_optional __swiftcall HorizontalRule.Style.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HorizontalRule.Style.rawValue.getter()
{
  v1 = 0x646574746F44;
  if (*v0 != 1)
  {
    v1 = 0x646568736144;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64696C6F53;
  }
}

uint64_t sub_1E15DEAE8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x646574746F44;
  if (v2 != 1)
  {
    v3 = 0x646568736144;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x64696C6F53;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 0x646574746F44;
  if (*a2 != 1)
  {
    v6 = 0x646568736144;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x64696C6F53;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E1AF74AC();
  }

  return v9 & 1;
}

uint64_t sub_1E15DEBD8()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E15DEC70(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E15DECF4(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E15DED94(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x646574746F44;
  if (v2 != 1)
  {
    v4 = 0x646568736144;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x64696C6F53;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_1E15DEDEC(uint64_t a1, uint64_t a2)
{
  result = qword_1EE1F3E30;
  if (!qword_1EE1F3E30)
  {
    type metadata accessor for HorizontalRule();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1F3E30);
  }

  return result;
}

unint64_t sub_1E15DEE68()
{
  result = qword_1ECEB67B8;
  if (!qword_1ECEB67B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB67B8);
  }

  return result;
}

uint64_t sub_1E15DEF24(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2998, &qword_1E1B1C310);

  return sub_1E1AF582C();
}

uint64_t sub_1E15DEF78(uint64_t a1, uint64_t a2)
{
  type metadata accessor for JSIntentDispatcher();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v4 = sub_1E1367B40(a1, a2, "AppStoreKit/TopChartDiffableSegmentContentPresenter.swift", 57, 2);

  return v4;
}

uint64_t sub_1E15DF00C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for JSIntentDispatcher();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2DF0, &unk_1E1B02CE0);
  v6[0] = swift_allocObject();
  sub_1E134FD1C(a1, v6[0] + 16, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v4 = sub_1E1369714(v6, a2, "AppStoreKit/TopChartDiffableSegmentContentPresenter.swift", 57, 2);

  sub_1E15E0198(v6);
  return v4;
}

uint64_t TopChartDiffableSegmentContentPresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:pageProvider:pageModifier:shelfProvider:moreOfPageProvider:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v70 = a3;
  v71 = a1;
  v63 = a2;
  v74 = a8;
  v75 = a13;
  v76 = a11;
  v59 = a10;
  v72 = a9;
  v73 = a12;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v58 - v19;
  v69 = &v58 - v19;
  v21 = swift_allocObject();
  sub_1E134FD1C(a2, v20, &unk_1ECEB4B60, &unk_1E1B02620);
  v61 = a4;
  v62 = a5;
  if (a4)
  {
    v22 = a5;
  }

  else
  {
    v22 = 0;
  }

  v23 = a6;
  v60 = a7;
  if (a6)
  {
    v24 = a7;
  }

  else
  {
    v24 = 0;
  }

  v67 = v24;
  v68 = v22;
  *(v21 + qword_1EE1E9D48) = 0;
  v25 = MEMORY[0x1E69E7CC0];
  *(v21 + qword_1EE1E9DF8) = MEMORY[0x1E69E7CC0];
  v26 = qword_1EE2166A0;
  sub_1E1300E34(a4, a5);
  sub_1E1300E34(v23, a7);
  v27 = v59;
  v28 = v76;
  sub_1E1300E34(v59, v76);
  *(v21 + v26) = sub_1E159D6F0(v25);
  v29 = (v21 + qword_1EE1E9E00);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v21 + qword_1EE1E9EA0);
  *v30 = 0;
  v30[1] = 0;
  v66 = v30;
  v31 = (v21 + qword_1EE1E9E08);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v21 + qword_1EE1E9DF0);
  *v32 = 0;
  v32[1] = 0;
  v65 = v32;
  v33 = (v21 + qword_1EE1E9E98);
  *v33 = 0;
  v33[1] = 0;
  v64 = v33;
  v34 = (v21 + qword_1EE216698);
  *v34 = 0u;
  v34[1] = 0u;
  *(v34 + 25) = 0u;
  *(v21 + qword_1EE2166D0) = 0;
  *(v21 + qword_1EE1E9D50) = 0;
  *(v21 + qword_1EE1E9DE8) = MEMORY[0x1E69E7CD0];
  *(v21 + qword_1EE2166C8) = 0;
  v35 = qword_1EE2166C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3188, &qword_1E1B06100);
  swift_allocObject();
  *(v21 + v35) = sub_1E1AF5BEC();
  v36 = qword_1EE2166B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590, &unk_1E1B029B0);
  swift_allocObject();
  *(v21 + v36) = sub_1E1AF5BEC();
  v37 = qword_1EE216680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31A0, &qword_1E1B06110);
  swift_allocObject();
  *(v21 + v37) = sub_1E1AF5BEC();
  v38 = qword_1EE2166B0;
  swift_allocObject();
  *(v21 + v38) = sub_1E1AF5BEC();
  v39 = qword_1EE216688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598, &unk_1E1B05F40);
  swift_allocObject();
  *(v21 + v39) = sub_1E1AF5BEC();
  v40 = qword_1EE2166A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0, &qword_1E1B029C0);
  swift_allocObject();
  v41 = sub_1E1AF5BEC();
  sub_1E1300EA8(v27, v28);
  sub_1E1300EA8(v23, v60);
  v42 = v61;
  sub_1E1300EA8(v61, v62);
  sub_1E1308058(v63, &unk_1ECEB4B60, &unk_1E1B02620);
  *(v21 + v40) = v41;
  v43 = qword_1EE1E9DD8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8, &unk_1E1B16230);
  v45 = *(*(v44 - 8) + 56);
  v45(v21 + v43, 1, 1, v44);
  v46 = v44;
  v47 = v70;
  v45(v21 + qword_1EE1E9DE0, 1, 1, v46);
  *(v21 + 16) = v71;
  sub_1E13E23F8(v69, v21 + qword_1EE216678);
  v48 = v67;
  v49 = v68;
  *v29 = v42;
  v29[1] = v49;
  *v31 = v23;
  v31[1] = v48;
  if (v47)
  {
    v50 = swift_allocObject();
    *(v50 + 16) = v47;
    v51 = sub_1E1445E6C;
  }

  else
  {
    v51 = 0;
    v50 = 0;
  }

  v52 = v76;
  if (!v27)
  {
    v52 = 0;
  }

  v54 = v65;
  v53 = v66;
  *v66 = v51;
  v53[1] = v50;
  v55 = v72;
  *v54 = v74;
  v54[1] = v55;
  v56 = v64;
  *v64 = v27;
  v56[1] = v52;
  *(v21 + qword_1EE1E9E90) = v73;
  *(v21 + qword_1EE216690) = v75;
  return v21;
}

uint64_t TopChartDiffableSegmentContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pageProvider:pageModifier:shelfProvider:moreOfPageProvider:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  v70 = a6;
  v79 = a3;
  v80 = a1;
  v73 = a2;
  v86 = a13;
  v84 = a8;
  v85 = a12;
  v82 = a9;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v77 = &v70 - v21;
  sub_1E134FD1C(a2, &v70 - v21, &unk_1ECEB4B60, &unk_1E1B02620);
  v22 = a4;
  v71 = a4;
  v72 = a5;
  if (a4)
  {
    v23 = a5;
  }

  else
  {
    v23 = 0;
  }

  v76 = v23;
  if (a6)
  {
    v24 = a7;
  }

  else
  {
    v24 = 0;
  }

  v78 = v24;
  *(v14 + qword_1EE1E9D48) = 0;
  v25 = MEMORY[0x1E69E7CC0];
  *(v14 + qword_1EE1E9DF8) = MEMORY[0x1E69E7CC0];
  v26 = qword_1EE2166A0;
  sub_1E1300E34(v22, a5);
  v27 = a6;
  v28 = a7;
  sub_1E1300E34(v27, a7);
  sub_1E1300E34(a10, a11);
  *(v14 + v26) = sub_1E159D6F0(v25);
  v29 = (v14 + qword_1EE1E9E00);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v14 + qword_1EE1E9EA0);
  *v30 = 0;
  v30[1] = 0;
  v74 = v30;
  v31 = (v14 + qword_1EE1E9E08);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v14 + qword_1EE1E9DF0);
  *v32 = 0;
  v32[1] = 0;
  v33 = (v14 + qword_1EE1E9E98);
  *v33 = 0;
  v33[1] = 0;
  v75 = v33;
  v34 = (v14 + qword_1EE216698);
  *v34 = 0u;
  v34[1] = 0u;
  *(v34 + 25) = 0u;
  *(v14 + qword_1EE2166D0) = 0;
  *(v14 + qword_1EE1E9D50) = 0;
  *(v14 + qword_1EE1E9DE8) = MEMORY[0x1E69E7CD0];
  *(v14 + qword_1EE2166C8) = 0;
  v35 = qword_1EE2166C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3188, &qword_1E1B06100);
  swift_allocObject();
  *(v14 + v35) = sub_1E1AF5BEC();
  v36 = qword_1EE2166B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590, &unk_1E1B029B0);
  swift_allocObject();
  *(v14 + v36) = sub_1E1AF5BEC();
  v37 = qword_1EE216680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31A0, &qword_1E1B06110);
  swift_allocObject();
  *(v14 + v37) = sub_1E1AF5BEC();
  v38 = qword_1EE2166B0;
  swift_allocObject();
  *(v14 + v38) = sub_1E1AF5BEC();
  v39 = qword_1EE216688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598, &unk_1E1B05F40);
  swift_allocObject();
  *(v14 + v39) = sub_1E1AF5BEC();
  v40 = qword_1EE2166A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0, &qword_1E1B029C0);
  swift_allocObject();
  v41 = sub_1E1AF5BEC();
  v83 = a10;
  v81 = a11;
  sub_1E1300EA8(a10, a11);
  v42 = v70;
  sub_1E1300EA8(v70, v28);
  v43 = v71;
  sub_1E1300EA8(v71, v72);
  sub_1E1308058(v73, &unk_1ECEB4B60, &unk_1E1B02620);
  *(v14 + v40) = v41;
  v44 = qword_1EE1E9DD8;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8, &unk_1E1B16230);
  v46 = *(*(v45 - 8) + 56);
  v46(v14 + v44, 1, 1, v45);
  v47 = v45;
  v48 = v79;
  v46(v14 + qword_1EE1E9DE0, 1, 1, v47);
  *(v14 + 16) = v80;
  sub_1E13E23F8(v77, v14 + qword_1EE216678);
  v49 = *v29;
  v50 = v29[1];
  v51 = v76;
  *v29 = v43;
  v29[1] = v51;
  sub_1E1300EA8(v49, v50);
  v52 = *v31;
  v53 = v31[1];
  v54 = v78;
  *v31 = v42;
  v31[1] = v54;
  sub_1E1300EA8(v52, v53);
  if (v48)
  {
    v55 = swift_allocObject();
    *(v55 + 16) = v48;
    v56 = sub_1E155BD80;
  }

  else
  {
    v56 = 0;
    v55 = 0;
  }

  v57 = v83;
  if (v83)
  {
    v58 = v81;
  }

  else
  {
    v58 = 0;
  }

  v59 = v74;
  v61 = *v74;
  v60 = v74[1];
  *v74 = v56;
  v59[1] = v55;
  sub_1E1300EA8(v61, v60);
  v62 = *v32;
  v63 = v32[1];
  v64 = v82;
  *v32 = v84;
  v32[1] = v64;
  sub_1E1300EA8(v62, v63);
  v65 = v75;
  v66 = *v75;
  v67 = v75[1];
  *v75 = v57;
  v65[1] = v58;
  sub_1E1300EA8(v66, v67);
  v68 = v86;
  *(v14 + qword_1EE1E9E90) = v85;
  *(v14 + qword_1EE216690) = v68;
  return v14;
}

uint64_t TopChartDiffableSegmentContentPresenter.__deallocating_deinit()
{
  _s11AppStoreKit39SearchFocusDiffablePageContentPresenterCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1E15DFB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a4)
  {
    v15 = a5;
  }

  else
  {
    v15 = 0;
  }

  if (a6)
  {
    v16 = a7;
  }

  else
  {
    v16 = 0;
  }

  if (a10)
  {
    v17 = a11;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  TopChartDiffableSegmentContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pageProvider:pageModifier:shelfProvider:moreOfPageProvider:pendingPageRender:pageRenderMetrics:)(a1, a2, a3, a4, v15, a6, v16, a8, a9, a10, v17, a12, a13);
  return v18;
}

uint64_t _s11AppStoreKit39TopChartDiffableSegmentContentPresenterC11objectGraph7segment17pendingPageRender04pageO7MetricsAC9JetEngine010BaseObjectK0C_AA0deG0CAA07PendingnO0CSgAH0noqI0CSgtcfC_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v46 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = sub_1E1AEFCCC();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1E15E0190;
  *(v13 + 24) = a1;
  type metadata accessor for TopChartDiffableSegmentContentPresenter(0);
  v14 = swift_allocObject();
  sub_1E134FD1C(v11, v8, &unk_1ECEB4B60, &unk_1E1B02620);
  *(v14 + qword_1EE1E9D48) = 0;
  v15 = MEMORY[0x1E69E7CC0];
  *(v14 + qword_1EE1E9DF8) = MEMORY[0x1E69E7CC0];
  v16 = qword_1EE2166A0;
  v17 = a1;
  swift_retain_n();
  v18 = a2;
  swift_retain_n();

  *(v14 + v16) = sub_1E159D6F0(v15);
  v19 = (v14 + qword_1EE1E9E00);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v14 + qword_1EE1E9EA0);
  v43 = (v14 + qword_1EE1E9EA0);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v14 + qword_1EE1E9E08);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v14 + qword_1EE1E9DF0);
  v42 = (v14 + qword_1EE1E9DF0);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v14 + qword_1EE1E9E98);
  v41 = (v14 + qword_1EE1E9E98);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v14 + qword_1EE216698);
  *v24 = 0u;
  v24[1] = 0u;
  *(v24 + 25) = 0u;
  *(v14 + qword_1EE2166D0) = 0;
  *(v14 + qword_1EE1E9D50) = 0;
  *(v14 + qword_1EE1E9DE8) = MEMORY[0x1E69E7CD0];
  *(v14 + qword_1EE2166C8) = 0;
  v25 = qword_1EE2166C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3188, &qword_1E1B06100);
  swift_allocObject();
  *(v14 + v25) = sub_1E1AF5BEC();
  v26 = qword_1EE2166B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590, &unk_1E1B029B0);
  swift_allocObject();
  *(v14 + v26) = sub_1E1AF5BEC();
  v27 = qword_1EE216680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31A0, &qword_1E1B06110);
  swift_allocObject();
  *(v14 + v27) = sub_1E1AF5BEC();
  v28 = qword_1EE2166B0;
  swift_allocObject();
  *(v14 + v28) = sub_1E1AF5BEC();
  v29 = qword_1EE216688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598, &unk_1E1B05F40);
  swift_allocObject();
  *(v14 + v29) = sub_1E1AF5BEC();
  v30 = qword_1EE2166A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0, &qword_1E1B029C0);
  swift_allocObject();
  v31 = sub_1E1AF5BEC();

  sub_1E1308058(v11, &unk_1ECEB4B60, &unk_1E1B02620);
  *(v14 + v30) = v31;
  v32 = qword_1EE1E9DD8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8, &unk_1E1B16230);
  v34 = *(*(v33 - 8) + 56);
  v34(v14 + v32, 1, 1, v33);
  v34(v14 + qword_1EE1E9DE0, 1, 1, v33);
  *(v14 + 16) = v17;
  sub_1E13E23F8(v44, v14 + qword_1EE216678);
  *v19 = sub_1E15E0180;
  v19[1] = v18;
  *v21 = 0;
  v21[1] = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = v18;
  v36 = v42;
  v37 = v43;
  *v43 = sub_1E155BD80;
  v37[1] = v35;
  *v36 = sub_1E15E0188;
  v36[1] = v17;
  v38 = v41;
  *v41 = sub_1E155BC10;
  v38[1] = v13;
  v39 = v46;
  *(v14 + qword_1EE1E9E90) = v45;
  *(v14 + qword_1EE216690) = v39;
  return v14;
}

uint64_t type metadata accessor for TopChartDiffableSegmentContentPresenter(uint64_t a1)
{
  result = qword_1ECEB67C0;
  if (!qword_1ECEB67C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AskToBuy.init(promptString:isException:isInAppPurchase:approveClosure:declineClosure:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  return result;
}

uint64_t AskToBuy.promptString.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AskToBuy.approveClosure.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t AskToBuy.declineClosure.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1E15E02A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1E15E02EC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

double static CGRect.frame(pinnedAtBottomLeftOf:of:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MinX = CGRectGetMinX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMaxY(v10);
  return MinX;
}

CGFloat static CGRect.frame(pinnedAtBottomRightOf:of:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = CGRectGetMaxX(*&a1) - a5;
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMaxY(v11);
  return v9;
}

CGFloat static CGRect.frame(centeredWithin:of:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = CGRectGetMidX(*&a1) - a5 * 0.5;
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMidY(v11);
  return v9;
}

CGFloat static CGRect.frame(pinnedAtTopCenterOf:of:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = CGRectGetMidX(*&a1) + a5 * -0.5;
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMinY(v11);
  return v9;
}

CGFloat static CGRect.frame(pinnedAtBottomCenterOf:of:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = CGRectGetMidX(*&a1) + a5 * -0.5;
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMaxY(v11);
  return v9;
}

uint64_t Trailers.__allocating_init(id:videos:mediaPlatform:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  sub_1E138853C(a1, &v17);
  if (*(&v18 + 1))
  {
    sub_1E13E2E98(a1);
    v20 = v17;
    v21 = v18;
    v22 = v19;
  }

  else
  {
    sub_1E1AEFE9C();
    v11 = sub_1E1AEFE7C();
    v13 = v12;
    (*(v7 + 8))(v9, v6);
    v16[1] = v11;
    v16[2] = v13;
    sub_1E1AF6F6C();
    sub_1E13E2E98(a1);
    sub_1E13E2E98(&v17);
  }

  v14 = v21;
  *(v10 + 32) = v20;
  *(v10 + 48) = v14;
  *(v10 + 64) = v22;
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  return v10;
}

uint64_t Trailers.init(id:videos:mediaPlatform:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E138853C(a1, &v18);
  if (*(&v19 + 1))
  {
    sub_1E13E2E98(a1);
    v21 = v18;
    v22 = v19;
    v23 = v20;
  }

  else
  {
    sub_1E1AEFE9C();
    v12 = sub_1E1AEFE7C();
    v14 = v13;
    (*(v9 + 8))(v11, v8);
    v17[1] = v12;
    v17[2] = v14;
    sub_1E1AF6F6C();
    sub_1E13E2E98(a1);
    sub_1E13E2E98(&v18);
  }

  v15 = v22;
  *(v4 + 32) = v21;
  *(v4 + 48) = v15;
  *(v4 + 64) = v23;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  return v4;
}

uint64_t Trailers.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Trailers.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t Trailers.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v42 = a2;
  v41 = sub_1E1AF39DC();
  v3 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v35 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v37 = v34 - v6;
  v7 = sub_1E1AEFEAC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF380C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v34[1] = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v34 - v16;
  v43 = a1;
  sub_1E1AF381C();
  v18 = sub_1E1AF37CC();
  v39 = v12;
  v40 = v11;
  if (v19)
  {
    v44 = v18;
    v45 = v19;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v21 = v8;
    v22 = v3;
    v24 = v23;
    (*(v21 + 8))(v10, v7);
    v44 = v20;
    v45 = v24;
    v3 = v22;
  }

  sub_1E1AF6F6C();
  v36 = *(v12 + 8);
  v36(v17, v11);
  v25 = v47;
  v26 = v49;
  *(v49 + 32) = v46;
  *(v26 + 48) = v25;
  *(v26 + 64) = v48;
  v27 = v43;
  sub_1E1AF381C();
  v28 = *(v3 + 16);
  v30 = v41;
  v29 = v42;
  v28(v37, v42, v41);
  type metadata accessor for Video(0);
  sub_1E15E0EF8(&qword_1EE1E52D0, 255, type metadata accessor for Video, &protocol conformance descriptor for Video);
  v31 = v38;
  v32 = sub_1E1AF62EC();
  if (v31)
  {
    (*(v3 + 8))(v29, v30);
    v36(v27, v40);
    sub_1E134B88C(v49 + 32);
    type metadata accessor for Trailers();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v49 + 16) = v32;
    v38 = type metadata accessor for MediaPlatform();
    sub_1E1AF381C();
    v28(v35, v29, v30);
    sub_1E15E0EF8(qword_1EE1F4FB8, 255, type metadata accessor for MediaPlatform, &protocol conformance descriptor for MediaPlatform);
    sub_1E1AF464C();
    (*(v3 + 8))(v29, v30);
    v36(v27, v40);
    *(v49 + 24) = v46;
  }

  return v49;
}

uint64_t Trailers.deinit()
{

  sub_1E134B88C(v0 + 32);
  return v0;
}

uint64_t Trailers.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1E15E0EF8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E15E0F50@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for Trailers();
  v7 = swift_allocObject();
  result = Trailers.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

char *ClearAppUsageDataAction.__allocating_init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a4;
  v33 = a5;
  v30 = a2;
  v31 = a3;
  v10 = sub_1E1AEFEAC();
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v29 = a1;
  sub_1E134FD1C(a1, v39, &unk_1ECEB5670, qword_1E1B03EC0);
  v14 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v15 = sub_1E1AF3E1C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v28 = a6;
  v17(&v13[v14], a6, v15);
  sub_1E134FD1C(a7, &v13[OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics], &unk_1ECEB1770, &unk_1E1AFED20);
  v18 = &v13[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v19 = &v13[OBJC_IVAR____TtC11AppStoreKit6Action_id];
  sub_1E134FD1C(v39, &v36, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v37 + 1))
  {
    v20 = v37;
    *v19 = v36;
    *(v19 + 1) = v20;
    *(v19 + 4) = v38;
  }

  else
  {
    sub_1E1AEFE9C();
    v21 = sub_1E1AEFE7C();
    v23 = v22;
    (*(v27 + 8))(v12, v10);
    v34 = v21;
    v35 = v23;
    sub_1E1AF6F6C();
    sub_1E1308058(&v36, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a7, &unk_1ECEB1770, &unk_1E1AFED20);
  (*(v16 + 8))(v28, v15);
  sub_1E1308058(v29, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E1308058(v39, &unk_1ECEB5670, qword_1E1B03EC0);
  v24 = v31;
  *(v13 + 2) = v30;
  *(v13 + 3) = v24;
  v25 = v33;
  *(v13 + 4) = v32;
  *(v13 + 5) = v25;
  return v13;
}

void *ClearAppUsageDataAction.init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v38 = a7;
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v40 = a2;
  v37 = sub_1E1AEFEAC();
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v35 - v14;
  v16 = sub_1E1AF3E1C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v20 = a1;
  v21 = a6;
  v22 = v38;
  sub_1E134FD1C(v20, v52, &unk_1ECEB5670, qword_1E1B03EC0);
  (*(v17 + 16))(v19, v21, v16);
  sub_1E134FD1C(v22, v15, &unk_1ECEB1770, &unk_1E1AFED20);
  v23 = (v8 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v23 = 0u;
  v23[1] = 0u;
  sub_1E134FD1C(v52, &v46, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v47 + 1))
  {
    v49 = v46;
    v50 = v47;
    v51 = v48;
  }

  else
  {
    sub_1E1AEFE9C();
    v24 = v22;
    v25 = sub_1E1AEFE7C();
    v26 = v15;
    v28 = v27;
    (*(v36 + 8))(v12, v37);
    v44 = v25;
    v45 = v28;
    v22 = v24;
    v15 = v26;
    sub_1E1AF6F6C();
    sub_1E1308058(&v46, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(v22, &unk_1ECEB1770, &unk_1E1AFED20);
  (*(v17 + 8))(v21, v16);
  sub_1E1308058(v39, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E1308058(v52, &unk_1ECEB5670, qword_1E1B03EC0);
  v29 = v8 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v29 + 4) = v51;
  v30 = v50;
  *v29 = v49;
  *(v29 + 1) = v30;
  sub_1E134B7C8(v15, v8 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v31 = v41;
  v32 = v42;
  v8[2] = v40;
  v8[3] = v31;
  v33 = v43;
  v8[4] = v32;
  v8[5] = v33;
  (*(v17 + 32))(v8 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v19, v16);
  return v8;
}

char *ClearAppUsageDataAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  v12 = *(v9 + 16);
  v16 = a1;
  v12(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = Action.init(deserializing:using:)(v11, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v16, v8);
  return v13;
}

char *ClearAppUsageDataAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v17 = a1;
  v13(v12, a1, v8, v10);
  (*(v5 + 16))(v7, a2, v4);
  v14 = Action.init(deserializing:using:)(v12, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v17, v8);
  return v14;
}

uint64_t ClearAppUsageDataAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  return v0;
}

uint64_t ClearAppUsageDataAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ClearAppUsageDataAction(uint64_t a1)
{
  result = qword_1EE1F9DE0;
  if (!qword_1EE1F9DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MetadataRibbonTagViewLayout.init(descriptionLabelTextView:metrics:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  result = sub_1E1361B28(a1, a3);
  *(a3 + 40) = v4;
  return result;
}

uint64_t MetadataRibbonTagViewLayout.placeChildren(relativeTo:in:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
  sub_1E1AF6B1C();
  sub_1E1AF116C();

  return sub_1E1AF106C();
}

uint64_t sub_1E15E1E5C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
  sub_1E1AF6B1C();
  sub_1E1AF116C();

  return sub_1E1AF106C();
}

uint64_t sub_1E15E1FC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1E15E2010(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t TitledButton.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TitledButton.__allocating_init(id:title:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  sub_1E138853C(a1, &v19);
  if (*(&v20 + 1))
  {
    sub_1E13E2E98(a1);
    v22 = v19;
    v23 = v20;
    v24 = v21;
  }

  else
  {
    sub_1E1AEFE9C();
    v13 = sub_1E1AEFE7C();
    v15 = v14;
    (*(v9 + 8))(v11, v8);
    v18[1] = v13;
    v18[2] = v15;
    sub_1E1AF6F6C();
    sub_1E13E2E98(a1);
    sub_1E13E2E98(&v19);
  }

  v16 = v23;
  *(v12 + 40) = v22;
  *(v12 + 56) = v16;
  *(v12 + 72) = v24;
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  return v12;
}

uint64_t TitledButton.init(id:title:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E138853C(a1, &v20);
  if (*(&v21 + 1))
  {
    sub_1E13E2E98(a1);
    v23 = v20;
    v24 = v21;
    v25 = v22;
  }

  else
  {
    sub_1E1AEFE9C();
    v14 = sub_1E1AEFE7C();
    v16 = v15;
    (*(v11 + 8))(v13, v10);
    v19[1] = v14;
    v19[2] = v16;
    sub_1E1AF6F6C();
    sub_1E13E2E98(a1);
    sub_1E13E2E98(&v20);
  }

  v17 = v24;
  *(v5 + 40) = v23;
  *(v5 + 56) = v17;
  *(v5 + 72) = v25;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  return v5;
}

uint64_t TitledButton.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TitledButton.init(deserializing:using:)(a1, a2);
  return v4;
}

void *TitledButton.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v47 = a2;
  v44 = *v2;
  v45 = v3;
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1E1AF380C();
  v10 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v46 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  sub_1E1AF381C();
  v18 = sub_1E1AF37CC();
  if (v19)
  {
    v48 = v18;
    v49 = v19;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v21 = v7;
    v22 = a1;
    v24 = v23;
    (*(v21 + 8))(v9, v6);
    v48 = v20;
    v49 = v24;
    a1 = v22;
  }

  sub_1E1AF6F6C();
  v25 = *(v10 + 8);
  v25(v17, v53);
  v26 = v51;
  *(v4 + 5) = v50;
  *(v4 + 7) = v26;
  v4[9] = v52;
  sub_1E1AF381C();
  v27 = sub_1E1AF37CC();
  v29 = v28;
  v25(v14, v53);
  v30 = a1;
  if (v29)
  {
    v31 = v53;
    v4[2] = v27;
    v4[3] = v29;
    type metadata accessor for Action(0);
    v32 = v46;
    sub_1E1AF381C();
    v33 = v47;
    v34 = v45;
    v35 = static Action.makeInstance(byDeserializing:using:)(v32, v47);
    if (!v34)
    {
      v40 = v35;
      v41 = sub_1E1AF39DC();
      (*(*(v41 - 8) + 8))(v33, v41);
      v25(v30, v31);
      v25(v32, v31);
      v4[4] = v40;
      return v4;
    }

    v36 = sub_1E1AF39DC();
    (*(*(v36 - 8) + 8))(v33, v36);
    v25(a1, v31);
    v25(v32, v31);
  }

  else
  {
    v37 = sub_1E1AF5A7C();
    sub_1E15E29E4(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v38 = 0x656C746974;
    v38[1] = 0xE500000000000000;
    v38[2] = v44;
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E69AB690], v37);
    swift_willThrow();
    v39 = sub_1E1AF39DC();
    (*(*(v39 - 8) + 8))(v47, v39);
    v25(v30, v53);
  }

  sub_1E134B88C((v4 + 5));
  type metadata accessor for TitledButton();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t TitledButton.deinit()
{

  sub_1E134B88C(v0 + 40);
  return v0;
}

uint64_t TitledButton.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1E15E29E4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1E15E2A3C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for TitledButton();
  v7 = swift_allocObject();
  result = TitledButton.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t ArcadeSubscriptionFieldsProvider.init(arcadeSubscriptionManager:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(type metadata accessor for ArcadeSubscriptionFieldsProvider(0) + 20);
  v5 = *MEMORY[0x1E69AB4D8];
  v6 = sub_1E1AF524C();
  result = (*(*(v6 - 8) + 104))(&a2[v4], v5, v6);
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for ArcadeSubscriptionFieldsProvider(uint64_t a1)
{
  result = qword_1EE1E7A90;
  if (!qword_1EE1E7A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArcadeSubscriptionFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArcadeSubscriptionFieldsProvider(0) + 20);
  v4 = sub_1E1AF524C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArcadeSubscriptionFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v3 = *v1 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  v8 = v4;
  LOBYTE(v9) = v3;
  sub_1E1361A40(v4, v3);
  v5 = sub_1E15E2D54(&v8);
  v10 = MEMORY[0x1E69E6158];
  v8 = v5;
  v9 = v6;
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_1E1AF4A1C();
  sub_1E1361A60(v4, v3);
  return __swift_destroy_boxed_opaque_existential_1(&v8);
}

uint64_t sub_1E15E2D54(uint64_t *a1)
{
  v1 = *(a1 + 8) >> 6;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      return 0x6269726373627573;
    }

    else
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v2 = *a1;
    if (v1)
    {
      v4 = *(v2 + 16);
      v5 = *(v2 + 24);
      v6 = v4;
      v7 = v5;
      return sub_1E15E2D54(&v6);
    }

    else if (*a1)
    {
      if (*a1 == 1)
      {
        return 0x7263736275736E75;
      }

      else
      {
        return 0xD000000000000013;
      }
    }

    else
    {
      return 0xD000000000000012;
    }
  }
}

UIEdgeInsets __swiftcall UIEdgeInsets.withLayoutDirection(_:)(UITraitEnvironmentLayoutDirection a1)
{
  if (a1 == UITraitEnvironmentLayoutDirectionRightToLeft)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  if (a1 == UITraitEnvironmentLayoutDirectionRightToLeft)
  {
    v2 = v1;
  }

  v4 = v3;
  result.right = v2;
  result.left = v4;
  return result;
}

double UIEdgeInsets.withLayoutDirection(in:)(void *a1, double a2)
{
  v3 = [a1 traitCollection];
  [v3 layoutDirection];

  return a2;
}

void sub_1E15E2F5C(void *a1)
{
  [a1 setModalPresentationStyle_];
  v2 = [a1 popoverPresentationController];
  if (v2)
  {
    v3 = v2;
    [v2 setPermittedArrowDirections_];
  }

  v4 = [a1 popoverPresentationController];
  if (v4)
  {
    v5 = v4;
    [v4 setSourceItem_];
  }

  v6 = [a1 popoverPresentationController];
  if (v6)
  {
    v7 = v6;
    [v6 setDelegate_];
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = [v8 window];
  if (v9)
  {

LABEL_10:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      [Strong presentViewController:a1 animated:1 completion:0];
    }

    v12 = *(v1 + OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_bubbleTipViewControllerToPresent);
    *(v1 + OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_bubbleTipViewControllerToPresent) = 0;

    return;
  }

  v13 = *(v1 + OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_bubbleTipViewControllerToPresent);
  *(v1 + OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_bubbleTipViewControllerToPresent) = a1;

  v14 = a1;
}

void sub_1E15E310C()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (!v0)
  {
    return;
  }

  v1 = v0;
  swift_unknownObjectRetain();
  v2 = [v1 subviews];
  sub_1E15E3774();
  v3 = sub_1E1AF621C();

  if (v3 >> 62)
  {
    v4 = sub_1E1AF71CC();
    if (v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_4:
      if (v4 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v4; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1E68FFD80](i, v3);
        }

        else
        {
          v6 = *(v3 + 8 * i + 32);
        }

        v7 = v6;
        type metadata accessor for MoveToWindowDetectorView();
        if (swift_dynamicCastClass())
        {
          [v7 removeFromSuperview];
        }
      }
    }
  }

  swift_unknownObjectRelease();
}

void sub_1E15E3284(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_bubbleTipViewControllerToPresent);
    v5 = Strong;
    v6 = v4;

    if (v4)
    {
      v7 = [a1 window];
      if (!v7)
      {
LABEL_9:

        return;
      }

      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        v10 = swift_unknownObjectWeakLoadStrong();

        if (v10)
        {
          [v10 presentViewController:v6 animated:1 completion:0];
        }
      }

      swift_beginAccess();
      v11 = swift_unknownObjectWeakLoadStrong();

      if (v11)
      {
        v6 = *&v11[OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_bubbleTipViewControllerToPresent];
        *&v11[OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_bubbleTipViewControllerToPresent] = 0;

        goto LABEL_9;
      }
    }
  }
}

void sub_1E15E33BC()
{
  ObjectType = swift_getObjectType();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = v2;
  swift_unknownObjectRetain();
  v4 = [v3 subviews];
  sub_1E15E3774();
  v5 = sub_1E1AF621C();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_13:
    swift_unknownObjectRelease();

LABEL_14:
    v10.receiver = v0;
    v10.super_class = ObjectType;
    objc_msgSendSuper2(&v10, sel_dealloc);
    return;
  }

  v6 = sub_1E1AF71CC();
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1E68FFD80](i, v5);
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      type metadata accessor for MoveToWindowDetectorView();
      if (swift_dynamicCastClass())
      {
        [v9 removeFromSuperview];
      }
    }

    goto LABEL_13;
  }

  __break(1u);
}

id sub_1E15E3704(double a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MoveToWindowDetectorView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1E15E3774()
{
  result = qword_1EE1D23E8;
  if (!qword_1EE1D23E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE1D23E8);
  }

  return result;
}

uint64_t sub_1E15E37FC(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  sub_1E15E5CE0(v2, v1);

  return swift_unknownObjectRelease();
}

uint64_t ArcadeSubscriptionOfferButtonPresenter.view.setter(uint64_t a1, __n128 a2, uint64_t a3)
{
  sub_1E15E5CE0(a1, a3);

  return swift_unknownObjectRelease();
}

void (*ArcadeSubscriptionOfferButtonPresenter.view.modify(uint64_t *a1))(void **a1, char a2, __n128 a3)
{
  if (MEMORY[0x1E69E7D08])
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
  return sub_1E15E391C;
}

void sub_1E15E391C(void **a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = *(*a1 + 4);
  v5 = *(*a1 + 3);
  if (a2)
  {
    v6 = swift_unknownObjectRetain();
    sub_1E15E5CE0(v6, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1E15E5CE0(v5, v4);
  }

  swift_unknownObjectRelease();

  free(v3);
}

id ArcadeSubscriptionOfferButtonPresenter.theme.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_1E139D580(v2, v3);
}

void ArcadeSubscriptionOfferButtonPresenter.alignment.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 124);
  *a1 = *(v1 + 120);
  *(a1 + 4) = v2;
}

void ArcadeSubscriptionOfferButtonPresenter.subtitlePosition.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 130);
  *a1 = *(v1 + 126);
  *(a1 + 4) = v2;
}

uint64_t ArcadeSubscriptionOfferButtonPresenter.__allocating_init(displayProperties:buttonAction:subscribedButtonAction:subtitlePosition:asPartOf:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, unsigned int *a6)
{
  swift_allocObject();
  v12 = sub_1E15E5DD4(a1, a2, a3, a4, a5, a6);

  return v12;
}

uint64_t ArcadeSubscriptionOfferButtonPresenter.init(displayProperties:buttonAction:subscribedButtonAction:subtitlePosition:asPartOf:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, unsigned int *a6)
{
  v6 = sub_1E15E5DD4(a1, a2, a3, a4, a5, a6);

  return v6;
}

uint64_t sub_1E15E3B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    _s11AppStoreKit38ArcadeSubscriptionOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  return result;
}

uint64_t sub_1E15E3B64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + 184);
    *(result + 184) = v2;
    v6 = *(result + 192);
    *(result + 192) = v3;
    sub_1E1361A40(v2, v3);
    sub_1E1361A60(v5, v6);
    _s11AppStoreKit38ArcadeSubscriptionOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  return result;
}

uint64_t sub_1E15E3C00(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    _s11AppStoreKit38ArcadeSubscriptionOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  return result;
}

uint64_t ArcadeSubscriptionOfferButtonPresenter.deinit()
{
  if (*(v0 + 200))
  {
    v1 = *(v0 + 208);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 80);
    swift_unknownObjectRetain();
    v3(v0, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  sub_1E1337DEC(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  sub_1E139D53C(*(v0 + 104), *(v0 + 112));

  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  sub_1E1361A60(*(v0 + 184), *(v0 + 192));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ArcadeSubscriptionOfferButtonPresenter.__deallocating_deinit()
{
  ArcadeSubscriptionOfferButtonPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E15E3D5C(char a1)
{
  v2 = *(v1 + 88);
  if ((a1 & 1) == 0)
  {
    if (!v2)
    {
      return 0;
    }

    v3 = *(v2 + 88);
    if (!*(v3 + 16))
    {
      return 0;
    }

    v4 = sub_1E1595560(10);
    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v7 = *(*(v3 + 56) + 16 * v4);

    return v7;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 88);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_1E1595560(9);
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_5:

  return 0;
}

BOOL sub_1E15E3E0C()
{
  v1 = *(v0 + 88);
  if (v1 && *(v1 + 96) == 5)
  {
    return 0;
  }

  v2 = *(v0 + 192) >> 6;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      if (v1)
      {
        v4 = *(v1 + 16);
        if (v4 != 4 && (sub_1E145769C(v4, 2u) & 1) != 0)
        {
          return *(v0 + 40) != 0;
        }
      }

      __swift_project_boxed_opaque_existential_1Tm((v0 + 144), *(v0 + 168));
      v7 = 0;
      v5 = &v7;
      return RestrictionsProtocol.doesAllow(_:properties:)(v5, v1);
    }

LABEL_11:
    __swift_project_boxed_opaque_existential_1Tm((v0 + 144), *(v0 + 168));
    v8 = 0;
    v5 = &v8;
    return RestrictionsProtocol.doesAllow(_:properties:)(v5, v1);
  }

  if (!v2)
  {
    goto LABEL_11;
  }

  return 0;
}

uint64_t ArcadeSubscriptionOfferButtonPresenter.actionForCurrentState.getter()
{
  if (*(v0 + 96) == 5)
  {
    if (qword_1EE1D27B0 == -1)
    {
LABEL_3:
      v1 = sub_1E1AF591C();
      __swift_project_value_buffer(v1, qword_1EE215450);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF382C();
      sub_1E1AF54AC();

      return 0;
    }

LABEL_14:
    swift_once();
    goto LABEL_3;
  }

  v3 = *(v0 + 192);
  if ((v3 & 0xC0) == 0x80)
  {
    if (!*(v0 + 40))
    {
      v4 = *(v0 + 184);
      v5 = qword_1EE1D27B0;
      v6 = v4;
      if (v5 != -1)
      {
        swift_once();
      }

      v7 = sub_1E1AF591C();
      __swift_project_value_buffer(v7, qword_1EE215450);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF382C();
      sub_1E1AF54AC();

      sub_1E1361A60(v4, v3);
      return 0;
    }
  }

  else if (!*(v0 + 32))
  {
    if (qword_1EE1D27B0 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_14;
  }
}

void sub_1E15E4294()
{
  v1 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = ArcadeSubscriptionOfferButtonPresenter.actionForCurrentState.getter();
  if (v2)
  {
    v3 = v2;
    if (qword_1EE1D27B0 != -1)
    {
      swift_once();
    }

    v4 = sub_1E1AF591C();
    __swift_project_value_buffer(v4, qword_1EE215450);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    v5 = sub_1E1AF387C();
    v6 = (*(*v3 + 192))(v5);
    v16 = MEMORY[0x1E69E6158];
    v13 = v6;
    v14 = v7;
    sub_1E1AF385C();
    sub_1E13E44F8(&v13);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v0 + 24);
      Strong = swift_unknownObjectWeakLoadStrong();
      v10 = Strong;
      if (Strong)
      {
        Strong = swift_getObjectType();
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }

      v13 = v10;
      v16 = Strong;
      ObjectType = swift_getObjectType();
      (*(*(v8 + 8) + 8))(v3, &v13, ObjectType);

      swift_unknownObjectRelease();
      sub_1E13E44F8(&v13);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EE1D27B0 != -1)
    {
      swift_once();
    }

    v11 = sub_1E1AF591C();
    __swift_project_value_buffer(v11, qword_1EE215450);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();
  }
}

uint64_t sub_1E15E46CC(uint64_t a1, __n128 a2, uint64_t a3)
{
  sub_1E15E5CE0(a1, a3);

  return swift_unknownObjectRelease();
}

void (*sub_1E15E4708(uint64_t *a1))(void **a1, char a2, __n128 a3)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_1E15E391C;
}

uint64_t sub_1E15E47C4(_BYTE *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = a1[8] >> 6;
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v14 = *a3;
      if (v14 == 4 || (sub_1E145769C(v14, 2u) & 1) == 0)
      {
        if (!*(a2 + 16) || (v10 = sub_1E1595560(4), (v19 & 1) == 0))
        {
          v12 = 0xD000000000000016;
          v13 = 0x80000001E1B5B260;
          goto LABEL_22;
        }
      }

      else
      {
        v16 = *(a2 + 16);
        if (a6)
        {
          if (!v16 || (v10 = sub_1E1595560(13), (v17 & 1) == 0))
          {
            v12 = 0xD00000000000002BLL;
            v13 = 0x80000001E1B5B340;
            goto LABEL_22;
          }
        }

        else if (!v16 || (v10 = sub_1E1595560(11), (v23 & 1) == 0))
        {
          v12 = 0xD00000000000001CLL;
          v13 = 0x80000001E1B69190;
          goto LABEL_22;
        }
      }

      goto LABEL_31;
    }

    if (!*(a2 + 16))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (!v9)
  {
    if (a6)
    {
      if (!*(a2 + 16) || (v10 = sub_1E1595560(14), (v11 & 1) == 0))
      {
        v12 = 0xD00000000000002ELL;
        v13 = 0x80000001E1B691B0;
LABEL_22:
        v20._countAndFlagsBits = 0;
        v20._object = 0xE000000000000000;
        return localizedString(_:comment:)(*&v12, v20)._countAndFlagsBits;
      }

      goto LABEL_31;
    }

    v21 = *(a2 + 16);
    if (*a1 == 1)
    {
      if (v21)
      {
        v10 = sub_1E1595560(9);
        if (v22)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_17;
    }

    if (!v21)
    {
      goto LABEL_17;
    }

LABEL_16:
    v10 = sub_1E1595560(10);
    if (v18)
    {
LABEL_31:
      a4 = *(*(a2 + 56) + 16 * v10);
      goto LABEL_32;
    }

LABEL_17:
    if (!a5)
    {
      v13 = 0x80000001E1B5B320;
      v12 = 0xD000000000000015;
      goto LABEL_22;
    }

LABEL_32:

    return a4;
  }

  return 0;
}

void _s11AppStoreKit38ArcadeSubscriptionOfferButtonPresenterC6update13ignoringCacheySb_tF_0()
{
  v1 = v0;
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 48), v2);
  if (((*(v3 + 8))(v2, v3) & 1) == 0)
  {
    v11._object = 0x80000001E1B5B300;
    v11._countAndFlagsBits = 0xD000000000000016;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v13 = localizedString(_:comment:)(v11, v12);
    countAndFlagsBits = v13._countAndFlagsBits;
    object = v13._object;
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1Tm((v0 + 144), *(v0 + 168));
  LOBYTE(v215) = 0;
  v4 = *(v0 + 88);
  if (RestrictionsProtocol.doesAllow(_:properties:)(&v215, v4) || !v4)
  {
    v22 = (v0 + 184);
    v21 = *(v0 + 184);
    v24 = (v0 + 192);
    v23 = *(v0 + 192);
    v215 = v21;
    LOBYTE(v216) = v23;
    if (!v4)
    {
      sub_1E1361A40(v21, v23);
      v25 = sub_1E15A11A4(MEMORY[0x1E69E7CC0]);
      v26 = 4;
      goto LABEL_18;
    }
  }

  else
  {
    v5 = *(v4 + 72);
    if (*(v5 + 16))
    {

      v6 = sub_1E1595560(12);
      if (v7)
      {
        v8 = (*(v5 + 56) + 16 * v6);
        countAndFlagsBits = *v8;
        object = v8[1];

LABEL_8:
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v14 = *(v1 + 24);
          ObjectType = swift_getObjectType();
          v16 = *(v1 + 104);
          v17 = *(v1 + 112);
          LOWORD(v219) = *(v1 + 96);
          v221 = v16;
          v222 = v17;
          v18 = *(v14 + 32);
          sub_1E139D580(v16, v17);
          v18(countAndFlagsBits, object, 0, 0, &v219, ObjectType, v14);
          swift_unknownObjectRelease();
          sub_1E139D53C(v221, v222);
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {

          return;
        }

        v19 = *(v1 + 24);
        v20 = swift_getObjectType();
        (*(v19 + 128))(countAndFlagsBits, object, v20, v19);
        goto LABEL_105;
      }
    }

    v22 = (v1 + 184);
    v21 = *(v1 + 184);
    v24 = (v1 + 192);
    v23 = *(v1 + 192);
    v215 = v21;
    LOBYTE(v216) = v23;
  }

  v25 = *(v4 + 72);
  v26 = *(v4 + 16);
  sub_1E1361A40(v21, v23);

LABEL_18:
  LOBYTE(v219) = v26;
  v27 = *(v1 + 32);
  if (v27)
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    if (v4)
    {
LABEL_20:
      v30 = *(v4 + 122);
      goto LABEL_23;
    }
  }

  else
  {
    v28 = 0;
    v29 = 0;
    if (v4)
    {
      goto LABEL_20;
    }
  }

  v30 = 0;
LABEL_23:
  v207 = sub_1E15E47C4(&v215, v25, &v219, v28, v29, v30);
  v32 = v31;

  sub_1E1361A60(v215, v216);
  v33 = *v24 >> 6;
  if (v33 <= 1)
  {
    if (v33)
    {
      if (v4)
      {
        v54 = *(v4 + 16);
        if (v54 != 4 && (sub_1E145769C(v54, 2u) & 1) != 0)
        {
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v55 = *(v1 + 24);
            v56 = swift_getObjectType();
            v57 = *(v1 + 124);
            v219 = *(v1 + 120);
            v220 = v57;
            v58 = *(v1 + 104);
            v59 = *(v1 + 112);
            LOWORD(v215) = *(v1 + 96);
            v216 = v58;
            v217 = v59;
            v60 = v24;
            v61 = *(v55 + 56);
            sub_1E139D580(v58, v59);
            v61(0, 0, &v219, &v215, 0, v56, v55);
            v24 = v60;
            swift_unknownObjectRelease();
            sub_1E139D53C(v216, v217);
          }
        }
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v62 = *(v1 + 24);
        v63 = swift_getObjectType();
        (*(v62 + 144))(0x6973616863727570, 0xEA0000000000676ELL, v63, v62);
LABEL_67:
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v34 = sub_1E15E3D5C(*(v1 + 184) == 1);
      if (v35)
      {
        v36 = v34;
        v37 = v35;
        v201 = v22;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v38 = v36;
          v39 = v32;
          v40 = *(v1 + 24);
          v203 = v24;
          v41 = swift_getObjectType();
          v42 = *(v1 + 130);
          v213 = *(v1 + 126);
          v214 = v42;
          v43 = *(v1 + 104);
          v44 = *(v1 + 112);
          LOWORD(v215) = *(v1 + 96);
          v216 = v43;
          v217 = v44;
          v45 = *(v40 + 24);
          sub_1E139D580(v43, v44);
          v193 = v41;
          v196 = v40;
          v32 = v39;
          v36 = v38;
          v24 = v203;
          v45(v207, v32, v38, v37, &v213, 0, 0, &v215, v193, v196);
          swift_unknownObjectRelease();
          sub_1E139D53C(v216, v217);
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v46 = v36;
          v47 = v24;
          v48 = *(v1 + 24);
          v49 = swift_getObjectType();
          v215 = v207;
          v216 = v32;

          MEMORY[0x1E68FECA0](8236, 0xE200000000000000);
          MEMORY[0x1E68FECA0](v46, v37);

          v50 = *(v48 + 128);
          v51 = v48;
          v24 = v47;
          v50(v215, v216, v49, v51);
          swift_unknownObjectRelease();
        }

        else
        {
        }

        v22 = v201;
      }

      else
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v94 = *(v1 + 24);
          v95 = swift_getObjectType();
          v96 = *(v1 + 104);
          v97 = *(v1 + 112);
          LOWORD(v215) = *(v1 + 96);
          v216 = v96;
          v217 = v97;
          v98 = v24;
          v99 = *(v94 + 32);
          sub_1E139D580(v96, v97);
          v99(v207, v32, 0, 0, &v215, v95, v94);
          v24 = v98;
          swift_unknownObjectRelease();
          sub_1E139D53C(v216, v217);
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v100 = *(v1 + 24);
          v101 = swift_getObjectType();
          v102 = v24;
          v103 = *(v100 + 128);

          v103(v207, v32, v101, v100);
          v24 = v102;
          swift_unknownObjectRelease();
        }
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v104 = *(v1 + 24);
        v105 = swift_getObjectType();
        (*(v104 + 144))(0x6269726373627573, 0xE900000000000065, v105, v104);
        goto LABEL_67;
      }
    }

LABEL_68:
    v116 = sub_1E15E3E0C();
    if (!v4 || (*(v4 + 122) & 1) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_70;
  }

  if (v33 != 2)
  {
    if (v4)
    {
      v64 = *(v4 + 88);
      if (*(v64 + 16))
      {

        v65 = sub_1E1595560(10);
        if (v66)
        {
          v200 = v32;
          v67 = (*(v64 + 56) + 16 * v65);
          v68 = *v67;
          v69 = v67[1];

          swift_beginAccess();
          v204 = v24;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v70 = v68;
            v71 = *(v1 + 24);
            v72 = swift_getObjectType();
            v73 = *(v1 + 130);
            v213 = *(v1 + 126);
            v214 = v73;
            v74 = *(v1 + 104);
            v75 = *(v1 + 112);
            LOWORD(v215) = *(v1 + 96);
            v216 = v74;
            v217 = v75;
            v76 = *(v71 + 24);
            sub_1E139D580(v74, v75);
            v194 = v72;
            v197 = v71;
            v68 = v70;
            v24 = v204;
            v76(v207, v32, v70, v69, &v213, 0, 0, &v215, v194, v197);
            swift_unknownObjectRelease();
            sub_1E139D53C(v216, v217);
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v77 = *(v1 + 24);
            v78 = swift_getObjectType();
            v215 = v207;
            v216 = v32;

            MEMORY[0x1E68FECA0](8236, 0xE200000000000000);
            MEMORY[0x1E68FECA0](v68, v69);

            v79 = *(v77 + 128);
            v80 = v77;
            v24 = v204;
            v79(v215, v216, v78, v80);
            swift_unknownObjectRelease();
            goto LABEL_101;
          }

LABEL_99:
          v32 = v200;
          goto LABEL_101;
        }
      }
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v106 = *(v1 + 24);
      v107 = swift_getObjectType();
      v108 = *(v1 + 104);
      v109 = *(v1 + 112);
      LOWORD(v215) = *(v1 + 96);
      v216 = v108;
      v217 = v109;
      v110 = v24;
      v111 = *(v106 + 32);
      sub_1E139D580(v108, v109);
      v111(v207, v32, 0, 0, &v215, v107, v106);
      v24 = v110;
      swift_unknownObjectRelease();
      sub_1E139D53C(v216, v217);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v112 = *(v1 + 24);
      v113 = swift_getObjectType();
      v114 = v24;
      v115 = *(v112 + 128);

      v115(v207, v32, v113, v112);
      v24 = v114;
      goto LABEL_67;
    }

    goto LABEL_68;
  }

  if (!v4)
  {
    goto LABEL_88;
  }

  v52 = *(v4 + 16);
  if (v52 != 4 && (sub_1E145769C(v52, 2u) & 1) != 0)
  {
    v200 = v32;
    if (*(v1 + 40))
    {
      v53 = *(v1 + 96);
    }

    else
    {
      v53 = 5;
    }

    v151 = *(v1 + 97);
    v153 = *(v1 + 104);
    v152 = *(v1 + 112);
    sub_1E139D580(v153, v152);
    swift_beginAccess();
    v205 = v24;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v154 = *(v1 + 24);
      v155 = swift_getObjectType();
      LOBYTE(v215) = v53;
      BYTE1(v215) = v151;
      v216 = v153;
      v217 = v152;
      v156 = *(v154 + 32);
      sub_1E139D580(v153, v152);
      v157 = v154;
      v24 = v205;
      v156(v207, v200, 0, 0, &v215, v155, v157);
      swift_unknownObjectRelease();
      sub_1E139D53C(v216, v217);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v158 = *(v1 + 24);
      v159 = swift_getObjectType();
      v199 = *(v158 + 128);
      v32 = v200;

      v160 = v158;
      v24 = v205;
      v199(v207, v200, v159, v160);
      sub_1E139D53C(v153, v152);
      swift_unknownObjectRelease();
      goto LABEL_101;
    }

    sub_1E139D53C(v153, v152);
    goto LABEL_99;
  }

  v81 = *(v4 + 88);
  if (!*(v81 + 16))
  {
LABEL_88:
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v139 = *(v1 + 24);
      v140 = swift_getObjectType();
      v141 = *(v1 + 104);
      v142 = *(v1 + 112);
      LOWORD(v215) = *(v1 + 96);
      v216 = v141;
      v217 = v142;
      v143 = v24;
      v144 = *(v139 + 32);
      sub_1E139D580(v141, v142);
      v144(v207, v32, 0, 0, &v215, v140, v139);
      v24 = v143;
      swift_unknownObjectRelease();
      sub_1E139D53C(v216, v217);
    }

    goto LABEL_68;
  }

  v82 = sub_1E1595560(4);
  if ((v83 & 1) == 0)
  {

    goto LABEL_88;
  }

  v84 = (*(v81 + 56) + 16 * v82);
  v85 = *v84;
  v86 = v84[1];

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v87 = *(v1 + 24);
    v198 = v85;
    v88 = v24;
    v89 = swift_getObjectType();
    v90 = *(v1 + 130);
    v213 = *(v1 + 126);
    v214 = v90;
    v91 = *(v1 + 104);
    v92 = *(v1 + 112);
    LOWORD(v215) = *(v1 + 96);
    v216 = v91;
    v217 = v92;
    v202 = v22;
    v93 = *(v87 + 24);
    sub_1E139D580(v91, v92);
    v195 = v89;
    v24 = v88;
    v93(v207, v32, v198, v86, &v213, 0, 0, &v215, v195, v87);
    v22 = v202;

    swift_unknownObjectRelease();
    sub_1E139D53C(v216, v217);
  }

  else
  {
  }

LABEL_101:
  v116 = sub_1E15E3E0C();
  if ((*(v4 + 122) & 1) == 0)
  {
    goto LABEL_102;
  }

LABEL_70:
  if (!*(v1 + 200))
  {
    goto LABEL_102;
  }

  v117 = *(v1 + 208);
  v118 = swift_getObjectType();
  (*(v117 + 16))(&v215, v118, v117);
  if (v218 >> 60 == 1)
  {
    if (v215)
    {
      if (*(v1 + 216) != 1)
      {
        v145 = *(v1 + 97);
        v147 = *(v1 + 104);
        v146 = *(v1 + 112);
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v148 = *(v1 + 24);
          v149 = swift_getObjectType();
          LOBYTE(v210) = 5;
          HIBYTE(v210) = v145;
          v211 = v147;
          v212 = v146;
          v150 = *(v148 + 32);
          sub_1E139D580(v147, v146);
          v150(v207, v32, 0, 0, &v210, v149, v148);
          swift_unknownObjectRelease();
        }

        else
        {
          sub_1E139D580(v147, v146);
        }

        sub_1E139D53C(v147, v146);
        v116 = 0;
        goto LABEL_126;
      }

      v132 = *v24;
      if (v132 >> 6 == 2)
      {
        v163 = *(v4 + 80);
        if (*(v163 + 16))
        {
          v164 = v32;
          v165 = *v22;
          sub_1E1361A40(*v22, v132);

          v166 = sub_1E1595560(15);
          if (v167)
          {
            v168 = (*(v163 + 56) + 16 * v166);
            v137 = *v168;
            v138 = v168[1];

            sub_1E1361A60(v165, v132);
            v32 = v164;
            goto LABEL_112;
          }

          sub_1E1361A60(v165, v132);
          v32 = v164;
        }
      }

      else if (!(v132 >> 6))
      {
        v133 = *(v4 + 80);
        if (*(v133 + 16))
        {

          v134 = sub_1E1595560(16);
          if (v135)
          {
            v136 = (*(v133 + 56) + 16 * v134);
            v137 = *v136;
            v138 = v136[1];

LABEL_112:

            v169 = *(v1 + 97);
            if (v169 == 3 || v169 == 6)
            {
              swift_beginAccess();
              if (swift_unknownObjectWeakLoadStrong())
              {
                v174 = *(v1 + 24);
                v175 = swift_getObjectType();
                v176 = *(v1 + 97);
                LOBYTE(v210) = 0;
                HIBYTE(v210) = v176;
                v211 = 0;
                v212 = 0;
                (*(v174 + 48))(v137, v138, &v210, v175, v174);
LABEL_134:
                swift_unknownObjectRelease();

                goto LABEL_125;
              }
            }

            else
            {
              if (v169 == 8)
              {
                swift_beginAccess();
                if (swift_unknownObjectWeakLoadStrong())
                {
                  v170 = *(v1 + 24);
                  v206 = swift_getObjectType();
                  v171 = *(v1 + 97);
                  if (qword_1ECEB11D8 != -1)
                  {
                    swift_once();
                  }

                  v172 = qword_1ECEB95F0;
                  v173 = objc_opt_self();
                  LOBYTE(v210) = 0;
                  HIBYTE(v210) = v171;
                  v211 = v172;
                  v212 = [v173 whiteColor];
                  (*(v170 + 48))(v137, v138, &v210, v206, v170);

                  swift_unknownObjectRelease();
                  sub_1E139D53C(v211, v212);
                  goto LABEL_126;
                }

                goto LABEL_135;
              }

              swift_beginAccess();
              if (swift_unknownObjectWeakLoadStrong())
              {
                v186 = *(v1 + 24);
                v187 = v32;
                v188 = swift_getObjectType();
                v189 = *(v1 + 104);
                v190 = *(v1 + 112);
                v210 = *(v1 + 96);
                v211 = v189;
                v212 = v190;
                v191 = *(v186 + 48);
                sub_1E139D580(v189, v190);
                v192 = v188;
                v32 = v187;
                v191(v137, v138, &v210, v192, v186);
                goto LABEL_134;
              }
            }

LABEL_135:

            goto LABEL_126;
          }
        }
      }

      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
LABEL_126:
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v182 = *(v1 + 24);
          v183 = swift_getObjectType();
          (*(v182 + 128))(v207, v32, v183, v182);
          swift_unknownObjectRelease();
        }

        else
        {
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_103;
        }

        v184 = *(v1 + 24);
        v185 = swift_getObjectType();
        (*(v184 + 144))(0x726564726F657270, 0xEA00000000006465, v185, v184);
        goto LABEL_131;
      }

      v177 = *(v1 + 24);
      v178 = swift_getObjectType();
      v179 = *(v1 + 104);
      v180 = *(v1 + 112);
      v210 = *(v1 + 96);
      v211 = v179;
      v212 = v180;
      v181 = *(v177 + 32);
      sub_1E139D580(v179, v180);
      v181(v207, v32, 0, 0, &v210, v178, v177);
      swift_unknownObjectRelease();
LABEL_125:
      sub_1E139D53C(v211, v212);
      goto LABEL_126;
    }

LABEL_102:

    goto LABEL_103;
  }

  if (!(v218 >> 60))
  {

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v119 = *(v1 + 24);
      v120 = swift_getObjectType();
      v121 = *(v1 + 124);
      v208 = *(v1 + 120);
      v209 = v121;
      v122 = *(v1 + 104);
      v123 = *(v1 + 112);
      v210 = *(v1 + 96);
      v211 = v122;
      v212 = v123;
      v124 = *(v119 + 56);
      sub_1E139D580(v122, v123);
      v124(0, 0, &v208, &v210, 0, v120, v119);
      swift_unknownObjectRelease();
      sub_1E139D53C(v211, v212);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v125 = *(v1 + 24);
      v126 = swift_getObjectType();
      v127._countAndFlagsBits = 0xD00000000000001CLL;
      v127._object = 0x80000001E1B69170;
      v128._countAndFlagsBits = 0;
      v128._object = 0xE000000000000000;
      v129 = localizedString(_:comment:)(v127, v128);
      (*(v125 + 128))(v129._countAndFlagsBits, v129._object, v126, v125);
      swift_unknownObjectRelease();
    }

    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_103;
    }

    v130 = *(v1 + 24);
    v131 = swift_getObjectType();
    (*(v130 + 144))(0x676E6964616F6CLL, 0xE700000000000000, v131, v130);
LABEL_131:
    swift_unknownObjectRelease();
    goto LABEL_103;
  }

  sub_1E139CEA8(&v215);
LABEL_103:
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  v161 = *(v1 + 24);
  v162 = swift_getObjectType();
  (*(v161 + 16))(v116, v162, v161);
LABEL_105:
  swift_unknownObjectRelease();
}

void sub_1E15E5CE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 112))(v2, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v2 + 24);
    v7 = swift_getObjectType();
    (*(v6 + 104))(v2, sel_offerButtonTapped, v7, v6);
    swift_unknownObjectRelease();
  }

  _s11AppStoreKit38ArcadeSubscriptionOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
}

uint64_t sub_1E15E5DD4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, unsigned int *a6)
{
  v7 = v6;
  v71 = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2C98, &unk_1E1B044B0);
  v69 = *(v13 - 8);
  v70 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v62 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0, &unk_1E1B0F2C0);
  v65 = *(v15 - 8);
  v66 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v62 - v16;
  LODWORD(v16) = a4[1];
  v62 = *a4;
  v63 = v16;
  v17 = a4[2];
  v18 = a4[3];
  v19 = a4[4];
  v20 = a4[5];
  v21 = *a6 | (*(a6 + 2) << 32);
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 184) = 0;
  *(v7 + 192) = -64;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  *(v7 + 88) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB9490, &unk_1E1B1C8E0);
  v67 = a1;

  sub_1E1AF416C();
  sub_1E1308EC0(&v74, v7 + 48);
  v24 = v62;
  v23 = v63;
  *(v7 + 126) = v62;
  *(v7 + 127) = v23;
  *(v7 + 128) = v17;
  *(v7 + 129) = v18;
  *(v7 + 130) = v19;
  *(v7 + 131) = v20;
  if (v21 == 3)
  {
    v73[0] = v24;
    v73[1] = v23;
    v73[2] = v17;
    v73[3] = v18;
    v73[4] = v19;
    v73[5] = v20;
    sub_1E148BBAC(v73, &v74, v22);
    LOBYTE(v21) = v74;
    v25.i32[0] = *(&v74 + 1);
    v26 = vmovl_u8(v25).u64[0];
    LOBYTE(v27) = BYTE5(v74);
  }

  else
  {
    v28 = vdupq_n_s64(v21);
    v26 = vmovn_s32(vuzp1q_s32(vshlq_u64(v28, xmmword_1E1B04480), vshlq_u64(v28, xmmword_1E1B04470)));
    v27 = v21 >> 40;
  }

  *(v7 + 120) = v21;
  *(v7 + 121) = vuzp1_s8(v26, v26).u32[0];
  *(v7 + 125) = v27;
  v29 = v67;
  if (!v67)
  {
    v32 = 0;
    v31 = 16;
    v33 = 3;
    goto LABEL_8;
  }

  v30 = *(v67 + 96);
  v31 = *(v67 + 97);
  v33 = *(v67 + 104);
  v32 = *(v67 + 112);
  sub_1E139D580(v33, v32);
  if (v30 == 7)
  {
LABEL_8:
    v30 = 0;
  }

  if (v31 == 16)
  {
    v34 = 0;
  }

  else
  {
    v34 = v31;
  }

  if (v33 == 3)
  {
    v35 = 0;
  }

  else
  {
    v35 = v33;
  }

  *(v7 + 96) = v30;
  *(v7 + 97) = v34;
  if (v33 == 3)
  {
    v36 = 0;
  }

  else
  {
    v36 = v32;
  }

  *(v7 + 104) = v35;
  *(v7 + 112) = v36;
  v75 = type metadata accessor for Restrictions();
  v76 = &protocol witness table for Restrictions;
  sub_1E1AF421C();
  sub_1E1AF55EC();
  sub_1E1308EC0(&v74, v7 + 144);
  type metadata accessor for ArcadeSubscriptionManager();
  sub_1E1AF55EC();
  v37 = v74;
  *(v7 + 136) = v74;
  v38 = v37 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v39 = *v38;
  v40 = *(v7 + 184);
  v41 = *(v38 + 8);
  *(v7 + 184) = *v38;
  LOBYTE(v38) = *(v7 + 192);
  *(v7 + 192) = v41;
  sub_1E1361A40(v39, v41);
  sub_1E1361A60(v40, v38);
  type metadata accessor for ASKBagContract(0);
  sub_1E1AF55EC();
  if (qword_1EE1E2FF8 != -1)
  {
    swift_once();
  }

  v42 = v64;
  sub_1E1AF52FC();
  v43 = v66;
  sub_1E1AF532C();

  (*(v65 + 8))(v42, v43);
  *(v7 + 216) = v72;
  if (v29)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94B0, &unk_1E1B1C8F0);

    sub_1E1AF55EC();
    v44 = *(&v74 + 1);
    ObjectType = swift_getObjectType();
    v46 = *(v29 + 32);
    *&v74 = *(v29 + 24);
    *(&v74 + 1) = v46;
    v47 = *(v44 + 56);

    v48 = v47(&v74, ObjectType, v44);
    v50 = v49;

    *(v7 + 200) = v48;
    *(v7 + 208) = v50;
    v51 = swift_getObjectType();
    v52 = swift_allocObject();
    swift_weakInit();
    v53 = *(v50 + 72);

    v53(v7, sub_1E15E6618, v52, v51, v50);

    swift_unknownObjectRelease();
  }

  else
  {
    *(v7 + 200) = 0;
    *(v7 + 208) = 0;
  }

  v54 = *(v7 + 136);
  v55 = swift_allocObject();
  swift_weakInit();
  v56 = *&v54[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_stateLock];
  swift_retain_n();
  v57 = v54;

  [v56 lock];
  sub_1E15F6384(v7, sub_1E15E65A4, v55, v57);
  [v56 unlock];

  v58 = *(v7 + 72);
  v59 = *(v7 + 80);
  __swift_project_boxed_opaque_existential_1Tm((v7 + 48), v58);
  (*(v59 + 16))(v58, v59);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2CA0, &qword_1E1B044C0);
  sub_1E15E65B4();
  sub_1E1AF3CDC();
  v60 = v68;
  sub_1E1AF3CFC();

  __swift_destroy_boxed_opaque_existential_1(&v74);
  (*(v69 + 8))(v60, v70);
  return v7;
}

unint64_t sub_1E15E65B4()
{
  result = qword_1EE1E3C48;
  if (!qword_1EE1E3C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB2CA0, &qword_1E1B044C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E3C48);
  }

  return result;
}

JSValue __swiftcall OnDeviceAdvertFetchResponse.makeValue(in:)(JSContext in)
{
  v2 = v1;
  v4 = *(v1 + 8);
  v5 = *(v2 + 24);
  v6 = *(v2 + 40);
  v7 = *(v2 + 152);
  v8 = objc_opt_self();
  result.super.isa = [v8 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  isa = result.super.isa;
  if (v4)
  {

    v11 = [v8 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (!v11)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    sub_1E1AF6C5C();
  }

  if (!v5)
  {
LABEL_8:
    if (v6)
    {
      OnDeviceAdvert.makeValue(in:)(in);
      sub_1E1AF6C5C();
    }

    if (v7 > 2)
    {
      return isa;
    }

    v13 = [v8 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v13)
    {
      sub_1E1AF6C5C();
      return isa;
    }

    goto LABEL_15;
  }

  v12 = [v8 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (v12)
  {
    sub_1E1AF6C5C();
    goto LABEL_8;
  }

LABEL_17:
  __break(1u);
  return result;
}

__n128 OnDeviceAdvertFetchResponse.init(clientRequestId:iAdId:ad:failureReason:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a6;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  v8 = *(a5 + 80);
  *(a7 + 96) = *(a5 + 64);
  *(a7 + 112) = v8;
  *(a7 + 128) = *(a5 + 96);
  *(a7 + 144) = *(a5 + 112);
  v9 = *(a5 + 16);
  *(a7 + 32) = *a5;
  *(a7 + 48) = v9;
  result = *(a5 + 32);
  v11 = *(a5 + 48);
  *(a7 + 64) = result;
  *(a7 + 80) = v11;
  *(a7 + 152) = v7;
  return result;
}

uint64_t OnDeviceAdvertFetchResponse.clientRequestId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t OnDeviceAdvertFetchResponse.iAdId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t OnDeviceAdvertFetchResponse.ad.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v4 = *(v1 + 128);
  v12 = *(v1 + 112);
  v3 = v12;
  v13 = v4;
  v14 = *(v1 + 144);
  v5 = v14;
  v6 = *(v1 + 48);
  v11[0] = *(v1 + 32);
  v7 = *(v1 + 64);
  v8 = *(v1 + 80);
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v2;
  *a1 = v11[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  return sub_1E15E6A70(v11, v10);
}

uint64_t OnDeviceAdFetchFailReason.rawValue.getter()
{
  v1 = 0x74756F656D6974;
  if (*v0 != 1)
  {
    v1 = 0x64417963696C6F70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6961764164416F6ELL;
  }
}

uint64_t sub_1E15E6A70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB68D0, &qword_1E1B1C900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

AppStoreKit::OnDeviceAdFetchFailReason_optional __swiftcall OnDeviceAdFetchFailReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1E15E6B40(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x74756F656D6974;
  if (v2 != 1)
  {
    v4 = 0x64417963696C6F70;
    v3 = 0xEC000000706F7244;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6961764164416F6ELL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xED0000656C62616CLL;
  }

  v7 = 0xE700000000000000;
  v8 = 0x74756F656D6974;
  if (*a2 != 1)
  {
    v8 = 0x64417963696C6F70;
    v7 = 0xEC000000706F7244;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6961764164416F6ELL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xED0000656C62616CLL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

unint64_t sub_1E15E6C60()
{
  result = qword_1ECEB68D8;
  if (!qword_1ECEB68D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB68D8);
  }

  return result;
}

uint64_t sub_1E15E6CB4()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E15E6D6C(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E15E6E10(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E15E6ED0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000656C62616CLL;
  v4 = 0xE700000000000000;
  v5 = 0x74756F656D6974;
  if (v2 != 1)
  {
    v5 = 0x64417963696C6F70;
    v4 = 0xEC000000706F7244;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6961764164416F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit14OnDeviceAdvertVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy153_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1E15E6F90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 153))
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

uint64_t sub_1E15E6FEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 153) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 153) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t AdProcessingPipelineProxy.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t AdProcessingPipelineProxy.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

uint64_t sub_1E15E70BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_1E15E70F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (*(v5 + 16))
  {
    v10 = *(v5 + 24);
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 8);
    swift_unknownObjectRetain();
    v13 = v12(a3, a4, ObjectType, v10);
    if (v13)
    {
      v14 = v13[15];
      v15 = v13[16];
      __swift_project_boxed_opaque_existential_1Tm(v13 + 12, v14);
      v16 = (*(v15 + 8))(a1, a2, a5 & 1, v14, v15);
      swift_unknownObjectRelease();

      return v16;
    }

    else
    {
      sub_1E13EBC74();
      swift_allocError();
      *v19 = 1;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1E13EBC74();
    swift_allocError();
    *v18 = 0;
    return swift_willThrow();
  }
}

uint64_t AdProcessingPipelineProxy.JSAdvertProcessingPipelineProxyError.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

uint64_t AdProcessingPipelineProxy.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_1E15E7354()
{
  result = qword_1ECEB68E0;
  if (!qword_1ECEB68E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB68E0);
  }

  return result;
}

void PersonalizationData.msoContext.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_1E13BBA90(v2, v3, v4, v5);
}

__n128 PersonalizationData.msoContext.setter(uint64_t a1)
{
  sub_1E13BBAE0(*v1, v1[1], v1[2], v1[3]);
  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v4;
  return result;
}

double static PersonalizationData.empty.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void *PersonalizationDataProvider.__allocating_init(dataSources:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1E15E8690(a1);

  return v2;
}

void *PersonalizationDataProvider.init(dataSources:)(uint64_t a1)
{
  v1 = sub_1E15E8690(a1);

  return v1;
}

uint64_t sub_1E15E7560(char *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2840, &qword_1E1B02E90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CC0;
  *(inited + 32) = v1;
  v3 = sub_1E13C4918(inited);
  swift_setDeallocating();
  v4 = sub_1E15E75E8(v3);

  return v4;
}

uint64_t sub_1E15E75E8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 24);

  v5 = sub_1E15E7BAC(v4, a1, sub_1E15E7E20, sub_1E15E7E20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB68E8, &qword_1E1B52DF0);
  v19 = 0u;
  v20 = 0u;
  result = sub_1E1AF582C();
  v7 = result;
  if (*(v5 + 2))
  {
    v8 = 0;
    v9 = 1 << v5[32];
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v5 + 7);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = v11;
LABEL_11:
      v11 = (v13 - 1) & v13;
      v15 = *(v2 + 16);
      if (*(v15 + 16))
      {
        result = sub_1E15954C8(*(*(v5 + 6) + (__clz(__rbit64(v13)) | (v8 << 6))));
        if (v16)
        {
          v17 = *(v15 + 56);
          *(swift_allocObject() + 16) = *(v17 + 16 * result);
          *(&v20 + 1) = sub_1E1AF470C();
          v21 = MEMORY[0x1E69AB218];
          __swift_allocate_boxed_opaque_existential_0(&v19);
          swift_unknownObjectRetain_n();
          sub_1E1AF46FC();
          sub_1E15E89B0();
          v18 = sub_1E1AF585C();

          swift_unknownObjectRelease();

          result = __swift_destroy_boxed_opaque_existential_1(&v19);
          v7 = v18;
        }
      }
    }

    while (1)
    {
      v14 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v14 >= v12)
      {
        goto LABEL_14;
      }

      v13 = *&v5[8 * v14 + 56];
      ++v8;
      if (v13)
      {
        v8 = v14;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return v7;
  }

  return result;
}

uint64_t sub_1E15E7804(char *a1)
{
  v2 = v1;
  v4 = sub_1E1AEF55C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = *a1;
  v18[3] = type metadata accessor for PersonalizationDataProvider();
  v18[0] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB68F8, &qword_1E1B1CD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CC0;
  *(inited + 32) = 0xD00000000000003ALL;
  *(inited + 40) = 0x80000001E1B692A0;
  *(inited + 48) = v8;

  v10 = sub_1E15A12C4(inited);
  swift_setDeallocating();
  sub_1E1308058(inited + 32, &qword_1ECEB6900, &qword_1E1B1CD68);
  if (qword_1ECEB1108 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE1D2488;
  sub_1E13BFF54(v18, v17);
  v12 = v11;
  sub_1E14C6870(v10);

  sub_1E1AEF51C();
  sub_1E1308058(v18, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v13 = [objc_opt_self() defaultCenter];
  v14 = sub_1E1AEF4FC();
  [v13 postNotification_];

  LOBYTE(v18[0]) = v8;
  sub_1E1AF35BC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1E15E7A58(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 32))(&v6, ObjectType, a2);
  v5 = v6;
  return sub_1E15E7804(&v5);
}

void *PersonalizationDataProvider.deinit()
{

  return v0;
}

uint64_t PersonalizationDataProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_1E15E7B3C(uint64_t a1, uint64_t a2, __n128 a3)
{

  return sub_1E15E7BAC(a1, a2, sub_1E15E82B4, sub_1E15E82B4);
}

void *sub_1E15E7BAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v15 = swift_slowAlloc();

    v13 = sub_1E15E7D88(v15, v10, a2, a1, a4);

    MEMORY[0x1E6901640](v15, -1, -1);
  }

  return v13;
}

void *sub_1E15E7D88(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
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

void sub_1E15E7E20(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3;
  if (a4[2] >= *(a3 + 16))
  {
LABEL_38:
    v29 = 0;
    v30 = v4 + 56;
    v31 = 1 << *(v4 + 32);
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v58 = 0;
    v60 = v32 & *(v4 + 56);
    v52 = (v31 + 63) >> 6;
    v33 = a4 + 7;
LABEL_42:
    while (v60)
    {
      v34 = __clz(__rbit64(v60));
      v60 &= v60 - 1;
LABEL_49:
      v56 = v34 | (v29 << 6);
      v37 = *(*(v4 + 48) + v56);
      sub_1E1AF762C();
      if (v37)
      {
        v38 = 7304045;
      }

      else
      {
        v38 = 1701736302;
      }

      if (v37)
      {
        v39 = 0xE300000000000000;
      }

      else
      {
        v39 = 0xE400000000000000;
      }

      sub_1E1AF5F0C();

      v40 = sub_1E1AF767C();
      v41 = a4;
      v42 = -1 << *(a4 + 32);
      v43 = v40 & ~v42;
      if ((*(v33 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
      {
        v44 = ~v42;
        while (1)
        {
          v45 = *(v41[6] + v43) ? 7304045 : 1701736302;
          v46 = *(v41[6] + v43) ? 0xE300000000000000 : 0xE400000000000000;
          if (v45 == v38 && v46 == v39)
          {
            break;
          }

          v48 = sub_1E1AF74AC();

          if (v48)
          {
            goto LABEL_71;
          }

          v43 = (v43 + 1) & v44;
          v41 = a4;
          if (((*(v33 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
          {
            v4 = a3;
            goto LABEL_42;
          }
        }

LABEL_71:
        *(a1 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
        v49 = __OFADD__(v58++, 1);
        v4 = a3;
        if (v49)
        {
          __break(1u);
LABEL_74:
          v5 = v58;
          goto LABEL_75;
        }
      }
    }

    v35 = v29;
    while (1)
    {
      v29 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v29 >= v52)
      {
        goto LABEL_74;
      }

      v36 = *(v30 + 8 * v29);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v60 = (v36 - 1) & v36;
        goto LABEL_49;
      }
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v9 = a4[7];
    v7 = a4 + 7;
    v8 = v9;
    v10 = 1 << *(v7 - 24);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v55 = v11 & v8;
    v50 = (v10 + 63) >> 6;
    v51 = v7;
    v59 = a3 + 56;
LABEL_6:
    while (v55)
    {
      v12 = __clz(__rbit64(v55));
      v55 &= v55 - 1;
      v13 = v12 | (v6 << 6);
      v4 = a3;
      v14 = a4;
LABEL_13:
      v17 = *(v14[6] + v13);
      sub_1E1AF762C();
      if (v17)
      {
        v18 = 7304045;
      }

      else
      {
        v18 = 1701736302;
      }

      if (v17)
      {
        v19 = 0xE300000000000000;
      }

      else
      {
        v19 = 0xE400000000000000;
      }

      sub_1E1AF5F0C();

      v20 = sub_1E1AF767C();
      v21 = -1 << *(v4 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      v4 = 1 << v22;
      if (((1 << v22) & *(v59 + 8 * (v22 >> 6))) != 0)
      {
        v57 = v5;
        v24 = ~v21;
        while (1)
        {
          v25 = *(*(a3 + 48) + v22) ? 7304045 : 1701736302;
          v26 = *(*(a3 + 48) + v22) ? 0xE300000000000000 : 0xE400000000000000;
          if (v25 == v18 && v26 == v19)
          {
            break;
          }

          v28 = sub_1E1AF74AC();

          if (v28)
          {
            goto LABEL_35;
          }

          v22 = (v22 + 1) & v24;
          v23 = v22 >> 6;
          v4 = 1 << v22;
          if ((*(v59 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
          {
            v5 = v57;
            goto LABEL_6;
          }
        }

LABEL_35:
        a1[v23] |= v4;
        v5 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          __break(1u);
          goto LABEL_38;
        }
      }
    }

    v15 = v6;
    v4 = a3;
    v14 = a4;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v50)
      {
LABEL_75:

        sub_1E19B7EF8(a1, a2, v5, v4);
        return;
      }

      v16 = v51[v6];
      ++v15;
      if (v16)
      {
        v55 = (v16 - 1) & v16;
        v13 = __clz(__rbit64(v16)) | (v6 << 6);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1E15E82B4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_1E1AF762C();

      sub_1E1AF5F0C();
      v26 = sub_1E1AF767C();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_1E1AF74AC() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(a1 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          sub_1E19B812C(a1, a2, v53, v5);
          return;
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_1E1AF762C();

      sub_1E1AF5F0C();
      v39 = sub_1E1AF767C();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_1E1AF74AC() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        a1[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
}

void *sub_1E15E8690(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3640, qword_1E1B07D08);
  swift_allocObject();
  v1[4] = sub_1E1AF35CC();
  v4 = *(a1 + 16);
  if (v4)
  {
    v31 = a1;
    v5 = (a1 + 32);
    v6 = MEMORY[0x1E69E7CC8];
    v7 = *(a1 + 16);
    while (1)
    {
      v32 = *v5;
      ObjectType = swift_getObjectType();
      v9 = *(*(&v32 + 1) + 32);
      swift_unknownObjectRetain();
      v9(&v34, ObjectType, *(&v32 + 1));
      v10 = v34;
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v6;
      v12 = sub_1E15954C8(v10);
      v14 = v6[2];
      v15 = (v13 & 1) == 0;
      v16 = __OFADD__(v14, v15);
      v17 = v14 + v15;
      if (v16)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        result = sub_1E1AF757C();
        __break(1u);
        return result;
      }

      v18 = v13;
      if (v6[3] < v17)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v22 = v12;
      sub_1E1418AAC();
      v12 = v22;
      v6 = v33;
      if ((v18 & 1) == 0)
      {
LABEL_11:
        v6[(v12 >> 6) + 8] |= 1 << v12;
        *(v6[6] + v12) = v10;
        *(v6[7] + 16 * v12) = v32;
        swift_unknownObjectRelease();
        v20 = v6[2];
        v16 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v16)
        {
          goto LABEL_21;
        }

        v6[2] = v21;
        goto LABEL_4;
      }

LABEL_3:
      *(v6[7] + 16 * v12) = v32;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
LABEL_4:
      ++v5;
      if (!--v7)
      {
        v2 = v1;
        v1[2] = v6;

        v1[3] = sub_1E13C445C(v23);
        v24 = (v31 + 40);
        do
        {
          v25 = *v24;
          v26 = swift_getObjectType();
          v27 = *(v25 + 16);
          swift_unknownObjectRetain();

          v27(v28, &protocol witness table for PersonalizationDataProvider, v26, v25);
          swift_unknownObjectRelease();
          v24 += 2;
          --v4;
        }

        while (v4);
        return v2;
      }
    }

    sub_1E168DAB0(v17, isUniquelyReferenced_nonNull_native);
    v12 = sub_1E15954C8(v10);
    if ((v18 & 1) != (v19 & 1))
    {
      goto LABEL_22;
    }

LABEL_10:
    if ((v18 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_3;
  }

  v1[2] = MEMORY[0x1E69E7CC8];

  v1[3] = sub_1E13C445C(v29);
  return v2;
}

uint64_t sub_1E15E8948(_OWORD *a1)
{
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  return (*(v3 + 40))(v7, ObjectType, v3);
}

unint64_t sub_1E15E89B0()
{
  result = qword_1ECEB68F0;
  if (!qword_1ECEB68F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB68E8, &qword_1E1B52DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB68F0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit10MSOContextVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E15E8B8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20, &unk_1E1B02E40);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_1E1AF649C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_1E154B56C(0, 0, v4, &unk_1E1B1CEF0, v6);
}

uint64_t sub_1E15E8C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E15E8CB8, 0, 0);
}

uint64_t sub_1E15E8CB8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_1E15E8DAC;

    return sub_1E15E9460();
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1E15E8DAC(char a1)
{
  v2 = *(*v1 + 56);
  *(*v1 + 80) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1E15E8EC4, v2, 0);
}

uint64_t sub_1E15E8EC4()
{
  if (*(v0 + 80) == 1)
  {
    v1 = sub_1E15E8F48;
  }

  else
  {

    v1 = sub_1E15E90F0;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1E15E8F48()
{
  sub_1E1AF644C();
  *(v0 + 72) = sub_1E1AF643C();
  v2 = sub_1E1AF63CC();

  return MEMORY[0x1EEE6DFA0](sub_1E15E8FDC, v2, v1);
}

uint64_t sub_1E15E8FDC()
{
  v1 = *(v0 + 56);

  v2 = [objc_opt_self() defaultCenter];
  sub_1E15EC5C8();
  sub_1E1AF6A5C();

  return MEMORY[0x1EEE6DFA0](sub_1E15E9088, v1, 0);
}

uint64_t sub_1E15E9088()
{

  return MEMORY[0x1EEE6DFA0](sub_1E15E90F0, 0, 0);
}

uint64_t sub_1E15E9118(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1E15E91AC;

  return sub_1E15E9460();
}

uint64_t sub_1E15E91AC(char a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1E15E92AC, 0, 0);
}

void *Restrictions.deinit()
{
  v1 = *(v0 + 120);
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_10:

    swift_defaultActor_destroy();
    return v0;
  }

  v2 = sub_1E1AF71CC();
  if (!v2)
  {
    goto LABEL_10;
  }

LABEL_3:
  result = objc_opt_self();
  if (v2 >= 1)
  {
    v4 = result;

    v5 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1E68FFD80](v5, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v5 + 32);
        swift_unknownObjectRetain();
      }

      ++v5;
      v7 = [v4 defaultCenter];
      [v7 removeObserver_];
      swift_unknownObjectRelease();
    }

    while (v2 != v5);

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t Restrictions.__deallocating_deinit()
{
  Restrictions.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E15E9460()
{
  *(v1 + 584) = v0;
  sub_1E1AF389C();
  *(v1 + 592) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E15E94F0, v0, 0);
}

uint64_t sub_1E15E94F0()
{
  v1 = *(v0 + 584);
  if (*(v1 + 128))
  {
    if (qword_1EE1D27D0 != -1)
    {
      swift_once();
      v1 = *(v0 + 584);
    }

    v2 = sub_1E1AF591C();
    __swift_project_value_buffer(v2, qword_1EE215498);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    *(v0 + 72) = type metadata accessor for Restrictions();
    *(v0 + 48) = v1;

    sub_1E1AF385C();
    sub_1E13E44F8(v0 + 48);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    v3 = *(v0 + 8);

    return v3(0);
  }

  else
  {
    *(v1 + 128) = 1;
    if (qword_1EE1D27D0 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 584);
    v6 = sub_1E1AF591C();
    *(v0 + 600) = v6;
    *(v0 + 608) = __swift_project_value_buffer(v6, qword_1EE215498);
    *(v0 + 616) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    v7 = *(sub_1E1AF38EC() - 8);
    *(v0 + 624) = *(v7 + 72);
    *(v0 + 744) = *(v7 + 80);
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v8 = type metadata accessor for Restrictions();
    *(v0 + 632) = v8;
    *(v0 + 40) = v8;
    *(v0 + 16) = v5;

    sub_1E1AF385C();
    sub_1E13E44F8(v0 + 16);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    return MEMORY[0x1EEE6DFA0](sub_1E15E98BC, 0, 0);
  }
}

uint64_t sub_1E15E98BC()
{
  v1 = objc_opt_self();
  v0[80] = v1;
  v2 = [v1 sharedConnection];
  if (v2)
  {
    v5 = v2;
    v6 = [v2 effectiveValueForSetting_];

    if (v6)
    {
      v7 = [v6 integerValue];
    }

    else
    {
      v7 = 1000;
    }

    v0[81] = v7;
    v3 = v0[73];
    v2 = sub_1E15E999C;
    v4 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1E15E999C()
{
  v1 = v0[81];
  sub_1E1AF690C();
  v0[82] = 0;
  v2 = v0[70];
  v0[83] = v2;
  if (v1 != v2)
  {
    v3 = v0[81];
    v6 = v0[79];
    v4 = v0[73];
    sub_1E15EAD60(v3);
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v0[49] = v6;
    v0[46] = v4;

    sub_1E1AF385C();
    sub_1E13E44F8((v0 + 46));
    sub_1E1AF387C();
    v0[10] = v3;
    v0[13] = MEMORY[0x1E69E6530];
    sub_1E1AF385C();
    sub_1E13E44F8((v0 + 10));
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();
  }

  return MEMORY[0x1EEE6DFA0](sub_1E15E9B84, 0, 0);
}

uint64_t sub_1E15E9B84()
{
  v1 = [*(v0 + 640) sharedConnection];
  if (v1)
  {
    v4 = v1;
    v5 = *(v0 + 584);
    *(v0 + 753) = [v1 isOnDeviceAppInstallationAllowed];

    v1 = sub_1E15E9C20;
    v2 = v5;
    v3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E15E9C20()
{
  v1 = *(v0 + 753);
  v2 = *(v0 + 656);
  sub_1E1AF690C();
  *(v0 + 672) = v2;
  if (v1 == *(v0 + 748))
  {
    v5 = *(v0 + 648) != *(v0 + 664);
  }

  else
  {
    v3 = *(v0 + 753);
    v7 = *(v0 + 632);
    v4 = *(v0 + 584);
    sub_1E15EAF18(v3);
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    *(v0 + 136) = v7;
    *(v0 + 112) = v4;

    sub_1E1AF385C();
    sub_1E13E44F8(v0 + 112);
    sub_1E1AF387C();
    *(v0 + 144) = v3;
    *(v0 + 168) = MEMORY[0x1E69E6370];
    sub_1E1AF385C();
    sub_1E13E44F8(v0 + 144);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    v5 = 1;
  }

  *(v0 + 754) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E15E9E24, 0, 0);
}

uint64_t sub_1E15E9E24()
{
  v1 = [*(v0 + 640) sharedConnection];
  if (v1)
  {
    v4 = v1;
    v5 = *(v0 + 584);
    *(v0 + 755) = [v1 isAppRemovalAllowed];

    v1 = sub_1E15E9EC0;
    v2 = v5;
    v3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E15E9EC0()
{
  v1 = *(v0 + 755);
  v2 = *(v0 + 672);
  sub_1E1AF690C();
  *(v0 + 680) = v2;
  if (v1 == *(v0 + 752))
  {
    v5 = *(v0 + 754);
  }

  else
  {
    v3 = *(v0 + 755);
    v7 = *(v0 + 632);
    v4 = *(v0 + 584);
    sub_1E15EAF18(v3);
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    *(v0 + 200) = v7;
    *(v0 + 176) = v4;

    sub_1E1AF385C();
    sub_1E13E44F8(v0 + 176);
    sub_1E1AF387C();
    *(v0 + 208) = v3;
    *(v0 + 232) = MEMORY[0x1E69E6370];
    sub_1E1AF385C();
    sub_1E13E44F8(v0 + 208);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    v5 = 1;
  }

  *(v0 + 756) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E15EA0B8, 0, 0);
}

uint64_t sub_1E15EA0B8()
{
  v1 = *(v0 + 584);
  *(v0 + 757) = [objc_opt_self() isRunningInStoreDemoMode];

  return MEMORY[0x1EEE6DFA0](sub_1E15EA138, v1, 0);
}

uint64_t sub_1E15EA138()
{
  v1 = *(v0 + 757);
  v2 = *(v0 + 680);
  sub_1E1AF690C();
  *(v0 + 688) = v2;
  if (v1 == *(v0 + 749))
  {
    v5 = *(v0 + 756);
  }

  else
  {
    v3 = *(v0 + 757);
    v7 = *(v0 + 632);
    v4 = *(v0 + 584);
    sub_1E15EAF18(v3);
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    *(v0 + 240) = v4;
    *(v0 + 264) = v7;

    sub_1E1AF385C();
    sub_1E13E44F8(v0 + 240);
    sub_1E1AF387C();
    *(v0 + 296) = MEMORY[0x1E69E6370];
    *(v0 + 272) = v3;
    sub_1E1AF385C();
    sub_1E13E44F8(v0 + 272);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    v5 = 1;
  }

  *(v0 + 758) = v5;
  *(v0 + 696) = *(*(v0 + 584) + 112);

  return MEMORY[0x1EEE6DFA0](sub_1E15EA338, 0, 0);
}

uint64_t sub_1E15EA338()
{
  v1 = [*(*(v0 + 696) + 16) ams_activeiTunesAccount];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 ams_isManagedAppleID];
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 759) = v3;
  v4 = *(v0 + 584);

  return MEMORY[0x1EEE6DFA0](sub_1E15EA3DC, v4, 0);
}