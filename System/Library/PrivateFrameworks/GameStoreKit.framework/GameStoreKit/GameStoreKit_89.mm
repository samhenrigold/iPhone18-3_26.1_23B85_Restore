double _s12GameStoreKit19ProductReviewLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(void *a1, void *a2, double a3, double a4)
{
  v36 = sub_24F9225E8();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v32 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_24F922618();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F9229A8();
  v31 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v30 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F92CDB8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[54];
  __swift_project_boxed_opaque_existential_1(a1 + 51, v16);
  sub_24E8ED7D8(v16);
  sub_24F9223A8();
  v18 = *(v13 + 8);
  v17 = (v13 + 8);
  v18(v15, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0, &unk_24F93B6B0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24F942000;
  sub_24E615E00(a1, v40);
  v20 = MEMORY[0x277D228E0];
  *(v19 + 56) = v10;
  *(v19 + 64) = v20;
  __swift_allocate_boxed_opaque_existential_1((v19 + 32));
  sub_24F9229B8();
  sub_24E615E00((a1 + 5), v40);
  *(v19 + 96) = v10;
  *(v19 + 104) = v20;
  __swift_allocate_boxed_opaque_existential_1((v19 + 72));
  sub_24F9229B8();
  sub_24E615E00((a1 + 20), v40);
  *(v19 + 136) = v10;
  *(v19 + 144) = v20;
  __swift_allocate_boxed_opaque_existential_1((v19 + 112));
  sub_24F9229B8();
  sub_24E615E00((a1 + 25), v40);
  if (__OFSUB__(a1[30], 1))
  {
    __break(1u);
LABEL_12:
    v19 = sub_24E617A00(0, *(v19 + 16) + 1, 1, v19);
    goto LABEL_6;
  }

  *(v19 + 176) = v10;
  *(v19 + 184) = v20;
  __swift_allocate_boxed_opaque_existential_1((v19 + 152));
  sub_24F9229B8();
  sub_24E615E00((a1 + 56), v40);
  *(v19 + 216) = v10;
  *(v19 + 224) = v20;
  __swift_allocate_boxed_opaque_existential_1((v19 + 192));
  sub_24F9229B8();
  v41 = v19;
  v21 = [a2 traitCollection];
  v22 = sub_24F92BF98();

  if (v22)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    sub_24E615E00((a1 + 10), v40);
    *(inited + 56) = v10;
    *(inited + 64) = v20;
    __swift_allocate_boxed_opaque_existential_1((inited + 32));
    sub_24F9229B8();
    sub_24E615E00((a1 + 15), v40);
    *(inited + 96) = v10;
    *(inited + 104) = v20;
    __swift_allocate_boxed_opaque_existential_1((inited + 72));
    sub_24F9229B8();
    sub_24EA0ACCC(inited);
  }

  sub_24E60169C((a1 + 66), &v37, &qword_27F22F780, &qword_24F968620);
  if (!v38)
  {
    sub_24E601704(&v37, &qword_27F22F780, &qword_24F968620);
    goto LABEL_10;
  }

  sub_24E612C80(&v37, v40);
  sub_24E615E00(v40, &v37);
  v17 = v30;
  sub_24F9229B8();
  v19 = v41;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v24 = v31;
  v26 = *(v19 + 16);
  v25 = *(v19 + 24);
  if (v26 >= v25 >> 1)
  {
    v19 = sub_24E617A00((v25 > 1), v26 + 1, 1, v19);
  }

  __swift_destroy_boxed_opaque_existential_1(v40);
  v38 = v10;
  v39 = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v37);
  (*(v24 + 16))(boxed_opaque_existential_1, v17, v10);
  *(v19 + 16) = v26 + 1;
  sub_24E612C80(&v37, v19 + 40 * v26 + 32);
  (*(v24 + 8))(v17, v10);
  v41 = v19;
LABEL_10:
  (*(v34 + 104))(v32, *MEMORY[0x277D22788], v36);
  sub_24F9225F8();
  sub_24F9225D8();
  (*(v33 + 8))(v9, v35);
  return a3;
}

unint64_t sub_24EF12378()
{
  result = qword_27F233C90;
  if (!qword_27F233C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233C90);
  }

  return result;
}

uint64_t sub_24EF123D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 976))
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

uint64_t sub_24EF1241C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 968) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 976) = 1;
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

    *(result + 976) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EF12574(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 608))
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

uint64_t sub_24EF125BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 600) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 608) = 1;
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

    *(result + 608) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t EditorialStoryCardLayout.init(metrics:artworkView:headerLabel:titleLabel:descriptionLabel:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *(a1 + 112);
  *(a6 + 96) = *(a1 + 96);
  *(a6 + 112) = v10;
  *(a6 + 128) = *(a1 + 128);
  *(a6 + 144) = *(a1 + 144);
  v11 = *(a1 + 48);
  *(a6 + 32) = *(a1 + 32);
  *(a6 + 48) = v11;
  v12 = *(a1 + 80);
  *(a6 + 64) = *(a1 + 64);
  *(a6 + 80) = v12;
  v13 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v13;
  sub_24E612C80(a2, a6 + 152);
  sub_24E612C80(a3, a6 + 192);
  sub_24E612C80(a4, a6 + 232);

  return sub_24E612C80(a5, a6 + 272);
}

uint64_t EditorialStoryCardLayout.Metrics.init(headerSpace:titleSpace:descriptionSpace:layoutMargins:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, double *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  sub_24E612C80(a1, a4);
  sub_24E612C80(a2, (a4 + 5));
  result = sub_24E612C80(a3, (a4 + 10));
  a4[15] = a5;
  a4[16] = a6;
  a4[17] = a7;
  a4[18] = a8;
  return result;
}

uint64_t EditorialStoryCardLayout.Metrics.headerSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t EditorialStoryCardLayout.Metrics.titleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t EditorialStoryCardLayout.Metrics.descriptionSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 80));

  return sub_24E612C80(a1, v1 + 80);
}

void EditorialStoryCardLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[15] = a1;
  v4[16] = a2;
  v4[17] = a3;
  v4[18] = a4;
}

__n128 EditorialStoryCardLayout.Metrics.init(byCopying:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = *(a1 + 144);
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *a1;
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v6;
  return result;
}

__n128 sub_24EF12A58@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = *(a1 + 144);
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *a1;
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v6;
  return result;
}

uint64_t EditorialStoryCardLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v38 = a2;
  v13 = sub_24F9221D8();
  v36 = *(v13 - 8);
  v37 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v6 + 19, v6[22]);
  sub_24F922228();
  v16 = [a1 traitCollection];
  [v16 layoutDirection];

  *&v35[1] = a3;
  *&v35[2] = a4;
  *&v35[3] = a5;
  *&v35[4] = a6;
  sub_24F92C1C8();
  sub_24F92C1D8();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213C50, &unk_24F9AFC90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v26 = v7[27];
  v27 = v7[28];
  v28 = __swift_project_boxed_opaque_existential_1(v7 + 24, v26);
  v43 = v26;
  v44 = *(v27 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
  (*(*(v26 - 8) + 16))(boxed_opaque_existential_1, v28, v26);
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  sub_24E615E00(v42, inited + 32);
  sub_24E615E00(v7, inited + 80);
  sub_24E930DFC(&v39, inited + 120);
  *(inited + 72) = 1;
  *(inited + 160) = 8;
  sub_24E930E6C(&v39);
  __swift_destroy_boxed_opaque_existential_1(v42);
  v30 = v7[32];
  v31 = v7[33];
  v32 = __swift_project_boxed_opaque_existential_1(v7 + 29, v30);
  v43 = v30;
  v44 = *(v31 + 8);
  v33 = __swift_allocate_boxed_opaque_existential_1(v42);
  (*(*(v30 - 8) + 16))(v33, v32, v30);
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  sub_24E615E00(v42, inited + 168);
  sub_24E615E00((v7 + 5), inited + 216);
  sub_24E930DFC(&v39, inited + 256);
  *(inited + 208) = 1;
  *(inited + 296) = 8;
  sub_24E930E6C(&v39);
  __swift_destroy_boxed_opaque_existential_1(v42);
  LOBYTE(v42[0]) = 1;
  v42[1] = inited;
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(v15, v18, v20, v22, v24);
  (*(v36 + 8))(v15, v37);

  __swift_project_boxed_opaque_existential_1(v7 + 34, v7[37]);
  sub_24F922288();
  v45.origin.x = v18;
  v45.origin.y = v20;
  v45.size.width = v22;
  v45.size.height = v24;
  CGRectGetMinX(v45);
  v46.origin.x = v18;
  v46.origin.y = v20;
  v46.size.width = v22;
  v46.size.height = v24;
  CGRectGetMaxY(v46);
  __swift_project_boxed_opaque_existential_1(v7 + 34, v7[37]);
  sub_24F922228();
  return sub_24F922128();
}

uint64_t sub_24EF12ED0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_24EF130A0();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x282180FC8](a1, a2, v10, a3, v11, v12);
}

unint64_t sub_24EF12F4C()
{
  result = qword_27F233C98;
  if (!qword_27F233C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233C98);
  }

  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_24EF12FE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_24EF1302C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24EF130A0()
{
  result = qword_27F233CA0;
  if (!qword_27F233CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233CA0);
  }

  return result;
}

__n128 ProductTextBadgeStackLayout.init(metrics:badges:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  *(a3 + 24) = a1[1];
  v4 = a1[3];
  *(a3 + 40) = a1[2];
  *(a3 + 56) = v4;
  result = a1[4];
  *(a3 + 72) = result;
  *(a3 + 8) = v3;
  *a3 = a2;
  return result;
}

uint64_t ProductTextBadgeStackLayout.Metrics.init(interItemSpace:bottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_24E612C80(a1, a3);

  return sub_24E612C80(a2, a3 + 40);
}

uint64_t ProductTextBadgeStackLayout.Metrics.interItemSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t ProductTextBadgeStackLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_24E612C80(a1, v1 + 40);
}

double ProductTextBadgeStackLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v51 = a1;
  v50 = sub_24F9225E8();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v46 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_24F922618();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v45 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_24F9229A8();
  MEMORY[0x28223BE20](v57);
  v52 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v58 = &v44 - v8;
  v9 = 0;
  v44 = v3;
  v10 = *v3;
  v53 = v3 + 1;
  v11 = *(v10 + 16);
  v60 = v10;
  v54 = v10 + 32;
  v55 = (v12 + 16);
  v56 = (v12 + 8);
  v63 = MEMORY[0x277D84F90];
  v59 = v11;
  while (1)
  {
    if (v9 == v11)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0uLL;
      v16 = v11;
      v17 = 0uLL;
    }

    else
    {
      if (v9 >= *(v60 + 16))
      {
        __break(1u);
LABEL_22:
        v9 = sub_24E617A00(0, *(v9 + 16) + 1, 1, v9);
        goto LABEL_17;
      }

      v16 = v9 + 1;
      *&v64 = v9;
      sub_24E615E00(v54 + 40 * v9, &v64 + 8);
      v15 = v64;
      v17 = v65;
      v14 = v66;
      v13 = v67;
    }

    v68 = v15;
    v69 = v17;
    v70 = v14;
    v71 = v13;
    v9 = v63;
    if (!v14)
    {
      break;
    }

    v62 = v15;
    v18 = __swift_project_boxed_opaque_existential_1(&v68 + 1, v14);
    v61 = &v44;
    v19 = *(v14 - 8);
    v20 = *(v19 + 64);
    v21 = MEMORY[0x28223BE20](v18);
    v22 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = *(v19 + 16);
    v23(v22, v21);
    __swift_destroy_boxed_opaque_existential_1(&v68 + 1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_24E617A00(0, *(v9 + 16) + 1, 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
      v72 = isUniquelyReferenced_nonNull_native;
    }

    v26 = *(v9 + 16);
    v25 = *(v9 + 24);
    v63 = v9;
    v9 = v16;
    if (v26 >= v25 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_24E617A00((v25 > 1), v26 + 1, 1, v63);
      v63 = isUniquelyReferenced_nonNull_native;
      v72 = isUniquelyReferenced_nonNull_native;
    }

    v27 = MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
    v28 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (v23)(v28, v22, v14, v27);
    sub_24ED43E20(v26, v28, &v72, v14, *(v13 + 8));
    (*(v19 + 8))(v22, v14);
    v11 = v59;
    if (v62 < *(v60 + 16) - 1)
    {
      sub_24E615E00(v53, &v64);
      sub_24F9229B8();
      v30 = v63[2];
      v29 = v63[3];
      if (v30 >= v29 >> 1)
      {
        v63 = sub_24E617A00((v29 > 1), v30 + 1, 1, v63);
      }

      v31 = v57;
      *(&v65 + 1) = v57;
      v66 = MEMORY[0x277D228E0];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v64);
      v33 = v58;
      (*v55)(boxed_opaque_existential_1, v58, v31);
      v34 = v63;
      v63[2] = v30 + 1;
      sub_24E612C80(&v64, &v34[5 * v30 + 4]);
      (*v56)(v33, v31);
    }
  }

  if (!*(v60 + 16))
  {
    goto LABEL_20;
  }

  sub_24E615E00((v44 + 6), &v68);
  sub_24F9229B8();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_17:
  v36 = *(v9 + 16);
  v35 = *(v9 + 24);
  if (v36 >= v35 >> 1)
  {
    v9 = sub_24E617A00((v35 > 1), v36 + 1, 1, v9);
  }

  v37 = v57;
  *(&v69 + 1) = v57;
  v70 = MEMORY[0x277D228E0];
  v38 = __swift_allocate_boxed_opaque_existential_1(&v68);
  v39 = v52;
  (*v55)(v38, v52, v37);
  *(v9 + 16) = v36 + 1;
  sub_24E612C80(&v68, v9 + 40 * v36 + 32);
  (*v56)(v39, v37);
LABEL_20:
  (*(v48 + 104))(v46, *MEMORY[0x277D22788], v50);
  v40 = v45;
  sub_24F9225F8();
  sub_24F9225D8();
  v42 = v41;
  (*(v47 + 8))(v40, v49);
  return v42;
}

uint64_t ProductTextBadgeStackLayout.placeChildren(relativeTo:in:)@<X0>(CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, uint64_t x8_0@<X8>)
{
  sub_24E615E00((v6 + 1), v53);
  result = sub_24E615E00((v6 + 6), v52);
  v12 = 0;
  v13 = *v6;
  v14 = *v6 + 32;
  v15 = MEMORY[0x277D84F90];
  v16 = *(*v6 + 16);
  while (1)
  {
    v17 = 0uLL;
    v18 = v16;
    v19 = 0uLL;
    v20 = 0uLL;
    if (v12 == v16)
    {
      goto LABEL_5;
    }

    if (v12 >= *(v13 + 16))
    {
      break;
    }

    v18 = v12 + 1;
    *&v45[0] = v12;
    sub_24E615E00(v14 + 40 * v12, v45 + 8);
    v17 = v45[0];
    v19 = v45[1];
    v20 = v46;
LABEL_5:
    v51[0] = v17;
    v51[1] = v19;
    v51[2] = v20;
    if (!v20)
    {
      LOBYTE(v45[0]) = 0;
      *(&v45[0] + 1) = v15;
      _VerticalFlowLayout.placeChildren(relativeTo:in:)(x8_0, a2, a3, a4, a5);

      v54.origin.x = a2;
      v54.origin.y = a3;
      v54.size.width = a4;
      v54.size.height = a5;
      Width = CGRectGetWidth(v54);
      v32 = sub_24F922148();
      *v33 = Width;
      v32(v45, 0);
      __swift_destroy_boxed_opaque_existential_1(v52);
      return __swift_destroy_boxed_opaque_existential_1(v53);
    }

    v35 = v17;
    sub_24E612C80((v51 + 8), v50);
    if (v35 >= *(v13 + 16) - 1)
    {
      v21 = v52;
    }

    else
    {
      v21 = v53;
    }

    sub_24E615E00(v21, v49);
    *(&v37 + 1) = sub_24F922418();
    *&v38 = MEMORY[0x277D226F0];
    __swift_allocate_boxed_opaque_existential_1(&v36);
    sub_24F922408();
    sub_24E615E00(v49, v48);
    sub_24E615E00(v50, v45);
    sub_24E615E00(&v36, &v47);
    WORD4(v46) = 1;
    v48[5] = 8;
    __swift_destroy_boxed_opaque_existential_1(&v36);
    sub_24E9D682C(v45, &v36);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_24E617A24(0, *(v15 + 2) + 1, 1, v15);
    }

    v23 = *(v15 + 2);
    v22 = *(v15 + 3);
    if (v23 >= v22 >> 1)
    {
      v15 = sub_24E617A24((v22 > 1), v23 + 1, 1, v15);
    }

    sub_24E9D6888(v45);
    __swift_destroy_boxed_opaque_existential_1(v49);
    result = __swift_destroy_boxed_opaque_existential_1(v50);
    *(v15 + 2) = v23 + 1;
    v24 = &v15[136 * v23];
    *(v24 + 2) = v36;
    v25 = v37;
    v26 = v38;
    v27 = v40;
    *(v24 + 5) = v39;
    *(v24 + 6) = v27;
    *(v24 + 3) = v25;
    *(v24 + 4) = v26;
    v28 = v41;
    v29 = v42;
    v30 = v43;
    *(v24 + 20) = v44;
    *(v24 + 8) = v29;
    *(v24 + 9) = v30;
    *(v24 + 7) = v28;
    v12 = v18;
  }

  __break(1u);
  return result;
}

uint64_t sub_24EF13D04(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_24EF13D4C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

double sub_24EF13DC0(uint64_t a1, uint64_t a2, double a3)
{
  v59 = a2;
  v4 = sub_24F922118();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v64 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140C0, &qword_24F93C240);
  MEMORY[0x28223BE20](v7 - 8);
  v58 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v60 = &v54 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v54 - v15;
  v17 = sub_24F923E98();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v56 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v62 = &v54 - v21;
  MEMORY[0x28223BE20](v22);
  v57 = &v54 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v54 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v54 - v28;
  v61 = a1;
  sub_24EF14440(a1, v16);
  v30 = *(v18 + 48);
  if (v30(v16, 1, v17) == 1)
  {
    sub_24EF144B0(v16);
    v31 = v59;
  }

  else
  {
    v54 = v5;
    v55 = v4;
    v32 = *(v18 + 32);
    v32(v29, v16, v17);
    v31 = v59;
    sub_24EF14440(v59, v13);
    if (v30(v13, 1, v17) == 1)
    {
      (*(v18 + 8))(v29, v17);
      sub_24EF144B0(v13);
    }

    else
    {
      v32(v26, v13, v17);
      sub_24EF147AC();
      sub_24F92AF78();
      v33 = *(v18 + 8);
      v33(v26, v17);
      v33(v29, v17);
    }

    v5 = v54;
    v4 = v55;
  }

  v34 = *MEMORY[0x277D76918];
  v35 = v64;
  *v64 = *MEMORY[0x277D76918];
  (*(v5 + 104))(v35, *MEMORY[0x277D22620], v4);
  v36 = v60;
  sub_24EF14440(v61, v60);
  if (v30(v36, 1, v17) == 1)
  {
    v37 = v34;
    sub_24EF144B0(v36);
    v38 = v63;
  }

  else
  {
    v39 = v57;
    (*(v18 + 32))();
    v40 = v34;
    v38 = v63;
    if (sub_24F923E88())
    {
      v41 = v62;
      (*(v18 + 16))(v62, v39, v17);
      v42 = sub_24EF14518(v41);
      (*(v18 + 8))(v39, v17);
      goto LABEL_19;
    }

    (*(v18 + 8))(v39, v17);
  }

  v43 = v58;
  sub_24EF14440(v31, v58);
  if (v30(v43, 1, v17) == 1)
  {
    sub_24EF144B0(v43);
  }

  else
  {
    v44 = v56;
    (*(v18 + 32))(v56, v43, v17);
    sub_24EF147AC();
    if (sub_24F92AF78())
    {
      v45 = v62;
      (*(v18 + 16))(v62, v44, v17);
      v42 = sub_24EF14518(v45);
      (*(v18 + 8))(v44, v17);
      goto LABEL_19;
    }

    (*(v18 + 8))(v44, v17);
  }

  v46 = v62;
  (*(v18 + 16))(v62, v38, v17);
  v42 = sub_24EF14518(v46);
LABEL_19:
  v47 = objc_opt_self();
  v48 = v42;
  v49 = [v47 traitCollectionWithPreferredContentSizeCategory_];

  v65[3] = v4;
  v65[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v65);
  (*(v5 + 16))(boxed_opaque_existential_1, v35, v4);
  sub_24F91FE48();
  v52 = v51;

  (*(v5 + 8))(v35, v4);
  __swift_destroy_boxed_opaque_existential_1(v65);
  return v52;
}

uint64_t sub_24EF14440(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140C0, &qword_24F93C240);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EF144B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140C0, &qword_24F93C240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_24EF14518(uint64_t a1)
{
  v2 = sub_24F923E98();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CDF9F8])
  {
    v8 = MEMORY[0x277D76830];
LABEL_25:
    v9 = *v8;
    (*(v3 + 8))(a1, v2);
    return v9;
  }

  if (v7 == *MEMORY[0x277CDF9E0])
  {
    v8 = MEMORY[0x277D76858];
    goto LABEL_25;
  }

  if (v7 == *MEMORY[0x277CDF9E8])
  {
    v8 = MEMORY[0x277D76840];
    goto LABEL_25;
  }

  if (v7 == *MEMORY[0x277CDF9D8])
  {
    v8 = MEMORY[0x277D76838];
    goto LABEL_25;
  }

  if (v7 == *MEMORY[0x277CDF9F0])
  {
    v8 = MEMORY[0x277D76828];
    goto LABEL_25;
  }

  if (v7 == *MEMORY[0x277CDFA00])
  {
    v8 = MEMORY[0x277D76820];
    goto LABEL_25;
  }

  if (v7 == *MEMORY[0x277CDFA10])
  {
    v8 = MEMORY[0x277D76818];
    goto LABEL_25;
  }

  if (v7 == *MEMORY[0x277CDF988])
  {
    v8 = MEMORY[0x277D76808];
    goto LABEL_25;
  }

  if (v7 == *MEMORY[0x277CDF998])
  {
    v8 = MEMORY[0x277D76800];
    goto LABEL_25;
  }

  if (v7 == *MEMORY[0x277CDF9A8])
  {
    v8 = MEMORY[0x277D767F8];
    goto LABEL_25;
  }

  if (v7 == *MEMORY[0x277CDF9B8])
  {
    v8 = MEMORY[0x277D767F0];
    goto LABEL_25;
  }

  if (v7 == *MEMORY[0x277CDF9D0])
  {
    v8 = MEMORY[0x277D767E8];
    goto LABEL_25;
  }

  result = sub_24F92CDF8();
  __break(1u);
  return result;
}

unint64_t sub_24EF147AC()
{
  result = qword_27F233178;
  if (!qword_27F233178)
  {
    sub_24F923E98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233178);
  }

  return result;
}

uint64_t InstallPageInstallingViewLayout.init(metrics:iconView:progressView:titleText:subtitleText:descriptionText:ageRatingView:offerButton:)@<X0>(void *__src@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>)
{
  memcpy((a9 + 280), __src, 0x150uLL);
  sub_24E612C80(a2, a9);
  v17 = *(a3 + 16);
  *(a9 + 40) = *a3;
  *(a9 + 56) = v17;
  *(a9 + 72) = *(a3 + 32);
  sub_24E612C80(a4, a9 + 80);
  sub_24E612C80(a5, a9 + 120);
  sub_24E612C80(a6, a9 + 160);
  sub_24E612C80(a7, a9 + 200);

  return sub_24E612C80(a8, a9 + 240);
}

uint64_t InstallPageInstallingViewLayout.Metrics.init(iconSize:ageRatingMargin:ageRatingBaselineOffset:titleSpace:titleHorizontalMargin:subtitleSpace:subtitleHorizontalMargin:descriptionSpace:descriptionHorizontalMargin:offerButtonMargin:offerButtonSize:bottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, __int128 *a5@<X4>, uint64_t *a6@<X5>, __int128 *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, __int128 *a14, __int128 *a15)
{
  v22 = *a4;
  v23 = *a6;
  v24 = *a8;
  *a9 = a10;
  *(a9 + 8) = a11;
  sub_24E612C80(a1, a9 + 16);
  sub_24E612C80(a2, a9 + 56);
  sub_24E612C80(a3, a9 + 96);
  *(a9 + 136) = v22;
  sub_24E612C80(a5, a9 + 144);
  *(a9 + 184) = v23;
  sub_24E612C80(a7, a9 + 192);
  *(a9 + 232) = v24;
  sub_24E612C80(a14, a9 + 240);
  *(a9 + 280) = a12;
  *(a9 + 288) = a13;

  return sub_24E612C80(a15, a9 + 296);
}

uint64_t InstallPageInstallingViewLayout.Metrics.ageRatingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));

  return sub_24E612C80(a1, v1 + 16);
}

uint64_t InstallPageInstallingViewLayout.Metrics.ageRatingBaselineOffset.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 56));

  return sub_24E612C80(a1, v1 + 56);
}

uint64_t InstallPageInstallingViewLayout.Metrics.titleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 96));

  return sub_24E612C80(a1, v1 + 96);
}

void InstallPageInstallingViewLayout.Metrics.titleHorizontalMargin.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 136) = v2;
}

uint64_t InstallPageInstallingViewLayout.Metrics.subtitleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 144));

  return sub_24E612C80(a1, v1 + 144);
}

void InstallPageInstallingViewLayout.Metrics.subtitleHorizontalMargin.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 184) = v2;
}

uint64_t InstallPageInstallingViewLayout.Metrics.descriptionSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 192));

  return sub_24E612C80(a1, v1 + 192);
}

void InstallPageInstallingViewLayout.Metrics.descriptionHorizontalMargin.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 232) = v2;
}

uint64_t InstallPageInstallingViewLayout.Metrics.offerButtonMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 240));

  return sub_24E612C80(a1, v1 + 240);
}

uint64_t InstallPageInstallingViewLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 296));

  return sub_24E612C80(a1, v1 + 296);
}

double InstallPageInstallingViewLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v7 = sub_24F92CDB8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v3 + 25, v3[28]);
  sub_24F922298();
  v11 = v3[40];
  __swift_project_boxed_opaque_existential_1(v4 + 37, v4[40]);
  sub_24E8ED7D8(v11);
  sub_24F9223A8();
  v12 = *(v8 + 8);
  v12(v10, v7);
  __swift_project_boxed_opaque_existential_1(v4 + 25, v4[28]);
  sub_24F922238();
  v17 = v4[52];

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a1, v10);
  v12(v10, v7);

  v17 = v4[58];

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a1, v10);
  v12(v10, v7);

  v17 = v4[64];

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a1, v10);
  v12(v10, v7);

  __swift_project_boxed_opaque_existential_1(v4 + 10, v4[13]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v4 + 47, v4[50]);
  sub_24F9223C8();
  __swift_project_boxed_opaque_existential_1(v4 + 15, v4[18]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v4 + 53, v4[56]);
  sub_24F9223C8();
  __swift_project_boxed_opaque_existential_1(v4 + 20, v4[23]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v4 + 59, v4[62]);
  sub_24F9223C8();
  v13 = v4[68];
  __swift_project_boxed_opaque_existential_1(v4 + 65, v13);
  sub_24E8ED7D8(v13);
  sub_24F9223A8();
  v12(v10, v7);
  v14 = v4[75];
  __swift_project_boxed_opaque_existential_1(v4 + 72, v14);
  sub_24E8ED7D8(v14);
  sub_24F9223A8();
  v12(v10, v7);
  return a2;
}

uint64_t InstallPageInstallingViewLayout.placeChildren(relativeTo:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_24F92CDB8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v5 + 320);
  __swift_project_boxed_opaque_existential_1((v6 + 296), v16);
  sub_24E8ED7D8(v16);
  v17 = sub_24F9223A8();
  v18 = *(v13 + 8);
  v18(v15, v12);
  __swift_project_boxed_opaque_existential_1((v6 + 200), *(v6 + 224));
  sub_24F922298();
  v20 = v19;
  v81[1] = v21;
  __swift_project_boxed_opaque_existential_1((v6 + 200), *(v6 + 224));
  v22 = sub_24F922238();
  *&v81[2] = v20;
  if (v22)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v17 + v20;
  }

  v98.origin.x = a2;
  v98.origin.y = a3;
  v98.size.width = a4;
  v98.size.height = a5;
  Width = CGRectGetWidth(v98);
  v97[0] = *(v6 + 416);

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a1, v15);
  v26 = v25;
  v18(v15, v12);

  v27 = v26 + v26;
  v28 = a2;
  v29 = Width - v27;
  v30 = a3;
  v85 = v23;
  v83 = v29 - v23;
  v99.origin.x = a2;
  v99.origin.y = a3;
  v99.size.width = a4;
  v99.size.height = a5;
  MinX = CGRectGetWidth(v99);
  v97[0] = *(v6 + 464);

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a1, v15);
  v87 = v31;
  v18(v15, v12);

  v100.origin.x = a2;
  v100.origin.y = a3;
  v100.size.width = a4;
  v100.size.height = a5;
  v86 = CGRectGetWidth(v100);
  v97[0] = *(v6 + 512);

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a1, v15);
  v84 = v32;
  v18(v15, v12);

  v101.origin.x = a2;
  v101.origin.y = a3;
  v101.size.width = a4;
  v101.size.height = a5;
  MinY = CGRectGetMinY(v101);
  v35 = *(v6 + 280);
  v34 = *(v6 + 288);
  __swift_project_boxed_opaque_existential_1(v6, *(v6 + 24));
  sub_24F922268();
  v102.origin.x = v28;
  v102.origin.y = v30;
  v102.size.width = a4;
  v102.size.height = a5;
  v36 = CGRectGetMidX(v102) + v35 * -0.5;
  __swift_project_boxed_opaque_existential_1(v97, v97[3]);
  sub_24F922228();
  sub_24E94275C(v6 + 40, &v93);
  if (v94)
  {
    sub_24E612C80(&v93, v95);
    __swift_project_boxed_opaque_existential_1(v95, v96);
    if ((sub_24F922238() & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1(v95, v96);
      sub_24F922228();
    }

    __swift_destroy_boxed_opaque_existential_1(v95);
  }

  else
  {
    sub_24E942EA8(&v93);
  }

  v103.origin.x = v36;
  v103.origin.y = MinY;
  v103.size.width = v35;
  v103.size.height = v34;
  v82 = MinY + CGRectGetMaxY(v103);
  v37 = *(v6 + 400);
  __swift_project_boxed_opaque_existential_1((v6 + 376), v37);
  sub_24E8ED7D8(v37);
  v81[0] = sub_24F9223A8();
  v18(v15, v12);
  __swift_project_boxed_opaque_existential_1((v6 + 80), *(v6 + 104));
  v104.origin.x = v28;
  v104.origin.y = v30;
  v104.size.width = a4;
  v104.size.height = a5;
  CGRectGetHeight(v104);
  sub_24F922288();
  v39 = v38;
  v41 = v40;
  __swift_project_boxed_opaque_existential_1((v6 + 376), *(v6 + 400));
  v83 = v41;
  sub_24F9223C8();
  v105.size.height = a5;
  v43 = v42;
  v105.size.width = a4;
  v90 = v28;
  v105.origin.x = v28;
  v92 = v30;
  v105.origin.y = v30;
  v89 = a4;
  height = v105.size.height;
  CGRectGetMidX(v105);
  v44 = v82;
  v85 = v43;
  __swift_project_boxed_opaque_existential_1((v6 + 80), *(v6 + 104));
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1((v6 + 200), *(v6 + 224));
  if ((sub_24F922238() & 1) == 0)
  {
    v45 = *(v6 + 360);
    __swift_project_boxed_opaque_existential_1((v6 + 336), v45);
    sub_24E8ED7D8(v45);
    sub_24F9223A8();
    v18(v15, v12);
    v106.origin.x = v90;
    v106.origin.y = v92;
    v106.size.width = v89;
    v106.size.height = height;
    CGRectGetMidX(v106);
  }

  v86 = v86 - (v84 + v84);
  v87 = MinX - (v87 + v87);
  __swift_project_boxed_opaque_existential_1((v6 + 200), *(v6 + 224));
  sub_24F922228();
  MinX = v44 + v39 - v83 + v85;
  __swift_project_boxed_opaque_existential_1((v6 + 120), *(v6 + 144));
  v46 = v90;
  v107.origin.x = v90;
  v47 = v92;
  v107.origin.y = v92;
  v48 = v89;
  v107.size.width = v89;
  v49 = height;
  v107.size.height = height;
  CGRectGetHeight(v107);
  sub_24F922288();
  v51 = v50;
  v53 = v52;
  __swift_project_boxed_opaque_existential_1((v6 + 424), *(v6 + 448));
  sub_24F9223C8();
  v55 = v54;
  v108.origin.x = v46;
  v108.origin.y = v47;
  v108.size.width = v48;
  v108.size.height = v49;
  CGRectGetMidX(v108);
  v56 = MinX;
  __swift_project_boxed_opaque_existential_1((v6 + 120), *(v6 + 144));
  sub_24F922228();
  MinX = v56 + v51 - v53 + v55;
  __swift_project_boxed_opaque_existential_1((v6 + 160), *(v6 + 184));
  v57 = v90;
  v109.origin.x = v90;
  v58 = v92;
  v109.origin.y = v92;
  v59 = v89;
  v109.size.width = v89;
  v60 = height;
  v109.size.height = height;
  CGRectGetHeight(v109);
  sub_24F922288();
  v62 = v61;
  v64 = v63;
  __swift_project_boxed_opaque_existential_1((v6 + 472), *(v6 + 496));
  sub_24F9223C8();
  v66 = v65;
  v110.origin.x = v57;
  v110.origin.y = v58;
  v110.size.width = v59;
  v110.size.height = v60;
  CGRectGetMidX(v110);
  v67 = MinX;
  __swift_project_boxed_opaque_existential_1((v6 + 160), *(v6 + 184));
  sub_24F922228();
  MinX = v67 + v62 - v64 + v66;
  __swift_project_boxed_opaque_existential_1((v6 + 240), *(v6 + 264));
  v68 = height;
  sub_24F922298();
  v70 = v69;
  v72 = v71;
  v73 = v90;
  v111.origin.x = v90;
  v74 = v92;
  v111.origin.y = v92;
  v111.size.width = v59;
  v111.size.height = v68;
  v75 = CGRectGetMidX(v111) - v70 * 0.5;
  v76 = *(v6 + 544);
  __swift_project_boxed_opaque_existential_1((v6 + 520), v76);
  sub_24E8ED7D8(v76);
  v77 = sub_24F9223A8();
  v18(v15, v12);
  v78 = MinX + v77;
  __swift_project_boxed_opaque_existential_1((v6 + 240), *(v6 + 264));
  sub_24F922228();
  v112.origin.x = v73;
  v112.origin.y = v74;
  v112.size.width = v59;
  v112.size.height = v68;
  MinX = CGRectGetMinX(v112);
  v113.origin.x = v73;
  v113.origin.y = v74;
  v113.size.width = v59;
  v113.size.height = v68;
  v87 = CGRectGetMinY(v113);
  v114.origin.x = v73;
  v114.origin.y = v74;
  v114.size.width = v59;
  v114.size.height = v68;
  CGRectGetWidth(v114);
  v115.origin.x = v75;
  v115.origin.y = v78;
  v115.size.width = v70;
  v115.size.height = v72;
  CGRectGetMaxY(v115);
  v79 = *(v6 + 600);
  __swift_project_boxed_opaque_existential_1((v6 + 576), v79);
  sub_24E8ED7D8(v79);
  sub_24F9223A8();
  v18(v15, v12);
  sub_24F922128();
  return __swift_destroy_boxed_opaque_existential_1(v97);
}

uint64_t sub_24EF16040(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 616))
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

uint64_t sub_24EF16088(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 584) = 0u;
    *(result + 600) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 616) = 1;
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

    *(result + 616) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EF16178(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 336))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EF161C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 336) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 336) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t linearInterpolate<A>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v20[1] = a1;
  v20[2] = a2;
  v20[3] = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = *(a4 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v20 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v20 - v16;
  swift_getAssociatedConformanceWitness();
  sub_24F92CF58();
  sub_24F92CDD8();
  sub_24F92CAB8();
  v18 = *(v8 + 8);
  v18(v14, a4);
  sub_24F92BB18();
  sub_24F92BB18();
  sub_24F92CAA8();
  v18(v11, a4);
  v18(v14, a4);
  return (v18)(v17, a4);
}

double sub_24EF16514@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>, double a4@<D0>)
{
  result = (1.0 - a4) * *a1 + *a2 * a4;
  *a3 = result;
  return result;
}

float sub_24EF1656C@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>, double a4@<D0>)
{
  v4 = a4;
  result = ((1.0 - v4) * *a1) + (*a2 * v4);
  *a3 = result;
  return result;
}

float64x2_t sub_24EF165B8@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>, double a4@<D0>)
{
  result = vaddq_f64(vmulq_n_f64(*a1, 1.0 - a4), vmulq_n_f64(*a2, a4));
  *a3 = result;
  return result;
}

void sub_24EF165E8(double *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = sub_24EF16634(*a1, a1[1], a1[2], a1[3], *a2, a2[1], a2[2], a2[3], a4);
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
}

double sub_24EF16634(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9)
{
  MinX = CGRectGetMinX(*&a1);
  v21.origin.x = a5;
  v21.origin.y = a6;
  v21.size.width = a7;
  v21.size.height = a8;
  v16 = (1.0 - a9) * MinX + CGRectGetMinX(v21) * a9;
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  CGRectGetMinY(v22);
  v23.origin.x = a5;
  v23.origin.y = a6;
  v23.size.width = a7;
  v23.size.height = a8;
  CGRectGetMinY(v23);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  CGRectGetWidth(v24);
  v25.origin.x = a5;
  v25.origin.y = a6;
  v25.size.width = a7;
  v25.size.height = a8;
  CGRectGetWidth(v25);
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  CGRectGetHeight(v26);
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  CGRectGetHeight(v27);
  return v16;
}

uint64_t DynamicShelfBasedPage.shelfOrdering.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v10 - v7;
  (*(a2 + 56))(a1, a2, v6);
  (*(a2 + 32))(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2214E0, &qword_24F9664A0);
  swift_getAssociatedConformanceWitness();
  sub_24F92AEC8();

  (*(v5 + 8))(v8, AssociatedTypeWitness);
  if (v11)
  {
    return v11;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_24EF169C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return DynamicShelfBasedPage.shelfOrdering.getter(a1, WitnessTable);
}

id sub_24EF16A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_24F92B098();

  if (!a4)
  {
    v12 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = sub_24F92B098();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_24F92B098();

LABEL_6:
  v16.receiver = v7;
  v16.super_class = type metadata accessor for BackgroundAssetConsentViewController();
  v14 = objc_msgSendSuper2(&v16, sel_initWithTitle_detailText_symbolName_contentLayout_, v11, v12, v13, a7);

  return v14;
}

id sub_24EF16CC4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BackgroundAssetConsentViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_24EF16D34()
{
  result = qword_27F233CA8;
  if (!qword_27F233CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233CA8);
  }

  return result;
}

uint64_t PrefetchMarkerItem.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_24EF16DF0()
{
  result = qword_27F233CB0;
  if (!qword_27F233CB0)
  {
    type metadata accessor for PrefetchMarkerItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233CB0);
  }

  return result;
}

uint64_t sub_24EF16E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x277D85000] & *v4;
  v7 = *(v6 + class metadata base offset for ModelMappedDiffableDataSource);
  v8 = *(v6 + class metadata base offset for ModelMappedDiffableDataSource + 8);
  v9 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, v7, v8, a4);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  v14 = type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot(255, v7, v8, v13);
  v15 = sub_24F92C4A8();
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v20 - v17;
  (*(v10 + 16))(v12, a1, v9, v16);
  (*(v10 + 32))(v18, v12, v9);
  (*(*(v14 - 8) + 56))(v18, 0, 1, v14);
  return sub_24EF17214(v18);
}

uint64_t sub_24EF17050@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  v4 = *(v3 + class metadata base offset for ModelMappedDiffableDataSource + 16);
  swift_beginAccess();
  v6 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, *(v3 + class metadata base offset for ModelMappedDiffableDataSource), *(v3 + class metadata base offset for ModelMappedDiffableDataSource + 8), v5);
  return (*(*(v6 - 8) + 16))(a1, &v1[v4], v6);
}

uint64_t sub_24EF1712C@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  v4 = *(v3 + class metadata base offset for ModelMappedDiffableDataSource + 24);
  swift_beginAccess();
  type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot(255, *(v3 + class metadata base offset for ModelMappedDiffableDataSource), *(v3 + class metadata base offset for ModelMappedDiffableDataSource + 8), v5);
  v6 = sub_24F92C4A8();
  return (*(*(v6 - 8) + 16))(a1, &v1[v4], v6);
}

uint64_t sub_24EF17214(uint64_t a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  v4 = *(v3 + class metadata base offset for ModelMappedDiffableDataSource + 24);
  swift_beginAccess();
  type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot(255, *(v3 + class metadata base offset for ModelMappedDiffableDataSource), *(v3 + class metadata base offset for ModelMappedDiffableDataSource + 8), v5);
  v6 = sub_24F92C4A8();
  (*(*(v6 - 8) + 40))(&v1[v4], a1, v6);
  return swift_endAccess();
}

uint64_t sub_24EF17360(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v42 = a4;
  v35 = a2;
  v6 = *MEMORY[0x277D85000] & *v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58, &qword_24F9B0460);
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v38 = &v34[-v8];
  v10 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, *(v6 + class metadata base offset for ModelMappedDiffableDataSource), *(v6 + class metadata base offset for ModelMappedDiffableDataSource + 8), v9);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34[-v12];
  sub_24EF1B358(a1, v14, v15, v16);
  if (qword_27F2105A8 != -1)
  {
    swift_once();
  }

  v37 = sub_24F92AAE8();
  v36 = __swift_project_value_buffer(v37, qword_27F39C458);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  v45 = MEMORY[0x277D837D0];
  v43 = 0xD00000000000002DLL;
  v44 = 0x800000024FA63F60;
  sub_24F928438();
  sub_24E601704(&v43, &qword_27F2129B0, &unk_24F945320);
  sub_24EF17050(v13);
  v17 = &v13[*(v10 + 52)];
  v19 = *v17;
  v18 = v17[1];
  v20 = *(v11 + 8);

  v20(v13, v10);
  v45 = MEMORY[0x277D837D0];
  v43 = v19;
  v44 = v18;
  sub_24F928438();
  sub_24E601704(&v43, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A588();

  sub_24EF17050(v13);
  v21 = v38;
  v22 = v39;
  v23 = v40;
  (*(v39 + 16))(v38, v13, v40);
  v20(v13, v10);
  v24 = *(sub_24F922E18() + 16);

  if (v24 || (v25 = *(sub_24F922DE8() + 16), , v25))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F233CB8, &qword_24F9B0468);
    v26 = sub_24F922E78();
    v26(v21, v35 & 1, v41, v42);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F233CB8, &qword_24F9B0468);
    v33 = sub_24F922E78();
    v33(v21, v41, v42);
  }

  v27 = (*(v22 + 8))(v21, v23);
  return sub_24EF17BC0(v31, v27, v28, v29, v30);
}

uint64_t sub_24EF177D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v37 = a3;
  v38 = a4;
  v7 = *MEMORY[0x277D85000] & *v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58, &qword_24F9B0460);
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x28223BE20](v8);
  v34 = v32 - v9;
  v11 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, *(v7 + class metadata base offset for ModelMappedDiffableDataSource), *(v7 + class metadata base offset for ModelMappedDiffableDataSource + 8), v10);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v32 - v13;
  sub_24EF1B358(a1, v15, v16, v17);
  if (qword_27F2105A8 != -1)
  {
    swift_once();
  }

  v33 = sub_24F92AAE8();
  v32[1] = __swift_project_value_buffer(v33, qword_27F39C458);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  v41 = MEMORY[0x277D837D0];
  v39 = 0xD00000000000002DLL;
  v40 = 0x800000024FA63F60;
  sub_24F928438();
  sub_24E601704(&v39, &qword_27F2129B0, &unk_24F945320);
  sub_24EF17050(v14);
  v18 = &v14[*(v11 + 52)];
  v20 = *v18;
  v19 = v18[1];
  v21 = *(v12 + 8);

  v21(v14, v11);
  v41 = MEMORY[0x277D837D0];
  v39 = v20;
  v40 = v19;
  sub_24F928438();
  sub_24E601704(&v39, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A588();

  sub_24EF17050(v14);
  v23 = v34;
  v22 = v35;
  v24 = v36;
  (*(v35 + 16))(v34, v14, v36);
  v21(v14, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F233CB8, &qword_24F9B0468);
  v25 = sub_24F922E78();
  v25(v23, v37, v38);
  v26 = (*(v22 + 8))(v23, v24);
  return sub_24EF17BC0(v30, v26, v27, v28, v29);
}

uint64_t sub_24EF17BC0(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot(255, *((*MEMORY[0x277D85000] & *v5) + class metadata base offset for ModelMappedDiffableDataSource), *((*MEMORY[0x277D85000] & *v5) + class metadata base offset for ModelMappedDiffableDataSource + 8), a5);
  v7 = sub_24F92C4A8();
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v12 - v9;
  (*(*(v6 - 8) + 56))(&v12 - v9, 1, 1, v6, v8);
  return sub_24EF17214(v10);
}

uint64_t sub_24EF17CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t x3_0@<X3>)
{
  v5 = v4;
  v49 = a2;
  v7 = *MEMORY[0x277D85000] & *v4;
  v9 = *(v7 + class metadata base offset for ModelMappedDiffableDataSource);
  v8 = *(v7 + class metadata base offset for ModelMappedDiffableDataSource + 8);
  v10 = type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot(0, v9, v8, x3_0);
  v46 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v41 = &v36 - v11;
  v47 = v12;
  v13 = sub_24F92C4A8();
  v44 = *(v13 - 8);
  v45 = v13;
  MEMORY[0x28223BE20](v13);
  v43 = &v36 - v14;
  v16 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, v9, v8, v15);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v36 - v18;
  v20 = sub_24F928A68();
  v21 = sub_24F92C4A8();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v42 = v5;
  sub_24EF17050(v19);
  v48 = a1;
  ModelMappedDiffableDataSourceContentSnapshot.sectionModel(at:)(a1, v16, v24);
  v25 = *(v17 + 8);
  v25(v19, v16);
  v26 = *(v20 - 8);
  if ((*(v26 + 48))(v24, 1, v20) == 1)
  {
    v40 = v25;
    v37 = v20;
    (*(v22 + 8))(v24, v21);
    if (qword_27F2105A8 != -1)
    {
      swift_once();
    }

    v39 = sub_24F92AAE8();
    v38 = __swift_project_value_buffer(v39, qword_27F39C458);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    v52 = MEMORY[0x277D837D0];
    v50 = 0xD00000000000002ELL;
    v51 = 0x800000024FA60750;
    sub_24F928438();
    sub_24E601704(&v50, &qword_27F2129B0, &unk_24F945320);
    v52 = MEMORY[0x277D83B88];
    v50 = v48;
    sub_24F928438();
    sub_24E601704(&v50, &qword_27F2129B0, &unk_24F945320);
    v52 = MEMORY[0x277D837D0];
    v50 = 0xD000000000000033;
    v51 = 0x800000024FA60780;
    sub_24F928438();
    sub_24E601704(&v50, &qword_27F2129B0, &unk_24F945320);
    sub_24EF17050(v19);
    v27 = &v19[*(v16 + 52)];
    v29 = *v27;
    v28 = v27[1];

    v40(v19, v16);
    v52 = MEMORY[0x277D837D0];
    v50 = v29;
    v51 = v28;
    sub_24F928438();
    sub_24E601704(&v50, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5B8();

    v30 = v43;
    sub_24EF1712C(v43);
    v32 = v46;
    v31 = v47;
    if ((*(v46 + 48))(v30, 1, v47))
    {
      (*(v44 + 8))(v30, v45);
      return (*(v26 + 56))(v49, 1, 1, v37);
    }

    else
    {
      v35 = v41;
      (*(v32 + 16))(v41, v30, v31);
      (*(v44 + 8))(v30, v45);
      sub_24EF18348(v48, v31, v49);
      return (*(v32 + 8))(v35, v31);
    }
  }

  else
  {
    v34 = v49;
    (*(v26 + 32))(v49, v24, v20);
    return (*(v26 + 56))(v34, 0, 1, v20);
  }
}

uint64_t sub_24EF18348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 16);
  v8 = sub_24F928A68();
  v9 = sub_24F92C4A8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v22 - v11;
  v14 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, v7, *(a2 + 24), v13);
  ModelMappedDiffableDataSourceContentSnapshot.sectionModel(at:)(a1, v14, v12);
  v15 = *(v8 - 8);
  if ((*(v15 + 48))(v12, 1, v8) == 1)
  {
    v24 = a1;
    v25 = a3;
    (*(v10 + 8))(v12, v9);
    if (qword_27F2105A8 != -1)
    {
      swift_once();
    }

    v23 = sub_24F92AAE8();
    v22[2] = __swift_project_value_buffer(v23, qword_27F39C458);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    v22[1] = 4 * *(*(sub_24F928468() - 8) + 72);
    *(swift_allocObject() + 16) = xmmword_24F942000;
    v16 = MEMORY[0x277D837D0];
    v28 = MEMORY[0x277D837D0];
    v26 = 0xD000000000000019;
    v27 = 0x800000024FA60520;
    sub_24F928438();
    sub_24E601704(&v26, &qword_27F2129B0, &unk_24F945320);
    v17 = (v3 + *(v14 + 52));
    v19 = *v17;
    v18 = v17[1];
    v28 = v16;
    v26 = v19;
    v27 = v18;

    sub_24F928438();
    sub_24E601704(&v26, &qword_27F2129B0, &unk_24F945320);
    v28 = v16;
    v26 = 0xD00000000000002FLL;
    v27 = 0x800000024FA607C0;
    sub_24F928438();
    sub_24E601704(&v26, &qword_27F2129B0, &unk_24F945320);
    v28 = MEMORY[0x277D83B88];
    v26 = v24;
    sub_24F928438();
    sub_24E601704(&v26, &qword_27F2129B0, &unk_24F945320);
    v28 = v16;
    v26 = 0xD00000000000001CLL;
    v27 = 0x800000024FA607F0;
    sub_24F928438();
    sub_24E601704(&v26, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5B8();

    v20 = 1;
    a3 = v25;
  }

  else
  {
    (*(v15 + 32))(a3, v12, v8);
    v20 = 0;
  }

  return (*(v15 + 56))(a3, v20, 1, v8);
}

uint64_t sub_24EF18748(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = *MEMORY[0x277D85000] & *v5;
  v9 = *(v8 + class metadata base offset for ModelMappedDiffableDataSource);
  v10 = *(v8 + class metadata base offset for ModelMappedDiffableDataSource + 8);
  v11 = type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot(0, v9, v10, a5);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v42 = &v34 - v13;
  v14 = sub_24F92C4A8();
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x28223BE20](v14);
  v43 = &v34 - v15;
  v17 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, v9, v10, v16);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v34 - v19;
  sub_24EF17050(&v34 - v19);
  v21 = ModelMappedDiffableDataSourceContentSnapshot.sectionIndex(for:)(a1, v17);
  LOBYTE(v10) = v22;
  v23 = *(v18 + 8);
  v23(v20, v17);
  if (v10)
  {
    v36 = v6;
    v37 = v23;
    v40 = v12;
    v41 = v11;
    if (qword_27F2105A8 != -1)
    {
      swift_once();
    }

    v39 = sub_24F92AAE8();
    v38 = __swift_project_value_buffer(v39, qword_27F39C458);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    v48 = MEMORY[0x277D837D0];
    v46 = 0xD00000000000003ALL;
    v47 = 0x800000024FA63F90;
    sub_24F928438();
    sub_24E601704(&v46, &qword_27F2129B0, &unk_24F945320);
    v48 = &type metadata for DiffablePageContentIdentifier;
    v46 = swift_allocObject();
    sub_24E772724(a1, v46 + 16);
    sub_24F928438();
    sub_24E601704(&v46, &qword_27F2129B0, &unk_24F945320);
    v35 = a1;
    v48 = MEMORY[0x277D837D0];
    v46 = 0xD00000000000002DLL;
    v47 = 0x800000024FA63FD0;
    sub_24F928438();
    sub_24E601704(&v46, &qword_27F2129B0, &unk_24F945320);
    sub_24EF17050(v20);
    v24 = &v20[*(v17 + 52)];
    v26 = *v24;
    v25 = v24[1];

    v37(v20, v17);
    v48 = MEMORY[0x277D837D0];
    v46 = v26;
    v47 = v25;
    sub_24F928438();
    sub_24E601704(&v46, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5B8();

    v27 = v43;
    sub_24EF1712C(v43);
    v29 = v40;
    v28 = v41;
    if ((*(v40 + 48))(v27, 1, v41))
    {
      (*(v44 + 8))(v27, v45);
      return 0;
    }

    else
    {
      v30 = v42;
      (*(v29 + 16))(v42, v27, v28);
      (*(v44 + 8))(v27, v45);
      v21 = sub_24EF18CCC(v35, v28, v31, v32);
      (*(v29 + 8))(v30, v28);
    }
  }

  return v21;
}

uint64_t sub_24EF18CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, *(a2 + 16), *(a2 + 24), a4);
  result = ModelMappedDiffableDataSourceContentSnapshot.sectionIndex(for:)(a1, v6);
  if (v8)
  {
    v14 = result;
    if (qword_27F2105A8 != -1)
    {
      swift_once();
    }

    v13 = sub_24F92AAE8();
    __swift_project_value_buffer(v13, qword_27F39C458);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F942000;
    v9 = MEMORY[0x277D837D0];
    v17 = MEMORY[0x277D837D0];
    v15 = 0xD000000000000019;
    v16 = 0x800000024FA60520;
    sub_24F928438();
    sub_24E601704(&v15, &qword_27F2129B0, &unk_24F945320);
    v10 = (v4 + *(v6 + 52));
    v12 = *v10;
    v11 = v10[1];
    v17 = v9;
    v15 = v12;
    v16 = v11;

    sub_24F928438();
    sub_24E601704(&v15, &qword_27F2129B0, &unk_24F945320);
    v17 = v9;
    v15 = 0xD00000000000003BLL;
    v16 = 0x800000024FA64070;
    sub_24F928438();
    sub_24E601704(&v15, &qword_27F2129B0, &unk_24F945320);
    v17 = &type metadata for DiffablePageContentIdentifier;
    v15 = swift_allocObject();
    sub_24E772724(a1, v15 + 16);
    sub_24F928438();
    sub_24E601704(&v15, &qword_27F2129B0, &unk_24F945320);
    v17 = v9;
    v15 = 0xD00000000000001CLL;
    v16 = 0x800000024FA607F0;
    sub_24F928438();
    sub_24E601704(&v15, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5B8();

    return v14;
  }

  return result;
}

uint64_t sub_24EF18FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t x3_0@<X3>)
{
  v7 = *MEMORY[0x277D85000] & *v4;
  v8 = *(v7 + class metadata base offset for ModelMappedDiffableDataSource);
  v9 = *(v7 + class metadata base offset for ModelMappedDiffableDataSource + 8);
  v10 = type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot(0, v8, v9, x3_0);
  v54 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v13 = sub_24F92C4A8();
  v52 = *(v13 - 8);
  v53 = v13;
  MEMORY[0x28223BE20](v13);
  v51 = &v40 - v14;
  v16 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, v8, v9, v15);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228650, &qword_24F9B0470);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v40 - v21;
  v50 = a1;
  sub_24F922E58();
  if (*(&v56 + 1))
  {
    v49 = v12;
    v58[0] = v55;
    v58[1] = v56;
    v59 = v57;
    sub_24EF17050(v19);
    ModelMappedDiffableDataSourceContentSnapshot.itemModel(for:)(v16, v22, v23);
    v24 = *(v17 + 8);
    v24(v19, v16);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v22, 1, v25) == 1)
    {
      v41 = v26;
      v46 = v24;
      v42 = v25;
      v47 = v10;
      v48 = a2;
      sub_24E601704(v22, &qword_27F228650, &qword_24F9B0470);
      if (qword_27F2105A8 != -1)
      {
        swift_once();
      }

      v45 = sub_24F92AAE8();
      v44 = __swift_project_value_buffer(v45, qword_27F39C458);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_24F93A070;
      *(&v56 + 1) = MEMORY[0x277D837D0];
      v27 = MEMORY[0x277D837D0];
      *&v55 = 0xD000000000000034;
      *(&v55 + 1) = 0x800000024FA604B0;
      sub_24F928438();
      sub_24E601704(&v55, &qword_27F2129B0, &unk_24F945320);
      *(&v56 + 1) = &type metadata for DiffablePageContentIdentifier;
      *&v55 = swift_allocObject();
      sub_24E772724(v58, v55 + 16);
      sub_24F928438();
      sub_24E601704(&v55, &qword_27F2129B0, &unk_24F945320);
      *(&v56 + 1) = v27;
      strcpy(&v55, "at indexPath:");
      HIWORD(v55) = -4864;
      sub_24F928438();
      sub_24E601704(&v55, &qword_27F2129B0, &unk_24F945320);
      v28 = sub_24F91FA78();
      *(&v56 + 1) = v28;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v55);
      (*(*(v28 - 8) + 16))(boxed_opaque_existential_1, v50, v28);
      sub_24F928438();
      sub_24E601704(&v55, &qword_27F2129B0, &unk_24F945320);
      v30 = MEMORY[0x277D837D0];
      *(&v56 + 1) = MEMORY[0x277D837D0];
      *&v55 = 0xD00000000000002BLL;
      *(&v55 + 1) = 0x800000024FA604F0;
      sub_24F928438();
      sub_24E601704(&v55, &qword_27F2129B0, &unk_24F945320);
      sub_24EF17050(v19);
      v31 = &v19[*(v16 + 52)];
      v33 = *v31;
      v32 = *(v31 + 1);

      v46(v19, v16);
      *(&v56 + 1) = v30;
      *&v55 = v33;
      *(&v55 + 1) = v32;
      sub_24F928438();
      sub_24E601704(&v55, &qword_27F2129B0, &unk_24F945320);
      sub_24F92A5B8();

      v34 = v51;
      sub_24EF1712C(v51);
      v35 = v54;
      v36 = v47;
      if ((*(v54 + 48))(v34, 1, v47))
      {
        sub_24E772780(v58);
        (*(v52 + 8))(v34, v53);
        return (*(v41 + 56))(v48, 1, 1, v42);
      }

      else
      {
        v39 = v49;
        (*(v35 + 16))(v49, v34, v36);
        (*(v52 + 8))(v34, v53);
        sub_24EF197C0(v58, v36, v48);
        (*(v35 + 8))(v39, v36);
        return sub_24E772780(v58);
      }
    }

    else
    {
      sub_24E772780(v58);
      (*(v26 + 32))(a2, v22, v25);
      return (*(v26 + 56))(a2, 0, 1, v25);
    }
  }

  else
  {
    sub_24E601704(&v55, &qword_27F228658, &qword_24F9C31B0);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
    return (*(*(v38 - 8) + 56))(a2, 1, 1, v38);
  }
}

uint64_t sub_24EF197C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228650, &qword_24F9B0470);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v21 - v8;
  v11 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, *(a2 + 16), *(a2 + 24), v10);
  ModelMappedDiffableDataSourceContentSnapshot.itemModel(for:)(v11, v9, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    v23 = a1;
    v24 = a3;
    sub_24E601704(v9, &qword_27F228650, &qword_24F9B0470);
    if (qword_27F2105A8 != -1)
    {
      swift_once();
    }

    v22 = sub_24F92AAE8();
    v21[2] = __swift_project_value_buffer(v22, qword_27F39C458);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    v21[1] = 4 * *(*(sub_24F928468() - 8) + 72);
    *(swift_allocObject() + 16) = xmmword_24F942000;
    v15 = MEMORY[0x277D837D0];
    v27 = MEMORY[0x277D837D0];
    v25 = 0xD000000000000019;
    v26 = 0x800000024FA60520;
    sub_24F928438();
    sub_24E601704(&v25, &qword_27F2129B0, &unk_24F945320);
    v16 = (v3 + *(v11 + 52));
    v18 = *v16;
    v17 = v16[1];
    v27 = v15;
    v25 = v18;
    v26 = v17;

    sub_24F928438();
    sub_24E601704(&v25, &qword_27F2129B0, &unk_24F945320);
    v27 = v15;
    v25 = 0xD000000000000031;
    v26 = 0x800000024FA60540;
    sub_24F928438();
    sub_24E601704(&v25, &qword_27F2129B0, &unk_24F945320);
    v27 = &type metadata for DiffablePageContentIdentifier;
    v25 = swift_allocObject();
    sub_24E772724(v23, v25 + 16);
    sub_24F928438();
    sub_24E601704(&v25, &qword_27F2129B0, &unk_24F945320);
    v27 = v15;
    v25 = 0xD000000000000019;
    v26 = 0x800000024FA60580;
    sub_24F928438();
    sub_24E601704(&v25, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5B8();

    v19 = 1;
    a3 = v24;
  }

  else
  {
    (*(v14 + 32))(a3, v9, v13);
    v19 = 0;
  }

  return (*(v14 + 56))(a3, v19, 1, v13);
}

uint64_t sub_24EF19BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t x3_0@<X3>)
{
  v7 = *MEMORY[0x277D85000] & *v4;
  v8 = *(v7 + class metadata base offset for ModelMappedDiffableDataSource);
  v9 = *(v7 + class metadata base offset for ModelMappedDiffableDataSource + 8);
  v10 = type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot(0, v8, v9, x3_0);
  v46 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v39 = &v33 - v11;
  v12 = sub_24F92C4A8();
  v44 = *(v12 - 8);
  v45 = v12;
  MEMORY[0x28223BE20](v12);
  v43 = &v33 - v13;
  v15 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, v8, v9, v14);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228650, &qword_24F9B0470);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v33 - v20;
  v41 = v4;
  sub_24EF17050(v18);
  ModelMappedDiffableDataSourceContentSnapshot.itemModel(for:)(v15, v21, v22);
  v42 = *(v16 + 8);
  v42(v18, v15);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v21, 1, v23) == 1)
  {
    v34 = v23;
    v37 = v10;
    v38 = a2;
    v40 = a1;
    sub_24E601704(v21, &qword_27F228650, &qword_24F9B0470);
    if (qword_27F2105A8 != -1)
    {
      swift_once();
    }

    v36 = sub_24F92AAE8();
    v35 = __swift_project_value_buffer(v36, qword_27F39C458);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    v49 = MEMORY[0x277D837D0];
    v47 = 0xD00000000000001BLL;
    v48 = 0x800000024FA64000;
    sub_24F928438();
    sub_24E601704(&v47, &qword_27F2129B0, &unk_24F945320);
    v49 = &type metadata for DiffablePageContentIdentifier;
    v47 = swift_allocObject();
    sub_24E772724(v40, v47 + 16);
    sub_24F928438();
    sub_24E601704(&v47, &qword_27F2129B0, &unk_24F945320);
    v49 = MEMORY[0x277D837D0];
    v47 = 0xD000000000000027;
    v48 = 0x800000024FA64020;
    sub_24F928438();
    sub_24E601704(&v47, &qword_27F2129B0, &unk_24F945320);
    sub_24EF17050(v18);
    v25 = &v18[*(v15 + 52)];
    v27 = *v25;
    v26 = v25[1];

    v42(v18, v15);
    v49 = MEMORY[0x277D837D0];
    v47 = v27;
    v48 = v26;
    sub_24F928438();
    sub_24E601704(&v47, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5B8();

    v28 = v43;
    sub_24EF1712C(v43);
    v29 = v46;
    v30 = v37;
    if ((*(v46 + 48))(v28, 1, v37))
    {
      (*(v44 + 8))(v28, v45);
      return (*(v24 + 56))(v38, 1, 1, v34);
    }

    else
    {
      v32 = v39;
      (*(v29 + 16))(v39, v28, v30);
      (*(v44 + 8))(v28, v45);
      sub_24EF197C0(v40, v30, v38);
      return (*(v29 + 8))(v32, v30);
    }
  }

  else
  {
    (*(v24 + 32))(a2, v21, v23);
    return (*(v24 + 56))(a2, 0, 1, v23);
  }
}

char *sub_24EF1A230(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *MEMORY[0x277D85000] & *v5;
  v9 = *(v7 + class metadata base offset for ModelMappedDiffableDataSource);
  v8 = *(v7 + class metadata base offset for ModelMappedDiffableDataSource + 8);
  v10 = type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot(0, v9, v8, a5);
  v51 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v42 = v39 - v11;
  v52 = v12;
  v13 = sub_24F92C4A8();
  v49 = *(v13 - 8);
  v50 = v13;
  MEMORY[0x28223BE20](v13);
  v48 = v39 - v14;
  v15 = sub_24F928A68();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v39 - v17;
  v20 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, v9, v8, v19);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v39 - v22;
  v53 = v5;
  sub_24EF17050(v39 - v22);
  v24 = *(v16 + 16);
  v46 = v15;
  v44 = v24;
  v24(v18, a1, v15);
  v45 = v18;
  v47 = v8;
  DiffablePageContentIdentifier.init<A>(_:)(v18);
  v25 = ModelMappedDiffableDataSourceContentSnapshot.doesSectionExist(for:)(&v54, v20);
  sub_24E772780(&v54);
  v26 = *(v21 + 8);
  v26(v23, v20);
  if (v25)
  {
    sub_24EF17050(v23);
    v27 = ModelMappedDiffableDataSourceContentSnapshot.itemModels(in:)(a1, v20);
    v28 = v26;
    v29 = v27;
    v28(v23, v20);
  }

  else
  {
    v41 = v26;
    v43 = a1;
    if (qword_27F2105A8 != -1)
    {
      swift_once();
    }

    v40 = sub_24F92AAE8();
    v39[1] = __swift_project_value_buffer(v40, qword_27F39C458);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    v56 = MEMORY[0x277D837D0];
    v54 = 0xD00000000000003BLL;
    v55 = 0x800000024FA605A0;
    sub_24F928438();
    sub_24E601704(&v54, &qword_27F2129B0, &unk_24F945320);
    v30 = v45;
    v44(v45, v43, v46);
    v56 = &type metadata for DiffablePageContentIdentifier;
    v54 = swift_allocObject();
    DiffablePageContentIdentifier.init<A>(_:)(v30);
    sub_24F928438();
    sub_24E601704(&v54, &qword_27F2129B0, &unk_24F945320);
    v56 = MEMORY[0x277D837D0];
    v54 = 0xD000000000000044;
    v55 = 0x800000024FA605E0;
    sub_24F928438();
    sub_24E601704(&v54, &qword_27F2129B0, &unk_24F945320);
    sub_24EF17050(v23);
    v31 = &v23[*(v20 + 52)];
    v33 = *v31;
    v32 = v31[1];

    v41(v23, v20);
    v56 = MEMORY[0x277D837D0];
    v54 = v33;
    v55 = v32;
    sub_24F928438();
    sub_24E601704(&v54, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5B8();

    v34 = v48;
    sub_24EF1712C(v48);
    v36 = v51;
    v35 = v52;
    if ((*(v51 + 48))(v34, 1, v52))
    {
      (*(v49 + 8))(v34, v50);
      return 0;
    }

    else
    {
      v37 = v42;
      (*(v36 + 16))(v42, v34, v35);
      (*(v49 + 8))(v34, v50);
      v29 = sub_24EF1A8A8(v43, v35);
      (*(v36 + 8))(v37, v35);
    }
  }

  return v29;
}

char *sub_24EF1A8A8(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = sub_24F928A68();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v21 - v9;
  v11 = *(v7 + 16);
  v11(v21 - v9, a1, v6, v8);
  v12 = *(a2 + 24);
  DiffablePageContentIdentifier.init<A>(_:)(v10);
  v14 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, v5, v12, v13);
  v15 = ModelMappedDiffableDataSourceContentSnapshot.doesSectionExist(for:)(&v29, v14);
  sub_24E772780(&v29);
  if (v15)
  {
    return ModelMappedDiffableDataSourceContentSnapshot.itemModels(in:)(a1, v14);
  }

  v21[1] = v12;
  v22 = v6;
  v27 = v11;
  v28 = a1;
  if (qword_27F2105A8 != -1)
  {
    swift_once();
  }

  v26 = sub_24F92AAE8();
  v25 = __swift_project_value_buffer(v26, qword_27F39C458);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  v24 = 4 * *(*(sub_24F928468() - 8) + 72);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_24F942000;
  v17 = MEMORY[0x277D837D0];
  v31 = MEMORY[0x277D837D0];
  v29 = 0xD000000000000019;
  v30 = 0x800000024FA60520;
  sub_24F928438();
  sub_24E601704(&v29, &qword_27F2129B0, &unk_24F945320);
  v18 = (v2 + *(v14 + 52));
  v20 = *v18;
  v19 = v18[1];
  v31 = v17;
  v29 = v20;
  v30 = v19;

  sub_24F928438();
  sub_24E601704(&v29, &qword_27F2129B0, &unk_24F945320);
  v31 = v17;
  v29 = 0xD00000000000003BLL;
  v30 = 0x800000024FA605A0;
  sub_24F928438();
  sub_24E601704(&v29, &qword_27F2129B0, &unk_24F945320);
  v27(v10, v28, v22);
  v31 = &type metadata for DiffablePageContentIdentifier;
  v29 = swift_allocObject();
  DiffablePageContentIdentifier.init<A>(_:)(v10);
  sub_24F928438();
  sub_24E601704(&v29, &qword_27F2129B0, &unk_24F945320);
  v31 = v17;
  v29 = 0xD00000000000002DLL;
  v30 = 0x800000024FA60630;
  sub_24F928438();
  sub_24E601704(&v29, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5B8();

  return 0;
}

uint64_t sub_24EF1AC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for ModelMappedDiffableDataSource), *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for ModelMappedDiffableDataSource + 8), a4);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  sub_24EF17050(&v12 - v7);
  v9 = *&v8[*(v5 + 52)];
  v10 = *(v6 + 8);

  v10(v8, v5);
  return v9;
}

uint64_t sub_24EF1ADA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for ModelMappedDiffableDataSource), *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for ModelMappedDiffableDataSource + 8), a4);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  sub_24EF17050(&v11 - v7);
  v9 = ModelMappedDiffableDataSourceContentSnapshot.debugModelDescription.getter(v5);
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t ModelMappedDiffableDataSource.init(collectionView:cellProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = MEMORY[0x277D85000];
  v8 = *MEMORY[0x277D85000] & *v3;
  v9 = *(v8 + class metadata base offset for ModelMappedDiffableDataSource + 8);
  v10 = *(v8 + class metadata base offset for ModelMappedDiffableDataSource);
  ModelMappedDiffableDataSourceContentSnapshot.init()(v10, v9, &v3[*(v8 + class metadata base offset for ModelMappedDiffableDataSource + 16)]);
  v11 = *((*v7 & *v3) + class metadata base offset for ModelMappedDiffableDataSource + 24);
  v13 = type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot(0, v10, v9, v12);
  (*(*(v13 - 8) + 56))(&v3[v11], 1, 1, v13);

  return MEMORY[0x2821DD7B0](a1, a2, a3);
}

uint64_t sub_24EF1B04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277D85000];
  v6 = *MEMORY[0x277D85000] & *v4;
  v7 = *(v6 + class metadata base offset for ModelMappedDiffableDataSource + 8);
  v8 = *(v6 + class metadata base offset for ModelMappedDiffableDataSource + 16);
  v9 = *(v6 + class metadata base offset for ModelMappedDiffableDataSource);
  v10 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, v9, v7, a4);
  (*(*(v10 - 8) + 8))(&v4[v8], v10);
  v11 = *((*v5 & *v4) + class metadata base offset for ModelMappedDiffableDataSource + 24);
  type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot(255, v9, v7, v12);
  v13 = sub_24F92C4A8();
  v14 = *(*(v13 - 8) + 8);

  return v14(&v4[v11], v13);
}

id ModelMappedDiffableDataSource.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ModelMappedDiffableDataSource(0, *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for ModelMappedDiffableDataSource), *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for ModelMappedDiffableDataSource + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_24EF1B20C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277D85000];
  v6 = *MEMORY[0x277D85000] & *a1;
  v7 = *(v6 + class metadata base offset for ModelMappedDiffableDataSource + 8);
  v8 = *(v6 + class metadata base offset for ModelMappedDiffableDataSource + 16);
  v9 = *(v6 + class metadata base offset for ModelMappedDiffableDataSource);
  v10 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, v9, v7, a4);
  (*(*(v10 - 8) + 8))(&a1[v8], v10);
  v11 = *((*v5 & *a1) + class metadata base offset for ModelMappedDiffableDataSource + 24);
  type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot(255, v9, v7, v12);
  v13 = sub_24F92C4A8();
  v14 = *(*(v13 - 8) + 8);

  return v14(&a1[v11], v13);
}

uint64_t sub_24EF1B358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = ((*MEMORY[0x277D85000] & *v4) + class metadata base offset for ModelMappedDiffableDataSource);
  v7 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, *v6, v6[1], a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16[-v9];
  v11 = v6[2];
  swift_beginAccess();
  (*(v8 + 16))(v10, &v4[v11], v7);
  swift_beginAccess();
  (*(v8 + 24))(&v4[v11], a1, v7);
  swift_endAccess();
  sub_24EF16E80(v10, v12, v13, v14);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_24EF1B4F4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_24EF1B544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + class metadata base offset for ModelMappedDiffableDataSource);
  v5 = *(a1 + class metadata base offset for ModelMappedDiffableDataSource + 8);
  result = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(319, v4, v5, a4);
  if (v8 <= 0x3F)
  {
    type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot(255, v4, v5, v7);
    result = sub_24F92C4A8();
    if (v9 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of ModelMappedDiffableDataSource.itemModel(for:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + class metadata base offset for ModelMappedDiffableDataSource + 128))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + class metadata base offset for ModelMappedDiffableDataSource + 136))();
}

uint64_t sub_24EF1B94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24EF1B9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, *(a3 + 16), *(a3 + 24), a4);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_24EF1BA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, *(a4 + 16), *(a4 + 24), a4);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a2, v6);
}

uint64_t sub_24EF1BADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EF1BB5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for RefreshFeedsAction(uint64_t a1)
{
  result = qword_27F233DC0;
  if (!qword_27F233DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EF1BC18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_24F928AD8();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233DD0, &qword_24F9B0560);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  refreshed = type metadata accessor for RefreshFeedsAction(0);
  MEMORY[0x28223BE20](refreshed - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EF1C078();
  v12 = v19;
  sub_24F92D108();
  if (!v12)
  {
    v13 = v17;
    sub_24E674184(&qword_27F254CB0, MEMORY[0x277D21C98]);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_24EF1C0CC(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24EF1BE84(uint64_t a1)
{
  v2 = sub_24EF1C078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF1BEC0(uint64_t a1)
{
  v2 = sub_24EF1C078();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF1BF14(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233DE0, &qword_24F9B0568);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EF1C078();
  sub_24F92D128();
  sub_24F928AD8();
  sub_24E674184(&qword_27F216080, MEMORY[0x277D21C90]);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24EF1C078()
{
  result = qword_27F233DD8;
  if (!qword_27F233DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233DD8);
  }

  return result;
}

uint64_t sub_24EF1C0CC(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for RefreshFeedsAction(0);
  (*(*(refreshed - 8) + 32))(a2, a1, refreshed);
  return a2;
}

unint64_t sub_24EF1C144()
{
  result = qword_27F233DE8;
  if (!qword_27F233DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233DE8);
  }

  return result;
}

unint64_t sub_24EF1C19C()
{
  result = qword_27F233DF0;
  if (!qword_27F233DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233DF0);
  }

  return result;
}

unint64_t sub_24EF1C1F4()
{
  result = qword_27F233DF8;
  if (!qword_27F233DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233DF8);
  }

  return result;
}

void *sub_24EF1C248(void *result)
{
  v1 = result;
  v2 = result[2];
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 40 * v2 - 8;
  for (i = 4; ; i += 5)
  {
    if (v3 == v5)
    {
      goto LABEL_5;
    }

    v8 = v1[2];
    if (v3 >= v8)
    {
      break;
    }

    result = sub_24E615E00(&v1[i], v10);
    if (v5 >= v8)
    {
      goto LABEL_14;
    }

    sub_24E615E00(v1 + v6, v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_24ECDE214(v1);
    }

    __swift_destroy_boxed_opaque_existential_1(&v1[i]);
    result = sub_24E612E28(v9, &v1[i]);
    if (v5 >= v1[2])
    {
      goto LABEL_15;
    }

    __swift_destroy_boxed_opaque_existential_1((v1 + v6));
    result = sub_24E612E28(v10, v1 + v6);
LABEL_5:
    ++v3;
    --v5;
    v6 -= 40;
    if (v4 == v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_24EF1C364(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = sub_24F92C738();
    if (v19)
    {
      v20 = v19;
      v1 = sub_24EAEACA0(v19, 0);
      sub_24EA105D4(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x277D84F90];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_24F92C738();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x253052270]();
          v11 = MEMORY[0x253052270](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_24ECDE964(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_24ECDE964(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

void *sub_24EF1C574(void *result)
{
  v1 = result;
  v2 = result[2];
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = v1[2];
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_14;
    }

    v7 = v1[i];
    v8 = v1[v4];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_24ECDE2F4(v1);
    }

    v1[i] = v8;

    if (v4 - 4 >= v1[2])
    {
      goto LABEL_15;
    }

    v1[v4] = v7;

LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

char *sub_24EF1C668(char *result)
{
  v1 = result;
  v2 = *(result + 2);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = (32 * v2) | 0x18;
  v7 = 56;
  v22 = v2 >> 1;
  while (1)
  {
    if (v3 == v5)
    {
      goto LABEL_5;
    }

    v12 = *(v1 + 2);
    if (v3 >= v12)
    {
      break;
    }

    if (v5 >= v12)
    {
      goto LABEL_14;
    }

    v13 = *&v1[v7];
    v14 = *&v1[v6 - 24];
    v15 = *&v1[v6 - 16];
    v16 = v1[v6 - 8];
    v17 = *&v1[v6];
    v24 = *&v1[v7 - 16];
    v25 = *&v1[v7 - 24];
    v23 = v1[v7 - 8];
    sub_24E5FD138(v25, v24, v23);

    sub_24E5FD138(v14, v15, v16);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_24ECDE40C(v1);
    }

    v18 = &v1[v7];
    v19 = *&v1[v7 - 24];
    v20 = *&v1[v7 - 16];
    v21 = v1[v7 - 8];
    *(v18 - 3) = v14;
    *(v18 - 2) = v15;
    *(v18 - 8) = v16;
    *v18 = v17;
    sub_24E600B40(v19, v20, v21);

    if (v5 >= *(v1 + 2))
    {
      goto LABEL_15;
    }

    v8 = &v1[v6];
    v9 = *&v1[v6 - 24];
    v10 = *&v1[v6 - 16];
    v11 = v1[v6 - 8];
    *(v8 - 3) = v25;
    *(v8 - 2) = v24;
    *(v8 - 8) = v23;
    *v8 = v13;
    sub_24E600B40(v9, v10, v11);

    v4 = v22;
LABEL_5:
    ++v3;
    --v5;
    v6 -= 32;
    v7 += 32;
    if (v4 == v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_24EF1C7FC(void *a1)
{
  v2 = type metadata accessor for GSKDebugMetricsEvent(0);
  v16 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v17 = &v16 - v7;
  v8 = a1[2];
  if (v8 < 2)
  {
    return;
  }

  v9 = 0;
  v10 = v8 >> 1;
  for (i = v8 - 1; ; --i)
  {
    if (v9 == i)
    {
      goto LABEL_5;
    }

    v12 = a1[2];
    if (v9 >= v12)
    {
      break;
    }

    v13 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v14 = *(v16 + 72);
    sub_24EF1DC78(a1 + v13 + v14 * v9, v17, v6, type metadata accessor for GSKDebugMetricsEvent);
    if (i >= v12)
    {
      goto LABEL_14;
    }

    sub_24EF1DC78(a1 + v13 + v14 * i, v4, v15, type metadata accessor for GSKDebugMetricsEvent);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_24ECDE420(a1);
    }

    sub_24EF1DCE0(v4, a1 + v13 + v14 * v9);
    if (i >= a1[2])
    {
      goto LABEL_15;
    }

    sub_24EF1DCE0(v17, a1 + v13 + v14 * i);
LABEL_5:
    if (v10 == ++v9)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t IconRowViewLayout.init(metrics:iconViews:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24EF1CA10(a1, a3);
  result = type metadata accessor for IconRowViewLayout(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_24EF1CA10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconRowViewLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double IconRowViewLayout.iconViews.getter()
{
  type metadata accessor for IconRowViewLayout(0);

  return result;
}

uint64_t IconRowViewLayout.Alignment.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t IconRowViewLayout.Metrics.init(iconAspectRatio:interItemSpacing:alignment:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = *a2;
  v8 = sub_24F922348();
  (*(*(v8 - 8) + 32))(a3, a1, v8);
  result = type metadata accessor for IconRowViewLayout.Metrics(0);
  *(a3 + *(result + 20)) = a4;
  *(a3 + *(result + 24)) = v7;
  return result;
}

uint64_t IconRowViewLayout.Metrics.iconAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F922348();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t IconRowViewLayout.Metrics.iconAspectRatio.setter(uint64_t a1)
{
  v3 = sub_24F922348();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t IconRowViewLayout.Metrics.interItemSpacing.setter(double a1)
{
  result = type metadata accessor for IconRowViewLayout.Metrics(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t IconRowViewLayout.Metrics.alignment.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IconRowViewLayout.Metrics(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t IconRowViewLayout.Metrics.alignment.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for IconRowViewLayout.Metrics(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

CGSize __swiftcall IconRowViewLayout.iconSize(fitting:)(CGSize fitting)
{
  height = fitting.height;
  v3 = type metadata accessor for IconRowViewLayout.Metrics(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(sub_24EF1CF74() + 16);

  if (v6)
  {
    sub_24EF1DC78(v1, v5, v7, type metadata accessor for IconRowViewLayout.Metrics);
    sub_24F9222F8();
    v9 = v8;
    v10 = sub_24F922348();
    (*(*(v10 - 8) + 8))(v5, v10);
  }

  else
  {
    v9 = 0.0;
    height = 0.0;
  }

  v11 = v9;
  v12 = height;
  result.height = v12;
  result.width = v11;
  return result;
}

uint64_t sub_24EF1CF74()
{
  result = type metadata accessor for IconRowViewLayout(0);
  v2 = *(v0 + *(result + 20));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 32;
    v6 = MEMORY[0x277D84F90];
    while (v4 < *(v2 + 16))
    {
      sub_24E615E00(v5, &v21);
      __swift_project_boxed_opaque_existential_1(&v21, v22);
      if ((sub_24F922238() & 1) != 0 || (__swift_project_boxed_opaque_existential_1(&v21, v22), (sub_24F9221E8() & 1) == 0))
      {
        result = __swift_destroy_boxed_opaque_existential_1(&v21);
      }

      else
      {
        sub_24E612E28(&v21, v18);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = v6;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24F4581AC(0, *(v6 + 16) + 1, 1);
          v6 = v23;
        }

        v9 = *(v6 + 16);
        v8 = *(v6 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_24F4581AC((v8 > 1), v9 + 1, 1);
        }

        v10 = v19;
        v11 = v20;
        v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
        v13 = MEMORY[0x28223BE20](v12);
        v15 = &v18[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v16 + 16))(v15, v13);
        sub_24EF1D56C(v9, v15, &v23, v10, v11);
        result = __swift_destroy_boxed_opaque_existential_1(v18);
        v6 = v23;
      }

      ++v4;
      v5 += 40;
      if (v3 == v4)
      {
        return v6;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t IconRowViewLayout.placeChildren(relativeTo:in:)(void *a1, CGFloat a2, CGFloat a3, double a4, double a5)
{
  v6 = v5;
  v12 = type metadata accessor for IconRowViewLayout.Metrics(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v32[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(sub_24EF1CF74() + 16);

  if (v15)
  {
    v16 = *(sub_24EF1CF74() + 16);

    if (v16)
    {
      sub_24EF1DC78(v6, v14, v17, type metadata accessor for IconRowViewLayout.Metrics);
      sub_24F9222F8();
      v19 = v18;
      v20 = sub_24F922348();
      (*(*(v20 - 8) + 8))(v14, v20);
    }

    else
    {
      v19 = 0.0;
    }

    if (*(v6 + *(v12 + 24)))
    {
      _s12GameStoreKit17IconRowViewLayoutV12measurements7fitting2inSo14JUMeasurementsVSo6CGSizeV_So18UITraitEnvironment_ptF_0(a4, a5);
      v23 = v22;
      v35.origin.x = a2;
      v35.origin.y = a3;
      v35.size.width = a4;
      v35.size.height = a5;
      MinX = CGRectGetMinX(v35);
      v36.origin.x = a2;
      v36.origin.y = a3;
      v36.size.width = a4;
      v36.size.height = a5;
      v25 = MinX + (v23 - CGRectGetWidth(v36)) * -0.5;
    }

    else
    {
      v37.origin.x = a2;
      v37.origin.y = a3;
      v37.size.width = a4;
      v37.size.height = a5;
      v25 = CGRectGetMinX(v37);
    }

    v26 = [a1 traitCollection];
    v27 = sub_24F92BF88();

    v28 = *(v6 + *(type metadata accessor for IconRowViewLayout(0) + 20));

    if (v27)
    {
      v28 = sub_24EF1C248(v28);
    }

    v29 = v28[2];
    if (v29)
    {
      v30 = (v28 + 4);
      do
      {
        sub_24E615E00(v30, v32);
        __swift_project_boxed_opaque_existential_1(v32, v33);
        if ((sub_24F922238() & 1) != 0 || (__swift_project_boxed_opaque_existential_1(v32, v33), (sub_24F9221E8() & 1) == 0))
        {
          __swift_project_boxed_opaque_existential_1(v32, v33);
          sub_24F922228();
        }

        else
        {
          v38.origin.x = a2;
          v38.origin.y = a3;
          v38.size.width = a4;
          v38.size.height = a5;
          CGRectGetMinY(v38);
          __swift_project_boxed_opaque_existential_1(v32, v33);
          sub_24F922228();
          v25 = v25 + v19 + *(v6 + *(v12 + 20));
        }

        __swift_destroy_boxed_opaque_existential_1(v32);
        v30 += 40;
        --v29;
      }

      while (v29);
    }

    v39.origin.x = a2;
    v39.origin.y = a3;
    v39.size.width = a4;
    v39.size.height = a5;
    CGRectGetMinX(v39);
    v40.origin.x = a2;
    v40.origin.y = a3;
    v40.size.width = a4;
    v40.size.height = a5;
    CGRectGetMinY(v40);
    return sub_24F922128();
  }

  else
  {

    return sub_24F922168();
  }
}

uint64_t sub_24EF1D56C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_24E612E28(&v12, v10 + 40 * a1 + 32);
}

uint64_t _s12GameStoreKit17IconRowViewLayoutV12measurements7fitting2inSo14JUMeasurementsVSo6CGSizeV_So18UITraitEnvironment_ptF_0(double a1, double a2)
{
  v3 = v2;
  v4 = type metadata accessor for IconRowViewLayout.Metrics(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(sub_24EF1CF74() + 16);

  if (v7)
  {
    v9 = *(sub_24EF1CF74() + 16);

    if (v9)
    {
      sub_24EF1DC78(v3, v6, v10, type metadata accessor for IconRowViewLayout.Metrics);
      sub_24F9222F8();
      v11 = sub_24F922348();
      return (*(*(v11 - 8) + 8))(v6, v11);
    }
  }

  return result;
}

unint64_t sub_24EF1D774()
{
  result = qword_27F233E00;
  if (!qword_27F233E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233E00);
  }

  return result;
}

uint64_t sub_24EF1D7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IconRowViewLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24EF1D8AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IconRowViewLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_24EF1D964(uint64_t a1)
{
  type metadata accessor for IconRowViewLayout.Metrics(319);
  if (v1 <= 0x3F)
  {
    sub_24EF1D9E8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EF1D9E8(uint64_t a1)
{
  if (!qword_27F233E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F235730, &unk_24F947310);
    v1 = sub_24F92B6E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F233E18);
    }
  }
}

uint64_t sub_24EF1DA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F922348();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24EF1DB3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F922348();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_24EF1DBF4(uint64_t a1)
{
  result = sub_24F922348();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24EF1DC78(uint64_t a1, uint64_t a2, __n128 a3, uint64_t (*a4)(void, __n128))
{
  v6 = a4(0, a3);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24EF1DCE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKDebugMetricsEvent(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ComponentModel.pairedWith<A>(objectGraph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v4, a2, v9);
  ObjectGraphPair.init(value:objectGraph:)(v11, a1, a2, a3, a4);
}

id sub_24EF1DE2C()
{
  v0 = sub_24F922118();
  __swift_allocate_value_buffer(v0, qword_27F233E30);
  v1 = __swift_project_value_buffer(v0, qword_27F233E30);
  v3 = *MEMORY[0x277D76918];
  *v1 = *MEMORY[0x277D76918];
  (*(*(v0 - 8) + 104))();

  return v3;
}

double SpacerDimension.rawValue(in:)(void *a1)
{
  v3 = sub_24F92CDB8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25[-1] - v8;
  v10 = *v1;
  if (qword_27F210C58 != -1)
  {
    swift_once();
  }

  v11 = sub_24F922118();
  v12 = __swift_project_value_buffer(v11, qword_27F233E30);
  v25[3] = v11;
  v25[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v12, v11);
  v14 = [a1 traitCollection];
  sub_24F91FE48();
  v16 = v15;

  __swift_destroy_boxed_opaque_existential_1(v25);
  v17 = v10 * ((v16 + -1.0) * 0.5 + 1.0);
  sub_24F9220E8();
  *v25 = v17;
  (*(v4 + 16))(v6, v9, v3);
  v18 = (*(v4 + 88))(v6, v3);
  if (v18 == *MEMORY[0x277D84678])
  {
    v19 = round(v17);
LABEL_13:
    (*(v4 + 8))(v9, v3);
    return v19;
  }

  if (v18 == *MEMORY[0x277D84670])
  {
    v19 = rint(v17);
    goto LABEL_13;
  }

  if (v18 == *MEMORY[0x277D84680])
  {
    v19 = ceil(v17);
    goto LABEL_13;
  }

  if (v18 == *MEMORY[0x277D84688])
  {
    v19 = floor(v17);
    goto LABEL_13;
  }

  if (v18 == *MEMORY[0x277D84660])
  {
    v19 = trunc(v17);
    goto LABEL_13;
  }

  if (v18 == *MEMORY[0x277D84668])
  {
    (*(v4 + 8))(v9, v3);
    v21 = ceil(v17);
    v22 = floor(v17);
    if (v17 < 0.0)
    {
      return v22;
    }

    else
    {
      return v21;
    }
  }

  else
  {
    sub_24F92BA48();
    v23 = *(v4 + 8);
    v23(v9, v3);
    v23(v6, v3);
    return *v25;
  }
}

UIEdgeInsets __swiftcall SpacerDimension.languageAwareOutsets(compatibleWith:)(UITraitCollection compatibleWith)
{
  v1 = *MEMORY[0x277D768C8];
  v2 = *(MEMORY[0x277D768C8] + 8);
  v3 = *(MEMORY[0x277D768C8] + 16);
  v4 = *(MEMORY[0x277D768C8] + 24);
  result.right = v4;
  result.bottom = v3;
  result.left = v2;
  result.top = v1;
  return result;
}

uint64_t sub_24EF1E274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActivityDefinitionDetail(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_24F928AD8();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24EF1E3B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActivityDefinitionDetail(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = sub_24F928AD8();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for UpdateActivityDefinitionAction(uint64_t a1)
{
  result = qword_27F233E48;
  if (!qword_27F233E48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EF1E524(uint64_t a1)
{
  type metadata accessor for ActivityDefinitionDetail(319);
  if (v1 <= 0x3F)
  {
    sub_24E6CFC68(319);
    if (v2 <= 0x3F)
    {
      sub_24F928AD8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24EF1E5C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = sub_24F928AD8();
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActivityDefinitionDetail(0);
  MEMORY[0x28223BE20](v6);
  v27 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233E58, &unk_24F9B08C0);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v9 = &v21 - v8;
  updated = type metadata accessor for UpdateActivityDefinitionAction(0);
  MEMORY[0x28223BE20](updated);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24EF1EAE0();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v14 = v26;
  v22 = v5;
  LOBYTE(v30) = 0;
  sub_24EF1EB98(&qword_27F233E68, type metadata accessor for ActivityDefinitionDetail, &protocol conformance descriptor for ActivityDefinitionDetail);
  v15 = v27;
  sub_24F92CC68();
  sub_24EF1EB34(v15, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8, &qword_24F943600);
  v33 = 1;
  sub_24EE076B8();
  sub_24F92CC68();
  v16 = &v12[*(updated + 20)];
  v17 = v31;
  *v16 = v30;
  *(v16 + 1) = v17;
  *(v16 + 4) = v32;
  LOBYTE(v30) = 2;
  sub_24EF1EB98(&qword_27F254CB0, MEMORY[0x277D21C88], MEMORY[0x277D21C98]);
  v18 = v22;
  v19 = v25;
  sub_24F92CC68();
  (*(v14 + 8))(v9, v28);
  (*(v23 + 32))(&v12[*(updated + 24)], v18, v19);
  sub_24EF1EBE0(v12, v24);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_24EF1EC44(v12, type metadata accessor for UpdateActivityDefinitionAction);
}

uint64_t sub_24EF1EA50(uint64_t a1)
{
  v2 = sub_24EF1EAE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF1EA8C(uint64_t a1)
{
  v2 = sub_24EF1EAE0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EF1EAE0()
{
  result = qword_27F233E60;
  if (!qword_27F233E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233E60);
  }

  return result;
}

uint64_t sub_24EF1EB34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityDefinitionDetail(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EF1EB98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EF1EBE0(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateActivityDefinitionAction(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_24EF1EC44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EF1ECB8()
{
  result = qword_27F233E70;
  if (!qword_27F233E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233E70);
  }

  return result;
}

unint64_t sub_24EF1ED10()
{
  result = qword_27F233E78;
  if (!qword_27F233E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233E78);
  }

  return result;
}

unint64_t sub_24EF1ED68()
{
  result = qword_27F233E80;
  if (!qword_27F233E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233E80);
  }

  return result;
}

uint64_t sub_24EF1EDF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233EA0, &unk_24F9B0A10);
  __swift_allocate_value_buffer(v0, qword_27F233E88);
  __swift_project_value_buffer(v0, qword_27F233E88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225C78, &unk_24F977EB0);
  return sub_24F928C68();
}

uint64_t static RateLimitedAction.preferencesKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210C60 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233EA0, &unk_24F9B0A10);
  v3 = __swift_project_value_buffer(v2, qword_27F233E88);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t RateLimitedAction.actionKey.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_actionKey);

  return v1;
}

uint64_t *RateLimitedAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v69 = a2;
  v6 = *v4;
  v64 = v3;
  v65 = v6;
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  v66 = v7;
  v67 = v8;
  MEMORY[0x28223BE20](v7);
  v62 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v61 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v59 = &v59 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v59 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v59 - v22;
  v68 = a1;
  sub_24F928398();
  v24 = sub_24F928348();
  v26 = v25;
  v60 = v11;
  v27 = *(v11 + 8);
  v27(v23, v10);
  if (!v26)
  {
    v34 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v35 = 0x654B6E6F69746361;
    v36 = v65;
    v35[1] = 0xE900000000000079;
    v35[2] = v36;
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D22530], v34);
    swift_willThrow();
    (*(v67 + 8))(v69, v66);
    v27(v68, v10);
    goto LABEL_5;
  }

  v63 = v27;
  v28 = (v4 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_actionKey);
  *v28 = v24;
  v28[1] = v26;
  type metadata accessor for Action(0);
  sub_24F928398();
  v29 = v64;
  v30 = static Action.makeInstance(byDeserializing:using:)(v20, v69);
  v64 = v29;
  if (v29)
  {
    (*(v67 + 8))(v69, v66);
    v31 = v10;
    v32 = v10;
    v33 = v63;
    v63(v68, v32);
    v33(v20, v31);

LABEL_5:
    swift_deallocPartialClassInstance();
    return v4;
  }

  v38 = v30;
  v39 = v10;
  v40 = v63;
  v63(v20, v10);
  *(v4 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_primaryAction) = v38;
  v41 = v68;
  sub_24F928398();
  v42 = v69;
  v43 = static Action.tryToMakeInstance(byDeserializing:using:)(v17, v69);
  v40(v17, v39);
  *(v4 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_fallbackAction) = v43;
  v44 = v59;
  sub_24F928398();
  v45 = sub_24F928258();
  v47 = v46;
  v40(v44, v39);
  v48 = v41;
  v49 = v42;
  v50 = OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_rateLimit;
  if (v47)
  {
    *(v4 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_rateLimit) = 0;
  }

  else
  {
    *(v4 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_rateLimit) = v45;
  }

  v51 = v64;
  *(v4 + v50 + 8) = v47 & 1;
  v52 = v61;
  (*(v60 + 16))(v61, v48, v39);
  v53 = v67;
  v54 = v62;
  v55 = v49;
  v56 = v66;
  (*(v67 + 16))(v62, v55, v66);
  v57 = Action.init(deserializing:using:)(v52, v54);
  v58 = v63;
  if (!v51)
  {
    v4 = v57;
  }

  (*(v53 + 8))(v69, v56);
  v58(v48, v39);
  return v4;
}

void *RateLimitedAction.__allocating_init(actionKey:primaryAction:fallbackAction:rateLimit:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v35 = a4;
  v11 = sub_24F91F6B8();
  v33 = *(v11 - 8);
  v34 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v33 - v15;
  v17 = sub_24F928AD8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  v22 = (v21 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_actionKey);
  *v22 = a1;
  v22[1] = a2;
  v23 = a5;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_primaryAction) = a3;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_fallbackAction) = v35;
  v24 = (v21 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_rateLimit);
  *v24 = a6;
  *(v24 + 8) = 0;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  (*(v18 + 16))(v20, a5, v17);
  v25 = sub_24F929608();
  (*(*(v25 - 8) + 56))(v16, 1, 1, v25);
  v26 = (v21 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v26 = 0u;
  v26[1] = 0u;
  v27 = v21 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v41, &v38);
  if (*(&v39 + 1))
  {
    v28 = v39;
    *v27 = v38;
    *(v27 + 1) = v28;
    *(v27 + 4) = v40;
  }

  else
  {
    sub_24F91F6A8();
    v29 = sub_24F91F668();
    v31 = v30;
    (*(v33 + 8))(v13, v34);
    v36 = v29;
    v37 = v31;
    sub_24F92C7F8();
    sub_24E601704(&v38, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v18 + 8))(v23, v17);
  sub_24E601704(v41, &qword_27F235830, &qword_24F93B8C0);
  sub_24E65E0D4(v16, v21 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v21[2] = 0xD000000000000013;
  v21[3] = 0x800000024FA640B0;
  v21[4] = 0;
  v21[5] = 0;
  (*(v18 + 32))(v21 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v20, v17);
  return v21;
}

void *RateLimitedAction.init(actionKey:primaryAction:fallbackAction:rateLimit:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v35 = a4;
  v34 = sub_24F91F6B8();
  v33 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v33 - v16;
  v18 = sub_24F928AD8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = (v7 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_actionKey);
  *v22 = a1;
  v22[1] = a2;
  *(v7 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_primaryAction) = a3;
  v23 = a5;
  *(v7 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_fallbackAction) = v35;
  v24 = (v7 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_rateLimit);
  *v24 = a6;
  *(v24 + 8) = 0;
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  (*(v19 + 16))(v21, a5, v18);
  v25 = sub_24F929608();
  (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  v26 = (v7 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v26 = 0u;
  v26[1] = 0u;
  sub_24E65E064(v44, &v38);
  if (*(&v39 + 1))
  {
    v41 = v38;
    v42 = v39;
    v43 = v40;
  }

  else
  {
    sub_24F91F6A8();
    v27 = sub_24F91F668();
    v29 = v28;
    (*(v33 + 8))(v14, v34);
    v36 = v27;
    v37 = v29;
    sub_24F92C7F8();
    sub_24E601704(&v38, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v19 + 8))(v23, v18);
  sub_24E601704(v44, &qword_27F235830, &qword_24F93B8C0);
  v30 = v7 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v30 + 4) = v43;
  v31 = v42;
  *v30 = v41;
  *(v30 + 1) = v31;
  sub_24E65E0D4(v17, v7 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v7[2] = 0xD000000000000013;
  v7[3] = 0x800000024FA640B0;
  v7[4] = 0;
  v7[5] = 0;
  (*(v19 + 32))(v7 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v21, v18);
  return v7;
}

double sub_24EF1FDA0()
{

  return result;
}

uint64_t RateLimitedAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t RateLimitedAction.__deallocating_deinit()
{
  RateLimitedAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RateLimitedAction(uint64_t a1)
{
  result = qword_27F233EA8;
  if (!qword_27F233EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

int64_t sub_24EF20044(int64_t result)
{
  if (result < 0)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  if (v2 <= result)
  {
    return 0;
  }

  v3 = *(v1 + 24);
  if (v3)
  {
    v4 = *(v1 + 8);
    v5 = __OFADD__(result, v4);
    v6 = result + v4;
    if (!v5)
    {
      return *(v3 + 2 * v6);
    }

    __break(1u);
    goto LABEL_26;
  }

  v7 = *(v1 + 32);
  if (!v7)
  {
LABEL_12:
    if (*(v1 + 56) <= result || (v9 = *(v1 + 48), v9 > result))
    {
      if (result >= 4)
      {
        v9 = result - 4;
      }

      else
      {
        v9 = 0;
      }

      *(v1 + 48) = v9;
      if (__OFADD__(v9, 2048))
      {
        goto LABEL_28;
      }

      if (v2 >= v9 + 2048)
      {
        v2 = v9 + 2048;
      }

      *(v1 + 56) = v2;
      v10 = *(v1 + 8);
      if (__OFADD__(v10, v9))
      {
        goto LABEL_29;
      }

      v11 = result;
      v13.length = v2 - v9;
      v13.location = v10 + v9;
      CFStringGetCharacters(*v1, v13, *(v1 + 40));
      result = v11;
    }

    v12 = *(v1 + 40);
    if (!v12)
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (!__OFSUB__(result, v9))
    {
      return *(v12 + 2 * (result - v9));
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v8 = *(v1 + 8);
  v5 = __OFADD__(result, v8);
  v2 = result + v8;
  if (v5)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  result = *(v7 + v2);
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  return result;
}

const char *sub_24EF20144@<X0>(const __CFString *a1@<X0>, const __CFString *a2@<X1>, const __CFString *a3@<X2>, const __CFString **a4@<X8>)
{
  CharactersPtr = CFStringGetCharactersPtr(a1);
  if (CharactersPtr)
  {
    result = 0;
    v10 = 0;
LABEL_8:
    *a4 = a1;
    a4[1] = a2;
    a4[2] = a3;
    a4[3] = CharactersPtr;
    a4[4] = result;
    a4[5] = v10;
    a4[6] = 0;
    a4[7] = 0;
    return result;
  }

  v11 = sub_24F91F288();
  result = CFStringGetCStringPtr(a1, v11);
  if (result)
  {
    v10 = 0;
LABEL_7:
    CharactersPtr = 0;
    goto LABEL_8;
  }

  if (a3 >= 0xC000000000000000)
  {
    v10 = swift_slowAlloc();
    result = 0;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_24EF2021C()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x646E7542656D6167;
  }
}

uint64_t sub_24EF20264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646E7542656D6167 && a2 == 0xEC0000004449656CLL;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA64170 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24EF2034C(uint64_t a1)
{
  v2 = sub_24EF205F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF20388(uint64_t a1)
{
  v2 = sub_24EF205F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF203E4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_24EF20414(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_24EF20414(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233EB8, &qword_24F9B0BA8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EF205F8();
  sub_24F92D108();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_24F92CC28();
    v10 = 1;
    sub_24F92CC28();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_24EF205F8()
{
  result = qword_27F233EC0;
  if (!qword_27F233EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233EC0);
  }

  return result;
}

unint64_t sub_24EF20660()
{
  result = qword_27F233EC8;
  if (!qword_27F233EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233EC8);
  }

  return result;
}

unint64_t sub_24EF206B8()
{
  result = qword_27F233ED0;
  if (!qword_27F233ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233ED0);
  }

  return result;
}

unint64_t sub_24EF20710()
{
  result = qword_27F233ED8;
  if (!qword_27F233ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233ED8);
  }

  return result;
}

double static ArcadeDebugSubscriptionState.allCases.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t static ArcadeDebugSubscriptionState.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_27F233EE0 = a1;
}

uint64_t sub_24EF20854(void **a1)
{
  v1 = *a1;

  swift_beginAccess();
  off_27F233EE0 = v1;
}

uint64_t ArcadeDebugSubscriptionState.arcadeState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    if (v2 == 1)
    {
      v5 = -127;
    }

    else
    {
      v5 = -64;
    }

    if (*v1)
    {
      result = 0;
    }

    else
    {
      result = *v1;
    }

    if (*v1)
    {
      v4 = v5;
    }

    else
    {
      v4 = -126;
    }
  }

  else if (*v1 > 4u)
  {
    if (v2 == 5)
    {
      v4 = 0;
      result = 2;
    }

    else
    {
      v6 = a1;
      result = swift_allocObject();
      a1 = v6;
      *(result + 16) = 2;
      *(result + 24) = 0;
      v4 = 64;
    }
  }

  else
  {
    result = 1;
    if (v2 == 3)
    {
      v4 = -64;
    }

    else
    {
      v4 = 0;
    }
  }

  *a1 = result;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_24EF20968()
{
  sub_24EB6CE70(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t ArcadeDebugSubscriptionState.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

unint64_t sub_24EF20A30()
{
  result = qword_27F233EE8;
  if (!qword_27F233EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233EE8);
  }

  return result;
}

unint64_t sub_24EF20A88()
{
  result = qword_27F233EF0;
  if (!qword_27F233EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F233EF8, &qword_24F9B0D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233EF0);
  }

  return result;
}

double sub_24EF20AEC@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_27F233EE0;

  return result;
}

double sub_24EF20B3C@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_27F233EE0;

  return result;
}

uint64_t PreorderDisclaimer.disclaimer.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PreorderDisclaimer.__allocating_init(id:disclaimer:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  sub_24E60169C(a1, &v19, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v20 + 1))
  {
    sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
    v22 = v19;
    v23 = v20;
    v24 = v21;
  }

  else
  {
    sub_24F91F6A8();
    v13 = sub_24F91F668();
    v15 = v14;
    (*(v9 + 8))(v11, v8);
    v18[1] = v13;
    v18[2] = v15;
    sub_24F92C7F8();
    sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(&v19, &qword_27F235830, &qword_24F93B8C0);
  }

  v16 = v23;
  *(v12 + 32) = v22;
  *(v12 + 48) = v16;
  *(v12 + 64) = v24;
  sub_24E65E0D4(a4, v12 + OBJC_IVAR____TtC12GameStoreKit18PreorderDisclaimer_impressionMetrics);
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  return v12;
}

uint64_t PreorderDisclaimer.init(id:disclaimer:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v20, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v21 + 1))
  {
    sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
    v23 = v20;
    v24 = v21;
    v25 = v22;
  }

  else
  {
    sub_24F91F6A8();
    v14 = sub_24F91F668();
    v16 = v15;
    (*(v11 + 8))(v13, v10);
    v19[1] = v14;
    v19[2] = v16;
    sub_24F92C7F8();
    sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(&v20, &qword_27F235830, &qword_24F93B8C0);
  }

  v17 = v24;
  *(v5 + 32) = v23;
  *(v5 + 48) = v17;
  *(v5 + 64) = v25;
  sub_24E65E0D4(a4, v5 + OBJC_IVAR____TtC12GameStoreKit18PreorderDisclaimer_impressionMetrics);
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  return v5;
}

void (*PreorderDisclaimer.__allocating_init(deserializing:using:)(char *a1, uint64_t a2))(char *, uint64_t)
{
  v51 = a2;
  v47 = sub_24F9285B8();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v43 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v44 = &v35 - v5;
  v6 = sub_24F91F6B8();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  v17 = a1;
  sub_24F928398();
  v42 = sub_24F928348();
  v19 = v18;
  v20 = *(v10 + 8);
  v20(v16, v9);
  v41 = v19;
  if (v19)
  {
    v39 = v20;
    sub_24F928398();
    v21 = sub_24F928348();
    v40 = v17;
    v38 = v9;
    if (v22)
    {
      v48 = v21;
      v49 = v22;
    }

    else
    {
      sub_24F91F6A8();
      v25 = sub_24F91F668();
      v27 = v26;
      (*(v36 + 8))(v8, v37);
      v48 = v25;
      v49 = v27;
    }

    sub_24F92C7F8();
    v28 = v9;
    v29 = v39;
    v39(v13, v28);
    sub_24F929608();
    sub_24F928398();
    v30 = v45;
    v31 = v51;
    v32 = v47;
    (*(v45 + 16))(v43, v51, v47);
    v33 = v44;
    sub_24F929548();
    v20 = swift_allocObject();
    PreorderDisclaimer.init(id:disclaimer:impressionMetrics:)(v50, v42, v41, v33);
    (*(v30 + 8))(v31, v32);
    v29(v40, v38);
  }

  else
  {
    v23 = sub_24F92AC38();
    sub_24EF215F0(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v24 = 0x6D69616C63736964;
    v24[1] = 0xEA00000000007265;
    v24[2] = v46;
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D22530], v23);
    swift_willThrow();
    (*(v45 + 8))(v51, v47);
    v20(v17, v9);
  }

  return v20;
}

uint64_t PreorderDisclaimer.deinit()
{

  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit18PreorderDisclaimer_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v0;
}

uint64_t PreorderDisclaimer.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit18PreorderDisclaimer_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t sub_24EF215F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for PreorderDisclaimer(uint64_t a1)
{
  result = qword_27F233F08;
  if (!qword_27F233F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_24EF21684@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void (**a3)(char *, uint64_t)@<X8>))(char *, uint64_t)
{
  result = PreorderDisclaimer.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_24EF216F4(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t MSOPersonalizationDataSource.__allocating_init(objectGraph:accountChannelsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 40) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *(v6 + 48) = 0;
  *(v6 + 56) = 1;
  *(v6 + 72) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  ObjectType = swift_getObjectType();
  v8 = *(a3 + 16);
  swift_unknownObjectRetain_n();

  v8(v9, &protocol witness table for MSOPersonalizationDataSource, ObjectType, a3);

  swift_unknownObjectRelease_n();
  return v6;
}

uint64_t MSOPersonalizationDataSource.init(objectGraph:accountChannelsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_24EF2238C(a1, a2, a3);

  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_24EF21948@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233F18, &unk_24F9B0FC0);
    v6 = sub_24F92A9E8();
    v7 = *(a1 + 32);
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 32);

    v9(sub_24EF2279C, v6, ObjectType, v7);

    v10 = sub_24F929638();
    v11 = MEMORY[0x277D21FB0];
    v14 = v10;
    v15 = MEMORY[0x277D21FB0];
    __swift_allocate_boxed_opaque_existential_1(v13);

    sub_24F929628();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229690, &qword_24F985280);
    sub_24EF227AC();
    sub_24F92A9B8();

    __swift_destroy_boxed_opaque_existential_1(v13);
    sub_24F92A948();
    v14 = v10;
    v15 = v11;
    __swift_allocate_boxed_opaque_existential_1(v13);
    sub_24F929628();
    v5 = sub_24F92A938();

    __swift_destroy_boxed_opaque_existential_1(v13);
    *(a1 + 48) = v5;
  }

  *a2 = v5;
}

void sub_24EF21B50(void *a1)
{
  if (a1[1])
  {
    sub_24F92A9C8();
  }

  else
  {
    sub_24EF22810();
    v1 = swift_allocError();
    sub_24F92A9A8();
  }
}

uint64_t sub_24EF21BE0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for JSIntentDispatcher();
  v5 = *(a2 + 16);
  sub_24F928FD8();

  sub_24F92A758();
  v6 = sub_24EB4889C(0xD000000000000015, 0x800000024FA64260, v3, v4, v5, "GameStoreKit/MSOPersonalizationDataSource.swift", 47, 2);

  return v6;
}

uint64_t sub_24EF21CB8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;
  a2[3] = v3;
}

uint64_t sub_24EF21CFC()
{
  v1 = v0[5];
  [v1 lock];
  v0[6] = 0;

  [v1 unlock];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = v0[9];
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, &protocol witness table for MSOPersonalizationDataSource, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24EF21E00(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 72) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_24EF21E60(uint64_t *a1))()
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
  v6 = *(v1 + 72);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24EF21EF4;
}

uint64_t sub_24EF21EF8(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v5;
  v7[5] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B050, &qword_24F9B0EE0);
  sub_24EBDFD34(v3, v4);
  v8 = sub_24F92A9E8();
  v9 = *(v1 + 40);
  [v9 lock];
  sub_24EF21948(v2, v15);
  [v9 unlock];
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = v3;
  v11[4] = v4;
  v11[5] = v5;
  v11[6] = v6;
  v12 = sub_24E74EC40();

  sub_24EBDFD34(v3, v4);

  v13 = sub_24F92BEF8();
  v15[3] = v12;
  v15[4] = MEMORY[0x277D225C0];
  v15[0] = v13;
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1(v15);

  return v8;
}

double sub_24EF220E8(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  swift_beginAccess();
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  a2[2] = v4;
  a2[3] = v3;
  a2[4] = v5;
  a2[5] = v6;

  sub_24EBDFDB8(v7, v8, v9, v10);
  swift_beginAccess();
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  sub_24EBDFD34(v12, v13);
  sub_24F92A9C8();
  return sub_24EBDFDB8(v12, v13, v14, v15);
}

uint64_t MSOPersonalizationDataSource.deinit()
{

  swift_unknownObjectRelease();

  sub_24E883630(v0 + 64);
  return v0;
}

uint64_t MSOPersonalizationDataSource.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  sub_24E883630(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t (*sub_24EF22264(uint64_t *a1))()
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
  v6 = *(v1 + 72);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24EF228D0;
}

void sub_24EF222F8(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 72) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_24EF2238C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + 40) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 72) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  ObjectType = swift_getObjectType();
  v9 = *(a3 + 16);
  swift_unknownObjectRetain_n();

  v9(v10, &protocol witness table for MSOPersonalizationDataSource, ObjectType, a3);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_24EF22464()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EF224B0()
{

  return swift_deallocObject();
}

uint64_t sub_24EF224F8()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EF2258C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 72);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24EF225DC(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 72) = v2;
  return swift_unknownObjectWeakAssign();
}

unint64_t sub_24EF227AC()
{
  result = qword_27F233F20;
  if (!qword_27F233F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229690, &qword_24F985280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233F20);
  }

  return result;
}

unint64_t sub_24EF22810()
{
  result = qword_27F233F28;
  if (!qword_27F233F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233F28);
  }

  return result;
}

unint64_t sub_24EF2287C()
{
  result = qword_27F233F30;
  if (!qword_27F233F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233F30);
  }

  return result;
}

uint64_t ArcadeSubscriptionDecorationIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ArcadeSubscriptionDecorationIntent.product.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

double ArcadeSubscriptionDecorationIntent.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  a1[1] = v2;

  return result;
}

unint64_t sub_24EF2295C()
{
  v1 = v0;
  v2 = sub_24E608448(MEMORY[0x277D84F90]);
  sub_24E643A9C((v1 + 2), &v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v16[0] = v2;
  sub_24E81C1D4(&v17, 0x6E656B6F74, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v4 = v1[8];
  v5 = v1[9];
  v6 = MEMORY[0x277D837D0];
  v18 = MEMORY[0x277D837D0];
  *&v17 = v4;
  *(&v17 + 1) = v5;
  sub_24E612B0C(&v17, v16);

  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v16, 0x64496D616461, 0xE600000000000000, v7);
  v8 = v1[6];
  v9 = v1[7];
  v18 = v6;
  *&v17 = v8;
  *(&v17 + 1) = v9;
  sub_24E612B0C(&v17, v16);

  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v16, 0x746375646F7270, 0xE700000000000000, v10);
  v11 = v1[10];
  if (v11)
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
    *&v17 = v11;
    sub_24E612B0C(&v17, v16);

    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v16, 0x7363697274656DLL, 0xE700000000000000, v12);
  }

  v13 = v1[11];
  if (v13)
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
    *&v17 = v13;
    sub_24E612B0C(&v17, v16);

    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v16, 0xD000000000000011, 0x800000024FA55000, v14);
  }

  return v2;
}

JSValue __swiftcall ArcadeSubscriptionDecorationIntent.makeValue(in:)(JSContext in)
{
  v2 = objc_opt_self();
  result.super.isa = [v2 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    sub_24EF2295C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
    v5 = [v2 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v5)
    {
      sub_24F92C328();
      return isa;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_24EF22C48()
{
  result = qword_27F233F38;
  if (!qword_27F233F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233F38);
  }

  return result;
}

unint64_t sub_24EF22CA4()
{
  result = qword_27F233F40;
  if (!qword_27F233F40)
  {
    type metadata accessor for ArcadeSubscriptionRepresentation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233F40);
  }

  return result;
}

uint64_t sub_24EF22D00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EF22D48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double PreorderDisclaimerLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_24F922298();
  return a2;
}

uint64_t PreorderDisclaimerLayout.placeChildren(relativeTo:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  CGRectGetMinX(v12);
  v13.origin.x = a2;
  v13.origin.y = a3;
  v13.size.width = a4;
  v13.size.height = a5;
  CGRectGetMinY(v13);
  sub_24F92C1D8();
  sub_24F922228();

  return sub_24F922128();
}

uint64_t sub_24EF22F70(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  CGRectGetMinX(v12);
  v13.origin.x = a2;
  v13.origin.y = a3;
  v13.size.width = a4;
  v13.size.height = a5;
  CGRectGetMinY(v13);
  sub_24F92C1D8();
  sub_24F922228();

  return sub_24F922128();
}

double sub_24EF230A8(uint64_t a1, double a2, double a3)
{
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_24F922298();
  return a2;
}

JSValue __swiftcall TopChartsPageMoreIntent.makeValue(in:)(JSContext in)
{
  v3 = objc_opt_self();
  result.super.isa = [v3 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v6 = isa;
    v7 = [v3 valueWithObject:sub_24F92CDE8() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v7)
    {
      sub_24F92C328();

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_24EF23310()
{
  result = qword_27F233F48;
  if (!qword_27F233F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233F48);
  }

  return result;
}

unint64_t sub_24EF2336C()
{
  result = qword_27F233F50;
  if (!qword_27F233F50)
  {
    type metadata accessor for TopChartSegment(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233F50);
  }

  return result;
}

id sub_24EF233C4(uint64_t a1)
{
  v3 = objc_opt_self();
  result = [v3 valueWithNewObjectInContext_];
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v6 = v5;
    v7 = [v3 valueWithObject:sub_24F92CDE8() inContext:a1];
    result = swift_unknownObjectRelease();
    if (v7)
    {
      sub_24F92C328();

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ArcadeButtonNameFieldsProvider.init(arcadeSubscriptionManager:appStateController:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(type metadata accessor for ArcadeButtonNameFieldsProvider(0) + 24);
  v9 = *MEMORY[0x277D22340];
  v10 = sub_24F92A2D8();
  result = (*(*(v10 - 8) + 104))(&a4[v8], v9, v10);
  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = a3;
  return result;
}

uint64_t type metadata accessor for ArcadeButtonNameFieldsProvider(uint64_t a1)
{
  result = qword_27F233F58;
  if (!qword_27F233F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArcadeButtonNameFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArcadeButtonNameFieldsProvider(0) + 24);
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArcadeButtonNameFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v3 = *v1 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  v11 = v4;
  LOBYTE(v12) = v3;
  sub_24EB6CE50(v4, v3);
  v5 = MetricsFieldsContext.adamIdString.getter();
  v7 = sub_24EF2374C(&v11, v5, v6);
  v9 = v8;

  v13 = MEMORY[0x277D837D0];
  v11 = v7;
  v12 = v9;
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_24F929A28();
  sub_24EB6CE70(v4, v3);
  return __swift_destroy_boxed_opaque_existential_1(&v11);
}

uint64_t sub_24EF2374C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8) >> 6;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      return sub_24EF23820(a2, a3);
    }

    else
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v4 = *a1;
    if (v3)
    {
      v6 = *(v4 + 16);
      v7 = *(v4 + 24);
      v8 = v6;
      v9 = v7;
      return sub_24EF2374C(&v8, a2, a3);
    }

    else if (*a1)
    {
      if (*a1 == 1)
      {
        return 7959156;
      }

      else
      {
        return 0x6269726373627573;
      }
    }

    else
    {
      return 0xD000000000000012;
    }
  }
}

uint64_t sub_24EF23820(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 2036427888;
  }

  v5 = *(v2 + 16);
  ObjectType = swift_getObjectType();
  v14[0] = a1;
  v14[1] = a2;
  (*(v5 + 56))(v14, ObjectType, v5);
  v8 = v7;
  v9 = swift_getObjectType();
  (*(v8 + 16))(v15, v9, v8);
  v10 = v18 >> 60;
  if ((v18 >> 60) <= 4)
  {
    if (v10 != 2)
    {
      if (v10 == 3)
      {
        sub_24E88D2AC(v15);
        swift_unknownObjectRelease();
        return 0x64616F6C6E776F64;
      }

      goto LABEL_16;
    }

    sub_24E88D2AC(v15);
    swift_unknownObjectRelease();
    return 0x657461647075;
  }

  else if (v10 == 5)
  {
    sub_24E88D2AC(v15);
    swift_unknownObjectRelease();
    return 0x6C65636E6163;
  }

  else
  {
    if (v10 != 7)
    {
      if (v10 == 8)
      {
        if ((v11 = v17 | v19, v12 = v15[3] | v15[2] | v15[1], v18 == 0x8000000000000000) && !(v11 | v15[0] | v16 | v12) || v18 == 0x8000000000000000 && v15[0] == 4 && !(v11 | v16 | v12))
        {
          swift_unknownObjectRelease();
          return 7959906;
        }
      }

LABEL_16:
      sub_24E88D2AC(v15);
      swift_unknownObjectRelease();
      return 0x7379616C70;
    }

    sub_24E88D2AC(v15);
    swift_unknownObjectRelease();
    return 1852141679;
  }
}

uint64_t sub_24EF23A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_24F92A2D8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24EF23AC0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F92A2D8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_24EF23B80(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24F92A2D8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_24EF23C24(uint64_t a1)
{
  result = type metadata accessor for ArcadeSubscriptionManager();
  if (v2 <= 0x3F)
  {
    result = sub_24EA24F30();
    if (v3 <= 0x3F)
    {
      result = sub_24F92A2D8();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24EF23CC0()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit18ImpressionableRect_impressionId;
  v2 = sub_24F929598();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12GameStoreKit18ImpressionableRect_customFields;
  v4 = sub_24F9294C8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ImpressionableRect(uint64_t a1)
{
  result = qword_27F233F78;
  if (!qword_27F233F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EF23E10(uint64_t a1)
{
  result = sub_24F929598();
  if (v2 <= 0x3F)
  {
    result = sub_24F9294C8();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_24EF23F1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24EF23F70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_24EF23FDC()
{
  result = qword_27F233F88;
  if (!qword_27F233F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233F88);
  }

  return result;
}

uint64_t ImageLockup.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ImageLockup.init(deserializing:using:)(a1, a2);
  return v4;
}

void (*ImageLockup.init(deserializing:using:)(uint64_t a1, uint64_t a2))(char *, uint64_t)
{
  v4 = v2;
  v75 = v4;
  v7 = *v4;
  v72 = v3;
  v73 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v8 - 8);
  v71 = &v62 - v9;
  v65 = sub_24F91F6B8();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F9285B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_24F928388();
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v70 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v69 = &v62 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v62 - v19;
  type metadata accessor for Artwork(0);
  v21 = a1;
  sub_24F928398();
  v77 = v12;
  v24 = *(v12 + 16);
  v22 = v12 + 16;
  v23 = v24;
  v24(v14, a2, v11);
  sub_24EF24E88(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v85 = v14;
  sub_24F929548();
  v79 = a2;
  if (!v82)
  {
    v29 = sub_24F92AC38();
    sub_24EF24E88(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v30 = 0x6B726F77747261;
    v31 = v73;
    v30[1] = 0xE700000000000000;
    v30[2] = v31;
    (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D22530], v29);
    swift_willThrow();
LABEL_7:
    v35 = v78;
    (*(v77 + 8))(v79, v11);
    (*(v76 + 8))(v21, v35);
    type metadata accessor for ImageLockup(0);
    v36 = v75;
    swift_deallocPartialClassInstance();
    return v36;
  }

  v74 = v82;
  type metadata accessor for Lockup(0);
  sub_24F928398();
  v23(v85, a2, v11);
  sub_24EF24E88(&qword_27F221FB8, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
  sub_24F929548();
  if (!v82)
  {
    v32 = sub_24F92AC38();
    sub_24EF24E88(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v33 = 0x70756B636F6CLL;
    v34 = v73;
    v33[1] = 0xE600000000000000;
    v33[2] = v34;
    (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D22530], v32);
    swift_willThrow();

    goto LABEL_7;
  }

  v66 = v82;
  v67 = v22;
  v73 = v23;
  v25 = v69;
  v62 = a1;
  sub_24F928398();
  v26 = sub_24F928348();
  v28 = v78;
  v68 = v11;
  if (v27)
  {
    v80 = v26;
    v81 = v27;
  }

  else
  {
    v37 = v63;
    sub_24F91F6A8();
    v38 = sub_24F91F668();
    v40 = v39;
    (*(v64 + 8))(v37, v65);
    v80 = v38;
    v81 = v40;
  }

  sub_24F92C7F8();
  v41 = *(v76 + 8);
  v76 = (v76 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v42 = v25;
  v43 = v41;
  v41(v42, v28);
  v36 = v75;
  v44 = v83;
  *(v75 + 120) = v82;
  *(v36 + 136) = v44;
  *(v36 + 19) = v84;
  sub_24F929608();
  v45 = v62;
  sub_24F928398();
  v73(v85, v79, v68);
  v46 = v71;
  sub_24F929548();
  sub_24E65E0D4(v46, v36 + OBJC_IVAR____TtC12GameStoreKit11ImageLockup_impressionMetrics);
  *(v36 + 2) = v74;

  sub_24F928398();
  v47 = sub_24F928348();
  v49 = v48;
  v50 = v76;
  v43(v20, v28);
  *(v36 + 3) = v47;
  *(v36 + 4) = v49;
  sub_24F928398();
  v51 = sub_24F928348();
  v53 = v52;
  v43(v20, v28);
  v75 = v43;
  v76 = v50;
  *(v36 + 5) = v51;
  *(v36 + 6) = v53;
  *(v36 + 7) = v66;

  v54 = v70;
  sub_24F928398();
  LOBYTE(v51) = sub_24F928278();
  v43(v54, v28);
  *(v36 + 64) = v51 & 1;
  sub_24F928398();
  v55 = v85;
  v56 = v79;
  v57 = v68;
  v58 = v73;
  v73(v85, v79, v68);
  sub_24EAFF164(v20, v55, &v82);
  v59 = v84;
  v60 = v83;
  *(v36 + 5) = v82;
  *(v36 + 6) = v60;
  *(v36 + 56) = v59;
  v71 = type metadata accessor for FlowPreviewActionsConfiguration();
  sub_24F928398();
  v58(v55, v56, v57);
  sub_24EF24E88(&qword_27F222748, type metadata accessor for FlowPreviewActionsConfiguration, &protocol conformance descriptor for FlowPreviewActionsConfiguration);
  sub_24F929548();

  (*(v77 + 8))(v56, v57);
  v75(v45, v78);
  *(v36 + 9) = v82;
  return v36;
}

uint64_t type metadata accessor for ImageLockup(uint64_t a1)
{
  result = qword_27F233F98;
  if (!qword_27F233F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ImageLockup.caption.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ImageLockup.title.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_24EF24B00@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for ImageLockup(0);
  *a1 = v1;
}

double sub_24EF24B44@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  v6 = *(v3 + 96);
  v7 = *(v3 + 104);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  v8 = *(v3 + 112);
  *(a2 + 32) = v8;
  return sub_24E951F10(v4, v5, v6, v7, v8);
}

void sub_24EF24BA0(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a1 + 32);
  swift_beginAccess();
  v8 = *(v6 + 88);
  v12 = *(v6 + 80);
  v9 = *(v6 + 96);
  v10 = *(v6 + 104);
  *(v6 + 80) = v2;
  *(v6 + 88) = v3;
  *(v6 + 96) = v4;
  *(v6 + 104) = v5;
  v11 = *(v6 + 112);
  *(v6 + 112) = v7;
  sub_24E951F10(v2, v3, v4, v5, v7);
  sub_24E951FEC(v12, v8, v9, v10, v11);
}

double sub_24EF24C54@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(v1 + 112);
  *(a1 + 32) = v7;
  return sub_24E951F10(v3, v4, v5, v6, v7);
}

__n128 sub_24EF24CAC(uint64_t a1)
{
  v3 = *(a1 + 32);
  swift_beginAccess();
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  v8 = *(a1 + 16);
  *(v1 + 80) = *a1;
  *(v1 + 96) = v8;
  v9 = *(v1 + 112);
  *(v1 + 112) = v3;
  sub_24E951FEC(v4, v5, v6, v7, v9);
  return result;
}

uint64_t ImageLockup.deinit()
{

  sub_24E951FEC(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  sub_24E6585F8(v0 + 120);
  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit11ImageLockup_impressionMetrics);
  return v0;
}

uint64_t ImageLockup.__deallocating_deinit()
{
  ImageLockup.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EF24E88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void (*sub_24EF24EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>))(char *, uint64_t)
{
  type metadata accessor for ImageLockup(0);
  v7 = swift_allocObject();
  result = ImageLockup.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EF24F6C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for ImageLockup(0);
  *a1 = v3;
}

double sub_24EF24FB4@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  v6 = *(v3 + 96);
  v7 = *(v3 + 104);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(v3 + 112);
  *(a1 + 32) = v8;
  return sub_24E951F10(v4, v5, v6, v7, v8);
}

void sub_24EF25038(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t DiffablePageContentIdentifier.init(_:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F928D68();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t DiffablePageContentIdentifier.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F91F6B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v15);
  if (*(&v16 + 1))
  {
    result = sub_24E9BBAA8(a1);
    v9 = v17;
    v20 = v17;
    v10 = v16;
    v18 = v15;
    v19 = v16;
    *a2 = v15;
    *(a2 + 16) = v10;
    *(a2 + 32) = v9;
  }

  else
  {
    sub_24E9BBAA8(&v15);
    sub_24F91F6A8();
    v11 = sub_24F91F668();
    v13 = v12;
    (*(v5 + 8))(v7, v4);
    *&v18 = v11;
    *(&v18 + 1) = v13;
    sub_24F92C7F8();
    return sub_24E9BBAA8(a1);
  }

  return result;
}

uint64_t DiffablePageContentIdentifier.init(_:)(uint64_t a1)
{
  swift_getKeyPath();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  sub_24F928A48();

  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

uint64_t DiffablePageContentIdentifier.init<A>(_:)(uint64_t a1)
{
  swift_getKeyPath();
  v4 = sub_24F928A68();
  sub_24F928A48();

  return (*(*(v4 - 8) + 8))(a1, v4);
}

uint64_t DiffablePageContentIdentifier.hashValue.getter()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

uint64_t sub_24EF25550()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

uint64_t sub_24EF25594()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

__n128 sub_24EF25648(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_24EF25658()
{
  result = qword_27F233FA8;
  if (!qword_27F233FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233FA8);
  }

  return result;
}

uint64_t UpsellGridContent.__allocating_init(primaryIcon:remainingIcons:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t UpsellGridContent.init(primaryIcon:remainingIcons:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t UpsellGridContent.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  UpsellGridContent.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t UpsellGridContent.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v3 - 8);
  v29 = &v28 - v4;
  v5 = sub_24F9285B8();
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  type metadata accessor for ImpressionableArtwork(0);
  sub_24F928398();
  v13 = *(v36 + 16);
  v33 = v5;
  v13(v7, v35, v5);
  sub_24EF25B48();
  sub_24F929548();
  *(v37 + 16) = v38;
  v34 = a1;
  sub_24F928398();
  v14 = v29;
  sub_24F9282B8();
  v15 = *(v9 + 8);
  v30 = v9 + 8;
  v31 = v8;
  v16 = v8;
  v17 = v14;
  v15(v11, v16);
  v18 = sub_24F92AC28();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 48))(v17, 1, v18);
  if (v20 == 1)
  {
    v21 = v35;
    sub_24E8F2EE8(v17);
    v22 = MEMORY[0x277D84F90];
LABEL_5:
    v15(v34, v31);
    v25 = v36;
    v26 = v37;
    *(v37 + 24) = v22;
    (*(v25 + 8))(v21, v33);
    return v26;
  }

  MEMORY[0x28223BE20](v20);
  v21 = v35;
  *(&v28 - 2) = v35;
  v23 = v32;
  v24 = sub_24F92ABB8();
  if (!v23)
  {
    v22 = v24;
    (*(v19 + 8))(v17, v18);
    goto LABEL_5;
  }

  type metadata accessor for UpsellGridContent();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

unint64_t sub_24EF25B48()
{
  result = qword_27F225B18;
  if (!qword_27F225B18)
  {
    type metadata accessor for ImpressionableArtwork(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225B18);
  }

  return result;
}

uint64_t sub_24EF25BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14[1] = a3;
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ImpressionableArtwork(0);
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  sub_24EF25B48();
  return sub_24F929548();
}

uint64_t UpsellGridContent.deinit()
{

  return v0;
}

uint64_t UpsellGridContent.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24EF25E04@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for UpsellGridContent();
  v7 = swift_allocObject();
  result = UpsellGridContent.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

GameStoreKit::TopShelfInsetItem::TintStyle_optional __swiftcall TopShelfInsetItem.TintStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t TopShelfInsetItem.TintStyle.rawValue.getter()
{
  if (*v0)
  {
    return 1802658148;
  }

  else
  {
    return 0x746867696CLL;
  }
}

uint64_t sub_24EF25F54@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void *TopShelfInsetItem.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v32 = a2;
  v5 = sub_24F9285B8();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  sub_24F928398();
  v13 = sub_24F928348();
  v15 = v14;
  v16 = *(v8 + 8);
  v16(v12, v7);
  v17 = (v3 + OBJC_IVAR____TtC12GameStoreKit17TopShelfInsetItem_heading);
  *v17 = v13;
  v17[1] = v15;
  sub_24F928398();
  v18 = sub_24F928348();
  v20 = v19;
  v16(v12, v7);
  v21 = (v3 + OBJC_IVAR____TtC12GameStoreKit17TopShelfInsetItem_subheading);
  *v21 = v18;
  v21[1] = v20;
  v22 = v32;
  sub_24F928398();
  sub_24EF26340();
  sub_24F928208();
  v16(v12, v7);
  *(v3 + OBJC_IVAR____TtC12GameStoreKit17TopShelfInsetItem_tintStyle) = v37;
  v23 = *(v8 + 16);
  v24 = v31;
  v33 = a1;
  v23(v31, a1, v7);
  v25 = v36;
  v26 = v35;
  v27 = v34;
  (*(v35 + 16))(v34, v22, v36);
  v28 = TopShelfItem.init(deserializing:using:)(v24, v27);
  (*(v26 + 8))(v22, v25);
  v16(v33, v7);
  return v28;
}

unint64_t sub_24EF26340()
{
  result = qword_27F233FB0;
  if (!qword_27F233FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233FB0);
  }

  return result;
}

uint64_t TopShelfInsetItem.heading.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17TopShelfInsetItem_heading);

  return v1;
}

uint64_t TopShelfInsetItem.subheading.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17TopShelfInsetItem_subheading);

  return v1;
}

uint64_t sub_24EF26420()
{
}

void *TopShelfInsetItem.deinit()
{
  v0 = TopShelfItem.deinit();

  return v0;
}

uint64_t TopShelfInsetItem.__deallocating_deinit()
{
  TopShelfItem.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_24EF2655C()
{
  result = qword_27F233FB8;
  if (!qword_27F233FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233FB8);
  }

  return result;
}

uint64_t type metadata accessor for TopShelfInsetItem(uint64_t a1)
{
  result = qword_27F233FC0;
  if (!qword_27F233FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EF26694()
{
  result = sub_24F92B098();
  qword_27F39CFE0 = result;
  return result;
}

id sub_24EF266CC(uint64_t a1)
{
  v2 = v1;
  v46[4] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v37 - v6;
  v8 = sub_24F91F4A8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  sub_24E99091C(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_24E70E058(v7);
    (*(v9 + 56))(&v2[OBJC_IVAR____TtC12GameStoreKit15JSStorageObject_path], 1, 1, v8);
    *&v2[OBJC_IVAR____TtC12GameStoreKit15JSStorageObject_storage] = sub_24E6086DC(MEMORY[0x277D84F90]);
    v45.receiver = v2;
    v45.super_class = ObjectType;
    v15 = objc_msgSendSuper2(&v45, sel_init);
    sub_24E70E058(a1);
  }

  else
  {
    sub_24F91F3E8();
    v16 = *(v9 + 8);
    v16(v7, v8);
    (*(v9 + 32))(v14, v11, v8);
    v17 = sub_24F91F4B8();
    v39 = ObjectType;
    v40 = v16;
    v20 = v17;
    v22 = v21;
    v23 = objc_opt_self();
    v24 = sub_24F91F4C8();
    v46[0] = 0;
    v25 = [v23 JSONObjectWithData:v24 options:0 error:v46];

    if (v25)
    {
      v37 = v20;
      v38 = v22;
      v26 = v46[0];
      sub_24F92C648();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
      v27 = (v9 + 16);
      v28 = (v9 + 56);
      if ((swift_dynamicCast() & 1) == 0)
      {
        *&v2[OBJC_IVAR____TtC12GameStoreKit15JSStorageObject_storage] = sub_24E6086DC(MEMORY[0x277D84F90]);
        v36 = OBJC_IVAR____TtC12GameStoreKit15JSStorageObject_path;
        (*v27)(&v2[OBJC_IVAR____TtC12GameStoreKit15JSStorageObject_path], v14, v8);
        (*v28)(&v2[v36], 0, 1, v8);
        v42.receiver = v2;
        v42.super_class = v39;
        v15 = objc_msgSendSuper2(&v42, sel_init);
        sub_24E627880(v37, v38);
        sub_24E70E058(a1);
        v40(v14, v8);
        return v15;
      }

      *&v2[OBJC_IVAR____TtC12GameStoreKit15JSStorageObject_storage] = v43;
      v29 = OBJC_IVAR____TtC12GameStoreKit15JSStorageObject_path;
      (*v27)(&v2[OBJC_IVAR____TtC12GameStoreKit15JSStorageObject_path], v14, v8);
      (*v28)(&v2[v29], 0, 1, v8);
      v41.receiver = v2;
      v41.super_class = v39;
      v30 = objc_msgSendSuper2(&v41, sel_init);
      sub_24E627880(v37, v38);
      v31 = v40;
    }

    else
    {
      v32 = v46[0];
      v33 = sub_24F91F278();

      swift_willThrow();
      v34 = v33;
      sub_24E627880(v20, v22);
      v35 = v39;
      v31 = v40;
      v18 = OBJC_IVAR____TtC12GameStoreKit15JSStorageObject_path;
      (*(v9 + 16))(&v2[OBJC_IVAR____TtC12GameStoreKit15JSStorageObject_path], v14, v8);
      (*(v9 + 56))(&v2[v18], 0, 1, v8);
      *&v2[OBJC_IVAR____TtC12GameStoreKit15JSStorageObject_storage] = sub_24E6086DC(MEMORY[0x277D84F90]);
      v44.receiver = v2;
      v44.super_class = v35;
      v30 = objc_msgSendSuper2(&v44, sel_init);
    }

    v15 = v30;
    sub_24E70E058(a1);
    v31(v14, v8);
  }

  return v15;
}

id sub_24EF26C0C()
{
  ObjectType = swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v7 = [objc_opt_self() defaultManager];
  v8 = [v7 URLsForDirectory:9 inDomains:1];

  v9 = sub_24F91F4A8();
  v10 = sub_24F92B5A8();

  if (*(v10 + 16))
  {
    v11 = *(v9 - 8);
    (*(v11 + 16))(v6, v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v9);

    (*(v11 + 56))(v6, 0, 1, v9);
  }

  else
  {

    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  }

  sub_24E99091C(v6, v3);
  v12 = objc_allocWithZone(ObjectType);
  v13 = sub_24EF266CC(v3);
  sub_24E70E058(v6);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v13;
}

uint64_t sub_24EF26EB0()
{
  v1 = v0;
  v33[3] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_24F91F4A8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_24F92C2F8();
  if (v9)
  {
    v10 = result;
    v11 = v9;
    v12 = sub_24F92C2F8();
    if (v13)
    {
      v14 = v13;
      v15 = v12;
      swift_beginAccess();

      sub_24E988E4C(v15, v14, v10, v11);
      swift_endAccess();
      sub_24E99091C(v0 + OBJC_IVAR____TtC12GameStoreKit15JSStorageObject_path, v4);
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {
        sub_24E70E058(v4);
        v16 = v0;
        v17 = v10;
        v18 = v11;
        v19 = v15;
      }

      else
      {
        v31 = v15;
        v20 = v32;
        (*(v6 + 32))(v32, v4, v5);
        v21 = objc_opt_self();

        v22 = sub_24F92AE28();

        v33[0] = 0;
        v23 = [v21 dataWithJSONObject:v22 options:0 error:v33];

        v24 = v33[0];
        if (v23)
        {
          v25 = sub_24F91F4E8();
          v27 = v26;

          sub_24F91F4F8();
          (*(v6 + 8))(v20, v5);
          sub_24E627880(v25, v27);
        }

        else
        {
          v28 = v24;
          v29 = sub_24F91F278();

          swift_willThrow();
          (*(v6 + 8))(v20, v5);
        }

        v16 = v1;
        v17 = v10;
        v18 = v11;
        v19 = v31;
      }

      sub_24EF27298(v16, v17, v18, v19, v14);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_24EF27298(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a4;
  v9 = sub_24F927D88();
  v24 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24F927DC8();
  v12 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v15 = sub_24F92BEF8();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v17 = v22;
  v16[4] = a3;
  v16[5] = v17;
  v16[6] = a5;
  aBlock[4] = sub_24EF27C1C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_92;
  v18 = _Block_copy(aBlock);
  v19 = a1;

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24EEAC5D4(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E8582A8();
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v14, v11, v18);
  _Block_release(v18);

  (*(v24 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v23);
}

id sub_24EF27608(id a1, void *a2, uint64_t a3)
{
  v6 = sub_24F92C2F8();
  if (!v7)
  {
    sub_24F92A868();
    sub_24EEAC5D4(&qword_27F222F70, MEMORY[0x277D22430], MEMORY[0x277D22438]);
    swift_allocError();
    v14 = a2;
    sub_24F92A828();
    swift_willThrow();
    return a1;
  }

  v8 = v7;
  v9 = v6;
  v10 = OBJC_IVAR____TtC12GameStoreKit15JSStorageObject_storage;
  swift_beginAccess();
  if (*(*(a3 + v10) + 16) && (sub_24E76D644(v9, v8), (v11 & 1) != 0))
  {
    swift_endAccess();
    swift_bridgeObjectRetain_n();
    v12 = sub_24F92CF68();
    a1 = [objc_opt_self() valueWithObject:v12 inContext:a1];
    result = swift_unknownObjectRelease();
    if (a1)
    {

LABEL_8:

      return a1;
    }
  }

  else
  {
    swift_endAccess();
    result = [objc_opt_self() valueWithUndefinedInContext_];
    if (result)
    {
      a1 = result;
      goto LABEL_8;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for JSStorageObject(uint64_t a1)
{
  result = qword_27F233FE0;
  if (!qword_27F233FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EF27934(uint64_t a1)
{
  sub_24E6D4C08(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24EF279EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_opt_self() defaultCenter];
  if (qword_27F210C68 != -1)
  {
    swift_once();
  }

  v11 = qword_27F39CFE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222878, &unk_24F96B040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v13 = MEMORY[0x277D837D0];
  sub_24F92C7F8();
  *(inited + 96) = v13;
  *(inited + 72) = a2;
  *(inited + 80) = a3;

  sub_24F92C7F8();
  *(inited + 168) = v13;
  *(inited + 144) = a4;
  *(inited + 152) = a5;

  sub_24E608210(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F23E470, &qword_24F93ADD0);
  swift_arrayDestroy();
  v14 = sub_24F92AE28();

  [v10 postNotificationName:v11 object:a1 userInfo:v14];
}

uint64_t sub_24EF27BD4()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_92(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ReviewsDiffablePagePresenter.__allocating_init(objectGraph:reviewsPage:preferSelectedActionTitles:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  swift_allocObject();
  return ReviewsDiffablePagePresenter.init(objectGraph:reviewsPage:preferSelectedActionTitles:)(a1, a2, v3);
}

uint64_t ReviewsDiffablePagePresenter.init(objectGraph:reviewsPage:preferSelectedActionTitles:)(uint64_t a1, uint64_t a2, int a3)
{
  v70 = a1;
  v6 = sub_24F92BEE8();
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x28223BE20](v6);
  v67 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_24F92BE88();
  MEMORY[0x28223BE20](v65);
  v66 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F927DC8();
  MEMORY[0x28223BE20](v9 - 8);
  v64 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v11 - 8);
  v71 = &v60 - v12;
  v13 = (v3 + qword_27F39CFE8);
  v14._object = 0x800000024FA64580;
  v14._countAndFlagsBits = 0xD000000000000017;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  *v13 = localizedString(_:comment:)(v14, v15);
  v16 = qword_27F39CFF0;
  *(v3 + qword_27F39CFF0) = 0;
  *(v3 + qword_27F39CFF8) = MEMORY[0x277D84F90];
  v17 = v3 + qword_27F39D000;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  *(v3 + qword_27F39D008) = 0;
  v62 = qword_27F39D010;
  *(v3 + qword_27F39D010) = 0;
  v63 = a3;
  *(v3 + qword_27F233FF0) = a3;
  v72 = a2;
  v61 = OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortOptions;
  v18 = *(a2 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortOptions);
  if (v18 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v20 = 0;
    v21 = (v72 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_initialSortOptionIdentifier);
    while ((v18 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x253052270](v20, v18);
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_17;
      }

LABEL_8:
      v24 = v21[1];
      if (v24)
      {
        v25 = *(v22 + 16) == *v21 && v24 == *(v22 + 24);
        if (v25 || (sub_24F92CE08() & 1) != 0)
        {
          goto LABEL_27;
        }
      }

      ++v20;
      if (v23 == i)
      {
        goto LABEL_20;
      }
    }

    if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    v22 = *(v18 + 8 * v20 + 32);

    v23 = v20 + 1;
    if (!__OFADD__(v20, 1))
    {
      goto LABEL_8;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:
  v26 = *(v72 + v61);
  if (!(v26 >> 62))
  {
    result = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_22;
    }

LABEL_26:
    v22 = 0;
    goto LABEL_27;
  }

  result = sub_24F92C738();
  if (!result)
  {
    goto LABEL_26;
  }

LABEL_22:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x253052270](0, v26);
  }

  else
  {
    if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v22 = *(v26 + 32);
  }

LABEL_27:
  swift_beginAccess();
  *(v3 + v16) = v22;

  v28 = 0;
  v29 = 0;
  if ((v63 & 1) == 0)
  {
    v28 = *(v72 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortActionSheetTitle);
  }

  v30 = (v3 + qword_27F39D018);
  *v30 = v28;
  v30[1] = v29;
  v31 = *(v72 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_trailingNavBarAction);
  v32 = v62;
  swift_beginAccess();
  *(v3 + v32) = v31;

  v33 = sub_24F91F4A8();
  (*(*(v33 - 8) + 56))(v71, 1, 1, v33);
  v76 = 0;
  memset(v75, 0, sizeof(v75));
  *(v3 + qword_27F39CC00) = 0;
  v34 = MEMORY[0x277D84F90];
  *(v3 + qword_27F39CC10) = MEMORY[0x277D84F90];
  *(v3 + qword_27F2326C8) = 0;
  v35 = *(*v3 + 640);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE10, &qword_24F989DE8);
  v37 = *(*(v36 - 8) + 56);
  v37(v3 + v35, 1, 1, v36);
  v38 = *(*v3 + 648);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90, &unk_24F9B1AC0);
  (*(*(v39 - 8) + 56))(v3 + v38, 1, 1, v39);
  v40 = *(*v3 + 656);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE08, &qword_24F989DE0);
  (*(*(v41 - 8) + 56))(v3 + v40, 1, 1, v41);
  v37(v3 + *(*v3 + 664), 1, 1, v36);
  v42 = *(*v3 + 672);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0, &unk_24F9AA740);
  (*(*(v43 - 8) + 56))(v3 + v42, 1, 1, v43);
  v44 = *(*v3 + 680);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8, &unk_24F989B80);
  (*(*(v45 - 8) + 56))(v3 + v44, 1, 1, v45);
  v46 = *(*v3 + 688);
  sub_24E74EC40();

  sub_24F927DA8();
  v74 = v34;
  sub_24EBD4288(v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24EC3122C();
  v48 = v3;
  sub_24F92C6A8();
  (*(v68 + 104))(v67, *MEMORY[0x277D85260], v69);
  *(v3 + v46) = sub_24F92BF38();
  sub_24EBD3128(v48 + *(*v48 + 696));
  v49 = (v48 + *(*v48 + 704));
  *v49 = 0u;
  v49[1] = 0u;
  *(v49 + 25) = 0u;
  v50 = *(*v3 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0, &unk_24F989B90);
  swift_allocObject();
  *(v3 + v50) = sub_24F92ADA8();
  v51 = *(*v3 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB8, &unk_24F9AA7A0);
  swift_allocObject();
  *(v3 + v51) = sub_24F92ADA8();
  v52 = *(*v3 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v3 + v52) = sub_24F92ADA8();
  *(v3 + *(*v3 + 736)) = 0;
  v53 = (v48 + *(*v48 + 752));
  *v53 = 0;
  v53[1] = 0;
  v54 = v71;
  sub_24E60169C(v71, v3 + qword_27F39CBF8, &qword_27F228530, &unk_24F93C6E0);
  sub_24E60169C(v75, v48 + *(*v48 + 744), &qword_27F229490, &unk_24F984C40);
  v55 = type metadata accessor for InlineUnifiedMessagePresenter();
  v73.receiver = objc_allocWithZone(v55);
  v73.super_class = v55;
  *(v48 + qword_27F39CC08) = objc_msgSendSuper2(&v73, sel_init);

  v57 = sub_24EBBA158(v56, 0, 0, 0);
  v58 = *(*v57 + 1112);

  v59 = v72;
  *(v57 + qword_27F39CC00) = v58(v72);

  sub_24EBC4298(0);

  sub_24E601704(v75, &qword_27F229490, &unk_24F984C40);
  sub_24E601704(v54, &qword_27F228530, &unk_24F93C6E0);

  sub_24EF28750(v59);

  return v57;
}

uint64_t sub_24EF28750(uint64_t a1)
{
  v47 = sub_24F91F6B8();
  v2 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v62 = &v44 - v5;
  v63 = sub_24F928AD8();
  v6 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - v9;
  v56 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_sortOptions);
  if (!(v56 >> 62))
  {
    v11 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      v74 = MEMORY[0x277D84F90];
      v48 = v11;
      sub_24F92C978();
LABEL_4:
      v12 = 0;
      v13 = *(v55 + qword_27F233FF0);
      v54 = v56 & 0xC000000000000001;
      v53 = (v6 + 16);
      v52 = (v6 + 8);
      v45 = (v2 + 8);
      v51 = (v6 + 32);
      v14 = v13 == 0;
      v15 = 32;
      if (!v14)
      {
        v15 = 48;
      }

      v50 = v15;
      v16 = 40;
      if (!v14)
      {
        v16 = 56;
      }

      v49 = v16;
      v17 = v48;
      v44 = v10;
      do
      {
        v60 = v12;
        if (v54)
        {
          v27 = MEMORY[0x253052270](v12, v56);
        }

        else
        {
          v27 = *(v56 + 8 * v12 + 32);
        }

        v28 = *(v27 + 24);
        v72[0] = *(v27 + 16);
        v72[1] = v28;

        sub_24F92C7F8();
        v58 = *(v27 + v50);
        v59 = *(v27 + v49);

        sub_24F928A98();
        v29 = swift_allocObject();
        swift_weakInit();
        v30 = swift_allocObject();
        *(v30 + 16) = v29;
        *(v30 + 24) = v27;
        type metadata accessor for LocalAction(0);
        v31 = swift_allocObject();
        v32 = (v31 + OBJC_IVAR____TtC12GameStoreKit11LocalAction_handler);
        *v32 = sub_24EF29A78;
        v32[1] = v30;
        sub_24E60169C(&v73, v72, &qword_27F235830, &qword_24F93B8C0);
        (*v53)(v61, v10, v63);
        v33 = sub_24F929608();
        (*(*(v33 - 8) + 56))(v62, 1, 1, v33);
        v34 = (v31 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
        *v34 = 0u;
        v34[1] = 0u;
        sub_24E60169C(v72, &v69, &qword_27F235830, &qword_24F93B8C0);
        v35 = *(&v70 + 1);
        v57 = v29;

        if (v35)
        {
          sub_24E601704(v72, &qword_27F235830, &qword_24F93B8C0);
          (*v52)(v10, v63);
          sub_24E601704(&v73, &qword_27F235830, &qword_24F93B8C0);
          v66 = v69;
          v67 = v70;
          v68 = v71;
        }

        else
        {

          v18 = v46;
          sub_24F91F6A8();
          v19 = sub_24F91F668();
          v21 = v20;
          (*v45)(v18, v47);
          v64 = v19;
          v22 = v63;
          v10 = v44;
          v65 = v21;
          v17 = v48;
          sub_24F92C7F8();

          sub_24E601704(v72, &qword_27F235830, &qword_24F93B8C0);
          (*v52)(v10, v22);
          sub_24E601704(&v73, &qword_27F235830, &qword_24F93B8C0);
          sub_24E601704(&v69, &qword_27F235830, &qword_24F93B8C0);
        }

        v12 = v60 + 1;
        v23 = v67;
        v69 = v66;
        v70 = v67;
        v24 = v68;
        v71 = v68;
        v25 = v31 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
        *v25 = v66;
        *(v25 + 1) = v23;
        *(v25 + 4) = v24;
        sub_24E65E0D4(v62, v31 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
        v26 = v59;
        v31[2] = v58;
        v31[3] = v26;
        v31[4] = 0;
        v31[5] = 0;
        (*v51)(v31 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v61, v63);

        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
      }

      while (v17 != v12);
      v36 = v74;
      goto LABEL_17;
    }

LABEL_22:
    v41 = qword_27F39CFF8;
    v42 = v55;
    swift_beginAccess();
    *(v42 + v41) = MEMORY[0x277D84F90];
  }

  if (sub_24F92C738() < 1)
  {
    goto LABEL_22;
  }

  v39 = sub_24F92C738();
  v36 = MEMORY[0x277D84F90];
  if (v39)
  {
    v74 = MEMORY[0x277D84F90];
    v40 = v39;
    sub_24F92C978();
    v48 = v40;
    if ((v40 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_17:
  v37 = qword_27F39CFF8;
  v38 = v55;
  swift_beginAccess();
  *(v38 + v37) = v36;
}

uint64_t ReviewsDiffablePagePresenter.title.getter()
{
  v1 = *(v0 + qword_27F39CFE8);

  return v1;
}

double sub_24EF28F68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27F39CFF0;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;

  sub_24EF28FD8(v5);

  return result;
}

double sub_24EF28FD8(uint64_t a1)
{
  v3 = qword_27F39CFF0;
  swift_beginAccess();
  v5 = *(v1 + v3);
  if (v5)
  {
    if (!a1 || (*(v5 + 16) == *(a1 + 16) ? (v6 = *(v5 + 24) == *(a1 + 24)) : (v6 = 0), !v6 && (sub_24F92CE08() & 1) == 0))
    {
      v7 = qword_27F39D008;
      swift_beginAccess();
      *(v1 + v7) = 1;

      sub_24F23AC88(1);
    }
  }

  return result;
}

uint64_t ReviewsDiffablePagePresenter.sortMenuTitle.getter()
{
  v1 = *(v0 + qword_27F39D018);

  return v1;
}

double ReviewsDiffablePagePresenter.sortActions.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t ReviewsDiffablePagePresenter.initialFocusedReviewId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27F39D000;
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F235830, &qword_24F93B8C0);
}

uint64_t ReviewsDiffablePagePresenter.isUpdatingSortOption.getter()
{
  v1 = qword_27F39D008;
  swift_beginAccess();
  return *(v0 + v1);
}

double ReviewsDiffablePagePresenter.trailingNavBarAction.setter(uint64_t a1)
{
  v3 = qword_27F39D010;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_24EF29280(uint64_t a1)
{
  v3 = v1[2];
  swift_beginAccess();
  v4 = v1[3];
  swift_beginAccess();
  v5 = v1[4];
  v6 = qword_27F39CFF0;
  swift_beginAccess();
  v7 = *(v1 + v6);
  type metadata accessor for ReviewsDiffablePageContentPresenter(0);
  swift_allocObject();

  return ReviewsDiffablePageContentPresenter.init(objectGraph:sidePackedPage:pendingPageRender:pageRenderMetrics:sortOption:)(v3, a1, v4, v5, v7);
}

void sub_24EF29368(uint64_t a1, char a2)
{
  sub_24F2F62DC(a1, a2);
  sub_24EF28750(a1);
  if (*(a1 + OBJC_IVAR____TtC12GameStoreKit11ReviewsPage_targetReviewId + 8))
  {

    sub_24F92C7F8();
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
  }

  v4 = qword_27F39D000;
  swift_beginAccess();
  sub_24E74EE5C(v6, v2 + v4);
  swift_endAccess();
  v5 = qword_27F39D008;
  swift_beginAccess();
  *(v2 + v5) = 0;
}

double sub_24EF2943C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = qword_27F39CFF0;
    swift_beginAccess();
    v7 = *(v5 + v6);
    *(v5 + v6) = a2;
    if (v7 && (*(a2 + 16) == *(v7 + 16) ? (v8 = *(a2 + 24) == *(v7 + 24)) : (v8 = 0), v8 || (sub_24F92CE08() & 1) != 0))
    {
    }

    else
    {
      v9 = qword_27F39D008;
      swift_beginAccess();
      *(v5 + v9) = 1;

      sub_24F23AC88(1);
    }
  }

  return result;
}

uint64_t ReviewsDiffablePagePresenter.perform(action:sender:)(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  sub_24E60169C(a2, &v4, &qword_27F2129B0, &unk_24F945320);

  sub_24F92AD88();
  return sub_24E601704(&v3, &qword_27F22CE40, &qword_24F99AAA0);
}

double sub_24EF295F4()
{

  sub_24E601704(v0 + qword_27F39D000, &qword_27F235830, &qword_24F93B8C0);

  return result;
}

uint64_t ReviewsDiffablePagePresenter.deinit()
{
  v0 = sub_24EBBF388();

  sub_24E601704(v0 + qword_27F39D000, &qword_27F235830, &qword_24F93B8C0);

  return v0;
}

uint64_t ReviewsDiffablePagePresenter.__deallocating_deinit()
{
  v0 = sub_24EBBF388();

  sub_24E601704(v0 + qword_27F39D000, &qword_27F235830, &qword_24F93B8C0);

  return swift_deallocClassInstance();
}

uint64_t sub_24EF2981C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  sub_24E60169C(a2, &v4, &qword_27F2129B0, &unk_24F945320);

  sub_24F92AD88();
  return sub_24E601704(&v3, &qword_27F22CE40, &qword_24F99AAA0);
}

uint64_t sub_24EF298AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27F39CFF0;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t type metadata accessor for ReviewsDiffablePagePresenter(uint64_t a1)
{
  result = qword_27F233FF8;
  if (!qword_27F233FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EF29A00()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EF29A38()
{

  return swift_deallocObject();
}

double sub_24EF29A90(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213CD0, &qword_24F93B918);
  v2 = swift_allocObject();
  result = *MEMORY[0x277D768C8];
  v4 = *(MEMORY[0x277D768C8] + 8);
  v5 = *(MEMORY[0x277D768C8] + 16);
  v6 = *(MEMORY[0x277D768C8] + 24);
  *(v2 + 16) = xmmword_24F979FB0;
  *(v2 + 32) = xmmword_24F976090;
  v7 = vdupq_n_s64(0xC0C81C8000000000);
  *(v2 + 48) = v7;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0u;
  __asm { FMOV            V6.2D, #1.0 }

  *(v2 + 88) = _Q6;
  __asm { FMOV            V7.2D, #10.0 }

  *(v2 + 104) = _Q7;
  *(v2 + 120) = _Q7;
  *(v2 + 136) = a1;
  *(v2 + 144) = a1;
  *(v2 + 152) = 1;
  *(v2 + 160) = result;
  *(v2 + 168) = v4;
  *(v2 + 176) = v5;
  *(v2 + 184) = v6;
  *(v2 + 192) = xmmword_24F976010;
  *(v2 + 208) = v7;
  *(v2 + 224) = 0;
  *(v2 + 232) = 0u;
  *(v2 + 248) = _Q6;
  *(v2 + 264) = 0x4028000000000000;
  __asm { FMOV            V6.2D, #12.0 }

  *(v2 + 272) = _Q6;
  *(v2 + 288) = 0x4028000000000000;
  *(v2 + 296) = a1;
  *(v2 + 304) = a1;
  *(v2 + 312) = 1;
  *(v2 + 320) = result;
  *(v2 + 328) = v4;
  *(v2 + 336) = v5;
  *(v2 + 344) = v6;
  *(v2 + 352) = xmmword_24F976080;
  *(v2 + 368) = v7;
  *(v2 + 384) = 0;
  *(v2 + 392) = 0u;
  *(v2 + 408) = 0x3FF0000000000000;
  *(v2 + 416) = xmmword_24F9B1B90;
  *(v2 + 432) = _Q6;
  *(v2 + 448) = 0x4028000000000000;
  *(v2 + 456) = a1;
  *(v2 + 464) = a1;
  *(v2 + 472) = 1;
  *(v2 + 480) = result;
  *(v2 + 488) = v4;
  *(v2 + 496) = v5;
  *(v2 + 504) = v6;
  *(v2 + 512) = xmmword_24F976070;
  *(v2 + 528) = v7;
  *(v2 + 544) = 0;
  *(v2 + 552) = 0u;
  *(v2 + 568) = 0x4000000000000000;
  __asm { FMOV            V6.2D, #20.0 }

  *(v2 + 576) = xmmword_24F9B1BA0;
  *(v2 + 592) = _Q6;
  *(v2 + 608) = 0x4034000000000000;
  *(v2 + 616) = a1;
  *(v2 + 624) = a1;
  *(v2 + 632) = 1;
  *(v2 + 640) = result;
  *(v2 + 648) = v4;
  *(v2 + 656) = v5;
  *(v2 + 664) = v6;
  *(v2 + 672) = xmmword_24F976060;
  *(v2 + 688) = v7;
  *(v2 + 704) = 0;
  *(v2 + 710) = v18;
  *(v2 + 706) = v17;
  *(v2 + 712) = 0u;
  *(v2 + 728) = 0x4000000000000000;
  *(v2 + 736) = xmmword_24F9B1BA0;
  *(v2 + 752) = _Q6;
  *(v2 + 768) = 0x4034000000000000;
  *(v2 + 776) = a1;
  *(v2 + 784) = a1;
  *(v2 + 792) = 1;
  *(v2 + 796) = *&v16[3];
  *(v2 + 793) = *v16;
  *(v2 + 800) = result;
  *(v2 + 808) = v4;
  *(v2 + 816) = v5;
  *(v2 + 824) = v6;
  *(v2 + 832) = xmmword_24F976050;
  *(v2 + 848) = v7;
  *(v2 + 864) = 0;
  *(v2 + 870) = v21;
  *(v2 + 866) = v20;
  *(v2 + 872) = 0u;
  *(v2 + 888) = 0x4008000000000000;
  *(v2 + 896) = xmmword_24F97EE50;
  *(v2 + 912) = _Q6;
  *(v2 + 928) = 0x4034000000000000;
  *(v2 + 936) = a1;
  *(v2 + 944) = a1;
  *(v2 + 952) = 1;
  *(v2 + 956) = *&v19[3];
  *(v2 + 953) = *v19;
  *(v2 + 960) = result;
  *(v2 + 968) = v4;
  *(v2 + 976) = v5;
  *(v2 + 984) = v6;
  *(v2 + 992) = xmmword_24F976040;
  *(v2 + 1008) = v7;
  *(v2 + 1024) = 0;
  *(v2 + 1030) = v24;
  *(v2 + 1026) = v23;
  *(v2 + 1032) = 0u;
  *(v2 + 1048) = 0x4010000000000000;
  *(v2 + 1056) = xmmword_24F97EE60;
  *(v2 + 1072) = _Q6;
  *(v2 + 1088) = 0x4034000000000000;
  *(v2 + 1096) = a1;
  *(v2 + 1104) = a1;
  *(v2 + 1112) = 1;
  *(v2 + 1116) = *&v22[3];
  *(v2 + 1113) = *v22;
  *(v2 + 1120) = result;
  *(v2 + 1128) = v4;
  *(v2 + 1136) = v5;
  *(v2 + 1144) = v6;
  *(v2 + 1152) = xmmword_24F976030;
  *(v2 + 1168) = v7;
  *(v2 + 1184) = 0;
  *(v2 + 1190) = v27;
  *(v2 + 1186) = v26;
  *(v2 + 1192) = 0u;
  *(v2 + 1208) = 0x4014000000000000;
  *(v2 + 1216) = xmmword_24F97EE70;
  *(v2 + 1232) = _Q6;
  *(v2 + 1248) = 0x4034000000000000;
  *(v2 + 1256) = a1;
  *(v2 + 1264) = a1;
  *(v2 + 1272) = 1;
  *(v2 + 1276) = *&v25[3];
  *(v2 + 1273) = *v25;
  *(v2 + 1280) = result;
  *(v2 + 1288) = v4;
  *(v2 + 1296) = v5;
  *(v2 + 1304) = v6;
  return result;
}

void *NetworkActivity.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[2] = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
  v0[4] = 0;
  swift_unknownObjectWeakInit();
  v1 = sub_24E74EC40();
  v2 = sub_24F92BEF8();
  v3 = MEMORY[0x277D225C0];
  v0[8] = v1;
  v0[9] = v3;
  v0[5] = v2;
  v0[10] = 0;
  return v0;
}

void *NetworkActivity.init()()
{
  v1 = v0;
  v0[2] = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
  v0[4] = 0;
  swift_unknownObjectWeakInit();
  v2 = sub_24E74EC40();
  v3 = sub_24F92BEF8();
  v4 = MEMORY[0x277D225C0];
  v1[8] = v2;
  v1[9] = v4;
  v1[5] = v3;
  v1[10] = 0;
  return v1;
}

uint64_t sub_24EF29F10(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  sub_24EF2A624(v2, v1);

  return swift_unknownObjectRelease();
}

uint64_t NetworkActivity.delegate.setter(uint64_t a1, __n128 a2, uint64_t a3)
{
  sub_24EF2A624(a1, a3);

  return swift_unknownObjectRelease();
}

void (*NetworkActivity.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 40) = Strong;
  *(v4 + 48) = v6;
  return sub_24EF2A02C;
}

void sub_24EF2A02C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 64) + 32) = *(*a1 + 48);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[8];
    swift_endAccess();
    swift_unknownObjectRelease();
    v5 = *(v4 + 16);
    [v5 lock];
    if (*(v4 + 80) >= 1)
    {
      v6 = v3[8];
      swift_beginAccess();
      sub_24E615E00(v6 + 40, v3);
      __swift_project_boxed_opaque_existential_1(v3, v3[3]);
      v7 = swift_allocObject();
      v7[2] = v6;
      v7[3] = sub_24EF2A880;
      v7[4] = 0;

      sub_24F928C78();

      __swift_destroy_boxed_opaque_existential_1(v3);
    }

    [v5 unlock];
  }

  free(v3);
}

uint64_t NetworkActivity.delegateScheduler.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));
  sub_24E612C80(a1, v1 + 40);
  return swift_endAccess();
}

uint64_t sub_24EF2A28C(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a2();
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall NetworkActivity.begin()()
{
  v1 = *(v0 + 16);
  [v1 lock];
  v2 = *(v0 + 80);
  if (!v2)
  {
    swift_beginAccess();
    sub_24E615E00(v0 + 40, v6);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v3 = swift_allocObject();
    v3[2] = v0;
    v3[3] = sub_24EF2A880;
    v3[4] = 0;

    sub_24F928C78();

    __swift_destroy_boxed_opaque_existential_1(v6);
    v2 = *(v0 + 80);
  }

  v4 = __OFADD__(v2, 1);
  v5 = v2 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 80) = v5;
    [v1 unlock];
  }
}

Swift::Void __swiftcall NetworkActivity.end()()
{
  v1 = *(v0 + 16);
  [v1 lock];
  v2 = *(v0 + 80);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 80) = v4;
    if (!v4)
    {
      swift_beginAccess();
      sub_24E615E00(v0 + 40, v6);
      __swift_project_boxed_opaque_existential_1(v6, v6[3]);
      v5 = swift_allocObject();
      v5[2] = v0;
      v5[3] = sub_24EF2A56C;
      v5[4] = 0;

      sub_24F928C78();

      __swift_destroy_boxed_opaque_existential_1(v6);
    }

    [v1 unlock];
  }
}

uint64_t NetworkActivity.deinit()
{
  sub_24E883630(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  return v0;
}

uint64_t NetworkActivity.__deallocating_deinit()
{
  sub_24E883630(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return swift_deallocClassInstance();
}

id sub_24EF2A624(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v2[4] = a2;
  swift_unknownObjectWeakAssign();
  v4 = v2[2];
  [v4 lock];
  if (v2[10] >= 1)
  {
    swift_beginAccess();
    sub_24E615E00((v2 + 5), v7);
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v5 = swift_allocObject();
    v5[2] = v2;
    v5[3] = sub_24EF2A880;
    v5[4] = 0;

    sub_24F928C78();

    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return [v4 unlock];
}

uint64_t sub_24EF2A768@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t objectdestroyTm_41()
{

  return swift_deallocObject();
}

uint64_t sub_24EF2A8B4@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 32);
  if ((v4 & 0xE000) == 0x8000 && v4 == 0x8000 && *v2 == 1 && (*(v2 + 16) | *(v2 + 24) | *(v2 + 8)) == 0)
  {
    sub_24F926C88();
    sub_24F926D08();
  }

  result = sub_24F924E28();
  *a2 = v8;
  *(a2 + 8) = v9;
  return result;
}

unint64_t sub_24EF2A990()
{
  result = qword_27F234008;
  if (!qword_27F234008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234010, &qword_24F9B1DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234008);
  }

  return result;
}

char *ShowSettingsAction.__allocating_init(title:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v11 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v12 = sub_24F928AD8();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v10[v11], a3, v12);
  v14 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v15 = sub_24F929608();
  (*(*(v15 - 8) + 56))(&v10[v14], 1, 1, v15);
  v16 = &v10[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v17 = &v10[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E65E064(v33, &v30);
  if (*(&v31 + 1))
  {
    v18 = v31;
    *v17 = v30;
    *(v17 + 1) = v18;
    *(v17 + 4) = v32;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v20 = v6;
    v21 = a3;
    v22 = a1;
    v23 = a2;
    v24 = v19;
    v25 = v7;
    v27 = v26;
    (*(v25 + 8))(v9, v20);
    v29[1] = v24;
    v29[2] = v27;
    a2 = v23;
    a1 = v22;
    a3 = v21;
    sub_24F92C7F8();
    sub_24E601704(&v30, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v13 + 8))(a3, v12);
  sub_24E601704(v33, &qword_27F235830, &qword_24F93B8C0);
  *(v10 + 2) = a1;
  *(v10 + 3) = a2;
  *(v10 + 4) = 0;
  *(v10 + 5) = 0;
  return v10;
}

void *ShowSettingsAction.init(title:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24F91F6B8();
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30 - v12;
  v14 = sub_24F928AD8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  (*(v15 + 16))(v17, a3, v14);
  v18 = sub_24F929608();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  v19 = (v4 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v19 = 0u;
  v19[1] = 0u;
  sub_24E65E064(v41, &v35);
  if (*(&v36 + 1))
  {
    v38 = v35;
    v39 = v36;
    v40 = v37;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v21 = v8;
    v22 = v20;
    v31 = a3;
    v23 = a1;
    v24 = a2;
    v26 = v25;
    (*(v32 + 8))(v10, v21);
    v33 = v22;
    v34 = v26;
    a2 = v24;
    a1 = v23;
    a3 = v31;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v15 + 8))(a3, v14);
  sub_24E601704(v41, &qword_27F235830, &qword_24F93B8C0);
  v27 = v4 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v27 + 4) = v40;
  v28 = v39;
  *v27 = v38;
  *(v27 + 1) = v28;
  sub_24E65E0D4(v13, v4 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = 0;
  v4[5] = 0;
  (*(v15 + 32))(v4 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v17, v14);
  return v4;
}

char *ShowSettingsAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
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

char *ShowSettingsAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
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

uint64_t ShowSettingsAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);
  return v0;
}

uint64_t ShowSettingsAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ShowSettingsAction(uint64_t a1)
{
  result = qword_27F234018;
  if (!qword_27F234018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EF2B6D0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24EF2B73C(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EB09F58;
}

uint64_t sub_24EF2B7DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_hints;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double sub_24EF2B844()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_24EF2B88C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_hints;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t SearchHintsPresenter.init(objectGraph:searchTextPresenter:searchGhostHintTracker:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226F0, &unk_24F96A670);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21[-v7];
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_hints) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_precedingFetch) = 0;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_searchBarCancelAction) = 0;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_searchFieldClearAction) = 0;
  v9 = (v3 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_term);
  *v9 = 0;
  v9[1] = 0;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_searchTextPresenter) = a2;

  v11 = sub_24EC8415C(v10, 0, 0, 0);

  if (a3)
  {
    v12 = type metadata accessor for SearchGhostHintMetricsTracker();
    v13 = &protocol witness table for SearchGhostHintMetricsTracker;
    v14 = a3;
  }

  else
  {
    v14 = 0;
    v12 = 0;
    v13 = 0;
    v22[1] = 0;
    v22[2] = 0;
  }

  v22[0] = v14;
  v23 = v12;
  v24 = v13;
  v15 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_searchGhostHintData;
  swift_beginAccess();

  sub_24EF2D334(v22, v11 + v15);
  swift_endAccess();
  if (a2)
  {
    v16 = sub_24E74EC40();

    v17 = sub_24F92BEF8();
    v23 = v16;
    v24 = MEMORY[0x277D225C0];
    v22[0] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233248, &qword_24F9ACC98);
    type metadata accessor for SearchHintsPresenter(0);
    sub_24E602068(&qword_27F234038, &qword_27F233248, &qword_24F9ACC98, MEMORY[0x277D21A98]);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(v22);
    v18 = 0;
  }

  else
  {

    v18 = 1;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8, &unk_24F96A610);
  (*(*(v19 - 8) + 56))(v8, v18, 1, v19);
  sub_24E601704(v8, &qword_27F2226F0, &unk_24F96A670);
  return v11;
}

void sub_24EF2BDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a3 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_term);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  sub_24EF2BED0(1);
}

uint64_t (*sub_24EF2BE2C(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_24EF2DAB4;
  *(v2 + 24) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_24EF2DAF4;
  *(v3 + 24) = v2;

  return sub_24EF2DB1C;
}

void sub_24EF2BED0(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_hints;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5 >> 62)
  {
    if (sub_24F92C738())
    {
LABEL_3:
      if ((a1 & 1) == 0)
      {
        return;
      }
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = v2 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v7 = *(v6 + 8), v8 = swift_getObjectType(), LOBYTE(v7) = (*(v7 + 24))(v8, v7), swift_unknownObjectRelease(), (v7 & 1) != 0))
  {
    swift_beginAccess();
    *(v2 + 32) = 1;
    v9 = OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_precedingFetch;
    v10 = *(v2 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_precedingFetch);
    if (v10)
    {
      v11 = *(v10 + 16);

      [v11 lock];
      if ((*(v10 + 32) & 1) == 0)
      {

        v12 = sub_24F92A928();

        if ((v12 & 1) == 0)
        {
          *(v10 + 32) = 1;
          sub_24EF2D3F0();
          v13 = swift_allocError();

          sub_24F92A9A8();
        }
      }

      [v11 unlock];
    }

    v14 = (v2 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_term);
    swift_beginAccess();
    v15 = v14[1];
    if (!v15)
    {
      goto LABEL_19;
    }

    v16 = *v14;
    v17 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v17 = *v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      type metadata accessor for JSIntentDispatcher();
      v18 = *(v2 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_objectGraph);
      sub_24F928FD8();

      sub_24F92A758();

      sub_24EB47808(v16, v15, v18, "GameStoreKit/SearchHintsPresenter.swift", 39, 2);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234048, &qword_24F9B1E08);
      v19 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229680, &qword_24F985260);

      *(v19 + 24) = sub_24F92A9E8();
      *(v19 + 16) = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
      *(v19 + 32) = 0;
      v30 = sub_24F929638();
      v31 = MEMORY[0x277D21FB0];
      __swift_allocate_boxed_opaque_existential_1(v29);
      swift_retain_n();
      sub_24F929628();
      sub_24E602068(&qword_27F234050, &qword_27F229680, &qword_24F985260, MEMORY[0x277D224B8]);
      sub_24F92A558();

      __swift_destroy_boxed_opaque_existential_1(v29);
      v20 = swift_allocObject();
      swift_weakInit();
      v21 = swift_allocObject();
      v21[2] = v20;
      v21[3] = v16;
      v21[4] = v15;
      v22 = swift_allocObject();
      swift_weakInit();
      v23 = swift_allocObject();
      v23[2] = v22;
      v23[3] = v16;
      v23[4] = v15;
      v24 = sub_24E74EC40();

      v25 = sub_24F92BEF8();
      v30 = v24;
      v31 = MEMORY[0x277D225C0];
      v29[0] = v25;

      sub_24F92A958();

      __swift_destroy_boxed_opaque_existential_1(v29);

      *(v2 + v9) = v19;
    }

    else
    {
LABEL_19:
      *(v2 + v4) = MEMORY[0x277D84F90];

      if (swift_unknownObjectWeakLoadStrong())
      {
        v27 = *(v6 + 8);
        ObjectType = swift_getObjectType();
        (*(*(v27 + 16) + 8))(ObjectType);
        swift_unknownObjectRelease();
      }

      *(v2 + 32) = 0;
    }
  }

  else
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v26 = sub_24F92AAE8();
    __swift_project_value_buffer(v26, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F928448();
    sub_24F9283A8();
    sub_24F92A588();
  }
}

double sub_24EF2C55C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_24F9287F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  v11 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = (Strong + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_term);
    swift_beginAccess();
    v16 = v15[1];
    if (v16)
    {
      v17 = *v15 == a3 && v16 == a4;
      if (v17 || (sub_24F92CE08() & 1) != 0)
      {
        v18 = v11[2];
        v19 = OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_hints;
        swift_beginAccess();
        *(v14 + v19) = v18;

        v32[3] = type metadata accessor for SearchHintSet(0);
        v32[4] = &protocol witness table for SearchHintSet;
        v32[5] = sub_24EF2DA5C();
        v32[0] = v11;
        swift_beginAccess();

        sub_24EA095A4(v32, v14 + 40);
        swift_endAccess();
        sub_24EC832DC();
        sub_24E601704(v32, &qword_27F224F98, &unk_24F974A70);
        sub_24F9287E8();
        sub_24ED48060(v10);
        (*(v8 + 8))(v10, v7);
        v20 = v11[4];
        if (v20)
        {
          v21 = v11[3];
          if (!UIAccessibilityIsVoiceOverRunning())
          {
            if (*(v14 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_searchTextPresenter))
            {

              v22._countAndFlagsBits = a3;
              v22._object = a4;
              v23._countAndFlagsBits = v21;
              v23._object = v20;
              SearchTextPresenter.suggestGhostHint(toExpand:to:)(v22, v23);
            }
          }
        }

        v24 = *(v11 + OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_searchClearAction);
        v25 = OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_searchFieldClearAction;
        swift_beginAccess();
        *(v14 + v25) = v24;

        v26 = *(v11 + OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_searchCancelAction);
        v27 = OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_searchBarCancelAction;
        swift_beginAccess();
        *(v14 + v27) = v26;

        v28 = v14 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_view;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v29 = *(v28 + 8);
          ObjectType = swift_getObjectType();
          (*(*(v29 + 16) + 8))(ObjectType);
          swift_unknownObjectRelease();
        }

        swift_beginAccess();
        *(v14 + 32) = 0;
      }
    }
  }

  return result;
}

double sub_24EF2C8C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[0] = a1;
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
  if (!swift_dynamicCast())
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = (Strong + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_term);
      swift_beginAccess();
      v11 = v10[1];
      if (v11)
      {
        v12 = *v10 == a3 && v11 == a4;
        if (v12 || (sub_24F92CE08() & 1) != 0)
        {
          if (qword_27F210568 != -1)
          {
            swift_once();
          }

          v13 = sub_24F92AAE8();
          __swift_project_value_buffer(v13, qword_27F39C398);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
          sub_24F928468();
          *(swift_allocObject() + 16) = xmmword_24F9479A0;

          sub_24F928448();

          sub_24F9283A8();
          swift_getErrorValue();
          v20[3] = v19;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
          (*(*(v19 - 8) + 16))(boxed_opaque_existential_1);
          sub_24F9283B8();
          sub_24E601704(v20, &qword_27F2129B0, &unk_24F945320);
          sub_24F92A5A8();

          v15 = OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_hints;
          swift_beginAccess();
          *(v9 + v15) = MEMORY[0x277D84F90];

          v16 = v9 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_view;
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v17 = *(v16 + 8);
            ObjectType = swift_getObjectType();
            (*(*(v17 + 16) + 8))(ObjectType);
            swift_unknownObjectRelease();
          }

          swift_beginAccess();
          *(v9 + 32) = 0;
        }
      }
    }
  }

  return result;
}

void sub_24EF2CC14(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_term);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  sub_24EF2BED0(1);
}

uint64_t sub_24EF2CC90()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_term);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_24EF2CCE8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_term);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  sub_24EF2BED0(1);
}

uint64_t sub_24EF2CD64()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_hints;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    return sub_24F92C738();
  }

  else
  {
    return *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_24EF2CDCC(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_hints;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {

    MEMORY[0x253052270](a1, v4);
  }

  else
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {

      return;
    }

    __break(1u);
  }
}

void sub_24EF2CE78(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_hints;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    if (sub_24F92C738() <= a1)
    {
      return;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
    return;
  }

  v5 = *(v1 + v3);
  if ((v5 & 0xC000000000000001) == 0)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v6 = *(v5 + 8 * a1 + 32);

      goto LABEL_7;
    }

    __break(1u);
    return;
  }

  v6 = MEMORY[0x253052270](a1, v5);

LABEL_7:
  v7 = v1 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    v12[3] = type metadata accessor for SearchHintsPresenter(0);
    v12[0] = v1;
    v10 = *(v8 + 8);
    v11 = *(v10 + 8);

    v11(v6, v12, ObjectType, v10);

    swift_unknownObjectRelease();
    sub_24E601704(v12, &qword_27F2129B0, &unk_24F945320);
  }

  else
  {
  }
}

uint64_t sub_24EF2D04C()
{
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_view);
}

uint64_t SearchHintsPresenter.deinit()
{
  v0 = BasePresenter.deinit();
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_view);

  return v0;
}

uint64_t SearchHintsPresenter.__deallocating_deinit()
{
  SearchHintsPresenter.deinit();

  return swift_deallocClassInstance();
}

id sub_24EF2D230(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  [v3 lock];
  if ((*(a2 + 32) & 1) == 0)
  {

    sub_24F92A9A8();
  }

  return [v3 unlock];
}

id sub_24EF2D2B4(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  [v3 lock];
  if ((*(a2 + 32) & 1) == 0)
  {

    sub_24F92A9C8();
  }

  return [v3 unlock];
}