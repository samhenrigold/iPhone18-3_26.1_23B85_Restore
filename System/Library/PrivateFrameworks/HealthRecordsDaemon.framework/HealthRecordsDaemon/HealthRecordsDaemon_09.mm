uint64_t sub_251B4CCEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = xmmword_251C745D0;
  *(a2 + 32) = MEMORY[0x277D84F90];
  sub_251C703A4();
  v4 = *(a1 + 32);
  v5 = sub_251C70384();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_251B4CDD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47A960, type metadata accessor for PBBlob, &unk_251C7B408);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B4CE78(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A8C0, type metadata accessor for PBBlob, &unk_251C7B440);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B4CEE4(uint64_t a1, uint64_t a2)
{
  sub_251B5438C(&qword_27F47A8C0, type metadata accessor for PBBlob, &unk_251C7B440);

  return sub_251C705C4();
}

uint64_t sub_251B4CF64()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1CE8);
  __swift_project_value_buffer(v0, qword_27F4A1CE8);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "id";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "name";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "value";
  *(v12 + 8) = 5;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B4D18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_251C70444();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      sub_251C70534();
    }
  }

  return result;
}

uint64_t sub_251B4D21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_251C70674(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_251C70674(), !v4))
    {
      v10 = v3[5];
      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v3[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v11 || (result = sub_251C70674(), !v4))
      {
        type metadata accessor for PBBlobAttribute(0);
        return sub_251C70394();
      }
    }
  }

  return result;
}

uint64_t sub_251B4D310@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  return sub_251C703A4();
}

uint64_t sub_251B4D374(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47A970, type metadata accessor for PBBlobAttribute, &unk_251C7B2A0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B4D414(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A8A0, type metadata accessor for PBBlobAttribute, &unk_251C7B2D8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B4D480(uint64_t a1, uint64_t a2)
{
  sub_251B5438C(&qword_27F47A8A0, type metadata accessor for PBBlobAttribute, &unk_251C7B2D8);

  return sub_251C705C4();
}

uint64_t sub_251B4D520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PBBlobPushResult(0), sub_251B5438C(&qword_27F47A860, type metadata accessor for PBBlobPushResult, &unk_251C7B008), result = sub_251C70694(), !v4))
  {
    type metadata accessor for PBPushBlobsResponse(0);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B4D694(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47A978, type metadata accessor for PBPushBlobsResponse, &unk_251C7B138);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B4D734(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A880, type metadata accessor for PBPushBlobsResponse, &unk_251C7B170);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B4D7A0(uint64_t a1, uint64_t a2)
{
  sub_251B5438C(&qword_27F47A880, type metadata accessor for PBPushBlobsResponse, &unk_251C7B170);

  return sub_251C705C4();
}

uint64_t sub_251B4D834()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1D18);
  __swift_project_value_buffer(v0, qword_27F4A1D18);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C763E0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "id";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 3;
  *v11 = "message";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "result_code";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "expiration_time";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B4DA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
LABEL_4:
          sub_251C70534();
          goto LABEL_5;
        }

        if (result == 4)
        {
          sub_251B4DBA8(a1, v5, a2, a3, type metadata accessor for PBBlobPushResult);
        }
      }

      else
      {
        if (result == 1)
        {
          goto LABEL_4;
        }

        if (result == 2)
        {
          sub_251B59518();
          sub_251C70494();
        }
      }

LABEL_5:
      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B4DBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  sub_251C70384();
  sub_251B5438C(&qword_27F47A968, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  return sub_251C70564();
}

uint64_t sub_251B4DC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_251C70674(), !v4))
  {
    if (!v3[4] || (sub_251B59518(), result = sub_251C70604(), !v4))
    {
      v11 = v3[3];
      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v3[2] & 0xFFFFFFFFFFFFLL;
      }

      if (!v12 || (result = sub_251C70674(), !v4))
      {
        result = sub_251B4DDA8(v3, a1, a2, a3, type metadata accessor for PBBlobPushResult);
        if (!v4)
        {
          type metadata accessor for PBBlobPushResult(0);
          return sub_251C70394();
        }
      }
    }
  }

  return result;
}

uint64_t sub_251B4DDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v17[3] = a4;
  v17[0] = a2;
  v17[1] = a3;
  v7 = MEMORY[0x277D21570];
  sub_251B55C24(0, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  v11 = sub_251C70384();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a5(0);
  sub_251B59614(a1 + *(v15 + 32), v10, &qword_27F479130, v7);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_251B59694(v10, &qword_27F479130, MEMORY[0x277D21570]);
  }

  (*(v12 + 32))(v14, v10, v11);
  sub_251B5438C(&qword_27F47A968, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  sub_251C706A4();
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_251B4E060(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47A980, type metadata accessor for PBBlobPushResult, &unk_251C7AFD0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B4E100(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A860, type metadata accessor for PBBlobPushResult, &unk_251C7B008);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B4E16C(uint64_t a1, uint64_t a2)
{
  sub_251B5438C(&qword_27F47A860, type metadata accessor for PBBlobPushResult, &unk_251C7B008);

  return sub_251C705C4();
}

uint64_t sub_251B4E1E8()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1D30);
  __swift_project_value_buffer(v0, qword_27F4A1D30);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_251C75420;
  v5 = v21 + v4 + *(v2 + 56);
  *(v21 + v4) = 0;
  *v5 = "OK";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_251C706B4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v21 + v4 + v3 + *(v2 + 56);
  *(v21 + v4 + v3) = 1;
  *v9 = "INVALID_ID";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v21 + v4 + 2 * v3);
  v11 = v10 + *(v2 + 56);
  *v10 = 2;
  *v11 = "BLOB_SIZE_EXCEEDED";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v8();
  v12 = (v21 + v4 + 3 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "BLOB_SIZE_BELOW_MIN";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v21 + v4 + 4 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 5;
  *v15 = "SERVER_ERROR";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v21 + v4 + 5 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 6;
  *v17 = "INVALID_EXPIRATION_TIME";
  *(v17 + 1) = 23;
  v17[16] = 2;
  v8();
  v18 = (v21 + v4 + 6 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 7;
  *v19 = "INVALID_NODE";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  return sub_251C706C4();
}

uint64_t sub_251B4E51C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1D48);
  __swift_project_value_buffer(v0, qword_27F4A1D48);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "ids";
  *(v7 + 8) = 3;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "health_institute_id";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B4E704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_251C70444();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_251C70504();
    }

    else if (result == 2)
    {
      sub_251C70534();
    }
  }

  return result;
}

uint64_t sub_251B4E790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_251C70654(), !v4))
  {
    v6 = v3[2];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v3[1] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_251C70674(), !v4))
    {
      type metadata accessor for PBPullBlobsRequest(0);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251B4E848@<X0>(void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  a2[1] = 0;
  a2[2] = 0xE000000000000000;
  return sub_251C703A4();
}

uint64_t sub_251B4E8C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47A990, type metadata accessor for PBPullBlobsRequest, &unk_251C7AE40);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B4E968(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A840, type metadata accessor for PBPullBlobsRequest, &unk_251C7AE78);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B4E9D4(uint64_t a1, uint64_t a2)
{
  sub_251B5438C(&qword_27F47A840, type metadata accessor for PBPullBlobsRequest, &unk_251C7AE78);

  return sub_251C705C4();
}

uint64_t sub_251B4EA50(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_251A93C70(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v5 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v5 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  sub_251C703B4();
  sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251B4EB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PBBlobPullResult(0), sub_251B5438C(&qword_27F47A800, type metadata accessor for PBBlobPullResult, &unk_251C7ABA8), result = sub_251C70694(), !v4))
  {
    type metadata accessor for PBPullBlobsResponse(0);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B4ECAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47A998, type metadata accessor for PBPullBlobsResponse, &unk_251C7ACD8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B4ED4C(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A820, type metadata accessor for PBPullBlobsResponse, &unk_251C7AD10);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B4EDB8(uint64_t a1, uint64_t a2)
{
  sub_251B5438C(&qword_27F47A820, type metadata accessor for PBPullBlobsResponse, &unk_251C7AD10);

  return sub_251C705C4();
}

uint64_t sub_251B4EE4C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1D78);
  __swift_project_value_buffer(v0, qword_27F4A1D78);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C763E0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "id";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 3;
  *v11 = "message";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "result_code";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "blob";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B4F0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
LABEL_4:
          sub_251C70534();
          goto LABEL_5;
        }

        if (result == 4)
        {
          sub_251B4F1A4(a1, v5, a2, a3);
        }
      }

      else
      {
        if (result == 1)
        {
          goto LABEL_4;
        }

        if (result == 2)
        {
          sub_251B5956C();
          sub_251C70494();
        }
      }

LABEL_5:
      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B4F1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBBlobPullResult(0);
  type metadata accessor for PBBlob(0);
  sub_251B5438C(&qword_27F47A8C0, type metadata accessor for PBBlob, &unk_251C7B440);
  return sub_251C70564();
}

uint64_t sub_251B4F258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_251C70674(), !v4))
  {
    if (!v3[4] || (sub_251B5956C(), result = sub_251C70604(), !v4))
    {
      v11 = v3[3];
      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v3[2] & 0xFFFFFFFFFFFFLL;
      }

      if (!v12 || (result = sub_251C70674(), !v4))
      {
        result = sub_251B4F38C(v3, a1, a2, a3);
        if (!v4)
        {
          type metadata accessor for PBBlobPullResult(0);
          return sub_251C70394();
        }
      }
    }
  }

  return result;
}

uint64_t sub_251B4F38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B55C24(0, &qword_27F479148, type metadata accessor for PBBlob, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBBlob(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBBlobPullResult(0);
  sub_251B59614(a1 + *(v12 + 32), v7, &qword_27F479148, type metadata accessor for PBBlob);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251B59694(v7, &qword_27F479148, type metadata accessor for PBBlob);
  }

  sub_251B55C88(v7, v11, type metadata accessor for PBBlob);
  sub_251B5438C(&qword_27F47A8C0, type metadata accessor for PBBlob, &unk_251C7B440);
  sub_251C706A4();
  return sub_251B55CF0(v11, type metadata accessor for PBBlob);
}

uint64_t sub_251B4F5E4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0xE000000000000000;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  sub_251C703A4();
  v6 = *(a1 + 32);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3 + v6, 1, 1, v7);
}

uint64_t sub_251B4F6D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47A9A0, type metadata accessor for PBBlobPullResult, &unk_251C7AB70);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B4F778(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A800, type metadata accessor for PBBlobPullResult, &unk_251C7ABA8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B4F7E4(uint64_t a1, uint64_t a2)
{
  sub_251B5438C(&qword_27F47A800, type metadata accessor for PBBlobPullResult, &unk_251C7ABA8);

  return sub_251C705C4();
}

uint64_t sub_251B4F864()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1D90);
  __swift_project_value_buffer(v0, qword_27F4A1D90);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C763E0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "OK";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 4;
  *v11 = "ID_NOT_FOUND";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 5;
  *v13 = "SERVER_ERROR";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 7;
  *v15 = "INVALID_NODE";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B4FB04(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  v9 = v5;
  while (1)
  {
    result = sub_251C70444();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v9, a2, a3);
    }

    else if (result == 2)
    {
      sub_251B51D70(a1, v9, a2, a3, a5);
    }
  }

  return result;
}

uint64_t sub_251B4FBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBDeleteBlobsRequest(0);
  type metadata accessor for PBDeleteBlobs(0);
  sub_251B5438C(&qword_27F479A90, type metadata accessor for PBDeleteBlobs, &unk_251C7A8B0);
  return sub_251C70564();
}

uint64_t sub_251B4FC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    sub_251B52068(v5, a1, a2, a3, a5);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B4FCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B55C24(0, qword_2813E6938, type metadata accessor for PBDeleteBlobs, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBDeleteBlobs(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBDeleteBlobsRequest(0);
  sub_251B59614(a1 + *(v12 + 20), v7, qword_2813E6938, type metadata accessor for PBDeleteBlobs);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251B59694(v7, qword_2813E6938, type metadata accessor for PBDeleteBlobs);
  }

  sub_251B55C88(v7, v11, type metadata accessor for PBDeleteBlobs);
  sub_251B5438C(&qword_27F479A90, type metadata accessor for PBDeleteBlobs, &unk_251C7A8B0);
  sub_251C706A4();
  return sub_251B55CF0(v11, type metadata accessor for PBDeleteBlobs);
}

uint64_t sub_251B4FF3C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  sub_251C703A4();
  v6 = *(a1 + 20);
  v7 = a2(0);
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  v8 = *(a1 + 24);
  v9 = type metadata accessor for PBBlobAuth(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a3 + v8, 1, 1, v9);
}

uint64_t sub_251B500A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47A9B0, type metadata accessor for PBDeleteBlobsRequest, &unk_251C7A9E0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B50144(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A7E0, type metadata accessor for PBDeleteBlobsRequest, &unk_251C7AA18);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B501B0(uint64_t a1, uint64_t a2)
{
  sub_251B5438C(&qword_27F47A7E0, type metadata accessor for PBDeleteBlobsRequest, &unk_251C7AA18);

  return sub_251C705C4();
}

uint64_t sub_251B50250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PBDeleteBlob(0), sub_251B5438C(&qword_27F47A7A8, type metadata accessor for PBDeleteBlob, &unk_251C7A748), result = sub_251C70694(), !v4))
  {
    type metadata accessor for PBDeleteBlobs(0);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B503C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47A9C0, type metadata accessor for PBDeleteBlobs, &unk_251C7A878);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B50464(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F479A90, type metadata accessor for PBDeleteBlobs, &unk_251C7A8B0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B504D0(uint64_t a1, uint64_t a2)
{
  sub_251B5438C(&qword_27F479A90, type metadata accessor for PBDeleteBlobs, &unk_251C7A8B0);

  return sub_251C705C4();
}

uint64_t sub_251B50564()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1DD8);
  __swift_project_value_buffer(v0, qword_27F4A1DD8);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "id";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "deletion_commitment";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "revocation_authorization";
  *(v12 + 8) = 24;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B50798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_251C70444();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_251B50848(a1, v5, a2, a3);
        break;
      case 2:
        sub_251C704D4();
        break;
      case 1:
        sub_251C70534();
        break;
    }
  }

  return result;
}

uint64_t sub_251B50848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBDeleteBlob(0);
  type metadata accessor for PBRevocationAuthorization(0);
  sub_251B5438C(&qword_27F479858, type metadata accessor for PBRevocationAuthorization, &unk_251C764E0);
  return sub_251C70564();
}

uint64_t sub_251B508FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_251C70674(), !v4))
  {
    v11 = v3[2];
    v12 = v3[3];
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_14;
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
LABEL_14:
          result = sub_251B50A00(v3, a1, a2, a3);
          if (!v4)
          {
            type metadata accessor for PBDeleteBlob(0);
            return sub_251C70394();
          }

          return result;
        }

LABEL_13:
        result = sub_251C70624();
        if (v4)
        {
          return result;
        }

        goto LABEL_14;
      }

      v14 = v11;
      v15 = v11 >> 32;
    }

    if (v14 == v15)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  return result;
}

uint64_t sub_251B50A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B55C24(0, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBRevocationAuthorization(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBDeleteBlob(0);
  sub_251B59614(a1 + *(v12 + 28), v7, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251B59694(v7, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
  }

  sub_251B55C88(v7, v11, type metadata accessor for PBRevocationAuthorization);
  sub_251B5438C(&qword_27F479858, type metadata accessor for PBRevocationAuthorization, &unk_251C764E0);
  sub_251C706A4();
  return sub_251B55CF0(v11, type metadata accessor for PBRevocationAuthorization);
}

uint64_t sub_251B50C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = xmmword_251C745D0;
  sub_251C703A4();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for PBRevocationAuthorization(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_251B50D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47A9C8, type metadata accessor for PBDeleteBlob, &unk_251C7A710);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B50DC0(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A7A8, type metadata accessor for PBDeleteBlob, &unk_251C7A748);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B50E2C(uint64_t a1, uint64_t a2)
{
  sub_251B5438C(&qword_27F47A7A8, type metadata accessor for PBDeleteBlob, &unk_251C7A748);

  return sub_251C705C4();
}

uint64_t sub_251B50ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PBBlobDeleteResult(0), sub_251B5438C(&qword_27F47A768, type metadata accessor for PBBlobDeleteResult, &unk_251C7A478), result = sub_251C70694(), !v4))
  {
    type metadata accessor for PBDeleteBlobsResponse(0);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B51040(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47A9D0, type metadata accessor for PBDeleteBlobsResponse, &unk_251C7A5A8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B510E0(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A788, type metadata accessor for PBDeleteBlobsResponse, &unk_251C7A5E0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B5114C(uint64_t a1, uint64_t a2)
{
  sub_251B5438C(&qword_27F47A788, type metadata accessor for PBDeleteBlobsResponse, &unk_251C7A5E0);

  return sub_251C705C4();
}

uint64_t sub_251B511E0()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1E08);
  __swift_project_value_buffer(v0, qword_27F4A1E08);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "id";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 3;
  *v11 = "message";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 2;
  *v12 = "result_code";
  *(v12 + 8) = 11;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B51410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C70444();
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
          sub_251B595C0();
          sub_251C70494();
          break;
        case 1:
LABEL_10:
          sub_251C70534();
          break;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B514DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_251C70674(), !v4))
  {
    if (!v3[4] || (sub_251B595C0(), result = sub_251C70604(), !v4))
    {
      v8 = v3[3];
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v3[2] & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = sub_251C70674(), !v4))
      {
        type metadata accessor for PBBlobDeleteResult(0);
        return sub_251C70394();
      }
    }
  }

  return result;
}

uint64_t sub_251B515F8@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  return sub_251C703A4();
}

uint64_t sub_251B5167C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47A9D8, type metadata accessor for PBBlobDeleteResult, &unk_251C7A440);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B5171C(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A768, type metadata accessor for PBBlobDeleteResult, &unk_251C7A478);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B51788(uint64_t a1, uint64_t a2)
{
  sub_251B5438C(&qword_27F47A768, type metadata accessor for PBBlobDeleteResult, &unk_251C7A478);

  return sub_251C705C4();
}

uint64_t sub_251B51808()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1E20);
  __swift_project_value_buffer(v0, qword_27F4A1E20);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C747F0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "OK";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "INVALID_BLOB";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "UNAUTHORIZED_TO_DELETE";
  *(v13 + 1) = 22;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "ID_NOT_FOUND";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v10();
  v16 = v6 + 4 * v3 + *(v2 + 56);
  *(v6 + 4 * v3) = 5;
  *v16 = "SERVER_ERROR";
  *(v16 + 8) = 12;
  *(v16 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B51AE4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_251C706D4();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 72);
  v11 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_251C75800;
  v13 = (v12 + v11);
  v14 = v12 + v11 + *(v9 + 56);
  *v13 = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x277D21888];
  v16 = sub_251C706B4();
  v17 = *(*(v16 - 8) + 104);
  (v17)(v14, v15, v16);
  v18 = v13 + v10 + *(v9 + 56);
  *(v13 + v10) = 2;
  *v18 = "blob_auth";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v17();
  return sub_251C706C4();
}

uint64_t sub_251B51CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBTouchBlobsRequest(0);
  type metadata accessor for PBTouchBlobs(0);
  sub_251B5438C(&qword_27F47A728, type metadata accessor for PBTouchBlobs, &unk_251C7A180);
  return sub_251C70564();
}

uint64_t sub_251B51D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for PBBlobAuth(0);
  sub_251B5438C(&qword_27F47A8F8, type metadata accessor for PBBlobAuth, &unk_251C7B710);
  return sub_251C70564();
}

uint64_t sub_251B51E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B55C24(0, &qword_27F47A9F0, type metadata accessor for PBTouchBlobs, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBTouchBlobs(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBTouchBlobsRequest(0);
  sub_251B59614(a1 + *(v12 + 20), v7, &qword_27F47A9F0, type metadata accessor for PBTouchBlobs);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251B59694(v7, &qword_27F47A9F0, type metadata accessor for PBTouchBlobs);
  }

  sub_251B55C88(v7, v11, type metadata accessor for PBTouchBlobs);
  sub_251B5438C(&qword_27F47A728, type metadata accessor for PBTouchBlobs, &unk_251C7A180);
  sub_251C706A4();
  return sub_251B55CF0(v11, type metadata accessor for PBTouchBlobs);
}

uint64_t sub_251B52068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v16[3] = a4;
  v16[0] = a2;
  v16[1] = a3;
  sub_251B55C24(0, qword_2813E7028, type metadata accessor for PBBlobAuth, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - v8;
  v10 = type metadata accessor for PBBlobAuth(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a5(0);
  sub_251B59614(a1 + *(v14 + 24), v9, qword_2813E7028, type metadata accessor for PBBlobAuth);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_251B59694(v9, qword_2813E7028, type metadata accessor for PBBlobAuth);
  }

  sub_251B55C88(v9, v13, type metadata accessor for PBBlobAuth);
  sub_251B5438C(&qword_27F47A8F8, type metadata accessor for PBBlobAuth, &unk_251C7B710);
  sub_251C706A4();
  return sub_251B55CF0(v13, type metadata accessor for PBBlobAuth);
}

uint64_t sub_251B52360(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47A9E8, type metadata accessor for PBTouchBlobsRequest, &unk_251C7A2B0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B52400(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A748, type metadata accessor for PBTouchBlobsRequest, &unk_251C7A2E8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B5246C(uint64_t a1, uint64_t a2)
{
  sub_251B5438C(&qword_27F47A748, type metadata accessor for PBTouchBlobsRequest, &unk_251C7A2E8);

  return sub_251C705C4();
}

uint64_t sub_251B5250C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PBTouchBlob(0), sub_251B5438C(&qword_27F47A708, type metadata accessor for PBTouchBlob, "yZZ0"), result = sub_251C70694(), !v4))
  {
    type metadata accessor for PBTouchBlobs(0);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B52680(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47AA00, type metadata accessor for PBTouchBlobs, &unk_251C7A148);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B52720(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A728, type metadata accessor for PBTouchBlobs, &unk_251C7A180);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B5278C(uint64_t a1, uint64_t a2)
{
  sub_251B5438C(&qword_27F47A728, type metadata accessor for PBTouchBlobs, &unk_251C7A180);

  return sub_251C705C4();
}

uint64_t sub_251B52820()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1E68);
  __swift_project_value_buffer(v0, qword_27F4A1E68);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "id";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "expiration_time";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B52A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_251C70444();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_251C70534();
    }

    else if (result == 2)
    {
      sub_251B52A94(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_251B52A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBTouchBlob(0);
  sub_251C70384();
  sub_251B5438C(&qword_27F47A968, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  return sub_251C70564();
}

uint64_t sub_251B52B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_251C70674(), !v4))
  {
    result = sub_251B52BF4(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for PBTouchBlob(0);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251B52BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = MEMORY[0x277D21570];
  sub_251B55C24(0, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  v9 = sub_251C70384();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBTouchBlob(0);
  sub_251B59614(a1 + *(v13 + 24), v8, &qword_27F479130, v5);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251B59694(v8, &qword_27F479130, MEMORY[0x277D21570]);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_251B5438C(&qword_27F47A968, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  sub_251C706A4();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_251B52E40@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  sub_251C703A4();
  v4 = *(a1 + 24);
  v5 = sub_251C70384();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_251B52F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47AA08, type metadata accessor for PBTouchBlob, &unk_251C79FE0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B52FB4(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A708, type metadata accessor for PBTouchBlob, "yZZ0");

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B53020(uint64_t a1, uint64_t a2)
{
  sub_251B5438C(&qword_27F47A708, type metadata accessor for PBTouchBlob, "yZZ0");

  return sub_251C705C4();
}

uint64_t sub_251B530C0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = sub_251C706D4();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v11 = v10 - 8;
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_251C74800;
  v14 = v13 + v12 + *(v11 + 56);
  *(v13 + v12) = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *a5;
  v16 = sub_251C706B4();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  return sub_251C706C4();
}

uint64_t sub_251B53248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  while (1)
  {
    result = sub_251C70444();
    if (v7 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_251B5438C(a5, a6, a7);
      sub_251C70554();
    }
  }

  return result;
}

uint64_t sub_251B53324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PBBlobTouchResult(0), sub_251B5438C(&qword_27F47A6C8, type metadata accessor for PBBlobTouchResult, &unk_251C79D48), result = sub_251C70694(), !v4))
  {
    type metadata accessor for PBTouchBlobsResponse(0);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B53498(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47AA10, type metadata accessor for PBTouchBlobsResponse, &unk_251C79E78);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B53538(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A6E8, type metadata accessor for PBTouchBlobsResponse, &unk_251C79EB0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B535A4(uint64_t a1, uint64_t a2)
{
  sub_251B5438C(&qword_27F47A6E8, type metadata accessor for PBTouchBlobsResponse, &unk_251C79EB0);

  return sub_251C705C4();
}

uint64_t sub_251B53638(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  sub_251C703B4();
  sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251B536E4()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1E98);
  __swift_project_value_buffer(v0, qword_27F4A1E98);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "id";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "result_code";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "expiration_time";
  *(v12 + 8) = 15;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B53918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_251B539F8(a1, v5, a2, a3);
          break;
        case 2:
          sub_251B5977C();
          sub_251C70494();
          break;
        case 1:
          sub_251C70534();
          break;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B539F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBBlobTouchResult(0);
  sub_251C70384();
  sub_251B5438C(&qword_27F47A968, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  return sub_251C70564();
}

uint64_t sub_251B53AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_251C70674(), !v4))
  {
    if (!v3[2] || (sub_251B5977C(), result = sub_251C70604(), !v4))
    {
      result = sub_251B53BA8(v3, a1, a2, a3);
      if (!v4)
      {
        type metadata accessor for PBBlobTouchResult(0);
        return sub_251C70394();
      }
    }
  }

  return result;
}

uint64_t sub_251B53BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = MEMORY[0x277D21570];
  sub_251B55C24(0, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  v9 = sub_251C70384();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBBlobTouchResult(0);
  sub_251B59614(a1 + *(v13 + 28), v8, &qword_27F479130, v5);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251B59694(v8, &qword_27F479130, MEMORY[0x277D21570]);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_251B5438C(&qword_27F47A968, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  sub_251C706A4();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_251B53DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  sub_251C703A4();
  v4 = *(a1 + 28);
  v5 = sub_251C70384();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_251B53ED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B5438C(&qword_27F47AA18, type metadata accessor for PBBlobTouchResult, &unk_251C79D10);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B53F74(uint64_t a1)
{
  v2 = sub_251B5438C(&qword_27F47A6C8, type metadata accessor for PBBlobTouchResult, &unk_251C79D48);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B53FE0(uint64_t a1, uint64_t a2)
{
  sub_251B5438C(&qword_27F47A6C8, type metadata accessor for PBBlobTouchResult, &unk_251C79D48);

  return sub_251C705C4();
}

uint64_t sub_251B54060()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1EB0);
  __swift_project_value_buffer(v0, qword_27F4A1EB0);
  sub_251B55C24(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C763E0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "OK";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "ID_NOT_FOUND";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "SERVER_ERROR";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "INVALID_EXPIRATION_TIME";
  *(v15 + 1) = 23;
  v15[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B5438C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_251B55C24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251B55C88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251B55CF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251B55D50(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v3 = type metadata accessor for PBBlobAuth(0);
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v46 = (&v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x277D83D88];
  sub_251B55C24(0, qword_2813E7028, type metadata accessor for PBBlobAuth, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v47 = (&v45 - v7);
  sub_251B59704(0, &qword_27F47A940, qword_2813E7028, type metadata accessor for PBBlobAuth);
  v49 = v8;
  MEMORY[0x28223BE20](v8);
  v52 = &v45 - v9;
  v10 = type metadata accessor for PBDeleteBlobs(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251B55C24(0, qword_2813E6938, type metadata accessor for PBDeleteBlobs, v5);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v45 - v15);
  sub_251B59704(0, &qword_27F47A9B8, qword_2813E6938, type metadata accessor for PBDeleteBlobs);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v45 - v19;
  v48 = type metadata accessor for PBDeleteBlobsRequest(0);
  v21 = *(v48 + 20);
  v22 = *(v18 + 56);
  v53 = a1;
  sub_251B59614(a1 + v21, v20, qword_2813E6938, type metadata accessor for PBDeleteBlobs);
  v23 = v54 + v21;
  v24 = v54;
  sub_251B59614(v23, &v20[v22], qword_2813E6938, type metadata accessor for PBDeleteBlobs);
  v25 = *(v11 + 48);
  if (v25(v20, 1, v10) == 1)
  {
    if (v25(&v20[v22], 1, v10) == 1)
    {
      sub_251B59694(v20, qword_2813E6938, type metadata accessor for PBDeleteBlobs);
      goto LABEL_4;
    }

LABEL_10:
    v32 = &qword_27F47A9B8;
    v33 = qword_2813E6938;
    v34 = type metadata accessor for PBDeleteBlobs;
    v35 = v20;
LABEL_17:
    sub_251B57694(v35, v32, v33, v34);
    goto LABEL_28;
  }

  sub_251B59614(v20, v16, qword_2813E6938, type metadata accessor for PBDeleteBlobs);
  if (v25(&v20[v22], 1, v10) == 1)
  {
    sub_251B55CF0(v16, type metadata accessor for PBDeleteBlobs);
    goto LABEL_10;
  }

  sub_251B55C88(&v20[v22], v13, type metadata accessor for PBDeleteBlobs);
  if ((sub_251A960BC(*v16, *v13) & 1) == 0)
  {
    sub_251B55CF0(v13, type metadata accessor for PBDeleteBlobs);
    sub_251B55CF0(v16, type metadata accessor for PBDeleteBlobs);
    v38 = qword_2813E6938;
    v39 = type metadata accessor for PBDeleteBlobs;
    v40 = v20;
    goto LABEL_27;
  }

  sub_251C703B4();
  sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v36 = sub_251C70ED4();
  sub_251B55CF0(v13, type metadata accessor for PBDeleteBlobs);
  sub_251B55CF0(v16, type metadata accessor for PBDeleteBlobs);
  sub_251B59694(v20, qword_2813E6938, type metadata accessor for PBDeleteBlobs);
  if ((v36 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_4:
  v26 = *(v48 + 24);
  v27 = *(v49 + 48);
  v28 = v52;
  sub_251B59614(v53 + v26, v52, qword_2813E7028, type metadata accessor for PBBlobAuth);
  sub_251B59614(v24 + v26, v28 + v27, qword_2813E7028, type metadata accessor for PBBlobAuth);
  v29 = v51;
  v30 = *(v50 + 48);
  if (v30(v28, 1, v51) != 1)
  {
    v37 = v47;
    sub_251B59614(v28, v47, qword_2813E7028, type metadata accessor for PBBlobAuth);
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_251B55CF0(v37, type metadata accessor for PBBlobAuth);
      goto LABEL_16;
    }

    v41 = v28 + v27;
    v42 = v46;
    sub_251B55C88(v41, v46, type metadata accessor for PBBlobAuth);
    if (sub_251A9C778(*v37, *v42) & 1) != 0 && sub_251A9D1F0(v37[1], v37[2], v42[1], v42[2]) && (v37[3] == v42[3] && v37[4] == v42[4] || (sub_251C719D4()))
    {
      sub_251C703B4();
      sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v43 = sub_251C70ED4();
      sub_251B55CF0(v42, type metadata accessor for PBBlobAuth);
      sub_251B55CF0(v37, type metadata accessor for PBBlobAuth);
      sub_251B59694(v28, qword_2813E7028, type metadata accessor for PBBlobAuth);
      if (v43)
      {
        goto LABEL_7;
      }

LABEL_28:
      v31 = 0;
      return v31 & 1;
    }

    sub_251B55CF0(v42, type metadata accessor for PBBlobAuth);
    sub_251B55CF0(v37, type metadata accessor for PBBlobAuth);
    v38 = qword_2813E7028;
    v39 = type metadata accessor for PBBlobAuth;
    v40 = v28;
LABEL_27:
    sub_251B59694(v40, v38, v39);
    goto LABEL_28;
  }

  if (v30(v28 + v27, 1, v29) != 1)
  {
LABEL_16:
    v32 = &qword_27F47A940;
    v33 = qword_2813E7028;
    v34 = type metadata accessor for PBBlobAuth;
    v35 = v28;
    goto LABEL_17;
  }

  sub_251B59694(v28, qword_2813E7028, type metadata accessor for PBBlobAuth);
LABEL_7:
  sub_251C703B4();
  sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v31 = sub_251C70ED4();
  return v31 & 1;
}

uint64_t sub_251B565BC(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v3 = type metadata accessor for PBBlobAuth(0);
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v46 = (&v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x277D83D88];
  sub_251B55C24(0, qword_2813E7028, type metadata accessor for PBBlobAuth, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v47 = (&v45 - v7);
  sub_251B59704(0, &qword_27F47A940, qword_2813E7028, type metadata accessor for PBBlobAuth);
  v49 = v8;
  MEMORY[0x28223BE20](v8);
  v52 = &v45 - v9;
  v10 = type metadata accessor for PBTouchBlobs(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251B55C24(0, &qword_27F47A9F0, type metadata accessor for PBTouchBlobs, v5);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v45 - v15);
  sub_251B59704(0, &qword_27F47A9F8, &qword_27F47A9F0, type metadata accessor for PBTouchBlobs);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v45 - v19;
  v48 = type metadata accessor for PBTouchBlobsRequest(0);
  v21 = *(v48 + 20);
  v22 = *(v18 + 56);
  v53 = a1;
  sub_251B59614(a1 + v21, v20, &qword_27F47A9F0, type metadata accessor for PBTouchBlobs);
  v23 = v54 + v21;
  v24 = v54;
  sub_251B59614(v23, &v20[v22], &qword_27F47A9F0, type metadata accessor for PBTouchBlobs);
  v25 = *(v11 + 48);
  if (v25(v20, 1, v10) == 1)
  {
    if (v25(&v20[v22], 1, v10) == 1)
    {
      sub_251B59694(v20, &qword_27F47A9F0, type metadata accessor for PBTouchBlobs);
      goto LABEL_4;
    }

LABEL_10:
    v32 = &qword_27F47A9F8;
    v33 = &qword_27F47A9F0;
    v34 = type metadata accessor for PBTouchBlobs;
    v35 = v20;
LABEL_17:
    sub_251B57694(v35, v32, v33, v34);
    goto LABEL_28;
  }

  sub_251B59614(v20, v16, &qword_27F47A9F0, type metadata accessor for PBTouchBlobs);
  if (v25(&v20[v22], 1, v10) == 1)
  {
    sub_251B55CF0(v16, type metadata accessor for PBTouchBlobs);
    goto LABEL_10;
  }

  sub_251B55C88(&v20[v22], v13, type metadata accessor for PBTouchBlobs);
  if ((sub_251A96DD4(*v16, *v13) & 1) == 0)
  {
    sub_251B55CF0(v13, type metadata accessor for PBTouchBlobs);
    sub_251B55CF0(v16, type metadata accessor for PBTouchBlobs);
    v38 = &qword_27F47A9F0;
    v39 = type metadata accessor for PBTouchBlobs;
    v40 = v20;
    goto LABEL_27;
  }

  sub_251C703B4();
  sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v36 = sub_251C70ED4();
  sub_251B55CF0(v13, type metadata accessor for PBTouchBlobs);
  sub_251B55CF0(v16, type metadata accessor for PBTouchBlobs);
  sub_251B59694(v20, &qword_27F47A9F0, type metadata accessor for PBTouchBlobs);
  if ((v36 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_4:
  v26 = *(v48 + 24);
  v27 = *(v49 + 48);
  v28 = v52;
  sub_251B59614(v53 + v26, v52, qword_2813E7028, type metadata accessor for PBBlobAuth);
  sub_251B59614(v24 + v26, v28 + v27, qword_2813E7028, type metadata accessor for PBBlobAuth);
  v29 = v51;
  v30 = *(v50 + 48);
  if (v30(v28, 1, v51) != 1)
  {
    v37 = v47;
    sub_251B59614(v28, v47, qword_2813E7028, type metadata accessor for PBBlobAuth);
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_251B55CF0(v37, type metadata accessor for PBBlobAuth);
      goto LABEL_16;
    }

    v41 = v28 + v27;
    v42 = v46;
    sub_251B55C88(v41, v46, type metadata accessor for PBBlobAuth);
    if (sub_251A9C778(*v37, *v42) & 1) != 0 && sub_251A9D1F0(v37[1], v37[2], v42[1], v42[2]) && (v37[3] == v42[3] && v37[4] == v42[4] || (sub_251C719D4()))
    {
      sub_251C703B4();
      sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v43 = sub_251C70ED4();
      sub_251B55CF0(v42, type metadata accessor for PBBlobAuth);
      sub_251B55CF0(v37, type metadata accessor for PBBlobAuth);
      sub_251B59694(v28, qword_2813E7028, type metadata accessor for PBBlobAuth);
      if (v43)
      {
        goto LABEL_7;
      }

LABEL_28:
      v31 = 0;
      return v31 & 1;
    }

    sub_251B55CF0(v42, type metadata accessor for PBBlobAuth);
    sub_251B55CF0(v37, type metadata accessor for PBBlobAuth);
    v38 = qword_2813E7028;
    v39 = type metadata accessor for PBBlobAuth;
    v40 = v28;
LABEL_27:
    sub_251B59694(v40, v38, v39);
    goto LABEL_28;
  }

  if (v30(v28 + v27, 1, v29) != 1)
  {
LABEL_16:
    v32 = &qword_27F47A940;
    v33 = qword_2813E7028;
    v34 = type metadata accessor for PBBlobAuth;
    v35 = v28;
    goto LABEL_17;
  }

  sub_251B59694(v28, qword_2813E7028, type metadata accessor for PBBlobAuth);
LABEL_7:
  sub_251C703B4();
  sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v31 = sub_251C70ED4();
  return v31 & 1;
}

uint64_t sub_251B56E28(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v3 = type metadata accessor for PBBlobAuth(0);
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v46 = (&v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x277D83D88];
  sub_251B55C24(0, qword_2813E7028, type metadata accessor for PBBlobAuth, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v47 = (&v45 - v7);
  sub_251B59704(0, &qword_27F47A940, qword_2813E7028, type metadata accessor for PBBlobAuth);
  v49 = v8;
  MEMORY[0x28223BE20](v8);
  v52 = &v45 - v9;
  v10 = type metadata accessor for PBBlobs(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251B55C24(0, &qword_27F47A938, type metadata accessor for PBBlobs, v5);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v45 - v15);
  sub_251B59704(0, &qword_27F47A948, &qword_27F47A938, type metadata accessor for PBBlobs);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v45 - v19;
  v48 = type metadata accessor for PBPushBlobsRequest(0);
  v21 = *(v48 + 20);
  v22 = *(v18 + 56);
  v53 = a1;
  sub_251B59614(a1 + v21, v20, &qword_27F47A938, type metadata accessor for PBBlobs);
  v23 = v54 + v21;
  v24 = v54;
  sub_251B59614(v23, &v20[v22], &qword_27F47A938, type metadata accessor for PBBlobs);
  v25 = *(v11 + 48);
  if (v25(v20, 1, v10) == 1)
  {
    if (v25(&v20[v22], 1, v10) == 1)
    {
      sub_251B59694(v20, &qword_27F47A938, type metadata accessor for PBBlobs);
      goto LABEL_4;
    }

LABEL_10:
    v32 = &qword_27F47A948;
    v33 = &qword_27F47A938;
    v34 = type metadata accessor for PBBlobs;
    v35 = v20;
LABEL_17:
    sub_251B57694(v35, v32, v33, v34);
    goto LABEL_28;
  }

  sub_251B59614(v20, v16, &qword_27F47A938, type metadata accessor for PBBlobs);
  if (v25(&v20[v22], 1, v10) == 1)
  {
    sub_251B55CF0(v16, type metadata accessor for PBBlobs);
    goto LABEL_10;
  }

  sub_251B55C88(&v20[v22], v13, type metadata accessor for PBBlobs);
  if ((sub_251A987D8(*v16, *v13) & 1) == 0)
  {
    sub_251B55CF0(v13, type metadata accessor for PBBlobs);
    sub_251B55CF0(v16, type metadata accessor for PBBlobs);
    v38 = &qword_27F47A938;
    v39 = type metadata accessor for PBBlobs;
    v40 = v20;
    goto LABEL_27;
  }

  sub_251C703B4();
  sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v36 = sub_251C70ED4();
  sub_251B55CF0(v13, type metadata accessor for PBBlobs);
  sub_251B55CF0(v16, type metadata accessor for PBBlobs);
  sub_251B59694(v20, &qword_27F47A938, type metadata accessor for PBBlobs);
  if ((v36 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_4:
  v26 = *(v48 + 24);
  v27 = *(v49 + 48);
  v28 = v52;
  sub_251B59614(v53 + v26, v52, qword_2813E7028, type metadata accessor for PBBlobAuth);
  sub_251B59614(v24 + v26, v28 + v27, qword_2813E7028, type metadata accessor for PBBlobAuth);
  v29 = v51;
  v30 = *(v50 + 48);
  if (v30(v28, 1, v51) != 1)
  {
    v37 = v47;
    sub_251B59614(v28, v47, qword_2813E7028, type metadata accessor for PBBlobAuth);
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_251B55CF0(v37, type metadata accessor for PBBlobAuth);
      goto LABEL_16;
    }

    v41 = v28 + v27;
    v42 = v46;
    sub_251B55C88(v41, v46, type metadata accessor for PBBlobAuth);
    if (sub_251A9C778(*v37, *v42) & 1) != 0 && sub_251A9D1F0(v37[1], v37[2], v42[1], v42[2]) && (v37[3] == v42[3] && v37[4] == v42[4] || (sub_251C719D4()))
    {
      sub_251C703B4();
      sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v43 = sub_251C70ED4();
      sub_251B55CF0(v42, type metadata accessor for PBBlobAuth);
      sub_251B55CF0(v37, type metadata accessor for PBBlobAuth);
      sub_251B59694(v28, qword_2813E7028, type metadata accessor for PBBlobAuth);
      if (v43)
      {
        goto LABEL_7;
      }

LABEL_28:
      v31 = 0;
      return v31 & 1;
    }

    sub_251B55CF0(v42, type metadata accessor for PBBlobAuth);
    sub_251B55CF0(v37, type metadata accessor for PBBlobAuth);
    v38 = qword_2813E7028;
    v39 = type metadata accessor for PBBlobAuth;
    v40 = v28;
LABEL_27:
    sub_251B59694(v40, v38, v39);
    goto LABEL_28;
  }

  if (v30(v28 + v27, 1, v29) != 1)
  {
LABEL_16:
    v32 = &qword_27F47A940;
    v33 = qword_2813E7028;
    v34 = type metadata accessor for PBBlobAuth;
    v35 = v28;
    goto LABEL_17;
  }

  sub_251B59694(v28, qword_2813E7028, type metadata accessor for PBBlobAuth);
LABEL_7:
  sub_251C703B4();
  sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v31 = sub_251C70ED4();
  return v31 & 1;
}

uint64_t sub_251B57694(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251B59704(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_251B576F0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4];
  if (*(a1 + 40) == 1)
  {
    v6 = qword_251C7BF28[v6];
  }

  v7 = *(a2 + 32);
  if (*(a2 + 40))
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        if (v6 != 3)
        {
          return 0;
        }
      }

      else if (v7 == 3)
      {
        if (v6 != 4)
        {
          return 0;
        }
      }

      else if (v6 != 5)
      {
        return 0;
      }

LABEL_20:
      type metadata accessor for PBBlobDeleteResult(0);
      sub_251C703B4();
      sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return sub_251C70ED4() & 1;
    }

    if (v7)
    {
      if (v6 != 2)
      {
        return 0;
      }

      goto LABEL_20;
    }

    if (!v6)
    {
      goto LABEL_20;
    }
  }

  else if (v6 == v7)
  {
    goto LABEL_20;
  }

  return 0;
}

uint64_t sub_251B57850(void *a1, uint64_t a2)
{
  v4 = sub_251C70384();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D21570];
  sub_251B55C24(0, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  sub_251B59704(0, &qword_27F479138, &qword_27F479130, v8);
  v13 = v12;
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - v14;
  if (*a1 != *a2 && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_24;
  }

  v16 = a1[2];
  v17 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        if (v16 != 2)
        {
          goto LABEL_24;
        }
      }

      else if (v16 != 3)
      {
        goto LABEL_24;
      }
    }

    else if (v17)
    {
      if (v16 != 1)
      {
        goto LABEL_24;
      }
    }

    else if (v16)
    {
      goto LABEL_24;
    }
  }

  else if (v16 != v17)
  {
    goto LABEL_24;
  }

  v31 = v7;
  v18 = v5;
  v32 = type metadata accessor for PBBlobTouchResult(0);
  v19 = *(v32 + 28);
  v20 = *(v13 + 48);
  v21 = MEMORY[0x277D21570];
  sub_251B59614(a1 + v19, v15, &qword_27F479130, MEMORY[0x277D21570]);
  v22 = a2 + v19;
  v23 = v18;
  sub_251B59614(v22, &v15[v20], &qword_27F479130, v21);
  v24 = *(v18 + 48);
  if (v24(v15, 1, v4) != 1)
  {
    sub_251B59614(v15, v11, &qword_27F479130, MEMORY[0x277D21570]);
    if (v24(&v15[v20], 1, v4) == 1)
    {
      (*(v18 + 8))(v11, v4);
      goto LABEL_17;
    }

    v25 = *(v18 + 32);
    v26 = v31;
    v25(v31, &v15[v20], v4);
    sub_251B5438C(&qword_27F479140, MEMORY[0x277D21570], MEMORY[0x277D21578]);
    v27 = sub_251C70ED4();
    v28 = *(v23 + 8);
    v28(v26, v4);
    v28(v11, v4);
    sub_251B59694(v15, &qword_27F479130, MEMORY[0x277D21570]);
    if (v27)
    {
      goto LABEL_23;
    }

LABEL_24:
    v29 = 0;
    return v29 & 1;
  }

  if (v24(&v15[v20], 1, v4) != 1)
  {
LABEL_17:
    sub_251B57694(v15, &qword_27F479138, &qword_27F479130, MEMORY[0x277D21570]);
    goto LABEL_24;
  }

  sub_251B59694(v15, &qword_27F479130, MEMORY[0x277D21570]);
LABEL_23:
  sub_251C703B4();
  sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v29 = sub_251C70ED4();
  return v29 & 1;
}

uint64_t sub_251B57CF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_251C70384();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D21570];
  sub_251B55C24(0, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28 - v10;
  sub_251B59704(0, &qword_27F479138, &qword_27F479130, v8);
  v13 = v12;
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  if (*a1 != *a2 && (sub_251C719D4() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_21;
  }

  v16 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v16 = qword_251C7BF50[v16];
  }

  v17 = *(a2 + 32);
  if (*(a2 + 40))
  {
    if (v17 <= 2)
    {
      if (v17)
      {
        if (v17 == 1)
        {
          if (v16 != 1)
          {
            goto LABEL_21;
          }
        }

        else if (v16 != 2)
        {
          goto LABEL_21;
        }
      }

      else if (v16)
      {
        goto LABEL_21;
      }
    }

    else if (v17 > 4)
    {
      if (v17 == 5)
      {
        if (v16 != 6)
        {
          goto LABEL_21;
        }
      }

      else if (v16 != 7)
      {
        goto LABEL_21;
      }
    }

    else if (v17 == 3)
    {
      if (v16 != 3)
      {
        goto LABEL_21;
      }
    }

    else if (v16 != 5)
    {
      goto LABEL_21;
    }
  }

  else if (v16 != v17)
  {
    goto LABEL_21;
  }

  v28 = v7;
  v29 = type metadata accessor for PBBlobPushResult(0);
  v18 = *(v29 + 32);
  v19 = *(v13 + 48);
  v20 = MEMORY[0x277D21570];
  sub_251B59614(a1 + v18, v15, &qword_27F479130, MEMORY[0x277D21570]);
  sub_251B59614(a2 + v18, &v15[v19], &qword_27F479130, v20);
  v21 = *(v5 + 48);
  if (v21(v15, 1, v4) == 1)
  {
    if (v21(&v15[v19], 1, v4) == 1)
    {
      sub_251B59694(v15, &qword_27F479130, MEMORY[0x277D21570]);
LABEL_31:
      sub_251C703B4();
      sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v22 = sub_251C70ED4();
      return v22 & 1;
    }

    goto LABEL_20;
  }

  sub_251B59614(v15, v11, &qword_27F479130, MEMORY[0x277D21570]);
  if (v21(&v15[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v11, v4);
LABEL_20:
    sub_251B57694(v15, &qword_27F479138, &qword_27F479130, MEMORY[0x277D21570]);
    goto LABEL_21;
  }

  v24 = &v15[v19];
  v25 = v28;
  (*(v5 + 32))(v28, v24, v4);
  sub_251B5438C(&qword_27F479140, MEMORY[0x277D21570], MEMORY[0x277D21578]);
  v26 = sub_251C70ED4();
  v27 = *(v5 + 8);
  v27(v25, v4);
  v27(v11, v4);
  sub_251B59694(v15, &qword_27F479130, MEMORY[0x277D21570]);
  if (v26)
  {
    goto LABEL_31;
  }

LABEL_21:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_251B58204(void *a1, void *a2)
{
  v4 = sub_251C70384();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D21570];
  sub_251B55C24(0, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - v10;
  sub_251B59704(0, &qword_27F479138, &qword_27F479130, v8);
  v13 = v12;
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - v14;
  if (*a1 != *a2 && (sub_251C719D4() & 1) == 0 || !sub_251A9D1F0(a1[2], a1[3], a2[2], a2[3]) || (sub_251A9ACCC(a1[4], a2[4]) & 1) == 0)
  {
    goto LABEL_11;
  }

  v29 = v7;
  v16 = v5;
  v30 = type metadata accessor for PBBlob(0);
  v17 = *(v30 + 32);
  v18 = *(v13 + 48);
  v19 = MEMORY[0x277D21570];
  sub_251B59614(a1 + v17, v15, &qword_27F479130, MEMORY[0x277D21570]);
  v20 = a2 + v17;
  v21 = v16;
  sub_251B59614(v20, &v15[v18], &qword_27F479130, v19);
  v22 = *(v16 + 48);
  if (v22(v15, 1, v4) == 1)
  {
    if (v22(&v15[v18], 1, v4) == 1)
    {
      sub_251B59694(v15, &qword_27F479130, MEMORY[0x277D21570]);
LABEL_14:
      sub_251C703B4();
      sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v23 = sub_251C70ED4();
      return v23 & 1;
    }

    goto LABEL_10;
  }

  sub_251B59614(v15, v11, &qword_27F479130, MEMORY[0x277D21570]);
  if (v22(&v15[v18], 1, v4) == 1)
  {
    (*(v16 + 8))(v11, v4);
LABEL_10:
    sub_251B57694(v15, &qword_27F479138, &qword_27F479130, MEMORY[0x277D21570]);
    goto LABEL_11;
  }

  v25 = *(v16 + 32);
  v26 = v29;
  v25(v29, &v15[v18], v4);
  sub_251B5438C(&qword_27F479140, MEMORY[0x277D21570], MEMORY[0x277D21578]);
  v27 = sub_251C70ED4();
  v28 = *(v21 + 8);
  v28(v26, v4);
  v28(v11, v4);
  sub_251B59694(v15, &qword_27F479130, MEMORY[0x277D21570]);
  if (v27)
  {
    goto LABEL_14;
  }

LABEL_11:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_251B58668(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBBlob(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B55C24(0, &qword_27F479148, type metadata accessor for PBBlob, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v24 - v9);
  sub_251B59704(0, &qword_27F479150, &qword_27F479148, type metadata accessor for PBBlob);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  if (*a1 != *a2 && (sub_251C719D4() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_29;
  }

  v15 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v15 = qword_251C7BF88[v15];
  }

  v16 = *(a2 + 32);
  if (*(a2 + 40))
  {
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        if (v15 != 5)
        {
          goto LABEL_29;
        }
      }

      else if (v15 != 7)
      {
        goto LABEL_29;
      }
    }

    else if (v16)
    {
      if (v15 != 4)
      {
        goto LABEL_29;
      }
    }

    else if (v15)
    {
      goto LABEL_29;
    }
  }

  else if (v15 != v16)
  {
    goto LABEL_29;
  }

  v24 = v7;
  v25 = type metadata accessor for PBBlobPullResult(0);
  v17 = *(v25 + 32);
  v18 = *(v12 + 48);
  sub_251B59614(a1 + v17, v14, &qword_27F479148, type metadata accessor for PBBlob);
  sub_251B59614(a2 + v17, &v14[v18], &qword_27F479148, type metadata accessor for PBBlob);
  v19 = *(v5 + 48);
  if (v19(v14, 1, v4) != 1)
  {
    sub_251B59614(v14, v10, &qword_27F479148, type metadata accessor for PBBlob);
    if (v19(&v14[v18], 1, v4) == 1)
    {
      sub_251B55CF0(v10, type metadata accessor for PBBlob);
      goto LABEL_22;
    }

    v20 = v24;
    sub_251B55C88(&v14[v18], v24, type metadata accessor for PBBlob);
    v21 = sub_251B58204(v10, v20);
    sub_251B55CF0(v20, type metadata accessor for PBBlob);
    sub_251B55CF0(v10, type metadata accessor for PBBlob);
    sub_251B59694(v14, &qword_27F479148, type metadata accessor for PBBlob);
    if (v21)
    {
      goto LABEL_28;
    }

LABEL_29:
    v22 = 0;
    return v22 & 1;
  }

  if (v19(&v14[v18], 1, v4) != 1)
  {
LABEL_22:
    sub_251B57694(v14, &qword_27F479150, &qword_27F479148, type metadata accessor for PBBlob);
    goto LABEL_29;
  }

  sub_251B59694(v14, &qword_27F479148, type metadata accessor for PBBlob);
LABEL_28:
  sub_251C703B4();
  sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v22 = sub_251C70ED4();
  return v22 & 1;
}

uint64_t sub_251B58AF8(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_251C719D4() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PBBlobAttribute(0);
  sub_251C703B4();
  sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251B58BFC(void *a1, void *a2)
{
  v4 = type metadata accessor for PBRevocationAuthorization(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B55C24(0, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  sub_251B59704(0, &qword_27F479158, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - v13;
  if (*a1 != *a2 && (sub_251C719D4() & 1) == 0 || !sub_251A9D1F0(a1[2], a1[3], a2[2], a2[3]))
  {
    goto LABEL_10;
  }

  v22 = v7;
  v23 = type metadata accessor for PBDeleteBlob(0);
  v15 = *(v23 + 28);
  v16 = *(v12 + 48);
  sub_251B59614(a1 + v15, v14, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
  sub_251B59614(a2 + v15, &v14[v16], &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) == 1)
  {
    if (v17(&v14[v16], 1, v4) == 1)
    {
      sub_251B59694(v14, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
LABEL_13:
      sub_251C703B4();
      sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_251C70ED4();
      return v18 & 1;
    }

    goto LABEL_9;
  }

  sub_251B59614(v14, v10, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
  if (v17(&v14[v16], 1, v4) == 1)
  {
    sub_251B55CF0(v10, type metadata accessor for PBRevocationAuthorization);
LABEL_9:
    sub_251B57694(v14, &qword_27F479158, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
    goto LABEL_10;
  }

  v20 = v22;
  sub_251B55C88(&v14[v16], v22, type metadata accessor for PBRevocationAuthorization);
  v21 = sub_251ADA68C(v10, v20);
  sub_251B55CF0(v20, type metadata accessor for PBRevocationAuthorization);
  sub_251B55CF0(v10, type metadata accessor for PBRevocationAuthorization);
  sub_251B59694(v14, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
  if (v21)
  {
    goto LABEL_13;
  }

LABEL_10:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_251B59000(void *a1, void *a2)
{
  v4 = sub_251C70384();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D21570];
  sub_251B55C24(0, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - v10;
  sub_251B59704(0, &qword_27F479138, &qword_27F479130, v8);
  v13 = v12;
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  if (*a1 != *a2 && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_9;
  }

  v26 = v7;
  v27 = type metadata accessor for PBTouchBlob(0);
  v16 = *(v27 + 24);
  v17 = *(v13 + 48);
  v18 = MEMORY[0x277D21570];
  sub_251B59614(a1 + v16, v15, &qword_27F479130, MEMORY[0x277D21570]);
  sub_251B59614(a2 + v16, &v15[v17], &qword_27F479130, v18);
  v19 = *(v5 + 48);
  if (v19(v15, 1, v4) == 1)
  {
    if (v19(&v15[v17], 1, v4) == 1)
    {
      sub_251B59694(v15, &qword_27F479130, MEMORY[0x277D21570]);
LABEL_11:
      sub_251C703B4();
      sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v20 = sub_251C70ED4();
      return v20 & 1;
    }

    goto LABEL_8;
  }

  sub_251B59614(v15, v11, &qword_27F479130, MEMORY[0x277D21570]);
  if (v19(&v15[v17], 1, v4) == 1)
  {
    (*(v5 + 8))(v11, v4);
LABEL_8:
    sub_251B57694(v15, &qword_27F479138, &qword_27F479130, MEMORY[0x277D21570]);
    goto LABEL_9;
  }

  v21 = &v15[v17];
  v22 = v26;
  (*(v5 + 32))(v26, v21, v4);
  sub_251B5438C(&qword_27F479140, MEMORY[0x277D21570], MEMORY[0x277D21578]);
  v23 = sub_251C70ED4();
  v24 = *(v5 + 8);
  v24(v22, v4);
  v24(v11, v4);
  sub_251B59694(v15, &qword_27F479130, MEMORY[0x277D21570]);
  if (v23)
  {
    goto LABEL_11;
  }

LABEL_9:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_251B5943C(uint64_t *a1, uint64_t *a2)
{
  if ((sub_251A9C778(*a1, *a2) & 1) == 0 || !sub_251A9D1F0(a1[1], a1[2], a2[1], a2[2]))
  {
    return 0;
  }

  v4 = a1[3] == a2[3] && a1[4] == a2[4];
  if (!v4 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PBBlobAuth(0);
  sub_251C703B4();
  sub_251B5438C(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

unint64_t sub_251B59518()
{
  result = qword_27F47A988;
  if (!qword_27F47A988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A988);
  }

  return result;
}

unint64_t sub_251B5956C()
{
  result = qword_27F47A9A8;
  if (!qword_27F47A9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A9A8);
  }

  return result;
}

unint64_t sub_251B595C0()
{
  result = qword_27F47A9E0;
  if (!qword_27F47A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A9E0);
  }

  return result;
}

uint64_t sub_251B59614(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251B55C24(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251B59694(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251B55C24(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_251B59704(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_251B55C24(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_251B5977C()
{
  result = qword_27F47AA20;
  if (!qword_27F47AA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AA20);
  }

  return result;
}

void sub_251B59840(uint64_t a1)
{
  sub_251B5B1A0(319, &qword_2813E1F88, MEMORY[0x277CC9318]);
  if (v1 <= 0x3F)
  {
    sub_251C703B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_251B59958(uint64_t a1)
{
  sub_251B55C24(319, &qword_27F47AA60, type metadata accessor for PBBlobAttribute, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_251C703B4();
    if (v2 <= 0x3F)
    {
      sub_251B55C24(319, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251B59B70(uint64_t a1)
{
  sub_251B5B1A0(319, &qword_2813E1E48, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_251C703B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_26Tm(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v12 = sub_251C703B4();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }

    else
    {
      sub_251B55C24(0, a4, a5, MEMORY[0x277D83D88]);
      v18 = v17;
      v19 = *(*(v17 - 8) + 48);
      v20 = a1 + *(a3 + 32);

      return v19(v20, a2, v18);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_27Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v12 = sub_251C703B4();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      sub_251B55C24(0, a5, a6, MEMORY[0x277D83D88]);
      v18 = v17;
      v19 = *(*(v17 - 8) + 56);
      v20 = v7 + *(a4 + 32);

      return v19(v20, a2, a2, v18);
    }
  }

  return result;
}

void sub_251B59F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  sub_251C703B4();
  if (v8 <= 0x3F)
  {
    sub_251B55C24(319, a5, a6, MEMORY[0x277D83D88]);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_35Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_36Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251B5A2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_251C703B4();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v10 = sub_251C703B4();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = v10;
    v13 = *(v11 + 48);
    v14 = a1;
LABEL_5:

    return v13(v14, a2, v12);
  }

  sub_251B55C24(0, a4, a5, MEMORY[0x277D83D88]);
  v16 = *(v15 - 8);
  if (*(v16 + 84) == a2)
  {
    v12 = v15;
    v13 = *(v16 + 48);
    v14 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_251B55C24(0, qword_2813E7028, type metadata accessor for PBBlobAuth, MEMORY[0x277D83D88]);
  v19 = v18;
  v20 = *(*(v18 - 8) + 48);
  v21 = a1 + *(a3 + 24);

  return v20(v21, a2, v19);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v12 = sub_251C703B4();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = v12;
    v15 = *(v13 + 56);
    v16 = a1;
LABEL_5:

    return v15(v16, a2, a2, v14);
  }

  sub_251B55C24(0, a5, a6, MEMORY[0x277D83D88]);
  v18 = *(v17 - 8);
  if (*(v18 + 84) == a3)
  {
    v14 = v17;
    v15 = *(v18 + 56);
    v16 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_251B55C24(0, qword_2813E7028, type metadata accessor for PBBlobAuth, MEMORY[0x277D83D88]);
  v21 = v20;
  v22 = *(*(v20 - 8) + 56);
  v23 = a1 + *(a4 + 24);

  return v22(v23, a2, a2, v21);
}

void sub_251B5A6FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_251C703B4();
  if (v7 <= 0x3F)
  {
    sub_251B55C24(319, a4, a5, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      sub_251B55C24(319, qword_2813E7028, type metadata accessor for PBBlobAuth, MEMORY[0x277D83D88]);
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251B5A864(uint64_t a1)
{
  sub_251C703B4();
  if (v1 <= 0x3F)
  {
    sub_251B55C24(319, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_17Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_18Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_251B5AAC0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_251B55C24(319, a4, a5, MEMORY[0x277D83940]);
  if (v5 <= 0x3F)
  {
    sub_251C703B4();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_117Tm(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v12 = sub_251C703B4();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }

    else
    {
      sub_251B55C24(0, a4, a5, MEMORY[0x277D83D88]);
      v18 = v17;
      v19 = *(*(v17 - 8) + 48);
      v20 = a1 + *(a3 + 28);

      return v19(v20, a2, v18);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_118Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v12 = sub_251C703B4();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      sub_251B55C24(0, a5, a6, MEMORY[0x277D83D88]);
      v18 = v17;
      v19 = *(*(v17 - 8) + 56);
      v20 = v7 + *(a4 + 28);

      return v19(v20, a2, a2, v18);
    }
  }

  return result;
}

void sub_251B5AE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  sub_251C703B4();
  if (v8 <= 0x3F)
  {
    sub_251B55C24(319, a5, a6, MEMORY[0x277D83D88]);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_251B5AF34()
{
  result = qword_27F47AB38;
  if (!qword_27F47AB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AB38);
  }

  return result;
}

uint64_t sub_251B5AFB8(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_251B5B1A0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_251B5B00C()
{
  result = qword_27F47AB50;
  if (!qword_27F47AB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AB50);
  }

  return result;
}

unint64_t sub_251B5B094()
{
  result = qword_27F47AB68;
  if (!qword_27F47AB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AB68);
  }

  return result;
}

unint64_t sub_251B5B11C()
{
  result = qword_27F47AB80;
  if (!qword_27F47AB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AB80);
  }

  return result;
}

void sub_251B5B1A0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_251C711A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_251B5B1F0()
{
  result = qword_27F47AB98;
  if (!qword_27F47AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47AB98);
  }

  return result;
}

unint64_t sub_251B5B248()
{
  result = qword_27F47ABA0;
  if (!qword_27F47ABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ABA0);
  }

  return result;
}

unint64_t sub_251B5B2A0()
{
  result = qword_27F47ABA8;
  if (!qword_27F47ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ABA8);
  }

  return result;
}

unint64_t sub_251B5B2F8()
{
  result = qword_27F47ABB0;
  if (!qword_27F47ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ABB0);
  }

  return result;
}

unint64_t sub_251B5B350()
{
  result = qword_27F47ABB8;
  if (!qword_27F47ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ABB8);
  }

  return result;
}

unint64_t sub_251B5B3A8()
{
  result = qword_27F47ABC0;
  if (!qword_27F47ABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ABC0);
  }

  return result;
}

unint64_t sub_251B5B400()
{
  result = qword_27F47ABC8;
  if (!qword_27F47ABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ABC8);
  }

  return result;
}

unint64_t sub_251B5B458()
{
  result = qword_27F47ABD0;
  if (!qword_27F47ABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47ABD0);
  }

  return result;
}

uint64_t sub_251B5B4AC(uint64_t result)
{
  if (result > 4)
  {
    switch(result)
    {
      case 7:
        return 6;
      case 6:
        return 5;
      case 5:
        return 4;
    }
  }

  return result;
}

uint64_t sub_251B5B51C(uint64_t result)
{
  if (result > 4)
  {
    if (result == 5)
    {
      return 2;
    }

    else if (result == 7)
    {
      return 3;
    }
  }

  else if (result == 4)
  {
    return 1;
  }

  return result;
}

uint64_t sub_251B5B580(uint64_t result)
{
  if (result <= 2)
  {
    if (result == 2)
    {
      return 1;
    }
  }

  else
  {
    switch(result)
    {
      case 3:
        return 2;
      case 4:
        return 3;
      case 5:
        return 4;
    }
  }

  return result;
}

uint64_t sub_251B5B634(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a1)
  {
    v4 = a2;
    v5 = [a1 BOOLValue];
    a2 = v4;
  }

  else
  {
    v5 = 2;
  }

  return a3(v5, a2);
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

uint64_t sub_251B5B6B0(uint64_t *a1, int a2)
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

uint64_t sub_251B5B6F8(uint64_t result, int a2, int a3)
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

id sub_251B5B838(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for URLSessionCertVerificationDelegate();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_251B5B890(void *a1, void *a2, uint64_t a3)
{
  v5 = [a1 protectionSpace];
  v43 = [v5 serverTrust];

  if (v43)
  {
    if (HKAcceptAuthenticationChallengeWithTrust())
    {
      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v6 = sub_251C70764();
      __swift_project_value_buffer(v6, qword_2813E8130);
      v7 = a2;
      v8 = sub_251C70744();
      v9 = sub_251C713C4();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v44 = v11;
        *v10 = 136315138;
        v12 = v7;
        v13 = [v12 description];
        v14 = sub_251C70F14();
        v16 = v15;

        v17 = sub_251B10780(v14, v16, &v44);

        *(v10 + 4) = v17;
        _os_log_impl(&dword_251A6C000, v8, v9, "%s: SecTrustStore verification passed for root cert from FHIR API", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v11);
        MEMORY[0x25308E2B0](v11, -1, -1);
        MEMORY[0x25308E2B0](v10, -1, -1);
      }

      (*(a3 + 16))(a3, 1, 0);
    }

    else
    {
      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v31 = sub_251C70764();
      __swift_project_value_buffer(v31, qword_2813E8130);
      v32 = a2;
      v33 = sub_251C70744();
      v34 = sub_251C713D4();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v44 = v36;
        *v35 = 136315138;
        v37 = v32;
        v38 = [v37 description];
        v39 = sub_251C70F14();
        v41 = v40;

        v42 = sub_251B10780(v39, v41, &v44);

        *(v35 + 4) = v42;
        _os_log_impl(&dword_251A6C000, v33, v34, "%s: HKAcceptAuthenticationChallengeWithTrust doesn't trust the certificate, cancelling auth challenge", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        MEMORY[0x25308E2B0](v36, -1, -1);
        MEMORY[0x25308E2B0](v35, -1, -1);
      }

      (*(a3 + 16))(a3, 2, 0);
    }
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v18 = sub_251C70764();
    __swift_project_value_buffer(v18, qword_2813E8130);
    v19 = a2;
    v20 = sub_251C70744();
    v21 = sub_251C713D4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v44 = v23;
      *v22 = 136315138;
      v24 = v19;
      v25 = [v24 description];
      v26 = sub_251C70F14();
      v28 = v27;

      v29 = sub_251B10780(v26, v28, &v44);

      *(v22 + 4) = v29;
      _os_log_impl(&dword_251A6C000, v20, v21, "%s: Could not retrieve serverTrust from FHIR API connection, cancelling auth challenge", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x25308E2B0](v23, -1, -1);
      MEMORY[0x25308E2B0](v22, -1, -1);
    }

    v30 = *(a3 + 16);

    v30(a3, 2, 0);
  }
}

uint64_t sub_251B5BD90(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_251B5BD8C(v7, v9) & 1;
}

uint64_t sub_251B5BDFC(uint64_t a1, uint64_t a2)
{
  v53 = sub_251C70074();
  v48 = *(v53 - 8);
  v4 = MEMORY[0x28223BE20](v53);
  v49 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = v43 - v6;
  sub_251B5C8E4(0, &qword_27F47ABE8, sub_251AD1194);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  result = MEMORY[0x28223BE20](v8);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v46 = v43 - v10;
  v12 = 0;
  v44 = a1;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v43[1] = v48 + 16;
  v50 = v11;
  v51 = (v48 + 32);
  v45 = (v48 + 8);
  while (v18)
  {
    v52 = (v18 - 1) & v18;
    v20 = __clz(__rbit64(v18)) | (v12 << 6);
LABEL_16:
    v26 = v44;
    v27 = v48;
    (*(v48 + 16))(v47, *(v44 + 48) + *(v48 + 72) * v20, v53);
    v28 = *(*(v26 + 56) + 8 * v20);
    sub_251AD1194(0);
    v30 = v29;
    v31 = *(v29 + 48);
    v23 = v50;
    (*(v27 + 32))();
    *(v23 + v31) = v28;
    (*(*(v30 - 8) + 56))(v23, 0, 1, v30);

LABEL_17:
    v32 = v46;
    sub_251B5C938(v23, v46, &qword_27F47ABE8, sub_251AD1194);
    sub_251AD1194(0);
    v33 = (*(*(v30 - 8) + 48))(v32, 1, v30);
    v34 = v33 == 1;
    if (v33 == 1)
    {
      return v34;
    }

    v35 = *(v30 + 48);
    v36 = v49;
    v37 = v53;
    (*v51)(v49, v32, v53);
    v38 = *(v32 + v35);
    sub_251AC8AFC(v36);
    LOBYTE(v35) = v39;
    (*v45)(v36, v37);
    if ((v35 & 1) == 0)
    {

      return 0;
    }

    v41 = sub_251BBF1A4(v40, v38);

    v18 = v52;
    if ((v41 & 1) == 0)
    {
      return v34;
    }
  }

  if (v19 <= v12 + 1)
  {
    v21 = v12 + 1;
  }

  else
  {
    v21 = v19;
  }

  v22 = v21 - 1;
  v23 = v50;
  while (1)
  {
    v24 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v24 >= v19)
    {
      sub_251AD1194(0);
      v30 = v42;
      (*(*(v42 - 8) + 56))(v23, 1, 1, v42);
      v52 = 0;
      v12 = v22;
      goto LABEL_17;
    }

    v25 = *(v14 + 8 * v24);
    ++v12;
    if (v25)
    {
      v52 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v12 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_251B5C264(uint64_t a1, uint64_t a2)
{
  v4 = sub_251C70014();
  v61 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v60 = &v52 - v8;
  sub_251B5C8E4(0, &qword_27F47ABD8, sub_251B5C820);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  result = MEMORY[0x28223BE20](v10);
  v14 = &v52 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v55 = a2;
  v56 = v12;
  v54 = v7;
  v15 = 0;
  v16 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 64);
  v20 = (v17 + 63) >> 6;
  v57 = v61 + 16;
  v58 = (v61 + 32);
  v52 = a1;
  v53 = (v61 + 8);
  while (v19)
  {
    v59 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v15 << 6);
LABEL_16:
    v27 = *(v52 + 48) + 16 * v21;
    v28 = *v27;
    v29 = *(v27 + 8);
    v31 = v60;
    v30 = v61;
    (*(v61 + 16))(v60, *(v52 + 56) + *(v61 + 72) * v21, v4);
    sub_251B5C820(0);
    v33 = v32;
    v34 = *(v32 + 48);
    v35 = v56;
    *v56 = v28;
    *(v35 + 8) = v29;
    v36 = *(v30 + 32);
    v24 = v35;
    v36(v35 + v34, v31, v4);
    (*(*(v33 - 8) + 56))(v24, 0, 1, v33);
LABEL_17:
    sub_251B5C938(v24, v14, &qword_27F47ABD8, sub_251B5C820);
    sub_251B5C820(0);
    v37 = (*(*(v33 - 8) + 48))(v14, 1, v33);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = *(v33 + 48);
    v40 = *v14;
    v41 = v14[8];
    v42 = v54;
    (*v58)(v54, &v14[v39], v4);
    v43 = v40;
    v44 = v55;
    v45 = sub_251AC8BD0(v43, v41);
    if ((v46 & 1) == 0)
    {
      (*v53)(v42, v4);
      return 0;
    }

    v48 = v60;
    v47 = v61;
    (*(v61 + 16))(v60, *(v44 + 56) + *(v61 + 72) * v45, v4);
    sub_251B5C88C();
    v49 = sub_251C70ED4();
    v50 = *(v47 + 8);
    v50(v48, v4);
    result = (v50)(v42, v4);
    v19 = v59;
    if ((v49 & 1) == 0)
    {
      return v38;
    }
  }

  if (v20 <= v15 + 1)
  {
    v22 = v15 + 1;
  }

  else
  {
    v22 = v20;
  }

  v23 = v22 - 1;
  v24 = v56;
  while (1)
  {
    v25 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v25 >= v20)
    {
      sub_251B5C820(0);
      v33 = v51;
      (*(*(v51 - 8) + 56))(v24, 1, 1, v51);
      v59 = 0;
      v15 = v23;
      goto LABEL_17;
    }

    v26 = *(v16 + 8 * v25);
    ++v15;
    if (v26)
    {
      v59 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v15 = v25;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_251B5C710(uint64_t *a1, uint64_t *a2)
{
  if ((sub_251A94860(*a1, *a2) & 1) == 0 || (sub_251A94860(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[4];
  v7 = a2[5];
  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  if (!sub_251A9D1F0(v4, v5, v6, v7) || (a1[6] != a2[6] || a1[7] != a2[7]) && (sub_251C719D4() & 1) == 0 || (a1[8] != a2[8] || a1[9] != a2[9]) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v8 = a1[10];
  v9 = a2[10];

  return sub_251B5C264(v8, v9);
}

void sub_251B5C820(uint64_t a1)
{
  if (!qword_27F47ABE0)
  {
    sub_251C70014();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F47ABE0);
    }
  }
}

unint64_t sub_251B5C88C()
{
  result = qword_27F479160;
  if (!qword_27F479160)
  {
    sub_251C70014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479160);
  }

  return result;
}

void sub_251B5C8E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251B5C938(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251B5C8E4(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_251B5C9A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7566185;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6972755F6F676F6CLL;
    }

    else
    {
      v4 = 0xD000000000000011;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0x8000000251C89CB0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1701667182;
    }

    else
    {
      v4 = 7566185;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0x6972755F6F676F6CLL;
  v8 = 0x8000000251C89CB0;
  if (a2 == 2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (a2)
  {
    v2 = 1701667182;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_251C719D4();
  }

  return v11 & 1;
}

BOOL sub_251B5CAD0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_251C83298[a1];
  }

  if (a4)
  {
    a3 = qword_251C83298[a3];
  }

  return a1 == a3;
}

BOOL sub_251B5CAF4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_251C832D8[a1];
  }

  if (a4)
  {
    a3 = qword_251C832D8[a3];
  }

  return a1 == a3;
}

uint64_t sub_251B5CB18(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  v5 = 5526864;
  if (a1 != 6)
  {
    v5 = 0x4543415254;
    v4 = 0xE500000000000000;
  }

  v6 = 0xE700000000000000;
  v7 = 0x534E4F4954504FLL;
  if (a1 != 4)
  {
    v7 = 1414745936;
    v6 = 0xE400000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE300000000000000;
  v9 = 5522759;
  if (a1 != 2)
  {
    v9 = 1145128264;
    v8 = 0xE400000000000000;
  }

  v10 = 0x4554454C4544;
  if (a1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v10 = 0x5443454E4E4F43;
  }

  if (a1 > 1u)
  {
    v3 = v8;
  }

  else
  {
    v9 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v13 = 0xE600000000000000;
        if (v11 != 0x4554454C4544)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v11 != 0x5443454E4E4F43)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_43;
    }

    if (a2 != 2)
    {
      v13 = 0xE400000000000000;
      if (v11 != 1145128264)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v13 = 0xE300000000000000;
    v14 = 17735;
LABEL_34:
    if (v11 != (v14 | 0x540000))
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x534E4F4954504FLL)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE400000000000000;
      if (v11 != 1414745936)
      {
        goto LABEL_45;
      }
    }

    goto LABEL_43;
  }

  if (a2 == 6)
  {
    v13 = 0xE300000000000000;
    v14 = 21840;
    goto LABEL_34;
  }

  v13 = 0xE500000000000000;
  if (v11 != 0x4543415254)
  {
LABEL_45:
    v15 = sub_251C719D4();
    goto LABEL_46;
  }

LABEL_43:
  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v15 = 1;
LABEL_46:

  return v15 & 1;
}

uint64_t sub_251B5CD30@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  v2 = MEMORY[0x277D84F90];
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = v2;
  *(a1 + 128) = 0;
  *(a1 + 136) = 256;
  type metadata accessor for PBTimeSeries.Value(0);
  return sub_251C703A4();
}

uint64_t sub_251B5CDA0@<X0>(char *a1@<X8>)
{
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = *(v1 + *(type metadata accessor for PBClinicalRecord(0) + 20));
  v7 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251BB33C4(v6 + v7, v5, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v8 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8) == 1)
  {
    sub_251BB3444(v5, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_251BB23C4(v5, a1, type metadata accessor for PBHKConditionRecord);
    }

    sub_251BB2308(v5, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = MEMORY[0x277D84F90];
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  *(a1 + 4) = v10;
  *(a1 + 5) = 0;
  *(a1 + 6) = 0xE000000000000000;
  *(a1 + 7) = 0;
  *(a1 + 8) = 0xE000000000000000;
  v11 = type metadata accessor for PBHKConditionRecord(0);
  sub_251C703A4();
  v12 = v11[10];
  v13 = type metadata accessor for PBHKConcept(0);
  v14 = *(*(v13 - 8) + 56);
  v14(&a1[v12], 1, 1, v13);
  v14(&a1[v11[11]], 1, 1, v13);
  v14(&a1[v11[12]], 1, 1, v13);
  v14(&a1[v11[13]], 1, 1, v13);
  return (v14)(&a1[v11[14]], 1, 1, v13);
}

uint64_t sub_251B5D054@<X0>(uint64_t a1@<X8>)
{
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + *(type metadata accessor for PBClinicalRecord(0) + 20));
  v7 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251BB33C4(v6 + v7, v5, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v8 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8) == 1)
  {
    sub_251BB3444(v5, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      return sub_251BB23C4(v5, a1, type metadata accessor for PBHKMedicationRecord);
    }

    sub_251BB2308(v5, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  v10 = MEMORY[0x277D84F90];
  *(a1 + 88) = MEMORY[0x277D84F90];
  *(a1 + 96) = v10;
  v11 = type metadata accessor for PBHKMedicationRecord(0);
  sub_251C703A4();
  v12 = *(v11 + 52);
  v13 = type metadata accessor for PBGeneralMedication(0);
  return (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
}

uint64_t sub_251B5D2D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB2FA8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251B5D360(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB2FFC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251B5D3AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
      {
        return 0;
      }

      return 1;
    }

    if (!v2)
    {
      return 1;
    }
  }

  else if (v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_251B5D418(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB279C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251B5D4A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB2F54();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251B5D530(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB30D0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251B5D58C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB36D8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251B5D5E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB3124();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251B5D674(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB3220();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251B5D6D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB3274();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251B5D72C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB32C8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251B5D788(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB331C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251B5D7D4@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_251B5D81C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t sub_251B5D858(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB3370();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251B5D8A4()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1EC8);
  __swift_project_value_buffer(v0, qword_27F4A1EC8);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C747F0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "NONE";
  *(v7 + 8) = 4;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "SINGLE";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "RANGE";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "LIST";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v10();
  v16 = v6 + 4 * v3 + *(v2 + 56);
  *(v6 + 4 * v3) = 4;
  *v16 = "TAGGED_LIST";
  *(v16 + 8) = 11;
  *(v16 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B5DB6C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1EE0);
  __swift_project_value_buffer(v0, qword_27F4A1EE0);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_251C78760;
  v5 = v33 + v4;
  v6 = v33 + v4 + *(v2 + 56);
  *(v33 + v4) = 0;
  *v6 = "NOT_SPECIFIED";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v33 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "RATIO";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v33 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "MEDICAL_DATE";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v33 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "MEDICAL_DATE_INTERVAL";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v33 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "DATE_COMPONENTS";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  v17 = (v33 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "NULL";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v9();
  v19 = (v33 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "CODED_QUANTITY";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v9();
  v21 = (v33 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "MEDICAL_CODINGS";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v9();
  v23 = v33 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "CODED_VALUE_COLLECTION";
  *(v23 + 8) = 22;
  *(v23 + 16) = 2;
  v9();
  v24 = (v33 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 9;
  *v25 = "DATA_ABSENT_REASON_CODINGS";
  *(v25 + 1) = 26;
  v25[16] = 2;
  v9();
  v26 = (v33 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 10;
  *v27 = "STRING";
  *(v27 + 1) = 6;
  v27[16] = 2;
  v9();
  v28 = (v33 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 11;
  *v29 = "INTEGER";
  *(v29 + 1) = 7;
  v29[16] = 2;
  v9();
  v30 = (v33 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 12;
  *v31 = "BOOLEAN";
  *(v31 + 1) = 7;
  v31[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B5E00C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1EF8);
  __swift_project_value_buffer(v0, qword_27F4A1EF8);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "start_time";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "end_time";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "granularity";
  *(v12 + 8) = 11;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B5E240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C70444();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3)
      {
        sub_251BB2550();
        sub_251C70494();
      }

      else if (result == 2 || result == 1)
      {
        sub_251C70534();
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B5E30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_251C70674(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_251C70674(), !v4))
    {
      if (!v3[4] || (sub_251BB2550(), result = sub_251C70604(), !v4))
      {
        type metadata accessor for PBDateRange(0);
        return sub_251C70394();
      }
    }
  }

  return result;
}

uint64_t sub_251B5E470(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B5C8, type metadata accessor for PBDateRange, &unk_251C8305C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B5E510(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F479038, type metadata accessor for PBDateRange, &unk_251C83094);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B5E57C(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F479038, type metadata accessor for PBDateRange, &unk_251C83094);

  return sub_251C705C4();
}

uint64_t sub_251B5E5F8()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1F10);
  __swift_project_value_buffer(v0, qword_27F4A1F10);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C763E0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "date_range";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 3;
  *v11 = "data_source";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 4;
  *v13 = "unit";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 5;
  *v15 = "values";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B5E864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4)
        {
          goto LABEL_14;
        }

        if (result == 5)
        {
          type metadata accessor for PBTimeSeries.Value(0);
          sub_251B9ED44(&qword_27F47B518, type metadata accessor for PBTimeSeries.Value, &unk_251C82DC4);
          sub_251C70554();
        }
      }

      else
      {
        if (result == 1)
        {
          sub_251B5E99C(a1, v5, a2, a3);
          goto LABEL_5;
        }

        if (result == 3)
        {
LABEL_14:
          sub_251C70534();
        }
      }

LABEL_5:
      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B5E99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBTimeSeries(0);
  type metadata accessor for PBDateRange(0);
  sub_251B9ED44(&qword_27F479038, type metadata accessor for PBDateRange, &unk_251C83094);
  return sub_251C70564();
}

uint64_t sub_251B5EA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251B5EBB0(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = v3[1];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      sub_251C70674();
    }

    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      sub_251C70674();
    }

    if (*(v3[4] + 16))
    {
      type metadata accessor for PBTimeSeries.Value(0);
      sub_251B9ED44(&qword_27F47B518, type metadata accessor for PBTimeSeries.Value, &unk_251C82DC4);
      sub_251C70694();
    }

    type metadata accessor for PBTimeSeries(0);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B5EBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBDateRange(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBTimeSeries(0);
  sub_251BB33C4(a1 + *(v12 + 32), v7, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E6EE8, type metadata accessor for PBDateRange);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBDateRange);
  sub_251B9ED44(&qword_27F479038, type metadata accessor for PBDateRange, &unk_251C83094);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBDateRange);
}

uint64_t sub_251B5EE00@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  *(a2 + 4) = MEMORY[0x277D84F90];
  sub_251C703A4();
  v4 = *(a1 + 32);
  v5 = type metadata accessor for PBDateRange(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_251B5EEE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B5D8, type metadata accessor for PBTimeSeries, &unk_251C82EF4);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B5EF84(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F478FB0, type metadata accessor for PBTimeSeries, &unk_251C82F2C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B5EFF0(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F478FB0, type metadata accessor for PBTimeSeries, &unk_251C82F2C);

  return sub_251C705C4();
}

uint64_t sub_251B5F070()
{
  result = MEMORY[0x25308CDA0](0x65756C61562ELL, 0xE600000000000000);
  qword_27F4A1F28 = 0xD000000000000025;
  unk_27F4A1F30 = 0x8000000251C8CF20;
  return result;
}

uint64_t sub_251B5F0D8()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1F38);
  __swift_project_value_buffer(v0, qword_27F4A1F38);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_251C7C1B0;
  v5 = v39 + v4;
  v6 = v39 + v4 + *(v2 + 56);
  *(v39 + v4) = 1;
  *v6 = "min_float";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "max_float";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "mean_float";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "sum_float";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "raw_float";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "recorded_time";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "measure_count";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "unit";
  *(v22 + 1) = 4;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v23 = "data_source";
  *(v23 + 8) = 11;
  *(v23 + 16) = 2;
  v9();
  v24 = (v5 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 10;
  *v25 = "min";
  *(v25 + 1) = 3;
  v25[16] = 2;
  v9();
  v26 = (v5 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 11;
  *v27 = "max";
  *(v27 + 1) = 3;
  v27[16] = 2;
  v9();
  v28 = (v5 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 12;
  *v29 = "mean";
  *(v29 + 1) = 4;
  v29[16] = 2;
  v9();
  v30 = (v5 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 13;
  *v31 = "sum";
  *(v31 + 1) = 3;
  v31[16] = 2;
  v9();
  v32 = (v5 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 14;
  *v33 = "raw";
  *(v33 + 1) = 3;
  v33[16] = 2;
  v9();
  v34 = (v5 + 14 * v3);
  v35 = v34 + *(v2 + 56);
  *v34 = 16;
  *v35 = "data_sources";
  *(v35 + 1) = 12;
  v35[16] = 2;
  v9();
  v36 = (v5 + 15 * v3);
  v37 = v36 + *(v2 + 56);
  *v36 = 17;
  *v37 = "glucose_meal_time";
  *(v37 + 1) = 17;
  v37[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B5F654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_251C70444();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
        sub_251C704E4();
        break;
      case 6:
      case 8:
      case 9:
        sub_251C70534();
        break;
      case 7:
        sub_251C704F4();
        break;
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
        sub_251C70514();
        break;
      case 16:
        sub_251C70504();
        break;
      case 17:
        sub_251B5F7B0(a1, v5, a2, a3);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_251B5F864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_251C70634(), !v4))
  {
    if (!*(v3 + 4) || (result = sub_251C70634(), !v4))
    {
      if (!*(v3 + 8) || (result = sub_251C70634(), !v4))
      {
        if (!*(v3 + 12) || (result = sub_251C70634(), !v4))
        {
          if (!*(v3 + 16) || (result = sub_251C70634(), !v4))
          {
            v9 = *(v3 + 32);
            v10 = HIBYTE(v9) & 0xF;
            if ((v9 & 0x2000000000000000) == 0)
            {
              v10 = *(v3 + 24) & 0xFFFFFFFFFFFFLL;
            }

            if (!v10 || (result = sub_251C70674(), !v4))
            {
              if (!*(v3 + 40) || (result = sub_251C70644(), !v4))
              {
                v11 = *(v3 + 56);
                v12 = HIBYTE(v11) & 0xF;
                if ((v11 & 0x2000000000000000) == 0)
                {
                  v12 = *(v3 + 48) & 0xFFFFFFFFFFFFLL;
                }

                if (!v12 || (result = sub_251C70674(), !v4))
                {
                  v13 = *(v3 + 72);
                  v14 = HIBYTE(v13) & 0xF;
                  if ((v13 & 0x2000000000000000) == 0)
                  {
                    v14 = *(v3 + 64) & 0xFFFFFFFFFFFFLL;
                  }

                  if (!v14 || (result = sub_251C70674(), !v4))
                  {
                    if (!*(v3 + 80) || (result = sub_251C70664(), !v4))
                    {
                      if (!*(v3 + 88) || (result = sub_251C70664(), !v4))
                      {
                        if (!*(v3 + 96) || (result = sub_251C70664(), !v4))
                        {
                          if (!*(v3 + 104) || (result = sub_251C70664(), !v4))
                          {
                            if (!*(v3 + 112) || (result = sub_251C70664(), !v4))
                            {
                              if (!*(*(v3 + 120) + 16) || (result = sub_251C70654(), !v4))
                              {
                                result = sub_251B5FB1C(v3, a1, a2, a3);
                                if (!v4)
                                {
                                  type metadata accessor for PBTimeSeries.Value(0);
                                  return sub_251C70394();
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
        }
      }
    }
  }

  return result;
}

uint64_t sub_251B5FB1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(result + 137) & 1) == 0)
  {
    sub_251BB25A4();
    return sub_251C70604();
  }

  return result;
}

uint64_t sub_251B5FBD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 80);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251B5FC44(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_251B5FD0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B5E0, type metadata accessor for PBTimeSeries.Value, &unk_251C82D8C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B5FDAC(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B518, type metadata accessor for PBTimeSeries.Value, &unk_251C82DC4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B5FE18(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B518, type metadata accessor for PBTimeSeries.Value, &unk_251C82DC4);

  return sub_251C705C4();
}

uint64_t sub_251B5FE98()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1F50);
  __swift_project_value_buffer(v0, qword_27F4A1F50);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "start";
  *(v7 + 8) = 5;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "end";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "value";
  *(v12 + 8) = 5;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B600C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_251C70444();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      sub_251C704F4();
    }

    else if (result == 2 || result == 1)
    {
      sub_251C70514();
    }
  }

  return result;
}

uint64_t sub_251B6015C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_251C70664(), !v4))
  {
    if (!*(v3 + 8) || (result = sub_251C70664(), !v4))
    {
      if (!*(v3 + 16) || (result = sub_251C70644(), !v4))
      {
        type metadata accessor for PBBucket(0);
        return sub_251C70394();
      }
    }
  }

  return result;
}

uint64_t sub_251B60228@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return sub_251C703A4();
}

uint64_t sub_251B6029C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B5F0, type metadata accessor for PBBucket, &unk_251C82C24);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B6033C(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B4F8, type metadata accessor for PBBucket, &unk_251C82C5C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B603A8(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B4F8, type metadata accessor for PBBucket, &unk_251C82C5C);

  return sub_251C705C4();
}

uint64_t sub_251B60428()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1F68);
  __swift_project_value_buffer(v0, qword_27F4A1F68);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "values";
  *(v7 + 8) = 6;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "unit";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B60608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C70444();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for PBHistogramSeries.Value(0);
        sub_251B9ED44(&qword_27F47B4C0, type metadata accessor for PBHistogramSeries.Value, &unk_251C8298C);
        sub_251C70554();
      }

      else if (result == 2)
      {
        sub_251C70534();
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B60704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PBHistogramSeries.Value(0), sub_251B9ED44(&qword_27F47B4C0, type metadata accessor for PBHistogramSeries.Value, &unk_251C8298C), result = sub_251C70694(), !v4))
  {
    v6 = v3[2];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v3[1] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_251C70674(), !v4))
    {
      type metadata accessor for PBHistogramSeries(0);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251B60864(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B5F8, type metadata accessor for PBHistogramSeries, &unk_251C82ABC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B60904(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F479010, type metadata accessor for PBHistogramSeries, &unk_251C82AF4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B60970(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F479010, type metadata accessor for PBHistogramSeries, &unk_251C82AF4);

  return sub_251C705C4();
}

uint64_t sub_251B609EC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_251A99400(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v5 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v5 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251B60AB4()
{
  result = MEMORY[0x25308CDA0](0x65756C61562ELL, 0xE600000000000000);
  qword_27F4A1F80 = 0xD00000000000002ALL;
  *algn_27F4A1F88 = 0x8000000251C8D040;
  return result;
}

uint64_t sub_251B60B1C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1F90);
  __swift_project_value_buffer(v0, qword_27F4A1F90);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "recorded_time";
  *(v7 + 8) = 13;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "buckets";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "identifier";
  *(v12 + 8) = 10;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B60D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C70444();
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
          type metadata accessor for PBBucket(0);
          sub_251B9ED44(&qword_27F47B4F8, type metadata accessor for PBBucket, &unk_251C82C5C);
          sub_251C70554();
          break;
        case 1:
LABEL_10:
          sub_251C70534();
          break;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B60E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_251C70674(), !v4))
  {
    if (!*(v3[2] + 16) || (type metadata accessor for PBBucket(0), sub_251B9ED44(&qword_27F47B4F8, type metadata accessor for PBBucket, &unk_251C82C5C), result = sub_251C70694(), !v4))
    {
      v8 = v3[4];
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v3[3] & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = sub_251C70674(), !v4))
      {
        type metadata accessor for PBHistogramSeries.Value(0);
        return sub_251C70394();
      }
    }
  }

  return result;
}

uint64_t sub_251B61004(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B600, type metadata accessor for PBHistogramSeries.Value, &unk_251C82954);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B610A4(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B4C0, type metadata accessor for PBHistogramSeries.Value, &unk_251C8298C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B61110(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B4C0, type metadata accessor for PBHistogramSeries.Value, &unk_251C8298C);

  return sub_251C705C4();
}

uint64_t sub_251B611B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PBSleepSeries.Value(0), sub_251B9ED44(&qword_27F47B488, type metadata accessor for PBSleepSeries.Value, &unk_251C826BC), result = sub_251C70694(), !v4))
  {
    type metadata accessor for PBSleepSeries(0);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B61324(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B608, type metadata accessor for PBSleepSeries, &unk_251C827EC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B613C4(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F479008, type metadata accessor for PBSleepSeries, &unk_251C82824);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B61430(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F479008, type metadata accessor for PBSleepSeries, &unk_251C82824);

  return sub_251C705C4();
}

uint64_t sub_251B614C4()
{
  result = MEMORY[0x25308CDA0](0x65756C61562ELL, 0xE600000000000000);
  qword_27F4A1FC0 = 0xD000000000000026;
  *algn_27F4A1FC8 = 0x8000000251C8D080;
  return result;
}

uint64_t sub_251B6152C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1FD0);
  __swift_project_value_buffer(v0, qword_27F4A1FD0);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C763E0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "recorded_time";
  *(v7 + 8) = 13;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "mean_asleep";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "mean_in_bed";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "mean_time_to_sleep";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B61794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_251C70444();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
LABEL_2:
        sub_251C70544();
      }
    }

    else if (result == 1)
    {
      sub_251C70534();
    }

    else if (result == 2)
    {
      goto LABEL_2;
    }
  }
}

uint64_t sub_251B61848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_251C70674(), !v4))
  {
    if (!*(v3 + 16) || (result = sub_251C70684(), !v4))
    {
      if (!*(v3 + 20) || (result = sub_251C70684(), !v4))
      {
        if (!*(v3 + 24) || (result = sub_251C70684(), !v4))
        {
          type metadata accessor for PBSleepSeries.Value(0);
          return sub_251C70394();
        }
      }
    }
  }

  return result;
}

uint64_t sub_251B6193C@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return sub_251C703A4();
}

uint64_t sub_251B619C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B610, type metadata accessor for PBSleepSeries.Value, &unk_251C82684);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B61A64(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B488, type metadata accessor for PBSleepSeries.Value, &unk_251C826BC);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B61AD0(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B488, type metadata accessor for PBSleepSeries.Value, &unk_251C826BC);

  return sub_251C705C4();
}

uint64_t sub_251B61B50()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1FE8);
  __swift_project_value_buffer(v0, qword_27F4A1FE8);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "schedule";
  *(v7 + 8) = 8;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "sleep_goal";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B61D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C70444();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for PBSleepSummary.Schedule(0);
        sub_251B9ED44(&qword_27F47B450, type metadata accessor for PBSleepSummary.Schedule, &unk_251C823EC);
        sub_251C70554();
      }

      else if (result == 2)
      {
        sub_251C704E4();
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B61E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PBSleepSummary.Schedule(0), sub_251B9ED44(&qword_27F47B450, type metadata accessor for PBSleepSummary.Schedule, &unk_251C823EC), result = sub_251C70694(), !v4))
  {
    if (!v3[2] || (result = sub_251C70634(), !v4))
    {
      type metadata accessor for PBSleepSummary(0);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251B61F3C@<X0>(uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  return sub_251C703A4();
}

uint64_t sub_251B61FB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B618, type metadata accessor for PBSleepSummary, &unk_251C8251C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B62058(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F479000, type metadata accessor for PBSleepSummary, &unk_251C82554);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B620C4(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F479000, type metadata accessor for PBSleepSummary, &unk_251C82554);

  return sub_251C705C4();
}

uint64_t sub_251B62140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_251A9B368(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251B621F8()
{
  result = MEMORY[0x25308CDA0](0x6C7564656863532ELL, 0xE900000000000065);
  qword_27F4A2000 = 0xD000000000000027;
  *algn_27F4A2008 = 0x8000000251C8D0E0;
  return result;
}

uint64_t sub_251B62268()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2010);
  __swift_project_value_buffer(v0, qword_27F4A2010);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_251C7C1C0;
  v5 = v25 + v4;
  v6 = v25 + v4 + *(v2 + 56);
  *(v25 + v4) = 1;
  *v6 = "sunday";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "monday";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "tuesday";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "wednesday";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "thursday";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "friday";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "saturday";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "bedtime";
  *(v22 + 1) = 7;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v23 = "awake";
  *(v23 + 8) = 5;
  *(v23 + 16) = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B62604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_251C70444();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result <= 4)
    {
      if (result > 2 || result == 1 || result == 2)
      {
LABEL_2:
        sub_251C70474();
      }
    }

    else
    {
      if (result < 8)
      {
        goto LABEL_2;
      }

      if (result == 8 || result == 9)
      {
        sub_251C70544();
      }
    }
  }
}

uint64_t sub_251B62718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_251C705F4(), !v4))
  {
    if (*(v3 + 1) != 1 || (result = sub_251C705F4(), !v4))
    {
      if (*(v3 + 2) != 1 || (result = sub_251C705F4(), !v4))
      {
        if (*(v3 + 3) != 1 || (result = sub_251C705F4(), !v4))
        {
          if (*(v3 + 4) != 1 || (result = sub_251C705F4(), !v4))
          {
            if (*(v3 + 5) != 1 || (result = sub_251C705F4(), !v4))
            {
              if (*(v3 + 6) != 1 || (result = sub_251C705F4(), !v4))
              {
                if (!*(v3 + 8) || (result = sub_251C70684(), !v4))
                {
                  if (!*(v3 + 12) || (result = sub_251C70684(), !v4))
                  {
                    type metadata accessor for PBSleepSummary.Schedule(0);
                    return sub_251C70394();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_251B628D4@<X0>(uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *a2 = 0;
  *(a2 + 3) = 0;
  return sub_251C703A4();
}

uint64_t sub_251B62958(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B620, type metadata accessor for PBSleepSummary.Schedule, &unk_251C823B4);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B629F8(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B450, type metadata accessor for PBSleepSummary.Schedule, &unk_251C823EC);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B62A64(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B450, type metadata accessor for PBSleepSummary.Schedule, &unk_251C823EC);

  return sub_251C705C4();
}

uint64_t sub_251B62AE4()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2028);
  __swift_project_value_buffer(v0, qword_27F4A2028);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "date_range";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "data_source";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "events";
  *(v12 + 8) = 6;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B62D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for PBCategorySeries.Event(0);
          sub_251B9ED44(&qword_27F47B3F8, type metadata accessor for PBCategorySeries.Event, &unk_251C81FB4);
          sub_251C70554();
          break;
        case 2:
          sub_251C70534();
          break;
        case 1:
          sub_251B62E38(a1, v5, a2, a3);
          break;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B62E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBCategorySeries(0);
  type metadata accessor for PBDateRange(0);
  sub_251B9ED44(&qword_27F479038, type metadata accessor for PBDateRange, &unk_251C83094);
  return sub_251C70564();
}

uint64_t sub_251B62EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251B6301C(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = v3[1];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      sub_251C70674();
    }

    if (*(v3[2] + 16))
    {
      type metadata accessor for PBCategorySeries.Event(0);
      sub_251B9ED44(&qword_27F47B3F8, type metadata accessor for PBCategorySeries.Event, &unk_251C81FB4);
      sub_251C70694();
    }

    type metadata accessor for PBCategorySeries(0);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B6301C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBDateRange(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBCategorySeries(0);
  sub_251BB33C4(a1 + *(v12 + 28), v7, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E6EE8, type metadata accessor for PBDateRange);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBDateRange);
  sub_251B9ED44(&qword_27F479038, type metadata accessor for PBDateRange, &unk_251C83094);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBDateRange);
}

uint64_t sub_251B632DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B628, type metadata accessor for PBCategorySeries, &unk_251C8224C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B6337C(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F478FB8, type metadata accessor for PBCategorySeries, &unk_251C82284);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B633E8(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F478FB8, type metadata accessor for PBCategorySeries, &unk_251C82284);

  return sub_251C705C4();
}

uint64_t sub_251B63484()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2050);
  __swift_project_value_buffer(v0, qword_27F4A2050);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "min";
  *(v7 + 8) = 3;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "max";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B636B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B630, type metadata accessor for PBCategorySeries.Range, &unk_251C820E4);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B63758(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B418, type metadata accessor for PBCategorySeries.Range, &unk_251C8211C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B637C4(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B418, type metadata accessor for PBCategorySeries.Range, &unk_251C8211C);

  return sub_251C705C4();
}

uint64_t sub_251B6385C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  result = MEMORY[0x25308CDA0](a2, 0xE600000000000000);
  *a3 = 0xD000000000000029;
  *a4 = 0x8000000251C8D170;
  return result;
}

uint64_t sub_251B638C8()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2078);
  __swift_project_value_buffer(v0, qword_27F4A2078);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_251C75810;
  v5 = v27 + v4;
  v6 = v27 + v4 + *(v2 + 56);
  *(v27 + v4) = 1;
  *v6 = "raw";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v27 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "value";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v27 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "recorded_time";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v27 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 11;
  *v14 = "source";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v27 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "range";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  v17 = (v27 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "heart_rate_event_threshold";
  *(v18 + 1) = 26;
  v18[16] = 2;
  v9();
  v19 = (v27 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "sleep_analysis";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v9();
  v21 = (v27 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "cycleFactor";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v9();
  v23 = v27 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "steadiness_event";
  *(v23 + 8) = 16;
  *(v23 + 16) = 2;
  v9();
  v24 = (v27 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 9;
  *v25 = "steadiness_classification";
  *(v25 + 1) = 25;
  v25[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B63CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          if (result == 6)
          {
            v11 = sub_251BB25F8;
            v12 = a1;
            v13 = v5;
            v14 = a2;
            v15 = a3;
            v16 = &type metadata for PBSleepAnalysis;
            v17 = 2;
          }

          else
          {
            v11 = sub_251BB264C;
            v12 = a1;
            v13 = v5;
            v14 = a2;
            v15 = a3;
            v16 = &type metadata for PBCycleFactors;
            v17 = 3;
          }

          goto LABEL_5;
        }

        switch(result)
        {
          case 8:
            v11 = sub_251BB26A0;
            v12 = a1;
            v13 = v5;
            v14 = a2;
            v15 = a3;
            v16 = &type metadata for PBAppleWalkingSteadinessEvent;
            v17 = 4;
LABEL_5:
            sub_251B64848(v12, v13, v14, v15, v11, v16, v17);
            break;
          case 9:
            v11 = sub_251BB26F4;
            v12 = a1;
            v13 = v5;
            v14 = a2;
            v15 = a3;
            v16 = &type metadata for PBAppleWalkingSteadinessClassification;
            v17 = 5;
            goto LABEL_5;
          case 11:
            goto LABEL_20;
        }
      }

      else if (result <= 2)
      {
        if (result != 1)
        {
          if (result != 2)
          {
            goto LABEL_6;
          }

LABEL_20:
          sub_251C70534();
          goto LABEL_6;
        }

        sub_251C704F4();
      }

      else if (result == 3)
      {
        sub_251B63F04(a1, v5, a2, a3);
      }

      else if (result == 4)
      {
        sub_251B63FB8(v5, a1, a2, a3);
      }

      else
      {
        sub_251B64604(a1, v5, a2, a3);
      }

LABEL_6:
      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B63F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBCategorySeries.Event(0);
  type metadata accessor for PBDateRange(0);
  sub_251B9ED44(&qword_27F479038, type metadata accessor for PBDateRange, &unk_251C83094);
  return sub_251C70564();
}

uint64_t sub_251B63FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for PBCategorySeries.Range(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v9 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_251B67AAC(0, &qword_27F47B660, type metadata accessor for PBCategorySeries.Range, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v41 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v26 = v4;
  v27 = v25;
  v25(&v36 - v23, 1, 1, v26);
  v36 = *(type metadata accessor for PBCategorySeries.Event(0) + 28);
  sub_251BB33C4(v48 + v36, v12, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  v37 = v14;
  v38 = (*(v14 + 48))(v12, 1, v13);
  if (v38 == 1)
  {
    sub_251BB3444(v12, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
LABEL_5:
    v28 = v44;
    goto LABEL_6;
  }

  sub_251BB23C4(v12, v19, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  sub_251BB23C4(v19, v17, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_251BB2308(v17, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    goto LABEL_5;
  }

  sub_251BB3444(v24, &qword_27F47B660, type metadata accessor for PBCategorySeries.Range);
  v32 = v39;
  sub_251BB23C4(v17, v39, type metadata accessor for PBCategorySeries.Range);
  sub_251BB23C4(v32, v24, type metadata accessor for PBCategorySeries.Range);
  v28 = v44;
  v27(v24, 0, 1, v44);
LABEL_6:
  v29 = v42;
  sub_251B9ED44(&qword_27F47B418, type metadata accessor for PBCategorySeries.Range, &unk_251C8211C);
  v30 = v43;
  sub_251C70564();
  if (v30)
  {
    return sub_251BB3444(v24, &qword_27F47B660, type metadata accessor for PBCategorySeries.Range);
  }

  sub_251BB33C4(v24, v29, &qword_27F47B660, type metadata accessor for PBCategorySeries.Range);
  if ((*(v41 + 48))(v29, 1, v28) == 1)
  {
    sub_251BB3444(v24, &qword_27F47B660, type metadata accessor for PBCategorySeries.Range);
    return sub_251BB3444(v29, &qword_27F47B660, type metadata accessor for PBCategorySeries.Range);
  }

  else
  {
    v33 = v40;
    sub_251BB23C4(v29, v40, type metadata accessor for PBCategorySeries.Range);
    if (v38 != 1)
    {
      sub_251C70454();
    }

    sub_251BB3444(v24, &qword_27F47B660, type metadata accessor for PBCategorySeries.Range);
    v34 = v48;
    v35 = v36;
    sub_251BB3444(v48 + v36, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    sub_251BB23C4(v33, v34 + v35, type metadata accessor for PBCategorySeries.Range);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v34 + v35, 0, 1, v13);
  }
}

uint64_t sub_251B64604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_251B67AAC(0, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v16 = 0;
  v17 = 0;
  result = sub_251C70524();
  if (v4)
  {
  }

  if (v17)
  {
    v18 = v17;
    v15 = v16;
    v10 = (a2 + *(type metadata accessor for PBCategorySeries.Event(0) + 28));
    sub_251BB33C4(v10, v8, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    v11 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
    v14 = *(v11 - 8);
    v12 = (*(v14 + 48))(v8, 1, v11);
    sub_251BB3444(v8, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    if (v12 != 1)
    {
      sub_251C70454();
    }

    sub_251BB3444(v10, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    v13 = v18;
    *v10 = v15;
    v10[1] = v13;
    swift_storeEnumTagMultiPayload();
    return (*(v14 + 56))(v10, 0, 1, v11);
  }

  return result;
}

uint64_t sub_251B64848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, unsigned int a7)
{
  sub_251B67AAC(0, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData, MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v25 = 0;
  v26 = 256;
  a5(v12);
  result = sub_251C70484();
  if (!v7 && (v26 & 0x100) == 0)
  {
    v24 = a7;
    v27 = 0;
    v23 = v25;
    v22 = v26;
    v16 = a2 + *(type metadata accessor for PBCategorySeries.Event(0) + 28);
    sub_251BB33C4(v16, v14, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    v17 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
    v18 = *(v17 - 8);
    v19 = (*(v18 + 48))(v14, 1, v17);
    sub_251BB3444(v14, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    if (v19 != 1)
    {
      v20 = v27;
      result = sub_251C70454();
      if (v20)
      {
        return result;
      }

      v27 = 0;
    }

    sub_251BB3444(v16, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    *v16 = v23;
    *(v16 + 8) = v22 & 1;
    swift_storeEnumTagMultiPayload();
    return (*(v18 + 56))(v16, 0, 1, v17);
  }

  return result;
}

uint64_t sub_251B64AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_251B67AAC(0, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  if (!*v3 || (result = sub_251C70644(), !v4))
  {
    v12 = *(v3 + 16);
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = *(v3 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 || (result = sub_251C70674(), !v4))
    {
      result = sub_251B64DCC(v3, a1, a2, a3);
      if (!v4)
      {
        v14 = type metadata accessor for PBCategorySeries.Event(0);
        sub_251BB33C4(v3 + *(v14 + 28), v10, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
        v15 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
        if ((*(*(v15 - 8) + 48))(v10, 1, v15) != 1)
        {
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload > 2)
          {
            if (EnumCaseMultiPayload == 3)
            {
              sub_251B65600(v3, a1, a2, a3);
            }

            else
            {
              sub_251B657C4(v3, a1, a2, a3);
            }
          }

          else if (EnumCaseMultiPayload)
          {
            sub_251BB2308(v10, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
            sub_251B65288(v3, a1, a2, a3);
          }

          else
          {
            sub_251B65018(v3, a1, a2, a3);
            sub_251BB2308(v10, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
          }
        }

        v16 = *(v3 + 32);
        v17 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v17 = *(v3 + 24) & 0xFFFFFFFFFFFFLL;
        }

        if (v17)
        {
          sub_251C70674();
        }

        return sub_251C70394();
      }
    }
  }

  return result;
}

uint64_t sub_251B64DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBDateRange(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBCategorySeries.Event(0);
  sub_251BB33C4(a1 + *(v12 + 36), v7, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E6EE8, type metadata accessor for PBDateRange);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBDateRange);
  sub_251B9ED44(&qword_27F479038, type metadata accessor for PBDateRange, &unk_251C83094);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBDateRange);
}

uint64_t sub_251B65018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_251B67AAC(0, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBCategorySeries.Range(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBCategorySeries.Event(0);
  sub_251BB33C4(a1 + *(v11 + 28), v7, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  v12 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251BB3444(v7, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_251BB23C4(v7, v10, type metadata accessor for PBCategorySeries.Range);
    sub_251B9ED44(&qword_27F47B418, type metadata accessor for PBCategorySeries.Range, &unk_251C8211C);
    sub_251C706A4();
    return sub_251BB2308(v10, type metadata accessor for PBCategorySeries.Range);
  }

  result = sub_251BB2308(v7, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  __break(1u);
  return result;
}

uint64_t sub_251B65288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_251B67AAC(0, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for PBCategorySeries.Event(0);
  sub_251BB33C4(a1 + *(v8 + 28), v7, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  v9 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_251BB3444(v7, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_251C70674();
  }

  result = sub_251BB2308(v7, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  __break(1u);
  return result;
}

uint64_t sub_251B6543C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_251B67AAC(0, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for PBCategorySeries.Event(0);
  sub_251BB33C4(a1 + *(v8 + 28), v7, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  v9 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_251BB3444(v7, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    v10 = v7[8];
    v12 = *v7;
    v13 = v10;
    sub_251BB25F8();
    return sub_251C70604();
  }

  result = sub_251BB2308(v7, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  __break(1u);
  return result;
}

uint64_t sub_251B65600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_251B67AAC(0, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for PBCategorySeries.Event(0);
  sub_251BB33C4(a1 + *(v8 + 28), v7, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  v9 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_251BB3444(v7, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    v10 = v7[8];
    v12 = *v7;
    v13 = v10;
    sub_251BB264C();
    return sub_251C70604();
  }

  result = sub_251BB2308(v7, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  __break(1u);
  return result;
}

uint64_t sub_251B657C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_251B67AAC(0, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for PBCategorySeries.Event(0);
  sub_251BB33C4(a1 + *(v8 + 28), v7, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  v9 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_251BB3444(v7, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    v10 = v7[8];
    v12 = *v7;
    v13 = v10;
    sub_251BB26A0();
    return sub_251C70604();
  }

  result = sub_251BB2308(v7, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  __break(1u);
  return result;
}

uint64_t sub_251B65988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_251B67AAC(0, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for PBCategorySeries.Event(0);
  sub_251BB33C4(a1 + *(v8 + 28), v7, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  v9 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_251BB3444(v7, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    v10 = v7[8];
    v12 = *v7;
    v13 = v10;
    sub_251BB26F4();
    return sub_251C70604();
  }

  result = sub_251BB2308(v7, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  __break(1u);
  return result;
}

uint64_t sub_251B65B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  v4 = *(a1 + 28);
  v5 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  sub_251C703A4();
  v6 = *(a1 + 36);
  v7 = type metadata accessor for PBDateRange(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_251B65C80(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B638, type metadata accessor for PBCategorySeries.Event, &unk_251C81F7C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B65D20(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B3F8, type metadata accessor for PBCategorySeries.Event, &unk_251C81FB4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B65D8C(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B3F8, type metadata accessor for PBCategorySeries.Event, &unk_251C81FB4);

  return sub_251C705C4();
}

uint64_t sub_251B65E0C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2090);
  __swift_project_value_buffer(v0, qword_27F4A2090);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "blood_type";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "biological_sex";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "data_of_birth";
  *(v12 + 8) = 13;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B66080(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B668, type metadata accessor for PBCharacteristics, &unk_251C81E14);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B66120(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F478FC8, type metadata accessor for PBCharacteristics, &unk_251C81E4C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B6618C(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F478FC8, type metadata accessor for PBCharacteristics, &unk_251C81E4C);

  return sub_251C705C4();
}

uint64_t sub_251B66238()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A20A8);
  __swift_project_value_buffer(v0, qword_27F4A20A8);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C78260;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "total_energy_burned";
  *(v7 + 8) = 19;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "total_distance";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "activity_type";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "total_flights_climbed";
  *(v15 + 1) = 21;
  v15[16] = 2;
  v10();
  v16 = (v6 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "duration";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v10();
  v18 = (v6 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 6;
  *v19 = "date_range";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v10();
  v20 = (v6 + 6 * v3);
  v21 = v20 + *(v2 + 56);
  *v20 = 7;
  *v21 = "total_swimming_stroke_count";
  *(v21 + 1) = 27;
  v21[16] = 2;
  v10();
  v22 = (v6 + 7 * v3);
  v23 = v22 + *(v2 + 56);
  *v22 = 8;
  *v23 = "average_heart_rate";
  *(v23 + 1) = 18;
  v23[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B665A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7 || result == 8)
          {
LABEL_4:
            sub_251C70544();
          }
        }

        else
        {
          if (result == 5)
          {
            goto LABEL_4;
          }

          sub_251B666F0(a1, v5, a2, a3);
        }
      }

      else if (result > 2)
      {
        if (result != 3)
        {
          goto LABEL_4;
        }

        sub_251BB2748();
        sub_251C70494();
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_4;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B666F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBWorkout(0);
  type metadata accessor for PBDateRange(0);
  sub_251B9ED44(&qword_27F479038, type metadata accessor for PBDateRange, &unk_251C83094);
  return sub_251C70564();
}

uint64_t sub_251B667A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3)
  {
    result = sub_251C70684();
    if (v4)
    {
      return result;
    }
  }

  if (v3[1])
  {
    result = sub_251C70684();
    if (v4)
    {
      return result;
    }
  }

  nullsub_1();
  if (v9)
  {
    sub_251BB2748();
    result = sub_251C70604();
    if (v4)
    {
      return result;
    }

    if (!v3[5])
    {
      goto LABEL_11;
    }

LABEL_10:
    result = sub_251C70684();
    if (v4)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (v3[5])
  {
    goto LABEL_10;
  }

LABEL_11:
  if (!v3[6] || (result = sub_251C70684(), !v4))
  {
    result = sub_251B66958(v3, a1, a2, a3);
    if (!v4)
    {
      if (v3[7])
      {
        sub_251C70684();
      }

      if (v3[8])
      {
        sub_251C70684();
      }

      type metadata accessor for PBWorkout(0);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251B66958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBDateRange(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBWorkout(0);
  sub_251BB33C4(a1 + *(v12 + 48), v7, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E6EE8, type metadata accessor for PBDateRange);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBDateRange);
  sub_251B9ED44(&qword_27F479038, type metadata accessor for PBDateRange, &unk_251C83094);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBDateRange);
}

uint64_t sub_251B66BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 28) = 0;
  *(a2 + 20) = 0;
  sub_251C703A4();
  v4 = *(a1 + 48);
  v5 = type metadata accessor for PBDateRange(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_251B66CA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B670, type metadata accessor for PBWorkout, &unk_251C81CAC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B66D48(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F478FC0, type metadata accessor for PBWorkout, &unk_251C81CE4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B66DB4(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F478FC0, type metadata accessor for PBWorkout, &unk_251C81CE4);

  return sub_251C705C4();
}

uint64_t sub_251B66E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PBClinicalRecord(0), sub_251B9ED44(&qword_27F47B390, type metadata accessor for PBClinicalRecord, &unk_251C81A14), result = sub_251C70694(), !v4))
  {
    type metadata accessor for PBAllClinicalRecords(0);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B66FC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B680, type metadata accessor for PBAllClinicalRecords, &unk_251C81B44);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B67068(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F478FD0, type metadata accessor for PBAllClinicalRecords, &unk_251C81B7C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B670D4(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F478FD0, type metadata accessor for PBAllClinicalRecords, &unk_251C81B7C);

  return sub_251C705C4();
}

uint64_t sub_251B67168()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A20D8);
  __swift_project_value_buffer(v0, qword_27F4A20D8);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_251C7C1D0;
  v5 = v40 + v4;
  v6 = v40 + v4 + *(v2 + 56);
  *(v40 + v4) = 1;
  *v6 = "clinical_type_identifier";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "fhir_resource";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "primary_concept";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "allergy_record";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "condition_record";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "vaccination_record";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "medication_dispense_record";
  *(v20 + 1) = 26;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "medication_order";
  *(v22 + 1) = 16;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 10;
  *v23 = "diagnostic_test_result";
  *(v23 + 8) = 22;
  *(v23 + 16) = 2;
  v9();
  v24 = (v5 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 11;
  *v25 = "diagnostic_test_report";
  *(v25 + 1) = 22;
  v25[16] = 2;
  v9();
  v26 = (v5 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 12;
  *v27 = "account_owner";
  *(v27 + 1) = 13;
  v27[16] = 2;
  v9();
  v28 = (v5 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 13;
  *v29 = "procedure_record";
  *(v29 + 1) = 16;
  v29[16] = 2;
  v9();
  v30 = (v5 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 16;
  *v31 = "medication_record";
  *(v31 + 1) = 17;
  v31[16] = 2;
  v9();
  v32 = (v5 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 14;
  *v33 = "source";
  *(v33 + 1) = 6;
  v33[16] = 2;
  v9();
  v34 = (v5 + 14 * v3);
  v35 = v34 + *(v2 + 56);
  *v34 = 17;
  *v35 = "gateway_id";
  *(v35 + 1) = 10;
  v35[16] = 2;
  v9();
  v36 = (v5 + 15 * v3);
  v37 = v36 + *(v2 + 56);
  *v36 = 18;
  *v37 = "ios_derived_display_name";
  *(v37 + 1) = 24;
  v37[16] = 2;
  v9();
  v38 = v5 + 16 * v3 + *(v2 + 56);
  *(v5 + 16 * v3) = 19;
  *v38 = "medical_record_origin_type";
  *(v38 + 8) = 26;
  *(v38 + 16) = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B67700()
{
  type metadata accessor for PBClinicalRecord._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 2) = 0;
  *(v0 + 3) = 0xE000000000000000;
  *(v0 + 4) = 0;
  *(v0 + 5) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__primaryConcept;
  v2 = type metadata accessor for PBHKConcept(0);
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v3 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  v4 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  result = (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  v6 = &v0[OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__source];
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  v7 = &v0[OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__gatewayID];
  *v7 = 0;
  *(v7 + 1) = 0xE000000000000000;
  v8 = &v0[OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__iosDerivedDisplayName];
  *v8 = 0;
  *(v8 + 1) = 0xE000000000000000;
  v9 = &v0[OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecordOriginType];
  *v9 = 0;
  v9[8] = 1;
  qword_27F47ABF0 = v0;
  return result;
}

uint64_t sub_251B67828()
{

  sub_251BB3444(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__primaryConcept, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB3444(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);

  return swift_deallocClassInstance();
}

void sub_251B67948(uint64_t a1)
{
  sub_251B67AAC(319, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_251B67AAC(319, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_251B67AAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251B67B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_251C70444();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_251B98414(a2, a1, a3, a4);
          break;
        case 2:
          sub_251AB6E48(a2, a1, a3, a4);
          break;
        case 3:
          sub_251B67DB4(a2, a1, a3, a4);
          break;
        case 4:
          sub_251B67E90(a1, a2, a3, a4);
          break;
        case 5:
          sub_251B6854C(a1, a2, a3, a4);
          break;
        case 6:
          sub_251B68C0C(a1, a2, a3, a4);
          break;
        case 7:
          sub_251B692CC(a1, a2, a3, a4);
          break;
        case 8:
          sub_251B6998C(a1, a2, a3, a4);
          break;
        case 10:
          sub_251B6A04C(a1, a2, a3, a4);
          break;
        case 11:
          sub_251B6A70C(a1, a2, a3, a4);
          break;
        case 12:
          sub_251B6ADCC(a1, a2, a3, a4);
          break;
        case 13:
          sub_251B6B48C(a1, a2, a3, a4);
          break;
        case 14:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__source;
          goto LABEL_5;
        case 16:
          sub_251B6BB4C(a1, a2, a3, a4);
          break;
        case 17:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__gatewayID;
          goto LABEL_5;
        case 18:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__iosDerivedDisplayName;
LABEL_5:
          sub_251B8255C(v11, v12, v13, v14, v15);
          break;
        case 19:
          sub_251B6C20C(a2, a1, a3, a4);
          break;
        default:
          break;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B67DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C70564();
  return swift_endAccess();
}

uint64_t sub_251B67E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for PBHKAllergyRecord(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v49 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v48 = &v42 - v9;
  v51 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord;
  v10 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v45 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v16 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  sub_251B67AAC(0, &qword_27F47B698, type metadata accessor for PBHKAllergyRecord, v10);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v52 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v42 - v26;
  v50 = v6;
  v28 = *(v6 + 56);
  v54 = v5;
  v29 = v5;
  v30 = v17;
  v47 = v28;
  v28(&v42 - v26, 1, 1, v29);
  v31 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  v46 = a1;
  v43 = v31;
  sub_251BB33C4(a1 + v31, v15, qword_2813E5D48, v51);
  v42 = v30;
  LODWORD(v51) = (*(v30 + 48))(v15, 1, v16);
  v44 = v16;
  if (v51 == 1)
  {
    sub_251BB3444(v15, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
LABEL_5:
    v32 = v54;
    goto LABEL_6;
  }

  sub_251BB23C4(v15, v22, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  sub_251BB23C4(v22, v20, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_251BB2308(v20, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    goto LABEL_5;
  }

  sub_251BB3444(v27, &qword_27F47B698, type metadata accessor for PBHKAllergyRecord);
  v36 = v48;
  sub_251BB23C4(v20, v48, type metadata accessor for PBHKAllergyRecord);
  sub_251BB23C4(v36, v27, type metadata accessor for PBHKAllergyRecord);
  v32 = v54;
  v47(v27, 0, 1, v54);
LABEL_6:
  v33 = v52;
  sub_251B9ED44(&qword_27F47B330, type metadata accessor for PBHKAllergyRecord, &unk_251C815B4);
  v34 = v53;
  sub_251C70564();
  if (v34)
  {
    return sub_251BB3444(v27, &qword_27F47B698, type metadata accessor for PBHKAllergyRecord);
  }

  sub_251BB33C4(v27, v33, &qword_27F47B698, type metadata accessor for PBHKAllergyRecord);
  if ((*(v50 + 48))(v33, 1, v32) == 1)
  {
    sub_251BB3444(v27, &qword_27F47B698, type metadata accessor for PBHKAllergyRecord);
    return sub_251BB3444(v33, &qword_27F47B698, type metadata accessor for PBHKAllergyRecord);
  }

  else
  {
    v37 = v49;
    sub_251BB23C4(v33, v49, type metadata accessor for PBHKAllergyRecord);
    if (v51 != 1)
    {
      sub_251C70454();
    }

    sub_251BB3444(v27, &qword_27F47B698, type metadata accessor for PBHKAllergyRecord);
    v38 = v45;
    sub_251BB23C4(v37, v45, type metadata accessor for PBHKAllergyRecord);
    v39 = v44;
    swift_storeEnumTagMultiPayload();
    (*(v42 + 56))(v38, 0, 1, v39);
    v40 = v46;
    v41 = v43;
    swift_beginAccess();
    sub_251BB3050(v38, v40 + v41, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    return swift_endAccess();
  }
}

uint64_t sub_251B6854C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for PBHKConditionRecord(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v42 - v9;
  v51 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord;
  v10 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v45 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v16 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  sub_251B67AAC(0, &qword_27F47B6A0, type metadata accessor for PBHKConditionRecord, v10);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v52 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v42 - v26;
  v50 = v6;
  v28 = *(v6 + 56);
  v54 = v5;
  v29 = v5;
  v30 = v17;
  v48 = v28;
  v28(&v42 - v26, 1, 1, v29);
  v31 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  v46 = a1;
  v44 = v31;
  sub_251BB33C4(a1 + v31, v15, qword_2813E5D48, v51);
  v43 = v30;
  LODWORD(v51) = (*(v30 + 48))(v15, 1, v16);
  if (v51 == 1)
  {
    sub_251BB3444(v15, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v32 = v16;
  }

  else
  {
    sub_251BB23C4(v15, v22, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    sub_251BB23C4(v22, v20, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v32 = v16;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_251BB3444(v27, &qword_27F47B6A0, type metadata accessor for PBHKConditionRecord);
      v33 = v49;
      sub_251BB23C4(v20, v49, type metadata accessor for PBHKConditionRecord);
      sub_251BB23C4(v33, v27, type metadata accessor for PBHKConditionRecord);
      v34 = v54;
      v48(v27, 0, 1, v54);
      goto LABEL_7;
    }

    sub_251BB2308(v20, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  }

  v34 = v54;
LABEL_7:
  v35 = v52;
  sub_251B9ED44(&qword_27F47B2F0, type metadata accessor for PBHKConditionRecord, &unk_251C812E4);
  v36 = v53;
  sub_251C70564();
  if (v36)
  {
    return sub_251BB3444(v27, &qword_27F47B6A0, type metadata accessor for PBHKConditionRecord);
  }

  sub_251BB33C4(v27, v35, &qword_27F47B6A0, type metadata accessor for PBHKConditionRecord);
  if ((*(v50 + 48))(v35, 1, v34) == 1)
  {
    sub_251BB3444(v27, &qword_27F47B6A0, type metadata accessor for PBHKConditionRecord);
    return sub_251BB3444(v35, &qword_27F47B6A0, type metadata accessor for PBHKConditionRecord);
  }

  else
  {
    v38 = v47;
    sub_251BB23C4(v35, v47, type metadata accessor for PBHKConditionRecord);
    if (v51 != 1)
    {
      sub_251C70454();
    }

    sub_251BB3444(v27, &qword_27F47B6A0, type metadata accessor for PBHKConditionRecord);
    v39 = v45;
    sub_251BB23C4(v38, v45, type metadata accessor for PBHKConditionRecord);
    swift_storeEnumTagMultiPayload();
    (*(v43 + 56))(v39, 0, 1, v32);
    v40 = v46;
    v41 = v44;
    swift_beginAccess();
    sub_251BB3050(v39, v40 + v41, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    return swift_endAccess();
  }
}

uint64_t sub_251B68C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for PBHKVaccinationRecord(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v42 - v9;
  v51 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord;
  v10 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v45 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v16 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  sub_251B67AAC(0, &qword_27F47B6A8, type metadata accessor for PBHKVaccinationRecord, v10);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v52 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v42 - v26;
  v50 = v6;
  v28 = *(v6 + 56);
  v54 = v5;
  v29 = v5;
  v30 = v17;
  v48 = v28;
  v28(&v42 - v26, 1, 1, v29);
  v31 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  v46 = a1;
  v44 = v31;
  sub_251BB33C4(a1 + v31, v15, qword_2813E5D48, v51);
  v43 = v30;
  LODWORD(v51) = (*(v30 + 48))(v15, 1, v16);
  if (v51 == 1)
  {
    sub_251BB3444(v15, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v32 = v16;
  }

  else
  {
    sub_251BB23C4(v15, v22, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    sub_251BB23C4(v22, v20, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v32 = v16;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_251BB3444(v27, &qword_27F47B6A8, type metadata accessor for PBHKVaccinationRecord);
      v33 = v49;
      sub_251BB23C4(v20, v49, type metadata accessor for PBHKVaccinationRecord);
      sub_251BB23C4(v33, v27, type metadata accessor for PBHKVaccinationRecord);
      v34 = v54;
      v48(v27, 0, 1, v54);
      goto LABEL_7;
    }

    sub_251BB2308(v20, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  }

  v34 = v54;
LABEL_7:
  v35 = v52;
  sub_251B9ED44(&qword_27F47B2D0, type metadata accessor for PBHKVaccinationRecord, &unk_251C8117C);
  v36 = v53;
  sub_251C70564();
  if (v36)
  {
    return sub_251BB3444(v27, &qword_27F47B6A8, type metadata accessor for PBHKVaccinationRecord);
  }

  sub_251BB33C4(v27, v35, &qword_27F47B6A8, type metadata accessor for PBHKVaccinationRecord);
  if ((*(v50 + 48))(v35, 1, v34) == 1)
  {
    sub_251BB3444(v27, &qword_27F47B6A8, type metadata accessor for PBHKVaccinationRecord);
    return sub_251BB3444(v35, &qword_27F47B6A8, type metadata accessor for PBHKVaccinationRecord);
  }

  else
  {
    v38 = v47;
    sub_251BB23C4(v35, v47, type metadata accessor for PBHKVaccinationRecord);
    if (v51 != 1)
    {
      sub_251C70454();
    }

    sub_251BB3444(v27, &qword_27F47B6A8, type metadata accessor for PBHKVaccinationRecord);
    v39 = v45;
    sub_251BB23C4(v38, v45, type metadata accessor for PBHKVaccinationRecord);
    swift_storeEnumTagMultiPayload();
    (*(v43 + 56))(v39, 0, 1, v32);
    v40 = v46;
    v41 = v44;
    swift_beginAccess();
    sub_251BB3050(v39, v40 + v41, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    return swift_endAccess();
  }
}

uint64_t sub_251B692CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for PBHKMedicationDispenseRecord(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v42 - v9;
  v51 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord;
  v10 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v45 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v16 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  sub_251B67AAC(0, &qword_27F47B6B0, type metadata accessor for PBHKMedicationDispenseRecord, v10);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v52 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v42 - v26;
  v50 = v6;
  v28 = *(v6 + 56);
  v54 = v5;
  v29 = v5;
  v30 = v17;
  v48 = v28;
  v28(&v42 - v26, 1, 1, v29);
  v31 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  v46 = a1;
  v44 = v31;
  sub_251BB33C4(a1 + v31, v15, qword_2813E5D48, v51);
  v43 = v30;
  LODWORD(v51) = (*(v30 + 48))(v15, 1, v16);
  if (v51 == 1)
  {
    sub_251BB3444(v15, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v32 = v16;
  }

  else
  {
    sub_251BB23C4(v15, v22, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    sub_251BB23C4(v22, v20, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v32 = v16;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_251BB3444(v27, &qword_27F47B6B0, type metadata accessor for PBHKMedicationDispenseRecord);
      v33 = v49;
      sub_251BB23C4(v20, v49, type metadata accessor for PBHKMedicationDispenseRecord);
      sub_251BB23C4(v33, v27, type metadata accessor for PBHKMedicationDispenseRecord);
      v34 = v54;
      v48(v27, 0, 1, v54);
      goto LABEL_7;
    }

    sub_251BB2308(v20, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  }

  v34 = v54;
LABEL_7:
  v35 = v52;
  sub_251B9ED44(&qword_27F47B230, type metadata accessor for PBHKMedicationDispenseRecord, &unk_251C80A4C);
  v36 = v53;
  sub_251C70564();
  if (v36)
  {
    return sub_251BB3444(v27, &qword_27F47B6B0, type metadata accessor for PBHKMedicationDispenseRecord);
  }

  sub_251BB33C4(v27, v35, &qword_27F47B6B0, type metadata accessor for PBHKMedicationDispenseRecord);
  if ((*(v50 + 48))(v35, 1, v34) == 1)
  {
    sub_251BB3444(v27, &qword_27F47B6B0, type metadata accessor for PBHKMedicationDispenseRecord);
    return sub_251BB3444(v35, &qword_27F47B6B0, type metadata accessor for PBHKMedicationDispenseRecord);
  }

  else
  {
    v38 = v47;
    sub_251BB23C4(v35, v47, type metadata accessor for PBHKMedicationDispenseRecord);
    if (v51 != 1)
    {
      sub_251C70454();
    }

    sub_251BB3444(v27, &qword_27F47B6B0, type metadata accessor for PBHKMedicationDispenseRecord);
    v39 = v45;
    sub_251BB23C4(v38, v45, type metadata accessor for PBHKMedicationDispenseRecord);
    swift_storeEnumTagMultiPayload();
    (*(v43 + 56))(v39, 0, 1, v32);
    v40 = v46;
    v41 = v44;
    swift_beginAccess();
    sub_251BB3050(v39, v40 + v41, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    return swift_endAccess();
  }
}

uint64_t sub_251B6998C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for PBHKMedicationOrder(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v42 - v9;
  v51 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord;
  v10 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v45 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v16 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  sub_251B67AAC(0, &qword_27F47B6B8, type metadata accessor for PBHKMedicationOrder, v10);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v52 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v42 - v26;
  v50 = v6;
  v28 = *(v6 + 56);
  v54 = v5;
  v29 = v5;
  v30 = v17;
  v48 = v28;
  v28(&v42 - v26, 1, 1, v29);
  v31 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  v46 = a1;
  v44 = v31;
  sub_251BB33C4(a1 + v31, v15, qword_2813E5D48, v51);
  v43 = v30;
  LODWORD(v51) = (*(v30 + 48))(v15, 1, v16);
  if (v51 == 1)
  {
    sub_251BB3444(v15, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v32 = v16;
  }

  else
  {
    sub_251BB23C4(v15, v22, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    sub_251BB23C4(v22, v20, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v32 = v16;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_251BB3444(v27, &qword_27F47B6B8, type metadata accessor for PBHKMedicationOrder);
      v33 = v49;
      sub_251BB23C4(v20, v49, type metadata accessor for PBHKMedicationOrder);
      sub_251BB23C4(v33, v27, type metadata accessor for PBHKMedicationOrder);
      v34 = v54;
      v48(v27, 0, 1, v54);
      goto LABEL_7;
    }

    sub_251BB2308(v20, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  }

  v34 = v54;
LABEL_7:
  v35 = v52;
  sub_251B9ED44(&qword_27F47B210, type metadata accessor for PBHKMedicationOrder, &unk_251C808E4);
  v36 = v53;
  sub_251C70564();
  if (v36)
  {
    return sub_251BB3444(v27, &qword_27F47B6B8, type metadata accessor for PBHKMedicationOrder);
  }

  sub_251BB33C4(v27, v35, &qword_27F47B6B8, type metadata accessor for PBHKMedicationOrder);
  if ((*(v50 + 48))(v35, 1, v34) == 1)
  {
    sub_251BB3444(v27, &qword_27F47B6B8, type metadata accessor for PBHKMedicationOrder);
    return sub_251BB3444(v35, &qword_27F47B6B8, type metadata accessor for PBHKMedicationOrder);
  }

  else
  {
    v38 = v47;
    sub_251BB23C4(v35, v47, type metadata accessor for PBHKMedicationOrder);
    if (v51 != 1)
    {
      sub_251C70454();
    }

    sub_251BB3444(v27, &qword_27F47B6B8, type metadata accessor for PBHKMedicationOrder);
    v39 = v45;
    sub_251BB23C4(v38, v45, type metadata accessor for PBHKMedicationOrder);
    swift_storeEnumTagMultiPayload();
    (*(v43 + 56))(v39, 0, 1, v32);
    v40 = v46;
    v41 = v44;
    swift_beginAccess();
    sub_251BB3050(v39, v40 + v41, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    return swift_endAccess();
  }
}

uint64_t sub_251B6A04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for PBHKDiagnosticTestResult(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v42 - v9;
  v51 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord;
  v10 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v45 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v16 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  sub_251B67AAC(0, &qword_27F47B6C0, type metadata accessor for PBHKDiagnosticTestResult, v10);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v52 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v42 - v26;
  v50 = v6;
  v28 = *(v6 + 56);
  v54 = v5;
  v29 = v5;
  v30 = v17;
  v48 = v28;
  v28(&v42 - v26, 1, 1, v29);
  v31 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  v46 = a1;
  v44 = v31;
  sub_251BB33C4(a1 + v31, v15, qword_2813E5D48, v51);
  v43 = v30;
  LODWORD(v51) = (*(v30 + 48))(v15, 1, v16);
  if (v51 == 1)
  {
    sub_251BB3444(v15, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v32 = v16;
  }

  else
  {
    sub_251BB23C4(v15, v22, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    sub_251BB23C4(v22, v20, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v32 = v16;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_251BB3444(v27, &qword_27F47B6C0, type metadata accessor for PBHKDiagnosticTestResult);
      v33 = v49;
      sub_251BB23C4(v20, v49, type metadata accessor for PBHKDiagnosticTestResult);
      sub_251BB23C4(v33, v27, type metadata accessor for PBHKDiagnosticTestResult);
      v34 = v54;
      v48(v27, 0, 1, v54);
      goto LABEL_7;
    }

    sub_251BB2308(v20, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  }

  v34 = v54;
LABEL_7:
  v35 = v52;
  sub_251B9ED44(&qword_27F47B1F0, type metadata accessor for PBHKDiagnosticTestResult, &unk_251C8077C);
  v36 = v53;
  sub_251C70564();
  if (v36)
  {
    return sub_251BB3444(v27, &qword_27F47B6C0, type metadata accessor for PBHKDiagnosticTestResult);
  }

  sub_251BB33C4(v27, v35, &qword_27F47B6C0, type metadata accessor for PBHKDiagnosticTestResult);
  if ((*(v50 + 48))(v35, 1, v34) == 1)
  {
    sub_251BB3444(v27, &qword_27F47B6C0, type metadata accessor for PBHKDiagnosticTestResult);
    return sub_251BB3444(v35, &qword_27F47B6C0, type metadata accessor for PBHKDiagnosticTestResult);
  }

  else
  {
    v38 = v47;
    sub_251BB23C4(v35, v47, type metadata accessor for PBHKDiagnosticTestResult);
    if (v51 != 1)
    {
      sub_251C70454();
    }

    sub_251BB3444(v27, &qword_27F47B6C0, type metadata accessor for PBHKDiagnosticTestResult);
    v39 = v45;
    sub_251BB23C4(v38, v45, type metadata accessor for PBHKDiagnosticTestResult);
    swift_storeEnumTagMultiPayload();
    (*(v43 + 56))(v39, 0, 1, v32);
    v40 = v46;
    v41 = v44;
    swift_beginAccess();
    sub_251BB3050(v39, v40 + v41, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    return swift_endAccess();
  }
}

uint64_t sub_251B6A70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for PBHKDiagnosticTestReport(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v42 - v9;
  v51 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord;
  v10 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v45 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v16 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  sub_251B67AAC(0, &qword_27F47B6C8, type metadata accessor for PBHKDiagnosticTestReport, v10);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v52 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v42 - v26;
  v50 = v6;
  v28 = *(v6 + 56);
  v54 = v5;
  v29 = v5;
  v30 = v17;
  v48 = v28;
  v28(&v42 - v26, 1, 1, v29);
  v31 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  v46 = a1;
  v44 = v31;
  sub_251BB33C4(a1 + v31, v15, qword_2813E5D48, v51);
  v43 = v30;
  LODWORD(v51) = (*(v30 + 48))(v15, 1, v16);
  if (v51 == 1)
  {
    sub_251BB3444(v15, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v32 = v16;
  }

  else
  {
    sub_251BB23C4(v15, v22, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    sub_251BB23C4(v22, v20, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v32 = v16;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_251BB3444(v27, &qword_27F47B6C8, type metadata accessor for PBHKDiagnosticTestReport);
      v33 = v49;
      sub_251BB23C4(v20, v49, type metadata accessor for PBHKDiagnosticTestReport);
      sub_251BB23C4(v33, v27, type metadata accessor for PBHKDiagnosticTestReport);
      v34 = v54;
      v48(v27, 0, 1, v54);
      goto LABEL_7;
    }

    sub_251BB2308(v20, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  }

  v34 = v54;
LABEL_7:
  v35 = v52;
  sub_251B9ED44(&qword_27F47B110, type metadata accessor for PBHKDiagnosticTestReport, &unk_251C7FDA4);
  v36 = v53;
  sub_251C70564();
  if (v36)
  {
    return sub_251BB3444(v27, &qword_27F47B6C8, type metadata accessor for PBHKDiagnosticTestReport);
  }

  sub_251BB33C4(v27, v35, &qword_27F47B6C8, type metadata accessor for PBHKDiagnosticTestReport);
  if ((*(v50 + 48))(v35, 1, v34) == 1)
  {
    sub_251BB3444(v27, &qword_27F47B6C8, type metadata accessor for PBHKDiagnosticTestReport);
    return sub_251BB3444(v35, &qword_27F47B6C8, type metadata accessor for PBHKDiagnosticTestReport);
  }

  else
  {
    v38 = v47;
    sub_251BB23C4(v35, v47, type metadata accessor for PBHKDiagnosticTestReport);
    if (v51 != 1)
    {
      sub_251C70454();
    }

    sub_251BB3444(v27, &qword_27F47B6C8, type metadata accessor for PBHKDiagnosticTestReport);
    v39 = v45;
    sub_251BB23C4(v38, v45, type metadata accessor for PBHKDiagnosticTestReport);
    swift_storeEnumTagMultiPayload();
    (*(v43 + 56))(v39, 0, 1, v32);
    v40 = v46;
    v41 = v44;
    swift_beginAccess();
    sub_251BB3050(v39, v40 + v41, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    return swift_endAccess();
  }
}

uint64_t sub_251B6ADCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for PBHKAccountOwner(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v42 - v9;
  v51 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord;
  v10 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v45 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v16 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  sub_251B67AAC(0, &qword_27F47B6D0, type metadata accessor for PBHKAccountOwner, v10);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v52 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v42 - v26;
  v50 = v6;
  v28 = *(v6 + 56);
  v54 = v5;
  v29 = v5;
  v30 = v17;
  v48 = v28;
  v28(&v42 - v26, 1, 1, v29);
  v31 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  v46 = a1;
  v44 = v31;
  sub_251BB33C4(a1 + v31, v15, qword_2813E5D48, v51);
  v43 = v30;
  LODWORD(v51) = (*(v30 + 48))(v15, 1, v16);
  if (v51 == 1)
  {
    sub_251BB3444(v15, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v32 = v16;
  }

  else
  {
    sub_251BB23C4(v15, v22, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    sub_251BB23C4(v22, v20, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v32 = v16;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_251BB3444(v27, &qword_27F47B6D0, type metadata accessor for PBHKAccountOwner);
      v33 = v49;
      sub_251BB23C4(v20, v49, type metadata accessor for PBHKAccountOwner);
      sub_251BB23C4(v33, v27, type metadata accessor for PBHKAccountOwner);
      v34 = v54;
      v48(v27, 0, 1, v54);
      goto LABEL_7;
    }

    sub_251BB2308(v20, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  }

  v34 = v54;
LABEL_7:
  v35 = v52;
  sub_251B9ED44(&qword_27F47B0F0, type metadata accessor for PBHKAccountOwner, &unk_251C7FC3C);
  v36 = v53;
  sub_251C70564();
  if (v36)
  {
    return sub_251BB3444(v27, &qword_27F47B6D0, type metadata accessor for PBHKAccountOwner);
  }

  sub_251BB33C4(v27, v35, &qword_27F47B6D0, type metadata accessor for PBHKAccountOwner);
  if ((*(v50 + 48))(v35, 1, v34) == 1)
  {
    sub_251BB3444(v27, &qword_27F47B6D0, type metadata accessor for PBHKAccountOwner);
    return sub_251BB3444(v35, &qword_27F47B6D0, type metadata accessor for PBHKAccountOwner);
  }

  else
  {
    v38 = v47;
    sub_251BB23C4(v35, v47, type metadata accessor for PBHKAccountOwner);
    if (v51 != 1)
    {
      sub_251C70454();
    }

    sub_251BB3444(v27, &qword_27F47B6D0, type metadata accessor for PBHKAccountOwner);
    v39 = v45;
    sub_251BB23C4(v38, v45, type metadata accessor for PBHKAccountOwner);
    swift_storeEnumTagMultiPayload();
    (*(v43 + 56))(v39, 0, 1, v32);
    v40 = v46;
    v41 = v44;
    swift_beginAccess();
    sub_251BB3050(v39, v40 + v41, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    return swift_endAccess();
  }
}

uint64_t sub_251B6B48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for PBHKProcedureRecord(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v42 - v9;
  v51 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord;
  v10 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v45 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v16 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  sub_251B67AAC(0, &qword_27F47B6D8, type metadata accessor for PBHKProcedureRecord, v10);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v52 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v42 - v26;
  v50 = v6;
  v28 = *(v6 + 56);
  v54 = v5;
  v29 = v5;
  v30 = v17;
  v48 = v28;
  v28(&v42 - v26, 1, 1, v29);
  v31 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  v46 = a1;
  v44 = v31;
  sub_251BB33C4(a1 + v31, v15, qword_2813E5D48, v51);
  v43 = v30;
  LODWORD(v51) = (*(v30 + 48))(v15, 1, v16);
  if (v51 == 1)
  {
    sub_251BB3444(v15, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v32 = v16;
  }

  else
  {
    sub_251BB23C4(v15, v22, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    sub_251BB23C4(v22, v20, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v32 = v16;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_251BB3444(v27, &qword_27F47B6D8, type metadata accessor for PBHKProcedureRecord);
      v33 = v49;
      sub_251BB23C4(v20, v49, type metadata accessor for PBHKProcedureRecord);
      sub_251BB23C4(v33, v27, type metadata accessor for PBHKProcedureRecord);
      v34 = v54;
      v48(v27, 0, 1, v54);
      goto LABEL_7;
    }

    sub_251BB2308(v20, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  }

  v34 = v54;
LABEL_7:
  v35 = v52;
  sub_251B9ED44(&qword_27F47B0D0, type metadata accessor for PBHKProcedureRecord, &unk_251C7FAD4);
  v36 = v53;
  sub_251C70564();
  if (v36)
  {
    return sub_251BB3444(v27, &qword_27F47B6D8, type metadata accessor for PBHKProcedureRecord);
  }

  sub_251BB33C4(v27, v35, &qword_27F47B6D8, type metadata accessor for PBHKProcedureRecord);
  if ((*(v50 + 48))(v35, 1, v34) == 1)
  {
    sub_251BB3444(v27, &qword_27F47B6D8, type metadata accessor for PBHKProcedureRecord);
    return sub_251BB3444(v35, &qword_27F47B6D8, type metadata accessor for PBHKProcedureRecord);
  }

  else
  {
    v38 = v47;
    sub_251BB23C4(v35, v47, type metadata accessor for PBHKProcedureRecord);
    if (v51 != 1)
    {
      sub_251C70454();
    }

    sub_251BB3444(v27, &qword_27F47B6D8, type metadata accessor for PBHKProcedureRecord);
    v39 = v45;
    sub_251BB23C4(v38, v45, type metadata accessor for PBHKProcedureRecord);
    swift_storeEnumTagMultiPayload();
    (*(v43 + 56))(v39, 0, 1, v32);
    v40 = v46;
    v41 = v44;
    swift_beginAccess();
    sub_251BB3050(v39, v40 + v41, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    return swift_endAccess();
  }
}

uint64_t sub_251B6BB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for PBHKMedicationRecord(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v42 - v9;
  v51 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord;
  v10 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v45 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v16 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  sub_251B67AAC(0, &qword_27F47B6E0, type metadata accessor for PBHKMedicationRecord, v10);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v52 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v42 - v26;
  v50 = v6;
  v28 = *(v6 + 56);
  v54 = v5;
  v29 = v5;
  v30 = v17;
  v48 = v28;
  v28(&v42 - v26, 1, 1, v29);
  v31 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  v46 = a1;
  v44 = v31;
  sub_251BB33C4(a1 + v31, v15, qword_2813E5D48, v51);
  v43 = v30;
  LODWORD(v51) = (*(v30 + 48))(v15, 1, v16);
  if (v51 == 1)
  {
    sub_251BB3444(v15, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v32 = v16;
  }

  else
  {
    sub_251BB23C4(v15, v22, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    sub_251BB23C4(v22, v20, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v32 = v16;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_251BB3444(v27, &qword_27F47B6E0, type metadata accessor for PBHKMedicationRecord);
      v33 = v49;
      sub_251BB23C4(v20, v49, type metadata accessor for PBHKMedicationRecord);
      sub_251BB23C4(v33, v27, type metadata accessor for PBHKMedicationRecord);
      v34 = v54;
      v48(v27, 0, 1, v54);
      goto LABEL_7;
    }

    sub_251BB2308(v20, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  }

  v34 = v54;
LABEL_7:
  v35 = v52;
  sub_251B9ED44(&qword_27F47B250, type metadata accessor for PBHKMedicationRecord, &unk_251C80BDC);
  v36 = v53;
  sub_251C70564();
  if (v36)
  {
    return sub_251BB3444(v27, &qword_27F47B6E0, type metadata accessor for PBHKMedicationRecord);
  }

  sub_251BB33C4(v27, v35, &qword_27F47B6E0, type metadata accessor for PBHKMedicationRecord);
  if ((*(v50 + 48))(v35, 1, v34) == 1)
  {
    sub_251BB3444(v27, &qword_27F47B6E0, type metadata accessor for PBHKMedicationRecord);
    return sub_251BB3444(v35, &qword_27F47B6E0, type metadata accessor for PBHKMedicationRecord);
  }

  else
  {
    v38 = v47;
    sub_251BB23C4(v35, v47, type metadata accessor for PBHKMedicationRecord);
    if (v51 != 1)
    {
      sub_251C70454();
    }

    sub_251BB3444(v27, &qword_27F47B6E0, type metadata accessor for PBHKMedicationRecord);
    v39 = v45;
    sub_251BB23C4(v38, v45, type metadata accessor for PBHKMedicationRecord);
    swift_storeEnumTagMultiPayload();
    (*(v43 + 56))(v39, 0, 1, v32);
    v40 = v46;
    v41 = v44;
    swift_beginAccess();
    sub_251BB3050(v39, v40 + v41, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    return swift_endAccess();
  }
}

uint64_t sub_251B6C20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_251BB279C();
  sub_251C70494();
  return swift_endAccess();
}

uint64_t sub_251B6C2A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v37 - v13;
  swift_beginAccess();
  v15 = a1[3];
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = a1[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {

    sub_251C70674();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v17 = a1[5];
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = a1[4] & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {

    sub_251C70674();
    if (v4)
    {
    }
  }

  result = sub_251B6C8FC(a1, a2, a3, a4);
  if (!v4)
  {
    v20 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
    swift_beginAccess();
    sub_251BB33C4(a1 + v20, v14, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v21 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
    if ((*(*(v21 - 8) + 48))(v14, 1, v21) != 1)
    {
      sub_251BB33C4(v14, v12, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload <= 6)
        {
          if (EnumCaseMultiPayload == 5)
          {
            sub_251B6D7F8(a1, a2, a3, a4);
          }

          else
          {
            sub_251B6DA80(a1, a2, a3, a4);
          }
        }

        else if (EnumCaseMultiPayload == 7)
        {
          sub_251B6DD08(a1, a2, a3, a4);
        }

        else if (EnumCaseMultiPayload == 8)
        {
          sub_251B6DF90(a1, a2, a3, a4);
        }
      }

      else if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          sub_251B6CDD8(a1, a2, a3, a4);
        }

        else
        {
          sub_251B6CB54(a1, a2, a3, a4);
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        sub_251B6D060(a1, a2, a3, a4);
      }

      else if (EnumCaseMultiPayload == 3)
      {
        sub_251B6D2E8(a1, a2, a3, a4);
      }

      else
      {
        sub_251B6D570(a1, a2, a3, a4);
      }

      sub_251BB2308(v12, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    }

    sub_251BB3444(v14, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v23 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__source);
    swift_beginAccess();
    v24 = *v23;
    v25 = v23[1];
    v26 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v26 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {

      sub_251C70674();
    }

    sub_251B6E218(a1, a2, a3, a4);
    v27 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__gatewayID);
    swift_beginAccess();
    v28 = *v27;
    v29 = v27[1];
    v30 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v30 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {

      sub_251C70674();
    }

    v31 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__iosDerivedDisplayName);
    swift_beginAccess();
    v32 = *v31;
    v33 = v31[1];
    v34 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v34 = v32 & 0xFFFFFFFFFFFFLL;
    }

    if (v34)
    {

      sub_251C70674();
    }

    v35 = a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecordOriginType;
    result = swift_beginAccess();
    if (*v35)
    {
      v36 = v35[8];
      v37[1] = *v35;
      v38 = v36;
      sub_251BB279C();
      return sub_251C70604();
    }
  }

  return result;
}

uint64_t sub_251B6C8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKConcept(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__primaryConcept;
  swift_beginAccess();
  sub_251BB33C4(a1 + v12, v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B6CB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKAllergyRecord(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251BB33C4(a1 + v11, v7, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v12 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251BB3444(v7, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_251BB23C4(v7, v10, type metadata accessor for PBHKAllergyRecord);
    sub_251B9ED44(&qword_27F47B330, type metadata accessor for PBHKAllergyRecord, &unk_251C815B4);
    sub_251C706A4();
    return sub_251BB2308(v10, type metadata accessor for PBHKAllergyRecord);
  }

  result = sub_251BB2308(v7, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  __break(1u);
  return result;
}

uint64_t sub_251B6CDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKConditionRecord(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251BB33C4(a1 + v11, v7, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v12 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251BB3444(v7, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_251BB23C4(v7, v10, type metadata accessor for PBHKConditionRecord);
    sub_251B9ED44(&qword_27F47B2F0, type metadata accessor for PBHKConditionRecord, &unk_251C812E4);
    sub_251C706A4();
    return sub_251BB2308(v10, type metadata accessor for PBHKConditionRecord);
  }

  result = sub_251BB2308(v7, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  __break(1u);
  return result;
}

uint64_t sub_251B6D060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKVaccinationRecord(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251BB33C4(a1 + v11, v7, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v12 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251BB3444(v7, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_251BB23C4(v7, v10, type metadata accessor for PBHKVaccinationRecord);
    sub_251B9ED44(&qword_27F47B2D0, type metadata accessor for PBHKVaccinationRecord, &unk_251C8117C);
    sub_251C706A4();
    return sub_251BB2308(v10, type metadata accessor for PBHKVaccinationRecord);
  }

  result = sub_251BB2308(v7, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  __break(1u);
  return result;
}

uint64_t sub_251B6D2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKMedicationDispenseRecord(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251BB33C4(a1 + v11, v7, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v12 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251BB3444(v7, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_251BB23C4(v7, v10, type metadata accessor for PBHKMedicationDispenseRecord);
    sub_251B9ED44(&qword_27F47B230, type metadata accessor for PBHKMedicationDispenseRecord, &unk_251C80A4C);
    sub_251C706A4();
    return sub_251BB2308(v10, type metadata accessor for PBHKMedicationDispenseRecord);
  }

  result = sub_251BB2308(v7, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  __break(1u);
  return result;
}

uint64_t sub_251B6D570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKMedicationOrder(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251BB33C4(a1 + v11, v7, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v12 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251BB3444(v7, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_251BB23C4(v7, v10, type metadata accessor for PBHKMedicationOrder);
    sub_251B9ED44(&qword_27F47B210, type metadata accessor for PBHKMedicationOrder, &unk_251C808E4);
    sub_251C706A4();
    return sub_251BB2308(v10, type metadata accessor for PBHKMedicationOrder);
  }

  result = sub_251BB2308(v7, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  __break(1u);
  return result;
}

uint64_t sub_251B6D7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKDiagnosticTestResult(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251BB33C4(a1 + v11, v7, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v12 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251BB3444(v7, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_251BB23C4(v7, v10, type metadata accessor for PBHKDiagnosticTestResult);
    sub_251B9ED44(&qword_27F47B1F0, type metadata accessor for PBHKDiagnosticTestResult, &unk_251C8077C);
    sub_251C706A4();
    return sub_251BB2308(v10, type metadata accessor for PBHKDiagnosticTestResult);
  }

  result = sub_251BB2308(v7, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  __break(1u);
  return result;
}

uint64_t sub_251B6DA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKDiagnosticTestReport(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251BB33C4(a1 + v11, v7, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v12 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251BB3444(v7, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_251BB23C4(v7, v10, type metadata accessor for PBHKDiagnosticTestReport);
    sub_251B9ED44(&qword_27F47B110, type metadata accessor for PBHKDiagnosticTestReport, &unk_251C7FDA4);
    sub_251C706A4();
    return sub_251BB2308(v10, type metadata accessor for PBHKDiagnosticTestReport);
  }

  result = sub_251BB2308(v7, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  __break(1u);
  return result;
}

uint64_t sub_251B6DD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKAccountOwner(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251BB33C4(a1 + v11, v7, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v12 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251BB3444(v7, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_251BB23C4(v7, v10, type metadata accessor for PBHKAccountOwner);
    sub_251B9ED44(&qword_27F47B0F0, type metadata accessor for PBHKAccountOwner, &unk_251C7FC3C);
    sub_251C706A4();
    return sub_251BB2308(v10, type metadata accessor for PBHKAccountOwner);
  }

  result = sub_251BB2308(v7, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  __break(1u);
  return result;
}

uint64_t sub_251B6DF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKProcedureRecord(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251BB33C4(a1 + v11, v7, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v12 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251BB3444(v7, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_251BB23C4(v7, v10, type metadata accessor for PBHKProcedureRecord);
    sub_251B9ED44(&qword_27F47B0D0, type metadata accessor for PBHKProcedureRecord, &unk_251C7FAD4);
    sub_251C706A4();
    return sub_251BB2308(v10, type metadata accessor for PBHKProcedureRecord);
  }

  result = sub_251BB2308(v7, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  __break(1u);
  return result;
}

uint64_t sub_251B6E218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v16 = a3;
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for PBHKMedicationRecord(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251BB33C4(a1 + v11, v7, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v12 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    return sub_251BB3444(v7, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  }

  if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_251BB23C4(v7, v10, type metadata accessor for PBHKMedicationRecord);
    sub_251B9ED44(&qword_27F47B250, type metadata accessor for PBHKMedicationRecord, &unk_251C80BDC);
    sub_251C706A4();
    v14 = type metadata accessor for PBHKMedicationRecord;
    v15 = v10;
  }

  else
  {
    v14 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord;
    v15 = v7;
  }

  return sub_251BB2308(v15, v14);
}