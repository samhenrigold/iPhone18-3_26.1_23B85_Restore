void sub_214074D48(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 56);
  v10 = *(v3 + 64);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 40) = v5;
    *(v3 + 48) = v4;
    *(v3 + 56) = v7;
    *(v3 + 64) = v6;
    *(v3 + 72) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 40) = v5;
    *(v3 + 48) = v4;
    *(v3 + 56) = v7;
    *(v3 + 64) = v6;
    *(v3 + 72) = v8;
  }

  free(v2);
}

uint64_t sub_214074E28@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[10];
  v14 = v1[9];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[11];
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 185);
  v5 = *(v16 + 9);
  v6 = v1[6];
  v11[0] = v1[5];
  v11[1] = v6;
  v8 = v1[8];
  v12 = v1[7];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_214074EA4(uint64_t a1)
{
  v3 = v1[10];
  v10[4] = v1[9];
  v10[5] = v3;
  v11[0] = v1[11];
  *(v11 + 9) = *(v1 + 185);
  v4 = v1[6];
  v10[0] = v1[5];
  v10[1] = v4;
  v5 = v1[8];
  v10[2] = v1[7];
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[9] = *(a1 + 64);
  v1[10] = v6;
  v1[11] = *(a1 + 96);
  *(v1 + 185) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[5] = *a1;
  v1[6] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[7] = result;
  v1[8] = v9;
  return result;
}

uint64_t sub_214074F54@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[18];
  v14 = v1[17];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[19];
  v4 = v16[0];
  v5 = v1[14];
  v11[0] = v1[13];
  v11[1] = v5;
  v7 = v1[16];
  v12 = v1[15];
  v6 = v12;
  v13 = v7;
  *(v16 + 9) = *(v1 + 313);
  v8 = *(v16 + 9);
  *a1 = v11[0];
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v8;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_214074FD4(uint64_t a1)
{
  v3 = v1[18];
  v10[4] = v1[17];
  v10[5] = v3;
  v11[0] = v1[19];
  v4 = v1[14];
  v10[0] = v1[13];
  v10[1] = v4;
  v5 = v1[16];
  v10[2] = v1[15];
  v10[3] = v5;
  *(v11 + 9) = *(v1 + 313);
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[17] = *(a1 + 64);
  v1[18] = v6;
  v1[19] = *(a1 + 96);
  *(v1 + 313) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[13] = *a1;
  v1[14] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[15] = result;
  v1[16] = v9;
  return result;
}

unint64_t sub_214075108@<X0>(uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = 128;
  *(v11 + 24) = 0;
  *(v10 + 16) = a2;
  *(v10 + 24) = v11;
  *(v9 + 32) = v10;
  v12 = sub_2142E0070(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v13 + 16) = a4;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  return sub_214042A28(inited, a5);
}

uint64_t sub_21407524C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_21407527C(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2140752D4()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_214075304(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_2140753BC@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[8];
  v14 = v1[7];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[9];
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 153);
  v5 = *(v16 + 9);
  v6 = v1[4];
  v11[0] = v1[3];
  v11[1] = v6;
  v8 = v1[6];
  v12 = v1[5];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

uint64_t sub_214075580(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904898, type metadata accessor for LinkPresentation.MessagesPayload, aM4);
  result = sub_214075624(&qword_27C9048A0, type metadata accessor for LinkPresentation.MessagesPayload, byte_214700648);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214075624(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21407566C(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C9048A8, type metadata accessor for LinkPresentation.LinkMetadata, byte_214700670);
  result = sub_214075624(&qword_27C9048B0, type metadata accessor for LinkPresentation.LinkMetadata, aA_62);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2140756F0(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C9048B8, type metadata accessor for LinkPresentation.ARAssetMetadata, aI_71);
  result = sub_214075624(&qword_27C9048C0, type metadata accessor for LinkPresentation.ARAssetMetadata, byte_2147006E8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214075794(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C9048C8, type metadata accessor for LinkPresentation.IconMetadata, byte_214700710);
  result = sub_214075624(&qword_27C9048D0, type metadata accessor for LinkPresentation.IconMetadata, byte_214700738);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214075838(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C9048D8, type metadata accessor for LinkPresentation.ImageMetadata, byte_214700760);
  result = sub_214075624(&qword_27C9048E0, type metadata accessor for LinkPresentation.ImageMetadata, aQ_58);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2140758DC(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C9048E8, type metadata accessor for LinkPresentation.ArtworkMetadata, aY_55);
  result = sub_214075624(&qword_27C9048F0, type metadata accessor for LinkPresentation.ArtworkMetadata, byte_2147007D8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214075980(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C9048F8, type metadata accessor for LinkPresentation.VideoMetadata, asc_214700800);
  result = sub_214075624(&qword_27C904900, type metadata accessor for LinkPresentation.VideoMetadata, byte_214700828);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214075A24(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904908, type metadata accessor for LinkPresentation.AudioMetadata, byte_214700850);
  result = sub_214075624(&qword_27C904910, type metadata accessor for LinkPresentation.AudioMetadata, aA_63);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214075AF4()
{
  result = qword_27C904918;
  if (!qword_27C904918)
  {
    result = swift_getWitnessTable(aI_72, &type metadata for LinkPresentation.LyricExcerptMetadata, v0, v1);
    atomic_store(result, &qword_27C904918);
  }

  return result;
}

unint64_t sub_214075B48()
{
  result = qword_27C904920;
  if (!qword_27C904920)
  {
    result = swift_getWitnessTable(byte_2147008C8, &type metadata for LinkPresentation.LyricExcerptMetadata, v0, v1);
    atomic_store(result, &qword_27C904920);
  }

  return result;
}

uint64_t sub_214075B9C(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904928, type metadata accessor for LinkPresentation.SpecializationMetadata, byte_214703820);
  result = sub_214075624(&qword_27C904930, type metadata accessor for LinkPresentation.SpecializationMetadata, byte_214703848);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214075C40(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904938, type metadata accessor for LinkPresentation.SongMetadata, byte_2147008F0);
  result = sub_214075624(&qword_27C904940, type metadata accessor for LinkPresentation.SongMetadata, byte_214700918);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214075CC4(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904948, type metadata accessor for LinkPresentation.AlbumMetadata, aE_92);
  result = sub_214075624(&qword_27C904950, type metadata accessor for LinkPresentation.AlbumMetadata, aQ_59);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214075D48(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904958, type metadata accessor for LinkPresentation.MusicVideoMetadata, aY_56);
  result = sub_214075624(&qword_27C904960, type metadata accessor for LinkPresentation.MusicVideoMetadata, asc_2147009B8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214075DCC(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904968, type metadata accessor for LinkPresentation.ArtistMetadata, asc_2147009E0);
  result = sub_214075624(&qword_27C904970, type metadata accessor for LinkPresentation.ArtistMetadata, asc_214700A08);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214075E50(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904978, type metadata accessor for LinkPresentation.PlaylistMetadata, asc_214700A30);
  result = sub_214075624(&qword_27C904980, type metadata accessor for LinkPresentation.PlaylistMetadata, byte_214700A58);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214075ED4(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904988, type metadata accessor for LinkPresentation.RadioMetadata, byte_214700A80);
  result = sub_214075624(&qword_27C904990, type metadata accessor for LinkPresentation.RadioMetadata, a1_22);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214075F58(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904998, type metadata accessor for LinkPresentation.SoftwareMetadata, a9_22);
  result = sub_214075624(&qword_27C9049A0, type metadata accessor for LinkPresentation.SoftwareMetadata, aM_150);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214075FDC(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C9049A8, type metadata accessor for LinkPresentation.BookMetadata, aM_151);
  result = sub_214075624(&qword_27C9049B0, type metadata accessor for LinkPresentation.BookMetadata, byte_214700B48);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214076060(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C9049B8, type metadata accessor for LinkPresentation.AudioBookMetadata, byte_214700B70);
  result = sub_214075624(&qword_27C9049C0, type metadata accessor for LinkPresentation.AudioBookMetadata, aA_64);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2140760E4(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C9049C8, type metadata accessor for LinkPresentation.PodcastEpisodeMetadata, aI_73);
  result = sub_214075624(&qword_27C9049D0, type metadata accessor for LinkPresentation.PodcastEpisodeMetadata, byte_214700BE8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214076168(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C9049D8, type metadata accessor for LinkPresentation.PodcastMetadata, byte_214700C10);
  result = sub_214075624(&qword_27C9049E0, type metadata accessor for LinkPresentation.PodcastMetadata, byte_214700C38);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2140761EC(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C9049E8, type metadata accessor for LinkPresentation.TVEpisodeMetadata, byte_214700C60);
  result = sub_214075624(&qword_27C9049F0, type metadata accessor for LinkPresentation.TVEpisodeMetadata, aQ_60);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214076270(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C9049F8, type metadata accessor for LinkPresentation.TVSeasonMetadata, aY_57);
  result = sub_214075624(&qword_27C904A00, type metadata accessor for LinkPresentation.TVSeasonMetadata, byte_214700CD8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2140762F4(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904A08, type metadata accessor for LinkPresentation.TVShowMetadata, asc_214700D00);
  result = sub_214075624(&qword_27C904A10, type metadata accessor for LinkPresentation.TVShowMetadata, byte_214700D28);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214076378(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904A18, type metadata accessor for LinkPresentation.MovieMetadata, byte_214700D50);
  result = sub_214075624(&qword_27C904A20, type metadata accessor for LinkPresentation.MovieMetadata, aA_65);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2140763FC(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904A28, type metadata accessor for LinkPresentation.MovieBundleMetadata, aI_74);
  result = sub_214075624(&qword_27C904A30, type metadata accessor for LinkPresentation.MovieBundleMetadata, byte_214700DC8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214076480(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904A38, type metadata accessor for LinkPresentation.EncodedToken, byte_214700DF0);
  result = sub_214075624(&qword_27C904A40, type metadata accessor for LinkPresentation.EncodedToken, byte_214700E18);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214076530()
{
  result = qword_27C904A48;
  if (!qword_27C904A48)
  {
    result = swift_getWitnessTable(aB_7, &type metadata for LinkPresentation.CloudSharingMetadata, v0, v1);
    atomic_store(result, &qword_27C904A48);
  }

  return result;
}

unint64_t sub_214076584()
{
  result = qword_27C904A50;
  if (!qword_27C904A50)
  {
    result = swift_getWitnessTable(aQ_61, &type metadata for LinkPresentation.CloudSharingMetadata, v0, v1);
    atomic_store(result, &qword_27C904A50);
  }

  return result;
}

unint64_t sub_214076604()
{
  result = qword_27C904A58;
  if (!qword_27C904A58)
  {
    result = swift_getWitnessTable(aY_58, &type metadata for LinkPresentation.CloudFamilyInvitationMetadata, v0, v1);
    atomic_store(result, &qword_27C904A58);
  }

  return result;
}

unint64_t sub_214076658()
{
  result = qword_27C904A60;
  if (!qword_27C904A60)
  {
    result = swift_getWitnessTable(asc_214700EB8, &type metadata for LinkPresentation.CloudFamilyInvitationMetadata, v0, v1);
    atomic_store(result, &qword_27C904A60);
  }

  return result;
}

unint64_t sub_2140766D8()
{
  result = qword_27C904A68;
  if (!qword_27C904A68)
  {
    result = swift_getWitnessTable(asc_214700EE0, &type metadata for LinkPresentation.GameCenterInvitationMetadata, v0, v1);
    atomic_store(result, &qword_27C904A68);
  }

  return result;
}

unint64_t sub_21407672C()
{
  result = qword_27C904A70;
  if (!qword_27C904A70)
  {
    result = swift_getWitnessTable(asc_214700F08, &type metadata for LinkPresentation.GameCenterInvitationMetadata, v0, v1);
    atomic_store(result, &qword_27C904A70);
  }

  return result;
}

unint64_t sub_2140767AC()
{
  result = qword_27C904A78;
  if (!qword_27C904A78)
  {
    result = swift_getWitnessTable(asc_214700F30, &type metadata for LinkPresentation.PostalAddress, v0, v1);
    atomic_store(result, &qword_27C904A78);
  }

  return result;
}

unint64_t sub_214076800()
{
  result = qword_27C904A80;
  if (!qword_27C904A80)
  {
    result = swift_getWitnessTable(byte_214700F58, &type metadata for LinkPresentation.PostalAddress, v0, v1);
    atomic_store(result, &qword_27C904A80);
  }

  return result;
}

unint64_t sub_214076880()
{
  result = qword_27C904A88;
  if (!qword_27C904A88)
  {
    result = swift_getWitnessTable(byte_214700F80, &type metadata for LinkPresentation.MapMetadata, v0, v1);
    atomic_store(result, &qword_27C904A88);
  }

  return result;
}

unint64_t sub_2140768D4()
{
  result = qword_27C904A90;
  if (!qword_27C904A90)
  {
    result = swift_getWitnessTable(a1_23, &type metadata for LinkPresentation.MapMetadata, v0, v1);
    atomic_store(result, &qword_27C904A90);
  }

  return result;
}

unint64_t sub_214076954()
{
  result = qword_27C904A98;
  if (!qword_27C904A98)
  {
    result = swift_getWitnessTable(a9_23, &type metadata for LinkPresentation.MapCollectionMetadata, v0, v1);
    atomic_store(result, &qword_27C904A98);
  }

  return result;
}

unint64_t sub_2140769A8()
{
  result = qword_27C904AA0;
  if (!qword_27C904AA0)
  {
    result = swift_getWitnessTable(aM_152, &type metadata for LinkPresentation.MapCollectionMetadata, v0, v1);
    atomic_store(result, &qword_27C904AA0);
  }

  return result;
}

unint64_t sub_214076A28()
{
  result = qword_27C904AA8;
  if (!qword_27C904AA8)
  {
    result = swift_getWitnessTable(aM_153, &type metadata for LinkPresentation.MapCollectionPublisherMetadata, v0, v1);
    atomic_store(result, &qword_27C904AA8);
  }

  return result;
}

unint64_t sub_214076A7C()
{
  result = qword_27C904AB0;
  if (!qword_27C904AB0)
  {
    result = swift_getWitnessTable(byte_214701048, &type metadata for LinkPresentation.MapCollectionPublisherMetadata, v0, v1);
    atomic_store(result, &qword_27C904AB0);
  }

  return result;
}

uint64_t sub_214076AD0(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904AB8, type metadata accessor for LinkPresentation.FileMetadata, byte_214701070);
  result = sub_214075624(&qword_27C904AC0, type metadata accessor for LinkPresentation.FileMetadata, aA_66);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214076B80()
{
  result = qword_27C904AC8;
  if (!qword_27C904AC8)
  {
    result = swift_getWitnessTable(aI_75, &type metadata for LinkPresentation.AppleNewsMetadata, v0, v1);
    atomic_store(result, &qword_27C904AC8);
  }

  return result;
}

unint64_t sub_214076BD4()
{
  result = qword_27C904AD0;
  if (!qword_27C904AD0)
  {
    result = swift_getWitnessTable(byte_2147010E8, &type metadata for LinkPresentation.AppleNewsMetadata, v0, v1);
    atomic_store(result, &qword_27C904AD0);
  }

  return result;
}

unint64_t sub_214076C54()
{
  result = qword_27C904AD8;
  if (!qword_27C904AD8)
  {
    result = swift_getWitnessTable(byte_214701110, &type metadata for LinkPresentation.StocksMetadata, v0, v1);
    atomic_store(result, &qword_27C904AD8);
  }

  return result;
}

unint64_t sub_214076CA8()
{
  result = qword_27C904AE0;
  if (!qword_27C904AE0)
  {
    result = swift_getWitnessTable(byte_214701138, &type metadata for LinkPresentation.StocksMetadata, v0, v1);
    atomic_store(result, &qword_27C904AE0);
  }

  return result;
}

unint64_t sub_214076D28()
{
  result = qword_27C904AE8;
  if (!qword_27C904AE8)
  {
    result = swift_getWitnessTable(byte_214701160, &type metadata for LinkPresentation.AppleTVMetadata, v0, v1);
    atomic_store(result, &qword_27C904AE8);
  }

  return result;
}

unint64_t sub_214076D7C()
{
  result = qword_27C904AF0;
  if (!qword_27C904AF0)
  {
    result = swift_getWitnessTable(aQ_62, &type metadata for LinkPresentation.AppleTVMetadata, v0, v1);
    atomic_store(result, &qword_27C904AF0);
  }

  return result;
}

uint64_t sub_214076DD0(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904AF8, type metadata accessor for LinkPresentation.PhotosMomentMetadata, aY_59);
  result = sub_214075624(&qword_27C904B00, type metadata accessor for LinkPresentation.PhotosMomentMetadata, byte_2147011D8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214076E80()
{
  result = qword_27C904B08;
  if (!qword_27C904B08)
  {
    result = swift_getWitnessTable(asc_214701200, &type metadata for LinkPresentation.PhotosStatusMetadata, v0, v1);
    atomic_store(result, &qword_27C904B08);
  }

  return result;
}

unint64_t sub_214076ED4()
{
  result = qword_27C904B10;
  if (!qword_27C904B10)
  {
    result = swift_getWitnessTable(byte_214701228, &type metadata for LinkPresentation.PhotosStatusMetadata, v0, v1);
    atomic_store(result, &qword_27C904B10);
  }

  return result;
}

unint64_t sub_214076F54()
{
  result = qword_27C904B18;
  if (!qword_27C904B18)
  {
    result = swift_getWitnessTable(byte_214701250, &type metadata for LinkPresentation.PhotosSharedLibraryInvitationMetadata, v0, v1);
    atomic_store(result, &qword_27C904B18);
  }

  return result;
}

unint64_t sub_214076FA8()
{
  result = qword_27C904B20;
  if (!qword_27C904B20)
  {
    result = swift_getWitnessTable(aA_67, &type metadata for LinkPresentation.PhotosSharedLibraryInvitationMetadata, v0, v1);
    atomic_store(result, &qword_27C904B20);
  }

  return result;
}

unint64_t sub_214077028()
{
  result = qword_27C904B28;
  if (!qword_27C904B28)
  {
    result = swift_getWitnessTable(aI_76, &type metadata for LinkPresentation.BusinessChatMetadata, v0, v1);
    atomic_store(result, &qword_27C904B28);
  }

  return result;
}

unint64_t sub_21407707C()
{
  result = qword_27C904B30;
  if (!qword_27C904B30)
  {
    result = swift_getWitnessTable(byte_2147012C8, &type metadata for LinkPresentation.BusinessChatMetadata, v0, v1);
    atomic_store(result, &qword_27C904B30);
  }

  return result;
}

uint64_t sub_2140770D0(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904B38, type metadata accessor for LinkPresentation.WalletPassMetadata, byte_2147012F0);
  result = sub_214075624(&qword_27C904B40, type metadata accessor for LinkPresentation.WalletPassMetadata, byte_214701318);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214077180()
{
  result = qword_27C904B48;
  if (!qword_27C904B48)
  {
    result = swift_getWitnessTable(aY_60, &type metadata for LinkPresentation.AppStoreStoryMetadata, v0, v1);
    atomic_store(result, &qword_27C904B48);
  }

  return result;
}

unint64_t sub_2140771D4()
{
  result = qword_27C904B50;
  if (!qword_27C904B50)
  {
    result = swift_getWitnessTable(aQ_63, &type metadata for LinkPresentation.AppStoreStoryMetadata, v0, v1);
    atomic_store(result, &qword_27C904B50);
  }

  return result;
}

unint64_t sub_214077254()
{
  result = qword_27C904B58;
  if (!qword_27C904B58)
  {
    result = swift_getWitnessTable(aY_61, &type metadata for LinkPresentation.SummarizedLinkMetadata, v0, v1);
    atomic_store(result, &qword_27C904B58);
  }

  return result;
}

unint64_t sub_2140772A8()
{
  result = qword_27C904B60;
  if (!qword_27C904B60)
  {
    result = swift_getWitnessTable(asc_2147013B8, &type metadata for LinkPresentation.SummarizedLinkMetadata, v0, v1);
    atomic_store(result, &qword_27C904B60);
  }

  return result;
}

unint64_t sub_214077328()
{
  result = qword_27C904B68;
  if (!qword_27C904B68)
  {
    result = swift_getWitnessTable(asc_2147013E0, &type metadata for LinkPresentation.AssociatedApplicationMetadata, v0, v1);
    atomic_store(result, &qword_27C904B68);
  }

  return result;
}

unint64_t sub_21407737C()
{
  result = qword_27C904B70;
  if (!qword_27C904B70)
  {
    result = swift_getWitnessTable(asc_214701408, &type metadata for LinkPresentation.AssociatedApplicationMetadata, v0, v1);
    atomic_store(result, &qword_27C904B70);
  }

  return result;
}

unint64_t sub_2140773FC()
{
  result = qword_27C904B78;
  if (!qword_27C904B78)
  {
    result = swift_getWitnessTable(asc_214701430, &type metadata for LinkPresentation.FaceTimeInviteMetadata, v0, v1);
    atomic_store(result, &qword_27C904B78);
  }

  return result;
}

unint64_t sub_214077450()
{
  result = qword_27C904B80;
  if (!qword_27C904B80)
  {
    result = swift_getWitnessTable(byte_214701458, &type metadata for LinkPresentation.FaceTimeInviteMetadata, v0, v1);
    atomic_store(result, &qword_27C904B80);
  }

  return result;
}

unint64_t sub_2140774D0()
{
  result = qword_27C904B88;
  if (!qword_27C904B88)
  {
    result = swift_getWitnessTable(byte_214701480, &type metadata for LinkPresentation.GameActivityMetadata, v0, v1);
    atomic_store(result, &qword_27C904B88);
  }

  return result;
}

unint64_t sub_214077524()
{
  result = qword_27C904B90;
  if (!qword_27C904B90)
  {
    result = swift_getWitnessTable(a1_24, &type metadata for LinkPresentation.GameActivityMetadata, v0, v1);
    atomic_store(result, &qword_27C904B90);
  }

  return result;
}

unint64_t sub_2140775A4()
{
  result = qword_27C904B98;
  if (!qword_27C904B98)
  {
    result = swift_getWitnessTable(a9_24, &type metadata for LinkPresentation.PasswordsInviteMetadata, v0, v1);
    atomic_store(result, &qword_27C904B98);
  }

  return result;
}

unint64_t sub_2140775F8()
{
  result = qword_27C904BA0;
  if (!qword_27C904BA0)
  {
    result = swift_getWitnessTable(aM_154, &type metadata for LinkPresentation.PasswordsInviteMetadata, v0, v1);
    atomic_store(result, &qword_27C904BA0);
  }

  return result;
}

uint64_t sub_21407764C(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904BA8, type metadata accessor for LinkPresentation.SharedObjectMetadata, aMl_0);
  result = sub_214075624(&qword_27C904BB0, type metadata accessor for LinkPresentation.SharedObjectMetadata, byte_214701548);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2140776FC()
{
  result = qword_27C904BB8;
  if (!qword_27C904BB8)
  {
    result = swift_getWitnessTable(aI_77, &type metadata for LinkPresentation.PlaceholderARAsset.Properties, v0, v1);
    atomic_store(result, &qword_27C904BB8);
  }

  return result;
}

unint64_t sub_214077750()
{
  result = qword_27C904BC0;
  if (!qword_27C904BC0)
  {
    result = swift_getWitnessTable(byte_2147015E8, &type metadata for LinkPresentation.PlaceholderARAsset.Properties, v0, v1);
    atomic_store(result, &qword_27C904BC0);
  }

  return result;
}

unint64_t sub_2140777D0()
{
  result = qword_27C904BC8;
  if (!qword_27C904BC8)
  {
    result = swift_getWitnessTable(byte_214701570, &type metadata for LinkPresentation.PlaceholderARAsset, v0, v1);
    atomic_store(result, &qword_27C904BC8);
  }

  return result;
}

unint64_t sub_214077824()
{
  result = qword_27C904BD0;
  if (!qword_27C904BD0)
  {
    result = swift_getWitnessTable(aA_68, &type metadata for LinkPresentation.PlaceholderARAsset, v0, v1);
    atomic_store(result, &qword_27C904BD0);
  }

  return result;
}

unint64_t sub_2140778A4()
{
  result = qword_27C904BD8;
  if (!qword_27C904BD8)
  {
    result = swift_getWitnessTable(byte_214701660, &type metadata for LinkPresentation.PlaceholderImage.Properties, v0, v1);
    atomic_store(result, &qword_27C904BD8);
  }

  return result;
}

unint64_t sub_2140778F8()
{
  result = qword_27C904BE0;
  if (!qword_27C904BE0)
  {
    result = swift_getWitnessTable(aQ_64, &type metadata for LinkPresentation.PlaceholderImage.Properties, v0, v1);
    atomic_store(result, &qword_27C904BE0);
  }

  return result;
}

unint64_t sub_214077978()
{
  result = qword_27C904BE8;
  if (!qword_27C904BE8)
  {
    result = swift_getWitnessTable(byte_214701610, &type metadata for LinkPresentation.PlaceholderImage, v0, v1);
    atomic_store(result, &qword_27C904BE8);
  }

  return result;
}

unint64_t sub_2140779CC()
{
  result = qword_27C904BF0;
  if (!qword_27C904BF0)
  {
    result = swift_getWitnessTable(byte_214701638, &type metadata for LinkPresentation.PlaceholderImage, v0, v1);
    atomic_store(result, &qword_27C904BF0);
  }

  return result;
}

unint64_t sub_214077A4C()
{
  result = qword_27C904BF8;
  if (!qword_27C904BF8)
  {
    result = swift_getWitnessTable(byte_214703870, &type metadata for LinkPresentation.Video.Attachment, v0, v1);
    atomic_store(result, &qword_27C904BF8);
  }

  return result;
}

unint64_t sub_214077AA0()
{
  result = qword_27C904C00;
  if (!qword_27C904C00)
  {
    result = swift_getWitnessTable(aAe_0, &type metadata for LinkPresentation.Video.Attachment, v0, v1);
    atomic_store(result, &qword_27C904C00);
  }

  return result;
}

uint64_t sub_214077B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214077B5C()
{
  result = qword_27C904C08;
  if (!qword_27C904C08)
  {
    result = swift_getWitnessTable(asc_214701700, &type metadata for LinkPresentation.Video.Properties, v0, v1);
    atomic_store(result, &qword_27C904C08);
  }

  return result;
}

unint64_t sub_214077BB0()
{
  result = qword_27C904C10;
  if (!qword_27C904C10)
  {
    result = swift_getWitnessTable(byte_214701728, &type metadata for LinkPresentation.Video.Properties, v0, v1);
    atomic_store(result, &qword_27C904C10);
  }

  return result;
}

uint64_t sub_214077C04(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904C18, type metadata accessor for LinkPresentation.Video, aY_62);
  result = sub_214075624(&qword_27C904C20, type metadata accessor for LinkPresentation.Video, byte_2147016D8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214077CA8(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904C28, type metadata accessor for LinkPresentation.Audio, byte_214701750);
  result = sub_214075624(&qword_27C904C30, type metadata accessor for LinkPresentation.Audio, aA_69);
  *(a1 + 16) = result;
  return result;
}

void sub_214077D84(uint64_t a1)
{
  sub_2140782FC(319, &qword_280B30770, type metadata accessor for LinkPresentation.LinkMetadata);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_214077E3C(uint64_t a1)
{
  sub_2140782FC(319, &qword_280B30B80, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B34BD8, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        sub_21403BEC8(319, &qword_280B2E740, &type metadata for Color);
        if (v4 <= 0x3F)
        {
          sub_21403BEC8(319, &qword_280B2F3E0, &type metadata for LinkPresentation.PlaceholderImage);
          if (v5 <= 0x3F)
          {
            sub_2140782FC(319, &qword_280B30738, type metadata accessor for LinkPresentation.IconMetadata);
            if (v6 <= 0x3F)
            {
              sub_21403BEC8(319, &qword_280B2F3D8, &type metadata for LinkPresentation.PlaceholderARAsset);
              if (v7 <= 0x3F)
              {
                sub_2140782FC(319, &qword_280B30678, type metadata accessor for LinkPresentation.ARAssetMetadata);
                if (v8 <= 0x3F)
                {
                  sub_214078E0C(319, &qword_280B2E430, &qword_27C904C70, &unk_2146EE700);
                  if (v9 <= 0x3F)
                  {
                    sub_2140782FC(319, &qword_280B306E8, type metadata accessor for LinkPresentation.ImageMetadata);
                    if (v10 <= 0x3F)
                    {
                      sub_214078E0C(319, &qword_280B2E448, &qword_27C904C78, &qword_2146F6490);
                      if (v11 <= 0x3F)
                      {
                        sub_2140782FC(319, &qword_280B30558, type metadata accessor for LinkPresentation.Video);
                        if (v12 <= 0x3F)
                        {
                          sub_2140782FC(319, &qword_280B306B0, type metadata accessor for LinkPresentation.VideoMetadata);
                          if (v13 <= 0x3F)
                          {
                            sub_2140782FC(319, &qword_280B30570, type metadata accessor for LinkPresentation.Audio);
                            if (v14 <= 0x3F)
                            {
                              sub_2140782FC(319, &qword_280B30700, type metadata accessor for LinkPresentation.AudioMetadata);
                              if (v15 <= 0x3F)
                              {
                                sub_214078E0C(319, &qword_280B2E438, &qword_27C904C80, &unk_2146EE710);
                                if (v16 <= 0x3F)
                                {
                                  sub_214078E0C(319, &qword_280B2E458, &qword_27C904C88, &qword_2146F64B0);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_214078E0C(319, &qword_280B2E440, &qword_27C904C90, &unk_2146EE720);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_214078E0C(319, &qword_280B2E450, &qword_27C904C98, &qword_2146F64D0);
                                      if (v19 <= 0x3F)
                                      {
                                        sub_2140782FC(319, &qword_280B30588, type metadata accessor for LinkPresentation.SpecializationMetadata);
                                        if (v20 <= 0x3F)
                                        {
                                          sub_21403BEC8(319, &qword_280B2F3C8, &type metadata for LinkPresentation.AssociatedApplicationMetadata);
                                          if (v21 <= 0x3F)
                                          {
                                            sub_2140782FC(319, &qword_280B30328, type metadata accessor for CollaborationMetadata);
                                            if (v22 <= 0x3F)
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

void sub_2140782FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2146D9D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2140783A0(uint64_t a1)
{
  sub_2140782FC(319, &qword_280B30B80, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2140784B0(uint64_t a1)
{
  sub_2140782FC(319, &qword_280B30B80, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    sub_214078E0C(319, qword_280B2E498, &qword_27C904CA0, &qword_2146EE770);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2140785A0(uint64_t a1)
{
  sub_2140782FC(319, &qword_280B30B80, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_137Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_138Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void sub_21407884C(uint64_t a1)
{
  sub_2140782FC(319, &qword_280B30B80, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_214078928(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
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

uint64_t sub_214078984(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2140789F8(uint64_t a1)
{
  result = type metadata accessor for LinkPresentation.SongMetadata(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LinkPresentation.AlbumMetadata(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for LinkPresentation.MusicVideoMetadata(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for LinkPresentation.ArtistMetadata(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for LinkPresentation.PlaylistMetadata(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for LinkPresentation.RadioMetadata(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for LinkPresentation.SoftwareMetadata(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for LinkPresentation.BookMetadata(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for LinkPresentation.AudioBookMetadata(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for LinkPresentation.PodcastEpisodeMetadata(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for LinkPresentation.PodcastMetadata(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for LinkPresentation.TVEpisodeMetadata(319);
                        if (v13 <= 0x3F)
                        {
                          result = type metadata accessor for LinkPresentation.TVSeasonMetadata(319);
                          if (v14 <= 0x3F)
                          {
                            result = type metadata accessor for LinkPresentation.TVShowMetadata(319);
                            if (v15 <= 0x3F)
                            {
                              result = type metadata accessor for LinkPresentation.MovieMetadata(319);
                              if (v16 <= 0x3F)
                              {
                                result = type metadata accessor for LinkPresentation.MovieBundleMetadata(319);
                                if (v17 <= 0x3F)
                                {
                                  result = type metadata accessor for LinkPresentation.FileMetadata(319);
                                  if (v18 <= 0x3F)
                                  {
                                    result = type metadata accessor for LinkPresentation.PhotosMomentMetadata(319);
                                    if (v19 <= 0x3F)
                                    {
                                      result = type metadata accessor for LinkPresentation.WalletPassMetadata(319);
                                      if (v20 <= 0x3F)
                                      {
                                        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                        return 0;
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
      }
    }
  }

  return result;
}

void sub_214078C9C(uint64_t a1)
{
  sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2F3E0, &type metadata for LinkPresentation.PlaceholderImage);
    if (v2 <= 0x3F)
    {
      sub_2140782FC(319, &qword_280B30660, type metadata accessor for LinkPresentation.ArtworkMetadata);
      if (v3 <= 0x3F)
      {
        sub_2140782FC(319, &qword_280B30B80, MEMORY[0x277CC9260]);
        if (v4 <= 0x3F)
        {
          sub_214078E0C(319, &qword_280B2E3C0, &unk_27C904F20, &qword_2146EE8A0);
          if (v5 <= 0x3F)
          {
            sub_21403BEC8(319, &qword_280B2F3D0, &type metadata for LinkPresentation.LyricExcerptMetadata);
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

void sub_214078E0C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2146D9D38();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_214078F00(uint64_t a1)
{
  sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_2140782FC(319, &qword_280B30B80, MEMORY[0x277CC9260]);
    if (v2 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B2F3E0, &type metadata for LinkPresentation.PlaceholderImage);
      if (v3 <= 0x3F)
      {
        sub_2140782FC(319, &qword_280B30660, type metadata accessor for LinkPresentation.ArtworkMetadata);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_214079064(uint64_t a1)
{
  sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2F3E0, &type metadata for LinkPresentation.PlaceholderImage);
    if (v2 <= 0x3F)
    {
      sub_214078E0C(319, &qword_280B2E430, &qword_27C904C70, &unk_2146EE700);
      if (v3 <= 0x3F)
      {
        sub_2140782FC(319, &qword_280B30558, type metadata accessor for LinkPresentation.Video);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2140791B4(uint64_t a1)
{
  sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2F3E0, &type metadata for LinkPresentation.PlaceholderImage);
    if (v2 <= 0x3F)
    {
      sub_2140782FC(319, &qword_280B30660, type metadata accessor for LinkPresentation.ArtworkMetadata);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2140792C0(uint64_t a1)
{
  sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2F3E0, &type metadata for LinkPresentation.PlaceholderImage);
    if (v2 <= 0x3F)
    {
      sub_2140782FC(319, &qword_280B30660, type metadata accessor for LinkPresentation.ArtworkMetadata);
      if (v3 <= 0x3F)
      {
        sub_2140782FC(319, &qword_280B30B80, MEMORY[0x277CC9260]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_214079400(uint64_t a1)
{
  sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_2140782FC(319, &qword_280B35230, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B2F3E0, &type metadata for LinkPresentation.PlaceholderImage);
      if (v3 <= 0x3F)
      {
        sub_2140782FC(319, &qword_280B30660, type metadata accessor for LinkPresentation.ArtworkMetadata);
        if (v4 <= 0x3F)
        {
          sub_214078E0C(319, &qword_280B2E3C0, &unk_27C904F20, &qword_2146EE8A0);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_214079570(uint64_t a1)
{
  sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2F3E0, &type metadata for LinkPresentation.PlaceholderImage);
    if (v2 <= 0x3F)
    {
      sub_2140782FC(319, &qword_280B30660, type metadata accessor for LinkPresentation.ArtworkMetadata);
      if (v3 <= 0x3F)
      {
        sub_214078E0C(319, &qword_280B2E3C0, &unk_27C904F20, &qword_2146EE8A0);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2140796A4(uint64_t a1)
{
  sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2F3E0, &type metadata for LinkPresentation.PlaceholderImage);
    if (v2 <= 0x3F)
    {
      sub_2140782FC(319, &qword_280B30660, type metadata accessor for LinkPresentation.ArtworkMetadata);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2140797D8(uint64_t a1)
{
  sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2F3E0, &type metadata for LinkPresentation.PlaceholderImage);
    if (v2 <= 0x3F)
    {
      sub_2140782FC(319, &qword_280B30660, type metadata accessor for LinkPresentation.ArtworkMetadata);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2140798E0(uint64_t a1)
{
  sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2F3E0, &type metadata for LinkPresentation.PlaceholderImage);
    if (v2 <= 0x3F)
    {
      sub_2140782FC(319, &qword_280B30660, type metadata accessor for LinkPresentation.ArtworkMetadata);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_214079A08(uint64_t a1)
{
  sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2F3E0, &type metadata for LinkPresentation.PlaceholderImage);
    if (v2 <= 0x3F)
    {
      sub_2140782FC(319, &qword_280B30660, type metadata accessor for LinkPresentation.ArtworkMetadata);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_214079B0C(uint64_t a1)
{
  result = type metadata accessor for CloudKitSharingToken(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor16LinkPresentationO16PlaceholderImageVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_214079BB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 312))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 304);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_214079BFC(uint64_t result, int a2, int a3)
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 312) = 1;
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
      *(result + 304) = (a2 - 1);
      return result;
    }

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy169_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_214079CD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 169))
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

uint64_t sub_214079D34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 168) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 169) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 169) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_214079DCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 280))
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

uint64_t sub_214079E28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 280) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 280) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_214079EF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
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

uint64_t sub_214079F54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_214079FE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 1066))
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

uint64_t sub_21407A03C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 1064) = 0;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1066) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1066) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_21407A1C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 553))
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

uint64_t sub_21407A220(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 552) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 553) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 553) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_21407A344(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 144))
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

uint64_t sub_21407A3A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_21407A450(uint64_t a1)
{
  sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2F3E0, &type metadata for LinkPresentation.PlaceholderImage);
    if (v2 <= 0x3F)
    {
      sub_2140782FC(319, &qword_280B35230, MEMORY[0x277CC9578]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 __swift_memcpy185_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_21407A584(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 185))
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

uint64_t sub_21407A5E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 184) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 185) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 185) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
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

uint64_t sub_21407A6A8(uint64_t a1, unsigned int a2)
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

uint64_t sub_21407A704(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_21407A7B8(uint64_t a1)
{
  sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2F3E0, &type metadata for LinkPresentation.PlaceholderImage);
    if (v2 <= 0x3F)
    {
      sub_2140782FC(319, &qword_280B35230, MEMORY[0x277CC9578]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21407A8FC(uint64_t a1)
{
  sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_2140782FC(319, &qword_280B35230, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_21407AA08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 184))
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

uint64_t sub_21407AA64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 184) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 184) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_21407AB0C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 329))
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

uint64_t sub_21407AB54(uint64_t result, int a2, int a3)
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
    *(result + 328) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 329) = 1;
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

    *(result + 329) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21407ABFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_21407AC58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_212Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 2147483646)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    v7 = v6 - 1;
    if (v7 < 0)
    {
      v7 = -1;
    }

    return (v7 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t __swift_store_extra_inhabitant_index_213Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v10 = *(*(v9 - 8) + 56);
    v11 = v7 + *(a4 + 36);

    return v10(v11, a2, a2, v9);
  }

  return result;
}

void sub_21407AE48(uint64_t a1)
{
  sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2F3E0, &type metadata for LinkPresentation.PlaceholderImage);
    if (v2 <= 0x3F)
    {
      sub_2140782FC(319, &qword_280B30588, type metadata accessor for LinkPresentation.SpecializationMetadata);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21407AF30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_21407AF8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_21407B034(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 121))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_21407B090(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_21407B140(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 97))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_21407B19C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_21407B244(uint64_t a1)
{
  sub_2140782FC(319, &qword_280B30B80, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21407B31C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_21407B36C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_21407B3C0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_21407B3F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_21407B44C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_21407B4D8(uint64_t a1)
{
  sub_2140782FC(319, &qword_280B30B80, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21407B890@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result == 4;
  if (result == 5)
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_21407B8AC@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if ((result + 1) >= 7)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010303030300uLL >> (8 * (result + 1));
  }

  *a2 = v2;
  return result;
}

uint64_t sub_21407B914()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_2146EF6C8[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_21407B99C(uint64_t a1)
{
  v2 = *v1;
  sub_2146DA958();
  MEMORY[0x216055860](qword_2146EF6C8[v2]);
  return sub_2146DA9B8();
}

uint64_t sub_21407BAEC@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ScheduledMessageUpdate(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for ScheduledMessageUpdate(uint64_t a1)
{
  result = qword_280B30268;
  if (!qword_280B30268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21407BB6C(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ScheduledMessageUpdate(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

unint64_t sub_21407BBE8()
{
  result = qword_27C904CC8;
  if (!qword_27C904CC8)
  {
    result = swift_getWitnessTable(byte_2146EF530, &type metadata for ScheduledMessageUpdate.ScheduleState, v0, v1);
    atomic_store(result, &qword_27C904CC8);
  }

  return result;
}

unint64_t sub_21407BC3C(uint64_t a1)
{
  *(a1 + 8) = sub_21407BC6C();
  result = sub_21407BCC0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21407BC6C()
{
  result = qword_27C904CD0;
  if (!qword_27C904CD0)
  {
    result = swift_getWitnessTable(asc_2146EF5FC, &type metadata for ScheduledMessageUpdate.ScheduleState, v0, v1);
    atomic_store(result, &qword_27C904CD0);
  }

  return result;
}

unint64_t sub_21407BCC0()
{
  result = qword_27C904CD8;
  if (!qword_27C904CD8)
  {
    result = swift_getWitnessTable(byte_2146EF624, &type metadata for ScheduledMessageUpdate.ScheduleState, v0, v1);
    atomic_store(result, &qword_27C904CD8);
  }

  return result;
}

uint64_t sub_21407BD14(uint64_t a1)
{
  *(a1 + 8) = sub_21407BD7C(&qword_27C904CE0, byte_2146FC520);
  result = sub_21407BD7C(&qword_27C904CE8, byte_2146FC548);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21407BD7C(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for ScheduledMessageUpdate(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21407BDE8(uint64_t a1)
{
  result = type metadata accessor for Metadata(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_21407BE6C()
{
  result = qword_27C904CF0;
  if (!qword_27C904CF0)
  {
    result = swift_getWitnessTable(asc_2146EF598, &type metadata for ScheduledMessageUpdate.ScheduleState, v0, v1);
    atomic_store(result, &qword_27C904CF0);
  }

  return result;
}

unint64_t sub_21407BEC0(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

void *sub_21407BED4(uint64_t a1)
{
  if (a1 == 1)
  {
    type metadata accessor for JPEGEncoder();
    inited = swift_initStackObject();
    return sub_21463D370(inited);
  }

  else if (a1)
  {
    result = sub_2146DA8C8();
    __break(1u);
  }

  else
  {
    LOWORD(v4[0]) = 0;
    sub_2140615D0(v4);
    v3[8] = v4[8];
    v3[9] = v4[9];
    v3[10] = v4[10];
    v3[11] = v4[11];
    v3[4] = v4[4];
    v3[5] = v4[5];
    v3[6] = v4[6];
    v3[7] = v4[7];
    v3[0] = v4[0];
    v3[1] = v4[1];
    v3[2] = v4[2];
    v3[3] = v4[3];
    return sub_21463C734(v3);
  }

  return result;
}

uint64_t sub_21407C088(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    type metadata accessor for JPEGEncoder();
    inited = swift_initStackObject();
    v4 = sub_21407D554;
    v5 = sub_21407D5BC;
    return sub_21407CAE4(a1, inited, v4, v5);
  }

  if (!a2)
  {
    type metadata accessor for ATXEncoder();
    inited = swift_initStackObject();
    *(inited + 24) = 0;
    *(inited + 32) = 1;
    *(inited + 16) = 0;
    v4 = sub_21407D51C;
    v5 = sub_21407D538;
    return sub_21407CAE4(a1, inited, v4, v5);
  }

  result = sub_2146DA8C8();
  __break(1u);
  return result;
}

uint64_t sub_21407C334()
{
  v1 = v0 + OBJC_IVAR___BlastDoorImage_image;
  v2 = *(v0 + OBJC_IVAR___BlastDoorImage_image + 24);
  v3 = *(v0 + OBJC_IVAR___BlastDoorImage_image + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___BlastDoorImage_image), v2);
  v4 = *(v1 + 200);
  v36[8] = *(v1 + 184);
  v36[9] = v4;
  v5 = *(v1 + 232);
  v36[10] = *(v1 + 216);
  v36[11] = v5;
  v6 = *(v1 + 136);
  v36[4] = *(v1 + 120);
  v36[5] = v6;
  v7 = *(v1 + 168);
  v36[6] = *(v1 + 152);
  v36[7] = v7;
  v8 = *(v1 + 72);
  v36[0] = *(v1 + 56);
  v36[1] = v8;
  v9 = *(v1 + 104);
  v36[2] = *(v1 + 88);
  v36[3] = v9;
  v10 = *(v1 + 200);
  v31 = *(v1 + 184);
  v32 = v10;
  v11 = *(v1 + 232);
  v33 = *(v1 + 216);
  v34 = v11;
  v12 = *(v1 + 136);
  v27 = *(v1 + 120);
  v28 = v12;
  v13 = *(v1 + 168);
  v29 = *(v1 + 152);
  v30 = v13;
  v14 = *(v1 + 72);
  v23 = *(v1 + 56);
  v24 = v14;
  v15 = *(v1 + 104);
  v25 = *(v1 + 88);
  v26 = v15;
  v16 = *(v3 + 16);
  sub_21407CE3C(v36, v22);
  type metadata accessor for CGImage(0);
  v18 = v17;
  v16(&v35, &v23, sub_21407D620, 0, v17, v2, v3);
  v22[8] = v31;
  v22[9] = v32;
  v22[10] = v33;
  v22[11] = v34;
  v22[4] = v27;
  v22[5] = v28;
  v22[6] = v29;
  v22[7] = v30;
  v22[0] = v23;
  v22[1] = v24;
  v22[2] = v25;
  v22[3] = v26;
  sub_21407CEAC(v22);
  result = v35;
  if (!v35)
  {
    v19 = *(v1 + 24);
    v20 = *(v1 + 32);
    __swift_project_boxed_opaque_existential_1(v1, v19);
    (*(v20 + 24))(&v23, sub_21407C580, 0, v18, v19, v20);
    result = v23;
    if (!v23)
    {
      return 0;
    }
  }

  return result;
}

void sub_21407C580(__CVBuffer *a1@<X0>, CGImageRef *a2@<X8>)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  VTCreateCGImageFromCVPixelBuffer(a1, 0, v4);
  if (v4[0])
  {
    *a2 = v4[0];
  }

  else
  {
    sub_214061118();
    swift_allocError();
    *v3 = 1536;
    *(v3 + 8) = 0;
    swift_willThrow();
  }
}

uint64_t sub_21407C718()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorImage_image + 24);
  v2 = *(v0 + OBJC_IVAR___BlastDoorImage_image + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___BlastDoorImage_image), v1);
  v3 = *(v2 + 24);
  type metadata accessor for CVBuffer(0);
  v3(&v6, sub_21407D620, 0, v4, v1, v2);
  return v6;
}

id sub_21407C7C8()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_21407C85C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21407C8A4()
{
  sub_21407CF14(v0, v6);
  v1 = type metadata accessor for _ObjCImageWrapper();
  v2 = objc_allocWithZone(v1);
  sub_21407CF14(v6, v2 + OBJC_IVAR___BlastDoorImage_image);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_21406D2CC(v6);
  return v3;
}

id sub_21407C924()
{
  sub_21407CF14(v0, v6);
  v1 = type metadata accessor for _ObjCImageWrapper();
  v2 = objc_allocWithZone(v1);
  sub_21407CF14(v6, v2 + OBJC_IVAR___BlastDoorImage_image);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_21406D2CC(v6);
  return v3;
}

uint64_t sub_21407CAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v86 = a2;
  v8 = *(v4 + 24);
  v7 = *(v4 + 32);
  __swift_project_boxed_opaque_existential_1(v4, v8);
  v9 = *(v4 + 200);
  v85[8] = *(v4 + 184);
  v85[9] = v9;
  v10 = *(v4 + 232);
  v85[10] = *(v4 + 216);
  v85[11] = v10;
  v11 = *(v4 + 136);
  v85[4] = *(v4 + 120);
  v85[5] = v11;
  v12 = *(v4 + 168);
  v85[6] = *(v4 + 152);
  v85[7] = v12;
  v13 = *(v4 + 72);
  v85[0] = *(v4 + 56);
  v85[1] = v13;
  v14 = *(v4 + 104);
  v85[2] = *(v4 + 88);
  v85[3] = v14;
  v15 = *(v4 + 200);
  v80 = *(v4 + 184);
  v81 = v15;
  v16 = *(v4 + 232);
  v82 = *(v4 + 216);
  v83 = v16;
  v17 = *(v4 + 136);
  v76 = *(v4 + 120);
  v77 = v17;
  v18 = *(v4 + 168);
  v78 = *(v4 + 152);
  v79 = v18;
  v19 = *(v4 + 72);
  v72 = *(v4 + 56);
  v73 = v19;
  v20 = *(v4 + 104);
  v74 = *(v4 + 88);
  v75 = v20;
  v44[2] = &v86;
  v44[3] = a1;
  v21 = *(v7 + 8);
  sub_21407CE3C(v85, &v60);
  v21(&v84, &v72, a3, v44, MEMORY[0x277D839B0], v8, v7);
  if (v43)
  {
    v68 = v80;
    v69 = v81;
    v70 = v82;
    v71 = v83;
    v64 = v76;
    v65 = v77;
    v66 = v78;
    v67 = v79;
    v60 = v72;
    v61 = v73;
    v62 = v74;
    v63 = v75;
    return sub_21407CEAC(&v60);
  }

  else
  {
    v23 = a1;
    v24 = v42;
    v68 = v80;
    v69 = v81;
    v70 = v82;
    v71 = v83;
    v64 = v76;
    v65 = v77;
    v66 = v78;
    v67 = v79;
    v60 = v72;
    v61 = v73;
    v62 = v74;
    v63 = v75;
    result = sub_21407CEAC(&v60);
    if (v84 == 2)
    {
      v25 = *(v4 + 24);
      v26 = *(v4 + 32);
      v27 = __swift_project_boxed_opaque_existential_1(v4, v25);
      v43 = &v42;
      v28 = *(v4 + 200);
      v59[8] = *(v4 + 184);
      v59[9] = v28;
      v29 = *(v4 + 232);
      v59[10] = *(v4 + 216);
      v59[11] = v29;
      v30 = *(v4 + 136);
      v59[4] = *(v4 + 120);
      v59[5] = v30;
      v31 = *(v4 + 168);
      v59[6] = *(v4 + 152);
      v59[7] = v31;
      v32 = *(v4 + 72);
      v59[0] = *(v4 + 56);
      v59[1] = v32;
      v33 = *(v4 + 104);
      v59[2] = *(v4 + 88);
      v59[3] = v33;
      v34 = *(v4 + 200);
      v54 = *(v4 + 184);
      v55 = v34;
      v35 = *(v4 + 232);
      v56 = *(v4 + 216);
      v57 = v35;
      v36 = *(v4 + 136);
      v50 = *(v4 + 120);
      v51 = v36;
      v37 = *(v4 + 168);
      v52 = *(v4 + 152);
      v53 = v37;
      v38 = *(v4 + 72);
      v46 = *(v4 + 56);
      v47 = v38;
      v39 = *(v4 + 104);
      v48 = *(v4 + 88);
      v49 = v39;
      MEMORY[0x28223BE20](v27);
      v41[2] = &v86;
      v41[3] = v23;
      v40 = *(v26 + 16);
      sub_21407CE3C(v59, v45);
      v40(&v58, &v46, v24, v41, MEMORY[0x277D84F78] + 8, v25, v26);
      v45[8] = v54;
      v45[9] = v55;
      v45[10] = v56;
      v45[11] = v57;
      v45[4] = v50;
      v45[5] = v51;
      v45[6] = v52;
      v45[7] = v53;
      v45[0] = v46;
      v45[1] = v47;
      v45[2] = v48;
      v45[3] = v49;
      return sub_21407CEAC(v45);
    }
  }

  return result;
}

uint64_t sub_21407CE3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904D00, &qword_2146EF6E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21407CEAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904D00, &qword_2146EF6E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21407CF98()
{
  result = qword_27C904D08;
  if (!qword_27C904D08)
  {
    result = swift_getWitnessTable(aMt_1, &type metadata for _ObjCImageEncoding, v0, v1);
    atomic_store(result, &qword_27C904D08);
  }

  return result;
}

uint64_t sub_21407D014()
{
  sub_214061118();
  swift_allocError();
  *v0 = 1281;
  *(v0 + 8) = 0;
  return swift_willThrow();
}

uint64_t sub_21407D068@<X0>(CGImageSource *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21407D1E8(a1, *(v2 + 24));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_21407D098@<X0>(CGImage *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21407D35C(a1, *(v2 + 24));
  if (!v3)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_21407D0CC@<X0>(void *a1@<X0>, _BYTE *a3@<X8>)
{
  type metadata accessor for CGImageSource(0);
  v9[3] = v6;
  v9[4] = &off_28269F370;
  v9[0] = a1;
  v7 = a1;
  sub_214640D60(v9);
  result = __swift_destroy_boxed_opaque_existential_1(v9);
  if (!v3)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t sub_21407D15C@<X0>(void *a1@<X0>, _BYTE *a3@<X8>)
{
  type metadata accessor for CGImage(0);
  v9[3] = v6;
  v9[4] = &off_28269F358;
  v9[0] = a1;
  v7 = a1;
  sub_214640D60(v9);
  result = __swift_destroy_boxed_opaque_existential_1(v9);
  if (!v3)
  {
    *a3 = 0;
  }

  return result;
}

uint64_t sub_21407D1E8(CGImageSource *a1, uint64_t a2)
{
  ImageAtIndex = CGImageSourceCreateImageAtIndex(a1, 0, 0);
  if (ImageAtIndex)
  {
    v4 = ImageAtIndex;
    Width = CGImageGetWidth(ImageAtIndex);
    Height = CGImageGetHeight(v4);
    sub_21409B984(Width, Height);
    if (v2)
    {
    }

    else
    {
      *&v13 = sub_21408F798(v7);
      *(&v13 + 1) = v9;
      sub_2146808C0(&v13, 0);
      v14 = v13;
      v10 = v4;
      sub_214680494(&v14, v10, 1, Width, Height);
      v11 = v14;
      sub_2146D8A68();
      sub_213FB54FC(v11, *(&v11 + 1));
    }
  }

  else
  {
    sub_21407D454();
    swift_allocError();
    *v8 = 1281;
    *(v8 + 8) = 0;
    swift_willThrow();
  }

  return 1;
}

uint64_t sub_21407D35C(CGImage *a1, uint64_t a2)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  sub_21409B984(Width, Height);
  if (!v2)
  {
    *&v10 = sub_21408F798(v6);
    *(&v10 + 1) = v7;
    sub_2146808C0(&v10, 0);
    v11 = v10;
    sub_214680494(&v11, a1, 1, Width, Height);
    v8 = v11;
    sub_2146D8A68();
    sub_213FB54FC(v8, *(&v8 + 1));
  }

  return 0;
}

unint64_t sub_21407D454()
{
  result = qword_27C904D10;
  if (!qword_27C904D10)
  {
    result = swift_getWitnessTable(aI_69, &type metadata for BitmapHelperError, v0, v1);
    atomic_store(result, &qword_27C904D10);
  }

  return result;
}

uint64_t sub_21407D580@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void)@<X1>, _BYTE *a3@<X8>)
{
  result = a2(a1, *(v3 + 24));
  if (!v4)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t sub_21407D5E8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void)@<X1>, _BYTE *a3@<X8>)
{
  result = a2(a1, *(v3 + 24));
  if (!v4)
  {
    *a3 = 0;
  }

  return result;
}

uint64_t sub_21407D658@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_21407D678()
{
  sub_2146DA958();
  sub_2146DA978();
  return sub_2146DA9B8();
}

uint64_t sub_21407D6C0(uint64_t a1)
{
  sub_2146DA958();
  sub_2146DA978();
  return sub_2146DA9B8();
}

_BYTE *sub_21407D704@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_21407D810()
{
  result = qword_27C904D18;
  if (!qword_27C904D18)
  {
    result = swift_getWitnessTable(aI_78, &type metadata for CompanionAuthMessage.MessageType, v0, v1);
    atomic_store(result, &qword_27C904D18);
  }

  return result;
}

unint64_t sub_21407D890()
{
  result = qword_27C904D20;
  if (!qword_27C904D20)
  {
    result = swift_getWitnessTable(aM_155, &type metadata for CompanionAuthMessage.MessageType, v0, v1);
    atomic_store(result, &qword_27C904D20);
  }

  return result;
}

unint64_t sub_21407D8E4()
{
  result = qword_27C904D28;
  if (!qword_27C904D28)
  {
    result = swift_getWitnessTable(byte_2146EF8E4, &type metadata for CompanionAuthMessage.MessageType, v0, v1);
    atomic_store(result, &qword_27C904D28);
  }

  return result;
}

uint64_t sub_21407D964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21407D9A0()
{
  result = qword_27C904D30;
  if (!qword_27C904D30)
  {
    result = swift_getWitnessTable(a9_26, &type metadata for CompanionAuthMessage, v0, v1);
    atomic_store(result, &qword_27C904D30);
  }

  return result;
}

unint64_t sub_21407D9F4()
{
  result = qword_27C904D38;
  if (!qword_27C904D38)
  {
    result = swift_getWitnessTable(byte_2146F8DF8, &type metadata for CompanionAuthMessage, v0, v1);
    atomic_store(result, &qword_27C904D38);
  }

  return result;
}

unint64_t sub_21407DA68()
{
  result = qword_27C904D40;
  if (!qword_27C904D40)
  {
    result = swift_getWitnessTable(a9_25, &type metadata for CompanionAuthMessage.MessageType, v0, v1);
    atomic_store(result, &qword_27C904D40);
  }

  return result;
}

BOOL sub_21407DAC4(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 48);
  v3 = *(a2 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = v2 + 3;
    v6 = *(v2 - 1);
    v5 = *v2;
    v7 = *(v2 - 2);

    LOBYTE(v7) = sub_21407DB58(v7, v6, v5);

    v2 = v4;
  }

  while ((v7 & 1) == 0);
  return v3 != 0;
}

uint64_t sub_21407DB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2146D8958();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v59 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v59 - v18;
  v20 = sub_2146D88F8();
  if (!v21)
  {
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    v60 = qword_280B35410;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_2146EA710;
    v38 = *(v8 + 16);
    v38(v19, v3, v7);
    (*(v8 + 56))(v19, 0, 1, v7);
    sub_21407E1D8(v19, v17);
    if ((*(v8 + 48))(v17, 1, v7) == 1)
    {
      sub_21407E248(v17);
      v39 = 0xE300000000000000;
      v40 = 7104878;
    }

    else
    {
      (*(v8 + 32))(v13, v17, v7);
      v38(v11, v13, v7);
      v40 = sub_2146D9618();
      v39 = v47;
      (*(v8 + 8))(v13, v7);
    }

    sub_21407E248(v19);
    *(v37 + 56) = MEMORY[0x277D837D0];
    *(v37 + 64) = sub_213FB2DA0();
    *(v37 + 32) = v40;
    *(v37 + 40) = v39;
    v48 = sub_2146D9BC8();
    sub_2146D91C8("URL format missing host: %@", 27, 2, &dword_213FAF000, v60, v48, v37);
    goto LABEL_31;
  }

  v63 = v20;
  v64 = v21;
  v61 = 46;
  v62 = 0xE100000000000000;
  sub_214069AD8();
  v22 = MEMORY[0x277D837D0];
  v23 = sub_2146D9DB8();

  v24 = *(v23 + 16);
  v25 = *(a3 + 16);
  if (v24 > v25)
  {
    v60 = a1;
    v26 = a2;
    if (v24 >= v25)
    {
      v22 = v24 - v25;
    }

    else
    {
      v22 = 0;
    }

    sub_2146DA738();
    swift_unknownObjectRetain_n();

    v27 = swift_dynamicCastClass();
    if (!v27)
    {
      swift_unknownObjectRelease();
      v27 = MEMORY[0x277D84F90];
    }

    v28 = *(v27 + 16);

    if (v28 == v24 - v22)
    {
      v29 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v30 = v26;
      v31 = v60;
      if (v29)
      {
LABEL_12:
        v32 = v24 + ~v25;
        if (v32 >= 0)
        {
          if (v32 >= *(v23 + 16))
          {
            __break(1u);
            goto LABEL_36;
          }

          v33 = (v23 + 32 + 16 * v32);
          v35 = *v33;
          v34 = v33[1];
          v63 = v35;
          v64 = v34;
          v22 = MEMORY[0x277D837D0];
          if (sub_2146D9DD8() == v31 && v36 == v30)
          {
          }

          else
          {
            v49 = sub_2146DA6A8();

            if ((v49 & 1) == 0)
            {

              goto LABEL_29;
            }
          }

          v50 = sub_2143D53BC(v29, a3);

          if (v50)
          {

            return 1;
          }

LABEL_29:
          if (qword_280B35360 == -1)
          {
LABEL_30:
            v52 = qword_280B35410;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
            v53 = swift_allocObject();
            *(v53 + 16) = xmmword_2146EA710;
            v63 = v23;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
            v54 = sub_2146D9618();
            v56 = v55;
            *(v53 + 56) = v22;
            *(v53 + 64) = sub_213FB2DA0();
            *(v53 + 32) = v54;
            *(v53 + 40) = v56;
            v57 = sub_2146D9BC8();
            sub_2146D91C8("URL components don't match up: %@", 33, 2, &dword_213FAF000, v52, v57, v53);
            goto LABEL_31;
          }

LABEL_36:
          swift_once();
          goto LABEL_30;
        }

        __break(1u);
        goto LABEL_34;
      }

      v29 = MEMORY[0x277D84F90];
    }

    else
    {
      swift_unknownObjectRelease();
      sub_21407E2B0(v23, v23 + 32, v22, (2 * v24) | 1);
      v29 = v58;
      v30 = v26;
      v31 = v60;
    }

    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  if (qword_280B35360 != -1)
  {
LABEL_34:
    swift_once();
  }

  v41 = qword_280B35410;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_2146EA710;
  v63 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  v43 = sub_2146D9618();
  v45 = v44;
  *(v42 + 56) = v22;
  *(v42 + 64) = sub_213FB2DA0();
  *(v42 + 32) = v43;
  *(v42 + 40) = v45;
  v46 = sub_2146D9BC8();
  sub_2146D91C8("URL missing number of required host components: %@", 50, 2, &dword_213FAF000, v41, v46, v42);
LABEL_31:

  return 0;
}

uint64_t sub_21407E1D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21407E248(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21407E2B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904D48, qword_2146EF9D0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_21407E3D0(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904D50, &qword_2146EFA00);
  __swift_allocate_value_buffer(v4, a3);
  __swift_project_value_buffer(v4, a3);
  v5 = [objc_opt_self() megabytes];
  sub_214080100();
  return sub_2146D8628();
}

uint64_t sub_21407E490@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904D50, &qword_2146EFA00);
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

double sub_21407E534(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v94 = a1;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904D50, &qword_2146EFA00);
  v98 = *(v100 - 8);
  v13 = MEMORY[0x28223BE20](v100);
  v87 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v81 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v90 = &v81 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v81 - v20;
  v86 = objc_opt_self();
  v22 = [v86 bytes];
  v23 = sub_214080100();
  v99 = v21;
  v96 = v23;
  sub_2146D8628();
  v103[0] = MEMORY[0x277D84F90];
  sub_21409FD68(0, 7, 0);
  v24 = v103[0];
  v26 = *(v103[0] + 16);
  v25 = *(v103[0] + 24);
  v27 = v26 + 1;
  if (v26 >= v25 >> 1)
  {
LABEL_57:
    sub_21409FD68((v25 > 1), v27, 1);
    v24 = v103[0];
  }

  *(v24 + 16) = v27;
  *(v24 + 8 * v26 + 32) = 0x3FF0000000000000;
  v103[0] = v24;
  v28 = *(v24 + 24);
  v29 = v99;
  if (v27 >= v28 >> 1)
  {
    sub_21409FD68((v28 > 1), v26 + 2, 1);
    v29 = v99;
    v24 = v103[0];
  }

  *(v24 + 16) = v26 + 2;
  *(v24 + 8 * v27 + 32) = 0x4000000000000000;
  v103[0] = v24;
  v31 = *(v24 + 16);
  v30 = *(v24 + 24);
  v32 = v31 + 1;
  if (v31 >= v30 >> 1)
  {
    sub_21409FD68((v30 > 1), v31 + 1, 1);
    v29 = v99;
    v24 = v103[0];
  }

  *(v24 + 16) = v32;
  *(v24 + 8 * v31 + 32) = 0x4010000000000000;
  v103[0] = v24;
  v33 = *(v24 + 24);
  if (v32 >= v33 >> 1)
  {
    sub_21409FD68((v33 > 1), v31 + 2, 1);
    v29 = v99;
    v24 = v103[0];
  }

  *(v24 + 16) = v31 + 2;
  *(v24 + 8 * v32 + 32) = 0x4020000000000000;
  v103[0] = v24;
  v35 = *(v24 + 16);
  v34 = *(v24 + 24);
  v36 = v35 + 1;
  if (v35 >= v34 >> 1)
  {
    sub_21409FD68((v34 > 1), v35 + 1, 1);
    v29 = v99;
    v24 = v103[0];
  }

  *(v24 + 16) = v36;
  *(v24 + 8 * v35 + 32) = 0x4030000000000000;
  v103[0] = v24;
  v37 = *(v24 + 24);
  if (v36 >= v37 >> 1)
  {
    sub_21409FD68((v37 > 1), v35 + 2, 1);
    v29 = v99;
    v24 = v103[0];
  }

  v82 = v17;
  *(v24 + 16) = v35 + 2;
  *(v24 + 8 * v36 + 32) = 0x4040000000000000;
  v103[0] = v24;
  v39 = *(v24 + 16);
  v38 = *(v24 + 24);
  v93 = v39 + 1;
  if (v39 >= v38 >> 1)
  {
    sub_21409FD68((v38 > 1), v39 + 1, 1);
    v29 = v99;
    v24 = v103[0];
  }

  v17 = 0xEB00000000636965;
  *(v24 + 16) = v39 + 1;
  *(v24 + 8 * v39 + 32) = 0x4050000000000000;
  swift_beginAccess();
  v41 = 0;
  v42 = v94 == 0x682E63696C627570;
  v43 = a2 == 0xEB00000000636965 && v94 == 0x682E63696C627570;
  if (a2 != 0xEB00000000666965)
  {
    v42 = 0;
  }

  v88 = v42;
  v45 = v94 == 0x6A2E63696C627570 && a2 == 0xEB00000000676570;
  v83 = v45;
  v95 = (v98 + 40);
  v89 = (v98 + 8);
  if (a2)
  {
    v46 = v43;
  }

  else
  {
    v46 = 1;
  }

  LODWORD(v98) = v46;
  *&v40 = 134349570;
  v85 = v40;
  v26 = v100;
  v27 = v90;
  v84 = a2;
  v97 = v24;
  do
  {
    v25 = *(v24 + 16);
    if (v41 >= v25)
    {
      __break(1u);
      goto LABEL_57;
    }

    v47 = *(v24 + 8 * v41 + 32);
    if (v98 & 1) != 0 || ((sub_2146DA6A8() | v88) & 1) != 0 || ((sub_2146DA6A8() | v83) & 1) != 0 || (sub_2146DA6A8())
    {
      sub_21407F05C(v27, v47, a3, a4, a5, a6);
      if (v7)
      {
        goto LABEL_46;
      }

      v48 = v27;
    }

    else
    {
      v64 = v82;
      sub_21407F9D0(v82, v47, a3, a4, a5, a6);
      if (v7)
      {
LABEL_46:

        (*v89)(v29, v26);
        return v47;
      }

      v48 = v64;
      v27 = v90;
    }

    (*v95)(v29, v48, v26);
    if (qword_280B2ED50 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v26, qword_280B2ED58);
    if (sub_2146D8618())
    {
      break;
    }

    v17 = sub_2146D9B88();
    if (qword_280B30DD8 != -1)
    {
      swift_once();
    }

    v49 = qword_280B30DE0;
    if (os_log_type_enabled(qword_280B30DE0, v17))
    {
      v50 = swift_slowAlloc();
      v92 = 0;
      v51 = v50;
      v91 = swift_slowAlloc();
      v101[0] = v91;
      *v51 = v85;
      *(v51 + 4) = v47;
      *(v51 + 12) = 2082;
      v52 = [v86 megabytes];
      v53 = v87;
      sub_2146D8648();

      sub_2140801A0(&qword_280B2FDE8, MEMORY[0x277CC8800]);
      v54 = sub_2146DA428();
      v56 = v55;
      v57 = v53;
      v27 = v90;
      (*v89)(v57, v100);
      v58 = sub_2144AEA38(v54, v56, v101);

      *(v51 + 14) = v58;
      *(v51 + 22) = 2082;
      a2 = v84;
      v59 = sub_2146DA428();
      v61 = sub_2144AEA38(v59, v60, v101);
      v26 = v100;

      *(v51 + 24) = v61;
      v29 = v99;
      _os_log_impl(&dword_213FAF000, v49, v17, "Subsample %{public}f expected to hit memory limit: Projected %{public}s (over the blastdoor limit of %{public}s).", v51, 0x20u);
      v62 = v91;
      swift_arrayDestroy();
      MEMORY[0x216056AC0](v62, -1, -1);
      v63 = v51;
      v7 = v92;
      MEMORY[0x216056AC0](v63, -1, -1);
    }

    ++v41;
    v24 = v97;
  }

  while (v93 != v41);

  v65 = sub_2146D9B88();
  if (qword_280B30DD8 != -1)
  {
    swift_once();
  }

  v66 = qword_280B30DE0;
  if (os_log_type_enabled(qword_280B30DE0, v65))
  {
    LODWORD(v100) = v65;
    v92 = v7;
    v67 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v102 = v98;
    *v67 = v85;
    *(v67 + 4) = v47;
    *(v67 + 12) = 2082;
    swift_beginAccess();
    v68 = v26;
    v69 = [v86 megabytes];
    v70 = v87;
    sub_2146D8648();

    sub_2140801A0(&qword_280B2FDE8, MEMORY[0x277CC8800]);
    v71 = sub_2146DA428();
    v73 = v72;
    v74 = *v89;
    (*v89)(v70, v68);
    v75 = sub_2144AEA38(v71, v73, &v102);

    *(v67 + 14) = v75;
    *(v67 + 22) = 2082;
    if (qword_280B2ED50 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v68, qword_280B2ED58);
    v76 = sub_2146DA428();
    v78 = sub_2144AEA38(v76, v77, &v102);

    *(v67 + 24) = v78;
    _os_log_impl(&dword_213FAF000, v66, v100, "Picking subsample %{public}f : Projected %{public}s (blastdoor limit of %{public}s.", v67, 0x20u);
    v79 = v98;
    swift_arrayDestroy();
    MEMORY[0x216056AC0](v79, -1, -1);
    MEMORY[0x216056AC0](v67, -1, -1);
    v26 = v68;
    v29 = v99;
  }

  else
  {
    v74 = *v89;
  }

  v74(v29, v26);
  return v47;
}

uint64_t sub_21407F05C@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  v89 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904D50, &qword_2146EFA00);
  v97 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v88 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v85 = &v84 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v86 = &v84 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v87 = &v84 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v91 = &v84 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v93 = &v84 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v84 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v95 = &v84 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v84 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v84 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v84 - v36;
  v38 = sub_2146D9B88();
  if (qword_280B30DD8 != -1)
  {
    swift_once();
  }

  v94 = v27;
  v90 = v6;
  v39 = qword_280B30DE0;
  if (os_log_type_enabled(qword_280B30DE0, v38))
  {
    v40 = swift_slowAlloc();
    v96 = v37;
    v41 = v40;
    v42 = swift_slowAlloc();
    v92 = v32;
    v43 = v42;
    v100[0] = v42;
    *v41 = 134349570;
    *(v41 + 4) = a2;
    *(v41 + 12) = 2082;
    v98 = a3;
    v99 = a4;
    type metadata accessor for CGSize(0);
    v44 = sub_2146D9618();
    v46 = sub_2144AEA38(v44, v45, v100);

    *(v41 + 14) = v46;
    *(v41 + 22) = 2082;
    v98 = a5;
    v99 = a6;
    v47 = sub_2146D9618();
    v49 = sub_2144AEA38(v47, v48, v100);

    *(v41 + 24) = v49;
    _os_log_impl(&dword_213FAF000, v39, v38, "Calculating expected memory peak for HEIF using subsample: %{public}f, source: %{public}s, destination: %{public}s", v41, 0x20u);
    swift_arrayDestroy();
    v50 = v43;
    v32 = v92;
    MEMORY[0x216056AC0](v50, -1, -1);
    v51 = v41;
    v37 = v96;
    MEMORY[0x216056AC0](v51, -1, -1);
  }

  if (qword_280B2ECC8 != -1)
  {
    swift_once();
  }

  v52 = __swift_project_value_buffer(v12, qword_280B2ECD0);
  v53 = *(v97 + 2);
  v53(v37, v52, v12);
  if (fabs(a5 * a6) == INFINITY || fabs(a5 * a6 * 4.0) == INFINITY)
  {
    sub_21408014C();
    swift_allocError();
    *v54 = 512;
    swift_willThrow();
    return (*(v97 + 1))(v37, v12);
  }

  v96 = v37;
  v56 = objc_opt_self();
  v57 = [v56 bytes];
  v58 = sub_214080100();
  sub_2146D8628();
  v53(v32, v35, v12);
  v59 = round(a3 / a2);
  v60 = v59 * round(a4 / a2);
  if (fabs(v60) == INFINITY || fabs(v60 * 1.5) == INFINITY)
  {
    sub_21408014C();
    v61 = v35;
    swift_allocError();
    *v62 = 512;
    swift_willThrow();
    v63 = *(v97 + 1);
    v63(v32, v12);
LABEL_21:
    v63(v61, v12);
    return (v63)(v96, v12);
  }

  v64 = [v56 bytes];
  v65 = v95;
  sub_2146D8628();
  if (fabs(v60 * 4.0) == INFINITY)
  {
    sub_21408014C();
    v61 = v35;
    swift_allocError();
    *v66 = 512;
    swift_willThrow();
    v67 = v32;
    v68 = v65;
    v63 = *(v97 + 1);
    v63(v68, v12);
LABEL_20:
    v63(v67, v12);
    goto LABEL_21;
  }

  v69 = [v56 bytes];
  v70 = v58;
  v71 = v94;
  v84 = v70;
  sub_2146D8628();
  if (fabs(v59 * a6) == INFINITY)
  {
    sub_21408014C();
    v61 = v35;
    swift_allocError();
    *v72 = 512;
    swift_willThrow();
    v67 = v32;
    v73 = v65;
    v63 = *(v97 + 1);
    v63(v71, v12);
LABEL_19:
    v63(v73, v12);
    goto LABEL_20;
  }

  if (fabs(v59 * a6 * 4.0) == INFINITY)
  {
    sub_21408014C();
    v61 = v35;
    swift_allocError();
    *v74 = 512;
    swift_willThrow();
    v67 = v32;
    v73 = v65;
    v63 = *(v97 + 1);
    v63(v94, v12);
    goto LABEL_19;
  }

  v75 = [v56 bytes];
  sub_2146D8628();
  sub_2146D8638();
  v76 = v85;
  sub_2146D8638();
  v77 = v86;
  sub_2146D8638();
  v92 = v32;
  v78 = *(v97 + 1);
  v78(v76, v12);
  v79 = v87;
  sub_2146D8638();
  v78(v77, v12);
  sub_2140801A0(&qword_280B2FDF0, MEMORY[0x277CC87E8]);
  v80 = v91;
  v97 = v35;
  if (sub_2146D9568())
  {
    v81 = v80;
  }

  else
  {
    v81 = v79;
  }

  v82 = v88;
  v53(v88, v81, v12);
  v83 = v96;
  sub_2146D8638();
  v78(v82, v12);
  v78(v79, v12);
  v78(v80, v12);
  v78(v93, v12);
  v78(v94, v12);
  v78(v95, v12);
  v78(v92, v12);
  v78(v97, v12);
  return (v78)(v83, v12);
}

uint64_t sub_21407F9D0@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  v54 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904D50, &qword_2146EFA00);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v53 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v48 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v48 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v48 - v22;
  v24 = sub_2146D9B88();
  if (qword_280B30DD8 != -1)
  {
    swift_once();
  }

  v25 = qword_280B30DE0;
  if (os_log_type_enabled(qword_280B30DE0, v24))
  {
    v26 = swift_slowAlloc();
    v52 = v6;
    v27 = v26;
    v49 = swift_slowAlloc();
    v57 = v49;
    *v27 = 134349570;
    *(v27 + 4) = a2;
    *(v27 + 12) = 2082;
    v55 = a3;
    v56 = a4;
    type metadata accessor for CGSize(0);
    v28 = sub_2146D9618();
    v50 = v18;
    v51 = v21;
    v30 = sub_2144AEA38(v28, v29, &v57);

    *(v27 + 14) = v30;
    *(v27 + 22) = 2082;
    v55 = a5;
    v56 = a6;
    v31 = sub_2146D9618();
    v33 = sub_2144AEA38(v31, v32, &v57);

    *(v27 + 24) = v33;
    v18 = v50;
    v21 = v51;
    _os_log_impl(&dword_213FAF000, v25, v24, "Calculating expected memory peak for non-HEIF using subsample: %{public}f, source: %{public}s, destination: %{public}s", v27, 0x20u);
    v34 = v49;
    swift_arrayDestroy();
    MEMORY[0x216056AC0](v34, -1, -1);
    MEMORY[0x216056AC0](v27, -1, -1);
  }

  if (qword_280B2ECC8 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v12, qword_280B2ECD0);
  (*(v13 + 16))(v23, v35, v12);
  if (fabs(a6 * a6) == INFINITY || fabs(a6 * a6 * 4.0) == INFINITY)
  {
    sub_21408014C();
    swift_allocError();
    *v36 = 512;
    swift_willThrow();
    return (*(v13 + 8))(v23, v12);
  }

  v38 = objc_opt_self();
  v39 = v21;
  v40 = [v38 bytes];
  sub_214080100();
  sub_2146D8628();
  sub_2146D8638();
  v41 = round(a3 / a2) * round(a4 / a2);
  if (fabs(v41) == INFINITY)
  {
    sub_21408014C();
    swift_allocError();
    *v42 = 512;
    swift_willThrow();
    v43 = v23;
  }

  else
  {
    v43 = v23;
    if (fabs(v41 * 4.0) != INFINITY)
    {
      v46 = [v38 bytes];
      v47 = v53;
      sub_2146D8628();
      sub_2146D8638();
      v45 = *(v13 + 8);
      v45(v47, v12);
      v45(v18, v12);
      goto LABEL_16;
    }

    sub_21408014C();
    swift_allocError();
    *v44 = 512;
    swift_willThrow();
  }

  v45 = *(v13 + 8);
  v45(v18, v12);
LABEL_16:
  v45(v39, v12);
  return (v45)(v43, v12);
}

uint64_t sub_21407FF6C(uint64_t result, double a2, double a3)
{
  if (a2 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v3 = a2;
  v4 = a3;
  if (a3 >= a2)
  {
    if (v3 < v4 && v4 > result)
    {
      v6 = round(v3 / v4 * result);
      if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if (v6 <= -9.22337204e18)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= 9.22337204e18)
      {
LABEL_31:
        __break(1u);
      }
    }
  }

  else if (v3 > result)
  {
    v5 = round(v4 / v3 * result);
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v5 > -9.22337204e18)
      {
        if (v5 < 9.22337204e18)
        {
          return result;
        }

        goto LABEL_28;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  return result;
}

unint64_t sub_214080100()
{
  result = qword_280B2E370;
  if (!qword_280B2E370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280B2E370);
  }

  return result;
}

unint64_t sub_21408014C()
{
  result = qword_27C904D58;
  if (!qword_27C904D58)
  {
    result = swift_getWitnessTable(aI_70, &type metadata for ArithmeticOperationError, v0, v1);
    atomic_store(result, &qword_27C904D58);
  }

  return result;
}

uint64_t sub_2140801A0(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C904D50, &qword_2146EFA00);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2140801F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C75736572 && a2 == 0xE600000000000000;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973736573 && a2 == 0xE700000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656873696E6966 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2146DA6A8();

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

uint64_t sub_21408034C(unsigned __int8 a1)
{
  sub_2146DA958();
  MEMORY[0x216055860](a1);
  return sub_2146DA9B8();
}

uint64_t sub_214080394(unsigned __int8 a1)
{
  v1 = 0x746C75736572;
  v2 = 0x6E6F6973736573;
  if (a1 != 2)
  {
    v2 = 0x64656873696E6966;
  }

  if (a1)
  {
    v1 = 0x726F727265;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_214080408(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v21[0] = a2;
  v21[1] = v5;
  v7 = type metadata accessor for UnpackResponseMessage.CodingKeys(255, v5, v6, a4);
  swift_getWitnessTable(aA_70, v7);
  v8 = sub_2146DA3F8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146DAA28();
  LOBYTE(v22) = 0;
  v12 = v21[2];
  v13 = v21[3];
  sub_2146DA308();
  if (!v13)
  {
    v14 = (v12 + *(v21[0] + 36));
    v15 = v14[1];
    v16 = v14[2];
    v17 = v14[3];
    v18 = v14[4];
    v19 = v14[5];
    v22 = *v14;
    v23 = v15;
    v24 = v16;
    v25 = v17;
    v26 = v18;
    v27 = v19;
    v28 = 1;
    sub_214082A9C(v22, v15, v16, v17, v18, v19);
    sub_214081BD8();
    sub_2146DA308();
    sub_214082AEC(v22, v23, v24, v25, v26, v27);
    LOBYTE(v22) = 2;
    sub_2146D8B88();
    sub_214081B40(&qword_280B34D20, MEMORY[0x277CC95F8]);
    sub_2146DA308();
    LOBYTE(v22) = 3;
    sub_2146DA338();
  }

  return (*(v9 + 8))(v11, v8);
}

void sub_2140806A4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  MEMORY[0x28223BE20](v7 - 8);
  v32 = &v29 - v8;
  v37 = sub_2146D9D38();
  v34 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v38 = &v29 - v9;
  v11 = type metadata accessor for UnpackResponseMessage.CodingKeys(255, a2, a3, v10);
  swift_getWitnessTable(aA_70, v11);
  v36 = sub_2146DA258();
  v33 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v13 = &v29 - v12;
  v35 = a3;
  v15 = type metadata accessor for UnpackResponseMessage(0, a2, a3, v14);
  v30 = *(v15 - 1);
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v39 = v13;
  v18 = v40;
  sub_2146DAA08();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v20 = v33;
    v19 = v34;
    v40 = v17;
    LOBYTE(v41) = 0;
    v21 = v37;
    sub_2146DA148();
    (*(v19 + 32))(v40, v38, v21);
    v44 = 1;
    sub_214081E5C();
    sub_2146DA148();
    v22 = &v40[v15[9]];
    v23 = v42;
    *v22 = v41;
    *(v22 + 1) = v23;
    *(v22 + 2) = v43;
    sub_2146D8B88();
    LOBYTE(v41) = 2;
    sub_214081B40(&qword_280B35350, MEMORY[0x277CC9618]);
    v24 = v32;
    sub_2146DA148();
    sub_214080CE0(v24, &v40[v15[10]]);
    LOBYTE(v41) = 3;
    v25 = v36;
    v26 = sub_2146DA178();
    (*(v20 + 8))(v39, v25);
    v27 = v40;
    v40[v15[11]] = v26 & 1;
    v28 = v30;
    (*(v30 + 16))(v31, v27, v15);
    __swift_destroy_boxed_opaque_existential_1(a1);
    (*(v28 + 8))(v27, v15);
  }
}

uint64_t sub_214080BDC@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = *(a2 + 4);
  v15 = *(a2 + 5);
  v16 = sub_2146D9D38();
  v21 = a2[1];
  v22 = *a2;
  (*(*(v16 - 8) + 32))(a7, a1, v16);
  v18 = type metadata accessor for UnpackResponseMessage(0, a5, a6, v17);
  v19 = a7 + v18[9];
  *v19 = v22;
  *(v19 + 16) = v21;
  *(v19 + 32) = v14;
  *(v19 + 40) = v15;
  result = sub_214080CE0(a3, a7 + v18[10]);
  *(a7 + v18[11]) = a4;
  return result;
}

uint64_t sub_214080CE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_214080D50(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904D60, &unk_21477E710);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214081ACC();
  sub_2146DAA28();
  v8[15] = 0;
  sub_2146D8B88();
  sub_214081B40(&qword_280B34D20, MEMORY[0x277CC95F8]);
  sub_2146DA388();
  if (!v1)
  {
    type metadata accessor for UnpackResponseSessionFinishedMessage(0);
    v8[14] = 1;
    sub_2146DA338();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_214080EF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_2146D8B88();
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904D70, &qword_2146EFA30);
  v21 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = &v19 - v7;
  v9 = type metadata accessor for UnpackResponseSessionFinishedMessage(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214081ACC();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v11;
  v12 = v21;
  v13 = v22;
  v26 = 0;
  sub_214081B40(&qword_280B35350, MEMORY[0x277CC9618]);
  v14 = v23;
  sub_2146DA1C8();
  (*(v13 + 32))(v19, v6, v14);
  v25 = 1;
  v15 = sub_2146DA178();
  (*(v12 + 8))(v8, v24);
  v17 = v19;
  v16 = v20;
  v19[*(v9 + 20)] = v15 & 1;
  sub_214081EB0(v17, v16, type metadata accessor for UnpackResponseSessionFinishedMessage);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_214081F18(v17, type metadata accessor for UnpackResponseSessionFinishedMessage);
}

uint64_t sub_214081228(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904D78, &qword_2146EFA38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214081B84();
  sub_2146DAA28();
  v9 = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  v12 = v3[4];
  v13 = v3[5];
  v16 = *v3;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v15[15] = 0;
  sub_214081BD8();

  sub_2146DA388();

  if (!v2)
  {
    type metadata accessor for EncoderErrorResponseMessage(0);
    LOBYTE(v16) = 1;
    sub_2146D8B88();
    sub_214081B40(&qword_280B34D20, MEMORY[0x277CC95F8]);
    sub_2146DA308();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_214081430@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904D88, &qword_2146EFA40);
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for EncoderErrorResponseMessage(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214081B84();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v20;
  v26 = 0;
  sub_214081E5C();
  v14 = v21;
  sub_2146DA1C8();
  v15 = v23;
  v16 = v24;
  *v12 = v22;
  *(v12 + 2) = v15;
  *(v12 + 3) = v16;
  *(v12 + 2) = v25;
  sub_2146D8B88();
  LOBYTE(v22) = 1;
  sub_214081B40(&qword_280B35350, MEMORY[0x277CC9618]);
  sub_2146DA148();
  (*(v13 + 8))(v9, v14);
  sub_214080CE0(v6, &v12[*(v10 + 20)]);
  sub_214081EB0(v12, v19, type metadata accessor for EncoderErrorResponseMessage);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_214081F18(v12, type metadata accessor for EncoderErrorResponseMessage);
}

uint64_t sub_214081770(uint64_t a1)
{
  sub_2146DA958();
  sub_213FDC894(v3, *v1);
  return sub_2146DA9B8();
}

uint64_t sub_2140817C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2140801F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2140817F4@<X0>(_BYTE *a2@<X8>)
{
  result = sub_214082BF8();
  *a2 = result;
  return result;
}

uint64_t sub_214081820(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(aA_70, a1);

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_214081874(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(aA_70, a1);

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_214081900()
{
  if (*v0)
  {
    return 0x6564656563637573;
  }

  else
  {
    return 0x6E6F6973736573;
  }
}

uint64_t sub_214081940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973736573 && a2 == 0xE700000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6564656563637573 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_214081A24(uint64_t a1)
{
  v2 = sub_214081ACC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214081A60(uint64_t a1)
{
  v2 = sub_214081ACC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_214081ACC()
{
  result = qword_27C904D68;
  if (!qword_27C904D68)
  {
    result = swift_getWitnessTable(byte_2146EFD88, &type metadata for UnpackResponseSessionFinishedMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C904D68);
  }

  return result;
}

uint64_t sub_214081B40(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_2146D8B88();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_214081B84()
{
  result = qword_27C904D80;
  if (!qword_27C904D80)
  {
    result = swift_getWitnessTable(byte_2146EFD10, &type metadata for EncoderErrorResponseMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C904D80);
  }

  return result;
}

unint64_t sub_214081BD8()
{
  result = qword_280B30ED8[0];
  if (!qword_280B30ED8[0])
  {
    result = swift_getWitnessTable(aAM_4, &type metadata for Explosion, v0, v1);
    atomic_store(result, qword_280B30ED8);
  }

  return result;
}

uint64_t sub_214081C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_2146D8B48())
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_214081CA4()
{
  if (*v0)
  {
    return 0x6E6F6973736573;
  }

  else
  {
    return 0x726F727265;
  }
}

uint64_t sub_214081CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6973736573 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_214081DB4(uint64_t a1)
{
  v2 = sub_214081B84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214081DF0(uint64_t a1)
{
  v2 = sub_214081B84();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_214081E5C()
{
  result = qword_280B34F30;
  if (!qword_280B34F30)
  {
    result = swift_getWitnessTable(byte_21477C470, &type metadata for Explosion, v0, v1);
    atomic_store(result, &qword_280B34F30);
  }

  return result;
}

uint64_t sub_214081EB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_214081F18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_214081FB0(uint64_t a1)
{
  sub_21408202C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_21408202C(uint64_t a1)
{
  if (!qword_280B353F8)
  {
    sub_2146D8B88();
    v1 = sub_2146D9D38();
    if (!v2)
    {
      atomic_store(v1, &qword_280B353F8);
    }
  }
}

uint64_t sub_2140820BC(uint64_t a1)
{
  result = sub_2146D8B88();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_214082138(uint64_t a1)
{
  sub_2146D9D38();
  if (v1 <= 0x3F)
  {
    sub_214082824();
    if (v2 <= 0x3F)
    {
      sub_21408202C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2140821E0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2146D8B88();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v8 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v8;
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = v13;
  }

  if (v7)
  {
    v15 = *(v6 + 64);
  }

  else
  {
    v15 = *(v6 + 64) + 1;
  }

  v16 = *(v10 + 80);
  v17 = 1;
  if (!v11)
  {
    v17 = 2;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v14)
  {
    goto LABEL_38;
  }

  v18 = v17 + *(*(v9 - 8) + 64) + ((v16 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 48) & ~v16);
  v19 = 8 * v18;
  if (v18 > 3)
  {
    goto LABEL_20;
  }

  v21 = ((a2 - v14 + ~(-1 << v19)) >> v19) + 1;
  if (HIWORD(v21))
  {
    v20 = *(a1 + v18);
    if (v20)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v21 <= 0xFF)
    {
      if (v21 < 2)
      {
        goto LABEL_38;
      }

LABEL_20:
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_38;
      }

LABEL_27:
      v22 = (v20 - 1) << v19;
      if (v18 > 3)
      {
        v22 = 0;
      }

      if (v18)
      {
        if (v18 > 3)
        {
          LODWORD(v18) = 4;
        }

        if (v18 > 2)
        {
          if (v18 == 3)
          {
            LODWORD(v18) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v18) = *a1;
          }
        }

        else if (v18 == 1)
        {
          LODWORD(v18) = *a1;
        }

        else
        {
          LODWORD(v18) = *a1;
        }
      }

      return v14 + (v18 | v22) + 1;
    }

    v20 = *(a1 + v18);
    if (*(a1 + v18))
    {
      goto LABEL_27;
    }
  }

LABEL_38:
  if (v8 == v14)
  {
    if (v7 >= 2)
    {
      v23 = (*(v6 + 48))(a1, v7, v5);
      goto LABEL_50;
    }

    return 0;
  }

  v24 = (a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v13 > 0x7FFFFFFE)
  {
    if (v11 >= 2)
    {
      v23 = (*(v10 + 48))((v24 + v16 + 48) & ~v16);
LABEL_50:
      if (v23 >= 2)
      {
        return v23 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v25 = *(v24 + 8);
  if (v25 >= 0xFFFFFFFF)
  {
    LODWORD(v25) = -1;
  }

  if ((v25 + 1) >= 2)
  {
    return v25;
  }

  else
  {
    return 0;
  }
}

double sub_21408248C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
  v12 = *(sub_2146D8B88() - 8);
  v14 = *(v12 + 84);
  v15 = *(v8 + 64);
  if (v14)
  {
    v16 = v14 - 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v12 + 80);
  v18 = *(v12 + 64);
  if (v10 <= v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = v10;
  }

  if (v19 <= 0x7FFFFFFE)
  {
    v20 = 2147483646;
  }

  else
  {
    v20 = v19;
  }

  if (!v9)
  {
    ++v15;
  }

  if (!v14)
  {
    ++v18;
  }

  v21 = v18 + ((v17 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 48) & ~v17) + 1;
  if (a3 <= v20)
  {
    goto LABEL_28;
  }

  if (v21 <= 3)
  {
    v22 = ((a3 - v20 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v22))
    {
      v11 = 4;
      if (v20 >= a2)
      {
        goto LABEL_38;
      }

      goto LABEL_29;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (v22 >= 2)
    {
      v11 = v23;
    }

    else
    {
      v11 = 0;
    }

LABEL_28:
    if (v20 >= a2)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
  }

  v11 = 1;
  if (v20 >= a2)
  {
LABEL_38:
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        *&a1[v21] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_45;
      }

      *&a1[v21] = 0;
    }

    else if (v11)
    {
      a1[v21] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_45;
    }

    if (!a2)
    {
      return result;
    }

LABEL_45:
    if (v10 == v20)
    {
      v27 = *(v30 + 56);

      v27(a1, a2 + 1, v9, v7);
    }

    else
    {
      v28 = &a1[v15 + 7] & 0xFFFFFFFFFFFFFFF8;
      if (v19 > 0x7FFFFFFE)
      {
        if (v14 >= 2)
        {
          v29 = *(v12 + 56);

          v29((v28 + v17 + 48) & ~v17, a2 + 1);
        }
      }

      else if (a2 > 0x7FFFFFFE)
      {
        result = 0.0;
        *(v28 + 16) = 0u;
        *(v28 + 32) = 0u;
        *v28 = 0u;
        *v28 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *(v28 + 8) = a2;
      }
    }

    return result;
  }

LABEL_29:
  v24 = ~v20 + a2;
  if (v21 >= 4)
  {
    bzero(a1, v21);
    *a1 = v24;
    v25 = 1;
    if (v11 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v25 = (v24 >> (8 * v21)) + 1;
  if (!v21)
  {
LABEL_59:
    if (v11 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v26 = v24 & ~(-1 << (8 * v21));
  bzero(a1, v21);
  if (v21 == 3)
  {
    *a1 = v26;
    a1[2] = BYTE2(v26);
    goto LABEL_59;
  }

  if (v21 == 2)
  {
    *a1 = v26;
    if (v11 > 1)
    {
LABEL_63:
      if (v11 == 2)
      {
        *&a1[v21] = v25;
      }

      else
      {
        *&a1[v21] = v25;
      }

      return result;
    }
  }

  else
  {
    *a1 = v24;
    if (v11 > 1)
    {
      goto LABEL_63;
    }
  }

LABEL_60:
  if (v11)
  {
    a1[v21] = v25;
  }

  return result;
}

void sub_214082824()
{
  if (!qword_280B34F28)
  {
    v0 = sub_2146D9D38();
    if (!v1)
    {
      atomic_store(v0, &qword_280B34F28);
    }
  }
}

unint64_t sub_214082878()
{
  result = qword_27C904DA0;
  if (!qword_27C904DA0)
  {
    result = swift_getWitnessTable(aM_156, &type metadata for UnpackResponseSessionFinishedMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C904DA0);
  }

  return result;
}

unint64_t sub_2140828D0()
{
  result = qword_27C904DA8;
  if (!qword_27C904DA8)
  {
    result = swift_getWitnessTable(asc_2146EFCC0, &type metadata for EncoderErrorResponseMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C904DA8);
  }

  return result;
}

unint64_t sub_214082928()
{
  result = qword_27C904DB0;
  if (!qword_27C904DB0)
  {
    result = swift_getWitnessTable(aQ_65, &type metadata for EncoderErrorResponseMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C904DB0);
  }

  return result;
}

unint64_t sub_214082980()
{
  result = qword_27C904DB8;
  if (!qword_27C904DB8)
  {
    result = swift_getWitnessTable(byte_2146EFC58, &type metadata for EncoderErrorResponseMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C904DB8);
  }

  return result;
}

unint64_t sub_2140829D8()
{
  result = qword_27C904DC0;
  if (!qword_27C904DC0)
  {
    result = swift_getWitnessTable(aQ_66, &type metadata for UnpackResponseSessionFinishedMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C904DC0);
  }

  return result;
}

unint64_t sub_214082A30()
{
  result = qword_27C904DC8;
  if (!qword_27C904DC8)
  {
    result = swift_getWitnessTable(aA_71, &type metadata for UnpackResponseSessionFinishedMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C904DC8);
  }

  return result;
}

void sub_214082A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

void sub_214082AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_214082B3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214082C08@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if ((result + 1) >= 4)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010003u >> (8 * (result + 1));
  }

  *a2 = v2;
  return result;
}

uint64_t sub_214082C30@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if ((result + 1) >= 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0x2010003u >> (8 * (result + 1));
  }

  *a2 = v2;
  return result;
}

uint64_t sub_214082C9C()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_2146F04F8[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_214082D24(uint64_t a1)
{
  v2 = *v1;
  sub_2146DA958();
  MEMORY[0x216055860](qword_2146F04F8[v2]);
  return sub_2146DA9B8();
}

void *sub_214082E50@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (result)
  {
    result = sub_214082E9C(result, &v4);
    v3 = v4;
    if (v4 == 14)
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 14;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_214082E9C@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 14;
  if (result < 0xE)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_214082F8C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_214082FBC(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

unint64_t sub_21408321C()
{
  v1 = 0x3E6C696E3CLL;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904DD0, &unk_214741A90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - v3;
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_2146D9EF8();

  v17 = 0xD00000000000001ALL;
  v18 = 0x800000021478BF90;
  if (*(v0 + 8))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + 8))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x2160545D0](v5, v6);

  MEMORY[0x2160545D0](0x6B63616270617420, 0xEA0000000000203ALL);
  v7 = type metadata accessor for LiteTextMessage(0);
  sub_213FB2E54(v0 + *(v7 + 28), v4, &qword_27C904DD0, &unk_214741A90);
  v8 = type metadata accessor for LiteTapback(0);
  if ((*(*(v8 - 8) + 48))(v4, 1, v8) == 1)
  {
    sub_21408354C(v4);
    v9 = 0xE500000000000000;
  }

  else
  {
    v15 = 0xD000000000000013;
    v16 = 0x800000021478BFB0;
    v10 = v4[*(v8 + 20)];
    if (v10 == 15)
    {
      v11 = 0xE500000000000000;
    }

    else
    {
      v14[1] = v10 - 1;
      sub_214083684();
      v1 = sub_2146D9E18();
      v11 = v12;
    }

    MEMORY[0x2160545D0](v1, v11);

    MEMORY[0x2160545D0](62, 0xE100000000000000);
    v1 = v15;
    v9 = v16;
    sub_2140835B4(v4);
  }

  MEMORY[0x2160545D0](v1, v9);

  MEMORY[0x2160545D0](62, 0xE100000000000000);
  return v17;
}

unint64_t LiteTapback.debugDescription.getter()
{
  if (*(v0 + *(type metadata accessor for LiteTapback(0) + 20)) == 15)
  {
    v1 = 0xE500000000000000;
    v2 = 0x3E6C696E3CLL;
  }

  else
  {
    sub_214083684();
    v2 = sub_2146D9E18();
    v1 = v3;
  }

  MEMORY[0x2160545D0](v2, v1);

  MEMORY[0x2160545D0](62, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t sub_21408354C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904DD0, &unk_214741A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2140835B4(uint64_t a1)
{
  v2 = type metadata accessor for LiteTapback(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BlastDoor::LiteTapback::AssociatedMessageType __swiftcall LiteTapback.AssociatedMessageType.init(defaultingRawValue:)(Swift::Int defaultingRawValue)
{
  v2 = v1;
  result = LiteTapback.AssociatedMessageType.init(rawValue:)(defaultingRawValue).value;
  v4 = v5;
  if (v5 == 15)
  {
    v4 = 0;
  }

  *v2 = v4;
  return result;
}

BlastDoor::LiteTapback::AssociatedMessageType_optional __swiftcall LiteTapback.AssociatedMessageType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 15;
  if ((rawValue + 1) < 0xF)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_214083684()
{
  result = qword_280B30BB0[0];
  if (!qword_280B30BB0[0])
  {
    result = swift_getWitnessTable(MEMORY[0x277D83BD0], MEMORY[0x277D83B88], v0, v1);
    atomic_store(result, qword_280B30BB0);
  }

  return result;
}

uint64_t LiteTapback.associatedMessageUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2146D8B88();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t LiteTapback.associatedMessageUUID.setter(uint64_t a1)
{
  v3 = sub_2146D8B88();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t LiteTapback.associatedMessageType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for LiteTapback(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t LiteTapback.associatedMessageType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for LiteTapback(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t LiteTapback.associatedMessageEmoji.getter()
{
  v1 = v0 + *(type metadata accessor for LiteTapback(0) + 24);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);

    return v2;
  }

  return result;
}

uint64_t sub_2140839CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for LiteTapback(0) + 24);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_214083A68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for LiteTapback(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t LiteTapback.associatedMessageEmoji.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for LiteTapback(0) + 24);
  v11[0] = a1;
  v11[1] = a2;
  v6 = *v5;
  v10 = *(v5 + 32);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v6(v11, &v10, v9))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*LiteTapback.associatedMessageEmoji.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for LiteTapback(0) + 24);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_214065C38;
  }

  return result;
}

uint64_t LiteTapback.$associatedMessageEmoji.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LiteTapback(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_214083DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for LiteTapback(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_214083E48(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for LiteTapback(0) + 24);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v8, v9);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

__n128 LiteTapback.$associatedMessageEmoji.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for LiteTapback(0) + 24));
  v7 = v6[1].n128_i64[0];
  v8 = v6[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

void (*LiteTapback.$associatedMessageEmoji.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for LiteTapback(0) + 24);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_2140660B8;
}

unint64_t sub_214084004@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 1;
  *(v4 + 16) = sub_214084D54;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403254C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_21408414C()
{
  result = qword_27C904DD8;
  if (!qword_27C904DD8)
  {
    result = swift_getWitnessTable(byte_2146EFF20, &type metadata for LiteTextMessage.MessageType, v0, v1);
    atomic_store(result, &qword_27C904DD8);
  }

  return result;
}

unint64_t sub_2140841CC()
{
  result = qword_27C904DE0;
  if (!qword_27C904DE0)
  {
    result = swift_getWitnessTable(a1_25, &type metadata for LiteTextMessage.MessageType, v0, v1);
    atomic_store(result, &qword_27C904DE0);
  }

  return result;
}

unint64_t sub_214084220()
{
  result = qword_27C904DE8;
  if (!qword_27C904DE8)
  {
    result = swift_getWitnessTable(byte_2146F0058, &type metadata for LiteTextMessage.MessageType, v0, v1);
    atomic_store(result, &qword_27C904DE8);
  }

  return result;
}

unint64_t sub_2140842A8()
{
  result = qword_27C904E00;
  if (!qword_27C904E00)
  {
    result = swift_getWitnessTable(aI_79, &type metadata for LiteTextMessage.Effect, v0, v1);
    atomic_store(result, &qword_27C904E00);
  }

  return result;
}

unint64_t sub_214084328()
{
  result = qword_27C904E08;
  if (!qword_27C904E08)
  {
    result = swift_getWitnessTable(aY_63, &type metadata for LiteTextMessage.Effect, v0, v1);
    atomic_store(result, &qword_27C904E08);
  }

  return result;
}

unint64_t sub_21408437C()
{
  result = qword_27C904E10;
  if (!qword_27C904E10)
  {
    result = swift_getWitnessTable(asc_2146F01B8, &type metadata for LiteTextMessage.Effect, v0, v1);
    atomic_store(result, &qword_27C904E10);
  }

  return result;
}

uint64_t sub_214084400(uint64_t a1)
{
  *(a1 + 8) = sub_214084484(&qword_27C904E28, type metadata accessor for LiteTextMessage, byte_2146FAB30);
  result = sub_214084484(&qword_27C904E30, type metadata accessor for LiteTextMessage, byte_2146FAB58);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214084484(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2140844D0()
{
  result = qword_27C904E38;
  if (!qword_27C904E38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LiteTapback.AssociatedMessageType, &type metadata for LiteTapback.AssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C904E38);
  }

  return result;
}

uint64_t sub_214084550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21408458C()
{
  result = qword_27C904E40;
  if (!qword_27C904E40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LiteTapback.AssociatedMessageType, &type metadata for LiteTapback.AssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C904E40);
  }

  return result;
}

unint64_t sub_2140845E0()
{
  result = qword_27C904E48;
  if (!qword_27C904E48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LiteTapback.AssociatedMessageType, &type metadata for LiteTapback.AssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C904E48);
  }

  return result;
}

uint64_t sub_214084664(uint64_t a1)
{
  *(a1 + 8) = sub_214084484(&qword_27C904E60, type metadata accessor for LiteTapback, protocol conformance descriptor for LiteTapback);
  result = sub_214084484(&qword_27C904E68, type metadata accessor for LiteTapback, protocol conformance descriptor for LiteTapback);
  *(a1 + 16) = result;
  return result;
}

void sub_214084710(uint64_t a1)
{
  sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, qword_280B2F4B0, &type metadata for LiteTextMessage.Effect);
    if (v2 <= 0x3F)
    {
      sub_21408481C(319, &qword_280B353F8, MEMORY[0x277CC95F0]);
      if (v3 <= 0x3F)
      {
        sub_21408481C(319, &qword_280B2FBB0, type metadata accessor for LiteTapback);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21408481C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2146D9D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MBDActionType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MBDActionType(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_2140849F8(uint64_t a1)
{
  sub_2146D8B88();
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2FBF8, &type metadata for LiteTapback.AssociatedMessageType);
    if (v2 <= 0x3F)
    {
      sub_214084AA4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_214084AA4(uint64_t a1)
{
  if (!qword_280B2E570)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C904008, &qword_2146EC050);
    v5 = type metadata accessor for Validated(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_280B2E570);
    }
  }
}

uint64_t getEnumTagSinglePayload for LiteTapback.AssociatedMessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LiteTapback.AssociatedMessageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_214084C58()
{
  result = qword_27C904E70;
  if (!qword_27C904E70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LiteTapback.AssociatedMessageType, &type metadata for LiteTapback.AssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C904E70);
  }

  return result;
}

unint64_t sub_214084CAC()
{
  result = qword_27C904E78;
  if (!qword_27C904E78)
  {
    result = swift_getWitnessTable(byte_2146F00E8, &type metadata for LiteTextMessage.Effect, v0, v1);
    atomic_store(result, &qword_27C904E78);
  }

  return result;
}

unint64_t sub_214084D00()
{
  result = qword_27C904E80;
  if (!qword_27C904E80)
  {
    result = swift_getWitnessTable(byte_2146EFF88, &type metadata for LiteTextMessage.MessageType, v0, v1);
    atomic_store(result, &qword_27C904E80);
  }

  return result;
}

uint64_t sub_214084D5C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_214084D8C(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_214084F0C(uint64_t result, char a2)
{
  if (a2 & 1 | ((result & 0xFFFFFFFFFFF1F801) != 1))
  {
    return 0;
  }

  return result;
}

BOOL sub_214084F80(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_214084FB0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_214084FDC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

unint64_t sub_214085190()
{
  result = qword_27C904E88;
  if (!qword_27C904E88)
  {
    result = swift_getWitnessTable(aYMdn, &type metadata for SMSFilteringSettingsMessage, v0, v1);
    atomic_store(result, &qword_27C904E88);
  }

  return result;
}

unint64_t sub_2140851E4()
{
  result = qword_27C904E90;
  if (!qword_27C904E90)
  {
    result = swift_getWitnessTable(aGmN, &type metadata for SMSFilteringSettingsMessage, v0, v1);
    atomic_store(result, &qword_27C904E90);
  }

  return result;
}

unint64_t sub_21408523C()
{
  result = qword_27C904E98;
  if (!qword_27C904E98)
  {
    result = swift_getWitnessTable(asc_2146F0678, &type metadata for SMSFilteringSettingsMessage.SMSFilterCapabilitiesOptions, v0, v1);
    atomic_store(result, &qword_27C904E98);
  }

  return result;
}

unint64_t sub_214085294()
{
  result = qword_27C904EA0;
  if (!qword_27C904EA0)
  {
    result = swift_getWitnessTable(byte_2146F05B0, &type metadata for SMSFilteringSettingsMessage.SMSFilterCapabilitiesOptions, v0, v1);
    atomic_store(result, &qword_27C904EA0);
  }

  return result;
}

uint64_t sub_214085314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214085350()
{
  result = qword_27C904EA8;
  if (!qword_27C904EA8)
  {
    result = swift_getWitnessTable(aY_64, &type metadata for SMSFilteringSettingsMessage.SMSFilterCapabilitiesOptions, v0, v1);
    atomic_store(result, &qword_27C904EA8);
  }

  return result;
}

unint64_t sub_2140853A4()
{
  result = qword_27C904EB0;
  if (!qword_27C904EB0)
  {
    result = swift_getWitnessTable(byte_2146F06D8, &type metadata for SMSFilteringSettingsMessage.SMSFilterCapabilitiesOptions, v0, v1);
    atomic_store(result, &qword_27C904EB0);
  }

  return result;
}

unint64_t sub_2140853FC()
{
  result = qword_27C904EB8;
  if (!qword_27C904EB8)
  {
    result = swift_getWitnessTable(asc_2146F0700, &type metadata for SMSFilteringSettingsMessage.SMSFilterCapabilitiesOptions, v0, v1);
    atomic_store(result, &qword_27C904EB8);
  }

  return result;
}

unint64_t sub_214085454()
{
  result = qword_27C904EC0;
  if (!qword_27C904EC0)
  {
    result = swift_getWitnessTable(byte_2146F0728, &type metadata for SMSFilteringSettingsMessage.SMSFilterCapabilitiesOptions, v0, v1);
    atomic_store(result, &qword_27C904EC0);
  }

  return result;
}

uint64_t sub_2140854AC(uint64_t a1, unsigned int a2)
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

uint64_t sub_214085508(uint64_t result, unsigned int a2, unsigned int a3)
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

id sub_214085580()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904EC8, "</\r");
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for WalletCloudStoreZoneInvitationMessage(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(MEMORY[0x277D43178]) init];
  if (result)
  {
    v10 = result;
    [result writeUint32:*v1 forTag:1];
    v11 = type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage(0);
    sub_2140857F4(v1 + *(v11 + 20), v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_214085864(v4);
    }

    else
    {
      sub_2140858CC(v4, v8);
      v12 = sub_2144DC484();
      v13 = sub_214601954(v12);
      v15 = v14;
      v16 = sub_2146D8A38();
      sub_213FB54FC(v13, v15);
      [v10 writeData:v16 forTag:2];

      sub_2140860F8(v8);
    }

    v17 = (v1 + *(v11 + 24));
    if ((v17[1] & 1) == 0)
    {
      [v10 writeUint32:*v17 forTag:3];
    }

    result = [v10 immutableData];
    if (result)
    {
      v18 = result;

      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage(uint64_t a1)
{
  result = qword_27C904EE8;
  if (!qword_27C904EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2140857F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904EC8, "</\r");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214085864(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904EC8, "</\r");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2140858CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletCloudStoreZoneInvitationMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_214085960@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage(0) + 20);

  return sub_2140857F4(v3, a1);
}

uint64_t sub_2140859A4(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage(0) + 20);

  return sub_214086154(a1, v3);
}

uint64_t sub_214085A70(uint64_t a1)
{
  result = type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t sub_214085AF8@<X0>(uint64_t a3@<X8>)
{
  v56[0] = a3;
  v64 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904EC8, "</\r");
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = (v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = v56 - v8;
  v10 = objc_allocWithZone(MEMORY[0x277D43170]);
  v11 = sub_2146D8A38();
  v12 = [v10 initWithData_];

  v13 = type metadata accessor for WalletCloudStoreZoneInvitationMessage(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v56[1] = v14 + 56;
  v57 = v15;
  v15(v9, 1, 1, v13);
  v16 = [v12 position];
  if (v16 >= [v12 length])
  {
LABEL_52:
    sub_2140861C4();
    swift_allocError();
    *v49 = 1;
LABEL_53:
    swift_willThrow();

    return sub_214085864(v9);
  }

  else
  {
    v59 = 0;
    v60 = 1;
    v58 = 1;
    do
    {
      if ([v12 hasError])
      {
        break;
      }

      v18 = 0;
      v19 = 0;
      v20 = 0;
      while (1)
      {
        v61 = 0;
        v21 = [v12 position] + 1;
        if (v21 >= [v12 position] && (v22 = objc_msgSend(v12, "position") + 1, v22 <= objc_msgSend(v12, "length")))
        {
          v23 = [v12 data];
          [v23 getBytes:&v61 range:{objc_msgSend(v12, "position"), 1}];

          [v12 setPosition:{objc_msgSend(v12, "position") + 1}];
        }

        else
        {
          [v12 _setError];
        }

        v20 |= (v61 & 0x7F) << v18;
        if ((v61 & 0x80) == 0)
        {
          break;
        }

        v18 += 7;
        if (v19++ >= 9)
        {
          v25 = 0;
          goto LABEL_18;
        }
      }

      if ([v12 hasError])
      {
        v25 = 0;
      }

      else
      {
        v25 = v20;
      }

LABEL_18:
      if ([v12 hasError])
      {
        sub_2140861C4();
        swift_allocError();
        *v51 = 0;
        goto LABEL_53;
      }

      v26 = v25 >> 3;
      if ((v25 >> 3) == 1)
      {
        v39 = 0;
        v40 = 0;
        v41 = 0;
        while (1)
        {
          v62 = 0;
          v42 = [v12 position] + 1;
          if (v42 >= [v12 position] && (v43 = objc_msgSend(v12, "position") + 1, v43 <= objc_msgSend(v12, "length")))
          {
            v44 = [v12 data];
            [v44 getBytes:&v62 range:{objc_msgSend(v12, "position"), 1}];

            [v12 setPosition:{objc_msgSend(v12, "position") + 1}];
          }

          else
          {
            [v12 _setError];
          }

          v41 |= (v62 & 0x7F) << v39;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v39 += 7;
          v33 = v40++ > 8;
          if (v33)
          {
            LODWORD(v59) = 0;
            v60 = 0;
            goto LABEL_4;
          }
        }

        v45 = [v12 hasError];
        v60 = 0;
        v46 = v45 ? 0 : v41;
        LODWORD(v59) = v46;
      }

      else if (v26 == 2)
      {
        v34 = PBReaderReadData();
        if (v34)
        {
          v35 = v34;
          v36 = sub_2146D8A58();
          v38 = v37;

          sub_2144DB5B0(v7);
          sub_214085864(v9);
          if (v3)
          {

            return sub_213FB54FC(v36, v38);
          }

          sub_213FB54FC(v36, v38);
          v57(v7, 0, 1, v13);
          sub_214086218(v7, v9);
        }
      }

      else if (v26 == 3)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        while (1)
        {
          v63 = 0;
          v30 = [v12 position] + 1;
          if (v30 >= [v12 position] && (v31 = objc_msgSend(v12, "position") + 1, v31 <= objc_msgSend(v12, "length")))
          {
            v32 = [v12 data];
            [v32 getBytes:&v63 range:{objc_msgSend(v12, "position"), 1}];

            [v12 setPosition:{objc_msgSend(v12, "position") + 1}];
          }

          else
          {
            [v12 _setError];
          }

          v29 |= (v63 & 0x7F) << v27;
          if ((v63 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v33 = v28++ > 8;
          if (v33)
          {
            HIDWORD(v59) = 0;
            v58 = 0;
            goto LABEL_4;
          }
        }

        v47 = [v12 hasError];
        v58 = 0;
        v48 = v47 ? 0 : v29;
        HIDWORD(v59) = v48;
      }

      else
      {
        PBReaderSkipValueWithTag();
      }

LABEL_4:
      v17 = [v12 position];
    }

    while (v17 < [v12 length]);
    if (v60)
    {
      goto LABEL_52;
    }

    v52 = type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage(0);
    v53 = v56[0];
    result = sub_214086218(v9, v56[0] + *(v52 + 20));
    v54 = HIDWORD(v59);
    *v53 = v59;
    v55 = v53 + *(v52 + 24);
    *v55 = v54;
    v55[4] = v58 & 1;
  }

  return result;
}

uint64_t sub_2140860F8(uint64_t a1)
{
  v2 = type metadata accessor for WalletCloudStoreZoneInvitationMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214086154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904EC8, "</\r");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2140861C4()
{
  result = qword_27C904ED0;
  if (!qword_27C904ED0)
  {
    result = swift_getWitnessTable(byte_21476D1F0, &type metadata for WalletValidationError, v0, v1);
    atomic_store(result, &qword_27C904ED0);
  }

  return result;
}

uint64_t sub_214086218(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904EC8, "</\r");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_214086288(uint64_t a1)
{
  *(a1 + 8) = sub_2140862F0(&qword_27C904ED8, byte_2146FDA60);
  result = sub_2140862F0(&qword_27C904EE0, aQom);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2140862F0(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_21408635C(uint64_t a1)
{
  sub_2140863F0(319);
  if (v1 <= 0x3F)
  {
    sub_214086448();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2140863F0(uint64_t a1)
{
  if (!qword_27C904EF8)
  {
    type metadata accessor for WalletCloudStoreZoneInvitationMessage(255);
    v1 = sub_2146D9D38();
    if (!v2)
    {
      atomic_store(v1, &qword_27C904EF8);
    }
  }
}

void sub_214086448()
{
  if (!qword_280B2E328)
  {
    v0 = sub_2146D9D38();
    if (!v1)
    {
      atomic_store(v0, &qword_280B2E328);
    }
  }
}

void *BlastDoorService.__allocating_init(name:instanceType:queue:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_2146D9628();
  v7 = a4;

  v8 = xpc_connection_create((v6 + 32), v7);

  v9 = type metadata accessor for XPCConnection();
  swift_allocObject();
  v10 = v7;
  swift_unknownObjectRetain();
  v11 = a3;
  v12 = sub_2146A2BBC(v8, v11, v10);
  swift_unknownObjectRelease();

  v18[3] = v9;
  v18[4] = &off_2826A5BA0;
  v18[0] = v12;
  type metadata accessor for BlastDoorService();
  v13 = swift_allocObject();
  v13[2] = v10;
  sub_214053840(v18, (v13 + 3));
  v13[8] = v11;
  v14 = v13[6];
  v15 = v13[7];
  __swift_project_boxed_opaque_existential_1(v13 + 3, v14);
  v16 = *(v15 + 16);

  v16(v14, v15);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v13;
}

void *BlastDoorService.__allocating_init(endpoint:queue:)(_xpc_endpoint_s *a1, void *a2)
{
  v3 = xpc_connection_create_from_endpoint(a1);
  v4 = type metadata accessor for XPCConnection();
  swift_allocObject();
  v5 = @"Default";
  v6 = a2;
  v7 = sub_2146A2BBC(v3, v5, v6);
  swift_unknownObjectRelease();

  v13[3] = v4;
  v13[4] = &off_2826A5BA0;
  v13[0] = v7;
  type metadata accessor for BlastDoorService();
  v8 = swift_allocObject();
  v8[2] = v6;
  sub_214053840(v13, (v8 + 3));
  v8[8] = v5;
  v9 = v8[6];
  v10 = v8[7];
  __swift_project_boxed_opaque_existential_1(v8 + 3, v9);
  v11 = *(v10 + 16);

  v11(v9, v10);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v8;
}

uint64_t sub_214086740(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v58 = a6;
  v59 = a8;
  v49 = a7;
  v63 = a4;
  v55 = a1;
  v56 = a3;
  v53 = a13;
  v54 = a14;
  v52 = a11;
  v61 = a12;
  v62 = a5;
  v60 = *(a12 - 8);
  v15 = *(v60 + 64);
  v57 = a9;
  v47 = a10;
  MEMORY[0x28223BE20](a1);
  v46 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2146D9438();
  v43 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v45 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v23 = &v43 - v22;
  v44 = a2;
  v24 = a2[7];
  v51 = a2[6];
  v48 = v24;
  v50 = __swift_project_boxed_opaque_existential_1(a2 + 3, v51);
  sub_213FB2E54(v62, v23, &unk_27C904F30, &unk_2146EFA20);
  (*(v17 + 16))(&v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v49, v16);
  v25 = v60;
  v26 = v61;
  (*(v60 + 16))(&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v47, v61);
  v27 = (*(v20 + 80) + 73) & ~*(v20 + 80);
  v28 = (v21 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (*(v17 + 80) + v28 + 8) & ~*(v17 + 80);
  v30 = (v18 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (*(v25 + 80) + v30 + 16) & ~*(v25 + 80);
  v32 = swift_allocObject();
  v33 = v53;
  *(v32 + 16) = v52;
  *(v32 + 24) = v26;
  v35 = v54;
  v34 = v55;
  *(v32 + 32) = v33;
  *(v32 + 40) = v35;
  v36 = v56;
  *(v32 + 48) = v34;
  *(v32 + 56) = v36;
  *(v32 + 64) = v44;
  *(v32 + 72) = v63;
  sub_21408AC04(v23, v32 + v27, &unk_27C904F30, &unk_2146EFA20);
  *(v32 + v28) = v58;
  (*(v17 + 32))(v32 + v29, v45, v43);
  v37 = (v32 + v30);
  v38 = v60;
  v39 = v57;
  *v37 = v59;
  v37[1] = v39;
  (*(v38 + 32))(v32 + v31, v46, v61);
  v40 = v48;
  v41 = *(v48 + 24);
  swift_unknownObjectRetain();

  v41(v36, v63, v62, sub_21408AA7C, v32, v51, v40);
}

uint64_t sub_214086AFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, char *a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t *, char *, uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(char *, uint64_t, uint64_t, uint64_t), uint64_t a14, uint64_t a15)
{
  v76 = a7;
  v77 = a8;
  v72 = a3;
  v73 = a6;
  LODWORD(v70) = a5;
  v71 = a4;
  v74 = a14;
  v78 = a10;
  v79 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C917FA0, &qword_2146ED5E0);
  v75 = a12;
  v17 = sub_2146DA9C8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (&v67 - v19);
  swift_getObjectType();
  v21 = sub_21408FD98();
  v22 = sub_21408FFD8();
  if (v21 == 7)
  {
    v43 = v75;
    v87 = v74;
    v44 = v76;
    v45 = v77;
    v47 = v78;
    v46 = v79;

    return sub_213FB19EC(a1, v44, a11, v45, v46, v47, v43, a13, v87, a15);
  }

  else if (v21 == 13)
  {
    if (v22 != 1)
    {
LABEL_8:
      v72 = v18;
      swift_unknownObjectRetain();
      sub_2145073B0(&v80);
      v26 = v80;
      v25 = v81;
      v28 = v82;
      v27 = v83;
      v30 = v84;
      v29 = v85;
      LODWORD(v71) = sub_2146D9BA8();
      if (qword_280B35358 != -1)
      {
        swift_once();
      }

      v70 = qword_280B35408;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_2146EA710;
      v80 = v26;
      v81 = v25;
      v82 = v28;
      v83 = v27;
      v84 = v30;
      v85 = v29;

      v32 = sub_2146D9618();
      v68 = v30;
      v69 = v28;
      v33 = v32;
      v35 = v34;
      *(v31 + 56) = MEMORY[0x277D837D0];
      *(v31 + 64) = sub_213FB2DA0();
      *(v31 + 32) = v33;
      *(v31 + 40) = v35;
      sub_2146D91D8(v71, &dword_213FAF000, v70, "Unpack failed with explosion: %{public}@", 40, 2, v31);

      sub_21404A6EC();
      v36 = swift_allocError();
      *v37 = v26;
      v37[1] = v25;
      v37[2] = v28;
      v37[3] = v27;
      v38 = v68;
      v37[4] = v68;
      v37[5] = v29;
      *v20 = v36;
      swift_storeEnumTagMultiPayload();

      sub_213FB2F04(v76, v77, v20, v75);
      v39 = *(v72 + 8);
      v39(v20, v17);
      v40 = swift_allocError();
      *v41 = v26;
      v41[1] = v25;
      v41[2] = v69;
      v41[3] = v27;
      v41[4] = v38;
      v41[5] = v29;
      *v20 = v40;
      swift_storeEnumTagMultiPayload();
      v79(v20, v73, 1);
      return (v39)(v20, v17);
    }

    if (a2 > 0)
    {
      v23 = sub_2146D9B88();
      if (qword_280B35360 != -1)
      {
        swift_once();
      }

      v24 = qword_280B35410;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
      *(swift_allocObject() + 16) = xmmword_2146EA710;
      v80 = v72;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904F60, &qword_2146F08F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904F68, &qword_2146F08F8);
      swift_dynamicCast();
      sub_2146D91D8(v23, &dword_213FAF000, v24, "Blastdoor connection interrupted, too many failures -- failing (message: %p)", v67);

      goto LABEL_8;
    }

    v59 = a2 + 1;
    v60 = sub_2146D9B88();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    v61 = qword_280B35410;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_2146E6910;
    v80 = v59;
    v63 = sub_2146D9618();
    v65 = v64;
    *(v62 + 56) = MEMORY[0x277D837D0];
    *(v62 + 64) = sub_213FB2DA0();
    *(v62 + 32) = v63;
    *(v62 + 40) = v65;
    v66 = v72;
    v80 = v72;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904F60, &qword_2146F08F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904F68, &qword_2146F08F8);
    swift_dynamicCast();
    sub_2146D91D8(v60, &dword_213FAF000, v61, "Blastdoor connection interrupted, retrying (attempt: %@, message: %p)", 69, 2, v62);

    return sub_214086740(v59, v71, v66, v70 & 1, v73, v76, v77, v79, v78, a11, v75, a13, v74, a15);
  }

  else
  {
    v48 = sub_2146D9BA8();
    if (qword_280B35358 != -1)
    {
      swift_once();
    }

    v49 = qword_280B35408;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_2146EA710;
    LOBYTE(v80) = sub_21408FD98();
    v51 = sub_2146D9618();
    v53 = v52;
    *(v50 + 56) = MEMORY[0x277D837D0];
    *(v50 + 64) = sub_213FB2DA0();
    *(v50 + 32) = v51;
    *(v50 + 40) = v53;
    sub_2146D91D8(v48, &dword_213FAF000, v49, "Unpack failed with unexpected response type: %@", 47, 2, v50);

    sub_21404A6EC();
    v54 = swift_allocError();
    *v55 = 0xD000000000000026;
    v55[1] = 0x800000021478C210;
    v55[2] = 0x546E776F6E6B6E55;
    v55[3] = 0xEB00000000657079;
    v55[4] = 0;
    v55[5] = 0;
    *v20 = v54;
    swift_storeEnumTagMultiPayload();
    sub_213FB2F04(v76, v77, v20, v75);
    v56 = *(v18 + 8);
    v56(v20, v17);
    v57 = swift_allocError();
    *v58 = 0xD000000000000026;
    v58[1] = 0x800000021478C210;
    v58[2] = 0x546E776F6E6B6E55;
    v58[3] = 0xEB00000000657079;
    v58[4] = 0;
    v58[5] = 0;
    *v20 = v57;
    swift_storeEnumTagMultiPayload();
    v79(v20, v73, 1);
    return (v56)(v20, v17);
  }
}

uint64_t sub_2140872F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v22 - v17;
  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = a7;
  v19[5] = a8;
  v19[6] = a3;
  v19[7] = a4;
  v20 = sub_2146D8B88();
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);

  sub_213FB49EC(a1, a2, 0, v18, sub_21408AD2C, v19, a5, a6, a7, a8);

  return sub_213FB2DF4(v18, &unk_27C904F30, &unk_2146EFA20);
}

uint64_t sub_214087474(uint64_t a1, uint64_t a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a4;
  v13 = sub_2146D9B88();
  if (qword_280B35358 != -1)
  {
    swift_once();
  }

  v14 = qword_280B35408;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2146EA710;
  v25 = a1;
  MetatypeMetadata = swift_getMetatypeMetadata();
  v17 = sub_213FB17C8(&v25, MetatypeMetadata);
  v19 = v18;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_213FB2DA0();
  *(v15 + 32) = v17;
  *(v15 + 40) = v19;
  sub_2146D91D8(v13, &dword_213FAF000, v14, "Starting unpack with type: %{public}@", 37, 2, v15);

  v25 = a2;
  v26 = a3;
  v27 = v12;
  sub_21402D9F8(a2, a3);
  v20 = sub_21408A5E8();
  sub_2140872F4(a1, &v25, a5, a6, a7, &type metadata for UnpackRequestMessage, a8, v20);
  return sub_213FB54FC(v25, v26);
}

uint64_t sub_2140875F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a2;
  v8 = a2[1];
  v19 = *a3;
  v20 = *(a2 + 16);
  v10 = sub_2146D9B88();
  if (qword_280B35358 != -1)
  {
    swift_once();
  }

  v11 = qword_280B35408;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2146EA710;
  v23[0] = a1;
  MetatypeMetadata = swift_getMetatypeMetadata();
  v14 = sub_213FB17C8(v23, MetatypeMetadata);
  v16 = v15;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_213FB2DA0();
  *(v12 + 32) = v14;
  *(v12 + 40) = v16;
  sub_2146D91D8(v10, &dword_213FAF000, v11, "Starting unpack with type: %{public}@", 37, 2, v12);

  v23[0] = v9;
  v23[1] = v8;
  v24 = v20;
  v25 = v19;
  v17 = sub_21408A63C();

  sub_213FB4E90(a1, v23, a4, &type metadata for UnpackFileRequestMessage, a5, v17, a6);
}

uint64_t sub_214087794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v38 = a4;
  v39 = a2;
  v40 = a3;
  v42 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v31 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = a7;
  v34 = swift_getAssociatedConformanceWitness();
  v35 = AssociatedConformanceWitness;
  v16 = type metadata accessor for ContextualUnpackRequestMessage(0, AssociatedTypeWitness, AssociatedConformanceWitness, v34);
  v37 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  v33 = *a5;
  v32 = sub_2146D9B88();
  if (qword_280B35358 != -1)
  {
    swift_once();
  }

  v19 = qword_280B35408;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2146EA710;
  v44 = a1;
  MetatypeMetadata = swift_getMetatypeMetadata();
  v22 = sub_213FB17C8(&v44, MetatypeMetadata);
  v31 = a1;
  v24 = v23;
  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = sub_213FB2DA0();
  *(v20 + 32) = v22;
  *(v20 + 40) = v24;
  sub_2146D91D8(v32, &dword_213FAF000, v19, "Starting contextual unpack with type: %{public}@", 48, 2, v20);

  (*(v36 + 16))(v14, v38, AssociatedTypeWitness);
  v43 = v33;
  v25 = v14;
  v27 = v39;
  v26 = v40;
  sub_2144F2B60(v25, &v43, v39, v40, AssociatedTypeWitness, v35, v34, v18);
  sub_21402D9F8(v27, v26);
  v28 = *(v41 + 8);
  WitnessTable = swift_getWitnessTable(asc_214757374, v16);
  sub_213FB4E90(v31, v18, a6, v16, v28, WitnessTable, v42);
  return (*(v37 + 8))(v18, v16);
}

uint64_t sub_214087AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v43 = a7;
  v41 = a3;
  v42 = a6;
  v39 = a4;
  v40 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v32 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = swift_getAssociatedConformanceWitness();
  v36 = AssociatedConformanceWitness;
  v16 = type metadata accessor for ContextualUnpackRequestMessage(0, AssociatedTypeWitness, AssociatedConformanceWitness, v35);
  v37 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  v34 = *a5;
  v33 = sub_2146D9B88();
  if (qword_280B35358 != -1)
  {
    swift_once();
  }

  v19 = qword_280B35408;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2146EA710;
  v45 = a1;
  MetatypeMetadata = swift_getMetatypeMetadata();
  v22 = sub_213FB17C8(&v45, MetatypeMetadata);
  v32 = a1;
  v23 = v22;
  v25 = v24;
  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = sub_213FB2DA0();
  *(v20 + 32) = v23;
  *(v20 + 40) = v25;
  sub_2146D91D8(v33, &dword_213FAF000, v19, "Starting contextual unpack with type: %{public}@", 48, 2, v20);

  (*(v38 + 16))(v14, v39, AssociatedTypeWitness);
  v44 = v34;
  v26 = v14;
  v28 = v40;
  v27 = v41;
  sub_2144F2B60(v26, &v44, v40, v41, AssociatedTypeWitness, v36, v35, v18);
  sub_21402D9F8(v28, v27);
  v29 = *(a9 + 8);
  WitnessTable = swift_getWitnessTable(asc_214757374, v16);
  sub_2140872F4(v32, v18, v42, v43, a8, v16, v29, WitnessTable);
  return (*(v37 + 8))(v18, v16);
}

uint64_t sub_214087E3C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v53 = a6;
  v52 = a5;
  v50 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v48 = &v37 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v51 = a8;
  v45 = swift_getAssociatedConformanceWitness();
  v46 = AssociatedConformanceWitness;
  v16 = type metadata accessor for ContextualUnpackFileRequestMessage(0, AssociatedTypeWitness, AssociatedConformanceWitness, v45);
  v49 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v19 = *a2;
  v44 = *(a2 + 8);
  v20 = *(a2 + 16);
  v42 = *a4;
  v43 = v20;
  v40 = sub_2146D9B88();
  if (qword_280B35358 != -1)
  {
    swift_once();
  }

  v39 = qword_280B35408;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2146E6910;
  v54 = a1;
  MetatypeMetadata = swift_getMetatypeMetadata();
  v23 = sub_213FB17C8(&v54, MetatypeMetadata);
  v25 = v24;
  v41 = a1;
  v26 = MEMORY[0x277D837D0];
  *(v21 + 56) = MEMORY[0x277D837D0];
  v27 = sub_213FB2DA0();
  *(v21 + 64) = v27;
  *(v21 + 32) = v23;
  *(v21 + 40) = v25;
  v54 = 47;
  v55 = 0xE100000000000000;
  v57 = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2140610B4();
  v28 = sub_2146D9558();
  v38 = a7;
  v30 = v29;

  MEMORY[0x2160545D0](v28, v30);

  v31 = sub_2146D9618();
  *(v21 + 96) = v26;
  *(v21 + 104) = v27;
  *(v21 + 72) = v31;
  *(v21 + 80) = v32;
  sub_2146D91D8(v40, &dword_213FAF000, v39, "Starting contextual file unpack with type: %{public}@ for file %{public}@", 73, 2, v21);

  v33 = v48;
  (*(v47 + 16))(v48, v50, AssociatedTypeWitness);
  LOBYTE(v57) = v42;
  v54 = v19;
  v55 = v44;
  v56 = v43;
  sub_2144F2C10(v33, &v57, &v54, AssociatedTypeWitness, v46, v45, v18);
  v34 = *(v51 + 8);

  WitnessTable = swift_getWitnessTable(asc_214757358, v16);
  sub_2140872F4(v41, v18, v52, v53, v38, v16, v34, WitnessTable);
  return (*(v49 + 8))(v18, v16);
}

uint64_t sub_214088248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v53 = a4;
  v55 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v50 = &v39 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v54 = a6;
  v47 = swift_getAssociatedConformanceWitness();
  v48 = AssociatedConformanceWitness;
  v15 = type metadata accessor for ContextualUnpackFileRequestMessage(0, AssociatedTypeWitness, AssociatedConformanceWitness, v47);
  v16 = *(v15 - 8);
  v51 = v15;
  v52 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  v19 = *a2;
  v46 = *(a2 + 8);
  v20 = *(a2 + 16);
  v44 = *a3;
  v45 = v20;
  v43 = sub_2146D9B88();
  if (qword_280B35358 != -1)
  {
    swift_once();
  }

  v41 = qword_280B35408;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2146E6910;
  v56 = a1;
  MetatypeMetadata = swift_getMetatypeMetadata();
  v23 = sub_213FB17C8(&v56, MetatypeMetadata);
  v25 = v24;
  v26 = MEMORY[0x277D837D0];
  *(v21 + 56) = MEMORY[0x277D837D0];
  v27 = sub_213FB2DA0();
  v42 = a1;
  v28 = v27;
  *(v21 + 64) = v27;
  *(v21 + 32) = v23;
  *(v21 + 40) = v25;
  v56 = 47;
  v57 = 0xE100000000000000;
  v59 = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2140610B4();
  v29 = sub_2146D9558();
  v40 = a5;
  v31 = v30;

  MEMORY[0x2160545D0](v29, v31);

  v32 = sub_2146D9618();
  *(v21 + 96) = v26;
  *(v21 + 104) = v28;
  *(v21 + 72) = v32;
  *(v21 + 80) = v33;
  sub_2146D91D8(v43, &dword_213FAF000, v41, "Starting contextual file unpack with type: %{public}@ for file %{public}@", 73, 2, v21);

  v34 = v50;
  (*(v49 + 16))(v50, v53, AssociatedTypeWitness);
  LOBYTE(v59) = v44;
  v56 = v19;
  v57 = v46;
  v58 = v45;
  sub_2144F2C10(v34, &v59, &v56, AssociatedTypeWitness, v48, v47, v18);
  v35 = *(v54 + 8);

  v36 = v51;
  WitnessTable = swift_getWitnessTable(asc_214757358, v51);
  sub_213FB4E90(v42, v18, v40, v36, v35, WitnessTable, v55);
  return (*(v52 + 8))(v18, v36);
}

uint64_t sub_21408865C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v83 = a7;
  v81 = a1;
  v82 = a6;
  v84 = a5;
  v75 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v73 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v74 = &v61 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v80 = a9;
  v85 = a8;
  v15 = swift_getAssociatedConformanceWitness();
  v77 = AssociatedTypeWitness;
  v71 = v15;
  v72 = AssociatedConformanceWitness;
  v16 = type metadata accessor for ContextualUnpackFileRequestMessage(0, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  v78 = *(v16 - 8);
  v79 = v16;
  MEMORY[0x28223BE20](v16);
  v76 = &v61 - v17;
  v18 = sub_2146D8B88();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v61 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v70 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v61 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v61 - v31;
  v33 = *(a2 + 8);
  v68 = *a2;
  v69 = v33;
  v67 = *(a2 + 16);
  v66 = *a4;
  v65 = sub_2146D9B88();
  if (qword_280B35358 != -1)
  {
    swift_once();
  }

  v62 = qword_280B35408;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2146E68D0;
  v35 = *(v19 + 16);
  v35(v32, v84, v18);
  v36 = *(v19 + 56);
  v64 = v19 + 56;
  v63 = v36;
  v36(v32, 0, 1, v18);
  sub_213FB2E54(v32, v30, &unk_27C904F30, &unk_2146EFA20);
  v37 = (*(v19 + 48))(v30, 1, v18);
  v61 = v35;
  if (v37 == 1)
  {
    sub_213FB2DF4(v30, &unk_27C904F30, &unk_2146EFA20);
    v38 = 0xE300000000000000;
    v39 = 7104878;
  }

  else
  {
    (*(v19 + 32))(v24, v30, v18);
    v35(v22, v24, v18);
    v39 = sub_2146D9618();
    v38 = v40;
    (*(v19 + 8))(v24, v18);
  }

  sub_213FB2DF4(v32, &unk_27C904F30, &unk_2146EFA20);
  v41 = MEMORY[0x277D837D0];
  *(v34 + 56) = MEMORY[0x277D837D0];
  v42 = sub_213FB2DA0();
  *(v34 + 64) = v42;
  *(v34 + 32) = v39;
  *(v34 + 40) = v38;
  v43 = v81;
  v86 = v81;
  MetatypeMetadata = swift_getMetatypeMetadata();
  v45 = sub_213FB17C8(&v86, MetatypeMetadata);
  *(v34 + 96) = v41;
  *(v34 + 104) = v42;
  *(v34 + 72) = v45;
  *(v34 + 80) = v46;
  v86 = 47;
  v87 = 0xE100000000000000;
  v47 = v68;
  v89 = v68;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2140610B4();
  v48 = sub_2146D9558();
  v50 = v49;

  MEMORY[0x2160545D0](v48, v50);

  v51 = sub_2146D9618();
  *(v34 + 136) = v41;
  *(v34 + 144) = v42;
  *(v34 + 112) = v51;
  *(v34 + 120) = v52;
  sub_2146D91D8(v65, &dword_213FAF000, v62, "Starting session-based (%@) contextual file unpack with type: %{public}@ for file %{public}@", 92, 2, v34);

  v53 = v74;
  v54 = v77;
  (*(v73 + 16))(v74, v75, v77);
  LOBYTE(v89) = v66;
  v86 = v47;
  v87 = v69;
  v88 = v67;
  v55 = v76;
  sub_2144F2C10(v53, &v89, &v86, v54, v72, v71, v76);
  v56 = v70;
  v61(v70, v84, v18);
  v63(v56, 0, 1, v18);
  v57 = *(v80 + 8);

  v58 = v79;
  WitnessTable = swift_getWitnessTable(asc_214757358, v79);
  sub_213FB49EC(v43, v55, 0, v56, v82, v83, v85, v58, v57, WitnessTable);
  sub_213FB2DF4(v56, &unk_27C904F30, &unk_2146EFA20);
  return (*(v78 + 8))(v55, v58);
}

uint64_t sub_214088D98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v60 = a7;
  v58 = a1;
  v59 = a3;
  v64 = a8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C917FA0, &qword_2146ED5E0);
  v62 = a6;
  v12 = sub_2146D9A48();
  MEMORY[0x28223BE20](v12 - 8);
  v57 = &v51 - v13;
  v14 = sub_2146D8B88();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v51 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v51 - v25;
  v27 = *a2;
  v55 = a2[1];
  v56 = v27;
  LODWORD(v27) = *(a2 + 16);
  v53 = *a4;
  v54 = v27;
  v52 = sub_2146D9B88();
  if (qword_280B35358 != -1)
  {
    swift_once();
  }

  v51 = qword_280B35408;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2146E68D0;
  v29 = *(v15 + 16);
  v63 = a5;
  v29(v26, a5, v14);
  (*(v15 + 56))(v26, 0, 1, v14);
  sub_213FB2E54(v26, v24, &unk_27C904F30, &unk_2146EFA20);
  if ((*(v15 + 48))(v24, 1, v14) == 1)
  {
    sub_213FB2DF4(v24, &unk_27C904F30, &unk_2146EFA20);
    v30 = 0xE300000000000000;
    v31 = 7104878;
  }

  else
  {
    (*(v15 + 32))(v20, v24, v14);
    v29(v18, v20, v14);
    v31 = sub_2146D9618();
    v30 = v32;
    (*(v15 + 8))(v20, v14);
  }

  sub_213FB2DF4(v26, &unk_27C904F30, &unk_2146EFA20);
  v33 = MEMORY[0x277D837D0];
  *(v28 + 56) = MEMORY[0x277D837D0];
  v34 = sub_213FB2DA0();
  *(v28 + 64) = v34;
  *(v28 + 32) = v31;
  *(v28 + 40) = v30;
  v35 = v58;
  v66[0] = v58;
  v36 = v62;
  MetatypeMetadata = swift_getMetatypeMetadata();
  v38 = sub_213FB17C8(v66, MetatypeMetadata);
  *(v28 + 96) = v33;
  *(v28 + 104) = v34;
  *(v28 + 72) = v38;
  *(v28 + 80) = v39;
  v66[0] = 47;
  v66[1] = 0xE100000000000000;
  v40 = v56;
  v65 = v56;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2140610B4();
  v41 = sub_2146D9558();
  v43 = v42;

  MEMORY[0x2160545D0](v41, v43);

  v44 = sub_2146D9618();
  *(v28 + 136) = v33;
  *(v28 + 144) = v34;
  *(v28 + 112) = v44;
  *(v28 + 120) = v45;
  sub_2146D91D8(v52, &dword_213FAF000, v51, "Starting session-based (%@) AsyncStream file unpack with type: %{public}@ for file %{public}@", 93, 2, v28);

  MEMORY[0x28223BE20](v46);
  v48 = v60;
  v47 = v61;
  *(&v51 - 10) = v36;
  *(&v51 - 9) = v48;
  *(&v51 - 8) = v47;
  *(&v51 - 7) = v35;
  *(&v51 - 6) = v59;
  *(&v51 - 40) = v53;
  v49 = v55;
  *(&v51 - 4) = v40;
  *(&v51 - 3) = v49;
  *(&v51 - 16) = v54;
  *(&v51 - 1) = v63;
  sub_21408A4A8(v57);
  return sub_2146D9AC8();
}

uint64_t sub_2140892C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v57 = a8;
  v65 = a6;
  v66 = a7;
  v55 = a5;
  v54 = a4;
  v63 = a3;
  v64 = a2;
  v62 = a1;
  v59 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C917FA0, &qword_2146ED5E0);
  v60 = sub_2146D9A78();
  v58 = *(v60 - 8);
  v61 = *(v58 + 64);
  MEMORY[0x28223BE20](v60);
  v56 = &v45 - v11;
  v12 = sub_2146D8B88();
  v13 = *(v12 - 8);
  v53 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v51 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v45 - v16;
  v49 = a11;
  v48 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v21 = &v45 - v20;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedConformanceWitness();
  v50 = type metadata accessor for ContextualUnpackFileRequestMessage(0, AssociatedTypeWitness, AssociatedConformanceWitness, v23);
  v52 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v25 = &v45 - v24;
  v47 = &v45 - v24;
  (*(v19 + 16))(v21, v54, AssociatedTypeWitness);
  v69[0] = v55;
  v67[0] = v65;
  v67[1] = v66;
  v68 = v57;
  sub_2144F2C10(v21, v69, v67, AssociatedTypeWitness, AssociatedConformanceWitness, v23, v25);
  v26 = *(v13 + 16);
  v46 = v17;
  v27 = v59;
  v26(v17, v59, v12);
  v28 = *(v13 + 56);
  v29 = v12;
  v45 = v12;
  v28(v17, 0, 1, v12);
  v30 = v51;
  v26(v51, v27, v29);
  v31 = v58;
  v32 = v56;
  v33 = v60;
  (*(v58 + 16))(v56, v62, v60);
  v34 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v35 = (v53 + v34 + *(v31 + 80)) & ~*(v31 + 80);
  v36 = swift_allocObject();
  v37 = v48;
  v38 = v49;
  *(v36 + 16) = v48;
  *(v36 + 24) = v38;
  (*(v13 + 32))(v36 + v34, v30, v45);
  (*(v31 + 32))(v36 + v35, v32, v33);
  v39 = *(v38 + 8);

  v40 = v50;
  WitnessTable = swift_getWitnessTable(asc_214757358, v50);
  v42 = v47;
  v43 = v46;
  sub_213FB49EC(v63, v47, 0, v46, sub_21408A890, v36, v37, v40, v39, WitnessTable);

  sub_213FB2DF4(v43, &unk_27C904F30, &unk_2146EFA20);
  return (*(v52 + 8))(v42, v40);
}

uint64_t sub_214089840(unsigned int (*a1)(char *, uint64_t, uint64_t), uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v109 = a5;
  v110 = a2;
  v107 = a4;
  v108 = a1;
  v103 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C917FA0, &qword_2146ED5E0);
  v8 = sub_2146D9A38();
  v101 = *(v8 - 8);
  v102 = v8;
  MEMORY[0x28223BE20](v8);
  v100 = v84 - v9;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904F40, &qword_21477E730);
  MEMORY[0x28223BE20](v98);
  v104 = v84 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v96 = v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v97 = v84 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v95 = v84 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v93 = v84 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v84 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v84 - v23;
  v25 = sub_2146D8B88();
  v105 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v92 = v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v91 = v84 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v106 = v84 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = v84 - v33;
  v35 = *(a6 - 8);
  v36 = MEMORY[0x28223BE20](v32);
  v99 = v84 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = v84 - v38;
  v40 = sub_2146DA9C8();
  MEMORY[0x28223BE20](v40);
  v42 = (v84 - v41);
  (*(v43 + 16))(v84 - v41, v108, v40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v111 = *v42;
    sub_2146D9A78();
    return sub_2146D9A68();
  }

  v89 = v7;
  v88 = v35;
  v45 = *(v35 + 32);
  v86 = v39;
  v87 = a6;
  v45(v39, v42, a6);
  v46 = sub_2146D9B88();
  if (qword_280B35360 != -1)
  {
    swift_once();
  }

  v94 = qword_280B35410;
  v84[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_2146EA710;
  sub_213FB2E54(v110, v24, &unk_27C904F30, &unk_2146EFA20);
  v48 = v105;
  v108 = *(v105 + 48);
  v49 = v108(v24, 1, v25);
  v50 = v107;
  if (v49 == 1)
  {
    sub_213FB2DF4(v24, &unk_27C904F30, &unk_2146EFA20);
    v51 = 0xE300000000000000;
    v52 = 7104878;
  }

  else
  {
    (*(v48 + 32))(v34, v24, v25);
    (*(v48 + 16))(v106, v34, v25);
    v52 = sub_2146D9618();
    v51 = v53;
    (*(v48 + 8))(v34, v25);
  }

  *(v47 + 56) = MEMORY[0x277D837D0];
  v90 = sub_213FB2DA0();
  *(v47 + 64) = v90;
  *(v47 + 32) = v52;
  *(v47 + 40) = v51;
  sub_2146D91D8(v46, &dword_213FAF000, v94, "Received frame for %@", 21, 2, v47);

  v85 = *(v48 + 16);
  v85(v22, v50, v25);
  v84[0] = *(v48 + 56);
  (v84[0])(v22, 0, 1, v25);
  v54 = *(v98 + 48);
  v55 = v104;
  sub_213FB2E54(v110, v104, &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2E54(v22, v55 + v54, &unk_27C904F30, &unk_2146EFA20);
  v56 = v108;
  if (v108(v55, 1, v25) != 1)
  {
    v57 = v93;
    sub_213FB2E54(v55, v93, &unk_27C904F30, &unk_2146EFA20);
    if (v56((v55 + v54), 1, v25) != 1)
    {
      v81 = v55 + v54;
      v82 = v106;
      (*(v48 + 32))(v106, v81, v25);
      sub_21408A9B4();
      LODWORD(v98) = sub_2146D9578();
      v83 = *(v48 + 8);
      v83(v82, v25);
      sub_213FB2DF4(v22, &unk_27C904F30, &unk_2146EFA20);
      v83(v57, v25);
      sub_213FB2DF4(v104, &unk_27C904F30, &unk_2146EFA20);
      if (v98)
      {
        goto LABEL_21;
      }

LABEL_14:
      LODWORD(v104) = sub_2146D9BA8();
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_2146E6910;
      v59 = v95;
      sub_213FB2E54(v110, v95, &unk_27C904F30, &unk_2146EFA20);
      if (v108(v59, 1, v25) == 1)
      {
        sub_213FB2DF4(v59, &unk_27C904F30, &unk_2146EFA20);
        v60 = 0xE300000000000000;
        v61 = 7104878;
        v62 = v107;
        v63 = v85;
      }

      else
      {
        v64 = v91;
        (*(v48 + 32))(v91, v59, v25);
        v63 = v85;
        v85(v106, v64, v25);
        v65 = sub_2146D9618();
        v66 = v48;
        v61 = v65;
        v60 = v67;
        (*(v66 + 8))(v64, v25);
        v62 = v107;
      }

      v68 = v90;
      *(v58 + 56) = MEMORY[0x277D837D0];
      *(v58 + 64) = v68;
      *(v58 + 32) = v61;
      *(v58 + 40) = v60;
      v69 = v97;
      v63(v97, v62, v25);
      (v84[0])(v69, 0, 1, v25);
      v70 = v96;
      sub_213FB2E54(v69, v96, &unk_27C904F30, &unk_2146EFA20);
      if (v108(v70, 1, v25) == 1)
      {
        sub_213FB2DF4(v70, &unk_27C904F30, &unk_2146EFA20);
        v71 = 0xE300000000000000;
        v72 = 7104878;
      }

      else
      {
        v73 = v105;
        v74 = v92;
        (*(v105 + 32))(v92, v70, v25);
        v63(v106, v74, v25);
        v72 = sub_2146D9618();
        v71 = v75;
        (*(v73 + 8))(v74, v25);
      }

      sub_213FB2DF4(v69, &unk_27C904F30, &unk_2146EFA20);
      v76 = v90;
      *(v58 + 96) = MEMORY[0x277D837D0];
      *(v58 + 104) = v76;
      *(v58 + 72) = v72;
      *(v58 + 80) = v71;
      sub_2146D91D8(v104, &dword_213FAF000, v94, "Received frame for incorrect session %@, %@", 43, 2, v58);

      goto LABEL_21;
    }

    sub_213FB2DF4(v22, &unk_27C904F30, &unk_2146EFA20);
    (*(v48 + 8))(v57, v25);
LABEL_13:
    sub_213FB2DF4(v55, &qword_27C904F40, &qword_21477E730);
    goto LABEL_14;
  }

  sub_213FB2DF4(v22, &unk_27C904F30, &unk_2146EFA20);
  if (v56((v55 + v54), 1, v25) != 1)
  {
    goto LABEL_13;
  }

  sub_213FB2DF4(v55, &unk_27C904F30, &unk_2146EFA20);
LABEL_21:
  v77 = v88;
  v78 = v86;
  v79 = v87;
  (*(v88 + 16))(v99, v86, v87);
  sub_2146D9A78();
  v80 = v100;
  sub_2146D9A58();
  (*(v101 + 8))(v80, v102);
  if (v103)
  {
    v111 = 0;
    sub_2146D9A68();
  }

  return (*(v77 + 8))(v78, v79);
}

uint64_t sub_21408A4A8@<X0>(uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x277D858A0];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C917FA0, &qword_2146ED5E0);
  v4 = sub_2146D9A48();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t BlastDoorService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return v0;
}

uint64_t BlastDoorService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

unint64_t sub_21408A5E8()
{
  result = qword_27C904F10;
  if (!qword_27C904F10)
  {
    result = swift_getWitnessTable(byte_2147573AC, &type metadata for UnpackRequestMessage, v0, v1);
    atomic_store(result, &qword_27C904F10);
  }

  return result;
}

unint64_t sub_21408A63C()
{
  result = qword_27C904F18;
  if (!qword_27C904F18)
  {
    result = swift_getWitnessTable(byte_214757390, &type metadata for UnpackFileRequestMessage, v0, v1);
    atomic_store(result, &qword_27C904F18);
  }

  return result;
}

uint64_t dispatch thunk of BlastDoorService.unpack<A>(_:from:validatorContext:)()
{
  return (*(*v0 + 144))();
}

{
  return (*(*v0 + 160))();
}

uint64_t dispatch thunk of BlastDoorService.unpack<A>(_:from:with:validatorContext:_:)()
{
  return (*(*v0 + 176))();
}

{
  return (*(*v0 + 184))();
}

uint64_t sub_21408A890(unsigned int (*a1)(char *, uint64_t, uint64_t), uint64_t a2, int a3)
{
  v7 = *(v3 + 16);
  v8 = *(sub_2146D8B88() - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = v9 + *(v8 + 64);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C917FA0, &qword_2146ED5E0);
  v11 = *(sub_2146D9A78() - 8);
  v12 = v3 + ((v10 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_214089840(a1, a2, a3, v3 + v9, v12, v7);
}

unint64_t sub_21408A9B4()
{
  result = qword_27C904F48;
  if (!qword_27C904F48)
  {
    v3 = sub_2146D8B88();
    result = swift_getWitnessTable(MEMORY[0x277CC9610], v3, v0, v1);
    atomic_store(result, &qword_27C904F48);
  }

  return result;
}

uint64_t sub_21408AA0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F50, &unk_2146F08E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21408AA7C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20) - 8);
  v8 = (*(v7 + 80) + 73) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_2146D9438() - 8);
  v11 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_214086AFC(a1, *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), (v1 + v8), *(v1 + v9), v1 + v11, *(v1 + v12), *(v1 + v12 + 8), v1 + ((v12 + *(*(v4 - 1) + 80) + 16) & ~*(*(v4 - 1) + 80)), v3, v4, v5, v6);
}

uint64_t sub_21408AC04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_21408AC6C(uint64_t a1)
{
  v2 = type metadata accessor for EncoderErrorResponseMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21408ACC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EncoderErrorResponseMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_21408AD54(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_21408AD90()
{
  if (v0[1])
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x216055860](1);
  }

  return MEMORY[0x216055860](v1);
}

uint64_t sub_21408ADD8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_2146DA958();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    MEMORY[0x216055860](1);
    v3 = v1;
  }

  MEMORY[0x216055860](v3);
  return sub_2146DA9B8();
}

uint64_t sub_21408AE38()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_2146DA958();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    MEMORY[0x216055860](1);
    v3 = v1;
  }

  MEMORY[0x216055860](v3);
  return sub_2146DA9B8();
}

uint64_t sub_21408AE98()
{
  if (v0[1])
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x216055860](1);
  }

  return MEMORY[0x216055860](v1);
}

uint64_t sub_21408AEE0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_2146DA958();
  if (v3)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x216055860](1);
  }

  MEMORY[0x216055860](v2);
  return sub_2146DA9B8();
}

BOOL sub_21408AF40(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

id sub_21408AF7C(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC9BlastDoor21OverridingFileManager_overrides] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_21408AFCC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC9BlastDoor21OverridingFileManager_overrides] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for OverridingFileManager();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t *sub_21408B00C(uint64_t *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904F88, qword_2146F0910);
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904190, &qword_2146EAAE8) - 8);
  v8 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2146EA710;
  v10 = v9 + v8;
  v11 = v7[14];
  *v10 = v6;
  *(v10 + 8) = a1;
  v12 = sub_2146D8958();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v10 + v11, a2, v12);
  v14 = sub_2140461F4(v9);
  swift_setDeallocating();
  sub_213FB2DF4(v10, &qword_27C904190, &qword_2146EAAE8);
  swift_deallocClassInstance();
  *&v5[OBJC_IVAR____TtC9BlastDoor21OverridingFileManager_overrides] = v14;
  v17.receiver = v5;
  v17.super_class = v2;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v13 + 8))(a2, v12);
  return v15;
}

uint64_t *sub_21408B1E8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904F88, qword_2146F0910);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904190, &qword_2146EAAE8) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2146EA710;
  v9 = v8 + v7;
  v10 = v6[14];
  *v9 = v4;
  *(v9 + 8) = v5;
  v11 = sub_2146D8958();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v9 + v10, a2, v11);
  v13 = sub_2140461F4(v8);
  swift_setDeallocating();
  sub_213FB2DF4(v9, &qword_27C904190, &qword_2146EAAE8);
  swift_deallocClassInstance();
  *&v2[OBJC_IVAR____TtC9BlastDoor21OverridingFileManager_overrides] = v13;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for OverridingFileManager();
  v14 = objc_msgSendSuper2(&v16, sel_init);
  (*(v12 + 8))(a2, v11);
  return v14;
}

uint64_t sub_21408B3B8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v34 = a2;
  v4 = sub_2146D8B88();
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D8958();
  v35 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v32 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  v19 = *a1;
  v20 = *(a1 + 8);
  v21 = *(v2 + OBJC_IVAR____TtC9BlastDoor21OverridingFileManager_overrides);
  if (*(v21 + 16))
  {
    v22 = sub_21408C56C(v19, v20);
    if (v23)
    {
      (*(v35 + 16))(v16, *(v21 + 56) + *(v35 + 72) * v22, v7);
      v24 = *(v35 + 32);
      v24(v18, v16, v7);
      v25 = v34;
      v24(v34, v18, v7);
      return (*(v35 + 56))(v25, 0, 1, v7);
    }
  }

  if ((v20 & 1) == 0 && v19 == 99)
  {
    if (*(v21 + 16))
    {
      v26 = sub_21408C56C(0, 1);
      if (v27)
      {
        (*(v35 + 16))(v10, *(v21 + 56) + *(v35 + 72) * v26, v7);
        (*(v35 + 32))(v13, v10, v7);
        v36 = 0x2D6D657469;
        v37 = 0xE500000000000000;
        sub_2146D8B78();
        sub_21408DE90(&qword_27C918120, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v28 = sub_2146DA428();
        MEMORY[0x2160545D0](v28);

        (*(v33 + 8))(v6, v4);
        v25 = v34;
        sub_2146D88A8();

        (*(v35 + 8))(v13, v7);
        return (*(v35 + 56))(v25, 0, 1, v7);
      }
    }
  }

  v30 = v34;
  v31 = *(v35 + 56);

  return v31(v30, 1, 1, v7);
}