void sub_1D672270C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6721F50();
    v7 = a3(a1, &type metadata for FormatLayoutAttributes.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6722770(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D6721FA4();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D67227DC()
{
  result = qword_1EDF2F488;
  if (!qword_1EDF2F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F488);
  }

  return result;
}

void *sub_1D6722984@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatLayoutAttributes.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1D6722A00(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  sub_1D6722F00(&qword_1EDF28608, a2, type metadata accessor for FormatLayoutAttributes, &protocol conformance descriptor for FormatLayoutAttributes);

  return sub_1D725A24C();
}

uint64_t sub_1D6722AAC@<X0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  result = FormatLayoutAttributes.reposition(frame:)(a2, a3, a4, a5);
  *a1 = result;
  return result;
}

unint64_t sub_1D6722B50()
{
  result = qword_1EC88A6D8;
  if (!qword_1EC88A6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A6D8);
  }

  return result;
}

unint64_t sub_1D6722BA8()
{
  result = qword_1EC88A6E0;
  if (!qword_1EC88A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A6E0);
  }

  return result;
}

unint64_t sub_1D6722C00()
{
  result = qword_1EC88A6E8;
  if (!qword_1EC88A6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A6E8);
  }

  return result;
}

uint64_t sub_1D6722C54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6564496D657469 && a2 == 0xEE00726569666974 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73C05F0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E65644965646F6ELL && a2 == 0xEE00726569666974 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x615674756F79616CLL && a2 == 0xEC0000007365756CLL || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73D2F00 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C0340 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D6722F00(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void FormatHeadlineBinding.Image.image(from:imageContext:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v53 = a3;
  v6 = type metadata accessor for FeedHeadline(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  *&v10 = MEMORY[0x1EEE9AC00](v6 - 8, v9).n128_u64[0];
  v11 = &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = *v3;
  if (v12 <= 1)
  {
    if (!*v3)
    {
      [*(a1 + 40) thumbnailFocalFrame];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v29 = *(a2 + 96);
      v65 = *(a2 + 80);
      v66 = v29;
      v67 = *(a2 + 112);
      v30 = *(a2 + 64);
      v63 = *(a2 + 48);
      v68 = *(a2 + 128);
      v64 = v30;
      sub_1D6723B3C(a1, &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], type metadata accessor for FeedHeadline);
      v31 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v32 = (v8 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
      v33 = swift_allocObject();
      sub_1D5EC9594(v11, v33 + v31);
      *(v33 + v32) = a2;
      LOBYTE(v59) = 0;
      *&v54[39] = v65;
      *&v54[55] = v66;
      *&v54[71] = v67;
      v54[87] = v68;
      *&v54[7] = v63;
      *&v54[23] = v64;
      v34 = swift_allocObject();
      *(v34 + 16) = v22;
      *(v34 + 24) = v24;
      *(v34 + 32) = v26;
      *(v34 + 40) = v28;
      *(v34 + 48) = 0;
      v35 = *&v54[48];
      *(v34 + 81) = *&v54[32];
      *(v34 + 97) = v35;
      *(v34 + 113) = *&v54[64];
      *(v34 + 129) = *&v54[80];
      v36 = *&v54[16];
      *(v34 + 49) = *v54;
      *(v34 + 65) = v36;
      *(v34 + 144) = sub_1D6723CCC;
      *(v34 + 152) = v33;
      *v53 = v34 | 0x2000000000000000;
      sub_1D6723B3C(&v63, &v59, sub_1D671E290);

      return;
    }

    v48 = *(a2 + 96);
    v65 = *(a2 + 80);
    v66 = v48;
    v67 = *(a2 + 112);
    v68 = *(a2 + 128);
    v49 = *(a2 + 64);
    v63 = *(a2 + 48);
    v64 = v49;
    sub_1D6723B3C(a1, &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], type metadata accessor for FeedHeadline);
    v50 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v16 = swift_allocObject();
    sub_1D5EC9594(&v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v16 + v50);
    LOBYTE(v59) = 1;
    *&v55[39] = v65;
    *&v55[55] = v66;
    *&v55[71] = v67;
    v55[87] = v68;
    *&v55[7] = v63;
    *&v55[23] = v64;
    v17 = swift_allocObject();
    *(v17 + 16) = 0u;
    *(v17 + 32) = 0u;
    *(v17 + 81) = *&v55[32];
    v51 = *&v55[64];
    *(v17 + 97) = *&v55[48];
    *(v17 + 113) = v51;
    v52 = *&v55[16];
    *(v17 + 49) = *v55;
    *(v17 + 48) = 1;
    *(v17 + 129) = *&v55[80];
    *(v17 + 65) = v52;
    v20 = sub_1D6723C44;
    goto LABEL_11;
  }

  if (v12 != 2)
  {
    v13 = *(a2 + 96);
    v65 = *(a2 + 80);
    v66 = v13;
    v67 = *(a2 + 112);
    v68 = *(a2 + 128);
    v14 = *(a2 + 64);
    v63 = *(a2 + 48);
    v64 = v14;
    if (v12 == 3)
    {
      sub_1D6723B3C(a1, &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], type metadata accessor for FeedHeadline);
      v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v16 = swift_allocObject();
      sub_1D5EC9594(&v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v16 + v15);
      LOBYTE(v59) = 1;
      *&v58[39] = v65;
      *&v58[55] = v66;
      *&v58[71] = v67;
      v58[87] = v68;
      *&v58[7] = v63;
      *&v58[23] = v64;
      v17 = swift_allocObject();
      *(v17 + 16) = 0u;
      *(v17 + 32) = 0u;
      v18 = *&v58[48];
      *(v17 + 81) = *&v58[32];
      *(v17 + 97) = v18;
      *(v17 + 113) = *&v58[64];
      v19 = *&v58[16];
      *(v17 + 49) = *v58;
      *(v17 + 48) = 1;
      *(v17 + 129) = *&v58[80];
      *(v17 + 65) = v19;
      v20 = sub_1D6723BA4;
    }

    else
    {
      sub_1D6723B3C(a1, &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], type metadata accessor for FeedHeadline);
      v45 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v16 = swift_allocObject();
      sub_1D5EC9594(&v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v16 + v45);
      LOBYTE(v59) = 1;
      *&v62[39] = v65;
      *&v62[55] = v66;
      *&v62[71] = v67;
      v62[87] = v68;
      *&v62[7] = v63;
      *&v62[23] = v64;
      v17 = swift_allocObject();
      *(v17 + 16) = 0u;
      *(v17 + 32) = 0u;
      v46 = *&v62[48];
      *(v17 + 81) = *&v62[32];
      *(v17 + 97) = v46;
      *(v17 + 113) = *&v62[64];
      v47 = *&v62[16];
      *(v17 + 49) = *v62;
      *(v17 + 48) = 1;
      *(v17 + 129) = *&v62[80];
      *(v17 + 65) = v47;
      v20 = sub_1D6723B30;
    }

LABEL_11:
    *(v17 + 144) = v20;
    *(v17 + 152) = v16;
    goto LABEL_12;
  }

  v37 = [*(a1 + 40) videoStillImage];
  if (v37)
  {
    v38 = v37;
    v60 = sub_1D5C169F4();
    v61 = sub_1D5EECFF8();
    *&v59 = v38;
    v39 = *(a2 + 96);
    v65 = *(a2 + 80);
    v66 = v39;
    v67 = *(a2 + 112);
    v68 = *(a2 + 128);
    v40 = *(a2 + 64);
    v63 = *(a2 + 48);
    v64 = v40;
    v57 = 1;
    *&v56[23] = v40;
    *&v56[7] = v63;
    v56[87] = v68;
    *&v56[71] = v67;
    *&v56[39] = v65;
    *&v56[55] = v39;
    v41 = swift_allocObject();
    sub_1D5B63F14(&v59, v41 + 16);
    v42 = v57;
    v17 = swift_allocObject();
    *(v17 + 16) = 0u;
    *(v17 + 32) = 0u;
    v43 = *&v56[48];
    *(v17 + 81) = *&v56[32];
    *(v17 + 97) = v43;
    *(v17 + 113) = *&v56[64];
    v44 = *&v56[16];
    *(v17 + 49) = *v56;
    *(v17 + 48) = v42;
    *(v17 + 129) = *&v56[80];
    *(v17 + 65) = v44;
    *(v17 + 144) = sub_1D6723C3C;
    *(v17 + 152) = v41;
LABEL_12:
    *v53 = v17 | 0x2000000000000000;
    sub_1D6723B3C(&v63, &v59, sub_1D671E290);
    return;
  }

  *v53 = 0xC000000000000000;
}

id sub_1D672366C@<X0>(uint64_t a3@<X8>)
{
  result = FCThumbnailForHeadlineMinimumSize();
  if (result)
  {
    v5 = result;
    result = [result thumbnailAssetHandle];
    if (result)
    {
      v6 = result;
      v7 = sub_1D5C169F4();
      v17 = v7;
      v8 = sub_1D5EECFF8();
      v18 = v8;
      *&v16 = v6;
      v9 = FCCachedThumbnailForHeadline();
      if (v9)
      {
        v10 = v9;
        v11 = [v9 thumbnailAssetHandle];

        if (v11)
        {
          v12 = v7;
        }

        else
        {
          v12 = 0;
        }

        if (v11)
        {
          v13 = v8;
        }

        else
        {
          v13 = 0;
        }

        if (v11)
        {
          v14 = v11;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {

        v12 = 0;
        v13 = 0;
        v14 = 0;
      }

      *(a3 + 24) = &type metadata for FormatAssetHandle;
      *(a3 + 32) = sub_1D6723F3C();
      v15 = swift_allocObject();
      *a3 = v15;
      result = sub_1D5B63F14(&v16, (v15 + 2));
      v15[7] = v14;
      v15[8] = 0;
      v15[9] = 0;
      v15[10] = v12;
      v15[11] = v13;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_1D67237C0@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 == 2)
  {
    v6 = [*(a3 + 40) sourceChannel];
    if (!v6)
    {
      goto LABEL_22;
    }

    v7 = [v6 theme];
    swift_unknownObjectRelease();
    if (!v7)
    {
      goto LABEL_22;
    }

    v8 = [v7 bannerImageForMask];
    swift_unknownObjectRelease();
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v9 = [a1 userInterfaceStyle];
    if (v9 >= 2)
    {
      if (v9 == 2)
      {
        v12 = [*(a3 + 40) sourceChannel];
        if (!v12)
        {
          goto LABEL_22;
        }

        v13 = [v12 theme];
        swift_unknownObjectRelease();
        if (!v13)
        {
          goto LABEL_22;
        }

        v8 = [v13 bannerImageForMask];
        swift_unknownObjectRelease();
        if (!v8)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v14 = [*(a3 + 40) sourceChannel];
        if (!v14)
        {
          goto LABEL_22;
        }

        v15 = [v14 theme];
        swift_unknownObjectRelease();
        if (!v15)
        {
          goto LABEL_22;
        }

        v8 = [v15 bannerImageForWhiteBackground];
        swift_unknownObjectRelease();
        if (!v8)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      v10 = [*(a3 + 40) sourceChannel];
      if (!v10)
      {
        goto LABEL_22;
      }

      v11 = [v10 theme];
      swift_unknownObjectRelease();
      if (!v11)
      {
        goto LABEL_22;
      }

      v8 = [v11 bannerImageForWhiteBackground];
      swift_unknownObjectRelease();
      if (!v8)
      {
        goto LABEL_22;
      }
    }
  }

  v16 = [v8 assetHandle];

  if (v16)
  {
    *(a4 + 24) = sub_1D5C169F4();
    *(a4 + 32) = sub_1D5EECFF8();
    *a4 = v16;
    return result;
  }

LABEL_22:
  *(a4 + 32) = 0;
  result = 0.0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  return result;
}

double sub_1D6723A50@<D0>(uint64_t a1@<X2>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v5 = [*(a1 + 40) sourceChannel];
  if (v5 && (v6 = [v5 theme], swift_unknownObjectRelease(), v6) && (v7 = objc_msgSend(v6, *a2), swift_unknownObjectRelease(), v7) && (v8 = objc_msgSend(v7, sel_assetHandle), v7, v8))
  {
    *(a3 + 24) = sub_1D5C169F4();
    *(a3 + 32) = sub_1D5EECFF8();
    *a3 = v8;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1D6723B3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1D6723C44@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for FeedHeadline(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_1D67237C0(a1, a2, v8, a3);
}

id sub_1D6723CCC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for FeedHeadline(0);

  return sub_1D672366C(a1);
}

uint64_t FormatHeadlineBinding.Image.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6723E0C()
{
  result = qword_1EC88A6F0;
  if (!qword_1EC88A6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A6F0);
  }

  return result;
}

unint64_t sub_1D6723E60(uint64_t a1)
{
  result = sub_1D6723E88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6723E88()
{
  result = qword_1EC88A6F8;
  if (!qword_1EC88A6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A6F8);
  }

  return result;
}

unint64_t sub_1D6723EDC(void *a1)
{
  a1[1] = sub_1D5CBE610();
  a1[2] = sub_1D66FC830();
  result = sub_1D6723E0C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6723F3C()
{
  result = qword_1EDF2F8F8;
  if (!qword_1EDF2F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F8F8);
  }

  return result;
}

id FeedScoredIssue.init(issue:scoreProfile:)@<X0>(id result@<X0>, id a2@<X1>, void *a3@<X8>)
{
  v3 = result;
  if (!a2)
  {
    result = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
    a2 = result;
  }

  *a3 = v3;
  a3[1] = a2;
  return result;
}

id FeedScoredIssue.item.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v5 = *(v1 + 8);
  *a1 = *v1;
  a1[1] = v5;
  a1[2] = 0;
  v3 = v2;

  return v5;
}

uint64_t FeedScoredIssue.identifier.getter()
{
  v1 = [*v0 itemID];
  v2 = sub_1D726207C();

  return v2;
}

uint64_t FeedScoredIssue.publisherID.getter()
{
  v1 = [*v0 publisherID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D726207C();

  return v3;
}

uint64_t FeedScoredIssue.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 publishDate];
  if (v3)
  {
    v4 = v3;
    sub_1D72588BC();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1D725891C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_1D6724218@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 publishDate];
  if (v3)
  {
    v4 = v3;
    sub_1D72588BC();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1D725891C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_1D67242BC()
{
  v1 = [*v0 itemID];
  v2 = sub_1D726207C();

  return v2;
}

id sub_1D6724380@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  *a2 = *a1;
  a2[1] = v3;
  a2[2] = 0;
  v4 = v2;
  return v3;
}

id sub_1D67243B8@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *a2 = *a1;
  a2[1] = v3;
  v5 = v4;
  return v3;
}

uint64_t _s8NewsFeed0B11ScoredIssueV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = [*a1 itemID];
  v6 = sub_1D726207C();
  v8 = v7;

  v9 = [v3 itemID];
  v10 = sub_1D726207C();
  v12 = v11;

  if (v6 == v10 && v8 == v12)
  {
  }

  else
  {
    v14 = sub_1D72646CC();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1D5F1574C();
  v16 = v2;
  v17 = v4;
  v18 = sub_1D726370C();

  return v18 & 1;
}

unint64_t sub_1D672450C(uint64_t a1)
{
  result = sub_1D6724534();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6724534()
{
  result = qword_1EDF394E0[0];
  if (!qword_1EDF394E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF394E0);
  }

  return result;
}

unint64_t sub_1D6724598@<X0>(void *a1@<X8>)
{
  v75 = a1;
  v77 = type metadata accessor for FeedItemAuxiliaryItem(0);
  v2 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77, v3);
  v81 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v72 - v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v84 = &v72 - v11;
  v13 = v1[2];
  v12 = v1[3];
  v14 = v1[5];
  v73 = v1[4];
  v74 = v12;
  v15 = *(v13 + 16);
  v83 = v13;
  v79 = v2;
  v76 = v14;
  if (v15)
  {
    v85 = MEMORY[0x1E69E7CC0];

    sub_1D5BFC364(0, v15, 0);
    v16 = v85;
    v17 = v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v18 = *(v2 + 72);
    do
    {
      sub_1D6725750(v17, v8, type metadata accessor for FeedItemAuxiliaryItem);
      v19 = FeedItem.identifier.getter();
      v21 = v20;
      sub_1D67257B8(v8, type metadata accessor for FeedItemAuxiliaryItem);
      v85 = v16;
      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1D5BFC364((v22 > 1), v23 + 1, 1);
        v16 = v85;
      }

      *(v16 + 16) = v23 + 1;
      v24 = v16 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
      v17 += v18;
      --v15;
    }

    while (v15);
    v14 = v76;
    v13 = v83;
    v2 = v79;
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  v25 = sub_1D5B86020(v16);

  v82 = *(v13 + 16);
  if (!v82)
  {
    v28 = MEMORY[0x1E69E7CC8];
    v49 = MEMORY[0x1E69E7CC8];
LABEL_40:
    result = sub_1D5BCAE1C(MEMORY[0x1E69E7CC0]);
    v70 = v74;
    v69 = v75;
    *v75 = v73;
    v69[1] = v14;
    v69[2] = v25;
    v69[3] = v28;
    v69[4] = v49;
    v69[5] = result;
    v71 = MEMORY[0x1E69E7CD0];
    v69[6] = v70;
    v69[7] = v71;
    return result;
  }

  v72 = v25;
  v26 = 0;
  v78 = *(v77 + 24);
  v27 = v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v28 = MEMORY[0x1E69E7CC8];
  while (v26 < *(v13 + 16))
  {
    v80 = *(v2 + 72);
    v29 = v84;
    sub_1D6725750(v27 + v80 * v26, v84, type metadata accessor for FeedItemAuxiliaryItem);
    v30 = FeedItem.identifier.getter();
    v32 = v31;
    v33 = *(v29 + v78);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85 = v28;
    v36 = sub_1D5B69D90(v30, v32);
    v37 = v28[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      goto LABEL_42;
    }

    v40 = v35;
    if (v28[3] >= v39)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v35 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_1D6D804FC();
        if ((v40 & 1) == 0)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      sub_1D6D69E1C(v39, isUniquelyReferenced_nonNull_native);
      v41 = sub_1D5B69D90(v30, v32);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_47;
      }

      v36 = v41;
      if ((v40 & 1) == 0)
      {
LABEL_20:
        v43 = v84;
        v28 = v85;
        v85[(v36 >> 6) + 8] |= 1 << v36;
        v44 = (v28[6] + 16 * v36);
        *v44 = v30;
        v44[1] = v32;
        *(v28[7] + 8 * v36) = v33;
        sub_1D67257B8(v43, type metadata accessor for FeedItemAuxiliaryItem);
        v45 = v28[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_45;
        }

        v28[2] = v47;
        goto LABEL_11;
      }
    }

    v28 = v85;
    *(v85[7] + 8 * v36) = v33;

    sub_1D67257B8(v84, type metadata accessor for FeedItemAuxiliaryItem);
LABEL_11:
    ++v26;
    v13 = v83;
    v2 = v79;
    if (v82 == v26)
    {
      v48 = 0;
      v84 = *(v77 + 20);
      v49 = MEMORY[0x1E69E7CC8];
      while (1)
      {
        if (v48 >= *(v13 + 16))
        {
          goto LABEL_43;
        }

        v51 = v81;
        sub_1D6725750(v27, v81, type metadata accessor for FeedItemAuxiliaryItem);
        v52 = FeedItem.identifier.getter();
        v54 = v53;
        v55 = *(v51 + v84);

        v56 = swift_isUniquelyReferenced_nonNull_native();
        v85 = v49;
        v57 = sub_1D5B69D90(v52, v54);
        v59 = v49[2];
        v60 = (v58 & 1) == 0;
        v46 = __OFADD__(v59, v60);
        v61 = v59 + v60;
        if (v46)
        {
          goto LABEL_44;
        }

        v62 = v58;
        if (v49[3] < v61)
        {
          break;
        }

        if (v56)
        {
          goto LABEL_33;
        }

        v67 = v57;
        sub_1D6D804E4();
        v57 = v67;
        if ((v62 & 1) == 0)
        {
LABEL_34:
          v49 = v85;
          v85[(v57 >> 6) + 8] |= 1 << v57;
          v64 = (v49[6] + 16 * v57);
          *v64 = v52;
          v64[1] = v54;
          *(v49[7] + 8 * v57) = v55;
          sub_1D67257B8(v81, type metadata accessor for FeedItemAuxiliaryItem);
          v65 = v49[2];
          v46 = __OFADD__(v65, 1);
          v66 = v65 + 1;
          if (v46)
          {
            goto LABEL_46;
          }

          v49[2] = v66;
          goto LABEL_26;
        }

LABEL_25:
        v50 = v57;

        v49 = v85;
        *(v85[7] + 8 * v50) = v55;

        sub_1D67257B8(v81, type metadata accessor for FeedItemAuxiliaryItem);
LABEL_26:
        ++v48;
        v27 += v80;
        v13 = v83;
        if (v82 == v48)
        {
          v14 = v76;
          v25 = v72;
          goto LABEL_40;
        }
      }

      sub_1D6D69E04(v61, v56);
      v57 = sub_1D5B69D90(v52, v54);
      if ((v62 & 1) != (v63 & 1))
      {
        goto LABEL_47;
      }

LABEL_33:
      if ((v62 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t FeedItemAuxiliary.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedItemAuxiliary.slotIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *sub_1D6724C64(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for FormatOption(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v94 = (&v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7, v8);
  v93 = &v81 - v9;
  v10 = type metadata accessor for FormatInspectionItem(0);
  v95 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeedItemAuxiliaryItem(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EA74B8(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v88 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v27 = &v81 - v26;
  if (a2[1])
  {
    v92 = v15;
    v83 = v4;
    v87 = v25;
    v28 = a2[2];
    v29 = a2[3];
    v30 = MEMORY[0x1E69E6F90];
    sub_1D6048F4C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    v89 = xmmword_1D7273AE0;
    v86 = inited;
    *(inited + 16) = xmmword_1D7273AE0;
    sub_1D6048F4C(0, &qword_1EC880490, sub_1D5EA74B8, v30);
    v32 = *(v20 + 72);
    v33 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v97 = v32;
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1D7270C10;
    v85 = v34;
    v96 = v33;
    v90 = (v34 + v33);
    sub_1D6048F4C(0, &qword_1EC8803C0, sub_1D5E4F38C, v30);
    v84 = v35;
    v36 = swift_initStackObject();
    v37 = v36;
    *(v36 + 16) = v89;
    v38 = *(v28 + 16);
    v39 = MEMORY[0x1E69E7CC0];
    v98 = v10;
    if (v38)
    {
      v81 = v36;
      v82 = v29;
      *&v107[0] = MEMORY[0x1E69E7CC0];
      sub_1D69972A4(0, v38, 0);
      v39 = *&v107[0];
      v40 = v28 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
      v92 = *(v92 + 72);
      v41 = (v95 + 56);
      v91 = xmmword_1D72E27B0;
      do
      {
        sub_1D6725750(v40, v18, type metadata accessor for FeedItemAuxiliaryItem);
        *(&v105 + 1) = type metadata accessor for FeedItem(0);
        *&v106[0] = sub_1D67256F8();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v104);
        sub_1D6725750(v18, boxed_opaque_existential_1, type metadata accessor for FeedItem);
        *(v106 + 8) = 0u;
        *(&v106[1] + 8) = 0u;
        *(&v106[2] + 8) = 0u;
        BYTE8(v106[3]) = 1;
        sub_1D67257B8(v18, type metadata accessor for FeedItemAuxiliaryItem);
        *(v103 + 9) = *(&v106[2] + 9);
        v103[0] = v106[2];
        v101 = v106[0];
        v102 = v106[1];
        v99 = v104;
        v100 = v105;
        v43 = *(v10 + 24);
        if (*(&v105 + 1))
        {
          sub_1D6725818(&v99, &v13[v43]);
          v44 = type metadata accessor for FormatInspectionItem.Value(0);
          swift_storeEnumTagMultiPayload();
          v45 = *(*(v44 - 8) + 56);
          v46 = v44;
          v10 = v98;
          v45(&v13[v43], 0, 1, v46);
          *v13 = v91;
          *(v13 + 2) = 0;
          *(v13 + 3) = 0;
          v47 = &v13[*(v10 + 28)];
          *v47 = 0;
          *(v47 + 1) = 0;
          v47[16] = -1;
          sub_1D6725874(&v99);
        }

        else
        {
          v48 = type metadata accessor for FormatInspectionItem.Value(0);
          (*(*(v48 - 8) + 56))(&v13[v43], 1, 1, v48);
          *v13 = v91;
          *(v13 + 2) = 0;
          *(v13 + 3) = 0;
          v49 = &v13[*(v10 + 28)];
          *v49 = 0;
          *(v49 + 1) = 0;
          v49[16] = -1;
        }

        sub_1D5CED910(v13, v27, type metadata accessor for FormatInspectionItem);
        (*v41)(v27, 0, 1, v10);
        *&v107[0] = v39;
        v51 = *(v39 + 16);
        v50 = *(v39 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_1D69972A4((v50 > 1), v51 + 1, 1);
          v39 = *&v107[0];
        }

        *(v39 + 16) = v51 + 1;
        sub_1D5CED910(v27, v39 + v96 + v51 * v97, sub_1D5EA74B8);
        v40 += v92;
        --v38;
        v10 = v98;
      }

      while (v38);
      v37 = v81;
      v29 = v82;
    }

    sub_1D6795150(0x736D657449, 0xE500000000000000, 0, 0, v39, v107);

    v37[7] = &type metadata for FormatInspectionGroup;
    v37[8] = &off_1F518B2C0;
    v52 = swift_allocObject();
    v37[4] = v52;
    *(v52 + 48) = v108;
    v53 = v107[1];
    *(v52 + 16) = v107[0];
    *(v52 + 32) = v53;
    v54 = sub_1D5F62BFC(v37);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1(v37 + 4);
    v55 = sub_1D7073500(v54);

    v56 = v90;
    sub_1D711AD20(0x736D657449, 0xE500000000000000, v55, 0, 0, v90);
    v57 = *(v95 + 56);
    v95 += 56;
    v57(v56, 0, 1, v10);
    v58 = swift_initStackObject();
    v59 = v58;
    *(v58 + 16) = v89;
    v60 = *(v29 + 16);
    v61 = MEMORY[0x1E69E7CC0];
    if (v60)
    {
      v92 = v58;
      *&v104 = MEMORY[0x1E69E7CC0];
      sub_1D69972A4(0, v60, 0);
      v61 = v104;
      v62 = v29 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
      v63 = *(v83 + 72);
      v64 = v88;
      do
      {
        v65 = v93;
        sub_1D6725750(v62, v93, type metadata accessor for FormatOption);
        v66 = v94;
        sub_1D6725750(v65, v94, type metadata accessor for FormatOption);
        sub_1D68B1FA4(v66, v64);
        sub_1D67257B8(v65, type metadata accessor for FormatOption);
        v57(v64, 0, 1, v98);
        *&v104 = v61;
        v68 = *(v61 + 16);
        v67 = *(v61 + 24);
        if (v68 >= v67 >> 1)
        {
          sub_1D69972A4((v67 > 1), v68 + 1, 1);
          v61 = v104;
        }

        *(v61 + 16) = v68 + 1;
        sub_1D5CED910(v64, v61 + v96 + v68 * v97, sub_1D5EA74B8);
        v62 += v63;
        --v60;
      }

      while (v60);
      v10 = v98;
      v59 = v92;
    }

    sub_1D6795150(0x736E6F6974704FLL, 0xE700000000000000, 0, 0, v61, &v99);

    v59[7] = &type metadata for FormatInspectionGroup;
    v59[8] = &off_1F518B2C0;
    v69 = swift_allocObject();
    v59[4] = v69;
    *(v69 + 48) = v101;
    v70 = v100;
    *(v69 + 16) = v99;
    *(v69 + 32) = v70;
    v71 = sub_1D5F62BFC(v59);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1(v59 + 4);
    v72 = sub_1D7073500(v71);

    v73 = v90;
    v74 = v97;
    sub_1D711AD20(0x736E6F6974704FLL, 0xE700000000000000, v72, 0, 0, &v90[v97]);
    v57(&v73[v74], 0, 1, v10);
    sub_1D6795150(0x7261696C69787541, 0xE900000000000079, 0, 0, v85, &v104);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v75 = v86;
    *(v86 + 56) = &type metadata for FormatInspectionGroup;
    *(v75 + 64) = &off_1F518B2C0;
    v76 = swift_allocObject();
    *(v75 + 32) = v76;
    *(v76 + 48) = *&v106[0];
    v77 = v105;
    *(v76 + 16) = v104;
    *(v76 + 32) = v77;
    v78 = sub_1D7073500(v75);
    swift_setDeallocating();
    sub_1D67257B8(v75 + 32, sub_1D5E4F358);
    return v78;
  }

  else
  {
    v80 = MEMORY[0x1E69E7CC0];

    return sub_1D7073500(v80);
  }
}

unint64_t sub_1D67256F8()
{
  result = qword_1EDF34F30;
  if (!qword_1EDF34F30)
  {
    type metadata accessor for FeedItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34F30);
  }

  return result;
}

uint64_t sub_1D6725750(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D67257B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D67258D8(void *a1)
{
  sub_1D67260A4(0, &qword_1EC88A700, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v14 - v7;
  v9 = v1[2];
  v18 = v1[3];
  v19 = v9;
  v10 = v1[4];
  v16 = v1[5];
  v17 = v10;
  v15 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6725FE8();
  sub_1D7264B5C();
  v25 = 0;
  v11 = v20;
  sub_1D72643FC();
  if (!v11)
  {
    v12 = v15;
    v24 = 1;
    sub_1D72643FC();
    v21 = v12;
    v23 = 2;
    sub_1D5F0E598();
    sub_1D5F0E708(&qword_1EC880E68, sub_1D5F0E774, MEMORY[0x1E69E6300]);
    sub_1D726443C();
    v22 = 3;
    sub_1D726437C();
  }

  return (*(v5 + 8))(v8, v4);
}

void sub_1D6725B10(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D67260A4(0, &qword_1EDF03820, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6725FE8();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v33[0]) = 0;
    v11 = sub_1D72642BC();
    v13 = v12;
    v28 = v11;
    LOBYTE(v33[0]) = 1;
    v14 = sub_1D72642BC();
    v29 = v15;
    v27 = v14;
    sub_1D5F0E598();
    LOBYTE(v30) = 2;
    sub_1D5F0E708(&qword_1EDF04A98, sub_1D5F0E5E8, MEMORY[0x1E69E6330]);
    sub_1D726431C();
    v26 = v33[0];
    v35 = 3;
    v16 = sub_1D726422C();
    v17 = *(v7 + 8);
    v19 = v18;
    v25 = v18;
    v17(v10, v6);
    v21 = v27;
    v20 = v28;
    *&v30 = v28;
    *(&v30 + 1) = v13;
    v22 = v29;
    *&v31 = v27;
    *(&v31 + 1) = v29;
    *v32 = v16;
    *&v32[8] = v19;
    v23 = v26;
    *&v32[16] = v26;
    v32[24] = 7;
    v24 = v31;
    *a2 = v30;
    a2[1] = v24;
    a2[2] = *v32;
    *(a2 + 41) = *&v32[9];
    sub_1D672603C(&v30, v33);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v33[0] = v20;
    v33[1] = v13;
    v33[2] = v21;
    v33[3] = v22;
    v33[4] = v16;
    v33[5] = v25;
    v33[6] = v23;
    v34 = 7;
    sub_1D6726074(v33);
  }
}

uint64_t sub_1D6725E7C()
{
  v1 = 0x6E6F6E6143636D75;
  v2 = 0x53617461446C7275;
  if (*v0 != 2)
  {
    v2 = 0x615465756761656CLL;
  }

  if (*v0)
  {
    v1 = 0x6449746E657665;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D6725F18@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6726220(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6725F40(uint64_t a1)
{
  v2 = sub_1D6725FE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6725F7C(uint64_t a1)
{
  v2 = sub_1D6725FE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D6725FE8()
{
  result = qword_1EDF060E8;
  if (!qword_1EDF060E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF060E8);
  }

  return result;
}

void sub_1D67260A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6725FE8();
    v7 = a3(a1, &type metadata for SportsDataVisualizationResponseKeyPlayerItem.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D672611C()
{
  result = qword_1EC88A708;
  if (!qword_1EC88A708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A708);
  }

  return result;
}

unint64_t sub_1D6726174()
{
  result = qword_1EDF060D8;
  if (!qword_1EDF060D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF060D8);
  }

  return result;
}

unint64_t sub_1D67261CC()
{
  result = qword_1EDF060E0;
  if (!qword_1EDF060E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF060E0);
  }

  return result;
}

uint64_t sub_1D6726220(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6E6143636D75 && a2 == 0xEE0064496C616369;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449746E657665 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x53617461446C7275 && a2 == 0xEE0073656372756FLL || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x615465756761656CLL && a2 == 0xEB00000000644967)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

id EndpointConnectionError.underlyingError.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *EndpointConnectionError.httpResponse.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t EndpointConnectionError.init(underlyingError:httpResponse:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t EndpointConnectionResponse.data.getter()
{
  v1 = *v0;
  sub_1D5F13DE4(*v0, *(v0 + 8));
  return v1;
}

void *EndpointConnectionResponse.response.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t EndpointConnectionResponse.init(data:response:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_1D672655C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1D6726A04(0, &qword_1EDF17A10, &type metadata for EndpointConnectionResponse, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BBAC();
}

void sub_1D67265FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, float a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, SEL *a22)
{
  v37 = sub_1D725844C();
  if (a8)
  {
    sub_1D6726A04(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v35 = sub_1D7261D2C();
  }

  else
  {
    v35 = 0;
  }

  v26 = sub_1D726203C();
  if (a12 >> 60 == 15)
  {
    v27 = 0;
  }

  else
  {
    v27 = sub_1D725865C();
  }

  if (a14)
  {
    v28 = sub_1D726203C();
  }

  else
  {
    v28 = 0;
  }

  v29 = swift_allocObject();
  v29[2] = a3;
  v29[3] = a4;
  v29[4] = a1;
  v29[5] = a2;
  aBlock[4] = a20;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D60B572C;
  aBlock[3] = a21;
  v30 = _Block_copy(aBlock);

  LODWORD(v32) = a16;
  *&v31 = a6;
  [a5 *a22];
  _Block_release(v30);
}

void sub_1D67268F4(uint64_t a1, unint64_t a2, void *a3, void *a4, void (*a5)(void *), uint64_t a6, void (*a7)(uint64_t *))
{
  if (a4)
  {
    sub_1D6726A54();
    v10 = swift_allocError();
    *v11 = a4;
    v11[1] = a3;
    v12 = a4;
    v13 = a3;
    v14 = a4;
    a5(v10);

    v15 = a4;
  }

  else
  {
    v19 = a1;
    v20 = a2;
    v21 = a3;
    sub_1D5F13DE4(a1, a2);
    v17 = a3;
    a7(&v19);
    v18 = v21;
    sub_1D5B952E4(v19, v20);
    v15 = v18;
  }
}

void sub_1D6726A04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D6726A54()
{
  result = qword_1EDF0D660[0];
  if (!qword_1EDF0D660[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF0D660);
  }

  return result;
}

uint64_t static FormatCodingButtLineCapStrategy.shouldEncode(wrappedValue:)(_BYTE *a1)
{
  if (*a1)
  {
    v1 = sub_1D72646CC();

    v2 = v1 ^ 1;
  }

  else
  {

    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_1D6726B68(_BYTE *a1)
{
  if (*a1)
  {
    v1 = sub_1D72646CC();

    v2 = v1 ^ 1;
  }

  else
  {

    v2 = 0;
  }

  return v2 & 1;
}

uint64_t static FormatCodingMiddleBorderInsetStrategy.shouldEncode(wrappedValue:)(_BYTE *a1)
{
  if (*a1 && *a1 == 1)
  {

    v1 = 0;
  }

  else
  {
    v2 = sub_1D72646CC();

    v1 = v2 ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_1D6726C90(_BYTE *a1)
{
  if (*a1 && *a1 == 1)
  {

    v1 = 0;
  }

  else
  {
    v2 = sub_1D72646CC();

    v1 = v2 ^ 1;
  }

  return v1 & 1;
}

BOOL static FormatCodingAllBorderEdgeStrategy.shouldEncode(wrappedValue:)(uint64_t a1)
{
  v2 = sub_1D5CD85B0(&unk_1F5118580);
  LOBYTE(a1) = sub_1D5E22398(a1, v2);

  return (a1 & 1) == 0;
}

char *static FormatCodingAllBorderEdgeStrategy.encode(wrappedValue:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_1D5E23C8C(*(a1 + 16), 0);
  v3 = sub_1D5E2A8B4();

  sub_1D5B87E38(v5);
  if (v3 != v1)
  {
    __break(1u);
LABEL_4:
    v2 = MEMORY[0x1E69E7CC0];
  }

  v5 = v2;

  sub_1D6726FC8(&v5);

  return v5;
}

uint64_t sub_1D6726E98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5CD85B0(&unk_1F50F31A8);
  *a1 = result;
  return result;
}

BOOL sub_1D6726EC8(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1D5CD85B0(&unk_1F50F2C80);
  LOBYTE(v1) = sub_1D5E22398(v1, v2);

  return (v1 & 1) == 0;
}

void sub_1D6726F18(uint64_t *a1@<X8>)
{

  v3 = sub_1D5E1E368(v2);

  sub_1D6726FC8(&v3);

  *a1 = v3;
}

uint64_t sub_1D6726F94@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D7015A30(*a1);
  *a2 = result;
  return result;
}

void sub_1D6726FC8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D62FF9F0(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_1D6727034(v4);
  *a1 = v2;
}

void sub_1D6727034(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D726449C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D726276C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1D6727340(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D672712C(0, v2, 1, a1);
  }
}

void sub_1D672712C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = 0x676E696461656CLL;
    v5 = 0x6D6F74746F62;
    v6 = *a4;
    v7 = (*a4 + a3);
    v8 = a1 - a3;
LABEL_6:
    v26 = a3;
    v9 = *(v6 + a3);
    v24 = v8;
    v25 = v7;
    while (1)
    {
      if (v9 <= 1u)
      {
        if (v9)
        {
          v10 = v4;
        }

        else
        {
          v10 = 7368564;
        }

        if (v9)
        {
          v11 = 0xE700000000000000;
        }

        else
        {
          v11 = 0xE300000000000000;
        }
      }

      else if (v9 == 2)
      {
        v11 = 0xE800000000000000;
        v10 = 0x676E696C69617274;
      }

      else
      {
        if (v9 == 3)
        {
          v10 = v5;
        }

        else
        {
          v10 = 7105633;
        }

        if (v9 == 3)
        {
          v11 = 0xE600000000000000;
        }

        else
        {
          v11 = 0xE300000000000000;
        }
      }

      v12 = *(v7 - 1);
      v13 = v5;
      if (v12 == 3)
      {
        v14 = v5;
      }

      else
      {
        v14 = 7105633;
      }

      if (v12 == 3)
      {
        v15 = 0xE600000000000000;
      }

      else
      {
        v15 = 0xE300000000000000;
      }

      if (v12 == 2)
      {
        v14 = 0x676E696C69617274;
        v15 = 0xE800000000000000;
      }

      v16 = v4;
      if (*(v7 - 1))
      {
        v17 = v4;
      }

      else
      {
        v17 = 7368564;
      }

      if (*(v7 - 1))
      {
        v18 = 0xE700000000000000;
      }

      else
      {
        v18 = 0xE300000000000000;
      }

      if (*(v7 - 1) <= 1u)
      {
        v19 = v17;
      }

      else
      {
        v19 = v14;
      }

      if (*(v7 - 1) <= 1u)
      {
        v20 = v18;
      }

      else
      {
        v20 = v15;
      }

      if (v10 == v19 && v11 == v20)
      {

        v4 = v16;
        v5 = v13;
LABEL_5:
        a3 = v26 + 1;
        v7 = v25 + 1;
        v8 = v24 - 1;
        if (v26 + 1 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      v21 = sub_1D72646CC();

      v4 = v16;
      v5 = v13;
      if ((v21 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v9 = *v7;
      *v7 = *(v7 - 1);
      *--v7 = v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1D6727340(char **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_161:
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_199;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_163:
      v120 = v9;
      v103 = *(v9 + 2);
      if (v103 >= 2)
      {
        do
        {
          v104 = *v6;
          if (!*v6)
          {
            goto LABEL_197;
          }

          v6 = (v103 - 1);
          v105 = *&v9[16 * v103];
          v106 = *&v9[16 * v103 + 24];
          sub_1D6727CD0((v104 + v105), (v104 + *&v9[16 * v103 + 16]), (v104 + v106), v10);
          if (v5)
          {
            break;
          }

          if (v106 < v105)
          {
            goto LABEL_186;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1D62FF50C(v9);
          }

          if (v103 - 2 >= *(v9 + 2))
          {
            goto LABEL_187;
          }

          v107 = &v9[16 * v103];
          *v107 = v105;
          *(v107 + 1) = v106;
          v120 = v9;
          sub_1D62FF480(v103 - 1);
          v9 = v120;
          v103 = *(v120 + 2);
          v6 = a3;
        }

        while (v103 > 1);
      }

LABEL_171:

      return;
    }

LABEL_193:
    v9 = sub_1D62FF50C(v9);
    goto LABEL_163;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if ((v8 + 1) < v7)
    {
      v12 = *v6;
      v13 = v8;
      v14 = v8 + 1;
      v15 = *(v11 + *v6);
      v16 = v13[*v6];
      v119 = v15;
      v118 = v16;
      v115 = _s8NewsFeed16FormatBorderEdgeO1loiySbAC_ACtFZ_0(&v119, &v118);
      v110 = v13;
      v6 = v13 + 2;
      if ((v13 + 2) < v7)
      {
        v14 = (v7 - 1);
        while (1)
        {
          v20 = *(v6 + v12);
          if (v20 <= 1)
          {
            if (*(v6 + v12))
            {
              v22 = 0x676E696461656CLL;
            }

            else
            {
              v22 = 7368564;
            }

            if (*(v6 + v12))
            {
              v21 = 0xE700000000000000;
            }

            else
            {
              v21 = 0xE300000000000000;
            }
          }

          else if (v20 == 2)
          {
            v21 = 0xE800000000000000;
            v22 = 0x676E696C69617274;
          }

          else if (v20 == 3)
          {
            v21 = 0xE600000000000000;
            v22 = 0x6D6F74746F62;
          }

          else
          {
            v21 = 0xE300000000000000;
            v22 = 7105633;
          }

          v23 = *(v6 + v12 - 1);
          v24 = 0x6D6F74746F62;
          if (v23 == 3)
          {
            v25 = 0xE600000000000000;
          }

          else
          {
            v24 = 7105633;
            v25 = 0xE300000000000000;
          }

          if (v23 == 2)
          {
            v24 = 0x676E696C69617274;
            v25 = 0xE800000000000000;
          }

          if (*(v6 + v12 - 1))
          {
            v26 = 0x676E696461656CLL;
          }

          else
          {
            v26 = 7368564;
          }

          if (*(v6 + v12 - 1))
          {
            v27 = 0xE700000000000000;
          }

          else
          {
            v27 = 0xE300000000000000;
          }

          if (*(v6 + v12 - 1) <= 1u)
          {
            v28 = v26;
          }

          else
          {
            v28 = v24;
          }

          if (*(v6 + v12 - 1) <= 1u)
          {
            v29 = v27;
          }

          else
          {
            v29 = v25;
          }

          if (v22 == v28 && v21 == v29)
          {

            if (v115)
            {
              v30 = v6 - 1;
              v10 = v110;
              goto LABEL_45;
            }
          }

          else
          {
            v17 = v5;
            v18 = sub_1D72646CC();

            v19 = v115 ^ v18;
            v5 = v17;
            if (v19)
            {
              v14 = v6 - 1;
              break;
            }
          }

          v6 = (v6 + 1);
          if (v7 == v6)
          {
            v6 = v7;
            break;
          }
        }
      }

      v30 = v14;
      v11 = v6;
      v10 = v110;
      if (v115)
      {
LABEL_45:
        if (v6 < v10)
        {
          goto LABEL_190;
        }

        if (v10 <= v30)
        {
          v52 = v6 - 1;
          v53 = v10;
          do
          {
            if (v53 != v52)
            {
              v55 = *a3;
              if (!*a3)
              {
                goto LABEL_196;
              }

              v56 = v53[v55];
              v53[v55] = v52[v55];
              v52[v55] = v56;
            }
          }

          while (++v53 < v52--);
        }

        v11 = v6;
      }
    }

    v6 = a3;
    v31 = a3[1];
    v116 = v11;
    if (v11 < v31)
    {
      v73 = __OFSUB__(v11, v10);
      v32 = v11 - v10;
      if (v73)
      {
        goto LABEL_189;
      }

      if (v32 < a4)
      {
        break;
      }
    }

LABEL_110:
    if (v116 < v10)
    {
      goto LABEL_188;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1D698BA94(0, *(v9 + 2) + 1, 1, v9);
    }

    v58 = *(v9 + 2);
    v57 = *(v9 + 3);
    v59 = v58 + 1;
    if (v58 >= v57 >> 1)
    {
      v9 = sub_1D698BA94((v57 > 1), v58 + 1, 1, v9);
    }

    *(v9 + 2) = v59;
    v60 = &v9[16 * v58];
    *(v60 + 4) = v10;
    *(v60 + 5) = v116;
    v61 = *a1;
    if (!*a1)
    {
      goto LABEL_198;
    }

    if (v58)
    {
      while (1)
      {
        v62 = v59 - 1;
        if (v59 >= 4)
        {
          break;
        }

        if (v59 == 3)
        {
          v63 = *(v9 + 4);
          v64 = *(v9 + 5);
          v73 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          v66 = v73;
LABEL_130:
          if (v66)
          {
            goto LABEL_177;
          }

          v79 = &v9[16 * v59];
          v81 = *v79;
          v80 = *(v79 + 1);
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_180;
          }

          v85 = &v9[16 * v62 + 32];
          v87 = *v85;
          v86 = *(v85 + 1);
          v73 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v73)
          {
            goto LABEL_183;
          }

          if (__OFADD__(v83, v88))
          {
            goto LABEL_184;
          }

          if (v83 + v88 >= v65)
          {
            if (v65 < v88)
            {
              v62 = v59 - 2;
            }

            goto LABEL_151;
          }

          goto LABEL_144;
        }

        v89 = &v9[16 * v59];
        v91 = *v89;
        v90 = *(v89 + 1);
        v73 = __OFSUB__(v90, v91);
        v83 = v90 - v91;
        v84 = v73;
LABEL_144:
        if (v84)
        {
          goto LABEL_179;
        }

        v92 = &v9[16 * v62];
        v94 = *(v92 + 4);
        v93 = *(v92 + 5);
        v73 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v73)
        {
          goto LABEL_182;
        }

        if (v95 < v83)
        {
          goto LABEL_3;
        }

LABEL_151:
        v100 = v62 - 1;
        if (v62 - 1 >= v59)
        {
          __break(1u);
LABEL_173:
          __break(1u);
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
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
          goto LABEL_192;
        }

        if (!*v6)
        {
          goto LABEL_195;
        }

        v101 = *&v9[16 * v100 + 32];
        v10 = *&v9[16 * v62 + 40];
        sub_1D6727CD0((*v6 + v101), (*v6 + *&v9[16 * v62 + 32]), &v10[*v6], v61);
        if (v5)
        {
          goto LABEL_171;
        }

        if (v10 < v101)
        {
          goto LABEL_173;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D62FF50C(v9);
        }

        if (v100 >= *(v9 + 2))
        {
          goto LABEL_174;
        }

        v102 = &v9[16 * v100];
        *(v102 + 4) = v101;
        *(v102 + 5) = v10;
        v120 = v9;
        sub_1D62FF480(v62);
        v9 = v120;
        v59 = *(v120 + 2);
        if (v59 <= 1)
        {
          goto LABEL_3;
        }
      }

      v67 = &v9[16 * v59 + 32];
      v68 = *(v67 - 64);
      v69 = *(v67 - 56);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_175;
      }

      v72 = *(v67 - 48);
      v71 = *(v67 - 40);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_176;
      }

      v74 = &v9[16 * v59];
      v76 = *v74;
      v75 = *(v74 + 1);
      v73 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v73)
      {
        goto LABEL_178;
      }

      v73 = __OFADD__(v65, v77);
      v78 = v65 + v77;
      if (v73)
      {
        goto LABEL_181;
      }

      if (v78 >= v70)
      {
        v96 = &v9[16 * v62 + 32];
        v98 = *v96;
        v97 = *(v96 + 1);
        v73 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v73)
        {
          goto LABEL_185;
        }

        if (v65 < v99)
        {
          v62 = v59 - 2;
        }

        goto LABEL_151;
      }

      goto LABEL_130;
    }

LABEL_3:
    v7 = v6[1];
    v8 = v116;
    if (v116 >= v7)
    {
      goto LABEL_161;
    }
  }

  v33 = &v10[a4];
  if (__OFADD__(v10, a4))
  {
    goto LABEL_191;
  }

  if (v33 >= v31)
  {
    v33 = a3[1];
  }

  if (v33 < v10)
  {
LABEL_192:
    __break(1u);
    goto LABEL_193;
  }

  v34 = v116;
  if (v116 == v33)
  {
    goto LABEL_110;
  }

  v108 = v5;
  v35 = *a3;
  v36 = (*a3 + v116);
  v111 = v10;
  v37 = &v10[-v116];
  v113 = v33;
LABEL_59:
  v117 = v34;
  v38 = *(v35 + v34);
  v39 = v37;
  v40 = v36;
  while (1)
  {
    if (v38 <= 1u)
    {
      if (v38)
      {
        v41 = 0x676E696461656CLL;
      }

      else
      {
        v41 = 7368564;
      }

      if (v38)
      {
        v42 = 0xE700000000000000;
      }

      else
      {
        v42 = 0xE300000000000000;
      }
    }

    else if (v38 == 2)
    {
      v42 = 0xE800000000000000;
      v41 = 0x676E696C69617274;
    }

    else
    {
      if (v38 == 3)
      {
        v41 = 0x6D6F74746F62;
      }

      else
      {
        v41 = 7105633;
      }

      if (v38 == 3)
      {
        v42 = 0xE600000000000000;
      }

      else
      {
        v42 = 0xE300000000000000;
      }
    }

    v43 = *(v40 - 1);
    if (v43 == 3)
    {
      v44 = 0x6D6F74746F62;
    }

    else
    {
      v44 = 7105633;
    }

    if (v43 == 3)
    {
      v45 = 0xE600000000000000;
    }

    else
    {
      v45 = 0xE300000000000000;
    }

    if (v43 == 2)
    {
      v44 = 0x676E696C69617274;
      v45 = 0xE800000000000000;
    }

    if (*(v40 - 1))
    {
      v46 = 0x676E696461656CLL;
    }

    else
    {
      v46 = 7368564;
    }

    if (*(v40 - 1))
    {
      v47 = 0xE700000000000000;
    }

    else
    {
      v47 = 0xE300000000000000;
    }

    if (*(v40 - 1) <= 1u)
    {
      v48 = v46;
    }

    else
    {
      v48 = v44;
    }

    if (*(v40 - 1) <= 1u)
    {
      v49 = v47;
    }

    else
    {
      v49 = v45;
    }

    if (v41 == v48 && v42 == v49)
    {

LABEL_58:
      v34 = v117 + 1;
      ++v36;
      --v37;
      if ((v117 + 1) == v113)
      {
        v116 = v113;
        v5 = v108;
        v6 = a3;
        v10 = v111;
        goto LABEL_110;
      }

      goto LABEL_59;
    }

    v50 = sub_1D72646CC();

    if ((v50 & 1) == 0)
    {
      goto LABEL_58;
    }

    if (!v35)
    {
      break;
    }

    v38 = *v40;
    *v40 = *(v40 - 1);
    *--v40 = v38;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
}

uint64_t sub_1D6727CD0(_BYTE *__dst, _BYTE *__src, _BYTE *a3, _BYTE *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      v42 = v7;
LABEL_54:
      v43 = v6;
      v26 = v6 - 1;
      --v5;
      v27 = v10;
      do
      {
        v29 = *--v27;
        v28 = v29;
        v30 = v10;
        if (v29 <= 1)
        {
          if (v28)
          {
            v32 = 0x676E696461656CLL;
          }

          else
          {
            v32 = 7368564;
          }

          if (v28)
          {
            v31 = 0xE700000000000000;
          }

          else
          {
            v31 = 0xE300000000000000;
          }
        }

        else if (v28 == 2)
        {
          v31 = 0xE800000000000000;
          v32 = 0x676E696C69617274;
        }

        else if (v28 == 3)
        {
          v31 = 0xE600000000000000;
          v32 = 0x6D6F74746F62;
        }

        else
        {
          v31 = 0xE300000000000000;
          v32 = 7105633;
        }

        v7 = v26;
        v33 = *v26;
        v34 = 0x6D6F74746F62;
        if (v33 != 3)
        {
          v34 = 7105633;
        }

        v35 = 0xE600000000000000;
        if (v33 != 3)
        {
          v35 = 0xE300000000000000;
        }

        if (v33 == 2)
        {
          v34 = 0x676E696C69617274;
          v35 = 0xE800000000000000;
        }

        if (v33)
        {
          v36 = 0x676E696461656CLL;
        }

        else
        {
          v36 = 7368564;
        }

        if (v33)
        {
          v37 = 0xE700000000000000;
        }

        else
        {
          v37 = 0xE300000000000000;
        }

        if (v33 <= 1)
        {
          v38 = v36;
        }

        else
        {
          v38 = v34;
        }

        if (v33 <= 1)
        {
          v39 = v37;
        }

        else
        {
          v39 = v35;
        }

        if (v32 == v38 && v31 == v39)
        {
        }

        else
        {
          v40 = sub_1D72646CC();

          if (v40)
          {
            v10 = v30;
            if ((v5 + 1) < v43 || v5 >= v43)
            {
              *v5 = *v7;
            }

            if (v30 > v4)
            {
              v6 = v7;
              if (v7 > v42)
              {
                goto LABEL_54;
              }
            }

            goto LABEL_99;
          }
        }

        v26 = v7;
        if ((v5 + 1) < v30 || v5 >= v30)
        {
          *v5 = *v27;
        }

        --v5;
        v10 = v27;
        v6 = v43;
      }

      while (v27 > v4);
      v10 = v27;
LABEL_102:
      if (v6 == v4)
      {
        goto LABEL_106;
      }

      goto LABEL_107;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1)
    {
      if (v6 < v5)
      {
        v11 = &v4[v8];
        while (1)
        {
          v12 = *v6;
          if (v12 <= 1)
          {
            if (*v6)
            {
              v13 = 0xE700000000000000;
              v14 = 0x676E696461656CLL;
            }

            else
            {
              v13 = 0xE300000000000000;
              v14 = 7368564;
            }
          }

          else if (v12 == 2)
          {
            v13 = 0xE800000000000000;
            v14 = 0x676E696C69617274;
          }

          else if (v12 == 3)
          {
            v13 = 0xE600000000000000;
            v14 = 0x6D6F74746F62;
          }

          else
          {
            v13 = 0xE300000000000000;
            v14 = 7105633;
          }

          v15 = *v4;
          v16 = 0x6D6F74746F62;
          if (v15 != 3)
          {
            v16 = 7105633;
          }

          v17 = 0xE600000000000000;
          if (v15 != 3)
          {
            v17 = 0xE300000000000000;
          }

          if (v15 == 2)
          {
            v16 = 0x676E696C69617274;
            v17 = 0xE800000000000000;
          }

          v18 = 0x676E696461656CLL;
          if (!*v4)
          {
            v18 = 7368564;
          }

          v19 = 0xE700000000000000;
          if (!*v4)
          {
            v19 = 0xE300000000000000;
          }

          if (*v4 <= 1u)
          {
            v20 = v18;
          }

          else
          {
            v20 = v16;
          }

          if (*v4 <= 1u)
          {
            v21 = v19;
          }

          else
          {
            v21 = v17;
          }

          if (v14 == v20 && v13 == v21)
          {
          }

          else
          {
            v22 = sub_1D72646CC();

            if (v22)
            {
              v23 = v6 + 1;
              v24 = v6;
              if (v7 >= v6 && v7 < v23)
              {
                goto LABEL_45;
              }

              goto LABEL_44;
            }
          }

          v25 = v4 + 1;
          v24 = v4;
          v23 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v25)
            {
              goto LABEL_45;
            }
          }

LABEL_44:
          *v7 = *v24;
LABEL_45:
          ++v7;
          v10 = v11;
          if (v4 < v11)
          {
            v6 = v23;
            if (v23 < v5)
            {
              continue;
            }
          }

          v6 = v7;
          goto LABEL_102;
        }
      }

LABEL_99:
      v6 = v7;
      if (v7 != v4)
      {
        goto LABEL_107;
      }

      goto LABEL_106;
    }

    v6 = v7;
  }

  if (v6 != v4)
  {
LABEL_107:
    memmove(v6, v4, v10 - v4);
    return 1;
  }

LABEL_106:
  if (v6 >= v10)
  {
    goto LABEL_107;
  }

  return 1;
}

unint64_t sub_1D67281B8(uint64_t a1)
{
  result = sub_1D67281E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67281E0()
{
  result = qword_1EC88A710;
  if (!qword_1EC88A710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A710);
  }

  return result;
}

unint64_t sub_1D6728234(uint64_t a1)
{
  result = sub_1D672825C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D672825C()
{
  result = qword_1EC88A718;
  if (!qword_1EC88A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A718);
  }

  return result;
}

unint64_t sub_1D67282B0(uint64_t a1)
{
  result = sub_1D67282D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67282D8()
{
  result = qword_1EDF1E690;
  if (!qword_1EDF1E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E690);
  }

  return result;
}

void sub_1D672832C(uint64_t a1)
{
  if (!qword_1EDF1AD40)
  {
    sub_1D5CD8948();
    v1 = sub_1D7262BAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1AD40);
    }
  }
}

void sub_1D67283E4()
{
  if (!qword_1EDF04FD8)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04FD8);
    }
  }
}

uint64_t sub_1D6728490(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

NewsFeed::PuzzlePublishDateFormat_optional __swiftcall PuzzlePublishDateFormat.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PuzzlePublishDateFormat.rawValue.getter()
{
  v1 = 0x6D756964656DLL;
  if (*v0 != 1)
  {
    v1 = 1735290732;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74726F6873;
  }
}

uint64_t sub_1D67285F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6D756964656DLL;
  if (v2 != 1)
  {
    v4 = 1735290732;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x74726F6873;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (*a2 != 1)
  {
    v8 = 1735290732;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x74726F6873;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D67286E0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6728774(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D67287F4(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6728890(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6D756964656DLL;
  if (v2 != 1)
  {
    v5 = 1735290732;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x74726F6873;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::String_optional __swiftcall FCPuzzleProviding.publishDateString(format:)(NewsFeed::PuzzlePublishDateFormat format)
{
  v2 = v1;
  sub_1D6728D5C(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7258AAC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D725891C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = MEMORY[0x1EEE9AC00](v17, v18).n128_u64[0];
  v21 = &v41 - v20;
  v22 = [v2 publishDate];
  if (!v22)
  {
    goto LABEL_7;
  }

  v23 = v22;
  sub_1D72588BC();

  v24 = *(v13 + 32);
  v42 = v12;
  v24(v21, v16, v12);
  sub_1D7258A4C();
  sub_1D725897C();
  (*(v8 + 8))(v11, v7);
  sub_1D7258CBC();
  v25 = sub_1D726203C();
  v26 = sub_1D726203C();

  v27 = sub_1D7258CFC();
  v28 = *(v27 - 8);
  v29 = 0;
  if ((*(v28 + 48))(v6, 1, v27) != 1)
  {
    v29 = sub_1D7258CDC();
    (*(v28 + 8))(v6, v27);
  }

  v30 = [objc_opt_self() dateFormatterWithFormat:v25 localeIdentifier:v26 timezone:v29 forReuse:1];

  if (!v30)
  {

    (*(v13 + 8))(v21, v42);
    v22 = 0;
LABEL_7:
    v39 = 0;
    goto LABEL_8;
  }

  v31 = v30;
  v32 = sub_1D726203C();

  [v31 setLocalizedDateFormatFromTemplate_];

  v33 = v31;
  v34 = sub_1D725881C();
  v35 = [v33 stringFromDate_];

  v36 = sub_1D726207C();
  v38 = v37;

  (*(v13 + 8))(v21, v42);
  v39 = v38;
  v22 = v36;
LABEL_8:
  result.value._object = v39;
  result.value._countAndFlagsBits = v22;
  return result;
}

void sub_1D6728D5C(uint64_t a1)
{
  if (!qword_1EDF43B40)
  {
    sub_1D7258CFC();
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF43B40);
    }
  }
}

unint64_t sub_1D6728DB8()
{
  result = qword_1EC88A720;
  if (!qword_1EC88A720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A720);
  }

  return result;
}

unint64_t sub_1D6728E10()
{
  result = qword_1EC88A728;
  if (!qword_1EC88A728)
  {
    sub_1D6728E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A728);
  }

  return result;
}

void sub_1D6728E68()
{
  if (!qword_1EC88A730)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88A730);
    }
  }
}

void sub_1D6728EF4(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656D6563616C70 && a2 == 0xEA00000000007374)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D6728F84(uint64_t a1)
{
  v2 = sub_1D67291A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6728FC0(uint64_t a1)
{
  v2 = sub_1D67291A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedGroupConfigSidecarConfig.encode(to:)(void *a1)
{
  sub_1D672946C(0, &qword_1EDF02860, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67291A4();

  sub_1D7264B5C();
  v11[1] = v9;
  sub_1D67291F8();
  sub_1D67294D0(&qword_1EDF05198, sub_1D6729248, MEMORY[0x1E69E6300]);
  sub_1D726443C();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D67291A4()
{
  result = qword_1EDF12AD0;
  if (!qword_1EDF12AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12AD0);
  }

  return result;
}

void sub_1D67291F8()
{
  if (!qword_1EDF051A0)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF051A0);
    }
  }
}

unint64_t sub_1D6729248()
{
  result = qword_1EDF12A88;
  if (!qword_1EDF12A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12A88);
  }

  return result;
}

uint64_t FeedGroupConfigSidecarConfig.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D672946C(0, &qword_1EDF03B50, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67291A4();
  sub_1D7264B0C();
  if (!v2)
  {
    sub_1D67291F8();
    sub_1D67294D0(&qword_1EDF05190, sub_1D672953C, MEMORY[0x1E69E6330]);
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D672946C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D67291A4();
    v7 = a3(a1, &type metadata for FeedGroupConfigSidecarConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D67294D0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D67291F8();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D672953C()
{
  result = qword_1EDF12A80;
  if (!qword_1EDF12A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12A80);
  }

  return result;
}

unint64_t sub_1D67295E4()
{
  result = qword_1EC88A738;
  if (!qword_1EC88A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A738);
  }

  return result;
}

unint64_t sub_1D672963C()
{
  result = qword_1EDF12AC0;
  if (!qword_1EDF12AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12AC0);
  }

  return result;
}

unint64_t sub_1D6729694()
{
  result = qword_1EDF12AC8;
  if (!qword_1EDF12AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12AC8);
  }

  return result;
}

unint64_t sub_1D6729750()
{
  result = qword_1EC88A740;
  if (!qword_1EC88A740)
  {
    type metadata accessor for DebugFormatLayoutOrderingModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A740);
  }

  return result;
}

uint64_t type metadata accessor for DebugFormatLayoutOrderingModel(uint64_t a1)
{
  result = qword_1EC88A758;
  if (!qword_1EC88A758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D67297F4(uint64_t a1, uint64_t a2)
{
  sub_1D6729E24(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v7[*(v8 + 56)];
  sub_1D6729CF8(a1, v7);
  sub_1D6729CF8(a2, v9);
  type metadata accessor for DebugFormatLayoutOrderingModel(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *(v7 + 5);
    v32[4] = *(v7 + 4);
    v32[5] = v10;
    v11 = *(v7 + 7);
    v32[6] = *(v7 + 6);
    v32[7] = v11;
    v12 = *(v7 + 1);
    v32[0] = *v7;
    v32[1] = v12;
    v13 = *(v7 + 3);
    v32[2] = *(v7 + 2);
    v32[3] = v13;
    v14 = *(v7 + 16);
    sub_1D6729D5C(v32);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = *(v9 + 80);
      v31[4] = *(v9 + 64);
      v31[5] = v15;
      v16 = *(v9 + 112);
      v31[6] = *(v9 + 96);
      v31[7] = v16;
      v17 = *(v9 + 16);
      v31[0] = *v9;
      v31[1] = v17;
      v18 = *(v9 + 48);
      v31[2] = *(v9 + 32);
      v31[3] = v18;
      v19 = *(v9 + 128);
      sub_1D6729D5C(v31);
      v20 = *(v14 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
      v21 = *(v19 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
      if (*(v20 + 48) == *(v21 + 48) && *(v20 + 56) == *(v21 + 56))
      {
        v23 = 1;
      }

      else
      {
        v23 = sub_1D72646CC();
      }

      return v23 & 1;
    }

LABEL_11:
    sub_1D6729E88(v9, type metadata accessor for DebugFormatLayoutOrderingModel);
    v23 = 0;
    return v23 & 1;
  }

  sub_1D6729DB0(0);
  v25 = *(v24 + 48);
  v26 = *&v7[v25];
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    sub_1D6729E88(v7, type metadata accessor for FormatItemNodeLayoutContext);
    goto LABEL_11;
  }

  v27 = *(v26 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
  v28 = *(*(v9 + v25) + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
  if (*(v27 + 48) == *(v28 + 48) && *(v27 + 56) == *(v28 + 56))
  {
    v23 = 1;
  }

  else
  {
    v23 = sub_1D72646CC();
  }

  sub_1D6729E88(v9, type metadata accessor for FormatItemNodeLayoutContext);
  sub_1D6729E88(v7, type metadata accessor for FormatItemNodeLayoutContext);
  return v23 & 1;
}

BOOL sub_1D6729A74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatLayoutOrderingModel(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v33[-v10];
  sub_1D6729CF8(a1, &v33[-v10]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(v11 + 5);
    v38 = *(v11 + 4);
    v39 = v12;
    v13 = *(v11 + 7);
    v40 = *(v11 + 6);
    v41 = v13;
    v14 = *(v11 + 1);
    v34 = *v11;
    v35 = v14;
    v15 = *(v11 + 3);
    v36 = *(v11 + 2);
    v37 = v15;
    v16 = *(v11 + 16);
    sub_1D6729D5C(&v34);
    v17 = *(v16 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
    swift_beginAccess();
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
  }

  else
  {
    sub_1D6729DB0(0);
    v21 = *(*&v11[*(v20 + 48)] + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
    swift_beginAccess();
    v18 = *(v21 + 16);
    v19 = *(v21 + 24);

    sub_1D6729E88(v11, type metadata accessor for FormatItemNodeLayoutContext);
  }

  sub_1D6729CF8(a2, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *(v7 + 5);
    v38 = *(v7 + 4);
    v39 = v22;
    v23 = *(v7 + 7);
    v40 = *(v7 + 6);
    v41 = v23;
    v24 = *(v7 + 1);
    v34 = *v7;
    v35 = v24;
    v25 = *(v7 + 3);
    v36 = *(v7 + 2);
    v37 = v25;
    v26 = *(v7 + 16);
    sub_1D6729D5C(&v34);
    v27 = *(v26 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
    swift_beginAccess();
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);
  }

  else
  {
    sub_1D6729DB0(0);
    v31 = *(*&v7[*(v30 + 48)] + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
    swift_beginAccess();
    v28 = *(v31 + 16);
    v29 = *(v31 + 24);

    sub_1D6729E88(v7, type metadata accessor for FormatItemNodeLayoutContext);
  }

  if (v19 == v29)
  {
    return v18 <= v28;
  }

  else
  {
    return v19 < v29;
  }
}

uint64_t sub_1D6729CF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatLayoutOrderingModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6729DB0(uint64_t a1)
{
  if (!qword_1EC88A748)
  {
    type metadata accessor for FormatItemNodeLayoutContext(255);
    type metadata accessor for FormatItemNodeDataLayoutAttributes(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88A748);
    }
  }
}

void sub_1D6729E24(uint64_t a1)
{
  if (!qword_1EC88A750)
  {
    type metadata accessor for DebugFormatLayoutOrderingModel(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88A750);
    }
  }
}

uint64_t sub_1D6729E88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6729EE8(uint64_t a1)
{
  sub_1D6729DB0(319);
  if (v1 <= 0x3F)
  {
    sub_1D6729F5C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D6729F5C(uint64_t a1)
{
  if (!qword_1EC88A768)
  {
    type metadata accessor for FormatSupplementaryNodeDataLayoutAttributes(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88A768);
    }
  }
}

uint64_t sub_1D6729FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, __n128 a4@<Q0>)
{
  v89 = a1;
  v102 = a3;
  sub_1D672ADE0(0, a4);
  v94 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v93 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D672AE14(0, &qword_1EC88A778, sub_1D672AD5C, sub_1D5F260A0);
  v101 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v95 = &v88 - v10;
  sub_1D672B644(0, &qword_1EC88A818, MEMORY[0x1E697F948]);
  v98 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v100 = &v88 - v13;
  sub_1D672B714(0, &qword_1EC88A7C8, sub_1D672B214, MEMORY[0x1E6981F40]);
  v99 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v91 = &v88 - v16;
  sub_1D5F7BAC0();
  v92 = v17;
  v90 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v88 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v97 = &v88 - v22;
  sub_1D672B3A4();
  v24 = v23;
  v25 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = &v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v33 = &v88 - v32;
  sub_1D672B284(0, v31);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v37 = &v88 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v96 = (&v88 - v40);
  sub_1D672B714(0, &qword_1EDF331B8, type metadata accessor for FormatPackage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v44 = &v88 - v43;
  v45 = type metadata accessor for FormatPackage(0);
  v46 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v47);
  v49 = &v88 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6FFD324(v44);
  if ((*(v46 + 48))(v44, 1, v45) == 1)
  {
    sub_1D672B778(v44);
    v50 = sub_1D72611CC();
    v51 = v96;
    *v96 = v50;
    *(v51 + 8) = 0;
    v95 = v37;
    *(v51 + 16) = 1;
    sub_1D672B804(0);
    v53 = v51 + *(v52 + 44);
    sub_1D7260EBC();
    v110 = 1;
    v54 = *(v25 + 16);
    v55.n128_f64[0] = v54(v28, v33, v24);
    v109 = 1;
    v56 = v110;
    *v53 = 0;
    *(v53 + 8) = v56;
    sub_1D672B338(0, v55);
    v58 = v57;
    v54((v53 + *(v57 + 48)), v28, v24);
    v59 = v53 + *(v58 + 64);
    v60 = v109;
    *v59 = 0;
    *(v59 + 8) = v60;
    v61 = *(v25 + 8);
    v61(v33, v24);
    v61(v28, v24);
    aBlock = 0;
    LOBYTE(v104) = 1;
    sub_1D7260EDC();
    v62 = v97;
    sub_1D72617DC();
    v63 = v95;
    sub_1D672B9D8(v51, v95, sub_1D672B284);
    v64 = v90;
    v65 = *(v90 + 16);
    v66 = v88;
    v67 = v92;
    v65(v88, v62, v92);
    v68 = v91;
    sub_1D672B9D8(v63, v91, sub_1D672B284);
    sub_1D672B214(0, v69);
    v65((v68 + *(v70 + 48)), v66, v67);
    v94 = *(v64 + 8);
    (v94)(v66, v67);
    sub_1D672B8A4(v63, sub_1D672B284);
    v71 = MEMORY[0x1E6981F40];
    sub_1D672B904(v68, v100, &qword_1EC88A7C8, sub_1D672B214, MEMORY[0x1E6981F40], sub_1D672B714);
    swift_storeEnumTagMultiPayload();
    sub_1D672B4D0();
    sub_1D672B5E0(&qword_1EC88A810, &qword_1EC88A7C8, sub_1D672B214, v72);
    sub_1D726135C();
    sub_1D672B978(v68, &qword_1EC88A7C8, sub_1D672B214, v71, sub_1D672B714);
    (v94)(v97, v67);
    v73 = v96;
    v74 = sub_1D672B284;
  }

  else
  {
    sub_1D5DF6894(v44, v49);
    aBlock = *(v49 + 15);
    swift_getKeyPath();
    v75 = swift_allocObject();
    *(v75 + 16) = v89;
    *(v75 + 24) = a2;
    sub_1D672B714(0, &qword_1EDF43BD0, type metadata accessor for FormatSlotDefinition, MEMORY[0x1E69E62F8]);
    type metadata accessor for DebugFormatPackageTreeSlotView(0);
    sub_1D672AF84(v76);
    sub_1D672BA40(&qword_1EC88A7C0, type metadata accessor for DebugFormatPackageTreeSlotView, &unk_1D72FD800);

    v77 = v93;
    sub_1D72619DC();
    sub_1D672AE88(0);
    *(v77 + *(v78 + 36)) = 0;
    v79 = v77 + *(v94 + 36);
    *v79 = xmmword_1D7286690;
    *(v79 + 16) = xmmword_1D72866A0;
    *(v79 + 32) = 0;
    sub_1D7260EDC();
    sub_1D672B00C(v80);
    v81 = v95;
    sub_1D72617DC();
    sub_1D672B8A4(v77, sub_1D672ADE0);
    v82 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v107 = sub_1D6F34AFC;
    v108 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v104 = 1107296256;
    v105 = sub_1D6E0CD34;
    v106 = &block_descriptor_40;
    v83 = _Block_copy(&aBlock);
    [v82 initWithDynamicProvider_];
    _Block_release(v83);

    aBlock = sub_1D726189C();
    v84 = sub_1D726199C();
    v85 = v100;
    *(v81 + *(v101 + 36)) = v84;
    sub_1D672B904(v81, v85, &qword_1EC88A778, sub_1D672AD5C, sub_1D5F260A0, sub_1D672AE14);
    swift_storeEnumTagMultiPayload();
    sub_1D672B4D0();
    sub_1D672B5E0(&qword_1EC88A810, &qword_1EC88A7C8, sub_1D672B214, v86);
    sub_1D726135C();
    sub_1D672B978(v81, &qword_1EC88A778, sub_1D672AD5C, sub_1D5F260A0, sub_1D672AE14);
    v74 = type metadata accessor for FormatPackage;
    v73 = v49;
  }

  return sub_1D672B8A4(v73, v74);
}

uint64_t sub_1D672AACC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for DebugFormatPackageTreeSlotView(0);
  sub_1D672B9D8(a1, a2 + *(v4 + 20), type metadata accessor for FormatSlotDefinition);
  type metadata accessor for DebugFormatPackageTree(0);
  sub_1D672BA40(&qword_1EC885268, type metadata accessor for DebugFormatPackageTree, &unk_1D7380468);

  result = sub_1D7260F8C();
  *a2 = result;
  a2[1] = v6;
  return result;
}

double sub_1D672AB84@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x73746F6C53;
  *(a1 + 8) = 0xE500000000000000;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 256;
  return result;
}

uint64_t sub_1D672ABB4()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = v1;
  *(v3 + 40) = 2;
  *(v3 + 48) = 1;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = v1;
  *(v4 + 40) = 2;
  *(v4 + 48) = 1;
  swift_retain_n();
  sub_1D72619BC();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  sub_1D672B644(0, &qword_1EC88A770, MEMORY[0x1E697F960]);
  sub_1D5F7BB40();
  sub_1D672B410(v6);

  return sub_1D7260FFC();
}

void sub_1D672AD5C(uint64_t a1, __n128 a2)
{
  if (!qword_1EC88A780)
  {
    sub_1D672ADE0(255, a2);
    sub_1D672B00C(v2);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC88A780);
    }
  }
}

void sub_1D672AE14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1D726101C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D672AEBC(uint64_t a1, __n128 a2)
{
  if (!qword_1EC88A798)
  {
    sub_1D672B714(255, &qword_1EDF43BD0, type metadata accessor for FormatSlotDefinition, MEMORY[0x1E69E62F8]);
    type metadata accessor for DebugFormatPackageTreeSlotView(255);
    sub_1D672AF84(v2);
    v3 = sub_1D72619FC();
    if (!v4)
    {
      atomic_store(v3, &qword_1EC88A798);
    }
  }
}

unint64_t sub_1D672AF84(__n128 a1)
{
  result = qword_1EC88A7A0;
  if (!qword_1EC88A7A0)
  {
    sub_1D672B714(255, &qword_1EDF43BD0, type metadata accessor for FormatSlotDefinition, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A7A0);
  }

  return result;
}

unint64_t sub_1D672B00C(__n128 a1)
{
  result = qword_1EC88A7A8;
  if (!qword_1EC88A7A8)
  {
    sub_1D672ADE0(255, a1);
    sub_1D672B0BC();
    sub_1D672BA40(&qword_1EC8845E8, sub_1D5F7B9E4, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A7A8);
  }

  return result;
}

unint64_t sub_1D672B0BC()
{
  result = qword_1EC88A7B0;
  if (!qword_1EC88A7B0)
  {
    sub_1D672AE88(255);
    sub_1D672B16C(v1);
    sub_1D672BA40(&qword_1EC881138, sub_1D5F25A44, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A7B0);
  }

  return result;
}

unint64_t sub_1D672B16C(__n128 a1)
{
  result = qword_1EC88A7B8;
  if (!qword_1EC88A7B8)
  {
    sub_1D672AEBC(255, a1);
    sub_1D672BA40(&qword_1EC88A7C0, type metadata accessor for DebugFormatPackageTreeSlotView, &unk_1D72FD800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A7B8);
  }

  return result;
}

void sub_1D672B214(uint64_t a1, __n128 a2)
{
  if (!qword_1EC88A7D0)
  {
    sub_1D672B284(255, a2);
    sub_1D5F7BAC0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88A7D0);
    }
  }
}

void sub_1D672B284(uint64_t a1, __n128 a2)
{
  if (!qword_1EC88A7D8)
  {
    sub_1D672B714(255, &qword_1EC88A7E0, sub_1D672B338, MEMORY[0x1E6981F40]);
    sub_1D672B5E0(&qword_1EC88A7F8, &qword_1EC88A7E0, sub_1D672B338, v2);
    v3 = sub_1D726197C();
    if (!v4)
    {
      atomic_store(v3, &qword_1EC88A7D8);
    }
  }
}

void sub_1D672B338(uint64_t a1, __n128 a2)
{
  if (!qword_1EC88A7E8)
  {
    sub_1D672B3A4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC88A7E8);
    }
  }
}

void sub_1D672B3A4()
{
  if (!qword_1EC88A7F0)
  {
    v0 = sub_1D7260ECC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88A7F0);
    }
  }
}

unint64_t sub_1D672B410(__n128 a1)
{
  result = qword_1EC88A800;
  if (!qword_1EC88A800)
  {
    sub_1D672B644(255, &qword_1EC88A770, MEMORY[0x1E697F960]);
    sub_1D672B4D0();
    sub_1D672B5E0(&qword_1EC88A810, &qword_1EC88A7C8, sub_1D672B214, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A800);
  }

  return result;
}

unint64_t sub_1D672B4D0()
{
  result = qword_1EC88A808;
  if (!qword_1EC88A808)
  {
    sub_1D672AE14(255, &qword_1EC88A778, sub_1D672AD5C, sub_1D5F260A0);
    sub_1D672ADE0(255, v1);
    sub_1D672B00C(v2);
    swift_getOpaqueTypeConformance2();
    sub_1D672BA40(&qword_1EC8811A8, sub_1D5F260A0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A808);
  }

  return result;
}

uint64_t sub_1D672B5E0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), __n128 a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D672B714(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D672B644(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D672AE14(255, &qword_1EC88A778, sub_1D672AD5C, sub_1D5F260A0);
    v7 = v6;
    sub_1D672B714(255, &qword_1EC88A7C8, sub_1D672B214, MEMORY[0x1E6981F40]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D672B714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D672B778(uint64_t a1)
{
  sub_1D672B714(0, &qword_1EDF331B8, type metadata accessor for FormatPackage, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D672B804(uint64_t a1)
{
  if (!qword_1EC88A820)
  {
    sub_1D672B714(255, &qword_1EC88A7E0, sub_1D672B338, MEMORY[0x1E6981F40]);
    v1 = sub_1D7260F3C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC88A820);
    }
  }
}

uint64_t sub_1D672B8A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D672B904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D672B978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D672B9D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D672BA40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D672BA88(uint64_t a1)
{
  if (!qword_1EC88A830)
  {
    sub_1D672B644(255, &qword_1EC88A770, MEMORY[0x1E697F960]);
    sub_1D5F7BB40();
    sub_1D672B410(v1);
    v2 = sub_1D726100C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC88A830);
    }
  }
}

uint64_t NativeAdHeadline.dragItem.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D7263D4C();

  v2 = [sub_1D726071C() articleID];
  swift_unknownObjectRelease();
  v3 = sub_1D726207C();
  v5 = v4;

  MEMORY[0x1DA6F9910](v3, v5);

  v6 = objc_allocWithZone(MEMORY[0x1E695DFF8]);
  v7 = sub_1D726203C();

  v8 = [v6 initWithString_];

  if (v8)
  {
    sub_1D726220C();
    v9 = sub_1D726323C();

    if (v9)
    {
      v10 = [sub_1D726071C() title];
      swift_unknownObjectRelease();
      if (v10)
      {
        sub_1D726207C();
      }

      sub_1D725F83C();
      v11 = 0;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

  v12 = sub_1D725F84C();
  v13 = *(*(v12 - 8) + 56);

  return v13(a1, v11, 1, v12);
}

uint64_t DebugNativeAdHeadline.dragItem.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D7263D4C();

  v2 = [sub_1D7260A5C() articleID];
  swift_unknownObjectRelease();
  v3 = sub_1D726207C();
  v5 = v4;

  MEMORY[0x1DA6F9910](v3, v5);

  v6 = objc_allocWithZone(MEMORY[0x1E695DFF8]);
  v7 = sub_1D726203C();

  v8 = [v6 initWithString_];

  if (v8)
  {
    v9 = [sub_1D7260A5C() title];
    swift_unknownObjectRelease();
    if (v9)
    {
      sub_1D726207C();
    }

    sub_1D725F83C();
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = sub_1D725F84C();
  v12 = *(*(v11 - 8) + 56);

  return v12(a1, v10, 1, v11);
}

uint64_t sub_1D672BF24()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D7264A0C();
  if (v2)
  {
    v1 = qword_1D72E31D0[v1];
  }

  else
  {
    MEMORY[0x1DA6FC0B0](2);
  }

  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D672BF90()
{
  v1 = *v0;
  if (v0[1])
  {
    v1 = qword_1D72E31D0[v1];
  }

  else
  {
    MEMORY[0x1DA6FC0B0](2);
  }

  return MEMORY[0x1DA6FC0B0](v1);
}

uint64_t sub_1D672BFE0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1D7264A0C();
  if (v3)
  {
    v2 = qword_1D72E31D0[v2];
  }

  else
  {
    MEMORY[0x1DA6FC0B0](2);
  }

  MEMORY[0x1DA6FC0B0](v2);
  return sub_1D7264A5C();
}

BOOL sub_1D672C048(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v3 > 2)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return v7 == 1;
    }

    v4 = v3 == 2;
  }

  else if (v2)
  {
    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

unint64_t sub_1D672C0C4()
{
  result = qword_1EC88A838;
  if (!qword_1EC88A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A838);
  }

  return result;
}

uint64_t FeedReloadChecker.__allocating_init(changes:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void FeedReloadChecker.shouldReload(headline:)(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = a1;
    v5 = 0;
    while (1)
    {
      if (v5 >= *(v2 + 16))
      {
        __break(1u);
        return;
      }

      v6 = v2 + 32 + 16 * v5;
      if (*(v6 + 8) - 1 >= 2)
      {
        break;
      }

LABEL_5:
      if (++v5 == v3)
      {
        return;
      }
    }

    v7 = *v6;
    if (*(v6 + 8))
    {

      v29 = [v4 sourceChannelID];
      if (!v29)
      {
        goto LABEL_4;
      }

      v30 = v29;
      v31 = sub_1D726207C();
      v33 = v32;

      if (*(v7 + 16))
      {
        sub_1D7264A0C();
        sub_1D72621EC();
        v34 = sub_1D7264A5C();
        v35 = -1 << *(v7 + 32);
        v36 = v34 & ~v35;
        if ((*(v7 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
        {
          v37 = ~v35;
          do
          {
            v38 = (*(v7 + 48) + 16 * v36);
            v39 = *v38 == v31 && v38[1] == v33;
            if (v39 || (sub_1D72646CC() & 1) != 0)
            {
              goto LABEL_41;
            }

            v36 = (v36 + 1) & v37;
          }

          while (((*(v7 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) != 0);
        }

LABEL_39:

        v4 = a1;
        goto LABEL_5;
      }
    }

    else
    {

      v8 = [v4 identifier];
      v9 = sub_1D726207C();
      v11 = v10;

      if (*(v7 + 16))
      {
        sub_1D7264A0C();
        sub_1D72621EC();
        v12 = sub_1D7264A5C();
        v13 = -1 << *(v7 + 32);
        v14 = v12 & ~v13;
        if ((*(v7 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
        {
          v15 = ~v13;
          do
          {
            v16 = (*(v7 + 48) + 16 * v14);
            v17 = *v16 == v9 && v16[1] == v11;
            if (v17 || (sub_1D72646CC() & 1) != 0)
            {
              goto LABEL_41;
            }

            v14 = (v14 + 1) & v15;
          }

          while (((*(v7 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
        }
      }

      v4 = a1;
      v18 = [a1 sourceChannelID];
      if (!v18)
      {
        goto LABEL_4;
      }

      v19 = v18;
      v20 = sub_1D726207C();
      v22 = v21;

      if (*(v7 + 16))
      {
        sub_1D7264A0C();
        sub_1D72621EC();
        v23 = sub_1D7264A5C();
        v24 = -1 << *(v7 + 32);
        v25 = v23 & ~v24;
        if ((*(v7 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
        {
          v26 = ~v24;
          while (1)
          {
            v27 = (*(v7 + 48) + 16 * v25);
            v28 = *v27 == v20 && v27[1] == v22;
            if (v28 || (sub_1D72646CC() & 1) != 0)
            {
              break;
            }

            v25 = (v25 + 1) & v26;
            if (((*(v7 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
            {
              goto LABEL_39;
            }
          }

LABEL_41:

          return;
        }

        goto LABEL_39;
      }
    }

LABEL_4:

    goto LABEL_5;
  }
}

void FeedReloadChecker.shouldReload(puzzle:)(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return;
  }

  v4 = 0;
  while (1)
  {
    if (v4 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v5 = v2 + 32 + 16 * v4;
    if (*(v5 + 8) == 1)
    {
      break;
    }

LABEL_4:
    if (++v4 == v3)
    {
      return;
    }
  }

  v6 = *v5;

  v7 = [a1 identifier];
  v8 = sub_1D726207C();
  v10 = v9;

  if (!*(v6 + 16) || (sub_1D7264A0C(), sub_1D72621EC(), v11 = sub_1D7264A5C(), v12 = -1 << *(v6 + 32), v13 = v11 & ~v12, ((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0))
  {
LABEL_3:

    goto LABEL_4;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = (*(v6 + 48) + 16 * v13);
    v16 = *v15 == v8 && v15[1] == v10;
    if (v16 || (sub_1D72646CC() & 1) != 0)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_3;
    }
  }
}

void FeedReloadChecker.shouldReload(puzzleStatistic:)(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return;
  }

  v5 = 0;
  v6 = v2 + 32;
  while (1)
  {
    if (v5 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v7 = (v6 + 16 * v5);
    if (*(v7 + 8) == 2)
    {
      break;
    }

LABEL_4:
    if (++v5 == v3)
    {
      return;
    }
  }

  v8 = *v7;
  v9 = *a1;

  v10 = [v9 identifier];
  v11 = sub_1D726207C();
  v13 = v12;

  type metadata accessor for PuzzleStatistic(0);
  PuzzleStatisticCategory.statisticType.getter(&v29);
  v14 = 0x53646570756F7267;
  if (v29 != 9)
  {
    v14 = 0xD000000000000015;
  }

  v15 = 0x80000001D73B7480;
  if (v29 == 9)
  {
    v15 = 0xEC00000073746174;
  }

  if (v29 == 8)
  {
    v14 = 0xD00000000000001DLL;
  }

  v16 = 0x80000001D73B7430;
  if (v29 == 8)
  {
    v15 = 0x80000001D73B7450;
  }

  if (v29 == 6)
  {
    v17 = 0xD00000000000001CLL;
  }

  else
  {
    v17 = 0xD00000000000001DLL;
  }

  if (v29 == 6)
  {
    v16 = 0x80000001D73B7410;
  }

  if (v29 == 5)
  {
    v17 = 0xD00000000000001CLL;
    v16 = 0x80000001D73B73F0;
  }

  if (v29 <= 7u)
  {
    v14 = v17;
    v15 = v16;
  }

  v18 = 0x5374636566726570;
  if (v29 != 3)
  {
    v18 = 0x74615265766C6F73;
  }

  v19 = 0xE900000000000065;
  if (v29 == 3)
  {
    v19 = 0xED00006465766C6FLL;
  }

  if (v29 == 2)
  {
    v18 = 0x5373656C7A7A7570;
    v19 = 0xED00006465766C6FLL;
  }

  v20 = 0x53747365676E6F6CLL;
  if (v29)
  {
    v20 = 0x53746E6572727563;
  }

  if (v29 <= 1u)
  {
    v18 = v20;
    v19 = 0xED00006B61657274;
  }

  if (v29 <= 4u)
  {
    v21 = v18;
  }

  else
  {
    v21 = v14;
  }

  if (v29 <= 4u)
  {
    v22 = v19;
  }

  else
  {
    v22 = v15;
  }

  MEMORY[0x1DA6F9910](v21, v22);

  if (!*(v8 + 16) || (sub_1D7264A0C(), sub_1D72621EC(), v23 = sub_1D7264A5C(), v24 = -1 << *(v8 + 32), v25 = v23 & ~v24, ((*(v8 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0))
  {
LABEL_3:

    v6 = v2 + 32;
    goto LABEL_4;
  }

  v26 = ~v24;
  while (1)
  {
    v27 = (*(v8 + 48) + 16 * v25);
    v28 = *v27 == v11 && v27[1] == v13;
    if (v28 || (sub_1D72646CC() & 1) != 0)
    {
      break;
    }

    v25 = (v25 + 1) & v26;
    if (((*(v8 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
      goto LABEL_3;
    }
  }
}

void sub_1D672C9E4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return;
  }

  v4 = 0;
  while (1)
  {
    if (v4 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v5 = v2 + 32 + 16 * v4;
    if (*(v5 + 8) >= 3u)
    {
      break;
    }

LABEL_4:
    if (++v4 == v3)
    {
      return;
    }
  }

  v6 = *v5;

  v7 = [objc_msgSend(a1 sourceChannel)];
  swift_unknownObjectRelease();
  v8 = sub_1D726207C();
  v10 = v9;

  if (!*(v6 + 16) || (sub_1D7264A0C(), sub_1D72621EC(), v11 = sub_1D7264A5C(), v12 = -1 << *(v6 + 32), v13 = v11 & ~v12, ((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0))
  {
LABEL_3:

    goto LABEL_4;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = (*(v6 + 48) + 16 * v13);
    v16 = *v15 == v8 && v15[1] == v10;
    if (v16 || (sub_1D72646CC() & 1) != 0)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_3;
    }
  }
}

void FeedReloadChecker.shouldReload(formatGroup:)()
{
  v1 = v0;
  sub_1D5B5D160(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for FormatWebEmbed.Resolved(0);
  MEMORY[0x1EEE9AC00](v102, v6);
  v8 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v101 = (&v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for FormatContentSlotItemResolution(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FormatFeedGroup(0);
  v21 = FormatContent.Resolved.itemAuxiliaries.getter();
  v22 = *(v21 + 16);
  if (!v22)
  {
LABEL_78:

    return;
  }

  v23 = 0;
  v24 = v21 + 32;
  v98 = v5;
  v99 = v0;
  v97 = v8;
  v103 = v12;
  v104 = v17;
  v100 = v21;
  v91 = v22;
  v90 = v21 + 32;
  while (1)
  {
    if (v23 >= *(v21 + 16))
    {
      goto LABEL_86;
    }

    v25 = *(v24 + 16 * v23);
    v105 = *(v25 + 16);
    if (v105)
    {
      break;
    }

LABEL_77:
    if (++v23 == v22)
    {
      goto LABEL_78;
    }
  }

  v95 = v23;
  v107 = v25 + ((*(v17 + 80) + 32) & ~*(v17 + 80));

  v26 = 0;
  v106 = v25;
  while (1)
  {
    if (v26 >= *(v25 + 16))
    {
      __break(1u);
      goto LABEL_83;
    }

    sub_1D672D6F4(v107 + *(v17 + 72) * v26, v20, type metadata accessor for FormatContentSlotItemResolution);
    sub_1D672D6F4(v20, v15, type metadata accessor for FormatContentSlotItemObject.Resolved);
    sub_1D672D694(v20, type metadata accessor for FormatContentSlotItemResolution);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 4)
    {
      break;
    }

    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload != 7)
      {
LABEL_6:
        sub_1D672D694(v15, type metadata accessor for FormatContentSlotItemObject.Resolved);
        goto LABEL_7;
      }

      v31 = *v15;
      v32 = *(v1 + 16);
      v33 = *(v32 + 16);
      if (v33)
      {
        v34 = 0;
        v35 = v32 + 32;
        v96 = *v15;
        v94 = v32;
        v93 = v33;
        v92 = v32 + 32;
        while (v34 < *(v32 + 16))
        {
          v42 = (v35 + 16 * v34);
          if (*(v42 + 8) >= 3u)
          {
            v43 = *v42;

            v44 = [objc_msgSend(v31 sourceChannel)];
            swift_unknownObjectRelease();
            v45 = sub_1D726207C();
            v47 = v46;

            if (*(v43 + 16))
            {
              sub_1D7264A0C();
              sub_1D72621EC();
              v48 = sub_1D7264A5C();
              v49 = -1 << *(v43 + 32);
              v50 = v48 & ~v49;
              if ((*(v43 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50))
              {
                v51 = ~v49;
                while (1)
                {
                  v52 = (*(v43 + 48) + 16 * v50);
                  v53 = *v52 == v45 && v52[1] == v47;
                  if (v53 || (sub_1D72646CC() & 1) != 0)
                  {
                    break;
                  }

                  v50 = (v50 + 1) & v51;
                  if (((*(v43 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
                  {
                    goto LABEL_25;
                  }
                }

LABEL_79:

                return;
              }
            }

LABEL_25:

            v17 = v104;
            v31 = v96;
            v32 = v94;
            v33 = v93;
            v35 = v92;
          }

          if (++v34 == v33)
          {
LABEL_75:

            v5 = v98;
            v1 = v99;
            v8 = v97;
            goto LABEL_7;
          }
        }

        goto LABEL_84;
      }

      goto LABEL_71;
    }

    if (EnumCaseMultiPayload == 5)
    {
      goto LABEL_6;
    }

    v38 = v101;
    sub_1D5D53A80(v15, v101, type metadata accessor for PuzzleStatistic);
    FeedReloadChecker.shouldReload(puzzleStatistic:)(v38);
    v40 = v39;
    v41 = v38;
    v17 = v104;
    sub_1D672D694(v41, type metadata accessor for PuzzleStatistic);
    if (v40)
    {
      goto LABEL_81;
    }

LABEL_7:
    ++v26;
    v25 = v106;
    if (v26 == v105)
    {

      v21 = v100;
      v22 = v91;
      v23 = v95;
      v24 = v90;
      goto LABEL_77;
    }
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload != 3)
    {
      v54 = *v15;
      v55 = *(v1 + 16);
      v56 = *(v55 + 16);
      if (!v56)
      {
LABEL_74:
        swift_unknownObjectRelease();
        goto LABEL_7;
      }

      v57 = 0;
      v58 = v55 + 32;
      v96 = *v15;
      v94 = v55;
      v93 = v56;
      v92 = v55 + 32;
      while (v57 < *(v55 + 16))
      {
        v59 = (v58 + 16 * v57);
        if (*(v59 + 8) == 1)
        {
          v60 = *v59;

          v61 = [v54 identifier];
          v62 = sub_1D726207C();
          v64 = v63;

          if (*(v60 + 16))
          {
            sub_1D7264A0C();
            sub_1D72621EC();
            v65 = sub_1D7264A5C();
            v66 = -1 << *(v60 + 32);
            v67 = v65 & ~v66;
            if ((*(v60 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67))
            {
              v68 = ~v66;
              while (1)
              {
                v69 = (*(v60 + 48) + 16 * v67);
                v70 = *v69 == v62 && v69[1] == v64;
                if (v70 || (sub_1D72646CC() & 1) != 0)
                {
                  break;
                }

                v67 = (v67 + 1) & v68;
                if (((*(v60 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
                {
                  goto LABEL_41;
                }
              }

              swift_unknownObjectRelease();
              return;
            }
          }

LABEL_41:

          v5 = v98;
          v1 = v99;
          v54 = v96;
          v8 = v97;
          v17 = v104;
          v55 = v94;
          v56 = v93;
          v58 = v92;
        }

        if (++v57 == v56)
        {
          goto LABEL_74;
        }
      }

LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    sub_1D5D53A80(v15, v8, type metadata accessor for FormatWebEmbed.Resolved);
    sub_1D672D6F4(&v8[*(v102 + 36)], v5, sub_1D5B5D160);
    sub_1D5B5D194(0);
    v29 = v28;
    v30 = *(v28 - 8);
    if ((*(v30 + 48))(v5, 1, v28) == 1)
    {
      sub_1D672D694(v5, sub_1D5B5D160);
      sub_1D672D694(v8, type metadata accessor for FormatWebEmbed.Resolved);
    }

    else
    {
      sub_1D725BF7C();
      v87 = v108;
      (*(v30 + 8))(v5, v29);
      FeedReloadChecker.shouldReload(headline:)(v87);
      v89 = v88;
      v17 = v104;
      swift_unknownObjectRelease();
      sub_1D672D694(v8, type metadata accessor for FormatWebEmbed.Resolved);
      if (v89)
      {
LABEL_81:

        return;
      }
    }

    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    FeedReloadChecker.shouldReload(headline:)(*v15);
    v37 = v36;
    swift_unknownObjectRelease();
    if (v37)
    {
      goto LABEL_81;
    }

    goto LABEL_7;
  }

  v31 = *v15;
  v71 = *(v1 + 16);
  v72 = *(v71 + 16);
  if (!v72)
  {
LABEL_71:

    goto LABEL_7;
  }

  v73 = 0;
  v74 = v71 + 32;
  v96 = *v15;
  v94 = v71;
  v93 = v72;
  v92 = v71 + 32;
  while (v73 < *(v71 + 16))
  {
    v75 = (v74 + 16 * v73);
    if (*(v75 + 8) >= 3u)
    {
      v76 = *v75;

      v77 = [objc_msgSend(v31 sourceChannel)];
      swift_unknownObjectRelease();
      v78 = sub_1D726207C();
      v80 = v79;

      if (*(v76 + 16))
      {
        sub_1D7264A0C();
        sub_1D72621EC();
        v81 = sub_1D7264A5C();
        v82 = -1 << *(v76 + 32);
        v83 = v81 & ~v82;
        if ((*(v76 + 56 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83))
        {
          v84 = ~v82;
          do
          {
            v85 = (*(v76 + 48) + 16 * v83);
            v86 = *v85 == v78 && v85[1] == v80;
            if (v86 || (sub_1D72646CC() & 1) != 0)
            {
              goto LABEL_79;
            }

            v83 = (v83 + 1) & v84;
          }

          while (((*(v76 + 56 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83) & 1) != 0);
        }
      }

      v17 = v104;
      v31 = v96;
      v71 = v94;
      v72 = v93;
      v74 = v92;
    }

    if (++v73 == v72)
    {
      goto LABEL_75;
    }
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
}

uint64_t FeedReloadChecker.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D672D694(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D672D6F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D672D768(uint64_t a1, unsigned int a2)
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

uint64_t sub_1D672D7B0(uint64_t result, unsigned int a2, unsigned int a3)
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

void PuzzleAccessoryInputConfiguration.init(with:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_19;
  }

  v4 = sub_1D5B69D90(1701869940, 0xE400000000000000);
  if (v5)
  {
    sub_1D5B76B10(*(a1 + 56) + 32 * v4, &v40);
    sub_1D6730F48();
    if (swift_dynamicCast())
    {

LABEL_20:
      *(a2 + 64) = 0;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }
  }

  if (!*(a1 + 16) || (v6 = sub_1D5B69D90(1701869940, 0xE400000000000000), (v7 & 1) == 0))
  {
LABEL_19:

    v40 = 0u;
    v41 = 0u;
    sub_1D5B88B60(&v40, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8);
    goto LABEL_20;
  }

  sub_1D5B76B10(*(a1 + 56) + 32 * v6, &v40);
  sub_1D5B88B60(&v40, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8);
  if (!*(a1 + 16) || (v8 = sub_1D5B69D90(25705, 0xE200000000000000), (v9 & 1) == 0) || (sub_1D5B76B10(*(a1 + 56) + 32 * v8, &v40), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v26 = sub_1D725C42C();
    __swift_project_value_buffer(v26, qword_1EDFFCFA8);

    v17 = sub_1D725C3FC();
    v18 = sub_1D7262EBC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v40 = v20;
      *v19 = 136315138;
      v27 = sub_1D7261D4C();
      v29 = v28;

      v30 = sub_1D5BC5100(v27, v29, &v40);

      *(v19 + 4) = v30;
      v25 = "Failed parsing PuzzleAccessoryInputConfig. Invalid id entry: %s";
      goto LABEL_25;
    }

LABEL_30:

    goto LABEL_31;
  }

  v10 = v46;
  if (!*(a1 + 16) || (v11 = v45, v12 = sub_1D5B69D90(1701869940, 0xE400000000000000), (v13 & 1) == 0) || (sub_1D5B76B10(*(a1 + 56) + 32 * v12, &v40), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v31 = sub_1D725C42C();
    __swift_project_value_buffer(v31, qword_1EDFFCFA8);

    v17 = sub_1D725C3FC();
    v18 = sub_1D7262EBC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v40 = v20;
      *v19 = 136315138;
      v32 = sub_1D7261D4C();
      v34 = v33;

      v35 = sub_1D5BC5100(v32, v34, &v40);

      *(v19 + 4) = v35;
      v25 = "Failed parsing PuzzleAccessoryInputConfig. Invalid type entry: %s";
      goto LABEL_25;
    }

    goto LABEL_30;
  }

  sub_1D6730014(v45, v46, a1, &v40);

  v14 = v41;
  v15 = v43;
  if (v41 >> 8 == 0xFFFFFFFF && v43 <= 3)
  {

    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v16 = sub_1D725C42C();
    __swift_project_value_buffer(v16, qword_1EDFFCFA8);

    v17 = sub_1D725C3FC();
    v18 = sub_1D7262EBC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v40 = v20;
      *v19 = 136315138;
      v21 = sub_1D7261D4C();
      v23 = v22;

      v24 = sub_1D5BC5100(v21, v23, &v40);

      *(v19 + 4) = v24;
      v25 = "Failed parsing PuzzleAccessoryInputConfig. Invalid inputType entry: %s";
LABEL_25:
      _os_log_impl(&dword_1D5B42000, v17, v18, v25, v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1DA6FD500](v20, -1, -1);
      MEMORY[0x1DA6FD500](v19, -1, -1);
LABEL_31:

      goto LABEL_20;
    }

    goto LABEL_30;
  }

  v39 = v44;
  v37 = *(&v41 + 1);
  v36 = v42;
  v38 = v40;

  *a2 = v11;
  *(a2 + 8) = v10;
  *(a2 + 16) = v38;
  *(a2 + 32) = v14;
  *(a2 + 40) = v37;
  *(a2 + 48) = v36;
  *(a2 + 56) = v15;
  *(a2 + 64) = v39;
}

void __swiftcall PuzzleAccessoryHintConfig.init(text:direction:number:textFormat:visibilityOptions:)(NewsFeed::PuzzleAccessoryHintConfig *__return_ptr retstr, Swift::String_optional text, Swift::String_optional direction, Swift::String_optional number, Swift::String_optional textFormat, NewsFeed::PuzzleAccessoryHintConfig::PuzzleAccessoryHintVisibilityOptions visibilityOptions)
{
  object = textFormat.value._object;
  v7 = number.value._object;
  countAndFlagsBits = number.value._countAndFlagsBits;
  v9 = text.value._object;
  v10 = text.value._countAndFlagsBits;
  v12 = *visibilityOptions.rawValue;
  if (direction.value._object)
  {
    v13 = sub_1D72641CC();

    if (v13 == 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = NewsFeed_PuzzleAccessoryHintConfig_Direction_right;
    }

    if (object)
    {
      goto LABEL_9;
    }

LABEL_13:
    v17 = NewsFeed_PuzzleAccessoryHintConfig_TextFormat_none;
    goto LABEL_14;
  }

  v15 = NewsFeed_PuzzleAccessoryHintConfig_Direction_unknownDefault;
  if (!textFormat.value._object)
  {
    goto LABEL_13;
  }

LABEL_9:
  v16 = sub_1D72641CC();

  v17 = v16 == 1;
  if (v16 == 2)
  {
    v17 = NewsFeed_PuzzleAccessoryHintConfig_TextFormat_html;
  }

LABEL_14:
  retstr->text.value._countAndFlagsBits = v10;
  retstr->text.value._object = v9;
  retstr->direction.value = v15;
  retstr->number.value._countAndFlagsBits = countAndFlagsBits;
  retstr->number.value._object = v7;
  retstr->textFormat = v17;
  retstr->visibilityOptions.rawValue = v12;
}

__n128 PuzzleAccessoryInputConfiguration.init(identifier:inputType:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 + 48);
  *a4 = a1;
  *(a4 + 8) = a2;
  v5 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v5;
  result = *(a3 + 32);
  *(a4 + 48) = result;
  *(a4 + 64) = v4;
  return result;
}

NewsFeed::PuzzleAccessoryHintConfig::Direction_optional __swiftcall PuzzleAccessoryHintConfig.Direction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

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

uint64_t PuzzleAccessoryHintConfig.Direction.rawValue.getter()
{
  if (*v0)
  {
    return 1853321060;
  }

  else
  {
    return 0x7468676972;
  }
}

uint64_t sub_1D672DFCC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1853321060;
  }

  else
  {
    v3 = 0x7468676972;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1853321060;
  }

  else
  {
    v5 = 0x7468676972;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D672E068()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D672E0E0(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D672E144(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D672E1B8(char *a2@<X8>)
{
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D672E218(uint64_t *a1@<X8>)
{
  v2 = 1853321060;
  if (!*v1)
  {
    v2 = 0x7468676972;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

NewsFeed::PuzzleAccessoryHintConfig::TextFormat_optional __swiftcall PuzzleAccessoryHintConfig.TextFormat.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PuzzleAccessoryHintConfig.TextFormat.rawValue.getter()
{
  v1 = 0x6E776F646B72616DLL;
  if (*v0 != 1)
  {
    v1 = 1819112552;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1D672E3A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6E776F646B72616DLL;
  if (v2 != 1)
  {
    v4 = 1819112552;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6E776F646B72616DLL;
  if (*a2 != 1)
  {
    v8 = 1819112552;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D672E490()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D672E524(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D672E5A4(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D672E640(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6E776F646B72616DLL;
  if (v2 != 1)
  {
    v5 = 1819112552;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t PuzzleAccessoryHintConfig.text.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PuzzleAccessoryHintConfig.number.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1D672E8C4()
{
  v1 = *v0;
  v2 = 1954047348;
  v3 = 0x7265626D756ELL;
  v4 = 0x6D726F4674786574;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F69746365726964;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D672E960@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D67322B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D672E988(uint64_t a1)
{
  v2 = sub_1D6730F94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D672E9C4(uint64_t a1)
{
  v2 = sub_1D6730F94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PuzzleAccessoryHintConfig.encode(to:)(void *a1)
{
  sub_1D6731740(0, &qword_1EC88A848, sub_1D6730F94, &type metadata for PuzzleAccessoryHintConfig.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v15 - v7;
  v20 = *(v1 + 16);
  v9 = *(v1 + 24);
  v18 = *(v1 + 32);
  v19 = v9;
  v17 = *(v1 + 40);
  v16 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6730F94();
  v10 = v4;
  sub_1D7264B5C();
  v29 = 0;
  v11 = v21;
  sub_1D726437C();
  if (!v11)
  {
    v12 = v17;
    v13 = v16;
    v28 = v20;
    v27 = 1;
    sub_1D6730FE8();
    sub_1D72643BC();
    v26 = 2;
    sub_1D726437C();
    v25 = v12;
    v24 = 3;
    sub_1D673103C();
    sub_1D726443C();
    v22 = v13;
    v23 = 4;
    sub_1D6731090();
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v10);
}

void PuzzleAccessoryHintConfig.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6731740(0, &qword_1EC88A870, sub_1D6730F94, &type metadata for PuzzleAccessoryHintConfig.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v23 - v9;
  v11 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1D6730F94();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    v12 = v7;
    v35 = 0;
    v13 = v6;
    v14 = sub_1D726422C();
    v16 = v15;
    v17 = v14;
    v33 = 1;
    sub_1D67310E4();
    sub_1D726427C();
    v18 = v34;
    v32 = 2;
    v25 = sub_1D726422C();
    v26 = v19;
    v24 = v18;
    v30 = 3;
    sub_1D6731138();
    sub_1D726431C();
    LOBYTE(v18) = v31;
    v29 = 4;
    sub_1D673118C();
    sub_1D726431C();
    (*(v12 + 8))(v10, v13);
    v20 = v28;
    *a2 = v17;
    *(a2 + 8) = v16;
    *(a2 + 16) = v24;
    v21 = v18;
    v22 = v26;
    *(a2 + 24) = v25;
    *(a2 + 32) = v22;
    *(a2 + 40) = v21;
    *(a2 + 48) = v20;

    __swift_destroy_boxed_opaque_existential_1(v27);
  }
}

uint64_t sub_1D672F01C(uint64_t a1)
{
  v2 = sub_1D67311E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D672F058(uint64_t a1)
{
  v2 = sub_1D67311E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D672F094()
{
  v1 = 0x6B63617473;
  if (*v0 != 1)
  {
    v1 = 0x736E6F74747562;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1953393000;
  }
}

uint64_t sub_1D672F0E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6732474(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D672F10C(uint64_t a1)
{
  v2 = sub_1D67312DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D672F148(uint64_t a1)
{
  v2 = sub_1D67312DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D672F184(uint64_t a1)
{
  v2 = sub_1D6731288();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D672F1C0(uint64_t a1)
{
  v2 = sub_1D6731288();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D672F1FC(uint64_t a1)
{
  v2 = sub_1D6731234();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D672F238(uint64_t a1)
{
  v2 = sub_1D6731234();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PuzzleAccessoryInputConfiguration.InputType.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1D6731740(0, &qword_1EC88A890, sub_1D67311E0, &type metadata for PuzzleAccessoryInputConfiguration.InputType.ButtonsCodingKeys, MEMORY[0x1E69E6F58]);
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v36 = &v28 - v6;
  sub_1D6731740(0, &qword_1EC88A8A0, sub_1D6731234, &type metadata for PuzzleAccessoryInputConfiguration.InputType.StackCodingKeys, v3);
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v35 = &v28 - v9;
  sub_1D6731740(0, &qword_1EC88A8B0, sub_1D6731288, &type metadata for PuzzleAccessoryInputConfiguration.InputType.HintCodingKeys, v3);
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v28 - v12;
  sub_1D6731740(0, &qword_1EC88A8C0, sub_1D67312DC, &type metadata for PuzzleAccessoryInputConfiguration.InputType.CodingKeys, v3);
  v42 = *(v14 - 8);
  v43 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v28 - v16;
  v18 = v1[1];
  v41 = *v1;
  v19 = v1[2];
  v30 = v1[3];
  v31 = v19;
  v20 = v1[5];
  v29 = v1[4];
  v32 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67312DC();
  sub_1D7264B5C();
  if (v20 >> 62)
  {
    if (v20 >> 62 == 1)
    {
      LOBYTE(v44) = 1;
      sub_1D6731234();
      v21 = v35;
      v22 = v43;
      sub_1D726436C();
      v44 = v41;
      sub_1D5B49DF8(0, &qword_1EC88A8D8, &type metadata for PuzzleAccessoryInputConfiguration, MEMORY[0x1E69E62F8]);
      sub_1D6731480(&qword_1EC88A8E0, sub_1D6731384, MEMORY[0x1E69E6300]);
      v23 = v38;
      sub_1D726443C();
      v24 = v37;
    }

    else
    {
      LOBYTE(v44) = 2;
      sub_1D67311E0();
      v21 = v36;
      v22 = v43;
      sub_1D726436C();
      v44 = v41;
      sub_1D6731330();
      v23 = v40;
      sub_1D726443C();
      v24 = v39;
    }

    (*(v24 + 8))(v21, v23);
  }

  else
  {
    v25 = v33;
    LOBYTE(v44) = 0;
    sub_1D6731288();
    v22 = v43;
    sub_1D726436C();
    v44 = v41;
    v45 = v18;
    v46 = v31;
    v47 = v30;
    v48 = v29;
    v49 = v20;
    v50 = v32;
    sub_1D67313D8();
    v26 = v34;
    sub_1D726443C();
    (*(v25 + 8))(v13, v26);
  }

  return (*(v42 + 8))(v17, v22);
}

uint64_t PuzzleAccessoryInputConfiguration.InputType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1D6731740(0, &qword_1EC88A8F8, sub_1D67311E0, &type metadata for PuzzleAccessoryInputConfiguration.InputType.ButtonsCodingKeys, MEMORY[0x1E69E6F48]);
  v52 = v4;
  v46 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v51 = &v45 - v6;
  sub_1D6731740(0, &qword_1EC88A900, sub_1D6731234, &type metadata for PuzzleAccessoryInputConfiguration.InputType.StackCodingKeys, v3);
  v8 = *(v7 - 8);
  v47 = v7;
  v48 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v50 = &v45 - v10;
  sub_1D6731740(0, &qword_1EC88A908, sub_1D6731288, &type metadata for PuzzleAccessoryInputConfiguration.InputType.HintCodingKeys, v3);
  v12 = v11;
  v45 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v45 - v14;
  sub_1D6731740(0, &qword_1EC88A910, sub_1D67312DC, &type metadata for PuzzleAccessoryInputConfiguration.InputType.CodingKeys, v3);
  v17 = v16;
  v53 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v45 - v19;
  v21 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D67312DC();
  v22 = v54;
  sub_1D7264B0C();
  if (!v22)
  {
    v24 = v50;
    v23 = v51;
    v25 = v52;
    v26 = sub_1D726433C();
    v27 = (2 * *(v26 + 16)) | 1;
    v61 = v26;
    v62 = v26 + 32;
    v63 = 0;
    v64 = v27;
    v28 = sub_1D60F961C();
    v29 = v17;
    v30 = v20;
    if (v28 != 3 && v63 == v64 >> 1)
    {
      if (v28)
      {
        if (v28 == 1)
        {
          LOBYTE(v55) = 1;
          sub_1D6731234();
          sub_1D72641EC();
          v31 = v49;
          v32 = v53;
          sub_1D5B49DF8(0, &qword_1EC88A8D8, &type metadata for PuzzleAccessoryInputConfiguration, MEMORY[0x1E69E62F8]);
          sub_1D6731480(&qword_1EC88A920, sub_1D6731510, MEMORY[0x1E69E6330]);
          v33 = v47;
          sub_1D726431C();
          (*(v48 + 8))(v24, v33);
          (*(v32 + 8))(v30, v29);
          swift_unknownObjectRelease();
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = v55;
          v43 = 0uLL;
          v44 = 0x4000000000000000;
LABEL_12:
          *v31 = v42;
          *(v31 + 8) = v39;
          *(v31 + 16) = v40;
          *(v31 + 24) = v43;
          *(v31 + 40) = v44;
          *(v31 + 48) = v41;
          return __swift_destroy_boxed_opaque_existential_1(v65);
        }

        LOBYTE(v55) = 2;
        sub_1D67311E0();
        sub_1D72641EC();
        v38 = v53;
        sub_1D673142C();
        sub_1D726431C();
        (*(v46 + 8))(v23, v25);
        (*(v38 + 8))(v20, v29);
        swift_unknownObjectRelease();
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v42 = v55;
        v43 = 0uLL;
        v44 = 0x8000000000000000;
      }

      else
      {
        LOBYTE(v55) = 0;
        sub_1D6731288();
        sub_1D72641EC();
        sub_1D6731564();
        sub_1D726431C();
        (*(v45 + 8))(v15, v12);
        (*(v53 + 8))(v20, v29);
        swift_unknownObjectRelease();
        v42 = v55;
        v39 = v56;
        v40 = v57;
        v43 = v58;
        v44 = v59;
        v41 = v60;
      }

      v31 = v49;
      goto LABEL_12;
    }

    v34 = sub_1D7263E3C();
    swift_allocError();
    v36 = v35;
    sub_1D5EEA608(0);
    *v36 = &type metadata for PuzzleAccessoryInputConfiguration.InputType;
    sub_1D72641FC();
    sub_1D7263DFC();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    (*(v53 + 8))(v20, v29);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v65);
}

uint64_t PuzzleAccessoryInputConfiguration.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PuzzleAccessoryInputConfiguration.inputType.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1D67315B8(v2, v3, v4, v5, v6, v7);
}

void sub_1D6730014(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  if (a1 == 1953393000 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {
    if (*(a3 + 16))
    {
      v8 = sub_1D5B69D90(1954047348, 0xE400000000000000);
      if (v9)
      {
        sub_1D5B76B10(*(a3 + 56) + 32 * v8, &v70);
        v10 = swift_dynamicCast();
        if (v10)
        {
          rawValue = with[0]._rawValue;
        }

        else
        {
          rawValue = 0;
        }

        if (v10)
        {
          v12 = with[1]._rawValue;
        }

        else
        {
          v12 = 0;
        }

        if (!*(a3 + 16))
        {
          goto LABEL_41;
        }

LABEL_35:
        v29 = sub_1D5B69D90(0x6F69746365726964, 0xE90000000000006ELL);
        if (v30)
        {
          sub_1D5B76B10(*(a3 + 56) + 32 * v29, &v70);
          if (swift_dynamicCast())
          {
            v31 = with[1]._rawValue;
          }

          else
          {
            v31 = 0;
          }

          if (!*(a3 + 16))
          {
            goto LABEL_42;
          }
        }

        else
        {
          v31 = 0;
          if (!*(a3 + 16))
          {
            goto LABEL_42;
          }
        }

        v48 = sub_1D5B69D90(0x7265626D756ELL, 0xE600000000000000);
        if (v49)
        {
          sub_1D5B76B10(*(a3 + 56) + 32 * v48, &v70);
          v50 = swift_dynamicCast();
          if (v50)
          {
            v32 = with[0]._rawValue;
          }

          else
          {
            v32 = 0;
          }

          if (v50)
          {
            v33 = with[1]._rawValue;
          }

          else
          {
            v33 = 0;
          }

          if (!*(a3 + 16))
          {
            goto LABEL_62;
          }

          goto LABEL_43;
        }

LABEL_42:
        v32 = 0;
        v33 = 0;
        if (!*(a3 + 16))
        {
          goto LABEL_62;
        }

LABEL_43:
        v34 = sub_1D5B69D90(0x6D726F4674786574, 0xEA00000000007461);
        if (v35)
        {
          sub_1D5B76B10(*(a3 + 56) + 32 * v34, &v70);
          if (swift_dynamicCast())
          {
            v36 = with[1]._rawValue;
          }

          else
          {
            v36 = 0;
          }

          if (!v31)
          {
LABEL_48:
            v37 = 2;
            if (!v36)
            {
LABEL_49:
              v38 = 0;
LABEL_71:
              *a4 = rawValue;
              a4[1] = v12;
              a4[2] = v37;
              a4[3] = v32;
              a4[4] = v33;
              a4[5] = v38;
              a4[6] = 15;
              return;
            }

LABEL_69:
            v53 = sub_1D72641CC();

            v38 = v53 == 1;
            if (v53 == 2)
            {
              v38 = 2;
            }

            goto LABEL_71;
          }

LABEL_63:
          v51 = sub_1D72641CC();

          v52 = 1;
          if (v51 != 1)
          {
            v52 = 2;
          }

          if (v51)
          {
            v37 = v52;
          }

          else
          {
            v37 = 0;
          }

          if (!v36)
          {
            goto LABEL_49;
          }

          goto LABEL_69;
        }

LABEL_62:
        v36 = 0;
        if (!v31)
        {
          goto LABEL_48;
        }

        goto LABEL_63;
      }

      rawValue = 0;
      v12 = 0;
      if (*(a3 + 16))
      {
        goto LABEL_35;
      }
    }

    else
    {
      v12 = 0;
      rawValue = 0;
    }

LABEL_41:
    v31 = 0;
    goto LABEL_42;
  }

  if (a1 == 0x6B63617473 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {
    if (*(a3 + 16))
    {
      v13 = sub_1D5B69D90(0x736D657469, 0xE500000000000000);
      if (v14)
      {
        sub_1D5B76B10(*(a3 + 56) + 32 * v13, &v70);
        sub_1D6325CE0(0);
        if (swift_dynamicCast())
        {
          v15 = with[0]._rawValue;
          v16 = *(with[0]._rawValue + 2);
          if (v16)
          {
            v17 = 0;
            v18 = MEMORY[0x1E69E7CC0];
            do
            {
              v19 = v17;
              while (1)
              {
                if (v19 >= v15[2])
                {
                  __break(1u);
                  goto LABEL_91;
                }

                v17 = v19 + 1;

                PuzzleAccessoryInputConfiguration.init(with:)(v20, &v70);
                if (*(&v70 + 1))
                {
                  break;
                }

                v67 = v72;
                v68 = v73;
                v69 = v74;
                *&with[0]._rawValue = v70;
                v66 = v71;
                sub_1D5B88B60(with, &qword_1EC8807E0, &type metadata for PuzzleAccessoryInputConfiguration);
                ++v19;
                if (v16 == v17)
                {
                  goto LABEL_89;
                }
              }

              v67 = v72;
              v68 = v73;
              v69 = v74;
              *&with[0]._rawValue = v70;
              v66 = v71;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v18 = sub_1D698FF34(0, *(v18 + 2) + 1, 1, v18);
              }

              v21 = v18;
              v22 = *(v18 + 2);
              v23 = v21;
              v24 = *(v21 + 3);
              v25 = v22 + 1;
              if (v22 >= v24 >> 1)
              {
                v28 = sub_1D698FF34((v24 > 1), v22 + 1, 1, v23);
                v25 = v22 + 1;
                v23 = v28;
              }

              v64 = v69;
              v62 = v67;
              v63 = v68;
              v26 = *&with[0]._rawValue;
              v61 = v66;
              *(v23 + 2) = v25;
              v27 = &v23[72 * v22];
              v18 = v23;
              *(v27 + 2) = v26;
              *(v27 + 12) = v64;
              *(v27 + 4) = v62;
              *(v27 + 5) = v63;
              *(v27 + 3) = v61;
            }

            while (v16 - 1 != v19);
          }

          else
          {
            v18 = MEMORY[0x1E69E7CC0];
          }

LABEL_89:

          *a4 = v18;
          *(a4 + 1) = 0u;
          *(a4 + 3) = 0u;
          v56 = xmmword_1D72E3300;
          goto LABEL_87;
        }
      }
    }

    if (qword_1EDF3B838 != -1)
    {
LABEL_91:
      swift_once();
    }

    v39 = sub_1D725C42C();
    __swift_project_value_buffer(v39, qword_1EDFFCFA8);

    v40 = sub_1D725C3FC();
    v41 = sub_1D7262EBC();

    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_85;
    }

    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v70 = v43;
    *v42 = 136315138;
    v44 = sub_1D7261D4C();
    v46 = sub_1D5BC5100(v44, v45, &v70);

    *(v42 + 4) = v46;
    v47 = "Failed parsing PuzzleAccessoryInputConfiguration. Invalid items entry: %s";
    goto LABEL_84;
  }

  if ((a1 != 0x736E6F74747562 || a2 != 0xE700000000000000) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_86;
  }

  if (!*(a3 + 16) || (v54 = sub_1D5B69D90(0x736D657469, 0xE500000000000000), (v55 & 1) == 0) || (sub_1D5B76B10(*(a3 + 56) + 32 * v54, &v70), sub_1D6325CE0(0), (swift_dynamicCast() & 1) == 0) || (PuzzleAccessoryButtonsConfig.init(with:)(with[0]), !v70))
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v57 = sub_1D725C42C();
    __swift_project_value_buffer(v57, qword_1EDFFCFA8);

    v40 = sub_1D725C3FC();
    v41 = sub_1D7262EBC();

    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_85;
    }

    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v70 = v43;
    *v42 = 136315138;
    v58 = sub_1D7261D4C();
    v60 = sub_1D5BC5100(v58, v59, &v70);

    *(v42 + 4) = v60;
    v47 = "Failed parsing PuzzleAccessoryButtonsConfig. Invalid items entry: %s";
LABEL_84:
    _os_log_impl(&dword_1D5B42000, v40, v41, v47, v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x1DA6FD500](v43, -1, -1);
    MEMORY[0x1DA6FD500](v42, -1, -1);
LABEL_85:

LABEL_86:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0xFFFFFFFF00;
    v56 = 0uLL;
    *(a4 + 3) = 0u;
    goto LABEL_87;
  }

  *a4 = v70;
  *(a4 + 1) = 0u;
  *(a4 + 3) = 0u;
  v56 = xmmword_1D72E32F0;
LABEL_87:
  *(a4 + 5) = v56;
}

uint64_t sub_1D6730890()
{
  if (*v0)
  {
    return 0x7079547475706E69;
  }

  else
  {
    return 0x696669746E656469;
  }
}

void sub_1D67308D4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7079547475706E69 && a2 == 0xE900000000000065)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

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

uint64_t sub_1D67309C0(uint64_t a1)
{
  v2 = sub_1D6731628();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D67309FC(uint64_t a1)
{
  v2 = sub_1D6731628();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PuzzleAccessoryInputConfiguration.encode(to:)(void *a1)
{
  sub_1D6731740(0, &qword_1EC88A938, sub_1D6731628, &type metadata for PuzzleAccessoryInputConfiguration.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v15 - v7;
  v9 = v1[2];
  v21 = v1[3];
  v22 = v9;
  v10 = v1[4];
  v19 = v1[5];
  v20 = v10;
  v11 = v1[6];
  v17 = v1[7];
  v18 = v11;
  v16 = v1[8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6731628();
  sub_1D7264B5C();
  LOBYTE(v24) = 0;
  v12 = v23;
  sub_1D72643FC();
  if (!v12)
  {
    v24 = v22;
    v25 = v21;
    v26 = v20;
    v27 = v19;
    v28 = v18;
    v29 = v17;
    v30 = v16;
    v31 = 1;
    sub_1D67315B8(v22, v21, v20, v19, v18, v17);
    sub_1D673167C();
    sub_1D72643BC();
    v13.n128_f64[0] = sub_1D67316D0(v24, v25, v26, v27, v28, v29);
  }

  return (*(v5 + 8))(v8, v4, v13);
}

void PuzzleAccessoryInputConfiguration.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  sub_1D6731740(0, &qword_1EC88A950, sub_1D6731628, &type metadata for PuzzleAccessoryInputConfiguration.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6731628();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v10 = v25;
    LOBYTE(v28[0]) = 0;
    v11 = sub_1D72642BC();
    v13 = v12;
    v14 = v11;
    v37 = 1;
    sub_1D67317A8();
    sub_1D726427C();
    (*(v6 + 8))(v9, v5);
    v15 = *(&v33 + 1);
    v24 = v33;
    v16 = v34;
    v23 = v35;
    v17 = v36;
    v22 = *(&v35 + 1);
    *&v26[0] = v14;
    *(&v26[0] + 1) = v13;
    v26[1] = v33;
    v26[2] = v34;
    v26[3] = v35;
    v27 = v36;
    v18 = v26[0];
    v19 = v33;
    v20 = v34;
    v21 = v35;
    *(v10 + 64) = v36;
    *(v10 + 32) = v20;
    *(v10 + 48) = v21;
    *v10 = v18;
    *(v10 + 16) = v19;
    sub_1D6007B88(v26, v28);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v28[0] = v14;
    v28[1] = v13;
    v28[2] = v24;
    v28[3] = v15;
    v29 = v16;
    v30 = v23;
    v31 = v22;
    v32 = v17;
    sub_1D6007C34(v28);
  }
}

unint64_t sub_1D6730F48()
{
  result = qword_1EC88A840;
  if (!qword_1EC88A840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC88A840);
  }

  return result;
}

unint64_t sub_1D6730F94()
{
  result = qword_1EC88A850;
  if (!qword_1EC88A850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A850);
  }

  return result;
}

unint64_t sub_1D6730FE8()
{
  result = qword_1EC88A858;
  if (!qword_1EC88A858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A858);
  }

  return result;
}

unint64_t sub_1D673103C()
{
  result = qword_1EC88A860;
  if (!qword_1EC88A860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A860);
  }

  return result;
}

unint64_t sub_1D6731090()
{
  result = qword_1EC88A868;
  if (!qword_1EC88A868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A868);
  }

  return result;
}

unint64_t sub_1D67310E4()
{
  result = qword_1EC88A878;
  if (!qword_1EC88A878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A878);
  }

  return result;
}

unint64_t sub_1D6731138()
{
  result = qword_1EC88A880;
  if (!qword_1EC88A880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A880);
  }

  return result;
}

unint64_t sub_1D673118C()
{
  result = qword_1EC88A888;
  if (!qword_1EC88A888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A888);
  }

  return result;
}

unint64_t sub_1D67311E0()
{
  result = qword_1EC88A898;
  if (!qword_1EC88A898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A898);
  }

  return result;
}

unint64_t sub_1D6731234()
{
  result = qword_1EC88A8A8;
  if (!qword_1EC88A8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A8A8);
  }

  return result;
}

unint64_t sub_1D6731288()
{
  result = qword_1EC88A8B8;
  if (!qword_1EC88A8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A8B8);
  }

  return result;
}

unint64_t sub_1D67312DC()
{
  result = qword_1EC88A8C8;
  if (!qword_1EC88A8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A8C8);
  }

  return result;
}

unint64_t sub_1D6731330()
{
  result = qword_1EC88A8D0;
  if (!qword_1EC88A8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A8D0);
  }

  return result;
}

unint64_t sub_1D6731384()
{
  result = qword_1EC88A8E8;
  if (!qword_1EC88A8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A8E8);
  }

  return result;
}

unint64_t sub_1D67313D8()
{
  result = qword_1EC88A8F0;
  if (!qword_1EC88A8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A8F0);
  }

  return result;
}

unint64_t sub_1D673142C()
{
  result = qword_1EC88A918;
  if (!qword_1EC88A918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A918);
  }

  return result;
}

uint64_t sub_1D6731480(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B49DF8(255, &qword_1EC88A8D8, &type metadata for PuzzleAccessoryInputConfiguration, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6731510()
{
  result = qword_1EC88A928;
  if (!qword_1EC88A928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A928);
  }

  return result;
}

unint64_t sub_1D6731564()
{
  result = qword_1EC88A930;
  if (!qword_1EC88A930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A930);
  }

  return result;
}

uint64_t sub_1D67315B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a3 >> 8 != 0xFFFFFFFF || a6 >= 4)
  {
    return sub_1D67315D0(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

uint64_t sub_1D67315D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 >> 62) - 1 >= 2)
  {
    if (a6 >> 62 == 3)
    {
      return result;
    }
  }
}

unint64_t sub_1D6731628()
{
  result = qword_1EC88A940;
  if (!qword_1EC88A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A940);
  }

  return result;
}

unint64_t sub_1D673167C()
{
  result = qword_1EC88A948;
  if (!qword_1EC88A948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A948);
  }

  return result;
}

double sub_1D67316D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a3 >> 8 != 0xFFFFFFFF || a6 >= 4)
  {
    return sub_1D67316E8(a1, a2, a3, a4, a5, a6);
  }

  return result;
}

double sub_1D67316E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 >> 62) - 1 >= 2)
  {
    if (a6 >> 62 == 3)
    {
      return result;
    }
  }

  return result;
}

void sub_1D6731740(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D67317A8()
{
  result = qword_1EC88A958;
  if (!qword_1EC88A958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A958);
  }

  return result;
}

unint64_t sub_1D6731800()
{
  result = qword_1EC88A960;
  if (!qword_1EC88A960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A960);
  }

  return result;
}

unint64_t sub_1D6731858()
{
  result = qword_1EC88A968;
  if (!qword_1EC88A968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A968);
  }

  return result;
}

unint64_t sub_1D67318B0()
{
  result = qword_1EC88A970;
  if (!qword_1EC88A970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A970);
  }

  return result;
}

unint64_t sub_1D6731908()
{
  result = qword_1EC88A978;
  if (!qword_1EC88A978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A978);
  }

  return result;
}

unint64_t sub_1D6731960()
{
  result = qword_1EC88A980;
  if (!qword_1EC88A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A980);
  }

  return result;
}

unint64_t sub_1D67319B8()
{
  result = qword_1EC88A988;
  if (!qword_1EC88A988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A988);
  }

  return result;
}

uint64_t sub_1D6731A0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_1D6731A68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed33PuzzleAccessoryInputConfigurationV0E4TypeOSg(uint64_t a1)
{
  v1 = *(a1 + 17);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6731B38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 17);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1D6731B84(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = -a2 << 8;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      return result;
    }

    *(a1 + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D6731BF4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40) & 3 | (a2 << 62);
  *(result + 16) = *(result + 16);
  *(result + 40) = v2;
  return result;
}

unint64_t sub_1D6731C84()
{
  result = qword_1EC88A990;
  if (!qword_1EC88A990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A990);
  }

  return result;
}

unint64_t sub_1D6731CDC()
{
  result = qword_1EC88A998;
  if (!qword_1EC88A998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A998);
  }

  return result;
}

unint64_t sub_1D6731D34()
{
  result = qword_1EC88A9A0;
  if (!qword_1EC88A9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A9A0);
  }

  return result;
}

unint64_t sub_1D6731D8C()
{
  result = qword_1EC88A9A8;
  if (!qword_1EC88A9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A9A8);
  }

  return result;
}

unint64_t sub_1D6731DE4()
{
  result = qword_1EC88A9B0;
  if (!qword_1EC88A9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A9B0);
  }

  return result;
}

unint64_t sub_1D6731E3C()
{
  result = qword_1EC88A9B8;
  if (!qword_1EC88A9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A9B8);
  }

  return result;
}

unint64_t sub_1D6731E94()
{
  result = qword_1EC88A9C0;
  if (!qword_1EC88A9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A9C0);
  }

  return result;
}

unint64_t sub_1D6731EEC()
{
  result = qword_1EC88A9C8;
  if (!qword_1EC88A9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A9C8);
  }

  return result;
}

unint64_t sub_1D6731F44()
{
  result = qword_1EC88A9D0;
  if (!qword_1EC88A9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A9D0);
  }

  return result;
}

unint64_t sub_1D6731F9C()
{
  result = qword_1EC88A9D8;
  if (!qword_1EC88A9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A9D8);
  }

  return result;
}

unint64_t sub_1D6731FF4()
{
  result = qword_1EC88A9E0;
  if (!qword_1EC88A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A9E0);
  }

  return result;
}

unint64_t sub_1D673204C()
{
  result = qword_1EC88A9E8;
  if (!qword_1EC88A9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A9E8);
  }

  return result;
}

unint64_t sub_1D67320A4()
{
  result = qword_1EC88A9F0;
  if (!qword_1EC88A9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A9F0);
  }

  return result;
}

unint64_t sub_1D67320FC()
{
  result = qword_1EC88A9F8;
  if (!qword_1EC88A9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A9F8);
  }

  return result;
}

unint64_t sub_1D6732154()
{
  result = qword_1EC88AA00;
  if (!qword_1EC88AA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AA00);
  }

  return result;
}

unint64_t sub_1D67321AC()
{
  result = qword_1EC88AA08;
  if (!qword_1EC88AA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AA08);
  }

  return result;
}

unint64_t sub_1D6732204()
{
  result = qword_1EC88AA10;
  if (!qword_1EC88AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AA10);
  }

  return result;
}

unint64_t sub_1D673225C()
{
  result = qword_1EC88AA18;
  if (!qword_1EC88AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AA18);
  }

  return result;
}

uint64_t sub_1D67322B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265626D756ELL && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D726F4674786574 && a2 == 0xEA00000000007461 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73D3010 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D6732474(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953393000 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B63617473 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6F74747562 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1D6732588()
{
  result = qword_1EC88AA20;
  if (!qword_1EC88AA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AA20);
  }

  return result;
}

unint64_t sub_1D67325DC()
{
  result = qword_1EC88AA28;
  if (!qword_1EC88AA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AA28);
  }

  return result;
}

void sub_1D673266C(uint64_t *a1)
{
  v50 = a1;
  v2 = type metadata accessor for FormatOption(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v46 = &v39[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = type metadata accessor for FormatDerivedDataOption(0);
  MEMORY[0x1EEE9AC00](v45, v5);
  v42 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7, v8);
  v41 = &v39[-v9];
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39[-v12];
  v14 = sub_1D72252E4(0.0, 0.0, 0.0, 0.0);
  v15 = v14;
  v44 = *(v14 + 16);
  if (v44)
  {
    v16 = 0;
    v43 = v14;
    v40 = v13;
    while (v16 < *(v15 + 16))
    {
      v17 = v46;
      sub_1D5D25108(v46);

      sub_1D69DFAF0(v17, v13);
      if (v1)
      {

        return;
      }

      v18 = swift_allocBox();
      v20 = v19;
      sub_1D6735BD4(v13, v19, type metadata accessor for FormatDerivedDataOption);
      v21 = *v50;
      swift_beginAccess();
      v22 = *(v21 + 16);
      v23 = *(v22 + 16);
      if (v23 && *(v22 + 8 * v23 + 24) >> 60 == 1 && (v24 = swift_projectBox(), v25 = v18, v26 = v41, sub_1D6735BD4(v24, v41, type metadata accessor for FormatDerivedDataOption), v27 = v42, sub_1D6735BD4(v20, v42, type metadata accessor for FormatDerivedDataOption), , v28 = sub_1D69E18D4(v26, v27), sub_1D6736194(v27, type metadata accessor for FormatDerivedDataOption), v29 = v26, v18 = v25, v13 = v40, sub_1D6736194(v29, type metadata accessor for FormatDerivedDataOption), , v28))
      {
      }

      else
      {
        v30 = v50;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = *v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D5EB99F0();
          v37 = swift_allocObject();
          swift_beginAccess();
          v38 = v32[2];
          v48[0] = v32[1];
          v48[1] = v38;
          v49[0] = v32[3];
          *(v49 + 14) = *(v32 + 62);
          memmove((v37 + 16), v32 + 1, 0x3EuLL);
          sub_1D5EB9AB0(v48, v47);

          *v50 = v37;
          v32 = v37;
        }

        swift_beginAccess();
        v33 = *(v32 + 2);
        v34 = swift_isUniquelyReferenced_nonNull_native();
        *(v32 + 2) = v33;
        if ((v34 & 1) == 0)
        {
          v33 = sub_1D698F848(0, *(v33 + 2) + 1, 1, v33);
          *(v32 + 2) = v33;
        }

        v36 = *(v33 + 2);
        v35 = *(v33 + 3);
        if (v36 >= v35 >> 1)
        {
          v33 = sub_1D698F848((v35 > 1), v36 + 1, 1, v33);
        }

        *(v33 + 2) = v36 + 1;
        *&v33[8 * v36 + 32] = v18 | 0x1000000000000000;
        *(v32 + 2) = v33;
        swift_endAccess();
      }

      ++v16;

      sub_1D6736194(v13, type metadata accessor for FormatDerivedDataOption);
      v15 = v43;
      if (v44 == v16)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    sub_1D6292F10(v50);
  }
}

uint64_t FormatGroupNodeMaskStyle.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

double FormatGroupNodeMaskStyle.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

uint64_t FormatGroupNodeMaskStyle.class.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

double FormatGroupNodeMaskStyle.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  return result;
}

uint64_t FormatGroupNodeMaskStyle.path.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 104);
  v9 = *(v1 + 88);
  v10 = v3;
  v11 = *(v1 + 120);
  v4 = v11;
  v8[0] = *(v1 + 56);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_1D5E3A490(v8, v7, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
}

uint64_t FormatGroupNodeMaskStyle.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  v4 = *(v1 + 200);
  v10 = *(v1 + 184);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 216);
  v6 = *(v1 + 152);
  v9[0] = *(v1 + 136);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D5E3A490(v9, v8, &qword_1EDF33718, &type metadata for FormatShadow);
}

uint64_t FormatGroupNodeMaskStyle.__allocating_init(identifier:class:selectors:path:borders:shadow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  swift_beginAccess();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  swift_beginAccess();
  v17 = *a6;
  *(v16 + 72) = a6[1];
  v18 = a6[3];
  *(v16 + 88) = a6[2];
  *(v16 + 104) = v18;
  *(v16 + 56) = v17;
  v19 = *(a8 + 48);
  *(v16 + 168) = *(a8 + 32);
  *(v16 + 184) = v19;
  *(v16 + 200) = *(a8 + 64);
  v20 = *(a8 + 16);
  *(v16 + 136) = *a8;
  *(v16 + 48) = a5;
  *(v16 + 120) = *(a6 + 64);
  *(v16 + 128) = a7;
  *(v16 + 216) = *(a8 + 80);
  *(v16 + 152) = v20;
  return v16;
}

uint64_t FormatGroupNodeMaskStyle.init(identifier:class:selectors:path:borders:shadow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  swift_beginAccess();
  v17 = *a6;
  *(v8 + 72) = a6[1];
  v18 = a6[3];
  *(v8 + 88) = a6[2];
  *(v8 + 104) = v18;
  *(v8 + 56) = v17;
  v19 = *(a8 + 48);
  *(v8 + 168) = *(a8 + 32);
  *(v8 + 184) = v19;
  *(v8 + 200) = *(a8 + 64);
  v20 = *(a8 + 16);
  *(v8 + 136) = *a8;
  *(v8 + 48) = a5;
  *(v8 + 120) = *(a6 + 64);
  *(v8 + 128) = a7;
  *(v8 + 216) = *(a8 + 80);
  *(v8 + 152) = v20;
  return v8;
}

uint64_t sub_1D6732F84(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[2];
  v5 = v1[3];
  v6 = v2[4];
  v7 = v2[5];
  swift_beginAccess();
  v244 = v2;
  v8 = v2[6];
  swift_beginAccess();
  v243 = a1;
  v9 = *(a1 + 48);
  v304 = MEMORY[0x1E69E7CC8];
  v10 = *(v8 + 16);
  v11 = *(v9 + 16);
  if (__OFADD__(v10, v11))
  {
    goto LABEL_94;
  }

  v241 = v4;
  v239 = v6;
  sub_1D6735AC0(0);
  v240 = v5;

  v242 = v7;

  sub_1D7261DAC();
  v12 = sub_1D698F4BC(0, v10, 0, MEMORY[0x1E69E7CC0]);
  v13 = *(v8 + 16);
  v245 = v9;
  if (!v13)
  {
    goto LABEL_20;
  }

  v248 = v11;
  v14 = 0;
  v15 = v8;
  v16 = (v8 + 32);
  v17 = v13 - 1;
  while (1)
  {
    v18 = *v16;
    v19 = v16[1];
    v20 = v16[3];
    v294 = v16[2];
    v295 = v20;
    v292 = v18;
    v293 = v19;
    v21 = v16[4];
    v22 = v16[5];
    v23 = v16[7];
    v298 = v16[6];
    v299 = v23;
    v296 = v21;
    v297 = v22;
    v24 = v16[8];
    v25 = v16[9];
    v26 = v16[10];
    v303 = *(v16 + 176);
    v302 = v26;
    v300 = v24;
    v301 = v25;
    v27 = v292;
    sub_1D62B7804(&v292, &v280);
    sub_1D62B7804(&v292, &v280);
    v28 = v304;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v250 = v28;
    v30 = sub_1D6D8CB60();
    v32 = v28[2];
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
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
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      result = sub_1D726493C();
      __break(1u);
      return result;
    }

    v36 = v31;
    if (v28[3] < v35)
    {
      sub_1D6D6F5FC(v35, isUniquelyReferenced_nonNull_native);
      v30 = sub_1D6D8CB60();
      if ((v36 & 1) != (v37 & 1))
      {
        goto LABEL_95;
      }

LABEL_9:
      if (v36)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v58 = v30;
    sub_1D6D831FC();
    v30 = v58;
    if (v36)
    {
LABEL_10:
      v38 = v250;
      v39 = *(v250 + 56) + 184 * v30;
      v40 = *(v39 + 48);
      v42 = *v39;
      v41 = *(v39 + 16);
      v282 = *(v39 + 32);
      v283 = v40;
      v280 = v42;
      v281 = v41;
      v43 = *(v39 + 112);
      v45 = *(v39 + 64);
      v44 = *(v39 + 80);
      v286 = *(v39 + 96);
      v287 = v43;
      v284 = v45;
      v285 = v44;
      v47 = *(v39 + 144);
      v46 = *(v39 + 160);
      v48 = *(v39 + 128);
      v291 = *(v39 + 176);
      v289 = v47;
      v290 = v46;
      v288 = v48;
      v49 = v292;
      v50 = v293;
      v51 = v295;
      *(v39 + 32) = v294;
      *(v39 + 48) = v51;
      *v39 = v49;
      *(v39 + 16) = v50;
      v52 = v296;
      v53 = v297;
      v54 = v299;
      *(v39 + 96) = v298;
      *(v39 + 112) = v54;
      *(v39 + 64) = v52;
      *(v39 + 80) = v53;
      v55 = v300;
      v56 = v301;
      v57 = v302;
      *(v39 + 176) = v303;
      *(v39 + 144) = v56;
      *(v39 + 160) = v57;
      *(v39 + 128) = v55;
      sub_1D62B7860(&v280);
      goto LABEL_14;
    }

LABEL_12:
    v38 = v250;
    *(v250 + 8 * (v30 >> 6) + 64) |= 1 << v30;
    *(v38[6] + 16 * v30) = v27;
    v59 = v38[7] + 184 * v30;
    v60 = v303;
    v61 = v302;
    v62 = v301;
    *(v59 + 128) = v300;
    *(v59 + 144) = v62;
    *(v59 + 160) = v61;
    *(v59 + 176) = v60;
    v64 = v298;
    v63 = v299;
    v65 = v297;
    *(v59 + 64) = v296;
    *(v59 + 80) = v65;
    *(v59 + 96) = v64;
    *(v59 + 112) = v63;
    v67 = v294;
    v66 = v295;
    v68 = v293;
    *v59 = v292;
    *(v59 + 16) = v68;
    *(v59 + 32) = v67;
    *(v59 + 48) = v66;
    v69 = v38[2];
    v34 = __OFADD__(v69, 1);
    v70 = v69 + 1;
    if (v34)
    {
      goto LABEL_90;
    }

    v38[2] = v70;

LABEL_14:
    v304 = v38;

    sub_1D62B7860(&v292);
    v72 = *(v12 + 2);
    v71 = *(v12 + 3);
    if (v72 >= v71 >> 1)
    {
      v12 = sub_1D698F4BC((v71 > 1), v72 + 1, 1, v12);
    }

    *(v12 + 2) = v72 + 1;
    *&v12[16 * v72 + 32] = v27;
    if (v17 == v14)
    {
      break;
    }

    ++v14;
    v16 = (v16 + 184);
    if (v14 >= *(v15 + 16))
    {
      goto LABEL_86;
    }
  }

  v9 = v245;
  v11 = v248;
LABEL_20:
  v249 = sub_1D698F4BC(0, v11, 0, MEMORY[0x1E69E7CC0]);
  v73 = *(v9 + 16);
  if (!v73)
  {
    goto LABEL_60;
  }

  v74 = 0;
  v75 = &v286;
  v246 = v73 - 1;
  v76 = 32;
  while (2)
  {
    v77 = *(v9 + v76);
    v78 = *(v9 + v76 + 16);
    v79 = *(v9 + v76 + 48);
    v294 = *(v9 + v76 + 32);
    v295 = v79;
    v292 = v77;
    v293 = v78;
    v80 = *(v9 + v76 + 64);
    v81 = *(v9 + v76 + 80);
    v82 = *(v9 + v76 + 112);
    v298 = *(v9 + v76 + 96);
    v299 = v82;
    v296 = v80;
    v297 = v81;
    v83 = *(v9 + v76 + 128);
    v84 = *(v9 + v76 + 144);
    v85 = *(v9 + v76 + 160);
    v303 = *(v9 + v76 + 176);
    v302 = v85;
    v300 = v83;
    v301 = v84;
    v86 = v292;
    v87 = v304;
    if (!v304[2])
    {
      sub_1D62B7804(&v292, &v280);
LABEL_27:
      sub_1D62B7804(&v292, &v280);
      v103 = swift_isUniquelyReferenced_nonNull_native();
      *&v250 = v87;
      v104 = sub_1D6D8CB60();
      v106 = v87[2];
      v107 = (v105 & 1) == 0;
      v34 = __OFADD__(v106, v107);
      v108 = v106 + v107;
      if (v34)
      {
        goto LABEL_89;
      }

      v109 = v105;
      if (v87[3] >= v108)
      {
        if ((v103 & 1) == 0)
        {
          v161 = v104;
          sub_1D6D831FC();
          v104 = v161;
          if (v109)
          {
            goto LABEL_33;
          }

          goto LABEL_48;
        }
      }

      else
      {
        sub_1D6D6F5FC(v108, v103);
        v104 = sub_1D6D8CB60();
        if ((v109 & 1) != (v110 & 1))
        {
          goto LABEL_95;
        }
      }

      if (v109)
      {
LABEL_33:
        v111 = v250;
        v112 = *(v250 + 56) + 184 * v104;
        v113 = *(v112 + 48);
        v115 = *v112;
        v114 = *(v112 + 16);
        v282 = *(v112 + 32);
        v283 = v113;
        v280 = v115;
        v281 = v114;
        v116 = *(v112 + 112);
        v118 = *(v112 + 64);
        v117 = *(v112 + 80);
        v286 = *(v112 + 96);
        v287 = v116;
        v284 = v118;
        v285 = v117;
        v120 = *(v112 + 144);
        v119 = *(v112 + 160);
        v121 = *(v112 + 128);
        v291 = *(v112 + 176);
        v289 = v120;
        v290 = v119;
        v288 = v121;
        v122 = v292;
        v123 = v293;
        v124 = v295;
        *(v112 + 32) = v294;
        *(v112 + 48) = v124;
        *v112 = v122;
        *(v112 + 16) = v123;
        v125 = v296;
        v126 = v297;
        v127 = v299;
        *(v112 + 96) = v298;
        *(v112 + 112) = v127;
        *(v112 + 64) = v125;
        *(v112 + 80) = v126;
        v128 = v300;
        v129 = v301;
        v130 = v302;
        *(v112 + 176) = v303;
        *(v112 + 144) = v129;
        *(v112 + 160) = v130;
        *(v112 + 128) = v128;
        sub_1D62B7860(&v280);
LABEL_50:
        v304 = v111;
        v174 = *(v249 + 2);
        v175 = *(v249 + 3);

        if (v174 >= v175 >> 1)
        {
          v249 = sub_1D698F4BC((v175 > 1), v174 + 1, 1, v249);
        }

        sub_1D62B7860(&v292);
        *(v249 + 2) = v174 + 1;
        *&v249[16 * v174 + 32] = v86;
        goto LABEL_57;
      }

LABEL_48:
      v111 = v250;
      *(v250 + 8 * (v104 >> 6) + 64) |= 1 << v104;
      *(v111[6] + 16 * v104) = v86;
      v162 = v111[7] + 184 * v104;
      v163 = v303;
      v164 = v302;
      v165 = v301;
      *(v162 + 128) = v300;
      *(v162 + 144) = v165;
      *(v162 + 160) = v164;
      *(v162 + 176) = v163;
      v167 = v298;
      v166 = v299;
      v168 = v297;
      *(v162 + 64) = v296;
      *(v162 + 80) = v168;
      *(v162 + 96) = v167;
      *(v162 + 112) = v166;
      v170 = v294;
      v169 = v295;
      v171 = v293;
      *v162 = v292;
      *(v162 + 16) = v171;
      *(v162 + 32) = v170;
      *(v162 + 48) = v169;
      v172 = v111[2];
      v34 = __OFADD__(v172, 1);
      v173 = v172 + 1;
      if (v34)
      {
        goto LABEL_91;
      }

      v111[2] = v173;

      goto LABEL_50;
    }

    sub_1D62B7804(&v292, &v280);
    v88 = sub_1D6D8CB60();
    if ((v89 & 1) == 0)
    {
      goto LABEL_27;
    }

    v90 = v87[7] + 184 * v88;
    v92 = *(v90 + 32);
    v91 = *(v90 + 48);
    v93 = *(v90 + 16);
    v280 = *v90;
    v281 = v93;
    v282 = v92;
    v283 = v91;
    v94 = *(v90 + 64);
    v95 = *(v90 + 80);
    v96 = *(v90 + 112);
    v286 = *(v90 + 96);
    v287 = v96;
    v284 = v94;
    v285 = v95;
    v97 = *(v90 + 128);
    v98 = *(v90 + 144);
    v99 = *(v90 + 160);
    v291 = *(v90 + 176);
    v289 = v98;
    v290 = v99;
    v288 = v97;
    if (v285 == 255)
    {
      sub_1D5E3A490(&v293, &v250, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
      v270 = v295;
      v271 = v296;
      v272 = v297;
      v102 = v293;
      v101 = v294;
    }

    else
    {
      v100 = *(v90 + 64);
      v270 = *(v90 + 48);
      v271 = v100;
      v272 = *(v90 + 80);
      v102 = *(v90 + 16);
      v101 = *(v90 + 32);
    }

    v268 = v102;
    v269 = v101;
    v131 = *(&v285 + 1);
    if (!*(&v285 + 1))
    {
      v131 = *(&v297 + 1);
    }

    v132 = v75;
    if (v291 == 254)
    {
      v132 = &v298;
      sub_1D5E3A490(&v298, &v250, &qword_1EDF33718, &type metadata for FormatShadow);
    }

    v133 = v132[3];
    v264 = v132[2];
    v265 = v133;
    v266 = v132[4];
    v267 = *(v132 + 80);
    v134 = v132[1];
    v262 = *v132;
    v263 = v134;
    v135 = v280;
    sub_1D5E3A490(&v281, &v250, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);

    v136 = v75;
    sub_1D5E3A490(v75, &v250, &qword_1EDF33718, &type metadata for FormatShadow);

    sub_1D62B7804(&v280, &v250);
    v137 = swift_isUniquelyReferenced_nonNull_native();
    *&v278[0] = v87;
    v139 = sub_1D6D8CB60();
    v140 = v87[2];
    v141 = (v138 & 1) == 0;
    v142 = v140 + v141;
    if (__OFADD__(v140, v141))
    {
      goto LABEL_92;
    }

    v143 = v138;
    if (v87[3] >= v142)
    {
      if (v137)
      {
        v9 = v245;
        if ((v138 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      else
      {
        sub_1D6D831FC();
        v9 = v245;
        if ((v143 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_46;
    }

    sub_1D6D6F5FC(v142, v137);
    v144 = sub_1D6D8CB60();
    if ((v143 & 1) != (v145 & 1))
    {
      goto LABEL_95;
    }

    v139 = v144;
    v9 = v245;
    if (v143)
    {
LABEL_46:
      v146 = *&v278[0];
      v147 = *(*&v278[0] + 56) + 184 * v139;
      v148 = *(v147 + 48);
      v150 = *v147;
      v149 = *(v147 + 16);
      v252 = *(v147 + 32);
      v253 = v148;
      v250 = v150;
      v251 = v149;
      v151 = *(v147 + 112);
      v153 = *(v147 + 64);
      v152 = *(v147 + 80);
      v256 = *(v147 + 96);
      v257 = v151;
      v254 = v153;
      v255 = v152;
      v155 = *(v147 + 144);
      v154 = *(v147 + 160);
      v156 = *(v147 + 128);
      v261 = *(v147 + 176);
      v259 = v155;
      v260 = v154;
      v258 = v156;
      *v147 = v135;
      *(v147 + 80) = v272;
      v157 = v271;
      *(v147 + 48) = v270;
      *(v147 + 64) = v157;
      v158 = v269;
      *(v147 + 16) = v268;
      *(v147 + 32) = v158;
      *(v147 + 88) = v131;
      v159 = v263;
      *(v147 + 96) = v262;
      *(v147 + 112) = v159;
      *(v147 + 176) = v267;
      v160 = v266;
      *(v147 + 144) = v265;
      *(v147 + 160) = v160;
      *(v147 + 128) = v264;
      sub_1D62B7860(&v250);
      goto LABEL_56;
    }

LABEL_54:
    v146 = *&v278[0];
    *(*&v278[0] + 8 * (v139 >> 6) + 64) |= 1 << v139;
    *(v146[6] + 16 * v139) = v135;
    v176 = v146[7] + 184 * v139;
    *v176 = v135;
    *(v176 + 80) = v272;
    v177 = v271;
    *(v176 + 48) = v270;
    *(v176 + 64) = v177;
    v178 = v269;
    *(v176 + 16) = v268;
    *(v176 + 32) = v178;
    *(v176 + 88) = v131;
    v179 = v263;
    *(v176 + 96) = v262;
    *(v176 + 112) = v179;
    v180 = v264;
    v181 = v265;
    v182 = v266;
    *(v176 + 176) = v267;
    *(v176 + 144) = v181;
    *(v176 + 160) = v182;
    *(v176 + 128) = v180;
    v183 = v146[2];
    v34 = __OFADD__(v183, 1);
    v184 = v183 + 1;
    if (v34)
    {
      goto LABEL_93;
    }

    v146[2] = v184;

LABEL_56:
    sub_1D62B7860(&v280);
    sub_1D62B7860(&v292);
    v304 = v146;
    v75 = v136;
LABEL_57:
    if (v246 == v74)
    {
      goto LABEL_60;
    }

    ++v74;
    v76 += 184;
    if (v74 < *(v9 + 16))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_60:

  *&v292 = v249;

  sub_1D6985DAC(v185);
  v186 = *(v292 + 16);
  if (v186)
  {
    v187 = 0;
    v188 = v292 + 40;
    v189 = MEMORY[0x1E69E7CC0];
    v247 = v292 + 40;
LABEL_62:
    v190 = v304;
    v191 = v188 + 16 * v187;
    v192 = v187;
    while (v192 < v186)
    {
      v187 = v192 + 1;
      if (__OFADD__(v192, 1))
      {
        goto LABEL_88;
      }

      if (v190[2])
      {

        v193 = sub_1D6D8CB60();
        if (v194)
        {
          v195 = v190[7] + 184 * v193;
          v197 = *(v195 + 32);
          v196 = *(v195 + 48);
          v198 = *(v195 + 16);
          v292 = *v195;
          v293 = v198;
          v294 = v197;
          v295 = v196;
          v199 = *(v195 + 64);
          v200 = *(v195 + 80);
          v201 = *(v195 + 112);
          v298 = *(v195 + 96);
          v299 = v201;
          v296 = v199;
          v297 = v200;
          v202 = *(v195 + 128);
          v203 = *(v195 + 144);
          v204 = *(v195 + 160);
          v303 = *(v195 + 176);
          v302 = v204;
          v300 = v202;
          v301 = v203;
          sub_1D62B7804(&v292, &v280);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v189 = sub_1D698E61C(0, *(v189 + 2) + 1, 1, v189);
          }

          v188 = v247;
          v206 = *(v189 + 2);
          v205 = *(v189 + 3);
          if (v206 >= v205 >> 1)
          {
            v189 = sub_1D698E61C((v205 > 1), v206 + 1, 1, v189);
          }

          *(v189 + 2) = v206 + 1;
          v207 = &v189[184 * v206];
          v208 = v292;
          v209 = v293;
          v210 = v295;
          *(v207 + 4) = v294;
          *(v207 + 5) = v210;
          *(v207 + 2) = v208;
          *(v207 + 3) = v209;
          v211 = v296;
          v212 = v297;
          v213 = v299;
          *(v207 + 8) = v298;
          *(v207 + 9) = v213;
          *(v207 + 6) = v211;
          *(v207 + 7) = v212;
          v214 = v300;
          v215 = v301;
          v216 = v302;
          v207[208] = v303;
          *(v207 + 11) = v215;
          *(v207 + 12) = v216;
          *(v207 + 10) = v214;
          if (v187 != v186)
          {
            goto LABEL_62;
          }

          goto LABEL_76;
        }
      }

      ++v192;
      v191 += 16;
      if (v187 == v186)
      {
        goto LABEL_76;
      }
    }

    goto LABEL_87;
  }

  v189 = MEMORY[0x1E69E7CC0];
LABEL_76:

  v217 = v244;
  v279 = *(v244 + 120);
  v218 = *(v244 + 9);
  v219 = *(v244 + 13);
  v278[2] = *(v244 + 11);
  v278[3] = v219;
  v278[0] = *(v244 + 7);
  v278[1] = v218;
  if (v279 == 255)
  {
    v223 = *(v243 + 72);
    v224 = *(v243 + 104);
    v294 = *(v243 + 88);
    v295 = v224;
    LOBYTE(v296) = *(v243 + 120);
    v292 = *(v243 + 56);
    v293 = v223;
    sub_1D5E3A490(&v292, &v280, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
    v217 = v244;
    v275 = v294;
    v276 = v295;
    v277 = v296;
    v222 = v292;
    v220 = v293;
  }

  else
  {
    v220 = *(v244 + 9);
    v221 = *(v244 + 13);
    v275 = *(v244 + 11);
    v276 = v221;
    v277 = *(v244 + 120);
    v222 = *(v244 + 7);
  }

  v273 = v222;
  v274 = v220;
  v225 = v217[16];
  if (!v225)
  {
    v225 = *(v243 + 128);

    v217 = v244;
  }

  LOBYTE(v297) = *(v217 + 216);
  v226 = *(v217 + 23);
  v294 = *(v217 + 21);
  v295 = v226;
  v296 = *(v217 + 25);
  v227 = *(v217 + 19);
  v292 = *(v217 + 17);
  v293 = v227;
  if (v297 == 254)
  {
    v228 = *(v243 + 184);
    v252 = *(v243 + 168);
    v253 = v228;
    v254 = *(v243 + 200);
    LOBYTE(v255) = *(v243 + 216);
    v229 = *(v243 + 152);
    v250 = *(v243 + 136);
    v251 = v229;
    sub_1D5E3A490(&v250, &v280, &qword_1EDF33718, &type metadata for FormatShadow);
    v282 = v252;
    v283 = v253;
    v284 = v254;
    LOBYTE(v285) = v255;
    v230 = v250;
    v231 = v251;
  }

  else
  {
    v232 = *(v217 + 23);
    v282 = *(v217 + 21);
    v283 = v232;
    v284 = *(v217 + 25);
    LOBYTE(v285) = *(v217 + 216);
    v230 = *(v217 + 17);
    v231 = *(v217 + 19);
  }

  v280 = v230;
  v281 = v231;
  v233 = swift_allocObject();
  swift_beginAccess();
  *(v233 + 16) = v241;
  *(v233 + 24) = v240;
  *(v233 + 32) = v239;
  *(v233 + 40) = v242;
  swift_beginAccess();
  v234 = v273;
  *(v233 + 72) = v274;
  v235 = v276;
  *(v233 + 88) = v275;
  *(v233 + 104) = v235;
  *(v233 + 56) = v234;
  v236 = v283;
  *(v233 + 168) = v282;
  *(v233 + 184) = v236;
  *(v233 + 200) = v284;
  v237 = v281;
  *(v233 + 136) = v280;
  *(v233 + 48) = v189;
  *(v233 + 120) = v277;
  *(v233 + 128) = v225;
  *(v233 + 216) = v285;
  *(v233 + 152) = v237;
  sub_1D5E3A490(v278, &v250, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);

  sub_1D5E3A490(&v292, &v250, &qword_1EDF33718, &type metadata for FormatShadow);
  return v233;
}

void sub_1D6733E28(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 48);
  v5 = *(v4 + 16);

  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1D698E61C(0, v5, 0, MEMORY[0x1E69E7CC0]);
  v107 = sub_1D698E4B4(0, v5, 0, v6);
  v111 = *(v4 + 16);
  if (v111)
  {
    v8 = 0;
    v108 = v4;
    v109 = v4 + 32;
    while (1)
    {
      v9 = v7;
      v10 = (v109 + 184 * v8);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[3];
      v131 = v10[2];
      v132 = v13;
      v129 = v11;
      v130 = v12;
      v14 = v10[4];
      v15 = v10[5];
      v16 = v10[7];
      v135 = v10[6];
      v136 = v16;
      v133 = v14;
      v134 = v15;
      v17 = v10[8];
      v18 = v10[9];
      v19 = v10[10];
      v140 = *(v10 + 176);
      v138 = v18;
      v139 = v19;
      v137 = v17;
      v20 = v129;
      sub_1D62B7804(&v129, &v141);
      if (qword_1EDF2AB18 != -1)
      {
        swift_once();
      }

      v141 = v20;

      v21 = sub_1D6844380(&v141);

      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = 0;
        v24 = 32;
        while (1)
        {
          if (v23 >= *(v21 + 16))
          {
            __break(1u);
            goto LABEL_43;
          }

          v26 = *(v21 + v24 + 16);
          v25 = *(v21 + v24 + 32);
          v27 = *(v21 + v24);
          v154 = *(v21 + v24 + 48);
          v153[1] = v26;
          v153[2] = v25;
          v153[0] = v27;
          v28 = v26;
          sub_1D5E3B610(v153, &v141);
          if (sub_1D68444DC(a1))
          {
            break;
          }

          ++v23;
          sub_1D5E3B66C(v153);
          v24 += 56;
          if (v22 == v23)
          {
            goto LABEL_10;
          }
        }

        sub_1D5E3B66C(v153);
        if (v28 <= 1)
        {
          v43 = *(v9 + 2);
          v42 = *(v9 + 3);
          v29 = v108;
          if (v43 >= v42 >> 1)
          {
            v7 = sub_1D698E61C((v42 > 1), v43 + 1, 1, v9);
          }

          else
          {
            v7 = v9;
          }

          *(v7 + 2) = v43 + 1;
          v44 = &v7[184 * v43];
          v45 = v129;
          v46 = v130;
          v47 = v132;
          *(v44 + 4) = v131;
          *(v44 + 5) = v47;
          *(v44 + 2) = v45;
          *(v44 + 3) = v46;
          v48 = v133;
          v49 = v134;
          v50 = v136;
          *(v44 + 8) = v135;
          *(v44 + 9) = v50;
          *(v44 + 6) = v48;
          *(v44 + 7) = v49;
          v51 = v137;
          v52 = v138;
          v53 = v139;
          v44[208] = v140;
          *(v44 + 11) = v52;
          *(v44 + 12) = v53;
          *(v44 + 10) = v51;
          goto LABEL_12;
        }

        v149 = v137;
        v150 = v138;
        v151 = v139;
        LOBYTE(v152) = v140;
        v145 = v133;
        v146 = v134;
        v147 = v135;
        v148 = v136;
        v141 = v129;
        v142 = v130;
        v143 = v131;
        v144 = v132;
        sub_1D62B7804(&v129, &v113);
        v31 = v107[2];
        v30 = v107[3];
        if (v31 >= v30 >> 1)
        {
          v107 = sub_1D698E4B4((v30 > 1), v31 + 1, 1, v107);
        }

        sub_1D62B7860(&v129);
        v107[2] = v31 + 1;
        v32 = &v107[24 * v31];
        v33 = v144;
        v35 = v141;
        v34 = v142;
        *(v32 + 4) = v143;
        *(v32 + 5) = v33;
        *(v32 + 2) = v35;
        *(v32 + 3) = v34;
        v36 = v145;
        v37 = v146;
        v38 = v148;
        *(v32 + 8) = v147;
        *(v32 + 9) = v38;
        *(v32 + 6) = v36;
        *(v32 + 7) = v37;
        v39 = v149;
        v40 = v151;
        v41 = v152;
        *(v32 + 11) = v150;
        *(v32 + 12) = v40;
        *(v32 + 10) = v39;
        v32[26] = v41;
        v32[27] = v28;
      }

      else
      {
LABEL_10:
        sub_1D62B7860(&v129);
      }

      v29 = v108;
      v7 = v9;
LABEL_12:
      if (++v8 == v111)
      {
        break;
      }

      if (v8 >= *(v29 + 16))
      {
        goto LABEL_44;
      }
    }
  }

  sub_1D6735B24(0);
  v54 = sub_1D72626AC();

  v55 = *(v54 + 16);
  if (v55)
  {
    v56 = v55 - 1;
    for (i = 32; ; i += 192)
    {
      v58 = *(v54 + i);
      v59 = *(v54 + i + 16);
      v60 = *(v54 + i + 48);
      v143 = *(v54 + i + 32);
      v144 = v60;
      v141 = v58;
      v142 = v59;
      v61 = *(v54 + i + 64);
      v62 = *(v54 + i + 80);
      v63 = *(v54 + i + 112);
      v147 = *(v54 + i + 96);
      v148 = v63;
      v145 = v61;
      v146 = v62;
      v64 = *(v54 + i + 128);
      v65 = *(v54 + i + 144);
      v66 = *(v54 + i + 176);
      v151 = *(v54 + i + 160);
      v152 = v66;
      v149 = v64;
      v150 = v65;
      sub_1D6735BD4(&v141, &v129, sub_1D6735B24);
      v68 = *(v7 + 2);
      v67 = *(v7 + 3);
      if (v68 >= v67 >> 1)
      {
        v7 = sub_1D698E61C((v67 > 1), v68 + 1, 1, v7);
      }

      *(v7 + 2) = v68 + 1;
      v69 = &v7[184 * v68];
      v70 = v141;
      v71 = v142;
      v72 = v144;
      *(v69 + 4) = v143;
      *(v69 + 5) = v72;
      *(v69 + 2) = v70;
      *(v69 + 3) = v71;
      v73 = v145;
      v74 = v146;
      v75 = v148;
      *(v69 + 8) = v147;
      *(v69 + 9) = v75;
      *(v69 + 6) = v73;
      *(v69 + 7) = v74;
      v76 = v149;
      v77 = v150;
      v78 = v151;
      v69[208] = v152;
      *(v69 + 11) = v77;
      *(v69 + 12) = v78;
      *(v69 + 10) = v76;
      if (!v56)
      {
        break;
      }

      --v56;
    }
  }

  v79 = *(v7 + 2);

  v112 = v79;
  if (v79)
  {
    v80 = 0;
    v81 = v7 + 128;
    v110 = v7;
    while (v80 < *(v7 + 2))
    {
      v124 = *(v81 - 5);
      v89 = *(v81 - 4);
      v90 = *(v81 - 3);
      v91 = *(v81 - 2);
      v128 = *(v81 - 16);
      v126 = v90;
      v127 = v91;
      v125 = v89;
      v92 = *(v81 - 1);
      v93 = *(v81 + 1);
      v141 = *v81;
      v142 = v93;
      v94 = *(v81 + 2);
      v95 = *(v81 + 3);
      v96 = *(v81 + 4);
      LOBYTE(v146) = v81[80];
      v144 = v95;
      v145 = v96;
      v143 = v94;
      v97 = swift_allocObject();
      swift_beginAccess();
      v98 = *(v2 + 16);
      v99 = *(v2 + 24);
      swift_beginAccess();
      *(v97 + 16) = v98;
      *(v97 + 24) = v99;
      v100 = *(v2 + 40);
      *(v97 + 32) = *(v2 + 32);
      *(v97 + 40) = v100;
      if (v128 == 255)
      {
        v103 = *(v2 + 72);
        v104 = *(v2 + 104);
        v131 = *(v2 + 88);
        v132 = v104;
        LOBYTE(v133) = *(v2 + 120);
        v129 = *(v2 + 56);
        v130 = v103;
        sub_1D5E3A490(&v129, &v113, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
        v121 = v131;
        v122 = v132;
        v123 = v133;
        v102 = v129;
        v101 = v130;
      }

      else
      {
        v121 = v126;
        v122 = v127;
        v123 = v128;
        v102 = v124;
        v101 = v125;
      }

      v119 = v102;
      v120 = v101;
      *(v97 + 72) = v101;
      v105 = v122;
      *(v97 + 88) = v121;
      *(v97 + 104) = v105;
      *(v97 + 120) = v123;
      *(v97 + 56) = v102;
      v106 = v92;
      if (!v92)
      {
      }

      *(v97 + 128) = v106;
      if (v146 == 254)
      {
        v82 = *(v2 + 184);
        v115 = *(v2 + 168);
        v116 = v82;
        v117 = *(v2 + 200);
        v118 = *(v2 + 216);
        v83 = *(v2 + 152);
        v113 = *(v2 + 136);
        v114 = v83;
        sub_1D5E3A490(&v113, &v129, &qword_1EDF33718, &type metadata for FormatShadow);
        v131 = v115;
        v132 = v116;
        v133 = v117;
        LOBYTE(v134) = v118;
        v84 = v113;
        v85 = v114;
      }

      else
      {
        v131 = v143;
        v132 = v144;
        v133 = v145;
        LOBYTE(v134) = v146;
        v84 = v141;
        v85 = v142;
      }

      v129 = v84;
      v130 = v85;
      ++v80;
      v86 = v132;
      *(v97 + 168) = v131;
      *(v97 + 184) = v86;
      *(v97 + 200) = v133;
      *(v97 + 216) = v134;
      v87 = v130;
      *(v97 + 136) = v129;
      *(v97 + 152) = v87;
      swift_beginAccess();
      v88 = *(v2 + 48);

      sub_1D5E3A490(&v124, &v113, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);

      sub_1D5E3A490(&v141, &v113, &qword_1EDF33718, &type metadata for FormatShadow);

      swift_beginAccess();
      *(v97 + 48) = v88;
      v81 += 184;
      v2 = v97;
      v7 = v110;
      if (v112 == v80)
      {
        goto LABEL_41;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  else
  {
LABEL_41:
  }
}