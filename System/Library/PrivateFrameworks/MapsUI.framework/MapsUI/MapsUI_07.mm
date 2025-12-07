uint64_t sub_1C56D9508(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F988, type metadata accessor for WebPlacecardBridgeReply.MUUserData, &unk_1C58729B8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56D95A8(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D418, type metadata accessor for WebPlacecardBridgeReply.MUUserData, &unk_1C5872940);

  return sub_1C584F160();
}

uint64_t sub_1C56D9614(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D418, type metadata accessor for WebPlacecardBridgeReply.MUUserData, &unk_1C5872940);

  return sub_1C584F170();
}

uint64_t sub_1C56D96D4()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190270);
  __swift_project_value_buffer(v0, qword_1EC190270);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "appleRatingCategory";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56D989C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_1C584F050();
    if (v6 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_1C584F0D0();
    }

    else if (result == 2)
    {
      v13 = a4(0);
      a5(v5 + *(v13 + 24), a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C56D9A10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F980, type metadata accessor for WebPlacecardBridgeReply.MUArpRating, &unk_1C5872B20);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56D9AB0(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F6B8, type metadata accessor for WebPlacecardBridgeReply.MUArpRating, &unk_1C5872AA8);

  return sub_1C584F160();
}

uint64_t sub_1C56D9B1C(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F6B8, type metadata accessor for WebPlacecardBridgeReply.MUArpRating, &unk_1C5872AA8);

  return sub_1C584F170();
}

uint64_t sub_1C56D9BC8()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190288);
  __swift_project_value_buffer(v0, qword_1EC190288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AE50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "guideID";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "image";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "numberOfPlaces";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56D9E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C584F050();
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
        type metadata accessor for WebPlacecardBridgeReply.MUUserGuide(0);
        sub_1C584F0E0();
      }
    }

    else if (result == 1 || result == 2)
    {
LABEL_2:
      type metadata accessor for WebPlacecardBridgeReply.MUUserGuide(0);
      sub_1C584F0D0();
    }
  }
}

int *sub_1C56D9F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUUserGuide(0);
  v6 = result;
  if (*(v3 + result[5] + 8))
  {
    result = sub_1C584F1F0();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  if (*(v3 + v6[6] + 8))
  {
    sub_1C584F1F0();
  }

  if (*(v3 + v6[7] + 8))
  {
    sub_1C584F1F0();
  }

  if ((*(v3 + v6[8] + 4) & 1) == 0)
  {
    sub_1C584F200();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56DA020@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
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
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t sub_1C56DA0C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F978, type metadata accessor for WebPlacecardBridgeReply.MUUserGuide, &unk_1C5872C88);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56DA164(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F6D0, type metadata accessor for WebPlacecardBridgeReply.MUUserGuide, &unk_1C5872C10);

  return sub_1C584F160();
}

uint64_t sub_1C56DA1D0(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F6D0, type metadata accessor for WebPlacecardBridgeReply.MUUserGuide, &unk_1C5872C10);

  return sub_1C584F170();
}

uint64_t sub_1C56DA250()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18F938);
  __swift_project_value_buffer(v0, qword_1EC18F938);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "userImage";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "count";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56DA418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  result = a4(0);
  v11 = result;
  if (*(v5 + *(result + 20) + 8))
  {
    result = sub_1C584F1F0();
    if (v6)
    {
      return result;
    }
  }

  else if (v6)
  {
    return result;
  }

  v12 = (v5 + *(v11 + 24));
  if ((v12[1] & 1) == 0)
  {
    a5(*v12, 2, a2, a3);
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56DA4EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t sub_1C56DA5CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F970, type metadata accessor for WebPlacecardBridgeReply.MURapsInReview, &unk_1C5872DF0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56DA66C(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D360, type metadata accessor for WebPlacecardBridgeReply.MURapsInReview, &unk_1C5872D78);

  return sub_1C584F160();
}

uint64_t sub_1C56DA6D8(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D360, type metadata accessor for WebPlacecardBridgeReply.MURapsInReview, &unk_1C5872D78);

  return sub_1C584F170();
}

uint64_t sub_1C56DA784()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC1902A0);
  __swift_project_value_buffer(v0, qword_1EC1902A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1C586AE90;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "title";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C584F230();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v28 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "subtitle";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v28 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "isRatingSuggestion";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v8();
  v12 = (v28 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "isPhotoSuggestion";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = (v28 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "userImage";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v28 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "canAddPhotos";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v28 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "hasNearbyPhotos";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v8();
  v20 = (v28 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "canRate";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v8();
  v22 = v28 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "isPinned";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "hasVisited";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v8();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "isNearbyLocation";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  return sub_1C584F240();
}

uint64_t sub_1C56DAB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C584F050();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result <= 5)
    {
      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
LABEL_16:
          type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
          sub_1C584F0D0();
        }
      }

      else
      {
        if (result != 3 && result != 4)
        {
          goto LABEL_16;
        }

LABEL_2:
        type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
        sub_1C584F080();
      }
    }

    else if (result <= 10 || result == 11)
    {
      goto LABEL_2;
    }
  }
}

int *sub_1C56DAD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  v10 = result;
  if (*(v5 + result[5] + 8))
  {
    result = sub_1C584F1F0();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  if (*(v5 + v10[6] + 8))
  {
    sub_1C584F1F0();
  }

  if (*(v5 + v10[7]) != 2)
  {
    sub_1C584F190();
  }

  if (*(v5 + v10[8]) != 2)
  {
    sub_1C584F190();
  }

  sub_1C56DAF60(v5, a1, a2, a3, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions);
  sub_1C56DAFDC(v5, a1, a2, a3, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions);
  sub_1C56DB058(v5, a1, a2, a3);
  sub_1C56DB0D0(v5, a1, a2, a3);
  sub_1C56DB148(v5, a1, a2, a3, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions);
  sub_1C56DB1C4(v5, a1, a2, a3);
  sub_1C56DB23C(v5, a1, a2, a3);
  return sub_1C584EFB0();
}

uint64_t sub_1C56DAF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return sub_1C584F1F0();
  }

  return result;
}

uint64_t sub_1C56DAFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 40)) != 2)
  {
    return sub_1C584F190();
  }

  return result;
}

uint64_t sub_1C56DB058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return sub_1C584F190();
  }

  return result;
}

uint64_t sub_1C56DB0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  if (*(a1 + *(result + 48)) != 2)
  {
    return sub_1C584F190();
  }

  return result;
}

uint64_t sub_1C56DB148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 52)) != 2)
  {
    return sub_1C584F190();
  }

  return result;
}

uint64_t sub_1C56DB1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  if (*(a1 + *(result + 56)) != 2)
  {
    return sub_1C584F190();
  }

  return result;
}

uint64_t sub_1C56DB23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  if (*(a1 + *(result + 60)) != 2)
  {
    return sub_1C584F190();
  }

  return result;
}

uint64_t sub_1C56DB2B4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v8) = 2;
  v9 = a1[10];
  v10 = (a2 + a1[9]);
  *v10 = 0;
  v10[1] = 0;
  *(a2 + v9) = 2;
  v11 = a1[12];
  *(a2 + a1[11]) = 2;
  *(a2 + v11) = 2;
  v12 = a1[14];
  *(a2 + a1[13]) = 2;
  *(a2 + v12) = 2;
  *(a2 + a1[15]) = 2;
  return result;
}

uint64_t sub_1C56DB37C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F968, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions, &unk_1C5872F58);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56DB41C(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D320, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions, &unk_1C5872EE0);

  return sub_1C584F160();
}

uint64_t sub_1C56DB488(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D320, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions, &unk_1C5872EE0);

  return sub_1C584F170();
}

uint64_t sub_1C56DB508()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC1902B8);
  __swift_project_value_buffer(v0, qword_1EC1902B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "note";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "userImage";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56DB6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = sub_1C584F050();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      a4(0);
      sub_1C584F0D0();
    }
  }

  return result;
}

uint64_t sub_1C56DB784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v7 = result;
  if (*(v4 + *(result + 20) + 8))
  {
    result = sub_1C584F1F0();
    if (v5)
    {
      return result;
    }
  }

  else if (v5)
  {
    return result;
  }

  if (*(v4 + *(v7 + 24) + 8))
  {
    sub_1C584F1F0();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56DB848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_1C56DB8F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F960, type metadata accessor for WebPlacecardBridgeReply.MUUserNote, &unk_1C58730C0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56DB998(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D400, type metadata accessor for WebPlacecardBridgeReply.MUUserNote, &unk_1C5873048);

  return sub_1C584F160();
}

uint64_t sub_1C56DBA04(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D400, type metadata accessor for WebPlacecardBridgeReply.MUUserNote, &unk_1C5873048);

  return sub_1C584F170();
}

uint64_t sub_1C56DBAB0()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18F950);
  __swift_project_value_buffer(v0, qword_1EC18F950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AE50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "etaTransportType";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "etaTravelTime";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "distanceString";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "distance";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56DBCF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C584F050();
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
        goto LABEL_11;
      }
    }

    else if (result == 1)
    {
LABEL_2:
      type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
      sub_1C584F0D0();
    }

    else if (result == 2)
    {
LABEL_11:
      type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
      sub_1C584F0A0();
    }
  }
}

int *sub_1C56DBDF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
  v6 = result;
  if (*(v3 + result[5] + 8))
  {
    result = sub_1C584F1F0();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  if ((*(v3 + v6[6] + 4) & 1) == 0)
  {
    sub_1C584F1B0();
  }

  if (*(v3 + v6[7] + 8))
  {
    sub_1C584F1F0();
  }

  if ((*(v3 + v6[8] + 4) & 1) == 0)
  {
    sub_1C584F1B0();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56DBF08@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t sub_1C56DBFB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F958, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider, &unk_1C5873228);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56DC050(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D3A8, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider, &unk_1C58731B0);

  return sub_1C584F160();
}

uint64_t sub_1C56DC0BC(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D3A8, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider, &unk_1C58731B0);

  return sub_1C584F170();
}

uint64_t sub_1C56DC13C()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC1902D0);
  __swift_project_value_buffer(v0, qword_1EC1902D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AE60;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayName";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "url";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "artworkURL";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "subtitle";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "isAppInstalled";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56DC404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C584F050();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      if (result == 4 || result == 5)
      {
LABEL_2:
        type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork(0);
        sub_1C584F0D0();
      }

      else if (result == 6)
      {
        type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork(0);
        sub_1C584F080();
      }
    }

    else if (result == 1 || result == 2 || result == 3)
    {
      goto LABEL_2;
    }
  }
}

int *sub_1C56DC53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork(0);
  v10 = result;
  if (*(v5 + result[5] + 8))
  {
    result = sub_1C584F1F0();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  if (*(v5 + v10[6] + 8))
  {
    sub_1C584F1F0();
  }

  if (*(v5 + v10[7] + 8))
  {
    sub_1C584F1F0();
  }

  if (*(v5 + v10[8] + 8))
  {
    sub_1C584F1F0();
  }

  sub_1C56DAF60(v5, a1, a2, a3, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);
  sub_1C56DAFDC(v5, a1, a2, a3, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);
  return sub_1C584EFB0();
}

uint64_t sub_1C56DC6A4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
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

uint64_t sub_1C56DC754(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F950, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork, &unk_1C5873390);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56DC7F4(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F708, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork, &unk_1C5873318);

  return sub_1C584F160();
}

uint64_t sub_1C56DC860(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F708, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork, &unk_1C5873318);

  return sub_1C584F170();
}

uint64_t sub_1C56DC8E0()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC1902E8);
  __swift_project_value_buffer(v0, qword_1EC1902E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "place";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "batch_places";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56DCAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C584F050();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem(0);
      sub_1C584F0D0();
    }

    else if (result == 2)
    {
      sub_1C584F0C0();
    }
  }

  return result;
}

uint64_t sub_1C56DCB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem(0);
  if (*(v3 + *(result + 24) + 8))
  {
    result = sub_1C584F1F0();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  if (*(*v3 + 16))
  {
    sub_1C584F1D0();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56DCC24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  result = sub_1C584EFC0();
  v5 = (a2 + *(a1 + 24));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_1C56DCCB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F948, type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem, &unk_1C58734F8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56DCD58(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D268, type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem, &unk_1C5873480);

  return sub_1C584F160();
}

uint64_t sub_1C56DCDC4(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D268, type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem, &unk_1C5873480);

  return sub_1C584F170();
}

uint64_t sub_1C56DCE44()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190300);
  __swift_project_value_buffer(v0, qword_1EC190300);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AE30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "providerID";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "baseActionUrl";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "displayName";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "logoImage";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "snippetLogoImage";
  *(v15 + 8) = 16;
  *(v15 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56DD0D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C584F050();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        goto LABEL_2;
      }

      if (result == 2)
      {
        sub_1C584F0C0();
      }
    }

    else if (result == 3 || result == 4 || result == 5)
    {
LABEL_2:
      type metadata accessor for WebPlacecardBridgeReply.MUAttributionData(0);
      sub_1C584F0D0();
    }
  }
}

int *sub_1C56DD1E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUAttributionData(0);
  v6 = result;
  if (*(v3 + result[6] + 8))
  {
    result = sub_1C584F1F0();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  if (*(*v3 + 16))
  {
    sub_1C584F1D0();
  }

  if (*(v3 + v6[7] + 8))
  {
    sub_1C584F1F0();
  }

  if (*(v3 + v6[8] + 8))
  {
    sub_1C584F1F0();
  }

  if (*(v3 + v6[9] + 8))
  {
    sub_1C584F1F0();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56DD330@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  result = sub_1C584EFC0();
  v5 = a1[7];
  v6 = (a2 + a1[6]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[9];
  v9 = (a2 + a1[8]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t sub_1C56DD3E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F940, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData, &unk_1C5873660);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56DD480(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D300, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData, &unk_1C58735E8);

  return sub_1C584F160();
}

uint64_t sub_1C56DD4EC(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D300, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData, &unk_1C58735E8);

  return sub_1C584F170();
}

uint64_t sub_1C56DD56C()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18F980);
  __swift_project_value_buffer(v0, qword_1EC18F980);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "arguments";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56DD734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C584F050();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
        sub_1C5703A94();
        sub_1C584F090();
      }

      else if (result == 2)
      {
        type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
        type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
        sub_1C56EF190(&qword_1EC16D220, type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments, &unk_1C58738B8);
        sub_1C584F100();
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56DD86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  if (*(v5 + *(result + 20)) == 13)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_1C5703A94();
    result = sub_1C584F1A0();
    if (v4)
    {
      return result;
    }
  }

  sub_1C56DD92C(v5, a1, a2, a3);
  return sub_1C584EFB0();
}

uint64_t sub_1C56DD92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECD0, &qword_1C586B158);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  sub_1C56466CC(a1 + *(v14 + 24), v8, &qword_1EC16ECD0, &qword_1C586B158);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16ECD0, &qword_1C586B158);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments);
  sub_1C56EF190(&qword_1EC16D220, type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments, &unk_1C58738B8);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments);
}

uint64_t sub_1C56DDB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C584EFC0();
  v4 = *(a1 + 20);
  v5 = *(a1 + 24);
  *(a2 + v4) = 13;
  v6 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_1C56DDC14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F938, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall, &unk_1C58737C8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56DDCB4(uint64_t a1)
{
  sub_1C56EF190(&unk_1EC16D438, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall, &unk_1C5873750);

  return sub_1C584F160();
}

uint64_t sub_1C56DDD20(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&unk_1EC16D438, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall, &unk_1C5873750);

  return sub_1C584F170();
}

uint64_t sub_1C56DDDA0()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18F878);
  __swift_project_value_buffer(v0, qword_1EC18F878);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1C586AE90;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "cardExpansion";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C584F230();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "etaProvider";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "userData";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "directionsMetadata";
  *(v13 + 1) = 18;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "menuItemTap";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "vgVehicles";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "placecardOfflineMapProvider";
  *(v19 + 1) = 27;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "nativeUITap";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "visibility";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "userPreferences";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 1000;
  *v26 = "perfMarkers";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v8();
  return sub_1C584F240();
}

uint64_t sub_1C56DE194()
{
  type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__cardExpansion;
  v2 = type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__etaProvider;
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userData;
  v6 = type metadata accessor for WebPlacecardBridgeReply.MUUserData(0);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsMetadata;
  v8 = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__menuItemTap;
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs(0);
  (*(*(v10 - 8) + 56))(v0 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__vgVehicles;
  v12 = type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs(0);
  (*(*(v12 - 8) + 56))(v0 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider;
  v14 = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  (*(*(v14 - 8) + 56))(v0 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nativeUitap;
  v16 = type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs(0);
  (*(*(v16 - 8) + 56))(v0 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__visibility;
  v18 = type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs(0);
  (*(*(v18 - 8) + 56))(v0 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences;
  v20 = type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs(0);
  (*(*(v20 - 8) + 56))(v0 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__perfMarkers;
  v22 = type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers(0);
  result = (*(*(v22 - 8) + 56))(v0 + v21, 1, 1, v22);
  qword_1EC176048 = v0;
  return result;
}

uint64_t sub_1C56DE4E8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ED08, &qword_1C586B190);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v104 = &v88 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ED00, &qword_1C586B188);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v103 = &v88 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECF8, &qword_1C586B180);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v102 = &v88 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECF0, &qword_1C586B178);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v101 = &v88 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC98, &qword_1C586B120);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v100 = &v88 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECE8, &qword_1C586B170);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v99 = &v88 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECE0, &qword_1C586B168);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v98 = &v88 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC80, &qword_1C586B108);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v97 = &v88 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC70, &qword_1C586B0F8);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v93 = &v88 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC78, &qword_1C586B100);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v88 = &v88 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECD8, &qword_1C586B160);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v36 = &v88 - v35;
  v37 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__cardExpansion;
  v38 = type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs(0);
  (*(*(v38 - 8) + 56))(v1 + v37, 1, 1, v38);
  v39 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__etaProvider;
  v40 = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
  (*(*(v40 - 8) + 56))(v1 + v39, 1, 1, v40);
  v41 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userData;
  v42 = type metadata accessor for WebPlacecardBridgeReply.MUUserData(0);
  (*(*(v42 - 8) + 56))(v1 + v41, 1, 1, v42);
  v43 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsMetadata;
  v44 = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  (*(*(v44 - 8) + 56))(v1 + v43, 1, 1, v44);
  v45 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__menuItemTap;
  v89 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__menuItemTap;
  v46 = type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs(0);
  (*(*(v46 - 8) + 56))(v1 + v45, 1, 1, v46);
  v47 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__vgVehicles;
  v90 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__vgVehicles;
  v48 = type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs(0);
  (*(*(v48 - 8) + 56))(v1 + v47, 1, 1, v48);
  v49 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider;
  v91 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider;
  v50 = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  (*(*(v50 - 8) + 56))(v1 + v49, 1, 1, v50);
  v51 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nativeUitap;
  v92 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nativeUitap;
  v52 = type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs(0);
  (*(*(v52 - 8) + 56))(v1 + v51, 1, 1, v52);
  v53 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__visibility;
  v94 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__visibility;
  v54 = type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs(0);
  (*(*(v54 - 8) + 56))(v1 + v53, 1, 1, v54);
  v55 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences;
  v95 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences;
  v56 = type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs(0);
  (*(*(v56 - 8) + 56))(v1 + v55, 1, 1, v56);
  v57 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__perfMarkers;
  v96 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__perfMarkers;
  v58 = type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers(0);
  (*(*(v58 - 8) + 56))(v1 + v57, 1, 1, v58);
  v59 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__cardExpansion;
  swift_beginAccess();
  sub_1C56466CC(a1 + v59, v36, &qword_1EC16ECD8, &qword_1C586B160);
  swift_beginAccess();
  sub_1C56ECE38(v36, v1 + v37, &qword_1EC16ECD8, &qword_1C586B160);
  swift_endAccess();
  v60 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__etaProvider;
  swift_beginAccess();
  v61 = v88;
  sub_1C56466CC(a1 + v60, v88, &qword_1EC16EC78, &qword_1C586B100);
  swift_beginAccess();
  sub_1C56ECE38(v61, v1 + v39, &qword_1EC16EC78, &qword_1C586B100);
  swift_endAccess();
  v62 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userData;
  swift_beginAccess();
  v63 = v93;
  sub_1C56466CC(a1 + v62, v93, &qword_1EC16EC70, &qword_1C586B0F8);
  swift_beginAccess();
  sub_1C56ECE38(v63, v1 + v41, &qword_1EC16EC70, &qword_1C586B0F8);
  swift_endAccess();
  v64 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsMetadata;
  swift_beginAccess();
  v65 = v97;
  sub_1C56466CC(a1 + v64, v97, &qword_1EC16EC80, &qword_1C586B108);
  swift_beginAccess();
  sub_1C56ECE38(v65, v1 + v43, &qword_1EC16EC80, &qword_1C586B108);
  swift_endAccess();
  v66 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__menuItemTap;
  swift_beginAccess();
  v67 = v98;
  sub_1C56466CC(a1 + v66, v98, &qword_1EC16ECE0, &qword_1C586B168);
  v68 = v89;
  swift_beginAccess();
  sub_1C56ECE38(v67, v1 + v68, &qword_1EC16ECE0, &qword_1C586B168);
  swift_endAccess();
  v69 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__vgVehicles;
  swift_beginAccess();
  v70 = v99;
  sub_1C56466CC(a1 + v69, v99, &qword_1EC16ECE8, &qword_1C586B170);
  v71 = v90;
  swift_beginAccess();
  sub_1C56ECE38(v70, v1 + v71, &qword_1EC16ECE8, &qword_1C586B170);
  swift_endAccess();
  v72 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider;
  swift_beginAccess();
  v73 = v100;
  sub_1C56466CC(a1 + v72, v100, &qword_1EC16EC98, &qword_1C586B120);
  v74 = v91;
  swift_beginAccess();
  sub_1C56ECE38(v73, v1 + v74, &qword_1EC16EC98, &qword_1C586B120);
  swift_endAccess();
  v75 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nativeUitap;
  swift_beginAccess();
  v76 = v101;
  sub_1C56466CC(a1 + v75, v101, &qword_1EC16ECF0, &qword_1C586B178);
  v77 = v92;
  swift_beginAccess();
  sub_1C56ECE38(v76, v1 + v77, &qword_1EC16ECF0, &qword_1C586B178);
  swift_endAccess();
  v78 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__visibility;
  swift_beginAccess();
  v79 = v102;
  sub_1C56466CC(a1 + v78, v102, &qword_1EC16ECF8, &qword_1C586B180);
  v80 = v94;
  swift_beginAccess();
  sub_1C56ECE38(v79, v1 + v80, &qword_1EC16ECF8, &qword_1C586B180);
  swift_endAccess();
  v81 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences;
  swift_beginAccess();
  v82 = v103;
  sub_1C56466CC(a1 + v81, v103, &qword_1EC16ED00, &qword_1C586B188);
  v83 = v95;
  swift_beginAccess();
  sub_1C56ECE38(v82, v1 + v83, &qword_1EC16ED00, &qword_1C586B188);
  swift_endAccess();
  v84 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__perfMarkers;
  swift_beginAccess();
  v85 = v104;
  sub_1C56466CC(a1 + v84, v104, &qword_1EC16ED08, &qword_1C586B190);

  v86 = v96;
  swift_beginAccess();
  sub_1C56ECE38(v85, v1 + v86, &qword_1EC16ED08, &qword_1C586B190);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C56DF0F0()
{
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__cardExpansion, &qword_1EC16ECD8, &qword_1C586B160);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__etaProvider, &qword_1EC16EC78, &qword_1C586B100);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userData, &qword_1EC16EC70, &qword_1C586B0F8);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsMetadata, &qword_1EC16EC80, &qword_1C586B108);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__menuItemTap, &qword_1EC16ECE0, &qword_1C586B168);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__vgVehicles, &qword_1EC16ECE8, &qword_1C586B170);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider, &qword_1EC16EC98, &qword_1C586B120);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nativeUitap, &qword_1EC16ECF0, &qword_1C586B178);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__visibility, &qword_1EC16ECF8, &qword_1C586B180);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences, &qword_1EC16ED00, &qword_1C586B188);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__perfMarkers, &qword_1EC16ED08, &qword_1C586B190);

  return swift_deallocClassInstance();
}

uint64_t sub_1C56DF2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments._StorageClass(0);
    v9 = swift_allocObject();
    sub_1C56DE4E8(v8);
    *(v5 + v6) = v9;
  }

  result = sub_1C584F050();
  if (!v4)
  {
    while (1)
    {
      if (v11)
      {
        return result;
      }

      if (result <= 5)
      {
        if (result <= 2)
        {
          if (result == 1)
          {
            v12 = v4;
            swift_beginAccess();
            type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs(0);
            v13 = type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs;
            v14 = &unk_1C5873A20;
            v15 = &qword_1EC16D250;
          }

          else
          {
            if (result != 2)
            {
              goto LABEL_30;
            }

            v12 = v4;
            swift_beginAccess();
            type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
            v13 = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider;
            v14 = &unk_1C58731B0;
            v15 = &qword_1EC16D3A8;
          }
        }

        else if (result == 3)
        {
          v12 = v4;
          swift_beginAccess();
          type metadata accessor for WebPlacecardBridgeReply.MUUserData(0);
          v13 = type metadata accessor for WebPlacecardBridgeReply.MUUserData;
          v14 = &unk_1C5872940;
          v15 = &qword_1EC16D418;
        }

        else
        {
          v12 = v4;
          if (result == 4)
          {
            swift_beginAccess();
            type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
            v13 = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata;
            v14 = &unk_1C5873B88;
            v15 = &qword_1EC16D238;
          }

          else
          {
            swift_beginAccess();
            type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs(0);
            v13 = type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs;
            v14 = &unk_1C5874128;
            v15 = &qword_1EC16D2C0;
          }
        }
      }

      else if (result > 8)
      {
        switch(result)
        {
          case 9:
            v12 = v4;
            swift_beginAccess();
            type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs(0);
            v13 = type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs;
            v14 = &unk_1C5874880;
            v15 = &qword_1EC16F7C8;
            break;
          case 10:
            v12 = v4;
            swift_beginAccess();
            type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs(0);
            v13 = type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs;
            v14 = &unk_1C58749E8;
            v15 = &qword_1EC16F7E0;
            break;
          case 1000:
            v12 = v4;
            swift_beginAccess();
            type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers(0);
            v13 = type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers;
            v14 = &unk_1C5874B50;
            v15 = &qword_1EC16F7F8;
            break;
          default:
            goto LABEL_30;
        }
      }

      else if (result == 6)
      {
        v12 = v4;
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs(0);
        v13 = type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs;
        v14 = &unk_1C58742B8;
        v15 = &qword_1EC16F798;
      }

      else
      {
        v12 = v4;
        if (result == 7)
        {
          swift_beginAccess();
          type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
          v13 = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider;
          v14 = &unk_1C5874420;
          v15 = &qword_1EC16D1E0;
        }

        else
        {
          swift_beginAccess();
          type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs(0);
          v13 = type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs;
          v14 = &unk_1C58746F0;
          v15 = &qword_1EC16D280;
        }
      }

      sub_1C56EF190(v15, v13, v14);
      v4 = v12;
      sub_1C584F100();
      swift_endAccess();
LABEL_30:
      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56DF840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0) + 20));
  result = sub_1C56DF9A8(v8, a1, a2, a3);
  if (!v4)
  {
    sub_1C56DFBD0(v8, a1, a2, a3);
    sub_1C56DFDF8(v8, a1, a2, a3);
    sub_1C56E0020(v8, a1, a2, a3);
    sub_1C56E0248(v8, a1, a2, a3);
    sub_1C56E0470(v8, a1, a2, a3);
    sub_1C56E0698(v8, a1, a2, a3);
    sub_1C56E08C0(v8, a1, a2, a3);
    sub_1C56E0AE8(v8, a1, a2, a3);
    sub_1C56E0D10(v8, a1, a2, a3);
    sub_1C56E0F38(v8, a1, a2, a3);
    return sub_1C584EFB0();
  }

  return result;
}

uint64_t sub_1C56DF9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECD8, &qword_1C586B160);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__cardExpansion;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16ECD8, &qword_1C586B160);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16ECD8, &qword_1C586B160);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs);
  sub_1C56EF190(&qword_1EC16D250, type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs, &unk_1C5873A20);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs);
}

uint64_t sub_1C56DFBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC78, &qword_1C586B100);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__etaProvider;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EC78, &qword_1C586B100);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EC78, &qword_1C586B100);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);
  sub_1C56EF190(&qword_1EC16D3A8, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider, &unk_1C58731B0);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);
}

uint64_t sub_1C56DFDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC70, &qword_1C586B0F8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUUserData(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userData;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EC70, &qword_1C586B0F8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EC70, &qword_1C586B0F8);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
  sub_1C56EF190(&qword_1EC16D418, type metadata accessor for WebPlacecardBridgeReply.MUUserData, &unk_1C5872940);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
}

uint64_t sub_1C56E0020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC80, &qword_1C586B108);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsMetadata;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EC80, &qword_1C586B108);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EC80, &qword_1C586B108);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
  sub_1C56EF190(&qword_1EC16D238, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata, &unk_1C5873B88);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
}

uint64_t sub_1C56E0248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECE0, &qword_1C586B168);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__menuItemTap;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16ECE0, &qword_1C586B168);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16ECE0, &qword_1C586B168);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs);
  sub_1C56EF190(&qword_1EC16D2C0, type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs, &unk_1C5874128);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs);
}

uint64_t sub_1C56E0470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECE8, &qword_1C586B170);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__vgVehicles;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16ECE8, &qword_1C586B170);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16ECE8, &qword_1C586B170);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs);
  sub_1C56EF190(&qword_1EC16F798, type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs, &unk_1C58742B8);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs);
}

uint64_t sub_1C56E0698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC98, &qword_1C586B120);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EC98, &qword_1C586B120);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EC98, &qword_1C586B120);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
  sub_1C56EF190(&qword_1EC16D1E0, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider, &unk_1C5874420);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
}

uint64_t sub_1C56E08C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECF0, &qword_1C586B178);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nativeUitap;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16ECF0, &qword_1C586B178);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16ECF0, &qword_1C586B178);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs);
  sub_1C56EF190(&qword_1EC16D280, type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs, &unk_1C58746F0);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs);
}

uint64_t sub_1C56E0AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECF8, &qword_1C586B180);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__visibility;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16ECF8, &qword_1C586B180);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16ECF8, &qword_1C586B180);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs);
  sub_1C56EF190(&qword_1EC16F7C8, type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs, &unk_1C5874880);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs);
}

uint64_t sub_1C56E0D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ED00, &qword_1C586B188);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16ED00, &qword_1C586B188);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16ED00, &qword_1C586B188);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs);
  sub_1C56EF190(&qword_1EC16F7E0, type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs, &unk_1C58749E8);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs);
}

uint64_t sub_1C56E0F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ED08, &qword_1C586B190);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__perfMarkers;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16ED08, &qword_1C586B190);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16ED08, &qword_1C586B190);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers);
  sub_1C56EF190(&qword_1EC16F7F8, type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers, &unk_1C5874B50);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers);
}

BOOL sub_1C56E1160(uint64_t a1, uint64_t a2)
{
  v356 = a2;
  v289 = type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers(0);
  v286 = *(v289 - 8);
  MEMORY[0x1EEE9AC00](v289, v3);
  v283 = &v282 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBF0, &qword_1C5875E00);
  MEMORY[0x1EEE9AC00](v285, v5);
  v294 = &v282 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ED08, &qword_1C586B190);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v287 = &v282 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v288 = &v282 - v12;
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs(0);
  v292 = *(v13 - 8);
  v293 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v284 = &v282 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBF8, &qword_1C5875E08);
  MEMORY[0x1EEE9AC00](v291, v16);
  v297 = &v282 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ED00, &qword_1C586B188);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v290 = &v282 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v296 = &v282 - v23;
  v24 = type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs(0);
  v301 = *(v24 - 8);
  v302 = v24;
  MEMORY[0x1EEE9AC00](v24, v25);
  v295 = &v282 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC00, &qword_1C5875E10);
  MEMORY[0x1EEE9AC00](v300, v27);
  v303 = &v282 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECF8, &qword_1C586B180);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v298 = &v282 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v33);
  v305 = &v282 - v34;
  v35 = type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs(0);
  v308 = *(v35 - 8);
  v309 = v35;
  MEMORY[0x1EEE9AC00](v35, v36);
  v299 = &v282 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC08, &qword_1C5875E18);
  MEMORY[0x1EEE9AC00](v307, v38);
  v310 = &v282 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECF0, &qword_1C586B178);
  v42 = MEMORY[0x1EEE9AC00](v40 - 8, v41);
  v304 = &v282 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v44);
  v323 = &v282 - v45;
  v46 = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  v314 = *(v46 - 8);
  v315 = v46;
  MEMORY[0x1EEE9AC00](v46, v47);
  v306 = &v282 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC10, &qword_1C5875E20);
  MEMORY[0x1EEE9AC00](v313, v49);
  v316 = &v282 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC98, &qword_1C586B120);
  v53 = MEMORY[0x1EEE9AC00](v51 - 8, v52);
  v311 = &v282 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53, v55);
  v317 = &v282 - v56;
  v324 = type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs(0);
  v321 = *(v324 - 8);
  MEMORY[0x1EEE9AC00](v324, v57);
  v312 = (&v282 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC18, &qword_1C5875E28);
  MEMORY[0x1EEE9AC00](v320, v59);
  v322 = &v282 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECE8, &qword_1C586B170);
  v63 = MEMORY[0x1EEE9AC00](v61 - 8, v62);
  v318 = (&v282 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v63, v65);
  v326 = &v282 - v66;
  v67 = type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs(0);
  v329 = *(v67 - 8);
  v330 = v67;
  MEMORY[0x1EEE9AC00](v67, v68);
  v319 = &v282 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC20, &qword_1C5875E30);
  MEMORY[0x1EEE9AC00](v328, v70);
  v331 = &v282 - v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECE0, &qword_1C586B168);
  v74 = MEMORY[0x1EEE9AC00](v72 - 8, v73);
  v325 = &v282 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74, v76);
  v333 = &v282 - v77;
  v78 = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  v336 = *(v78 - 8);
  v337 = v78;
  MEMORY[0x1EEE9AC00](v78, v79);
  v327 = &v282 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC28, &qword_1C5875E38);
  MEMORY[0x1EEE9AC00](v335, v81);
  v338 = &v282 - v82;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC80, &qword_1C586B108);
  v85 = MEMORY[0x1EEE9AC00](v83 - 8, v84);
  v332 = &v282 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v85, v87);
  v339 = &v282 - v88;
  v89 = type metadata accessor for WebPlacecardBridgeReply.MUUserData(0);
  v343 = *(v89 - 8);
  v344 = v89;
  MEMORY[0x1EEE9AC00](v89, v90);
  v334 = &v282 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC30, &qword_1C5875E40);
  MEMORY[0x1EEE9AC00](v342, v92);
  v345 = &v282 - v93;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC70, &qword_1C586B0F8);
  v96 = MEMORY[0x1EEE9AC00](v94 - 8, v95);
  v341 = &v282 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v96, v98);
  v352 = &v282 - v99;
  v350 = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
  v349 = *(v350 - 8);
  MEMORY[0x1EEE9AC00](v350, v100);
  v340 = &v282 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC38, &qword_1C5875E48);
  MEMORY[0x1EEE9AC00](v348, v102);
  v351 = &v282 - v103;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC78, &qword_1C586B100);
  v106 = MEMORY[0x1EEE9AC00](v104 - 8, v105);
  v346 = &v282 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v106, v108);
  v354 = &v282 - v109;
  v355 = type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs(0);
  v110 = *(v355 - 8);
  MEMORY[0x1EEE9AC00](v355, v111);
  v347 = &v282 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC40, &qword_1C5875E50);
  v114 = v113 - 8;
  MEMORY[0x1EEE9AC00](v113, v115);
  v117 = &v282 - v116;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECD8, &qword_1C586B160);
  v120 = MEMORY[0x1EEE9AC00](v118 - 8, v119);
  v353 = &v282 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v120, v122);
  v124 = &v282 - v123;
  v125 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__cardExpansion;
  swift_beginAccess();
  v126 = a1 + v125;
  v127 = v356;
  sub_1C56466CC(v126, v124, &qword_1EC16ECD8, &qword_1C586B160);
  v128 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__cardExpansion;
  swift_beginAccess();
  v129 = *(v114 + 56);
  sub_1C56466CC(v124, v117, &qword_1EC16ECD8, &qword_1C586B160);
  v130 = v127 + v128;
  v131 = v355;
  sub_1C56466CC(v130, &v117[v129], &qword_1EC16ECD8, &qword_1C586B160);
  v132 = *(v110 + 48);
  if (v132(v117, 1, v131) == 1)
  {

    sub_1C5625230(v124, &qword_1EC16ECD8, &qword_1C586B160);
    if (v132(&v117[v129], 1, v131) == 1)
    {
      sub_1C5625230(v117, &qword_1EC16ECD8, &qword_1C586B160);
      goto LABEL_8;
    }

LABEL_6:
    v134 = &qword_1EC16FC40;
    v135 = &qword_1C5875E50;
    v136 = v117;
LABEL_43:
    sub_1C5625230(v136, v134, v135);
    goto LABEL_44;
  }

  v133 = v353;
  sub_1C56466CC(v117, v353, &qword_1EC16ECD8, &qword_1C586B160);
  if (v132(&v117[v129], 1, v131) == 1)
  {

    sub_1C5625230(v124, &qword_1EC16ECD8, &qword_1C586B160);
    sub_1C56EC248(v133, type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs);
    goto LABEL_6;
  }

  v137 = v347;
  sub_1C56EC178(&v117[v129], v347, type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs);

  v138 = sub_1C56F4268(v133, v137, type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs);
  sub_1C56EC248(v137, type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs);
  sub_1C5625230(v124, &qword_1EC16ECD8, &qword_1C586B160);
  sub_1C56EC248(v133, type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs);
  sub_1C5625230(v117, &qword_1EC16ECD8, &qword_1C586B160);
  if ((v138 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_8:
  v139 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__etaProvider;
  swift_beginAccess();
  v140 = v354;
  sub_1C56466CC(a1 + v139, v354, &qword_1EC16EC78, &qword_1C586B100);
  v141 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__etaProvider;
  swift_beginAccess();
  v142 = *(v348 + 48);
  v143 = v351;
  sub_1C56466CC(v140, v351, &qword_1EC16EC78, &qword_1C586B100);
  sub_1C56466CC(v127 + v141, v143 + v142, &qword_1EC16EC78, &qword_1C586B100);
  v144 = *(v349 + 48);
  v145 = v350;
  if (v144(v143, 1, v350) == 1)
  {
    sub_1C5625230(v140, &qword_1EC16EC78, &qword_1C586B100);
    v146 = v144(v143 + v142, 1, v145);
    v147 = v352;
    if (v146 == 1)
    {
      sub_1C5625230(v143, &qword_1EC16EC78, &qword_1C586B100);
      goto LABEL_16;
    }

LABEL_13:
    v134 = &qword_1EC16FC38;
    v135 = &qword_1C5875E48;
LABEL_14:
    v136 = v143;
    goto LABEL_43;
  }

  v148 = v346;
  sub_1C56466CC(v143, v346, &qword_1EC16EC78, &qword_1C586B100);
  v149 = v144(v143 + v142, 1, v145);
  v147 = v352;
  if (v149 == 1)
  {
    sub_1C5625230(v354, &qword_1EC16EC78, &qword_1C586B100);
    sub_1C56EC248(v148, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);
    goto LABEL_13;
  }

  v150 = v143 + v142;
  v151 = v340;
  sub_1C56EC178(v150, v340, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);
  v152 = sub_1C56EE398(v148, v151);
  sub_1C56EC248(v151, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);
  sub_1C5625230(v354, &qword_1EC16EC78, &qword_1C586B100);
  sub_1C56EC248(v148, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);
  sub_1C5625230(v143, &qword_1EC16EC78, &qword_1C586B100);
  if ((v152 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_16:
  v153 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userData;
  swift_beginAccess();
  sub_1C56466CC(a1 + v153, v147, &qword_1EC16EC70, &qword_1C586B0F8);
  v154 = v147;
  v155 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userData;
  swift_beginAccess();
  v156 = *(v342 + 48);
  v157 = v345;
  sub_1C56466CC(v154, v345, &qword_1EC16EC70, &qword_1C586B0F8);
  sub_1C56466CC(v127 + v155, v157 + v156, &qword_1EC16EC70, &qword_1C586B0F8);
  v158 = v344;
  v159 = *(v343 + 48);
  if (v159(v157, 1, v344) == 1)
  {
    sub_1C5625230(v154, &qword_1EC16EC70, &qword_1C586B0F8);
    if (v159(v157 + v156, 1, v158) == 1)
    {
      sub_1C5625230(v157, &qword_1EC16EC70, &qword_1C586B0F8);
      goto LABEL_26;
    }

LABEL_21:
    v134 = &qword_1EC16FC30;
    v135 = &qword_1C5875E40;
LABEL_22:
    v136 = v157;
    goto LABEL_43;
  }

  v160 = v341;
  sub_1C56466CC(v157, v341, &qword_1EC16EC70, &qword_1C586B0F8);
  if (v159(v157 + v156, 1, v158) == 1)
  {
    sub_1C5625230(v352, &qword_1EC16EC70, &qword_1C586B0F8);
    sub_1C56EC248(v160, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
    goto LABEL_21;
  }

  v161 = v158;
  v162 = v334;
  sub_1C56EC178(v157 + v156, v334, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
  v163 = *(v161 + 20);
  v164 = *(v160 + v163);
  v165 = *(v162 + v163);
  if (v164 != v165)
  {

    v166 = sub_1C56D872C(v164, v165);

    if (!v166)
    {
      v187 = type metadata accessor for WebPlacecardBridgeReply.MUUserData;
      sub_1C56EC248(v162, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
      v188 = &qword_1EC16EC70;
      v189 = &qword_1C586B0F8;
      sub_1C5625230(v352, &qword_1EC16EC70, &qword_1C586B0F8);
      v190 = v341;
LABEL_37:
      sub_1C56EC248(v190, v187);
      v136 = v157;
LABEL_38:
      v134 = v188;
      v135 = v189;
      goto LABEL_43;
    }
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v167 = v341;
  v168 = sub_1C584F620();
  sub_1C56EC248(v162, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
  sub_1C5625230(v352, &qword_1EC16EC70, &qword_1C586B0F8);
  sub_1C56EC248(v167, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
  sub_1C5625230(v157, &qword_1EC16EC70, &qword_1C586B0F8);
  if ((v168 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_26:
  v169 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsMetadata;
  swift_beginAccess();
  v170 = v339;
  sub_1C56466CC(a1 + v169, v339, &qword_1EC16EC80, &qword_1C586B108);
  v171 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsMetadata;
  swift_beginAccess();
  v172 = *(v335 + 48);
  v173 = v338;
  sub_1C56466CC(v170, v338, &qword_1EC16EC80, &qword_1C586B108);
  v174 = v173;
  sub_1C56466CC(v127 + v171, v173 + v172, &qword_1EC16EC80, &qword_1C586B108);
  v175 = v337;
  v176 = *(v336 + 48);
  if (v176(v173, 1, v337) == 1)
  {
    sub_1C5625230(v170, &qword_1EC16EC80, &qword_1C586B108);
    if (v176(v173 + v172, 1, v175) == 1)
    {
      sub_1C5625230(v173, &qword_1EC16EC80, &qword_1C586B108);
      goto LABEL_33;
    }

LABEL_31:
    v134 = &qword_1EC16FC28;
    v135 = &qword_1C5875E38;
LABEL_42:
    v136 = v174;
    goto LABEL_43;
  }

  v177 = v332;
  sub_1C56466CC(v173, v332, &qword_1EC16EC80, &qword_1C586B108);
  if (v176(v173 + v172, 1, v175) == 1)
  {
    sub_1C5625230(v339, &qword_1EC16EC80, &qword_1C586B108);
    sub_1C56EC248(v177, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
    goto LABEL_31;
  }

  v178 = v173 + v172;
  v179 = v327;
  sub_1C56EC178(v178, v327, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
  v180 = sub_1C56ED578(v177, v179);
  sub_1C56EC248(v179, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
  sub_1C5625230(v339, &qword_1EC16EC80, &qword_1C586B108);
  sub_1C56EC248(v177, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
  sub_1C5625230(v173, &qword_1EC16EC80, &qword_1C586B108);
  if ((v180 & 1) == 0)
  {
LABEL_44:

    return 0;
  }

LABEL_33:
  v181 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__menuItemTap;
  swift_beginAccess();
  v182 = v333;
  sub_1C56466CC(a1 + v181, v333, &qword_1EC16ECE0, &qword_1C586B168);
  v183 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__menuItemTap;
  swift_beginAccess();
  v184 = *(v328 + 48);
  v174 = v331;
  sub_1C56466CC(v182, v331, &qword_1EC16ECE0, &qword_1C586B168);
  sub_1C56466CC(v127 + v183, v174 + v184, &qword_1EC16ECE0, &qword_1C586B168);
  v185 = v330;
  v186 = *(v329 + 48);
  if (v186(v174, 1, v330) == 1)
  {
    sub_1C5625230(v182, &qword_1EC16ECE0, &qword_1C586B168);
    if (v186(v174 + v184, 1, v185) == 1)
    {
      sub_1C5625230(v174, &qword_1EC16ECE0, &qword_1C586B168);
      goto LABEL_47;
    }

    goto LABEL_41;
  }

  v191 = v325;
  sub_1C56466CC(v174, v325, &qword_1EC16ECE0, &qword_1C586B168);
  if (v186(v174 + v184, 1, v185) == 1)
  {
    sub_1C5625230(v333, &qword_1EC16ECE0, &qword_1C586B168);
    sub_1C56EC248(v191, type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs);
LABEL_41:
    v134 = &qword_1EC16FC20;
    v135 = &qword_1C5875E30;
    goto LABEL_42;
  }

  v193 = v174 + v184;
  v194 = v319;
  sub_1C56EC178(v193, v319, type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs);
  v195 = sub_1C56F3344(v191, v194, type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs);
  sub_1C56EC248(v194, type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs);
  sub_1C5625230(v333, &qword_1EC16ECE0, &qword_1C586B168);
  sub_1C56EC248(v191, type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs);
  sub_1C5625230(v174, &qword_1EC16ECE0, &qword_1C586B168);
  if ((v195 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_47:
  v196 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__vgVehicles;
  swift_beginAccess();
  v197 = v326;
  sub_1C56466CC(a1 + v196, v326, &qword_1EC16ECE8, &qword_1C586B170);
  v198 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__vgVehicles;
  swift_beginAccess();
  v199 = *(v320 + 48);
  v143 = v322;
  sub_1C56466CC(v197, v322, &qword_1EC16ECE8, &qword_1C586B170);
  sub_1C56466CC(v127 + v198, v143 + v199, &qword_1EC16ECE8, &qword_1C586B170);
  v200 = *(v321 + 48);
  v201 = v324;
  if (v200(v143, 1, v324) == 1)
  {
    sub_1C5625230(v197, &qword_1EC16ECE8, &qword_1C586B170);
    v202 = v200(v143 + v199, 1, v201);
    v203 = v323;
    if (v202 == 1)
    {
      sub_1C5625230(v143, &qword_1EC16ECE8, &qword_1C586B170);
      goto LABEL_50;
    }

    goto LABEL_55;
  }

  v211 = v318;
  sub_1C56466CC(v143, v318, &qword_1EC16ECE8, &qword_1C586B170);
  v212 = v200(v143 + v199, 1, v201);
  v203 = v323;
  if (v212 == 1)
  {
    sub_1C5625230(v326, &qword_1EC16ECE8, &qword_1C586B170);
    sub_1C56EC248(v211, type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs);
LABEL_55:
    v134 = &qword_1EC16FC18;
    v135 = &qword_1C5875E28;
    goto LABEL_14;
  }

  v213 = v312;
  sub_1C56EC178(v143 + v199, v312, type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs);
  if ((sub_1C56EA4D0(*v211, *v213) & 1) == 0)
  {
    sub_1C5625230(v326, &qword_1EC16ECE8, &qword_1C586B170);
    sub_1C56EC248(v213, type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs);
    sub_1C56EC248(v211, type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs);
    v136 = v143;
    v134 = &qword_1EC16ECE8;
    v135 = &qword_1C586B170;
    goto LABEL_43;
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v214 = sub_1C584F620();
  sub_1C5625230(v326, &qword_1EC16ECE8, &qword_1C586B170);
  sub_1C56EC248(v213, type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs);
  sub_1C56EC248(v211, type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs);
  sub_1C5625230(v143, &qword_1EC16ECE8, &qword_1C586B170);
  if ((v214 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_50:
  v204 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider;
  swift_beginAccess();
  v205 = v317;
  sub_1C56466CC(a1 + v204, v317, &qword_1EC16EC98, &qword_1C586B120);
  v206 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider;
  swift_beginAccess();
  v207 = *(v313 + 48);
  v208 = v316;
  sub_1C56466CC(v205, v316, &qword_1EC16EC98, &qword_1C586B120);
  v174 = v208;
  sub_1C56466CC(v127 + v206, v208 + v207, &qword_1EC16EC98, &qword_1C586B120);
  v209 = v315;
  v210 = *(v314 + 48);
  if (v210(v208, 1, v315) == 1)
  {
    sub_1C5625230(v205, &qword_1EC16EC98, &qword_1C586B120);
    if (v210(v208 + v207, 1, v209) == 1)
    {
      sub_1C5625230(v208, &qword_1EC16EC98, &qword_1C586B120);
      goto LABEL_64;
    }

    goto LABEL_61;
  }

  v215 = v311;
  sub_1C56466CC(v208, v311, &qword_1EC16EC98, &qword_1C586B120);
  if (v210(v208 + v207, 1, v209) == 1)
  {
    sub_1C5625230(v317, &qword_1EC16EC98, &qword_1C586B120);
    sub_1C56EC248(v215, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
LABEL_61:
    v134 = &qword_1EC16FC10;
    v135 = &qword_1C5875E20;
    goto LABEL_42;
  }

  v216 = v208 + v207;
  v217 = v306;
  sub_1C56EC178(v216, v306, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
  v218 = sub_1C56ED04C(v215, v217);
  sub_1C56EC248(v217, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
  sub_1C5625230(v317, &qword_1EC16EC98, &qword_1C586B120);
  sub_1C56EC248(v215, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
  sub_1C5625230(v208, &qword_1EC16EC98, &qword_1C586B120);
  if ((v218 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_64:
  v219 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nativeUitap;
  swift_beginAccess();
  sub_1C56466CC(a1 + v219, v203, &qword_1EC16ECF0, &qword_1C586B178);
  v220 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nativeUitap;
  swift_beginAccess();
  v221 = *(v307 + 48);
  v222 = v310;
  sub_1C56466CC(v203, v310, &qword_1EC16ECF0, &qword_1C586B178);
  v223 = v127 + v220;
  v157 = v222;
  sub_1C56466CC(v223, v222 + v221, &qword_1EC16ECF0, &qword_1C586B178);
  v224 = v309;
  v225 = *(v308 + 48);
  if (v225(v222, 1, v309) == 1)
  {
    sub_1C5625230(v203, &qword_1EC16ECF0, &qword_1C586B178);
    if (v225(v222 + v221, 1, v224) == 1)
    {
      sub_1C5625230(v222, &qword_1EC16ECF0, &qword_1C586B178);
      goto LABEL_67;
    }

    goto LABEL_75;
  }

  v244 = v304;
  sub_1C56466CC(v157, v304, &qword_1EC16ECF0, &qword_1C586B178);
  if (v225(v157 + v221, 1, v224) == 1)
  {
    sub_1C5625230(v203, &qword_1EC16ECF0, &qword_1C586B178);
    sub_1C56EC248(v244, type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs);
LABEL_75:
    v134 = &qword_1EC16FC08;
    v135 = &qword_1C5875E18;
    goto LABEL_22;
  }

  v245 = v157 + v221;
  v246 = v299;
  sub_1C56EC178(v245, v299, type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs);
  v247 = *(v224 + 20);
  v248 = *(v244 + v247);
  v249 = *(v246 + v247);
  if (v248 == 3)
  {
    if (v249 != 3)
    {
LABEL_78:
      v187 = type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs;
      sub_1C56EC248(v246, type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs);
      v188 = &qword_1EC16ECF0;
      v189 = &qword_1C586B178;
      sub_1C5625230(v203, &qword_1EC16ECF0, &qword_1C586B178);
      v190 = v244;
      goto LABEL_37;
    }
  }

  else if (v248 != v249)
  {
    goto LABEL_78;
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v251 = sub_1C584F620();
  sub_1C56EC248(v246, type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs);
  sub_1C5625230(v203, &qword_1EC16ECF0, &qword_1C586B178);
  sub_1C56EC248(v244, type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs);
  sub_1C5625230(v157, &qword_1EC16ECF0, &qword_1C586B178);
  if ((v251 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_67:
  v226 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__visibility;
  swift_beginAccess();
  v227 = v305;
  sub_1C56466CC(a1 + v226, v305, &qword_1EC16ECF8, &qword_1C586B180);
  v228 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__visibility;
  swift_beginAccess();
  v229 = *(v300 + 48);
  v230 = v227;
  v231 = v303;
  sub_1C56466CC(v230, v303, &qword_1EC16ECF8, &qword_1C586B180);
  v174 = v231;
  sub_1C56466CC(v127 + v228, v231 + v229, &qword_1EC16ECF8, &qword_1C586B180);
  v232 = *(v301 + 48);
  v233 = v231;
  v234 = v302;
  if (v232(v233, 1, v302) == 1)
  {
    sub_1C5625230(v305, &qword_1EC16ECF8, &qword_1C586B180);
    if (v232(v174 + v229, 1, v234) == 1)
    {
      sub_1C5625230(v174, &qword_1EC16ECF8, &qword_1C586B180);
      goto LABEL_70;
    }

    goto LABEL_81;
  }

  v250 = v298;
  sub_1C56466CC(v174, v298, &qword_1EC16ECF8, &qword_1C586B180);
  if (v232(v174 + v229, 1, v234) == 1)
  {
    sub_1C5625230(v305, &qword_1EC16ECF8, &qword_1C586B180);
    sub_1C56EC248(v250, type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs);
LABEL_81:
    v134 = &qword_1EC16FC00;
    v135 = &qword_1C5875E10;
    goto LABEL_42;
  }

  v252 = v295;
  sub_1C56EC178(v174 + v229, v295, type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs);
  v253 = *(v234 + 20);
  v254 = *(v250 + v253);
  v255 = *(v252 + v253);
  if (v254 == 2)
  {
    if (v255 == 2)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

  if (v255 == 2 || ((v254 ^ v255) & 1) != 0)
  {
LABEL_94:
    sub_1C56EC248(v295, type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs);
    v188 = &qword_1EC16ECF8;
    v189 = &qword_1C586B180;
    sub_1C5625230(v305, &qword_1EC16ECF8, &qword_1C586B180);
    sub_1C56EC248(v298, type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs);
    v136 = v303;
    goto LABEL_38;
  }

LABEL_95:
  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v256 = v298;
  v257 = v295;
  v258 = sub_1C584F620();
  sub_1C56EC248(v257, type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs);
  sub_1C5625230(v305, &qword_1EC16ECF8, &qword_1C586B180);
  sub_1C56EC248(v256, type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs);
  sub_1C5625230(v303, &qword_1EC16ECF8, &qword_1C586B180);
  if ((v258 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_70:
  v235 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences;
  swift_beginAccess();
  v236 = a1;
  v237 = a1 + v235;
  v238 = v296;
  sub_1C56466CC(v237, v296, &qword_1EC16ED00, &qword_1C586B188);
  v239 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences;
  swift_beginAccess();
  v240 = *(v291 + 48);
  v241 = v297;
  sub_1C56466CC(v238, v297, &qword_1EC16ED00, &qword_1C586B188);
  sub_1C56466CC(v127 + v239, v241 + v240, &qword_1EC16ED00, &qword_1C586B188);
  v242 = v293;
  v243 = *(v292 + 48);
  if (v243(v241, 1, v293) == 1)
  {
    sub_1C5625230(v296, &qword_1EC16ED00, &qword_1C586B188);
    if (v243(v241 + v240, 1, v242) == 1)
    {
      sub_1C5625230(v297, &qword_1EC16ED00, &qword_1C586B188);
      goto LABEL_98;
    }

    goto LABEL_90;
  }

  sub_1C56466CC(v241, v290, &qword_1EC16ED00, &qword_1C586B188);
  if (v243(v241 + v240, 1, v242) == 1)
  {
    sub_1C5625230(v296, &qword_1EC16ED00, &qword_1C586B188);
    sub_1C56EC248(v290, type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs);
LABEL_90:
    sub_1C5625230(v297, &qword_1EC16FBF8, &qword_1C5875E08);
    goto LABEL_44;
  }

  v259 = v297;
  v260 = v297 + v240;
  v261 = v284;
  sub_1C56EC178(v260, v284, type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs);
  v262 = v290;
  v263 = sub_1C56ED21C(v290, v261);
  sub_1C56EC248(v261, type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs);
  sub_1C5625230(v296, &qword_1EC16ED00, &qword_1C586B188);
  sub_1C56EC248(v262, type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs);
  sub_1C5625230(v259, &qword_1EC16ED00, &qword_1C586B188);
  if ((v263 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_98:
  v264 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__perfMarkers;
  swift_beginAccess();
  v265 = v288;
  sub_1C56466CC(v236 + v264, v288, &qword_1EC16ED08, &qword_1C586B190);
  v266 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply20MUWebMethodArgumentsP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__perfMarkers;
  swift_beginAccess();
  v267 = *(v285 + 48);
  v268 = v265;
  v269 = v294;
  sub_1C56466CC(v268, v294, &qword_1EC16ED08, &qword_1C586B190);
  sub_1C56466CC(v127 + v266, v269 + v267, &qword_1EC16ED08, &qword_1C586B190);
  v270 = *(v286 + 48);
  if (v270(v269, 1, v289) != 1)
  {
    v271 = v294;
    sub_1C56466CC(v294, v287, &qword_1EC16ED08, &qword_1C586B190);
    if (v270(v271 + v267, 1, v289) == 1)
    {

      sub_1C5625230(v288, &qword_1EC16ED08, &qword_1C586B190);
      sub_1C56EC248(v287, type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers);
      goto LABEL_104;
    }

    v275 = v283;
    sub_1C56EC178(v294 + v267, v283, type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers);
    v276 = *(v289 + 20);
    v277 = *(v287 + v276);
    v278 = *(v275 + v276);
    if (v277 == 2)
    {
      if (v278 == 2)
      {
        goto LABEL_112;
      }
    }

    else if (v278 != 2 && ((v277 ^ v278) & 1) == 0)
    {
LABEL_112:
      sub_1C584EFD0();
      sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v279 = v287;
      v280 = v283;
      v281 = sub_1C584F620();

      sub_1C56EC248(v280, type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers);
      sub_1C5625230(v288, &qword_1EC16ED08, &qword_1C586B190);
      sub_1C56EC248(v279, type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers);
      sub_1C5625230(v294, &qword_1EC16ED08, &qword_1C586B190);
      return (v281 & 1) != 0;
    }

    sub_1C56EC248(v283, type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers);
    sub_1C5625230(v288, &qword_1EC16ED08, &qword_1C586B190);
    sub_1C56EC248(v287, type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers);
    v274 = v294;
    v272 = &qword_1EC16ED08;
    v273 = &qword_1C586B190;
    goto LABEL_111;
  }

  sub_1C5625230(v288, &qword_1EC16ED08, &qword_1C586B190);
  if (v270(v294 + v267, 1, v289) != 1)
  {
LABEL_104:
    v272 = &qword_1EC16FBF0;
    v273 = &qword_1C5875E00;
    v274 = v294;
LABEL_111:
    sub_1C5625230(v274, v272, v273);
    return 0;
  }

  sub_1C5625230(v294, &qword_1EC16ED08, &qword_1C586B190);
  return 1;
}

double sub_1C56E3D04@<D0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X3>, uint64_t a5@<X8>)
{
  sub_1C584EFC0();
  v9 = *(a1 + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a5 + v9) = *a3;

  return result;
}

uint64_t sub_1C56E3DCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F930, type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments, &unk_1C5873930);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56E3E6C(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D220, type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments, &unk_1C58738B8);

  return sub_1C584F160();
}

uint64_t sub_1C56E3ED8(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D220, type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments, &unk_1C58738B8);

  return sub_1C584F170();
}

uint64_t sub_1C56E3F98()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18F8A8);
  __swift_project_value_buffer(v0, qword_1EC18F8A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "progress";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "height";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56E4190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t sub_1C56E4260(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F928, type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs, &unk_1C5873A98);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56E4300(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D250, type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs, &unk_1C5873A20);

  return sub_1C584F160();
}

uint64_t sub_1C56E436C(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D250, type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs, &unk_1C5873A20);

  return sub_1C584F170();
}

uint64_t sub_1C56E43EC()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18F890);
  __swift_project_value_buffer(v0, qword_1EC18F890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AEE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "canShowDirections";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isCurrentLocation";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "isAdditionalStop";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isSearchAlongRoute";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "canShowDetourTime";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "detourTime";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "distanceString";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "distance";
  *(v22 + 1) = 8;
  v22[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56E4738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C584F050();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 4)
    {
      if (result > 6)
      {
        if (result == 7)
        {
          type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
          sub_1C584F0D0();
        }

        else if (result == 8)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (result == 5)
        {
          goto LABEL_2;
        }

LABEL_16:
        type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
        sub_1C584F0A0();
      }
    }

    else if (result > 2 || result == 1 || result == 2)
    {
LABEL_2:
      type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
      sub_1C584F080();
    }
  }
}

int *sub_1C56E48CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  v10 = result;
  if (*(v5 + result[5]) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = sub_1C584F190();
    if (v4)
    {
      return result;
    }
  }

  if (*(v5 + v10[6]) != 2)
  {
    sub_1C584F190();
  }

  if (*(v5 + v10[7]) != 2)
  {
    sub_1C584F190();
  }

  if (*(v5 + v10[8]) != 2)
  {
    sub_1C584F190();
  }

  sub_1C56C70A0(v5, a1, a2, a3, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
  sub_1C56E4A68(v5, a1, a2, a3);
  sub_1C56E4AE0(v5, a1, a2, a3, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata, 7);
  sub_1C56E4B64(v5, a1, a2, a3);
  return sub_1C584EFB0();
}

uint64_t sub_1C56E4A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  if ((*(a1 + *(result + 40) + 4) & 1) == 0)
  {
    return sub_1C584F1B0();
  }

  return result;
}

uint64_t sub_1C56E4AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 44) + 8))
  {
    return sub_1C584F1F0();
  }

  return result;
}

uint64_t sub_1C56E4B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  if ((*(a1 + *(result + 48) + 4) & 1) == 0)
  {
    return sub_1C584F1B0();
  }

  return result;
}

uint64_t sub_1C56E4BDC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  *(a2 + v5) = 2;
  v6 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v6) = 2;
  v7 = a1[10];
  *(a2 + a1[9]) = 2;
  v8 = a2 + v7;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1[12];
  v10 = (a2 + a1[11]);
  *v10 = 0;
  v10[1] = 0;
  v11 = a2 + v9;
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t sub_1C56E4C9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F920, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata, &unk_1C5873C00);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56E4D3C(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D238, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata, &unk_1C5873B88);

  return sub_1C584F160();
}

uint64_t sub_1C56E4DA8(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D238, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata, &unk_1C5873B88);

  return sub_1C584F170();
}

uint64_t sub_1C56E4E28()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190318);
  __swift_project_value_buffer(v0, qword_1EC190318);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "footerMenu";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "axIdArgs";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "isPerfTest";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56E503C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C584F050();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions(0);
          sub_1C584F080();
          break;
        case 2:
          type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions(0);
          type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs(0);
          sub_1C56EF190(&qword_1EC16F778, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs, &unk_1C5873FC0);
          sub_1C584F100();
          break;
        case 1:
          type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem(0);
          sub_1C56EF190(&qword_1EC16EF98, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem, &unk_1C5873E58);
          sub_1C584F0F0();
          break;
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56E51D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem(0), sub_1C56EF190(&qword_1EC16EF98, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem, &unk_1C5873E58), result = sub_1C584F210(), !v4))
  {
    result = sub_1C56E530C(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3 + *(type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions(0) + 28)) != 2)
      {
        sub_1C584F190();
      }

      return sub_1C584EFB0();
    }
  }

  return result;
}

uint64_t sub_1C56E530C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ED10, &qword_1C586B198);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions(0);
  sub_1C56466CC(a1 + *(v14 + 24), v8, &qword_1EC16ED10, &qword_1C586B198);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16ED10, &qword_1C586B198);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs);
  sub_1C56EF190(&qword_1EC16F778, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs, &unk_1C5873FC0);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs);
}

uint64_t sub_1C56E5528@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  sub_1C584EFC0();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs(0);
  result = (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  a2[*(a1 + 28)] = 2;
  return result;
}

uint64_t sub_1C56E5608(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F918, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions, &unk_1C5873D68);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56E56A8(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F750, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions, &unk_1C5873CF0);

  return sub_1C584F160();
}

uint64_t sub_1C56E5714(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F750, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions, &unk_1C5873CF0);

  return sub_1C584F170();
}

uint64_t sub_1C56E5794()
{
  result = MEMORY[0x1C6949D90](0xD000000000000011, 0x80000001C5895DD0);
  qword_1EC190330 = 0xD000000000000026;
  *algn_1EC190338 = 0x80000001C5894DA0;
  return result;
}

uint64_t sub_1C56E5808()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190340);
  __swift_project_value_buffer(v0, qword_1EC190340);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "icon";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "action_type";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56E5A24@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t sub_1C56E5AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F910, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem, &unk_1C5873ED0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56E5B8C(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16EF98, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem, &unk_1C5873E58);

  return sub_1C584F160();
}

uint64_t sub_1C56E5BF8(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16EF98, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem, &unk_1C5873E58);

  return sub_1C584F170();
}

uint64_t sub_1C56E5CA4()
{
  result = MEMORY[0x1C6949D90](0x4164497841554D2ELL, 0xEB00000000736772);
  qword_1EC190358 = 0xD000000000000026;
  unk_1EC190360 = 0x80000001C5894DA0;
  return result;
}

uint64_t sub_1C56E5D60(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    v8 = a4;
    swift_once();
    a4 = v8;
  }

  v6 = *a4;

  return v6;
}

uint64_t sub_1C56E5E18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F908, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs, &unk_1C5874038);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56E5EB8(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F778, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs, &unk_1C5873FC0);

  return sub_1C584F160();
}

uint64_t sub_1C56E5F24(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F778, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs, &unk_1C5873FC0);

  return sub_1C584F170();
}

uint64_t sub_1C56E5FD0()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18F8F0);
  __swift_project_value_buffer(v0, qword_1EC18F8F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "menu_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "menu_item_id";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "menu_type";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56E61E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t a6)
{
  while (1)
  {
    result = sub_1C584F050();
    if (v6 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      a4(0);
      a5();
      sub_1C584F090();
    }

    else if (result == 2 || result == 1)
    {
      a4(0);
      sub_1C584F0D0();
    }
  }

  return result;
}

uint64_t sub_1C56E62F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t), uint64_t a6)
{
  result = a4(0);
  v10 = result;
  if (*(v6 + *(result + 20) + 8))
  {
    result = sub_1C584F1F0();
    if (v7)
    {
      return result;
    }
  }

  else if (v7)
  {
    return result;
  }

  if (*(v6 + *(v10 + 24) + 8))
  {
    result = sub_1C584F1F0();
  }

  if (*(v6 + *(v10 + 28)) != 3)
  {
    a5(result);
    sub_1C584F1A0();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56E6414@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  *(a2 + a1[7]) = 3;
  return result;
}

uint64_t sub_1C56E6508(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F900, type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs, &unk_1C58741A0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56E65A8(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D2C0, type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs, &unk_1C5874128);

  return sub_1C584F160();
}

uint64_t sub_1C56E6614(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D2C0, type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs, &unk_1C5874128);

  return sub_1C584F170();
}

uint64_t sub_1C56E66C0()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18F908);
  __swift_project_value_buffer(v0, qword_1EC18F908);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "UI_MENU";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "ACTION_BAR";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56E6914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  while (1)
  {
    result = sub_1C584F050();
    if (v7 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_1C56EF190(a5, a6, a7);
      sub_1C584F0F0();
    }
  }

  return result;
}

uint64_t sub_1C56E69F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for MUVGVehicle(0), sub_1C56EF190(&qword_1EC16EFC0, type metadata accessor for MUVGVehicle, &unk_1C58718B0), result = sub_1C584F210(), !v4))
  {
    type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs(0);
    return sub_1C584EFB0();
  }

  return result;
}

uint64_t sub_1C56E6B64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F8F8, type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs, &unk_1C5874330);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56E6C04(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F798, type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs, &unk_1C58742B8);

  return sub_1C584F160();
}

uint64_t sub_1C56E6C70(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F798, type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs, &unk_1C58742B8);

  return sub_1C584F170();
}

uint64_t sub_1C56E6D04(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56E6DB0()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18F860);
  __swift_project_value_buffer(v0, qword_1EC18F860);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AE60;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "canShowDownloadOffline";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "downloadProgress";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "downloadedDataCount";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "downloadedDataSize";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "downloadState";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "titleText";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56E707C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C584F050();
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
        switch(result)
        {
          case 4:
            goto LABEL_4;
          case 5:
            type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
            sub_1C5703A40();
            sub_1C584F090();
            break;
          case 6:
            type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
            sub_1C584F0D0();
            break;
        }
      }

      else if (result == 1)
      {
        type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
        sub_1C584F080();
      }

      else if (result == 2 || result == 3)
      {
LABEL_4:
        type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
        sub_1C584F0A0();
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

int *sub_1C56E7208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  v10 = result;
  if (*(v5 + result[5]) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = sub_1C584F190();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v5 + v10[6] + 4) & 1) == 0)
  {
    sub_1C584F1B0();
  }

  if ((*(v5 + v10[7] + 4) & 1) == 0)
  {
    sub_1C584F1B0();
  }

  if ((*(v5 + v10[8] + 4) & 1) == 0)
  {
    sub_1C584F1B0();
  }

  sub_1C56E735C(v5, a1, a2, a3);
  sub_1C56C17B4(v5, a1, a2, a3, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
  return sub_1C584EFB0();
}

uint64_t sub_1C56E735C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  if (*(a1 + *(result + 36)) != 6)
  {
    sub_1C5703A40();
    return sub_1C584F1A0();
  }

  return result;
}

uint64_t sub_1C56E73E8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[10];
  *(a2 + a1[9]) = 6;
  v11 = (a2 + v10);
  *v11 = 0;
  v11[1] = 0;
  return result;
}

uint64_t sub_1C56E74A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F8F0, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider, &unk_1C5874498);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56E7548(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D1E0, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider, &unk_1C5874420);

  return sub_1C584F160();
}

uint64_t sub_1C56E75B4(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D1E0, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider, &unk_1C5874420);

  return sub_1C584F170();
}

uint64_t sub_1C56E7634()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190398);
  __swift_project_value_buffer(v0, qword_1EC190398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "geo_key";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "web_key";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "BOOLean_value";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56E7848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C584F050();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3)
      {
        sub_1C584F080();
      }

      else if (result == 2 || result == 1)
      {
        type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag(0);
        sub_1C584F0D0();
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56E7958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag(0);
  v6 = result;
  if (*&v3[*(result + 24) + 8])
  {
    result = sub_1C584F1F0();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  if (*&v3[*(v6 + 28) + 8])
  {
    sub_1C584F1F0();
  }

  if (*v3 != 2)
  {
    sub_1C584F190();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56E7A54@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 2;
  result = sub_1C584EFC0();
  v5 = *(a1 + 28);
  v6 = &a2[*(a1 + 24)];
  *v6 = 0;
  v6[1] = 0;
  v7 = &a2[v5];
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_1C56E7AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F8E8, type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag, &unk_1C5874600);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56E7B8C(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D388, type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag, &unk_1C5874588);

  return sub_1C584F160();
}

uint64_t sub_1C56E7BF8(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D388, type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag, &unk_1C5874588);

  return sub_1C584F170();
}

uint64_t sub_1C56E7C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t a6)
{
  while (1)
  {
    result = sub_1C584F050();
    if (v6 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      a5();
      sub_1C584F090();
    }
  }

  return result;
}

uint64_t sub_1C56E7D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs(0);
  if (*(v3 + *(result + 20)) == 3)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_1C5703998();
    result = sub_1C584F1A0();
    if (v4)
    {
      return result;
    }
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56E7E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  *(a2 + *(a1 + 20)) = 3;
  return result;
}

uint64_t sub_1C56E7EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F8E0, type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs, &unk_1C5874768);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56E7F58(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D280, type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs, &unk_1C58746F0);

  return sub_1C584F160();
}

uint64_t sub_1C56E7FC4(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D280, type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs, &unk_1C58746F0);

  return sub_1C584F170();
}

uint64_t sub_1C56E8040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  if (v4 == 3)
  {
    if (v5 != 3)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56E80F4()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18F8D8);
  __swift_project_value_buffer(v0, qword_1EC18F8D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CLOSE";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "SHARE";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56E83B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F8D8, type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs, &unk_1C58748F8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56E8458(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F7C8, type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs, &unk_1C5874880);

  return sub_1C584F160();
}

uint64_t sub_1C56E84C4(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F7C8, type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs, &unk_1C5874880);

  return sub_1C584F170();
}

uint64_t sub_1C56E8590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C584F050();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs(0);
        type metadata accessor for MUUserPreferences(0);
        sub_1C56EF190(&qword_1EC16F658, type metadata accessor for MUUserPreferences, &unk_1C5871CE8);
        sub_1C584F100();
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56E867C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECA0, &qword_1C586B128);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for MUUserPreferences(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs(0);
  sub_1C56466CC(a1 + *(v14 + 20), v8, &qword_1EC16ECA0, &qword_1C586B128);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16ECA0, &qword_1C586B128);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for MUUserPreferences);
  sub_1C56EF190(&qword_1EC16F658, type metadata accessor for MUUserPreferences, &unk_1C5871CE8);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for MUUserPreferences);
}

uint64_t sub_1C56E88B0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  sub_1C584EFC0();
  v6 = *(a1 + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3 + v6, 1, 1, v7);
}

uint64_t sub_1C56E8998(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F8D0, type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs, &unk_1C5874A60);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56E8A38(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F7E0, type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs, &unk_1C58749E8);

  return sub_1C584F160();
}

uint64_t sub_1C56E8AA4(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F7E0, type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs, &unk_1C58749E8);

  return sub_1C584F170();
}

uint64_t sub_1C56E8BB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F8C8, type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers, &unk_1C5874BC8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56E8C58(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F7F8, type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers, &unk_1C5874B50);

  return sub_1C584F160();
}

uint64_t sub_1C56E8CC4(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F7F8, type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers, &unk_1C5874B50);

  return sub_1C584F170();
}

uint64_t sub_1C56E8D70()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC1903F8);
  __swift_project_value_buffer(v0, qword_1EC1903F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "result";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "errorMessage";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56E8F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C584F050();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      switch(result)
      {
        case 3:
          goto LABEL_10;
        case 2:
          type metadata accessor for WebBridgeReply(0);
          type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult(0);
          sub_1C56EF190(&qword_1EC16F820, type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult, &unk_1C5874E20);
          sub_1C584F100();
          break;
        case 1:
LABEL_10:
          type metadata accessor for WebBridgeReply(0);
          sub_1C584F0D0();
          break;
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56E90BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for WebBridgeReply(0);
  v10 = result;
  if (*(v5 + *(result + 20) + 8))
  {
    result = sub_1C584F1F0();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  sub_1C56E9194(v5, a1, a2, a3);
  if (*(v5 + *(v10 + 28) + 8))
  {
    sub_1C584F1F0();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56E9194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ED18, &qword_1C586B1A0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WebBridgeReply(0);
  sub_1C56466CC(a1 + *(v14 + 24), v8, &qword_1EC16ED18, &qword_1C586B1A0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16ED18, &qword_1C586B1A0);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult);
  sub_1C56EF190(&qword_1EC16F820, type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult, &unk_1C5874E20);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult);
}

uint64_t sub_1C56E93B0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C584EFC0();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult(0);
  result = (*(*(v6 - 8) + 56))(a2 + v4, 1, 1, v6);
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t sub_1C56E948C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F8C0, type metadata accessor for WebBridgeReply, &unk_1C5874D30);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56E952C(uint64_t a1)
{
  sub_1C56EF190(&unk_1EC16E6F0, type metadata accessor for WebBridgeReply, &unk_1C5874CB8);

  return sub_1C584F160();
}

uint64_t sub_1C56E9598(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&unk_1EC16E6F0, type metadata accessor for WebBridgeReply, &unk_1C5874CB8);

  return sub_1C584F170();
}

uint64_t sub_1C56E9618()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190410);
  __swift_project_value_buffer(v0, qword_1EC190410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C5867900;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1000;
  *v4 = "perfMarkerResult";
  *(v4 + 8) = 16;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C584F230();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1C584F240();
}

uint64_t sub_1C56E9784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C584F050();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1000)
      {
        type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult(0);
        type metadata accessor for WebBridgeReply.MUPerfMarkerResult(0);
        sub_1C56EF190(&qword_1EC16F838, type metadata accessor for WebBridgeReply.MUPerfMarkerResult, &unk_1C5874F88);
        sub_1C584F100();
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56E9870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a4(v4, a1, a2, a3);
  if (!v5)
  {
    return sub_1C584EFB0();
  }

  return result;
}

uint64_t sub_1C56E98D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ED20, &qword_1C586B1A8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebBridgeReply.MUPerfMarkerResult(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult(0);
  sub_1C56466CC(a1 + *(v14 + 20), v8, &qword_1EC16ED20, &qword_1C586B1A8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16ED20, &qword_1C586B1A8);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebBridgeReply.MUPerfMarkerResult);
  sub_1C56EF190(&qword_1EC16F838, type metadata accessor for WebBridgeReply.MUPerfMarkerResult, &unk_1C5874F88);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebBridgeReply.MUPerfMarkerResult);
}

uint64_t sub_1C56E9B20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C584EFD0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1C56E9B88(uint64_t a1)
{
  v3 = sub_1C584EFD0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C56E9C34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F8B8, type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult, &unk_1C5874E98);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56E9CD4(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F820, type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult, &unk_1C5874E20);

  return sub_1C584F160();
}

uint64_t sub_1C56E9D40(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F820, type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult, &unk_1C5874E20);

  return sub_1C584F170();
}

uint64_t sub_1C56E9DE0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = sub_1C584F250();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C5867900;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = *a5;
  v15 = sub_1C584F230();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  return sub_1C584F240();
}

uint64_t sub_1C56E9F50(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_1C584F050();
    if (v5 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v4, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C56EA018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C584EFD0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C56EA08C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1C584EFD0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C56EA16C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F8B0, type metadata accessor for WebBridgeReply.MUPerfMarkerResult, &unk_1C5875000);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56EA20C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1C584F250();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1C56EA2A8(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F838, type metadata accessor for WebBridgeReply.MUPerfMarkerResult, &unk_1C5874F88);

  return sub_1C584F160();
}

uint64_t sub_1C56EA314(uint64_t a1, uint64_t a2)
{
  sub_1C584FEA0();
  sub_1C584F5F0();
  return sub_1C584FEF0();
}

uint64_t sub_1C56EA36C(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F838, type metadata accessor for WebBridgeReply.MUPerfMarkerResult, &unk_1C5874F88);

  return sub_1C584F170();
}

uint64_t sub_1C56EA3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C584FEA0();
  sub_1C584F5F0();
  return sub_1C584FEF0();
}

uint64_t sub_1C56EA440(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_1C584FDC0() & 1) == 0)
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

uint64_t sub_1C56EA4D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MUVGVehicle(0);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v33 - v11;
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
LABEL_29:
    v32 = 0;
    return v32 & 1;
  }

  if (!v13 || a1 == a2)
  {
    v32 = 1;
    return v32 & 1;
  }

  v14 = 0;
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = a1 + v15;
  v17 = a2 + v15;
  v18 = *(v10 + 72);
  while (1)
  {
    result = sub_1C56EC1E0(v16 + v18 * v14, v12, type metadata accessor for MUVGVehicle);
    if (v14 == v13)
    {
      break;
    }

    result = sub_1C56EC1E0(v17 + v18 * v14, v8, type metadata accessor for MUVGVehicle);
    v20 = *(v4 + 24);
    v21 = &v12[v20];
    v22 = *&v12[v20 + 8];
    v23 = &v8[v20];
    v24 = *(v23 + 1);
    if (v22)
    {
      if (!v24 || ((result = *v21, *v21 == *v23) ? (v25 = v22 == v24) : (v25 = 0), !v25 && (result = sub_1C584FDC0(), (result & 1) == 0)))
      {
LABEL_28:
        sub_1C56EC248(v8, type metadata accessor for MUVGVehicle);
        sub_1C56EC248(v12, type metadata accessor for MUVGVehicle);
        goto LABEL_29;
      }
    }

    else if (v24)
    {
      goto LABEL_28;
    }

    v26 = *v12;
    v27 = *v8;
    v28 = *(*v12 + 16);
    if (v28 != *(*v8 + 16))
    {
      goto LABEL_28;
    }

    if (v28)
    {
      v29 = v26 == v27;
    }

    else
    {
      v29 = 1;
    }

    if (!v29)
    {
      v30 = (v26 + 32);
      v31 = (v27 + 32);
      while (v28)
      {
        if (*v30 != *v31)
        {
          goto LABEL_28;
        }

        ++v30;
        ++v31;
        if (!--v28)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
      break;
    }

LABEL_24:
    sub_1C584EFD0();
    sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v32 = sub_1C584F620();
    sub_1C56EC248(v8, type metadata accessor for MUVGVehicle);
    sub_1C56EC248(v12, type metadata accessor for MUVGVehicle);
    if ((v32 & 1) != 0 && ++v14 != v13)
    {
      continue;
    }

    return v32 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C56EA7A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3(0);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v41 - v14;
  v16 = *(a1 + 16);
  if (v16 == *(a2 + 16))
  {
    if (v16 && a1 != a2)
    {
      v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v18 = a1 + v17;
      v19 = a2 + v17;
      v20 = *(v13 + 72);
      while (1)
      {
        sub_1C56EC1E0(v18, v15, a4);
        sub_1C56EC1E0(v19, v11, a4);
        v21 = v7[5];
        v22 = &v15[v21];
        v23 = *&v15[v21 + 8];
        v24 = &v11[v21];
        v25 = *(v24 + 1);
        if (v23)
        {
          if (!v25 || (*v22 == *v24 ? (v26 = v23 == v25) : (v26 = 0), !v26 && (sub_1C584FDC0() & 1) == 0))
          {
LABEL_36:
            sub_1C56EC248(v11, a4);
            sub_1C56EC248(v15, a4);
            goto LABEL_37;
          }
        }

        else if (v25)
        {
          goto LABEL_36;
        }

        v27 = v7[6];
        v28 = &v15[v27];
        v29 = *&v15[v27 + 8];
        v30 = &v11[v27];
        v31 = *(v30 + 1);
        if (v29)
        {
          if (!v31)
          {
            goto LABEL_36;
          }

          v32 = *v28 == *v30 && v29 == v31;
          if (!v32 && (sub_1C584FDC0() & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        else if (v31)
        {
          goto LABEL_36;
        }

        v33 = v7[7];
        v34 = &v15[v33];
        v35 = *&v15[v33 + 8];
        v36 = &v11[v33];
        v37 = *(v36 + 1);
        if (v35)
        {
          if (!v37)
          {
            goto LABEL_36;
          }

          v38 = *v34 == *v36 && v35 == v37;
          if (!v38 && (sub_1C584FDC0() & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        else if (v37)
        {
          goto LABEL_36;
        }

        sub_1C584EFD0();
        sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v39 = sub_1C584F620();
        sub_1C56EC248(v11, a4);
        sub_1C56EC248(v15, a4);
        if (v39)
        {
          v19 += v20;
          v18 += v20;
          if (--v16)
          {
            continue;
          }
        }

        return v39 & 1;
      }
    }

    v39 = 1;
  }

  else
  {
LABEL_37:
    v39 = 0;
  }

  return v39 & 1;
}

uint64_t sub_1C56EAA74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v23 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      return 1;
    }

    v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v15 = a1 + v14;
    v16 = a2 + v14;
    v17 = *(v10 + 72);
    while (1)
    {
      sub_1C56EC1E0(v15, v12, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      sub_1C56EC1E0(v16, v8, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v18 = *(v4 + 20);
      v19 = *&v12[v18];
      v20 = *&v8[v18];
      if (v19 != v20)
      {

        v21 = sub_1C56A4B30(v19, v20);

        if (!v21)
        {
          break;
        }
      }

      sub_1C584EFD0();
      sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      if ((sub_1C584F620() & 1) == 0)
      {
        break;
      }

      sub_1C56EC248(v8, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      sub_1C56EC248(v12, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v16 += v17;
      v15 += v17;
      if (!--v13)
      {
        return 1;
      }
    }

    sub_1C56EC248(v8, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    sub_1C56EC248(v12, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  }

  return 0;
}

uint64_t sub_1C56EACE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MUSendToDevice(0);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v43 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (v13 && a1 != a2)
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      while (1)
      {
        sub_1C56EC1E0(v15, v12, type metadata accessor for MUSendToDevice);
        sub_1C56EC1E0(v16, v8, type metadata accessor for MUSendToDevice);
        v18 = v4[5];
        v19 = &v12[v18];
        v20 = *&v12[v18 + 8];
        v21 = &v8[v18];
        v22 = *(v21 + 1);
        if (v20)
        {
          if (!v22 || (*v19 == *v21 ? (v23 = v20 == v22) : (v23 = 0), !v23 && (sub_1C584FDC0() & 1) == 0))
          {
LABEL_43:
            sub_1C56EC248(v8, type metadata accessor for MUSendToDevice);
            sub_1C56EC248(v12, type metadata accessor for MUSendToDevice);
            goto LABEL_44;
          }
        }

        else if (v22)
        {
          goto LABEL_43;
        }

        v24 = v4[6];
        v25 = &v12[v24];
        v26 = *&v12[v24 + 8];
        v27 = &v8[v24];
        v28 = *(v27 + 1);
        if (v26)
        {
          if (!v28)
          {
            goto LABEL_43;
          }

          v29 = *v25 == *v27 && v26 == v28;
          if (!v29 && (sub_1C584FDC0() & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else if (v28)
        {
          goto LABEL_43;
        }

        v30 = v4[7];
        v31 = &v12[v30];
        v32 = *&v12[v30 + 8];
        v33 = &v8[v30];
        v34 = *(v33 + 1);
        if (v32)
        {
          if (!v34)
          {
            goto LABEL_43;
          }

          v35 = *v31 == *v33 && v32 == v34;
          if (!v35 && (sub_1C584FDC0() & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else if (v34)
        {
          goto LABEL_43;
        }

        v36 = v4[8];
        v37 = &v12[v36];
        v38 = *&v12[v36 + 8];
        v39 = &v8[v36];
        v40 = *(v39 + 1);
        if (v38)
        {
          if (!v40 || (*v37 != *v39 || v38 != v40) && (sub_1C584FDC0() & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else if (v40)
        {
          goto LABEL_43;
        }

        sub_1C584EFD0();
        sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v41 = sub_1C584F620();
        sub_1C56EC248(v8, type metadata accessor for MUSendToDevice);
        sub_1C56EC248(v12, type metadata accessor for MUSendToDevice);
        if (v41)
        {
          v16 += v17;
          v15 += v17;
          if (--v13)
          {
            continue;
          }
        }

        return v41 & 1;
      }
    }

    v41 = 1;
  }

  else
  {
LABEL_44:
    v41 = 0;
  }

  return v41 & 1;
}

uint64_t sub_1C56EB038(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C56EB094(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *))
{
  v9 = a3(0) - 8;
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        sub_1C56EC1E0(v20, v17, a4);
        sub_1C56EC1E0(v21, v13, a4);
        v23 = a5(v17, v13);
        sub_1C56EC248(v13, a4);
        sub_1C56EC248(v17, a4);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_1C56EB230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUStyleAttributes.MUStyleAttribute(0);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v30 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (v13 && a1 != a2)
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      while (1)
      {
        sub_1C56EC1E0(v15, v12, type metadata accessor for WebPlacecardBridge.MUStyleAttributes.MUStyleAttribute);
        sub_1C56EC1E0(v16, v8, type metadata accessor for WebPlacecardBridge.MUStyleAttributes.MUStyleAttribute);
        v18 = *(v4 + 20);
        v19 = &v12[v18];
        v20 = v12[v18 + 4];
        v21 = &v8[v18];
        v22 = v8[v18 + 4];
        if (v20)
        {
          if (!v22)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (*v19 != *v21)
          {
            LOBYTE(v22) = 1;
          }

          if (v22)
          {
LABEL_21:
            sub_1C56EC248(v8, type metadata accessor for WebPlacecardBridge.MUStyleAttributes.MUStyleAttribute);
            sub_1C56EC248(v12, type metadata accessor for WebPlacecardBridge.MUStyleAttributes.MUStyleAttribute);
            goto LABEL_22;
          }
        }

        v23 = *(v4 + 24);
        v24 = &v12[v23];
        v25 = v12[v23 + 4];
        v26 = &v8[v23];
        v27 = v8[v23 + 4];
        if (v25)
        {
          if (!v27)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (*v24 != *v26)
          {
            LOBYTE(v27) = 1;
          }

          if (v27)
          {
            goto LABEL_21;
          }
        }

        sub_1C584EFD0();
        sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v28 = sub_1C584F620();
        sub_1C56EC248(v8, type metadata accessor for WebPlacecardBridge.MUStyleAttributes.MUStyleAttribute);
        sub_1C56EC248(v12, type metadata accessor for WebPlacecardBridge.MUStyleAttributes.MUStyleAttribute);
        if (v28)
        {
          v16 += v17;
          v15 += v17;
          if (--v13)
          {
            continue;
          }
        }

        return v28 & 1;
      }
    }

    v28 = 1;
  }

  else
  {
LABEL_22:
    v28 = 0;
  }

  return v28 & 1;
}

uint64_t sub_1C56EB4D8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C56EB534(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C56EB590(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag(0);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v34 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (v13 && a1 != a2)
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      while (1)
      {
        sub_1C56EC1E0(v15, v12, type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag);
        sub_1C56EC1E0(v16, v8, type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag);
        v18 = *(v4 + 24);
        v19 = &v12[v18];
        v20 = *&v12[v18 + 8];
        v21 = &v8[v18];
        v22 = *(v21 + 1);
        if (v20)
        {
          if (!v22 || (*v19 == *v21 ? (v23 = v20 == v22) : (v23 = 0), !v23 && (sub_1C584FDC0() & 1) == 0))
          {
LABEL_32:
            sub_1C56EC248(v12, type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag);
            sub_1C56EC248(v8, type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag);
            goto LABEL_33;
          }
        }

        else if (v22)
        {
          goto LABEL_32;
        }

        v24 = *(v4 + 28);
        v25 = &v12[v24];
        v26 = *&v12[v24 + 8];
        v27 = &v8[v24];
        v28 = *(v27 + 1);
        if (v26)
        {
          if (!v28)
          {
            goto LABEL_32;
          }

          v29 = *v25 == *v27 && v26 == v28;
          if (!v29 && (sub_1C584FDC0() & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        else if (v28)
        {
          goto LABEL_32;
        }

        v30 = *v12;
        v31 = *v8;
        if (v30 == 2)
        {
          if (v31 != 2)
          {
            goto LABEL_32;
          }
        }

        else if (v31 == 2 || ((v31 ^ v30) & 1) != 0)
        {
          goto LABEL_32;
        }

        sub_1C584EFD0();
        sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v32 = sub_1C584F620();
        sub_1C56EC248(v12, type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag);
        sub_1C56EC248(v8, type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag);
        if (v32)
        {
          v16 += v17;
          v15 += v17;
          if (--v13)
          {
            continue;
          }
        }

        return v32 & 1;
      }
    }

    v32 = 1;
  }

  else
  {
LABEL_33:
    v32 = 0;
  }

  return v32 & 1;
}

uint64_t sub_1C56EB888(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUUserGuide(0);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v43 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (v13 && a1 != a2)
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      while (1)
      {
        sub_1C56EC1E0(v15, v12, type metadata accessor for WebPlacecardBridgeReply.MUUserGuide);
        sub_1C56EC1E0(v16, v8, type metadata accessor for WebPlacecardBridgeReply.MUUserGuide);
        v18 = v4[5];
        v19 = &v12[v18];
        v20 = *&v12[v18 + 8];
        v21 = &v8[v18];
        v22 = *(v21 + 1);
        if (v20)
        {
          if (!v22)
          {
            goto LABEL_42;
          }

          v23 = *v19 == *v21 && v20 == v22;
          if (!v23 && (sub_1C584FDC0() & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        else if (v22)
        {
          goto LABEL_42;
        }

        v24 = v4[6];
        v25 = &v12[v24];
        v26 = *&v12[v24 + 8];
        v27 = &v8[v24];
        v28 = *(v27 + 1);
        if (v26)
        {
          if (!v28)
          {
            goto LABEL_42;
          }

          v29 = *v25 == *v27 && v26 == v28;
          if (!v29 && (sub_1C584FDC0() & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        else if (v28)
        {
          goto LABEL_42;
        }

        v30 = v4[7];
        v31 = &v12[v30];
        v32 = *&v12[v30 + 8];
        v33 = &v8[v30];
        v34 = *(v33 + 1);
        if (v32)
        {
          if (!v34)
          {
            goto LABEL_42;
          }

          v35 = *v31 == *v33 && v32 == v34;
          if (!v35 && (sub_1C584FDC0() & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        else if (v34)
        {
          goto LABEL_42;
        }

        v36 = v4[8];
        v37 = &v12[v36];
        v38 = v12[v36 + 4];
        v39 = &v8[v36];
        v40 = v8[v36 + 4];
        if (v38)
        {
          if (!v40)
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (*v37 != *v39)
          {
            LOBYTE(v40) = 1;
          }

          if (v40)
          {
LABEL_42:
            sub_1C56EC248(v8, type metadata accessor for WebPlacecardBridgeReply.MUUserGuide);
            sub_1C56EC248(v12, type metadata accessor for WebPlacecardBridgeReply.MUUserGuide);
            goto LABEL_43;
          }
        }

        sub_1C584EFD0();
        sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v41 = sub_1C584F620();
        sub_1C56EC248(v8, type metadata accessor for WebPlacecardBridgeReply.MUUserGuide);
        sub_1C56EC248(v12, type metadata accessor for WebPlacecardBridgeReply.MUUserGuide);
        if (v41)
        {
          v16 += v17;
          v15 += v17;
          if (--v13)
          {
            continue;
          }
        }

        return v41 & 1;
      }
    }

    v41 = 1;
  }

  else
  {
LABEL_43:
    v41 = 0;
  }

  return v41 & 1;
}

uint64_t sub_1C56EBBC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUArpRating(0);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v31 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (v13 && a1 != a2)
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      while (1)
      {
        sub_1C56EC1E0(v15, v12, type metadata accessor for WebPlacecardBridgeReply.MUArpRating);
        sub_1C56EC1E0(v16, v8, type metadata accessor for WebPlacecardBridgeReply.MUArpRating);
        v18 = *(v4 + 20);
        v19 = &v12[v18];
        v20 = *&v12[v18 + 8];
        v21 = &v8[v18];
        v22 = *(v21 + 1);
        if (v20)
        {
          if (!v22)
          {
            goto LABEL_24;
          }

          v23 = *v19 == *v21 && v20 == v22;
          if (!v23 && (sub_1C584FDC0() & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else if (v22)
        {
          goto LABEL_24;
        }

        v24 = *(v4 + 24);
        v25 = &v12[v24];
        v26 = v12[v24 + 4];
        v27 = &v8[v24];
        v28 = v8[v24 + 4];
        if (v26)
        {
          if (!v28)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (*v25 != *v27)
          {
            LOBYTE(v28) = 1;
          }

          if (v28)
          {
LABEL_24:
            sub_1C56EC248(v12, type metadata accessor for WebPlacecardBridgeReply.MUArpRating);
            sub_1C56EC248(v8, type metadata accessor for WebPlacecardBridgeReply.MUArpRating);
            goto LABEL_25;
          }
        }

        sub_1C584EFD0();
        sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v29 = sub_1C584F620();
        sub_1C56EC248(v12, type metadata accessor for WebPlacecardBridgeReply.MUArpRating);
        sub_1C56EC248(v8, type metadata accessor for WebPlacecardBridgeReply.MUArpRating);
        if (v29)
        {
          v16 += v17;
          v15 += v17;
          if (--v13)
          {
            continue;
          }
        }

        return v29 & 1;
      }
    }

    v29 = 1;
  }

  else
  {
LABEL_25:
    v29 = 0;
  }

  return v29 & 1;
}

unint64_t sub_1C56EBE80(unint64_t result)
{
  if (result >= 0xA)
  {
    return 10;
  }

  return result;
}

unint64_t sub_1C56EBEB0(unint64_t result)
{
  if (result >= 0x13)
  {
    return 19;
  }

  return result;
}

uint64_t sub_1C56EBEC0(unint64_t a1)
{
  if (a1 > 8)
  {
    return 5;
  }

  else
  {
    return byte_1C58761E0[a1];
  }
}

uint64_t sub_1C56EBEE0(uint64_t a1)
{
  result = 0;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 1;
      break;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    case 4:
      result = 4;
      break;
    case 5:
      result = 5;
      break;
    case 6:
      result = 6;
      break;
    case 7:
      result = 7;
      break;
    case 8:
      result = 8;
      break;
    case 9:
      result = 9;
      break;
    case 10:
      result = 10;
      break;
    case 11:
      result = 11;
      break;
    case 12:
      result = 12;
      break;
    case 13:
      result = 13;
      break;
    case 14:
      result = 14;
      break;
    case 15:
      result = 15;
      break;
    case 16:
      result = 16;
      break;
    case 17:
      result = 17;
      break;
    case 18:
      result = 18;
      break;
    case 19:
      result = 19;
      break;
    case 20:
      result = 20;
      break;
    case 21:
      result = 21;
      break;
    case 22:
      result = 22;
      break;
    case 23:
      result = 23;
      break;
    case 24:
      result = 24;
      break;
    case 25:
      result = 25;
      break;
    case 26:
      result = 26;
      break;
    case 27:
      result = 27;
      break;
    case 28:
      result = 28;
      break;
    case 29:
      result = 29;
      break;
    case 30:
      result = 30;
      break;
    case 31:
      result = 31;
      break;
    case 32:
      result = 32;
      break;
    case 33:
      result = 33;
      break;
    case 34:
      result = 34;
      break;
    case 35:
      result = 35;
      break;
    case 36:
      result = 36;
      break;
    case 37:
      result = 37;
      break;
    case 38:
      result = 38;
      break;
    case 39:
      result = 39;
      break;
    case 40:
      result = 40;
      break;
    case 41:
      result = 41;
      break;
    case 42:
      result = 42;
      break;
    case 43:
      result = 43;
      break;
    case 44:
      result = 44;
      break;
    case 45:
      result = 45;
      break;
    case 46:
      result = 46;
      break;
    case 47:
      result = 47;
      break;
    case 48:
      result = 48;
      break;
    case 49:
      result = 49;
      break;
    case 50:
      result = 50;
      break;
    case 51:
      result = 51;
      break;
    default:
      if (a1 == 1001)
      {
        v4 = 53;
      }

      else
      {
        v4 = 54;
      }

      if (a1 == 1000)
      {
        result = 52;
      }

      else
      {
        result = v4;
      }

      break;
  }

  return result;
}

unint64_t sub_1C56EC0C8(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

uint64_t sub_1C56EC178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C56EC1E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C56EC248(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1C56EC9C8(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_1C56EC9D8(uint64_t a1)
{
  if (a1 <= 6)
  {
    if (a1 <= 3)
    {
      switch(a1)
      {
        case 1:
          return 0;
        case 2:
          return 1;
        case 3:
          return 2;
      }

      return 13;
    }

    if (a1 == 4)
    {
      return 3;
    }

    else if (a1 == 5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }

  else
  {
    if (a1 > 9)
    {
      if (a1 <= 11)
      {
        if (a1 == 10)
        {
          return 9;
        }

        else
        {
          return 10;
        }
      }

      if (a1 == 12)
      {
        return 11;
      }

      if (a1 == 1000)
      {
        return 12;
      }

      return 13;
    }

    if (a1 == 7)
    {
      return 6;
    }

    else if (a1 == 8)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1C56ECAD0(unint64_t a1)
{
  if (a1 >= 7)
  {
    return 6;
  }

  else
  {
    return (0x5040302010006uLL >> (8 * a1));
  }
}

uint64_t sub_1C56ECE38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C56ECF40(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  if ((sub_1C56EA7A8(*a1, *a2, a3, a4) & 1) == 0 || (sub_1C56EA7A8(a1[1], a2[1], a3, a4) & 1) == 0 || (sub_1C56EA7A8(a1[2], a2[2], a3, a4) & 1) == 0 || (sub_1C56EA7A8(a1[3], a2[3], a3, a4) & 1) == 0)
  {
    return 0;
  }

  a5(0);
  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56ED04C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 4);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 4);
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (*v9 != *v11)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  v13 = v4[7];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 4);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 4);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = v4[8];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  v23 = v4[9];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24 == 6)
  {
    if (v25 != 6)
    {
      return 0;
    }
  }

  else if (v24 != v25)
  {
    return 0;
  }

  v26 = v4[10];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30 || (*v27 != *v29 || v28 != v30) && (sub_1C584FDC0() & 1) == 0)
    {
      return 0;
    }

LABEL_33:
    sub_1C584EFD0();
    sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return sub_1C584F620() & 1;
  }

  if (!v30)
  {
    goto LABEL_33;
  }

  return 0;
}

uint64_t sub_1C56ED21C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MUUserPreferences(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v24[0] = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECA0, &qword_1C586B128);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBE0, &qword_1C5875DF0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v24 - v15;
  v17 = *(type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs(0) + 20);
  v18 = *(v13 + 56);
  v24[1] = a1;
  sub_1C56466CC(a1 + v17, v16, &qword_1EC16ECA0, &qword_1C586B128);
  sub_1C56466CC(a2 + v17, &v16[v18], &qword_1EC16ECA0, &qword_1C586B128);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1C5625230(v16, &qword_1EC16ECA0, &qword_1C586B128);
LABEL_9:
      sub_1C584EFD0();
      sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v20 = sub_1C584F620();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_1C56466CC(v16, v11, &qword_1EC16ECA0, &qword_1C586B128);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1C56EC248(v11, type metadata accessor for MUUserPreferences);
LABEL_6:
    sub_1C5625230(v16, &qword_1EC16FBE0, &qword_1C5875DF0);
    goto LABEL_7;
  }

  v21 = v24[0];
  sub_1C56EC178(&v16[v18], v24[0], type metadata accessor for MUUserPreferences);
  v22 = sub_1C56F34AC(v11, v21);
  sub_1C56EC248(v21, type metadata accessor for MUUserPreferences);
  sub_1C56EC248(v11, type metadata accessor for MUUserPreferences);
  sub_1C5625230(v16, &qword_1EC16ECA0, &qword_1C586B128);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1C56ED578(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else if (v10 == 2 || ((v9 ^ v10) & 1) != 0)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else if (v13 == 2 || ((v12 ^ v13) & 1) != 0)
  {
    return 0;
  }

  v14 = v4[8];
  v15 = *(a1 + v14);
  v16 = *(a2 + v14);
  if (v15 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }
  }

  else if (v16 == 2 || ((v15 ^ v16) & 1) != 0)
  {
    return 0;
  }

  v17 = v4[9];
  v18 = *(a1 + v17);
  v19 = *(a2 + v17);
  if (v18 == 2)
  {
    if (v19 != 2)
    {
      return 0;
    }
  }

  else if (v19 == 2 || ((v18 ^ v19) & 1) != 0)
  {
    return 0;
  }

  v20 = v4[10];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[11];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = v28[1];
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }

    if (*v26 != *v28 || v27 != v29)
    {
      v30 = v4;
      v31 = sub_1C584FDC0();
      v4 = v30;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v29)
  {
    return 0;
  }

  v32 = v4[12];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 4);
  v35 = (a2 + v32);
  v36 = *(a2 + v32 + 4);
  if (v34)
  {
    if (!v36)
    {
      return 0;
    }
  }

  else
  {
    if (*v33 != *v35)
    {
      LOBYTE(v36) = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56ED7BC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem(0) + 24);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v7[1];
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = *v5 == *v7 && v6 == v8;
    if (!v9 && (sub_1C584FDC0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (sub_1C56EA440(*a1, *a2))
  {
    sub_1C584EFD0();
    sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return sub_1C584F620() & 1;
  }

  return 0;
}

uint64_t sub_1C56ED8B0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUAttributionData(0);
  v5 = v4[6];
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

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_1C584FDC0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (sub_1C56EA440(*a1, *a2))
  {
    v11 = v4[7];
    v12 = (a1 + v11);
    v13 = *(a1 + v11 + 8);
    v14 = (a2 + v11);
    v15 = v14[1];
    if (v13)
    {
      if (!v15)
      {
        return 0;
      }

      v16 = *v12 == *v14 && v13 == v15;
      if (!v16 && (sub_1C584FDC0() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v15)
    {
      return 0;
    }

    v17 = v4[8];
    v18 = (a1 + v17);
    v19 = *(a1 + v17 + 8);
    v20 = (a2 + v17);
    v21 = v20[1];
    if (v19)
    {
      if (!v21)
      {
        return 0;
      }

      v22 = *v18 == *v20 && v19 == v21;
      if (!v22 && (sub_1C584FDC0() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v21)
    {
      return 0;
    }

    v23 = v4[9];
    v24 = (a1 + v23);
    v25 = *(a1 + v23 + 8);
    v26 = (a2 + v23);
    v27 = v26[1];
    if (v25)
    {
      if (v27 && (*v24 == *v26 && v25 == v27 || (sub_1C584FDC0() & 1) != 0))
      {
        goto LABEL_34;
      }
    }

    else if (!v27)
    {
LABEL_34:
      sub_1C584EFD0();
      sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      return sub_1C584F620() & 1;
    }
  }

  return 0;
}

uint64_t sub_1C56EDA70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
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
      v12 = sub_1C584FDC0();
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
      v20 = sub_1C584FDC0();
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
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22 == 2)
  {
    if (v23 != 2)
    {
      return 0;
    }
  }

  else if (v23 == 2 || ((v22 ^ v23) & 1) != 0)
  {
    return 0;
  }

  v24 = v4[8];
  v25 = *(a1 + v24);
  v26 = *(a2 + v24);
  if (v25 == 2)
  {
    if (v26 != 2)
    {
      return 0;
    }
  }

  else if (v26 == 2 || ((v25 ^ v26) & 1) != 0)
  {
    return 0;
  }

  v27 = v4[9];
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = v30[1];
  if (v29)
  {
    if (!v31)
    {
      return 0;
    }

    if (*v28 != *v30 || v29 != v31)
    {
      v32 = v4;
      v33 = sub_1C584FDC0();
      v4 = v32;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v31)
  {
    return 0;
  }

  v34 = v4[10];
  v35 = *(a1 + v34);
  v36 = *(a2 + v34);
  if (v35 == 2)
  {
    if (v36 != 2)
    {
      return 0;
    }
  }

  else if (v36 == 2 || ((v35 ^ v36) & 1) != 0)
  {
    return 0;
  }

  v37 = v4[11];
  v38 = *(a1 + v37);
  v39 = *(a2 + v37);
  if (v38 == 2)
  {
    if (v39 != 2)
    {
      return 0;
    }
  }

  else if (v39 == 2 || ((v38 ^ v39) & 1) != 0)
  {
    return 0;
  }

  v40 = v4[12];
  v41 = *(a1 + v40);
  v42 = *(a2 + v40);
  if (v41 == 2)
  {
    if (v42 != 2)
    {
      return 0;
    }
  }

  else if (v42 == 2 || ((v41 ^ v42) & 1) != 0)
  {
    return 0;
  }

  v43 = v4[13];
  v44 = *(a1 + v43);
  v45 = *(a2 + v43);
  if (v44 == 2)
  {
    if (v45 != 2)
    {
      return 0;
    }
  }

  else if (v45 == 2 || ((v44 ^ v45) & 1) != 0)
  {
    return 0;
  }

  v46 = v4[14];
  v47 = *(a1 + v46);
  v48 = *(a2 + v46);
  if (v47 == 2)
  {
    if (v48 != 2)
    {
      return 0;
    }
  }

  else if (v48 == 2 || ((v47 ^ v48) & 1) != 0)
  {
    return 0;
  }

  v49 = v4[15];
  v50 = *(a1 + v49);
  v51 = *(a2 + v49);
  if (v50 == 2)
  {
    if (v51 == 2)
    {
      goto LABEL_67;
    }

    return 0;
  }

  if (v51 == 2 || ((v50 ^ v51) & 1) != 0)
  {
    return 0;
  }

LABEL_67:
  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56EDD88(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ED10, &qword_1C586B198);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBE8, &qword_1C5875DF8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v37 - v15;
  if ((sub_1C56EA7A8(*a1, *a2, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem) & 1) == 0)
  {
    goto LABEL_26;
  }

  v17 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions(0);
  v18 = *(v17 + 24);
  v19 = a1;
  v20 = *(v13 + 48);
  v37 = v17;
  v38 = v19;
  sub_1C56466CC(v19 + v18, v16, &qword_1EC16ED10, &qword_1C586B198);
  sub_1C56466CC(a2 + v18, &v16[v20], &qword_1EC16ED10, &qword_1C586B198);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v20], 1, v4) == 1)
    {
      sub_1C5625230(v16, &qword_1EC16ED10, &qword_1C586B198);
      v22 = v38;
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  sub_1C56466CC(v16, v12, &qword_1EC16ED10, &qword_1C586B198);
  if (v21(&v16[v20], 1, v4) == 1)
  {
    sub_1C56EC248(v12, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs);
LABEL_10:
    v26 = &qword_1EC16FBE8;
    v27 = &qword_1C5875DF8;
LABEL_25:
    sub_1C5625230(v16, v26, v27);
LABEL_26:
    v35 = 0;
    return v35 & 1;
  }

  sub_1C56EC178(&v16[v20], v8, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs);
  v28 = *(v4 + 20);
  v29 = &v12[v28];
  v30 = *&v12[v28 + 8];
  v31 = &v8[v28];
  v32 = *(v31 + 1);
  if (!v30)
  {
    v22 = v38;
    if (!v32)
    {
      goto LABEL_18;
    }

LABEL_24:
    sub_1C56EC248(v8, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs);
    sub_1C56EC248(v12, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs);
    v26 = &qword_1EC16ED10;
    v27 = &qword_1C586B198;
    goto LABEL_25;
  }

  v22 = v38;
  if (!v32)
  {
    goto LABEL_24;
  }

  v33 = *v29 == *v31 && v30 == v32;
  if (!v33 && (sub_1C584FDC0() & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v34 = sub_1C584F620();
  sub_1C56EC248(v8, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs);
  sub_1C56EC248(v12, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs);
  sub_1C5625230(v16, &qword_1EC16ED10, &qword_1C586B198);
  if ((v34 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_5:
  v23 = *(v37 + 28);
  v24 = *(v22 + v23);
  v25 = *(a2 + v23);
  if (v24 == 2)
  {
    if (v25 != 2)
    {
      goto LABEL_26;
    }
  }

  else if (v25 == 2 || ((v24 ^ v25) & 1) != 0)
  {
    goto LABEL_26;
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v35 = sub_1C584F620();
  return v35 & 1;
}

uint64_t sub_1C56EE228(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag(0);
  v5 = *(v4 + 24);
  v6 = &a1[v5];
  v7 = *&a1[v5 + 8];
  v8 = &a2[v5];
  v9 = *(v8 + 1);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_1C584FDC0();
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

  v13 = *(v4 + 28);
  v14 = &a1[v13];
  v15 = *&a1[v13 + 8];
  v16 = &a2[v13];
  v17 = *(v16 + 1);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    v18 = *v14 == *v16 && v15 == v17;
    if (!v18 && (sub_1C584FDC0() & 1) == 0)
    {
      return 0;
    }

LABEL_19:
    v19 = *a1;
    v20 = *a2;
    if (v19 == 2)
    {
      if (v20 != 2)
      {
        return 0;
      }
    }

    else if (v20 == 2 || ((v20 ^ v19) & 1) != 0)
    {
      return 0;
    }

    sub_1C584EFD0();
    sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return sub_1C584F620() & 1;
  }

  if (!v17)
  {
    goto LABEL_19;
  }

  return 0;
}

uint64_t sub_1C56EE398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
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
      v12 = sub_1C584FDC0();
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
  v15 = *(a1 + v13 + 4);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 4);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = v4[7];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (!v20)
  {
    if (!v22)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (!v22)
  {
    return 0;
  }

  if (*v19 != *v21 || v20 != v22)
  {
    v24 = v4;
    v25 = sub_1C584FDC0();
    v4 = v24;
    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_25:
  v26 = v4[8];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 4);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 4);
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

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56EE53C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork(0);
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
      v12 = sub_1C584FDC0();
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
      v20 = sub_1C584FDC0();
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
      v28 = sub_1C584FDC0();
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
      v36 = sub_1C584FDC0();
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
      v43 = sub_1C584FDC0();
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
  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56EE7AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUUserGuide(0);
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
      v12 = sub_1C584FDC0();
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
      v20 = sub_1C584FDC0();
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
  if (!v23)
  {
    if (!v25)
    {
      goto LABEL_28;
    }

    return 0;
  }

  if (!v25)
  {
    return 0;
  }

  if (*v22 != *v24 || v23 != v25)
  {
    v27 = v4;
    v28 = sub_1C584FDC0();
    v4 = v27;
    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_28:
  v29 = v4[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 4);
  v32 = (a2 + v29);
  v33 = *(a2 + v29 + 4);
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }
  }

  else
  {
    if (*v30 != *v32)
    {
      LOBYTE(v33) = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56EE970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else if (v10 == 2 || ((v9 ^ v10) & 1) != 0)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else if (v13 == 2 || ((v12 ^ v13) & 1) != 0)
  {
    return 0;
  }

  v14 = v4[8];
  v15 = *(a1 + v14);
  v16 = *(a2 + v14);
  if (v15 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }
  }

  else if (v16 == 2 || ((v15 ^ v16) & 1) != 0)
  {
    return 0;
  }

  v17 = v4[9];
  v18 = *(a1 + v17);
  v19 = *(a2 + v17);
  if (v18 == 2)
  {
    if (v19 != 2)
    {
      return 0;
    }
  }

  else if (v19 == 2 || ((v18 ^ v19) & 1) != 0)
  {
    return 0;
  }

  v20 = v4[10];
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21 == 2)
  {
    if (v22 != 2)
    {
      return 0;
    }
  }

  else if (v22 == 2 || ((v21 ^ v22) & 1) != 0)
  {
    return 0;
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56EEB28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = *(v5 + 20);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    if (*v7 != *v9 || v8 != v10)
    {
      v12 = v5;
      v13 = sub_1C584FDC0();
      v5 = v12;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = *(v5 + 24);
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 4);
  v17 = (a2 + v14);
  v18 = *(a2 + v14 + 4);
  if (v16)
  {
    if (!v18)
    {
      return 0;
    }
  }

  else
  {
    if (*v15 != *v17)
    {
      LOBYTE(v18) = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56EEC48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECD0, &qword_1C586B158);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC60, &qword_1C5875E70);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v35 - v15;
  v17 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  v18 = *(v17 + 20);
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 13)
  {
    if (v20 != 13)
    {
      goto LABEL_13;
    }
  }

  else if (v20 == 13 || qword_1C58761F0[v19] != qword_1C58761F0[v20])
  {
    goto LABEL_13;
  }

  v21 = a1;
  v22 = a2;
  v23 = *(v17 + 24);
  v24 = *(v13 + 48);
  v35[1] = v21;
  sub_1C56466CC(v21 + v23, v16, &qword_1EC16ECD0, &qword_1C586B158);
  sub_1C56466CC(v22 + v23, &v16[v24], &qword_1EC16ECD0, &qword_1C586B158);
  v25 = *(v5 + 48);
  if (v25(v16, 1, v4) == 1)
  {
    if (v25(&v16[v24], 1, v4) == 1)
    {
      sub_1C5625230(v16, &qword_1EC16ECD0, &qword_1C586B158);
LABEL_18:
      sub_1C584EFD0();
      sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v28 = sub_1C584F620();
      return v28 & 1;
    }

    goto LABEL_11;
  }

  sub_1C56466CC(v16, v12, &qword_1EC16ECD0, &qword_1C586B158);
  if (v25(&v16[v24], 1, v4) == 1)
  {
    sub_1C56EC248(v12, type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments);
LABEL_11:
    v26 = &qword_1EC16FC60;
    v27 = &qword_1C5875E70;
LABEL_12:
    sub_1C5625230(v16, v26, v27);
    goto LABEL_13;
  }

  sub_1C56EC178(&v16[v24], v8, type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments);
  v30 = *(v4 + 20);
  v31 = *&v12[v30];
  v32 = *&v8[v30];
  if (v31 != v32)
  {

    v33 = sub_1C56E1160(v31, v32);

    if (!v33)
    {
      sub_1C56EC248(v8, type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments);
      sub_1C56EC248(v12, type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments);
      v26 = &qword_1EC16ECD0;
      v27 = &qword_1C586B158;
      goto LABEL_12;
    }
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v34 = sub_1C584F620();
  sub_1C56EC248(v8, type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments);
  sub_1C56EC248(v12, type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments);
  sub_1C5625230(v16, &qword_1EC16ECD0, &qword_1C586B158);
  if (v34)
  {
    goto LABEL_18;
  }

LABEL_13:
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_1C56EF0B8(uint64_t *a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for WebPlacecardBridge(0) + 24);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 == 19)
  {
    if (v6 != 19)
    {
      return 0;
    }
  }

  else if (v5 != v6)
  {
    return 0;
  }

  if (sub_1C56EAA74(*a1, *a2))
  {
    sub_1C584EFD0();
    sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return sub_1C584F620() & 1;
  }

  return 0;
}

uint64_t sub_1C56EF190(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C56EF1D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MULocation(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC50, &qword_1C586B0C8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v64 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC68, &qword_1C5875E78);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v64 - v15;
  v17 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture(0);
  v18 = v17[5];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 2)
  {
    if (v20 != 2)
    {
      goto LABEL_47;
    }
  }

  else if (v20 == 2 || ((v20 ^ v19) & 1) != 0)
  {
    goto LABEL_47;
  }

  v21 = v17[6];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_47;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v26 = v17;
      v27 = sub_1C584FDC0();
      v17 = v26;
      if ((v27 & 1) == 0)
      {
        goto LABEL_47;
      }
    }
  }

  else if (v25)
  {
    goto LABEL_47;
  }

  v28 = v17[7];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = v31[1];
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_47;
    }

    if (*v29 != *v31 || v30 != v32)
    {
      v33 = v17;
      v34 = sub_1C584FDC0();
      v17 = v33;
      if ((v34 & 1) == 0)
      {
        goto LABEL_47;
      }
    }
  }

  else if (v32)
  {
    goto LABEL_47;
  }

  v35 = v17[8];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  v39 = v38[1];
  if (v37)
  {
    if (!v39)
    {
      goto LABEL_47;
    }

    if (*v36 != *v38 || v37 != v39)
    {
      v40 = v17;
      v41 = sub_1C584FDC0();
      v17 = v40;
      if ((v41 & 1) == 0)
      {
        goto LABEL_47;
      }
    }
  }

  else if (v39)
  {
    goto LABEL_47;
  }

  v42 = v17[9];
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 8);
  v45 = (a2 + v42);
  v46 = v45[1];
  if (v44)
  {
    if (!v46)
    {
      goto LABEL_47;
    }

    if (*v43 != *v45 || v44 != v46)
    {
      v47 = v17;
      v48 = sub_1C584FDC0();
      v17 = v47;
      if ((v48 & 1) == 0)
      {
        goto LABEL_47;
      }
    }
  }

  else if (v46)
  {
    goto LABEL_47;
  }

  v49 = v17[10];
  v50 = (a1 + v49);
  v51 = *(a1 + v49 + 8);
  v52 = (a2 + v49);
  v53 = v52[1];
  if (v51)
  {
    if (!v53)
    {
      goto LABEL_47;
    }

    if (*v50 != *v52 || v51 != v53)
    {
      v54 = v17;
      v55 = sub_1C584FDC0();
      v17 = v54;
      if ((v55 & 1) == 0)
      {
        goto LABEL_47;
      }
    }
  }

  else if (v53)
  {
    goto LABEL_47;
  }

  v56 = v17[11];
  v57 = *(v13 + 48);
  sub_1C56466CC(a1 + v56, v16, &qword_1EC16EC50, &qword_1C586B0C8);
  v58 = a2 + v56;
  v59 = v57;
  sub_1C56466CC(v58, &v16[v57], &qword_1EC16EC50, &qword_1C586B0C8);
  v60 = *(v5 + 48);
  if (v60(v16, 1, v4) == 1)
  {
    if (v60(&v16[v59], 1, v4) == 1)
    {
      sub_1C5625230(v16, &qword_1EC16EC50, &qword_1C586B0C8);
LABEL_50:
      sub_1C584EFD0();
      sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v61 = sub_1C584F620();
      return v61 & 1;
    }

    goto LABEL_46;
  }

  sub_1C56466CC(v16, v12, &qword_1EC16EC50, &qword_1C586B0C8);
  if (v60(&v16[v59], 1, v4) == 1)
  {
    sub_1C56EC248(v12, type metadata accessor for MULocation);
LABEL_46:
    sub_1C5625230(v16, &qword_1EC16FC68, &qword_1C5875E78);
    goto LABEL_47;
  }

  sub_1C56EC178(&v16[v59], v8, type metadata accessor for MULocation);
  v63 = sub_1C56F4268(v12, v8, type metadata accessor for MULocation);
  sub_1C56EC248(v8, type metadata accessor for MULocation);
  sub_1C56EC248(v12, type metadata accessor for MULocation);
  sub_1C5625230(v16, &qword_1EC16EC50, &qword_1C586B0C8);
  if (v63)
  {
    goto LABEL_50;
  }

LABEL_47:
  v61 = 0;
  return v61 & 1;
}

uint64_t sub_1C56EF72C(uint64_t *a1, uint64_t *a2)
{
  if (sub_1C56EA440(*a1, *a2))
  {
    v4 = *(type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl(0) + 24);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (sub_1C584FDC0() & 1) != 0)
        {
          goto LABEL_9;
        }
      }
    }

    else if (!v8)
    {
LABEL_9:
      sub_1C584EFD0();
      sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      return sub_1C584F620() & 1;
    }
  }

  return 0;
}

uint64_t sub_1C56EF828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 4)
  {
    if (v7 != 4)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v11[1];
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }

    if (*v9 != *v11 || v10 != v12)
    {
      v14 = v4;
      v15 = sub_1C584FDC0();
      v4 = v14;
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  v16 = v4[7];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v19[1];
  if (v18)
  {
    if (!v20)
    {
      return 0;
    }

    v21 = *v17 == *v19 && v18 == v20;
    if (!v21 && (sub_1C584FDC0() & 1) == 0)
    {
      return 0;
    }

LABEL_21:
    sub_1C584EFD0();
    sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return sub_1C584F620() & 1;
  }

  if (!v20)
  {
    goto LABEL_21;
  }

  return 0;
}

uint64_t sub_1C56EF97C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC30, &qword_1C586B0A8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FCB8, &qword_1C5875EC8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v42 - v15;
  v17 = type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_25;
    }

    if (*v19 != *v21 || v20 != v22)
    {
      v24 = v17;
      v25 = sub_1C584FDC0();
      v17 = v24;
      if ((v25 & 1) == 0)
      {
        goto LABEL_25;
      }
    }
  }

  else if (v22)
  {
    goto LABEL_25;
  }

  v26 = v17[6];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_25;
    }

    if (*v27 != *v29 || v28 != v30)
    {
      v32 = v17;
      v33 = sub_1C584FDC0();
      v17 = v32;
      if ((v33 & 1) == 0)
      {
        goto LABEL_25;
      }
    }
  }

  else if (v30)
  {
    goto LABEL_25;
  }

  v34 = v17[7];
  v35 = *(v13 + 48);
  sub_1C56466CC(a1 + v34, v16, &qword_1EC16EC30, &qword_1C586B0A8);
  v36 = a2 + v34;
  v37 = v35;
  sub_1C56466CC(v36, &v16[v35], &qword_1EC16EC30, &qword_1C586B0A8);
  v38 = *(v5 + 48);
  if (v38(v16, 1, v4) == 1)
  {
    if (v38(&v16[v37], 1, v4) == 1)
    {
      sub_1C5625230(v16, &qword_1EC16EC30, &qword_1C586B0A8);
LABEL_28:
      sub_1C584EFD0();
      sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v39 = sub_1C584F620();
      return v39 & 1;
    }

    goto LABEL_24;
  }

  sub_1C56466CC(v16, v12, &qword_1EC16EC30, &qword_1C586B0A8);
  if (v38(&v16[v37], 1, v4) == 1)
  {
    sub_1C56EC248(v12, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox);
LABEL_24:
    sub_1C5625230(v16, &qword_1EC16FCB8, &qword_1C5875EC8);
    goto LABEL_25;
  }

  sub_1C56EC178(&v16[v37], v8, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox);
  v41 = sub_1C56F15F4(v12, v8);
  sub_1C56EC248(v8, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox);
  sub_1C56EC248(v12, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox);
  sub_1C5625230(v16, &qword_1EC16EC30, &qword_1C586B0A8);
  if (v41)
  {
    goto LABEL_28;
  }

LABEL_25:
  v39 = 0;
  return v39 & 1;
}

uint64_t sub_1C56EFD7C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList(0);
  v5 = *(v4 + 24);
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

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_1C584FDC0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (sub_1C56EA440(*a1, *a2))
  {
    v11 = *(v4 + 28);
    v12 = (a1 + v11);
    v13 = *(a1 + v11 + 8);
    v14 = (a2 + v11);
    v15 = v14[1];
    if (v13)
    {
      if (v15)
      {
        v16 = *v12 == *v14 && v13 == v15;
        if (v16 || (sub_1C584FDC0() & 1) != 0)
        {
          goto LABEL_18;
        }
      }
    }

    else if (!v15)
    {
LABEL_18:
      sub_1C584EFD0();
      sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      return sub_1C584F620() & 1;
    }
  }

  return 0;
}

uint64_t sub_1C56EFEB0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList(0) + 32);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v7[1];
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = *v5 == *v7 && v6 == v8;
    if (!v9 && (sub_1C584FDC0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (sub_1C56EA440(*a1, *a2) & 1) != 0 && (sub_1C56EA440(a1[1], a2[1]) & 1) != 0 && (sub_1C56EA440(a1[2], a2[2]))
  {
    sub_1C584EFD0();
    sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return sub_1C584F620() & 1;
  }

  return 0;
}

uint64_t sub_1C56EFFC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 3)
  {
    if (v7 != 3)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = *(v4 + 24);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 2)
  {
    if (v10 == 2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v10 == 2 || ((v9 ^ v10) & 1) != 0)
  {
    return 0;
  }

LABEL_11:
  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56F00B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenExtension(0);
  v5 = *(v4 + 20);
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
      v12 = sub_1C584FDC0();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_10:
    v13 = *(v4 + 24);
    v14 = *(a1 + v13);
    v15 = *(a2 + v13);
    if (v14 == 2)
    {
      if (v15 != 2)
      {
        return 0;
      }
    }

    else if (v15 == 2 || ((v15 ^ v14) & 1) != 0)
    {
      return 0;
    }

    sub_1C584EFD0();
    sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return sub_1C584F620() & 1;
  }

  if (!v9)
  {
    goto LABEL_10;
  }

  return 0;
}

uint64_t sub_1C56F01D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 != 2)
  {
    v19 = (v17 ^ v16) & 1;
    if (v17 == 2 || v19 != 0)
    {
      return 0;
    }

LABEL_15:
    sub_1C584EFD0();
    sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return sub_1C584F620() & 1;
  }

  if (v17 == 2)
  {
    goto LABEL_15;
  }

  return 0;
}

uint64_t sub_1C56F0300(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = v5[5];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    if (*v7 != *v9 || v8 != v10)
    {
      v12 = v5;
      v13 = sub_1C584FDC0();
      v5 = v12;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = v5[6];
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v18 = v17[1];
  if (v16)
  {
    if (!v18)
    {
      return 0;
    }

    if (*v15 != *v17 || v16 != v18)
    {
      v20 = v5;
      v21 = sub_1C584FDC0();
      v5 = v20;
      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  v22 = v5[7];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = v25[1];
  if (v24)
  {
    if (v26)
    {
      v27 = *v23 == *v25 && v24 == v26;
      if (v27 || (sub_1C584FDC0() & 1) != 0)
      {
        goto LABEL_26;
      }
    }
  }

  else if (!v26)
  {
LABEL_26:
    sub_1C584EFD0();
    sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return sub_1C584F620() & 1;
  }

  return 0;
}

uint64_t sub_1C56F0484(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl(0);
  v5 = *(v4 + 20);
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
      v12 = sub_1C584FDC0();
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

  v13 = *(v4 + 24);
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  if (v14 != 2)
  {
    if (v15 != 2 && ((v14 ^ v15) & 1) == 0)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v15 != 2)
  {
    return 0;
  }

LABEL_16:
  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56F05A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v24[0] = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC30, &qword_1C586B0A8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FCB8, &qword_1C5875EC8);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v24 - v15;
  v17 = *(type metadata accessor for WebPlacecardBridge.MUUserInteractionAddPhotos(0) + 20);
  v18 = *(v13 + 56);
  v24[1] = a1;
  sub_1C56466CC(a1 + v17, v16, &qword_1EC16EC30, &qword_1C586B0A8);
  sub_1C56466CC(a2 + v17, &v16[v18], &qword_1EC16EC30, &qword_1C586B0A8);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1C5625230(v16, &qword_1EC16EC30, &qword_1C586B0A8);
LABEL_9:
      sub_1C584EFD0();
      sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v20 = sub_1C584F620();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_1C56466CC(v16, v11, &qword_1EC16EC30, &qword_1C586B0A8);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1C56EC248(v11, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox);
LABEL_6:
    sub_1C5625230(v16, &qword_1EC16FCB8, &qword_1C5875EC8);
    goto LABEL_7;
  }

  v21 = v24[0];
  sub_1C56EC178(&v16[v18], v24[0], type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox);
  v22 = sub_1C56F15F4(v11, v21);
  sub_1C56EC248(v21, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox);
  sub_1C56EC248(v11, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox);
  sub_1C5625230(v16, &qword_1EC16EC30, &qword_1C586B0A8);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1C56F08FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUUserInteractionARPRating(0);
  v5 = *(v4 + 20);
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
      v12 = sub_1C584FDC0();
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

  v13 = *(v4 + 24);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 4);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 4);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56F0A18(uint64_t *a1, uint64_t *a2)
{
  refreshed = type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument(0);
  v5 = *(refreshed + 24);
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

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_1C584FDC0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = *(refreshed + 28);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12 == 3)
  {
    if (v13 != 3)
    {
      return 0;
    }
  }

  else if (v12 != v13)
  {
    return 0;
  }

  if (sub_1C56EA440(*a1, *a2))
  {
    sub_1C584EFD0();
    sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return sub_1C584F620() & 1;
  }

  return 0;
}

uint64_t sub_1C56F0B34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(a3(0) + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 != 2)
  {
    if (v7 != 2 && ((v6 ^ v7) & 1) == 0)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (v7 != 2)
  {
    return 0;
  }

LABEL_7:
  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56F0C00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = *(v5 + 20);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    if (*v7 != *v9 || v8 != v10)
    {
      v12 = v5;
      v13 = sub_1C584FDC0();
      v5 = v12;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = *(v5 + 24);
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v18 = v17[1];
  if (v16)
  {
    if (v18)
    {
      v19 = *v15 == *v17 && v16 == v18;
      if (v19 || (sub_1C584FDC0() & 1) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (!v18)
  {
LABEL_17:
    sub_1C584EFD0();
    sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return sub_1C584F620() & 1;
  }

  return 0;
}

uint64_t sub_1C56F0D30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(a3(0) + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56F0DFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUAttributionArgument(0);
  v5 = *(v4 + 20);
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
      v12 = sub_1C584FDC0();
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

  v13 = *(v4 + 24);
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  if (v14 == 2)
  {
    if (v15 == 2)
    {
LABEL_12:
      sub_1C584EFD0();
      sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      return sub_1C584F620() & 1;
    }
  }

  else
  {
    v17 = (v15 ^ v14) & 1;
    if (v15 != 2 && v17 == 0)
    {
      goto LABEL_12;
    }
  }

  return 0;
}

uint64_t sub_1C56F0F18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(a3(0) + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (v9)
    {
      v10 = *v6 == *v8 && v7 == v9;
      if (v10 || (sub_1C584FDC0() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v9)
  {
LABEL_8:
    sub_1C584EFD0();
    sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return sub_1C584F620() & 1;
  }

  return 0;
}

uint64_t sub_1C56F0FF4(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument(0);
  v5 = *(v4 + 24);
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
      v12 = sub_1C584FDC0();
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

  v13 = *(v4 + 28);
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  if (v14 == 5)
  {
    if (v15 != 5)
    {
      return 0;
    }
  }

  else if (v15 == 5 || qword_1C5876258[v14] != qword_1C5876258[v15])
  {
    return 0;
  }

  if (sub_1C56EB038(*a1, *a2))
  {
    sub_1C584EFD0();
    sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return sub_1C584F620() & 1;
  }

  return 0;
}

uint64_t sub_1C56F113C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v26 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC38, &qword_1C586B0B0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = (&v24 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FDA0, &qword_1C5875FB0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v24 - v15;
  v25 = type metadata accessor for WebPlacecardBridge.MUActionBarArgument(0);
  v17 = *(v25 + 24);
  v18 = *(v13 + 56);
  v27 = a1;
  sub_1C56466CC(a1 + v17, v16, &qword_1EC16EC38, &qword_1C586B0B0);
  sub_1C56466CC(a2 + v17, &v16[v18], &qword_1EC16EC38, &qword_1C586B0B0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1C5625230(v16, &qword_1EC16EC38, &qword_1C586B0B0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1C56466CC(v16, v11, &qword_1EC16EC38, &qword_1C586B0B0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1C56EC248(v11, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
LABEL_6:
    sub_1C5625230(v16, &qword_1EC16FDA0, &qword_1C5875FB0);
LABEL_10:
    v22 = 0;
    return v22 & 1;
  }

  v20 = v26;
  sub_1C56EC178(&v16[v18], v26, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  v21 = sub_1C56F1C58(v11, v20);
  sub_1C56EC248(v20, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  sub_1C56EC248(v11, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  sub_1C5625230(v16, &qword_1EC16EC38, &qword_1C586B0B0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_1C56EB094(*v27, *a2, type metadata accessor for WebPlacecardBridge.MUActionBarItem, type metadata accessor for WebPlacecardBridge.MUActionBarItem, sub_1C56F1C58) & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v22 = sub_1C584F620();
  return v22 & 1;
}

uint64_t sub_1C56F14F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUStyleAttributes.MUStyleAttribute(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(v4 + 24);
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56F15F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56F1758(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC30, &qword_1C586B0A8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FCB8, &qword_1C5875EC8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v34 - v15;
  v17 = type metadata accessor for WebPlacecardBridge.MUWebMenuButton(0);
  v18 = *(v17 + 24);
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_19;
    }

    v23 = *v19 == *v21 && v20 == v22;
    if (!v23 && (sub_1C584FDC0() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v22)
  {
LABEL_19:
    v32 = 0;
    return v32 & 1;
  }

  v34 = v8;
  v24 = *(v17 + 28);
  v25 = a1;
  v26 = *(v13 + 48);
  v35 = v25;
  sub_1C56466CC(v25 + v24, v16, &qword_1EC16EC30, &qword_1C586B0A8);
  v27 = a2 + v24;
  v28 = a2;
  sub_1C56466CC(v27, &v16[v26], &qword_1EC16EC30, &qword_1C586B0A8);
  v29 = *(v5 + 48);
  if (v29(v16, 1, v4) == 1)
  {
    if (v29(&v16[v26], 1, v4) == 1)
    {
      sub_1C5625230(v16, &qword_1EC16EC30, &qword_1C586B0A8);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  sub_1C56466CC(v16, v12, &qword_1EC16EC30, &qword_1C586B0A8);
  if (v29(&v16[v26], 1, v4) == 1)
  {
    sub_1C56EC248(v12, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox);
LABEL_15:
    sub_1C5625230(v16, &qword_1EC16FCB8, &qword_1C5875EC8);
    goto LABEL_19;
  }

  v30 = v34;
  sub_1C56EC178(&v16[v26], v34, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox);
  v31 = sub_1C56F15F4(v12, v30);
  sub_1C56EC248(v30, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox);
  sub_1C56EC248(v12, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox);
  sub_1C5625230(v16, &qword_1EC16EC30, &qword_1C586B0A8);
  if ((v31 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  if ((sub_1C56EB094(*v35, *v28, type metadata accessor for WebPlacecardBridge.MUWebMenuItem, type metadata accessor for WebPlacecardBridge.MUWebMenuItem, sub_1C56F286C) & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v32 = sub_1C584F620();
  return v32 & 1;
}

uint64_t sub_1C56F1B64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {

    v10 = a4(v8, v9);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56F1C58(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB18, &qword_1C586AF80);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FCD0, &qword_1C5875EE0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v56 - v15;
  v17 = type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
  v18 = v17[6];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_43;
    }

    if (*v19 != *v21 || v20 != v22)
    {
      v24 = v17;
      v25 = sub_1C584FDC0();
      v17 = v24;
      if ((v25 & 1) == 0)
      {
        goto LABEL_43;
      }
    }
  }

  else if (v22)
  {
    goto LABEL_43;
  }

  v26 = v17[7];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_43;
    }

    if (*v27 != *v29 || v28 != v30)
    {
      v32 = v17;
      v33 = sub_1C584FDC0();
      v17 = v32;
      if ((v33 & 1) == 0)
      {
        goto LABEL_43;
      }
    }
  }

  else if (v30)
  {
    goto LABEL_43;
  }

  v34 = v17[8];
  v35 = *(a1 + v34);
  v36 = *(a2 + v34);
  if (v35 == 2)
  {
    if (v36 != 2)
    {
      goto LABEL_43;
    }

LABEL_24:
    v57 = v17;
    v38 = v17[9];
    v39 = *(v13 + 48);
    sub_1C56466CC(a1 + v38, v16, &qword_1EC16EB18, &qword_1C586AF80);
    v40 = a2 + v38;
    v41 = v39;
    sub_1C56466CC(v40, &v16[v39], &qword_1EC16EB18, &qword_1C586AF80);
    v42 = *(v5 + 48);
    if (v42(v16, 1, v4) == 1)
    {
      if (v42(&v16[v41], 1, v4) == 1)
      {
        sub_1C5625230(v16, &qword_1EC16EB18, &qword_1C586AF80);
LABEL_34:
        if (sub_1C56EB094(*a1, *a2, type metadata accessor for WebPlacecardBridge.MUWebMenuItem, type metadata accessor for WebPlacecardBridge.MUWebMenuItem, sub_1C56F286C))
        {
          v50 = v57[10];
          v51 = (a1 + v50);
          v52 = *(a1 + v50 + 8);
          v53 = (a2 + v50);
          v54 = v53[1];
          if (v52)
          {
            if (!v54 || (*v51 != *v53 || v52 != v54) && (sub_1C584FDC0() & 1) == 0)
            {
              goto LABEL_43;
            }

            goto LABEL_40;
          }

          if (!v54)
          {
LABEL_40:
            sub_1C584EFD0();
            sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
            v37 = sub_1C584F620();
            return v37 & 1;
          }
        }

LABEL_43:
        v37 = 0;
        return v37 & 1;
      }
    }

    else
    {
      sub_1C56466CC(v16, v12, &qword_1EC16EB18, &qword_1C586AF80);
      if (v42(&v16[v41], 1, v4) != 1)
      {
        sub_1C56EC178(&v16[v41], v8, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
        v45 = *(v4 + 20);
        v46 = *&v12[v45];
        v47 = *&v8[v45];
        if (v46 == v47 || (, , v48 = sub_1C56B1234(v46, v47), , , v48))
        {
          sub_1C584EFD0();
          sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
          v49 = sub_1C584F620();
          sub_1C56EC248(v8, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
          sub_1C56EC248(v12, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
          sub_1C5625230(v16, &qword_1EC16EB18, &qword_1C586AF80);
          if ((v49 & 1) == 0)
          {
            goto LABEL_43;
          }

          goto LABEL_34;
        }

        sub_1C56EC248(v8, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
        sub_1C56EC248(v12, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
        v43 = &qword_1EC16EB18;
        v44 = &qword_1C586AF80;
LABEL_30:
        sub_1C5625230(v16, v43, v44);
        goto LABEL_43;
      }

      sub_1C56EC248(v12, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
    }

    v43 = &qword_1EC16FCD0;
    v44 = &qword_1C5875EE0;
    goto LABEL_30;
  }

  v37 = 0;
  if (v36 != 2 && ((v36 ^ v35) & 1) == 0)
  {
    goto LABEL_24;
  }

  return v37 & 1;
}