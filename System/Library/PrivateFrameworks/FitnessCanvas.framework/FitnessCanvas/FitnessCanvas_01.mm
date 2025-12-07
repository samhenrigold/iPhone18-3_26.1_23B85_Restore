uint64_t sub_1E5CF6668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_13FitnessCanvas0B20LayoutProviderSourceOyxq_G(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E5CF66D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5CF6720(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_1E5CF677C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

void sub_1E5CF67B0(uint64_t a1)
{
  v2 = *(a1 + 280);
  v36 = *(a1 + 128);
  v37 = v36;
  v35 = v2;
  *v38 = v2;
  type metadata accessor for CanvasLayoutProviderSource(255, &v37);
  v3 = sub_1E5D04370();
  if (v4 <= 0x3F)
  {
    v51 = 0;
    v62 = v3;
    v5 = *(a1 + 32);
    v6 = *(a1 + 64);
    v7 = *(a1 + 104);
    v8 = *(a1 + 120);
    v9 = *(a1 + 168);
    v10 = *(a1 + 200);
    v11 = *(a1 + 256);
    v12 = *(a1 + 272);
    v13 = *(a1 + 296);
    *&v37 = *(a1 + 16);
    *(&v37 + 1) = v5;
    *v38 = v6;
    *&v38[8] = *(a1 + 88);
    v39 = v7;
    v40 = v8;
    v41 = v36;
    v14 = *(a1 + 240);
    v45 = *(a1 + 224);
    v42 = *(a1 + 144);
    v43 = v9;
    v44 = v10;
    v46 = v14;
    v47 = v11;
    v48 = v12;
    v49 = v35;
    v50 = v13;
    type metadata accessor for CanvasFeature(255, &v37);
    swift_getWitnessTable();
    sub_1E5D043F0();
    swift_getWitnessTable();
    v15 = sub_1E5D04240();
    if (v16 <= 0x3F)
    {
      v52 = 0;
      v63 = v15;
      sub_1E5D04620();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066EC8, &qword_1E5D06928);
      swift_getFunctionTypeMetadata3();
      v17 = sub_1E5D03FC0();
      if (v18 <= 0x3F)
      {
        v53 = 0;
        v64 = v17;
        swift_getFunctionTypeMetadata1();
        v19 = sub_1E5D03FC0();
        if (v20 <= 0x3F)
        {
          v54 = 0;
          v65 = v19;
          swift_getFunctionTypeMetadata1();
          v21 = sub_1E5D03FC0();
          if (v22 <= 0x3F)
          {
            v55 = 0;
            v66 = v21;
            swift_getFunctionTypeMetadata1();
            v23 = sub_1E5D03FC0();
            if (v24 <= 0x3F)
            {
              v56 = 0;
              v67 = v23;
              swift_getFunctionTypeMetadata1();
              v25 = sub_1E5D03FC0();
              if (v26 <= 0x3F)
              {
                v57 = 0;
                v68 = v25;
                sub_1E5D03F90();
                v37 = v36;
                *v38 = v35;
                sub_1E5D041A0();
                swift_getFunctionTypeMetadata3();
                v27 = sub_1E5D03FC0();
                if (v28 <= 0x3F)
                {
                  v58 = 0;
                  v69 = v27;
                  swift_getFunctionTypeMetadata1();
                  v29 = sub_1E5D03FC0();
                  if (v30 <= 0x3F)
                  {
                    v59 = 0;
                    v70 = v29;
                    sub_1E5CF6B54(319);
                    if (v32 <= 0x3F)
                    {
                      v60 = 0;
                      v71 = v31;
                      v33 = sub_1E5D03F80();
                      if (v34 <= 0x3F)
                      {
                        v61 = 0;
                        v72 = v33;
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
    }
  }
}

void sub_1E5CF6B54(uint64_t a1)
{
  if (!qword_1EE2FA0F8)
  {
    sub_1E5D04270();
    v1 = sub_1E5D04620();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2FA0F8);
    }
  }
}

uint64_t sub_1E5CF6BAC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1E5CF6BC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1E5CF6C28@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v39 = v2[3];
  v37 = v2[5];
  v38 = v2[4];
  v35 = v2[7];
  v36 = v2[6];
  v33 = v2[9];
  v34 = v2[8];
  v31 = v2[11];
  v32 = v2[10];
  v29 = v2[13];
  v30 = v2[12];
  v27 = v2[15];
  v28 = v2[14];
  v25 = v2[17];
  v26 = v2[16];
  v23 = v2[19];
  v24 = v2[18];
  v21 = v2[21];
  v22 = v2[20];
  v19 = v2[23];
  v20 = v2[22];
  v17 = v2[25];
  v18 = v2[24];
  v15 = v2[27];
  v16 = v2[26];
  v3 = v2[29];
  v14 = v2[28];
  v43[0] = v2[2];
  v40 = v43[0];
  v43[1] = v39;
  v43[2] = v38;
  v43[3] = v37;
  v43[4] = v36;
  v43[5] = v35;
  v43[6] = v34;
  v43[7] = v33;
  v43[8] = v32;
  v43[9] = v31;
  v43[10] = v30;
  v43[11] = v29;
  v43[12] = v28;
  v43[13] = v27;
  v43[14] = v26;
  v43[15] = v25;
  v43[16] = v24;
  v43[17] = v23;
  v43[18] = v22;
  v43[19] = v21;
  v43[20] = v20;
  v43[21] = v19;
  v43[22] = v18;
  v43[23] = v17;
  v43[24] = v16;
  v43[25] = v15;
  v43[26] = v14;
  v43[27] = v3;
  v5 = v2[31];
  v44 = v2[30];
  v4 = v44;
  v45 = v5;
  v7 = v2[33];
  v46 = v2[32];
  v6 = v46;
  v47 = v7;
  v9 = v2[35];
  v48 = v2[34];
  v8 = v48;
  v49 = v9;
  v11 = v2[37];
  v50 = v2[36];
  v10 = v50;
  v51 = v11;
  v12 = *(type metadata accessor for CanvasView(0, v43) - 8);
  return sub_1E5CF5470(a1, v2 + ((*(v12 + 80) + 304) & ~*(v12 + 80)), v40, v39, v38, v37, v36, v35, a2, v34, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1E5CF6E34()
{
  v37 = v0[3];
  v35 = v0[5];
  v36 = v0[4];
  v33 = v0[7];
  v34 = v0[6];
  v31 = v0[9];
  v32 = v0[8];
  v29 = v0[11];
  v30 = v0[10];
  v27 = v0[13];
  v28 = v0[12];
  v25 = v0[15];
  v26 = v0[14];
  v23 = v0[17];
  v24 = v0[16];
  v21 = v0[19];
  v22 = v0[18];
  v19 = v0[21];
  v20 = v0[20];
  v17 = v0[23];
  v18 = v0[22];
  v15 = v0[25];
  v16 = v0[24];
  v13 = v0[27];
  v14 = v0[26];
  v1 = v0[29];
  v11 = v0[30];
  v12 = v0[28];
  v10 = v0[31];
  v39[0] = v0[2];
  v38 = v39[0];
  v39[1] = v37;
  v39[2] = v36;
  v39[3] = v35;
  v39[4] = v34;
  v39[5] = v33;
  v39[6] = v32;
  v39[7] = v31;
  v39[8] = v30;
  v39[9] = v29;
  v39[10] = v28;
  v39[11] = v27;
  v39[12] = v26;
  v39[13] = v25;
  v39[14] = v24;
  v39[15] = v23;
  v39[16] = v22;
  v39[17] = v21;
  v39[18] = v20;
  v39[19] = v19;
  v39[20] = v18;
  v39[21] = v17;
  v39[22] = v16;
  v39[23] = v15;
  v39[24] = v14;
  v39[25] = v13;
  v39[26] = v12;
  v39[27] = v1;
  v39[28] = v11;
  v39[29] = v10;
  v3 = v0[33];
  v40 = v0[32];
  v2 = v40;
  v41 = v3;
  v5 = v0[35];
  v42 = v0[34];
  v4 = v42;
  v43 = v5;
  v7 = v0[37];
  v44 = v0[36];
  v6 = v44;
  v45 = v7;
  v8 = *(type metadata accessor for CanvasView(0, v39) - 8);
  return sub_1E5CF5014(v0 + ((*(v8 + 80) + 304) & ~*(v8 + 80)), v38, v37, v36, v35, v34, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14, v13, v12, v1, v11, v10, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1E5CF7054(uint64_t a1, unsigned int a2)
{
  v41 = v2[3];
  v39 = v2[5];
  v40 = v2[4];
  v37 = v2[7];
  v38 = v2[6];
  v35 = v2[9];
  v36 = v2[8];
  v33 = v2[11];
  v34 = v2[10];
  v31 = v2[13];
  v32 = v2[12];
  v29 = v2[15];
  v30 = v2[14];
  v27 = v2[17];
  v28 = v2[16];
  v25 = v2[19];
  v26 = v2[18];
  v23 = v2[21];
  v24 = v2[20];
  v21 = v2[23];
  v22 = v2[22];
  v19 = v2[25];
  v20 = v2[24];
  v17 = v2[27];
  v18 = v2[26];
  v3 = v2[29];
  v16 = v2[28];
  v45[0] = v2[2];
  v42 = v45[0];
  v45[1] = v41;
  v45[2] = v40;
  v45[3] = v39;
  v45[4] = v38;
  v45[5] = v37;
  v45[6] = v36;
  v45[7] = v35;
  v45[8] = v34;
  v45[9] = v33;
  v45[10] = v32;
  v45[11] = v31;
  v45[12] = v30;
  v45[13] = v29;
  v45[14] = v28;
  v45[15] = v27;
  v45[16] = v26;
  v45[17] = v25;
  v45[18] = v24;
  v45[19] = v23;
  v45[20] = v22;
  v45[21] = v21;
  v45[22] = v20;
  v45[23] = v19;
  v45[24] = v18;
  v45[25] = v17;
  v45[26] = v16;
  v45[27] = v3;
  v5 = v2[31];
  v46 = v2[30];
  v4 = v46;
  v47 = v5;
  v7 = v2[33];
  v48 = v2[32];
  v6 = v48;
  v49 = v7;
  v9 = v2[35];
  v50 = v2[34];
  v8 = v50;
  v51 = v9;
  v11 = v2[37];
  v52 = v2[36];
  v10 = v52;
  v53 = v11;
  v12 = *(type metadata accessor for CanvasView(0, v45) - 8);
  *&v15 = v10;
  *(&v15 + 1) = v11;
  *(&v14 + 1) = v21;
  *&v14 = v22;
  return sub_1E5CF29B4(a1, v2 + ((*(v12 + 80) + 304) & ~*(v12 + 80)), v42, v41, v40, v39, v38, v37, v36, v35, v34, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v14, v20, v19, v18, v17, v16, v3, v4, v5, v6, v7, v8, v9, v15, a2);
}

uint64_t sub_1E5CF7270(uint64_t a1)
{
  v39 = v1[4];
  v40 = v1[3];
  v37 = v1[6];
  v38 = v1[5];
  v35 = v1[8];
  v36 = v1[7];
  v33 = v1[10];
  v34 = v1[9];
  v31 = v1[12];
  v32 = v1[11];
  v29 = v1[14];
  v30 = v1[13];
  v27 = v1[16];
  v28 = v1[15];
  v25 = v1[18];
  v26 = v1[17];
  v23 = v1[20];
  v24 = v1[19];
  v21 = v1[22];
  v22 = v1[21];
  v19 = v1[24];
  v20 = v1[23];
  v17 = v1[26];
  v18 = v1[25];
  v2 = v1[29];
  v15 = v1[28];
  v16 = v1[27];
  v43[0] = v1[2];
  v41 = v43[0];
  v43[1] = v40;
  v43[2] = v39;
  v43[3] = v38;
  v43[4] = v37;
  v43[5] = v36;
  v43[6] = v35;
  v43[7] = v34;
  v43[8] = v33;
  v43[9] = v32;
  v43[10] = v31;
  v43[11] = v30;
  v43[12] = v29;
  v43[13] = v28;
  v43[14] = v27;
  v43[15] = v26;
  v43[16] = v25;
  v43[17] = v24;
  v43[18] = v23;
  v43[19] = v22;
  v43[20] = v21;
  v43[21] = v20;
  v43[22] = v19;
  v43[23] = v18;
  v43[24] = v17;
  v43[25] = v16;
  v43[26] = v15;
  v43[27] = v2;
  v4 = v1[31];
  v44 = v1[30];
  v3 = v44;
  v45 = v4;
  v6 = v1[33];
  v46 = v1[32];
  v5 = v46;
  v47 = v6;
  v8 = v1[35];
  v48 = v1[34];
  v7 = v48;
  v49 = v8;
  v9 = v1[37];
  v50 = v1[36];
  v10 = v50;
  v51 = v9;
  v11 = *(type metadata accessor for CanvasView(0, v43) - 8);
  *&v14 = v10;
  *(&v14 + 1) = v9;
  *(&v13 + 1) = v20;
  *&v13 = v21;
  return sub_1E5CF2CB4(a1, v1 + ((*(v11 + 80) + 304) & ~*(v11 + 80)), v41, v40, v39, v38, v37, v36, v35, v34, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v13, v19, v18, v17, v16, v15, v2, v3, v4, v5, v6, v7, v8, v14);
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 96);
  v9 = *(v0 + 104);
  v10 = *(v0 + 272);
  v11 = *(v0 + 280);
  v12 = *(v0 + 296);
  *&v44 = *(v0 + 16);
  *(&v44 + 1) = v1;
  *&v45 = v2;
  *(&v45 + 1) = v3;
  v46 = v5;
  v47 = v4;
  v48 = v6;
  v49 = v7;
  v50 = *(v0 + 80);
  v51 = v8;
  v52 = v9;
  v13 = *(v0 + 128);
  v53 = *(v0 + 112);
  v40 = v13;
  v54 = v13;
  v14 = *(v0 + 160);
  v55 = *(v0 + 144);
  v56 = v14;
  v15 = *(v0 + 192);
  v57 = *(v0 + 176);
  v58 = v15;
  v16 = *(v0 + 224);
  v59 = *(v0 + 208);
  v60 = v16;
  v17 = *(v0 + 256);
  v61 = *(v0 + 240);
  v62 = v17;
  v41 = v11;
  v64 = v11;
  v63 = v10;
  v65 = v12;
  v18 = type metadata accessor for CanvasView(0, &v44);
  v43 = *(*(v18 - 1) + 80);
  v42 = (v43 + 304) & ~v43;
  v19 = v0 + v42;
  if (*(v0 + v42 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v42));
  }

  sub_1E5CF639C(*(v19 + 48), *(v19 + 56));
  v20 = v18[78];
  sub_1E5D04620();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066EC8, &qword_1E5D06928);
  swift_getFunctionTypeMetadata3();
  v21 = sub_1E5D03FC0();
  (*(*(v21 - 8) + 8))(v19 + v20, v21);
  v22 = v18[79];
  swift_getFunctionTypeMetadata1();
  v23 = sub_1E5D03FC0();
  (*(*(v23 - 8) + 8))(v19 + v22, v23);
  v24 = v18[80];
  swift_getFunctionTypeMetadata1();
  v25 = sub_1E5D03FC0();
  (*(*(v25 - 8) + 8))(v19 + v24, v25);
  v26 = v18[81];
  swift_getFunctionTypeMetadata1();
  v27 = sub_1E5D03FC0();
  (*(*(v27 - 8) + 8))(v19 + v26, v27);
  v28 = v18[82];
  swift_getFunctionTypeMetadata1();
  v29 = sub_1E5D03FC0();
  (*(*(v29 - 8) + 8))(v19 + v28, v29);
  v30 = v18[83];
  sub_1E5D03F90();
  v45 = v41;
  v44 = v40;
  sub_1E5D041A0();
  swift_getFunctionTypeMetadata3();
  v31 = sub_1E5D03FC0();
  (*(*(v31 - 8) + 8))(v19 + v30, v31);
  v32 = v18[84];
  swift_getFunctionTypeMetadata1();
  v33 = sub_1E5D03FC0();
  (*(*(v33 - 8) + 8))(v19 + v32, v33);
  v34 = v18[85];
  v35 = sub_1E5D04270();
  v36 = *(v35 - 8);
  if (!(*(v36 + 48))(v19 + v34, 1, v35))
  {
    (*(v36 + 8))(v19 + v34, v35);
  }

  v37 = v18[86];
  v38 = sub_1E5D03F80();
  (*(*(v38 - 8) + 8))(v19 + v37, v38);
  return swift_deallocObject();
}

uint64_t sub_1E5CF79A0()
{
  v37 = v0[3];
  v35 = v0[5];
  v36 = v0[4];
  v33 = v0[7];
  v34 = v0[6];
  v31 = v0[9];
  v32 = v0[8];
  v29 = v0[11];
  v30 = v0[10];
  v27 = v0[13];
  v28 = v0[12];
  v25 = v0[15];
  v26 = v0[14];
  v23 = v0[17];
  v24 = v0[16];
  v21 = v0[19];
  v22 = v0[18];
  v19 = v0[21];
  v20 = v0[20];
  v17 = v0[23];
  v18 = v0[22];
  v15 = v0[25];
  v16 = v0[24];
  v13 = v0[27];
  v14 = v0[26];
  v1 = v0[29];
  v11 = v0[30];
  v12 = v0[28];
  v10 = v0[31];
  v39[0] = v0[2];
  v38 = v39[0];
  v39[1] = v37;
  v39[2] = v36;
  v39[3] = v35;
  v39[4] = v34;
  v39[5] = v33;
  v39[6] = v32;
  v39[7] = v31;
  v39[8] = v30;
  v39[9] = v29;
  v39[10] = v28;
  v39[11] = v27;
  v39[12] = v26;
  v39[13] = v25;
  v39[14] = v24;
  v39[15] = v23;
  v39[16] = v22;
  v39[17] = v21;
  v39[18] = v20;
  v39[19] = v19;
  v39[20] = v18;
  v39[21] = v17;
  v39[22] = v16;
  v39[23] = v15;
  v39[24] = v14;
  v39[25] = v13;
  v39[26] = v12;
  v39[27] = v1;
  v39[28] = v11;
  v39[29] = v10;
  v3 = v0[33];
  v40 = v0[32];
  v2 = v40;
  v41 = v3;
  v5 = v0[35];
  v42 = v0[34];
  v4 = v42;
  v43 = v5;
  v7 = v0[37];
  v44 = v0[36];
  v6 = v44;
  v45 = v7;
  v8 = *(type metadata accessor for CanvasView(0, v39) - 8);
  return sub_1E5CF2FA4(v0 + ((*(v8 + 80) + 304) & ~*(v8 + 80)), v38, v37, v36, v35, v34, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14, v13, v12, v1, v11, v10, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1E5CF7BB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066EB0, &qword_1E5D068F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5CF7C20(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = *(v4 + 304);
  v7 = a4;
  v8 = a2;
  v9 = a3 & 1;
  return v5(a1, &v8, &v7);
}

uint64_t sub_1E5CF7C64()
{
  v38 = *(v0 + 24);
  v39 = *(v0 + 16);
  v36 = *(v0 + 40);
  v37 = *(v0 + 32);
  v34 = *(v0 + 56);
  v35 = *(v0 + 48);
  v32 = *(v0 + 72);
  v33 = *(v0 + 64);
  v30 = *(v0 + 88);
  v31 = *(v0 + 80);
  v28 = *(v0 + 104);
  v29 = *(v0 + 96);
  v26 = *(v0 + 120);
  v27 = *(v0 + 112);
  v41 = *(v0 + 128);
  v24 = *(v0 + 152);
  v25 = *(v0 + 144);
  v22 = *(v0 + 168);
  v23 = *(v0 + 160);
  v20 = *(v0 + 184);
  v21 = *(v0 + 176);
  v13 = *(v0 + 216);
  v14 = *(v0 + 208);
  v12 = *(v0 + 224);
  v18 = *(v0 + 232);
  v19 = *(v0 + 192);
  v16 = *(v0 + 240);
  v17 = *(v0 + 200);
  v1 = *(v0 + 256);
  v15 = *(v0 + 248);
  v72 = *(v0 + 280);
  v40 = v72;
  v2 = *(v0 + 264);
  *&v42 = v39;
  *(&v42 + 1) = v38;
  *&v43 = v37;
  *(&v43 + 1) = v36;
  v44 = v35;
  v45 = v34;
  v46 = v33;
  v47 = v32;
  v48 = v31;
  v49 = v30;
  v50 = v29;
  v51 = v28;
  v52 = v27;
  v53 = v26;
  v54 = v41;
  v55 = v25;
  v56 = v24;
  v57 = v23;
  v58 = v22;
  v59 = v21;
  v60 = v20;
  v61 = v19;
  v62 = v17;
  v63 = v14;
  v64 = v13;
  v65 = v12;
  v66 = v18;
  v67 = v16;
  v68 = v15;
  v69 = v1;
  v70 = v2;
  v4 = *(v0 + 296);
  v71 = *(v0 + 272);
  v3 = v71;
  v73 = v4;
  v5 = *(type metadata accessor for CanvasView(0, &v42) - 8);
  v6 = (*(v5 + 80) + 304) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v43 = v40;
  v42 = v41;
  v8 = *(sub_1E5D041A0() - 8);
  *(&v11 + 1) = v4;
  *&v11 = *(&v40 + 1);
  *(&v10 + 1) = v20;
  *&v10 = v21;
  return sub_1E5CF5D94(v0 + v6, v0 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), v39, v38, v37, v36, v35, v34, v33, v32, v31, v30, v29, v28, v27, v26, v41, *(&v41 + 1), v25, v24, v23, v22, v10, v19, v17, v14, v13, v12, v18, v16, v15, v1, v2, v3, v40, v11);
}

uint64_t sub_1E5CF7F64()
{
  if (*v0)
  {
    return 0x6F5465726F6E6769;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_1E5CF7FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v6 || (sub_1E5D047F0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F5465726F6E6769 && a2 == 0xE900000000000070)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5D047F0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E5CF8094(uint64_t a1)
{
  v2 = sub_1E5CF84B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5CF80D0(uint64_t a1)
{
  v2 = sub_1E5CF84B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5CF810C(uint64_t a1)
{
  v2 = sub_1E5CF8560();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5CF8148(uint64_t a1)
{
  v2 = sub_1E5CF8560();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5CF8184(uint64_t a1)
{
  v2 = sub_1E5CF850C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5CF81C0(uint64_t a1)
{
  v2 = sub_1E5CF850C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CanvasInsetBehavior.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066ED8, &qword_1E5D06AD0);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066EE0, &qword_1E5D06AD8);
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066EE8, &qword_1E5D06AE0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5CF84B8();
  sub_1E5D04880();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1E5CF850C();
    sub_1E5D04780();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1E5CF8560();
    sub_1E5D04780();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_1E5CF84B8()
{
  result = qword_1ED066EF0;
  if (!qword_1ED066EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED066EF0);
  }

  return result;
}

unint64_t sub_1E5CF850C()
{
  result = qword_1ED066EF8;
  if (!qword_1ED066EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED066EF8);
  }

  return result;
}

unint64_t sub_1E5CF8560()
{
  result = qword_1ED066F00;
  if (!qword_1ED066F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED066F00);
  }

  return result;
}

uint64_t sub_1E5CF85D0@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E5CF8718(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t CanvasInsetBehavior.hashValue.getter(char a1)
{
  sub_1E5D04840();
  MEMORY[0x1E693BA70](a1 & 1);
  return sub_1E5D04860();
}

uint64_t sub_1E5CF868C()
{
  v1 = *v0;
  sub_1E5D04840();
  MEMORY[0x1E693BA70](v1);
  return sub_1E5D04860();
}

uint64_t sub_1E5CF86D4(uint64_t a1)
{
  v2 = *v1;
  sub_1E5D04840();
  MEMORY[0x1E693BA70](v2);
  return sub_1E5D04860();
}

uint64_t sub_1E5CF8718(void *a1)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066F48, &qword_1E5D06E50);
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v3 = v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066F50, &qword_1E5D06E58);
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066F58, &qword_1E5D06E60);
  v25 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5CF84B8();
  v10 = v26;
  sub_1E5D04870();
  if (v10)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v4;
  v26 = a1;
  v12 = v23;
  v11 = v24;
  v13 = v9;
  v14 = sub_1E5D04760();
  if (*(v14 + 16) != 1)
  {
    v16 = sub_1E5D04680();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066B70, &qword_1E5D04FC0);
    *v18 = &type metadata for CanvasInsetBehavior;
    sub_1E5D04710();
    sub_1E5D04670();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v16);
    swift_willThrow();
    (*(v25 + 8))(v13, v7);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20[1] = v14;
  v27 = *(v14 + 32);
  if (v27)
  {
    v29 = 1;
    sub_1E5CF850C();
    sub_1E5D04700();
    v15 = v25;
    (*(v22 + 8))(v3, v11);
  }

  else
  {
    v28 = 0;
    sub_1E5CF8560();
    sub_1E5D04700();
    v15 = v25;
    (*(v12 + 8))(v6, v21);
  }

  (*(v15 + 8))(v9, v7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v27;
}

unint64_t sub_1E5CF8B58()
{
  result = qword_1ED066F08;
  if (!qword_1ED066F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED066F08);
  }

  return result;
}

uint64_t sub_1E5CF8BBC(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1E5CF8C4C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E5CF8D30()
{
  result = qword_1ED066F10;
  if (!qword_1ED066F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED066F10);
  }

  return result;
}

unint64_t sub_1E5CF8D88()
{
  result = qword_1ED066F18;
  if (!qword_1ED066F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED066F18);
  }

  return result;
}

unint64_t sub_1E5CF8DE0()
{
  result = qword_1ED066F20;
  if (!qword_1ED066F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED066F20);
  }

  return result;
}

unint64_t sub_1E5CF8E38()
{
  result = qword_1ED066F28;
  if (!qword_1ED066F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED066F28);
  }

  return result;
}

unint64_t sub_1E5CF8E90()
{
  result = qword_1ED066F30;
  if (!qword_1ED066F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED066F30);
  }

  return result;
}

unint64_t sub_1E5CF8EE8()
{
  result = qword_1ED066F38;
  if (!qword_1ED066F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED066F38);
  }

  return result;
}

unint64_t sub_1E5CF8F40()
{
  result = qword_1ED066F40;
  if (!qword_1ED066F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED066F40);
  }

  return result;
}

uint64_t CanvasFeature.init(environment:fetcher:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18)
{
  *&v59 = a8;
  *&v57 = a7;
  v55 = a6;
  *&v58 = a18;
  v56 = a17;
  v54 = a16;
  v53 = a15;
  v52 = a14;
  v51 = a13;
  v50 = a12;
  v49 = a11;
  v48 = a10;
  v24 = sub_1E5D03F80();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v48 - v29;
  sub_1E5D03F70();
  v60[0] = a3;
  v60[1] = a4;
  v60[2] = a5;
  v60[3] = v55;
  v60[4] = v57;
  v60[5] = v59;
  v61 = v48;
  v62 = v49;
  v63 = v50;
  v64 = v51;
  v65 = v52;
  v66 = v53;
  v67 = v54;
  v68 = v56;
  v69 = v58;
  v31 = *(type metadata accessor for CanvasFeature(0, v60) + 200);
  v32 = *(v25 + 16);
  v33 = a1[1];
  v59 = *a1;
  v58 = v33;
  v57 = a1[2];
  v32(&a9[v31], v30, v24);
  v34 = v58;
  *a9 = v59;
  *(a9 + 1) = v34;
  *(a9 + 2) = v57;
  *&v59 = a2;
  sub_1E5CF6BC4(a2, (a9 + 48));
  if (qword_1EE2FA120 != -1)
  {
    swift_once();
  }

  v35 = sub_1E5D04210();
  __swift_project_value_buffer(v35, qword_1EE2FC850);
  v32(v28, v30, v24);
  v36 = sub_1E5D041F0();
  v37 = sub_1E5D04610();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v58 = v30;
    v40 = v39;
    v60[0] = v39;
    *v38 = 136315138;
    sub_1E5CE0354(&qword_1EE2FACB8, MEMORY[0x1E69695E0]);
    v41 = sub_1E5D047E0();
    v43 = v42;
    v44 = *(v25 + 8);
    v44(v28, v24);
    v45 = sub_1E5D0166C(v41, v43, v60);

    *(v38 + 4) = v45;
    _os_log_impl(&dword_1E5CDB000, v36, v37, "Canvas Feature %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x1E693BE80](v40, -1, -1);
    MEMORY[0x1E693BE80](v38, -1, -1);

    __swift_destroy_boxed_opaque_existential_1(v59);
    return (v44)(v58, v24);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v59);
    v47 = *(v25 + 8);
    v47(v28, v24);
    return (v47)(v30, v24);
  }
}

uint64_t sub_1E5CF9450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, uint64_t a16, uint64_t a17)
{
  v69 = a2;
  v68 = a1;
  v67 = a15;
  v66 = a14;
  v65 = a13;
  v64 = a12;
  v63 = a11;
  v62 = a10;
  v61 = a9;
  v60 = sub_1E5D03F80();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70[0] = a3;
  v70[1] = a4;
  v70[2] = a5;
  v70[3] = a6;
  v70[4] = a7;
  v70[5] = a8;
  v71 = a9;
  v72 = a10;
  v73 = a11;
  v74 = a12;
  v75 = a13;
  v76 = a14;
  v77 = a15;
  v78 = a16;
  v79 = a17;
  v24 = type metadata accessor for CanvasFeature.TaskIdentifier(0, v70);
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = (&v57 - v30);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = (&v57 - v33);
  MEMORY[0x1EEE9AC00](v32);
  v36 = (&v57 - v35);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *&v67 = *(TupleTypeMetadata2 - 8);
  v38 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v40 = &v57 - v39;
  v41 = &v57 + *(v38 + 48) - v39;
  *&v66 = v25;
  v42 = *(v25 + 16);
  v42(&v57 - v39, v68, v24);
  v42(v41, v69, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v42(v28, v40, v24);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v51 = v59;
        v52 = v58;
        v53 = v60;
        (*(v59 + 32))(v58, v41, v60);
        v50 = sub_1E5D03F60();
        v54 = *(v51 + 8);
        v54(v52, v53);
        v54(v28, v53);
        goto LABEL_22;
      }

      (*(v59 + 8))(v28, v60);
LABEL_24:
      v50 = 0;
      v55 = v67;
      v24 = TupleTypeMetadata2;
      goto LABEL_25;
    }

    v42(v31, v40, v24);
    v47 = *v31;
    v46 = v31[1];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      if (v47 != *v41 || v46 != *(v41 + 1))
      {
        goto LABEL_17;
      }

LABEL_21:

      v50 = 1;
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  if (EnumCaseMultiPayload)
  {
    v42(v34, v40, v24);
    v45 = *v34;
    v44 = v34[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  v42(v36, v40, v24);
  v45 = *v36;
  v44 = v36[1];
  if (swift_getEnumCaseMultiPayload())
  {
LABEL_18:

    goto LABEL_24;
  }

LABEL_13:
  if (v45 == *v41 && v44 == *(v41 + 1))
  {
    goto LABEL_21;
  }

LABEL_17:
  v50 = sub_1E5D047F0();

LABEL_22:
  v55 = v66;
LABEL_25:
  (*(v55 + 8))(v40, v24);
  return v50 & 1;
}

uint64_t sub_1E5CF99D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5D03F80();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v2, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v13 = EnumCaseMultiPayload != 0;
LABEL_5:
    MEMORY[0x1E693BA70](v13);
    sub_1E5D04450();
  }

  if (EnumCaseMultiPayload == 2)
  {
    v13 = 2;
    goto LABEL_5;
  }

  (*(v5 + 32))(v8, v10, v4);
  MEMORY[0x1E693BA70](3);
  sub_1E5CE0354(&qword_1EE2FACC0, MEMORY[0x1E69695B8]);
  sub_1E5D04410();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1E5CF9BF0(uint64_t a1)
{
  sub_1E5D04840();
  sub_1E5CF99D8(v3, a1);
  return sub_1E5D04860();
}

uint64_t sub_1E5CF9C40(uint64_t a1, uint64_t a2)
{
  sub_1E5D04840();
  sub_1E5CF99D8(v4, a2);
  return sub_1E5D04860();
}

uint64_t CanvasFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t *, uint64_t), uint64_t a5)
{
  v422 = a4;
  v408 = a3;
  WitnessTable = a2;
  v390 = a1;
  v6 = *(a5 + 24);
  *&v426 = *(a5 + 16);
  *(&v426 + 1) = v6;
  v7 = *(a5 + 40);
  v427 = *(a5 + 32);
  v434 = *(a5 + 48);
  v428 = *(a5 + 56);
  v429 = *(a5 + 64);
  v436 = *(a5 + 72);
  v430 = *(a5 + 88);
  v431 = *(a5 + 96);
  v8 = *(a5 + 112);
  v432 = *(a5 + 104);
  v433 = v8;
  v10 = *(a5 + 120);
  v9 = *(a5 + 128);
  v11 = *(a5 + 136);
  v12 = *(a5 + 144);
  v14 = *(a5 + 152);
  v13 = *(a5 + 160);
  v15 = *(a5 + 168);
  v16 = *(a5 + 184);
  *&v438 = v426;
  *(&v438 + 1) = v6;
  *&v439 = v427;
  *(&v439 + 1) = v7;
  v440 = v434;
  v441 = v428;
  v442 = v429;
  v412 = v436;
  v443 = v436;
  v410 = *(&v436 + 1);
  v444 = v430;
  v445 = v431;
  v446 = v432;
  v447 = v8;
  v448 = v10;
  v449 = v9;
  v450 = v11;
  v451 = v12;
  v452 = v14;
  v453 = v13;
  v435 = v15;
  v418 = v15;
  v454 = v15;
  v411 = *(&v15 + 1);
  v455 = v16;
  v424 = type metadata accessor for CanvasAction(255, &v438);
  v17 = sub_1E5D04380();
  v385 = sub_1E5D04620();
  v384 = *(v385 - 8);
  v18 = MEMORY[0x1EEE9AC00](v385);
  v387 = &v372 - v19;
  v389 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v388 = &v372 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v438 = v426;
  *&v439 = v427;
  v423 = v7;
  *(&v439 + 1) = v7;
  v440 = v434;
  v441 = v428;
  v442 = v429;
  v443 = v436;
  v444 = v430;
  v445 = v431;
  v446 = v432;
  v447 = v433;
  v416 = v10;
  v448 = v10;
  v449 = v9;
  v417 = v9;
  v421 = v11;
  v450 = v11;
  v451 = v12;
  v419 = v12;
  v414 = v14;
  v452 = v14;
  v453 = v13;
  v415 = v13;
  v454 = v435;
  v420 = v16;
  v455 = v16;
  v400 = type metadata accessor for CanvasFeature.TaskIdentifier(0, &v438);
  v403 = *(v400 - 8);
  v21 = MEMORY[0x1EEE9AC00](v400);
  v399 = (&v372 - v22);
  v406 = v17;
  v407 = *(v17 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v372 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v404 = &v372 - v26;
  v392 = sub_1E5D03F80();
  v391 = *(v392 - 8);
  v27 = MEMORY[0x1EEE9AC00](v392);
  v386 = &v372 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v409 = a5;
  v405 = *(a5 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v381 = &v372 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v383 = &v372 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v401 = &v372 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v382 = &v372 - v36;
  v395 = v37;
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v372 - v38;
  v439 = v435;
  v438 = v436;
  v40 = sub_1E5D041A0();
  *&v436 = *(v40 - 8);
  v41 = MEMORY[0x1EEE9AC00](v40);
  v394 = &v372 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v393 = (&v372 - v44);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v397 = &v372 - v46;
  v396 = v47;
  MEMORY[0x1EEE9AC00](v45);
  v398 = (&v372 - v48);
  v49 = sub_1E5D03F90();
  v50 = *(v49 - 8);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v53 = &v372 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v424;
  v55 = *(v424 - 8);
  v56 = MEMORY[0x1EEE9AC00](v51);
  v58 = (&v372 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v56);
  v60 = (&v372 - v59);
  v61 = *(WitnessTable + 8);
  v402 = *WitnessTable;
  *&v435 = v61;
  (*(v55 + 16))(&v372 - v59, v422, v54);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v50 + 32))(v53, v60, v49);
      v128 = v413;
      v130 = *(v413 + 9);
      v129 = *(v413 + 10);
      __swift_project_boxed_opaque_existential_1(v413 + 6, v130);
      (*(v129 + 200))(v53, v130, v129);
      (*(v128 + 2))(v53);
      goto LABEL_17;
    case 2u:
      (*(v50 + 32))(v53, v60, v49);
      v87 = v413;
      v89 = *(v413 + 9);
      v88 = *(v413 + 10);
      __swift_project_boxed_opaque_existential_1(v413 + 6, v89);
      (*(v88 + 208))(v53, v89, v88);
      (*(v87 + 4))(v53);
LABEL_17:
      result = (*(v50 + 8))(v53, v49);
      break;
    case 3u:
      v90 = v424;
      swift_storeEnumTagMultiPayload();
      CanvasFeature.reduce(localState:sharedState:sideEffects:action:)(v390, WitnessTable, v408, v58, v409);
      v91 = *(v55 + 8);
      v91(v58, v90);
      result = (v91)(v60, v90);
      break;
    case 4u:
      v80 = *v60;
      v438 = v426;
      *&v439 = v427;
      *(&v439 + 1) = v423;
      v440 = v434;
      v441 = v428;
      v442 = v429;
      *&v443 = v412;
      *(&v443 + 1) = v410;
      v444 = v430;
      v445 = v431;
      v446 = v432;
      v447 = v433;
      v448 = v416;
      v449 = v417;
      v450 = v421;
      v451 = v419;
      v452 = v414;
      v453 = v415;
      *&v454 = v418;
      *(&v454 + 1) = v411;
      v455 = v420;
      v81 = type metadata accessor for CanvasState(0, &v438);
      v82 = WitnessTable + *(v81 + 204);
      result = sub_1E5CDE618(*v82, *(v82 + 8));
      *v82 = v80;
      *(v82 + 8) = 0;
      break;
    case 5u:
      (*(v55 + 8))(v60, v424);
      v438 = v426;
      *&v439 = v427;
      *(&v439 + 1) = v423;
      v440 = v434;
      v441 = v428;
      v442 = v429;
      *&v443 = v412;
      *(&v443 + 1) = v410;
      v444 = v430;
      v445 = v431;
      v446 = v432;
      v447 = v433;
      v448 = v416;
      v449 = v417;
      v450 = v421;
      v451 = v419;
      v452 = v414;
      v453 = v415;
      *&v454 = v418;
      *(&v454 + 1) = v411;
      v455 = v420;
      v131 = type metadata accessor for CanvasState(0, &v438);
      v132 = (WitnessTable + *(v131 + 212));

      *v132 = 0;
      v132[1] = 0;
      break;
    case 6u:
      v133 = v389;
      v134 = v388;
      v135 = v423;
      (*(v389 + 32))(v388, v60, v423);
      v136 = v387;
      (*v413)(v134);
      v137 = v407;
      v138 = v406;
      if ((*(v407 + 48))(v136, 1, v406) == 1)
      {
        (*(v133 + 8))(v134, v135);
        result = v384[1](v136, v385);
      }

      else
      {
        (*(v137 + 32))(v25, v136, v138);
        (*(v137 + 16))(v404, v25, v138);
        sub_1E5D044A0();
        sub_1E5D04490();
        (*(v137 + 8))(v25, v138);
        result = (*(v133 + 8))(v134, v135);
      }

      break;
    case 7u:
      v92 = *(v436 + 32);
      v380 = v40;
      v422 = (v436 + 32);
      v398 = v92;
      (v92)(v394, v60, v40);
      v438 = v426;
      *&v439 = v427;
      *(&v439 + 1) = v423;
      v440 = v434;
      v441 = v428;
      v442 = v429;
      v93 = v412;
      *&v443 = v412;
      *(&v443 + 1) = v410;
      v444 = v430;
      v445 = v431;
      v446 = v432;
      v447 = v433;
      v448 = v416;
      v449 = v417;
      v450 = v421;
      v451 = v419;
      v452 = v414;
      v453 = v415;
      *&v454 = v418;
      *(&v454 + 1) = v411;
      v455 = v420;
      v94 = type metadata accessor for CanvasState(0, &v438);
      v95 = WitnessTable + *(v94 + 204);
      if (*(v95 + 8) < 2u || *v95)
      {
        v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066F60, &qword_1E5D06E80);
        *&v435 = v96[12];
        v97 = v96[16];
        v98 = v96[20];
        v99 = v404;
        WitnessTable = &v404[v96[24]];
        v100 = v409;
        v101 = v413;
        v102 = v399;
        (*(v391 + 16))(v399, &v413[*(v409 + 200)], v392);
        v103 = v400;
        swift_storeEnumTagMultiPayload();
        swift_getWitnessTable();
        sub_1E5D046F0();
        (*(v403 + 8))(v102, v103);
        v104 = *MEMORY[0x1E6999B50];
        v105 = sub_1E5D043C0();
        (*(*(v105 - 8) + 104))(&v99[v97], v104, v105);
        v106 = *MEMORY[0x1E6999B40];
        v107 = sub_1E5D043B0();
        (*(*(v107 - 8) + 104))(&v99[v98], v106, v107);
        v108 = v405;
        v109 = v401;
        (*(v405 + 16))(v401, v101, v100);
        v110 = v93;
        v111 = v436;
        v112 = v397;
        v113 = v380;
        (*(v436 + 16))(v397, v394, v380);
        v114 = (*(v108 + 80) + 192) & ~*(v108 + 80);
        v115 = (v395 + *(v111 + 80) + v114) & ~*(v111 + 80);
        v116 = swift_allocObject();
        v117 = *(&v426 + 1);
        *(v116 + 2) = v426;
        *(v116 + 3) = v117;
        v118 = v423;
        *(v116 + 4) = v427;
        *(v116 + 5) = v118;
        v119 = v428;
        *(v116 + 6) = v434;
        *(v116 + 7) = v119;
        *(v116 + 8) = v429;
        *(v116 + 9) = v110;
        v120 = v430;
        *(v116 + 10) = v410;
        *(v116 + 11) = v120;
        v121 = v432;
        *(v116 + 12) = v431;
        *(v116 + 13) = v121;
        v122 = v416;
        *(v116 + 14) = v433;
        *(v116 + 15) = v122;
        v123 = v421;
        *(v116 + 16) = v417;
        *(v116 + 17) = v123;
        v124 = v414;
        *(v116 + 18) = v419;
        *(v116 + 19) = v124;
        v125 = v418;
        *(v116 + 20) = v415;
        *(v116 + 21) = v125;
        v126 = v420;
        *(v116 + 22) = v411;
        *(v116 + 23) = v126;
        (*(v108 + 32))(&v116[v114], v109, v409);
        (v398)(&v116[v115], v112, v113);
        v127 = WitnessTable;
        *WitnessTable = &unk_1E5D06E90;
        *(v127 + 8) = v116;
        sub_1E5D04510();
        (*(v407 + 104))(v99, *MEMORY[0x1E6999AD8], v406);
        sub_1E5D044A0();
        sub_1E5D04490();
        result = (*(v111 + 8))(v394, v113);
      }

      else
      {
        v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066F60, &qword_1E5D06E80);
        v385 = v252[12];
        v253 = v252[16];
        v254 = v252[20];
        v376 = v252;
        v255 = v404;
        v384 = &v404[v252[24]];
        v256 = v409;
        v257 = *(v391 + 16);
        v258 = v413;
        v259 = &v413[*(v409 + 200)];
        v260 = v399;
        v374 = v391 + 16;
        v373 = v257;
        v257(v399, v259, v392);
        v261 = v400;
        swift_storeEnumTagMultiPayload();

        WitnessTable = swift_getWitnessTable();
        sub_1E5D046F0();
        v262 = *(v403 + 8);
        v403 += 8;
        v393 = v262;
        (v262)(v260, v261);
        v263 = *MEMORY[0x1E6999B50];
        v264 = sub_1E5D043C0();
        v265 = *(v264 - 8);
        v266 = *(v265 + 104);
        LODWORD(v390) = v263;
        v389 = v264;
        v388 = v266;
        v387 = (v265 + 104);
        (v266)(&v255[v253], v263);
        v267 = *MEMORY[0x1E6999B40];
        v268 = sub_1E5D043B0();
        (*(*(v268 - 8) + 104))(&v255[v254], v267, v268);
        v269 = v405;
        v271 = v405 + 16;
        v270 = *(v405 + 16);
        v272 = v401;
        v270(v401, v258, v256);
        v273 = *(v269 + 80);
        v274 = (v273 + 192) & ~v273;
        v375 = v274 + v395;
        v383 = (v273 | 7);
        v275 = swift_allocObject();
        v276 = *(&v426 + 1);
        *(v275 + 2) = v426;
        *(v275 + 3) = v276;
        v277 = v423;
        *(v275 + 4) = v427;
        *(v275 + 5) = v277;
        v278 = v428;
        *(v275 + 6) = v434;
        *(v275 + 7) = v278;
        *(v275 + 8) = v429;
        *(v275 + 9) = v93;
        v279 = v430;
        *(v275 + 10) = v410;
        *(v275 + 11) = v279;
        v280 = v432;
        *(v275 + 12) = v431;
        *(v275 + 13) = v280;
        v281 = v416;
        *(v275 + 14) = v433;
        *(v275 + 15) = v281;
        v282 = v421;
        *(v275 + 16) = v417;
        *(v275 + 17) = v282;
        v283 = v414;
        *(v275 + 18) = v419;
        *(v275 + 19) = v283;
        v284 = v418;
        *(v275 + 20) = v415;
        *(v275 + 21) = v284;
        v285 = v420;
        *(v275 + 22) = v411;
        *(v275 + 23) = v285;
        v286 = *(v269 + 32);
        v395 = v274;
        v382 = (v269 + 32);
        v379 = v286;
        v286(v275 + v274, v272, v256);
        v287 = v384;
        *v384 = &unk_1E5D06EA0;
        v287[1] = v275;
        sub_1E5D04510();
        v288 = *(v407 + 104);
        LODWORD(v385) = *MEMORY[0x1E6999AD8];
        v407 += 104;
        v384 = v288;
        (v288)(v255);
        v378 = sub_1E5D044A0();
        sub_1E5D04490();
        if (qword_1EE2FA120 != -1)
        {
          swift_once();
        }

        v289 = sub_1E5D04210();
        __swift_project_value_buffer(v289, qword_1EE2FC850);
        v290 = v381;
        v377 = v271;
        v270(v381, v413, v409);
        v291 = v435;

        v292 = sub_1E5D041F0();
        v293 = sub_1E5D04610();

        v294 = os_log_type_enabled(v292, v293);
        v295 = v402;
        v296 = v270;
        if (v294)
        {
          v297 = swift_slowAlloc();
          v372 = swift_slowAlloc();
          *&v438 = v372;
          *v297 = 136315394;
          v298 = sub_1E5D0166C(v295, v291, &v438);

          *(v297 + 4) = v298;
          *(v297 + 12) = 2080;
          v299 = v409;
          v300 = &v290[*(v409 + 200)];
          v301 = v291;
          v302 = v386;
          v303 = v290;
          v304 = v392;
          v373(v386, v300, v392);
          (*(v405 + 8))(v303, v299);
          sub_1E5CE0354(&qword_1EE2FACB8, MEMORY[0x1E69695E0]);
          v305 = sub_1E5D047E0();
          v307 = v306;
          v308 = v302;
          v291 = v301;
          v296 = v270;
          (*(v391 + 8))(v308, v304);
          v309 = sub_1E5D0166C(v305, v307, &v438);

          *(v297 + 14) = v309;
          _os_log_impl(&dword_1E5CDB000, v292, v293, "Fetching Canvas %s %s...", v297, 0x16u);
          v310 = v372;
          swift_arrayDestroy();
          MEMORY[0x1E693BE80](v310, -1, -1);
          MEMORY[0x1E693BE80](v297, -1, -1);

          v311 = v402;
        }

        else
        {
          (*(v405 + 8))(v290, v409);

          v311 = v295;
        }

        v348 = v400;
        v349 = v399;
        *v95 = 1;
        *(v95 + 8) = 2;
        v400 = v376[12];
        v350 = v376[16];
        v405 = v376[20];
        v351 = v404;
        v352 = &v404[v376[24]];
        *v349 = v311;
        v349[1] = v291;
        swift_storeEnumTagMultiPayload();

        sub_1E5D046F0();
        (v393)(v349, v348);
        (v388)(v351 + v350, v390, v389);
        v353 = v401;
        v354 = v409;
        v296(v401, v413, v409);
        v355 = v436;
        v356 = v397;
        v357 = v394;
        v358 = v380;
        (*(v436 + 16))(v397, v394, v380);
        v359 = (v375 + *(v355 + 80)) & ~*(v355 + 80);
        v360 = swift_allocObject();
        v361 = *(&v426 + 1);
        *(v360 + 2) = v426;
        *(v360 + 3) = v361;
        v362 = v423;
        *(v360 + 4) = v427;
        *(v360 + 5) = v362;
        v363 = v428;
        *(v360 + 6) = v434;
        *(v360 + 7) = v363;
        v364 = v412;
        *(v360 + 8) = v429;
        *(v360 + 9) = v364;
        v365 = v430;
        *(v360 + 10) = v410;
        *(v360 + 11) = v365;
        v366 = v432;
        *(v360 + 12) = v431;
        *(v360 + 13) = v366;
        v367 = v416;
        *(v360 + 14) = v433;
        *(v360 + 15) = v367;
        v368 = v421;
        *(v360 + 16) = v417;
        *(v360 + 17) = v368;
        v369 = v414;
        *(v360 + 18) = v419;
        *(v360 + 19) = v369;
        v370 = v418;
        *(v360 + 20) = v415;
        *(v360 + 21) = v370;
        v371 = v420;
        *(v360 + 22) = v411;
        *(v360 + 23) = v371;
        v379(&v360[v395], v353, v354);
        (v398)(&v360[v359], v356, v358);
        *v352 = &unk_1E5D06EB0;
        *(v352 + 1) = v360;
        sub_1E5D04510();
        sub_1E5CFE320(v351 + v405);
        (v384)(v351, v385, v406);
        sub_1E5D04490();
        result = (*(v355 + 8))(v357, v358);
      }

      break;
    case 8u:
      v438 = v426;
      *&v439 = v427;
      *(&v439 + 1) = v423;
      v440 = v434;
      v441 = v428;
      v442 = v429;
      *&v443 = v412;
      *(&v443 + 1) = v410;
      v444 = v430;
      v445 = v431;
      v446 = v432;
      v447 = v433;
      v448 = v416;
      v449 = v417;
      v450 = v421;
      v451 = v419;
      v452 = v414;
      v453 = v415;
      *&v454 = v418;
      *(&v454 + 1) = v411;
      v455 = v420;
      result = type metadata accessor for CanvasState(0, &v438);
      v166 = WitnessTable + *(result + 204);
      if (*(v166 + 8) == 1)
      {
        *(v166 + 8) = 0;
      }

      break;
    case 9u:
      v85 = *(v413 + 9);
      v86 = *(v413 + 10);
      __swift_project_boxed_opaque_existential_1(v413 + 6, v85);
      result = (*(v86 + 216))(v85, v86);
      break;
    case 0xAu:
      v438 = v426;
      *&v439 = v427;
      *(&v439 + 1) = v423;
      v440 = v434;
      v441 = v428;
      v442 = v429;
      *&v443 = v412;
      *(&v443 + 1) = v410;
      v444 = v430;
      v445 = v431;
      v446 = v432;
      v447 = v433;
      v448 = v416;
      v449 = v417;
      v450 = v421;
      v451 = v419;
      v452 = v414;
      v453 = v415;
      *&v454 = v418;
      *(&v454 + 1) = v411;
      v455 = v420;
      v139 = type metadata accessor for CanvasState(0, &v438);
      v140 = (v436 + 16);
      v141 = *(v436 + 16);
      v142 = WitnessTable;
      v141(v398, (WitnessTable + *(v139 + 200)), v40);
      v143 = v142 + *(v139 + 204);
      v144 = *v143;
      v145 = *(v143 + 8);
      v380 = v40;
      v422 = v141;
      if (v145 >= 2)
      {
        if (v144)
        {
          v424 = v143;
          v188 = qword_1EE2FA120;
          v189 = v435;

          if (v188 != -1)
          {
            swift_once();
          }

          v394 = v140;
          v190 = sub_1E5D04210();
          __swift_project_value_buffer(v190, qword_1EE2FC850);
          v191 = v405;
          (*(v405 + 16))(v39, v413, v409);

          v192 = sub_1E5D041F0();
          v193 = sub_1E5D04610();

          v194 = os_log_type_enabled(v192, v193);
          v195 = v406;
          if (v194)
          {
            v196 = v189;
            v197 = swift_slowAlloc();
            v393 = swift_slowAlloc();
            *&v438 = v393;
            *v197 = 136315394;
            v198 = v402;
            *(v197 + 4) = sub_1E5D0166C(v402, v196, &v438);
            *(v197 + 12) = 2080;
            v199 = v409;
            v200 = v391;
            v201 = v386;
            v202 = v195;
            v203 = v392;
            (*(v391 + 16))(v386, &v39[*(v409 + 200)], v392);
            (*(v405 + 8))(v39, v199);
            sub_1E5CE0354(&qword_1EE2FACB8, MEMORY[0x1E69695E0]);
            v204 = sub_1E5D047E0();
            v206 = v205;
            v207 = v203;
            v195 = v202;
            (*(v200 + 8))(v201, v207);
            v208 = sub_1E5D0166C(v204, v206, &v438);

            *(v197 + 14) = v208;
            _os_log_impl(&dword_1E5CDB000, v192, v193, "Refreshing Canvas %s %s...", v197, 0x16u);
            v209 = v393;
            swift_arrayDestroy();
            MEMORY[0x1E693BE80](v209, -1, -1);
            MEMORY[0x1E693BE80](v197, -1, -1);

            v210 = v404;
            v211 = v407;
            v212 = v412;
          }

          else
          {
            (*(v191 + 8))(v39, v409);

            v210 = v404;
            v211 = v407;
            v212 = v412;
            v198 = v402;
          }

          v250 = v399;
          v313 = v435;
          *v399 = v198;
          v250[1] = v313;
          v249 = v400;
          swift_storeEnumTagMultiPayload();

          swift_getWitnessTable();
          sub_1E5D046F0();
          (*(v403 + 8))(v250, v249);
          (*(v211 + 104))(v210, *MEMORY[0x1E6999AE8], v195);
          sub_1E5D044A0();
          sub_1E5D04490();
          v438 = v426;
          *&v439 = v427;
          *(&v439 + 1) = v423;
          v440 = v434;
          v441 = v429;
          v442 = v212;
          *&v443 = v428;
          *(&v443 + 1) = v430;
          v444 = v431;
          v445 = v432;
          v446 = v433;
          v447 = v416;
          v448 = v417;
          v449 = v421;
          v450 = v419;
          v451 = v415;
          v452 = v418;
          v453 = v414;
          *&v454 = v420;
          sub_1E5D04140();
          v314 = sub_1E5D04470();
          v315 = v424;
          *v424 = v314;
          *(v315 + 8) = 1;
          v248 = v413;
          v251 = WitnessTable;
        }

        else
        {
          v141(v58, v398, v40);
          v312 = v424;
          swift_storeEnumTagMultiPayload();

          v251 = WitnessTable;
          v248 = v413;
          CanvasFeature.reduce(localState:sharedState:sideEffects:action:)(v390, WitnessTable, v408, v58, v409);
          (*(v55 + 8))(v58, v312);
          v249 = v400;
          v250 = v399;
        }
      }

      else
      {
        v424 = v143;
        v146 = v435;

        sub_1E5CDE5BC(v144, v145);
        if (qword_1EE2FA120 != -1)
        {
          swift_once();
        }

        v147 = sub_1E5D04210();
        __swift_project_value_buffer(v147, qword_1EE2FC850);
        v148 = v405;
        v149 = v382;
        (*(v405 + 16))(v382, v413, v409);
        sub_1E5CDE5BC(v144, v145);

        sub_1E5CDE5BC(v144, v145);
        v150 = sub_1E5D041F0();
        v151 = sub_1E5D04610();

        if (os_log_type_enabled(v150, v151))
        {
          v152 = swift_slowAlloc();
          v393 = v150;
          v153 = v149;
          v154 = v152;
          v394 = swift_slowAlloc();
          v437 = v394;
          *v154 = 136315650;
          *(v154 + 4) = sub_1E5D0166C(v402, v146, &v437);
          *(v154 + 12) = 2080;
          LODWORD(v390) = v151;
          v155 = v409;
          v156 = v391;
          v157 = v386;
          v158 = v392;
          (*(v391 + 16))(v386, &v153[*(v409 + 200)], v392);
          (*(v148 + 8))(v153, v155);
          sub_1E5CE0354(&qword_1EE2FACB8, MEMORY[0x1E69695E0]);
          v159 = sub_1E5D047E0();
          v161 = v160;
          (*(v156 + 8))(v157, v158);
          v162 = sub_1E5D0166C(v159, v161, &v437);

          *(v154 + 14) = v162;
          *(v154 + 22) = 2048;
          v438 = v426;
          *&v439 = v427;
          *(&v439 + 1) = v423;
          v440 = v434;
          v441 = v429;
          v442 = v412;
          *&v443 = v428;
          *(&v443 + 1) = v430;
          v444 = v431;
          v445 = v432;
          v446 = v433;
          v447 = v416;
          v448 = v417;
          v449 = v421;
          v450 = v419;
          v451 = v415;
          v452 = v418;
          v453 = v414;
          *&v454 = v420;
          sub_1E5D04140();
          v163 = sub_1E5D04480();
          sub_1E5CDE618(v144, v145);
          *(v154 + 24) = v163;
          sub_1E5CDE618(v144, v145);
          v164 = v393;
          _os_log_impl(&dword_1E5CDB000, v393, v390, "Refreshing Canvas %s %s with %ld existing descriptors...", v154, 0x20u);
          v165 = v394;
          swift_arrayDestroy();
          MEMORY[0x1E693BE80](v165, -1, -1);
          MEMORY[0x1E693BE80](v154, -1, -1);
        }

        else
        {
          sub_1E5CDE618(v144, v145);
          (*(v148 + 8))(v149, v409);
          sub_1E5CDE618(v144, v145);
        }

        sub_1E5CDE618(v144, v145);
        v247 = v424;
        *v424 = v144;
        *(v247 + 8) = 1;
        v248 = v413;
        v249 = v400;
        v250 = v399;
        v251 = WitnessTable;
      }

      v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066F60, &qword_1E5D06E80);
      v424 = v316[12];
      v317 = v316[16];
      WitnessTable = v316[20];
      v318 = v404;
      v413 = &v404[v316[24]];
      v319 = v251[1];
      *v250 = *v251;
      v250[1] = v319;
      swift_storeEnumTagMultiPayload();

      swift_getWitnessTable();
      sub_1E5D046F0();
      (*(v403 + 8))(v250, v249);
      v320 = *MEMORY[0x1E6999B60];
      v321 = sub_1E5D043C0();
      (*(*(v321 - 8) + 104))(&v318[v317], v320, v321);
      v322 = v405;
      v323 = v401;
      v324 = v409;
      (*(v405 + 16))(v401, v248, v409);
      v325 = v397;
      v422(v397, v398, v380);
      v326 = (*(v322 + 80) + 192) & ~*(v322 + 80);
      v327 = v436;
      v328 = (v395 + *(v436 + 80) + v326) & ~*(v436 + 80);
      v329 = (v396 + v328 + 7) & 0xFFFFFFFFFFFFFFF8;
      v330 = swift_allocObject();
      v331 = *(&v426 + 1);
      *(v330 + 2) = v426;
      *(v330 + 3) = v331;
      v332 = v423;
      *(v330 + 4) = v427;
      *(v330 + 5) = v332;
      v333 = v428;
      *(v330 + 6) = v434;
      *(v330 + 7) = v333;
      v334 = v412;
      *(v330 + 8) = v429;
      *(v330 + 9) = v334;
      v335 = v430;
      *(v330 + 10) = v410;
      *(v330 + 11) = v335;
      v336 = v432;
      *(v330 + 12) = v431;
      *(v330 + 13) = v336;
      v337 = v416;
      *(v330 + 14) = v433;
      *(v330 + 15) = v337;
      v338 = v421;
      *(v330 + 16) = v417;
      *(v330 + 17) = v338;
      v339 = v414;
      *(v330 + 18) = v419;
      *(v330 + 19) = v339;
      v340 = v418;
      *(v330 + 20) = v415;
      *(v330 + 21) = v340;
      v341 = v420;
      *(v330 + 22) = v411;
      *(v330 + 23) = v341;
      (*(v322 + 32))(&v330[v326], v323, v324);
      v342 = v380;
      (*(v327 + 32))(&v330[v328], v325, v380);
      v343 = &v330[v329];
      v344 = v435;
      *v343 = v402;
      *(v343 + 1) = v344;
      v345 = v413;
      *v413 = &unk_1E5D06ED0;
      *(v345 + 1) = v330;
      sub_1E5D04510();
      v346 = *MEMORY[0x1E6999B48];
      v347 = sub_1E5D043B0();
      (*(*(v347 - 8) + 104))(&v318[WitnessTable], v346, v347);
      (*(v407 + 104))(v318, *MEMORY[0x1E6999AD8], v406);
      sub_1E5D044A0();
      sub_1E5D04490();
      result = (*(v327 + 8))(v398, v342);
      break;
    case 0xBu:
      v438 = v426;
      *&v439 = v427;
      *(&v439 + 1) = v423;
      v440 = v434;
      v441 = v428;
      v442 = v429;
      *&v443 = v412;
      *(&v443 + 1) = v410;
      v444 = v430;
      v445 = v431;
      v446 = v432;
      v447 = v433;
      v448 = v416;
      v449 = v417;
      v450 = v421;
      v451 = v419;
      v66 = v414;
      v452 = v414;
      v453 = v415;
      *&v454 = v418;
      *(&v454 + 1) = v411;
      v455 = v420;
      v67 = type metadata accessor for CanvasState(0, &v438);
      v68 = *(v436 + 16);
      v69 = WitnessTable;
      v70 = WitnessTable + *(v67 + 200);
      v71 = v393;
      v422 = (v436 + 16);
      (v68)(v393, v70, v40);
      v72 = v69 + *(v67 + 204);
      v398 = *v72;
      v73 = *(v72 + 8);
      v380 = v40;
      if (v73 < 2 || v398)
      {
        v390 = v72;
        LODWORD(v424) = v73;
        v167 = qword_1EE2FA120;
        v168 = v435;

        if (v167 != -1)
        {
          swift_once();
        }

        v169 = sub_1E5D04210();
        __swift_project_value_buffer(v169, qword_1EE2FC850);
        v170 = v405;
        v171 = v383;
        (*(v405 + 16))(v383, v413, v409);

        v172 = sub_1E5D041F0();
        v173 = sub_1E5D04610();

        v174 = os_log_type_enabled(v172, v173);
        v394 = v68;
        if (v174)
        {
          v175 = swift_slowAlloc();
          v389 = swift_slowAlloc();
          *&v438 = v389;
          *v175 = 136315394;
          *(v175 + 4) = sub_1E5D0166C(v402, v168, &v438);
          *(v175 + 12) = 2080;
          v176 = v409;
          v177 = v391;
          v178 = v386;
          v179 = v392;
          (*(v391 + 16))(v386, &v171[*(v409 + 200)], v392);
          (*(v170 + 8))(v171, v176);
          sub_1E5CE0354(&qword_1EE2FACB8, MEMORY[0x1E69695E0]);
          v180 = sub_1E5D047E0();
          v182 = v181;
          (*(v177 + 8))(v178, v179);
          v183 = sub_1E5D0166C(v180, v182, &v438);

          *(v175 + 14) = v183;
          v168 = v435;
          _os_log_impl(&dword_1E5CDB000, v172, v173, "Reloading Canvas %s %s...", v175, 0x16u);
          v184 = v389;
          swift_arrayDestroy();
          v185 = v434;
          v66 = v414;
          MEMORY[0x1E693BE80](v184, -1, -1);
          v186 = v415;
          MEMORY[0x1E693BE80](v175, -1, -1);

          v187 = v407;
        }

        else
        {
          (*(v170 + 8))(v171, v409);

          v187 = v407;
          v186 = v415;
          v185 = v434;
        }

        v79 = v399;
        *v399 = v402;
        v79[1] = v168;
        v76 = v400;
        swift_storeEnumTagMultiPayload();

        swift_getWitnessTable();
        v75 = v404;
        sub_1E5D046F0();
        v77 = v403;
        (*(v403 + 8))(v79, v76);
        (*(v187 + 104))(v75, *MEMORY[0x1E6999AE8], v406);
        sub_1E5D044A0();
        sub_1E5D04490();
        v438 = v426;
        *&v439 = v427;
        *(&v439 + 1) = v423;
        v440 = v185;
        v441 = v429;
        v442 = v412;
        *&v443 = v428;
        *(&v443 + 1) = v430;
        v444 = v431;
        v445 = v432;
        v446 = v433;
        v447 = v416;
        v448 = v417;
        v449 = v421;
        v450 = v419;
        v451 = v186;
        v452 = v418;
        v453 = v66;
        *&v454 = v420;
        sub_1E5D04140();
        v213 = sub_1E5D04470();
        sub_1E5CDE618(v398, v424);
        v214 = v390;
        *v390 = v213;
        *(v214 + 8) = 1;
        v78 = WitnessTable;
        v71 = v393;
        v68 = v394;
      }

      else
      {
        (v68)(v58, v71, v40);
        v74 = v424;
        swift_storeEnumTagMultiPayload();

        CanvasFeature.reduce(localState:sharedState:sideEffects:action:)(v390, v69, v408, v58, v409);
        (*(v55 + 8))(v58, v74);
        v75 = v404;
        v76 = v400;
        v77 = v403;
        v78 = v69;
        v79 = v399;
      }

      v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066F60, &qword_1E5D06E80);
      v424 = v215[12];
      v216 = v215[16];
      WitnessTable = v215[20];
      v404 = &v75[v215[24]];
      v217 = *v78;
      v218 = v78[1];
      *v79 = v217;
      v79[1] = v218;
      swift_storeEnumTagMultiPayload();

      swift_getWitnessTable();
      sub_1E5D046F0();
      (*(v77 + 8))(v79, v76);
      v219 = *MEMORY[0x1E6999B60];
      v220 = sub_1E5D043C0();
      (*(*(v220 - 8) + 104))(&v75[v216], v219, v220);
      v221 = v405;
      v222 = v401;
      v223 = v409;
      (*(v405 + 16))(v401, v413, v409);
      v224 = v397;
      (v68)(v397, v71, v380);
      v225 = (*(v221 + 80) + 192) & ~*(v221 + 80);
      v226 = v436;
      v227 = (v395 + *(v436 + 80) + v225) & ~*(v436 + 80);
      v228 = (v396 + v227 + 7) & 0xFFFFFFFFFFFFFFF8;
      v229 = swift_allocObject();
      v230 = *(&v426 + 1);
      *(v229 + 2) = v426;
      *(v229 + 3) = v230;
      v231 = v423;
      *(v229 + 4) = v427;
      *(v229 + 5) = v231;
      v232 = v428;
      *(v229 + 6) = v434;
      *(v229 + 7) = v232;
      v233 = v412;
      *(v229 + 8) = v429;
      *(v229 + 9) = v233;
      v234 = v430;
      *(v229 + 10) = v410;
      *(v229 + 11) = v234;
      v235 = v432;
      *(v229 + 12) = v431;
      *(v229 + 13) = v235;
      v236 = v416;
      *(v229 + 14) = v433;
      *(v229 + 15) = v236;
      v237 = v421;
      *(v229 + 16) = v417;
      *(v229 + 17) = v237;
      v238 = v414;
      *(v229 + 18) = v419;
      *(v229 + 19) = v238;
      v239 = v418;
      *(v229 + 20) = v415;
      *(v229 + 21) = v239;
      v240 = v420;
      *(v229 + 22) = v411;
      *(v229 + 23) = v240;
      (*(v221 + 32))(&v229[v225], v222, v223);
      v241 = v380;
      (*(v226 + 32))(&v229[v227], v224, v380);
      v242 = &v229[v228];
      v243 = v435;
      *v242 = v402;
      *(v242 + 1) = v243;
      v244 = v404;
      *v404 = &unk_1E5D06EC0;
      *(v244 + 1) = v229;
      sub_1E5D04510();
      v245 = *MEMORY[0x1E6999B48];
      v246 = sub_1E5D043B0();
      (*(*(v246 - 8) + 104))(&v75[WitnessTable], v245, v246);
      (*(v407 + 104))(v75, *MEMORY[0x1E6999AD8], v406);
      sub_1E5D044A0();
      sub_1E5D04490();
      result = (*(v226 + 8))(v393, v241);
      break;
    case 0xCu:
      v438 = v426;
      *&v439 = v427;
      *(&v439 + 1) = v423;
      v440 = v434;
      v441 = v428;
      v442 = v429;
      *&v443 = v412;
      *(&v443 + 1) = v410;
      v444 = v430;
      v445 = v431;
      v446 = v432;
      v447 = v433;
      v448 = v416;
      v449 = v417;
      v450 = v421;
      v451 = v419;
      v452 = v414;
      v453 = v415;
      *&v454 = v418;
      *(&v454 + 1) = v411;
      v455 = v420;
      v83 = type metadata accessor for CanvasState(0, &v438);
      v84 = WitnessTable + *(v83 + 204);
      result = sub_1E5CDE618(*v84, *(v84 + 8));
      *v84 = 0;
      *(v84 + 8) = 2;
      break;
    default:
      v62 = *v60;
      if ((sub_1E5D04580() & 1) == 0)
      {
        v63 = *(v413 + 9);
        v64 = *(v413 + 10);
        __swift_project_boxed_opaque_existential_1(v413 + 6, v63);
        (*(v64 + 224))(v62, v63, v64);
      }

      break;
  }

  return result;
}

uint64_t sub_1E5CFD660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[49] = a4;
  v8[50] = a5;
  v8[47] = a2;
  v8[48] = a3;
  v8[46] = a1;
  v9 = sub_1E5D03F80();
  v8[51] = v9;
  v8[52] = *(v9 - 8);
  v8[53] = swift_task_alloc();
  v8[2] = a6;
  v8[3] = a7;
  v8[4] = a8;
  v8[5] = v19;
  v8[6] = v20;
  v8[7] = v21;
  v8[8] = v22;
  v8[9] = v23;
  v8[10] = v24;
  v8[11] = v25;
  v8[12] = v26;
  v8[13] = v27;
  v8[14] = v28;
  v8[15] = v29;
  v8[16] = v30;
  v8[17] = v31;
  v8[18] = v32;
  v8[19] = v33;
  v8[20] = v34;
  v8[21] = v35;
  v8[22] = v36;
  v8[23] = v37;
  v10 = type metadata accessor for CanvasFeature(0, (v8 + 2));
  v8[54] = v10;
  v8[55] = *(v10 - 8);
  v8[56] = swift_task_alloc();
  v8[24] = a6;
  v8[25] = a7;
  v8[26] = a8;
  v8[27] = v19;
  v8[28] = v20;
  v8[29] = v21;
  v8[30] = v22;
  v8[31] = v23;
  v8[32] = v24;
  v8[33] = v25;
  v8[34] = v26;
  v8[35] = v27;
  v8[36] = v28;
  v8[37] = v29;
  v8[38] = v30;
  v8[39] = v31;
  v8[40] = v32;
  v8[41] = v33;
  v8[42] = v34;
  v8[43] = v35;
  v8[44] = v36;
  v8[45] = v37;
  v11 = type metadata accessor for CanvasAction(0, (v8 + 24));
  v8[57] = v11;
  v8[58] = *(v11 - 8);
  v8[59] = swift_task_alloc();
  sub_1E5D04500();
  v8[60] = sub_1E5D044F0();
  v13 = sub_1E5D044D0();
  v8[61] = v13;
  v8[62] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1E5CFD970, v13, v12);
}

uint64_t sub_1E5CFD970()
{
  v1 = v0[47];
  v2 = v1[9];
  v3 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v2);
  v7 = (*(v3 + 184) + **(v3 + 184));
  v4 = swift_task_alloc();
  v0[63] = v4;
  *v4 = v0;
  v4[1] = sub_1E5CFDAA0;
  v5 = v0[48];

  return v7(v5, v2, v3);
}

uint64_t sub_1E5CFDAA0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 512) = v1;

  if (v1)
  {
    v5 = v4[61];
    v6 = v4[62];
    v7 = sub_1E5CFDE14;
  }

  else
  {
    v4[65] = a1;
    v5 = v4[61];
    v6 = v4[62];
    v7 = sub_1E5CFDBC8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E5CFDBC8()
{
  **(v0 + 472) = *(v0 + 520);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 528) = v1;
  v2 = sub_1E5D043A0();
  *v1 = v0;
  v1[1] = sub_1E5CFDC90;
  v3 = *(v0 + 472);

  return MEMORY[0x1EEE01A40](v3, v2);
}

uint64_t sub_1E5CFDC90()
{
  v1 = *v0;
  v2 = *(*v0 + 472);
  v3 = *(*v0 + 464);
  v4 = *(*v0 + 456);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 496);
  v6 = *(v1 + 488);

  return MEMORY[0x1EEE6DFA0](sub_1E5D034E8, v6, v5);
}

uint64_t sub_1E5CFDE14()
{
  v33 = v0;
  if (qword_1EE2FA120 != -1)
  {
    swift_once();
  }

  v1 = v0[64];
  v3 = v0[55];
  v2 = v0[56];
  v4 = v0[54];
  v5 = v0[47];
  v6 = sub_1E5D04210();
  __swift_project_value_buffer(v6, qword_1EE2FC850);
  (*(v3 + 16))(v2, v5, v4);

  MEMORY[0x1E693BCE0](v1);
  v7 = sub_1E5D041F0();
  v8 = sub_1E5D04600();

  MEMORY[0x1E693BCD0](v1);
  if (os_log_type_enabled(v7, v8))
  {
    v28 = v0[64];
    v31 = v8;
    v9 = v0[55];
    v10 = v0[56];
    log = v7;
    v11 = v0[53];
    v12 = v0[54];
    v14 = v0[51];
    v13 = v0[52];
    v16 = v0[49];
    v15 = v0[50];
    v17 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v32 = v29;
    *v17 = 136315650;
    *(v17 + 4) = sub_1E5D0166C(v16, v15, &v32);
    *(v17 + 12) = 2080;
    (*(v13 + 16))(v11, v10 + *(v12 + 200), v14);
    (*(v9 + 8))(v10, v12);
    sub_1E5CE0354(&qword_1EE2FACB8, MEMORY[0x1E69695E0]);
    v18 = sub_1E5D047E0();
    v20 = v19;
    (*(v13 + 8))(v11, v14);
    v21 = sub_1E5D0166C(v18, v20, &v32);

    *(v17 + 14) = v21;
    *(v17 + 22) = 2112;
    MEMORY[0x1E693BCE0](v28);
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 24) = v22;
    *v27 = v22;
    v7 = log;
    _os_log_impl(&dword_1E5CDB000, log, v31, "Error refreshing Canvas %s %s: %@", v17, 0x20u);
    sub_1E5D033CC(v27);
    MEMORY[0x1E693BE80](v27, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1E693BE80](v29, -1, -1);
    MEMORY[0x1E693BE80](v17, -1, -1);
  }

  else
  {
    (*(v0[55] + 8))(v0[56], v0[54]);
  }

  swift_storeEnumTagMultiPayload();
  v23 = swift_task_alloc();
  v0[67] = v23;
  v24 = sub_1E5D043A0();
  *v23 = v0;
  v23[1] = sub_1E5CFE19C;
  v25 = v0[59];

  return MEMORY[0x1EEE01A40](v25, v24);
}

uint64_t sub_1E5CFE19C()
{
  v1 = *v0;
  v2 = *(*v0 + 472);
  v3 = *(*v0 + 464);
  v4 = *(*v0 + 456);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 496);
  v6 = *(v1 + 488);

  return MEMORY[0x1EEE6DFA0](sub_1E5D034E4, v6, v5);
}

uint64_t sub_1E5CFE320@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6999B48];
  v3 = sub_1E5D043B0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1E5CFE394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[49] = a4;
  v8[50] = a5;
  v8[47] = a2;
  v8[48] = a3;
  v8[46] = a1;
  v9 = sub_1E5D03F80();
  v8[51] = v9;
  v8[52] = *(v9 - 8);
  v8[53] = swift_task_alloc();
  v8[2] = a6;
  v8[3] = a7;
  v8[4] = a8;
  v8[5] = v19;
  v8[6] = v20;
  v8[7] = v21;
  v8[8] = v22;
  v8[9] = v23;
  v8[10] = v24;
  v8[11] = v25;
  v8[12] = v26;
  v8[13] = v27;
  v8[14] = v28;
  v8[15] = v29;
  v8[16] = v30;
  v8[17] = v31;
  v8[18] = v32;
  v8[19] = v33;
  v8[20] = v34;
  v8[21] = v35;
  v8[22] = v36;
  v8[23] = v37;
  v10 = type metadata accessor for CanvasFeature(0, (v8 + 2));
  v8[54] = v10;
  v8[55] = *(v10 - 8);
  v8[56] = swift_task_alloc();
  v8[24] = a6;
  v8[25] = a7;
  v8[26] = a8;
  v8[27] = v19;
  v8[28] = v20;
  v8[29] = v21;
  v8[30] = v22;
  v8[31] = v23;
  v8[32] = v24;
  v8[33] = v25;
  v8[34] = v26;
  v8[35] = v27;
  v8[36] = v28;
  v8[37] = v29;
  v8[38] = v30;
  v8[39] = v31;
  v8[40] = v32;
  v8[41] = v33;
  v8[42] = v34;
  v8[43] = v35;
  v8[44] = v36;
  v8[45] = v37;
  v11 = type metadata accessor for CanvasAction(0, (v8 + 24));
  v8[57] = v11;
  v8[58] = *(v11 - 8);
  v8[59] = swift_task_alloc();
  sub_1E5D04500();
  v8[60] = sub_1E5D044F0();
  v13 = sub_1E5D044D0();
  v8[61] = v13;
  v8[62] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1E5CFE6A4, v13, v12);
}

uint64_t sub_1E5CFE6A4()
{
  v1 = v0[47];
  v2 = v1[9];
  v3 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v2);
  v7 = (*(v3 + 184) + **(v3 + 184));
  v4 = swift_task_alloc();
  v0[63] = v4;
  *v4 = v0;
  v4[1] = sub_1E5CFE7D4;
  v5 = v0[48];

  return v7(v5, v2, v3);
}

uint64_t sub_1E5CFE7D4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 512) = v1;

  if (v1)
  {
    v5 = v4[61];
    v6 = v4[62];
    v7 = sub_1E5CFEBCC;
  }

  else
  {
    v4[65] = a1;
    v5 = v4[61];
    v6 = v4[62];
    v7 = sub_1E5CFE8FC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E5CFE8FC()
{
  **(v0 + 472) = *(v0 + 520);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 528) = v1;
  v2 = sub_1E5D043A0();
  *v1 = v0;
  v1[1] = sub_1E5CFE9C4;
  v3 = *(v0 + 472);

  return MEMORY[0x1EEE01A40](v3, v2);
}

uint64_t sub_1E5CFE9C4()
{
  v1 = *v0;
  v2 = *(*v0 + 472);
  v3 = *(*v0 + 464);
  v4 = *(*v0 + 456);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 496);
  v6 = *(v1 + 488);

  return MEMORY[0x1EEE6DFA0](sub_1E5CFEB48, v6, v5);
}

uint64_t sub_1E5CFEB48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5CFEBCC()
{
  v33 = v0;
  if (qword_1EE2FA120 != -1)
  {
    swift_once();
  }

  v1 = v0[64];
  v3 = v0[55];
  v2 = v0[56];
  v4 = v0[54];
  v5 = v0[47];
  v6 = sub_1E5D04210();
  __swift_project_value_buffer(v6, qword_1EE2FC850);
  (*(v3 + 16))(v2, v5, v4);

  MEMORY[0x1E693BCE0](v1);
  v7 = sub_1E5D041F0();
  v8 = sub_1E5D04600();

  MEMORY[0x1E693BCD0](v1);
  if (os_log_type_enabled(v7, v8))
  {
    v28 = v0[64];
    v31 = v8;
    v9 = v0[55];
    v10 = v0[56];
    log = v7;
    v11 = v0[53];
    v12 = v0[54];
    v14 = v0[51];
    v13 = v0[52];
    v16 = v0[49];
    v15 = v0[50];
    v17 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v32 = v29;
    *v17 = 136315650;
    *(v17 + 4) = sub_1E5D0166C(v16, v15, &v32);
    *(v17 + 12) = 2080;
    (*(v13 + 16))(v11, v10 + *(v12 + 200), v14);
    (*(v9 + 8))(v10, v12);
    sub_1E5CE0354(&qword_1EE2FACB8, MEMORY[0x1E69695E0]);
    v18 = sub_1E5D047E0();
    v20 = v19;
    (*(v13 + 8))(v11, v14);
    v21 = sub_1E5D0166C(v18, v20, &v32);

    *(v17 + 14) = v21;
    *(v17 + 22) = 2112;
    MEMORY[0x1E693BCE0](v28);
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 24) = v22;
    *v27 = v22;
    v7 = log;
    _os_log_impl(&dword_1E5CDB000, log, v31, "Error refreshing Canvas %s %s: %@", v17, 0x20u);
    sub_1E5D033CC(v27);
    MEMORY[0x1E693BE80](v27, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1E693BE80](v29, -1, -1);
    MEMORY[0x1E693BE80](v17, -1, -1);
  }

  else
  {
    (*(v0[55] + 8))(v0[56], v0[54]);
  }

  swift_storeEnumTagMultiPayload();
  v23 = swift_task_alloc();
  v0[67] = v23;
  v24 = sub_1E5D043A0();
  *v23 = v0;
  v23[1] = sub_1E5CFEF54;
  v25 = v0[59];

  return MEMORY[0x1EEE01A40](v25, v24);
}

uint64_t sub_1E5CFEF54()
{
  v1 = *v0;
  v2 = *(*v0 + 472);
  v3 = *(*v0 + 464);
  v4 = *(*v0 + 456);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 496);
  v6 = *(v1 + 488);

  return MEMORY[0x1EEE6DFA0](sub_1E5CFF0D8, v6, v5);
}

uint64_t sub_1E5CFF0D8()
{
  v1 = *(v0 + 512);

  MEMORY[0x1E693BCD0](v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5CFF168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 272) = a1;
  *(v8 + 280) = a2;
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 64) = v14;
  *(v8 + 80) = v15;
  *(v8 + 96) = v16;
  *(v8 + 112) = v17;
  *(v8 + 128) = v18;
  *(v8 + 144) = v19;
  *(v8 + 160) = v20;
  *(v8 + 176) = v21;
  *(v8 + 184) = v22;
  v9 = type metadata accessor for CanvasAction(0, v8 + 16);
  *(v8 + 288) = v9;
  *(v8 + 296) = *(v9 - 8);
  *(v8 + 304) = swift_task_alloc();
  sub_1E5D04620();
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = sub_1E5D04500();
  *(v8 + 328) = sub_1E5D044F0();
  v11 = sub_1E5D044D0();
  *(v8 + 336) = v11;
  *(v8 + 344) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1E5CFF2D8, v11, v10);
}

uint64_t sub_1E5CFF2D8()
{
  v1 = *(v0 + 280);
  v2 = v1[9];
  v3 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v2);
  v6 = (*(v3 + 192) + **(v3 + 192));
  v4 = swift_task_alloc();
  *(v0 + 352) = v4;
  *v4 = v0;
  v4[1] = sub_1E5CFF408;

  return v6(v0 + 192, v2, v3);
}

uint64_t sub_1E5CFF408()
{
  v1 = *v0;

  v2 = *(v1 + 344);
  v3 = *(v1 + 336);

  return MEMORY[0x1EEE6DFA0](sub_1E5CFF528, v3, v2);
}

uint64_t sub_1E5CFF528()
{
  v1 = v0[27];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 24, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[32] = swift_getAssociatedTypeWitness();
  v0[33] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 29);
  sub_1E5D04570();

  v5 = sub_1E5D044F0();
  v0[45] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 29), v0[32]);
  v6 = swift_task_alloc();
  v0[46] = v6;
  *v6 = v0;
  v6[1] = sub_1E5CFF6F8;
  v7 = v0[39];
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v7, v5, v8);
}

uint64_t sub_1E5CFF6F8()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 336);
    v5 = *(v2 + 344);

    return MEMORY[0x1EEE6DFA0](sub_1E5CFF80C, v4, v5);
  }

  return result;
}

uint64_t sub_1E5CFF80C()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 29);
    __swift_destroy_boxed_opaque_existential_1(v0 + 24);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[38], v1, v2);
    v6 = swift_task_alloc();
    v0[47] = v6;
    v7 = sub_1E5D043A0();
    *v6 = v0;
    v6[1] = sub_1E5CFF970;
    v8 = v0[38];

    return MEMORY[0x1EEE01A40](v8, v7);
  }
}

uint64_t sub_1E5CFF970()
{
  v1 = *v0;

  v2 = *(v1 + 344);
  v3 = *(v1 + 336);

  return MEMORY[0x1EEE6DFA0](sub_1E5CFFA90, v3, v2);
}

uint64_t sub_1E5CFFA90()
{
  (*(v0[37] + 8))(v0[38], v0[36]);
  v1 = sub_1E5D044F0();
  v0[45] = v1;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 29), v0[32]);
  v2 = swift_task_alloc();
  v0[46] = v2;
  *v2 = v0;
  v2[1] = sub_1E5CFF6F8;
  v3 = v0[39];
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v3, v1, v4);
}

uint64_t sub_1E5CFFB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 200) = a2;
  *(v8 + 208) = a3;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 56) = v14;
  *(v8 + 72) = v15;
  *(v8 + 88) = v16;
  *(v8 + 104) = v17;
  *(v8 + 120) = v18;
  *(v8 + 136) = v19;
  *(v8 + 152) = v20;
  *(v8 + 168) = v21;
  *(v8 + 184) = v22;
  *(v8 + 192) = a1;
  v9 = type metadata accessor for CanvasAction(0, v8 + 16);
  *(v8 + 216) = v9;
  *(v8 + 224) = *(v9 - 8);
  *(v8 + 232) = swift_task_alloc();
  sub_1E5D04500();
  *(v8 + 240) = sub_1E5D044F0();
  v11 = sub_1E5D044D0();
  *(v8 + 248) = v11;
  *(v8 + 256) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1E5CFFCC4, v11, v10);
}

uint64_t sub_1E5CFFCC4()
{
  v1 = v0[25];
  v2 = v1[9];
  v3 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v2);
  v7 = (*(v3 + 184) + **(v3 + 184));
  v4 = swift_task_alloc();
  v0[33] = v4;
  *v4 = v0;
  v4[1] = sub_1E5CFFDF4;
  v5 = v0[26];

  return v7(v5, v2, v3);
}

uint64_t sub_1E5CFFDF4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 272) = v1;

  if (v1)
  {
    v5 = v4[31];
    v6 = v4[32];
    v7 = sub_1E5D001D4;
  }

  else
  {
    v4[35] = a1;
    v5 = v4[31];
    v6 = v4[32];
    v7 = sub_1E5CFFF1C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E5CFFF1C()
{
  **(v0 + 232) = *(v0 + 280);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 288) = v1;
  v2 = sub_1E5D043A0();
  *v1 = v0;
  v1[1] = sub_1E5CFFFE4;
  v3 = *(v0 + 232);

  return MEMORY[0x1EEE01A40](v3, v2);
}

uint64_t sub_1E5CFFFE4()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 224);
  v4 = *(*v0 + 216);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 256);
  v6 = *(v1 + 248);

  return MEMORY[0x1EEE6DFA0](sub_1E5D00168, v6, v5);
}

uint64_t sub_1E5D00168()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5D001D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5D00240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[114] = v36;
  v8[113] = v34;
  v8[112] = v33;
  v8[111] = v32;
  v8[110] = v31;
  v8[109] = v30;
  v8[108] = v29;
  v8[107] = v28;
  v8[106] = v27;
  v8[105] = v26;
  v8[104] = v25;
  v8[103] = v24;
  v8[102] = v23;
  v8[101] = v22;
  v8[100] = v21;
  v8[99] = v20;
  v8[98] = a8;
  v8[97] = a7;
  v8[96] = a6;
  v8[95] = a5;
  v8[94] = a4;
  v8[93] = a3;
  v8[92] = a2;
  v8[91] = a1;
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a7;
  v8[6] = a8;
  v8[7] = v20;
  v8[8] = v21;
  v8[9] = v22;
  v8[10] = v23;
  v8[11] = v24;
  v8[12] = v25;
  v8[13] = v26;
  v8[14] = v27;
  v8[15] = v28;
  v8[16] = v29;
  v8[17] = v30;
  v8[18] = v31;
  v8[19] = v32;
  v8[20] = v33;
  v8[21] = v34;
  v8[22] = v35;
  v8[23] = v36;
  v10 = type metadata accessor for CanvasAction(0, (v8 + 2));
  v8[115] = v10;
  v8[116] = *(v10 - 8);
  v8[117] = swift_task_alloc();
  sub_1E5D04620();
  v8[118] = swift_task_alloc();
  v8[24] = a4;
  v8[25] = a5;
  v8[26] = a6;
  v8[27] = a7;
  v8[28] = a8;
  v8[29] = v20;
  v8[30] = v21;
  v8[31] = v22;
  v8[32] = v23;
  v8[33] = v24;
  v8[34] = v25;
  v8[35] = v26;
  v8[36] = v27;
  v8[37] = v28;
  v8[38] = v29;
  v8[39] = v30;
  v8[40] = v31;
  v8[41] = v32;
  v8[42] = v33;
  v8[43] = v34;
  v8[44] = v35;
  v8[45] = v36;
  v11 = type metadata accessor for CanvasFeature(0, (v8 + 24));
  v8[119] = v11;
  v8[120] = *(v11 - 8);
  v8[121] = swift_task_alloc();
  v8[122] = sub_1E5D04500();
  v8[123] = sub_1E5D044F0();
  v13 = sub_1E5D044D0();
  v8[124] = v13;
  v8[125] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1E5D00520, v13, v12);
}

uint64_t sub_1E5D00520()
{
  v1 = v0[92];
  v2 = v1[9];
  v3 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v2);
  v7 = (*(v3 + 184) + **(v3 + 184));
  v4 = swift_task_alloc();
  v0[126] = v4;
  *v4 = v0;
  v4[1] = sub_1E5D00650;
  v5 = v0[93];

  return v7(v5, v2, v3);
}

uint64_t sub_1E5D00650(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    MEMORY[0x1E693BCD0](v1);
    v5 = v4[125];
    v6 = v4[124];
    v7 = sub_1E5D01304;
  }

  else
  {
    v4[127] = a1;
    v5 = v4[125];
    v6 = v4[124];
    v7 = sub_1E5D00784;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1E5D00784()
{
  v39 = v0;
  v1 = *(v0 + 1016);
  if (qword_1EE2FA120 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 968);
  v3 = *(v0 + 960);
  v4 = *(v0 + 952);
  v5 = *(v0 + 736);
  v6 = sub_1E5D04210();
  __swift_project_value_buffer(v6, qword_1EE2FC850);
  (*(v3 + 16))(v2, v5, v4);

  v7 = sub_1E5D041F0();
  v8 = sub_1E5D04610();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 968);
  v11 = *(v0 + 960);
  v12 = *(v0 + 952);
  if (v9)
  {
    v34 = *(v0 + 768);
    v35 = *(v0 + 752);
    v32 = *(v0 + 800);
    v33 = *(v0 + 784);
    v31 = *(v0 + 816);
    v13 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = v36;
    *v13 = 136315394;
    sub_1E5CF6BC4(v10 + 48, v0 + 688);
    *(v0 + 528) = v35;
    *(v0 + 544) = v34;
    *(v0 + 560) = v33;
    *(v0 + 576) = v32;
    *(v0 + 592) = v31;
    swift_getExtendedExistentialTypeMetadata();
    v14 = sub_1E5D04430();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_1E5D0166C(v14, v16, &v38);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    if (v1)
    {
      v18 = *(v0 + 912);
      v19 = *(v0 + 888);
      v20 = *(v0 + 792);
      v21 = *(v0 + 784);
      v22 = *(v0 + 768);
      *(v0 + 368) = *(v0 + 752);
      *(v0 + 384) = v22;
      *(v0 + 400) = v21;
      *(v0 + 408) = *(v0 + 800);
      *(v0 + 424) = v20;
      v23 = *(v0 + 840);
      *(v0 + 432) = *(v0 + 824);
      *(v0 + 448) = v23;
      v24 = *(v0 + 872);
      *(v0 + 464) = *(v0 + 856);
      *(v0 + 480) = v24;
      *(v0 + 496) = *(v0 + 896);
      *(v0 + 512) = v19;
      *(v0 + 520) = v18;
      sub_1E5D04140();
      v25 = sub_1E5D04480();
    }

    else
    {
      v25 = 0;
    }

    *(v13 + 14) = v25;

    _os_log_impl(&dword_1E5CDB000, v7, v8, "Populated %s with %ld sections", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x1E693BE80](v36, -1, -1);
    MEMORY[0x1E693BE80](v13, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    (*(v11 + 8))(v10, v12);
  }

  v26 = *(v0 + 736);
  v27 = v26[9];
  v28 = v26[10];
  __swift_project_boxed_opaque_existential_1(v26 + 6, v27);
  v37 = (*(v28 + 192) + **(v28 + 192));
  v29 = swift_task_alloc();
  *(v0 + 1024) = v29;
  *v29 = v0;
  v29[1] = sub_1E5D00B64;

  return v37(v0 + 608, v27, v28);
}

uint64_t sub_1E5D00B64()
{
  v1 = *v0;

  v2 = *(v1 + 1000);
  v3 = *(v1 + 992);

  return MEMORY[0x1EEE6DFA0](sub_1E5D00C84, v3, v2);
}

uint64_t sub_1E5D00C84()
{
  v1 = v0[79];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 76, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[84] = swift_getAssociatedTypeWitness();
  v0[85] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 81);
  sub_1E5D04570();

  v5 = sub_1E5D044F0();
  v0[129] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 81), v0[84]);
  v6 = swift_task_alloc();
  v0[130] = v6;
  *v6 = v0;
  v6[1] = sub_1E5D00E5C;
  v7 = v0[118];
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v7, v5, v8);
}

uint64_t sub_1E5D00E5C()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 1000);
    v5 = *(v2 + 992);

    return MEMORY[0x1EEE6DFA0](sub_1E5D00F74, v5, v4);
  }

  return result;
}

uint64_t sub_1E5D00F74()
{
  v1 = v0[118];
  v2 = v0[116];
  v3 = v0[115];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 81);
    __swift_destroy_boxed_opaque_existential_1(v0 + 76);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v2 + 32))(v0[117], v1, v3);
    v6 = swift_task_alloc();
    v0[131] = v6;
    v7 = sub_1E5D043A0();
    *v6 = v0;
    v6[1] = sub_1E5D010E8;
    v8 = v0[117];

    return MEMORY[0x1EEE01A40](v8, v7);
  }
}

uint64_t sub_1E5D010E8()
{
  v1 = *v0;

  v2 = *(v1 + 1000);
  v3 = *(v1 + 992);

  return MEMORY[0x1EEE6DFA0](sub_1E5D01208, v3, v2);
}

uint64_t sub_1E5D01208()
{
  (*(v0[116] + 8))(v0[117], v0[115]);
  v1 = sub_1E5D044F0();
  v0[129] = v1;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 81), v0[84]);
  v2 = swift_task_alloc();
  v0[130] = v2;
  *v2 = v0;
  v2[1] = sub_1E5D00E5C;
  v3 = v0[118];
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v3, v1, v4);
}

uint64_t sub_1E5D01304()
{
  v30 = v0;
  if (qword_1EE2FA120 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 968);
  v2 = *(v0 + 960);
  v3 = *(v0 + 952);
  v4 = *(v0 + 736);
  v5 = sub_1E5D04210();
  __swift_project_value_buffer(v5, qword_1EE2FC850);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_1E5D041F0();
  v7 = sub_1E5D04610();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 968);
  v10 = *(v0 + 960);
  v11 = *(v0 + 952);
  if (v8)
  {
    v26 = *(v0 + 768);
    v27 = *(v0 + 752);
    v24 = *(v0 + 800);
    v25 = *(v0 + 784);
    v23 = *(v0 + 816);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136315394;
    sub_1E5CF6BC4(v9 + 48, v0 + 688);
    *(v0 + 528) = v27;
    *(v0 + 544) = v26;
    *(v0 + 560) = v25;
    *(v0 + 576) = v24;
    *(v0 + 592) = v23;
    swift_getExtendedExistentialTypeMetadata();
    v14 = sub_1E5D04430();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1E5D0166C(v14, v16, &v29);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2048;
    *(v12 + 14) = 0;

    _os_log_impl(&dword_1E5CDB000, v6, v7, "Populated %s with %ld sections", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1E693BE80](v13, -1, -1);
    MEMORY[0x1E693BE80](v12, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    (*(v10 + 8))(v9, v11);
  }

  v18 = *(v0 + 736);
  v19 = v18[9];
  v20 = v18[10];
  __swift_project_boxed_opaque_existential_1(v18 + 6, v19);
  v28 = (*(v20 + 192) + **(v20 + 192));
  v21 = swift_task_alloc();
  *(v0 + 1024) = v21;
  *v21 = v0;
  v21[1] = sub_1E5D00B64;

  return v28(v0 + 608, v19, v20);
}

unint64_t sub_1E5D0166C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1E5D028C0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1E5D03484(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_1E5D01750(uint64_t a1)
{
  v31 = v1[3];
  v32 = v1[2];
  v30 = v1[4];
  v28 = v1[6];
  v29 = v1[5];
  v4 = v1[9];
  v3 = v1[8];
  v27 = v1[7];
  v5 = v1[10];
  v6 = v1[12];
  v26 = v1[11];
  v7 = v1[14];
  v25 = v1[13];
  v8 = v1[16];
  v24 = v1[15];
  v9 = v1[18];
  v23 = v1[17];
  v22 = v1[19];
  v10 = v1[20];
  v11 = v1[21];
  v13 = v1[22];
  v12 = v1[23];
  v2[2] = v32;
  v2[3] = v31;
  v2[4] = v30;
  v2[5] = v29;
  v2[6] = v28;
  v2[7] = v27;
  v2[8] = v3;
  v2[9] = v4;
  v2[10] = v5;
  v2[11] = v26;
  v2[12] = v6;
  v2[13] = v25;
  v2[14] = v7;
  v2[15] = v24;
  v2[16] = v8;
  v2[17] = v23;
  v2[18] = v9;
  v2[19] = v22;
  v2[20] = v10;
  v2[21] = v11;
  v2[22] = v13;
  v2[23] = v12;
  v14 = *(type metadata accessor for CanvasFeature(0, (v2 + 2)) - 8);
  v15 = *(v14 + 80);
  v16 = *(v14 + 64);
  v2[24] = v4;
  v17 = (v15 + 192) & ~v15;
  v2[25] = v5;
  v2[26] = v11;
  v2[27] = v13;
  v18 = *(sub_1E5D041A0() - 8);
  v19 = (v17 + v16 + *(v18 + 80)) & ~*(v18 + 80);
  v20 = swift_task_alloc();
  v2[28] = v20;
  *v20 = v2;
  v20[1] = sub_1E5D034EC;

  return sub_1E5D00240(a1, v1 + v17, v1 + v19, v32, v31, v30, v29, v28);
}

uint64_t sub_1E5D019A0(uint64_t a1)
{
  v28 = v1[2];
  v27 = v1[3];
  v25 = v1[5];
  v26 = v1[4];
  v23 = v1[7];
  v24 = v1[6];
  v3 = v1[9];
  v22 = v1[8];
  v4 = v1[11];
  v21 = v1[10];
  v5 = v1[13];
  v20 = v1[12];
  v6 = v1[15];
  v19 = v1[14];
  v8 = v1[17];
  v7 = v1[16];
  v9 = v1[18];
  v10 = v1[19];
  v11 = v1[20];
  v12 = v1[21];
  v13 = v1[22];
  v14 = v1[23];
  v2[2] = v28;
  v2[3] = v27;
  v2[4] = v26;
  v2[5] = v25;
  v2[6] = v24;
  v2[7] = v23;
  v2[8] = v22;
  v2[9] = v3;
  v2[10] = v21;
  v2[11] = v4;
  v2[12] = v20;
  v2[13] = v5;
  v2[14] = v19;
  v2[15] = v6;
  v2[16] = v7;
  v2[17] = v8;
  v2[18] = v9;
  v2[19] = v10;
  v2[20] = v11;
  v2[21] = v12;
  v2[22] = v13;
  v2[23] = v14;
  v15 = *(type metadata accessor for CanvasFeature(0, (v2 + 2)) - 8);
  v16 = (*(v15 + 80) + 192) & ~*(v15 + 80);
  v17 = swift_task_alloc();
  v2[24] = v17;
  *v17 = v2;
  v17[1] = sub_1E5D01B78;

  return sub_1E5CFF168(a1, v1 + v16, v28, v27, v26, v25, v24, v23);
}

uint64_t sub_1E5D01B78()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = *(v0 + 32);
  v21 = *(v0 + 16);
  v22 = v5;
  v23 = *(v0 + 48);
  v24 = v1;
  v25 = v2;
  v6 = *(v0 + 96);
  v26 = *(v0 + 80);
  v20 = v26;
  v27 = v6;
  v7 = *(v0 + 128);
  v28 = *(v0 + 112);
  v29 = v7;
  v30 = *(v0 + 144);
  v31 = v3;
  v32 = v4;
  v33 = *(v0 + 176);
  v19 = v33;
  v8 = (type metadata accessor for CanvasFeature(0, &v21) - 8);
  v9 = *(*v8 + 80);
  v10 = *(*v8 + 64);
  *&v21 = v2;
  *(&v21 + 1) = v20;
  v11 = (v9 + 192) & ~v9;
  *&v22 = v4;
  *(&v22 + 1) = v19;
  v12 = sub_1E5D041A0();
  v13 = *(v12 - 8);
  v14 = (v11 + v10 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = v0 + v11;

  __swift_destroy_boxed_opaque_existential_1((v15 + 48));
  v16 = v8[52];
  v17 = sub_1E5D03F80();
  (*(*(v17 - 8) + 8))(v15 + v16, v17);
  (*(v13 + 8))(v0 + v14, v12);
  return swift_deallocObject();
}

uint64_t sub_1E5D01E50(uint64_t a1)
{
  v31 = v1[3];
  v32 = v1[2];
  v30 = v1[4];
  v28 = v1[6];
  v29 = v1[5];
  v4 = v1[9];
  v3 = v1[8];
  v27 = v1[7];
  v5 = v1[10];
  v6 = v1[12];
  v26 = v1[11];
  v7 = v1[14];
  v25 = v1[13];
  v8 = v1[16];
  v24 = v1[15];
  v9 = v1[18];
  v23 = v1[17];
  v22 = v1[19];
  v10 = v1[20];
  v11 = v1[21];
  v13 = v1[22];
  v12 = v1[23];
  v2[2] = v32;
  v2[3] = v31;
  v2[4] = v30;
  v2[5] = v29;
  v2[6] = v28;
  v2[7] = v27;
  v2[8] = v3;
  v2[9] = v4;
  v2[10] = v5;
  v2[11] = v26;
  v2[12] = v6;
  v2[13] = v25;
  v2[14] = v7;
  v2[15] = v24;
  v2[16] = v8;
  v2[17] = v23;
  v2[18] = v9;
  v2[19] = v22;
  v2[20] = v10;
  v2[21] = v11;
  v2[22] = v13;
  v2[23] = v12;
  v14 = *(type metadata accessor for CanvasFeature(0, (v2 + 2)) - 8);
  v15 = *(v14 + 80);
  v16 = *(v14 + 64);
  v2[24] = v4;
  v17 = (v15 + 192) & ~v15;
  v2[25] = v5;
  v2[26] = v11;
  v2[27] = v13;
  v18 = *(sub_1E5D041A0() - 8);
  v19 = (v17 + v16 + *(v18 + 80)) & ~*(v18 + 80);
  v20 = swift_task_alloc();
  v2[28] = v20;
  *v20 = v2;
  v20[1] = sub_1E5D020A0;

  return sub_1E5CFFB84(a1, v1 + v17, v1 + v19, v32, v31, v30, v29, v28);
}

uint64_t sub_1E5D020A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E5D02194(uint64_t a1)
{
  v34 = v1[3];
  v35 = v1[2];
  v3 = v1[5];
  v33 = v1[4];
  v4 = v1[7];
  v32 = v1[6];
  v5 = v1[9];
  v7 = v1[10];
  v6 = v1[11];
  v31 = v1[8];
  v8 = v1[13];
  v30 = v1[12];
  v9 = v1[15];
  v29 = v1[14];
  v10 = v1[17];
  v28 = v1[16];
  v11 = v1[19];
  v27 = v1[18];
  v12 = v1[21];
  v13 = v1[22];
  v14 = v1[23];
  v26 = v1[20];
  v2[2] = v35;
  v2[3] = v34;
  v2[4] = v33;
  v2[5] = v3;
  v2[6] = v32;
  v2[7] = v4;
  v2[8] = v31;
  v2[9] = v5;
  v2[10] = v7;
  v2[11] = v6;
  v2[12] = v30;
  v2[13] = v8;
  v2[14] = v29;
  v2[15] = v9;
  v2[16] = v28;
  v2[17] = v10;
  v2[18] = v27;
  v2[19] = v11;
  v2[20] = v26;
  v2[21] = v12;
  v2[22] = v13;
  v2[23] = v14;
  v15 = *(type metadata accessor for CanvasFeature(0, (v2 + 2)) - 8);
  v16 = *(v15 + 80);
  v17 = *(v15 + 64);
  v2[24] = v5;
  v18 = (v16 + 192) & ~v16;
  v2[25] = v7;
  v2[26] = v12;
  v2[27] = v13;
  v19 = *(sub_1E5D041A0() - 8);
  v20 = (v18 + v17 + *(v19 + 80)) & ~*(v19 + 80);
  v21 = (v1 + ((*(v19 + 64) + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  v22 = *v21;
  v23 = v21[1];
  v24 = swift_task_alloc();
  v2[28] = v24;
  *v24 = v2;
  v24[1] = sub_1E5D034EC;

  return sub_1E5CFE394(a1, v1 + v18, v1 + v20, v22, v23, v35, v34, v33);
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = *(v0 + 32);
  v21 = *(v0 + 16);
  v22 = v5;
  v23 = *(v0 + 48);
  v24 = v1;
  v25 = v2;
  v6 = *(v0 + 96);
  v26 = *(v0 + 80);
  v20 = v26;
  v27 = v6;
  v7 = *(v0 + 128);
  v28 = *(v0 + 112);
  v29 = v7;
  v30 = *(v0 + 144);
  v31 = v3;
  v32 = v4;
  v33 = *(v0 + 176);
  v19 = v33;
  v8 = (type metadata accessor for CanvasFeature(0, &v21) - 8);
  v9 = *(*v8 + 80);
  v10 = *(*v8 + 64);
  *&v21 = v2;
  *(&v21 + 1) = v20;
  v11 = (v9 + 192) & ~v9;
  *&v22 = v4;
  *(&v22 + 1) = v19;
  v12 = sub_1E5D041A0();
  v13 = *(v12 - 8);
  v14 = (v11 + v10 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = v0 + v11;

  __swift_destroy_boxed_opaque_existential_1((v15 + 48));
  v16 = v8[52];
  v17 = sub_1E5D03F80();
  (*(*(v17 - 8) + 8))(v15 + v16, v17);
  (*(v13 + 8))(v0 + v14, v12);

  return swift_deallocObject();
}

uint64_t sub_1E5D02628(uint64_t a1)
{
  v34 = v1[3];
  v35 = v1[2];
  v3 = v1[5];
  v33 = v1[4];
  v4 = v1[7];
  v32 = v1[6];
  v5 = v1[9];
  v7 = v1[10];
  v6 = v1[11];
  v31 = v1[8];
  v8 = v1[13];
  v30 = v1[12];
  v9 = v1[15];
  v29 = v1[14];
  v10 = v1[17];
  v28 = v1[16];
  v11 = v1[19];
  v27 = v1[18];
  v12 = v1[21];
  v13 = v1[22];
  v14 = v1[23];
  v26 = v1[20];
  v2[2] = v35;
  v2[3] = v34;
  v2[4] = v33;
  v2[5] = v3;
  v2[6] = v32;
  v2[7] = v4;
  v2[8] = v31;
  v2[9] = v5;
  v2[10] = v7;
  v2[11] = v6;
  v2[12] = v30;
  v2[13] = v8;
  v2[14] = v29;
  v2[15] = v9;
  v2[16] = v28;
  v2[17] = v10;
  v2[18] = v27;
  v2[19] = v11;
  v2[20] = v26;
  v2[21] = v12;
  v2[22] = v13;
  v2[23] = v14;
  v15 = *(type metadata accessor for CanvasFeature(0, (v2 + 2)) - 8);
  v16 = *(v15 + 80);
  v17 = *(v15 + 64);
  v2[24] = v5;
  v18 = (v16 + 192) & ~v16;
  v2[25] = v7;
  v2[26] = v12;
  v2[27] = v13;
  v19 = *(sub_1E5D041A0() - 8);
  v20 = (v18 + v17 + *(v19 + 80)) & ~*(v19 + 80);
  v21 = (v1 + ((*(v19 + 64) + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  v22 = *v21;
  v23 = v21[1];
  v24 = swift_task_alloc();
  v2[28] = v24;
  *v24 = v2;
  v24[1] = sub_1E5D034EC;

  return sub_1E5CFD660(a1, v1 + v18, v1 + v20, v22, v23, v35, v34, v33);
}

unint64_t sub_1E5D028C0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1E5D029CC(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_1E5D04690();
    a6 = v11;
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

void *sub_1E5D029CC(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E5D02A18(a1, a2);
  sub_1E5D02B48(&unk_1F5F84448);
  return v3;
}

void *sub_1E5D02A18(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E5D02C34(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1E5D04690();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1E5D04460();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1E5D02C34(v10, 0);
        result = sub_1E5D04660();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1E5D02B48(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1E5D02CA8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1E5D02C34(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED066F68, &qword_1E5D07090);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1E5D02CA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED066F68, &qword_1E5D07090);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

void _s13FitnessCanvas0B7FeatureV7dispose10localState06sharedF0y8DataFlow05EmptyF0V_AA0bF0Vyxq_q0_q1_q2_q3_q4_q5_q6_q7_GztF_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5D03F80();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE2FA120 != -1)
  {
    swift_once();
  }

  v12 = sub_1E5D04210();
  __swift_project_value_buffer(v12, qword_1EE2FC850);
  (*(v9 + 16))(v11, v2, a2);
  v13 = sub_1E5D041F0();
  v14 = sub_1E5D04610();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v15 = 136315138;
    (*(v5 + 16))(v8, &v11[*(a2 + 200)], v4);
    (*(v9 + 8))(v11, a2);
    sub_1E5CE0354(&qword_1EE2FACB8, MEMORY[0x1E69695E0]);
    v16 = sub_1E5D047E0();
    v18 = v17;
    (*(v5 + 8))(v8, v4);
    v19 = sub_1E5D0166C(v16, v18, &v22);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1E5CDB000, v13, v14, "Disposing Canvas Feature %s", v15, 0xCu);
    v20 = v21;
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1E693BE80](v20, -1, -1);
    MEMORY[0x1E693BE80](v15, -1, -1);
  }

  else
  {
    (*(v9 + 8))(v11, a2);
  }
}

unint64_t sub_1E5D030D8()
{
  result = qword_1EE2FA0E8;
  if (!qword_1EE2FA0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FA0E8);
  }

  return result;
}

uint64_t sub_1E5D03150(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v10 = *(a1 + 184);
  v18 = v1;
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v22 = v5;
  v23 = v6;
  v24 = v7;
  v25 = v8;
  v26 = v9;
  v17 = *(a1 + 88);
  v11 = *(a1 + 104);
  v27 = v17;
  v28 = v11;
  v12 = *(a1 + 136);
  v29 = *(a1 + 120);
  v30 = v12;
  v31 = *(a1 + 152);
  v32 = *(a1 + 168);
  v33 = v10;
  result = type metadata accessor for CanvasEnvironment(319, &v18);
  if (v14 <= 0x3F)
  {
    v34 = 0;
    v37 = result;
    v18 = v1;
    v19 = v2;
    v20 = v3;
    v21 = v4;
    v22 = v5;
    v23 = v6;
    v24 = v7;
    v25 = v8;
    v26 = v9;
    *&v27 = v17;
    ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
    v35 = 0;
    v38 = ExtendedExistentialTypeMetadata;
    result = sub_1E5D03F80();
    if (v16 <= 0x3F)
    {
      v36 = 0;
      v39 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1E5D032C0(uint64_t a1)
{
  sub_1E5D03338();
  if (v1 <= 0x3F)
  {
    sub_1E5D03368();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1E5D03338()
{
  result = qword_1EE2FA0E0;
  if (!qword_1EE2FA0E0)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EE2FA0E0);
  }

  return result;
}

void sub_1E5D03368()
{
  if (!qword_1EE2FACC8)
  {
    v0 = sub_1E5D03F80();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2FACC8);
    }
  }
}

uint64_t sub_1E5D033CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066C08, &qword_1E5D06048);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1E5D03484(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t CanvasFetcher.init(fetchSectionDescriptors:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t CanvasFetcher.fetchSectionDescriptors(for:)(uint64_t a1)
{
  v6 = (*v1 + **v1);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5CEB860;

  return v6(a1);
}

uint64_t CanvasFetcher.makeFetcherStream()(uint64_t a1, void *a2)
{
  *(v2 + 192) = a1;
  v3 = a2[2];
  *(v2 + 200) = v3;
  v4 = a2[3];
  *(v2 + 208) = v4;
  v5 = a2[4];
  *(v2 + 216) = v5;
  v6 = a2[5];
  *&v7 = v3;
  *(&v7 + 1) = v4;
  *(v2 + 224) = v6;
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v9 = a2[6];
  *(v2 + 232) = v9;
  v10 = a2[9];
  *(v2 + 240) = v10;
  v11 = a2[7];
  *(v2 + 248) = v11;
  v12 = a2[8];
  *(v2 + 256) = v12;
  *&v13 = v9;
  *(&v13 + 1) = v10;
  *&v14 = v11;
  *(&v14 + 1) = v12;
  v15 = a2[10];
  *(v2 + 264) = v15;
  v16 = a2[11];
  *(v2 + 272) = v16;
  v17 = a2[12];
  *(v2 + 280) = v17;
  v18 = a2[13];
  *(v2 + 288) = v18;
  *&v19 = v17;
  *(&v19 + 1) = v18;
  *&v20 = v15;
  *(&v20 + 1) = v16;
  v21 = a2[14];
  *(v2 + 296) = v21;
  v22 = a2[15];
  *(v2 + 304) = v22;
  v23 = a2[16];
  *(v2 + 312) = v23;
  v24 = a2[17];
  *&v25 = v21;
  *(&v25 + 1) = v22;
  *(v2 + 320) = v24;
  *&v26 = v23;
  *(&v26 + 1) = v24;
  v27 = a2[18];
  *(v2 + 328) = v27;
  v28 = a2[21];
  *(v2 + 336) = v28;
  v29 = a2[19];
  *(v2 + 344) = v29;
  v30 = a2[20];
  *(v2 + 352) = v30;
  v31 = a2[22];
  *(v2 + 360) = v31;
  v32 = a2[23];
  *(v2 + 16) = v7;
  *(v2 + 368) = v32;
  *(v2 + 32) = v8;
  *(v2 + 48) = v13;
  *(v2 + 64) = v14;
  *(v2 + 80) = v20;
  *&v7 = v29;
  *(&v7 + 1) = v30;
  *&v8 = v27;
  *(&v8 + 1) = v28;
  *(v2 + 96) = v19;
  *(v2 + 112) = v25;
  *(v2 + 128) = v26;
  *(v2 + 144) = v8;
  *(v2 + 160) = v7;
  *(v2 + 176) = v31;
  *(v2 + 184) = v32;
  *(v2 + 376) = type metadata accessor for CanvasAction(255, v2 + 16);
  sub_1E5D04540();
  *(v2 + 384) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5D037AC, 0, 0);
}

uint64_t sub_1E5D037AC()
{
  v1 = *(v0 + 384);
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 192);
  v7 = swift_task_alloc();
  v8 = *(v0 + 216);
  v9 = *(v0 + 248);
  v10 = *(v0 + 264);
  v11 = *(v0 + 280);
  v12 = *(v0 + 296);
  v13 = *(v0 + 312);
  v14 = *(v0 + 344);
  v15 = *(v0 + 360);
  *(v7 + 16) = *(v0 + 200);
  *(v7 + 32) = v8;
  *(v7 + 48) = v5;
  *(v7 + 56) = v9;
  *(v7 + 72) = v4;
  *(v7 + 80) = v10;
  *(v7 + 96) = v11;
  *(v7 + 112) = v12;
  *(v7 + 128) = v13;
  *(v7 + 144) = v3;
  *(v7 + 152) = v14;
  *(v7 + 168) = v2;
  *(v7 + 176) = v15;
  swift_checkMetadataState();
  v16 = *MEMORY[0x1E69E8650];
  v17 = sub_1E5D04540();
  (*(*(v17 - 8) + 104))(v1, v16, v17);
  v6[3] = sub_1E5D04550();
  v6[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(v6);
  sub_1E5D04560();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1E5D039A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5D03BBC;

  return CanvasFetcher.fetchSectionDescriptors(for:)(a1);
}

uint64_t sub_1E5D03A38(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5CEAD78;

  return CanvasFetcher.makeFetcherStream()(a1, a2);
}

uint64_t sub_1E5D03AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1E5D03B20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E5D03B68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of CanvasFetching.fetchSectionDescriptors(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 184) + **(a3 + 184));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5D03CE8;

  return v9(a1, a2, a3);
}

uint64_t sub_1E5D03CE8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of CanvasFetching.makeFetcherStream()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 192) + **(a3 + 192));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5CEAD78;

  return v9(a1, a2, a3);
}