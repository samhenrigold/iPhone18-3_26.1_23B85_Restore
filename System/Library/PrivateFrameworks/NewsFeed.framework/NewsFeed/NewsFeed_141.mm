uint64_t FeedItem.kind.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FeedCustomItem(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BC88C4(v2, v11, type metadata accessor for FeedItem);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      result = sub_1D5BDDBE8(v11, type metadata accessor for FeedItem);
      v14 = xmmword_1D7279980;
      goto LABEL_19;
    case 2:
      v13 = xmmword_1D72830B0;
      goto LABEL_21;
    case 3:
      v13 = xmmword_1D727C330;
      goto LABEL_21;
    case 4:
      v13 = xmmword_1D727F480;
      goto LABEL_21;
    case 5:
      result = sub_1D5BDDBE8(v11, type metadata accessor for FeedItem);
      v14 = xmmword_1D72F4110;
      goto LABEL_19;
    case 6:
      v13 = xmmword_1D72F4100;
      goto LABEL_21;
    case 7:
      v13 = xmmword_1D727F020;
      goto LABEL_21;
    case 8:
      sub_1D5BDDB20(v11, v7, type metadata accessor for FeedCustomItem);
      v15 = &v7[*(v4 + 20)];
      v17 = *(v15 + 2);
      v16 = *(v15 + 3);

      result = sub_1D5BDDBE8(v7, type metadata accessor for FeedCustomItem);
      *a1 = v17;
      a1[1] = v16;
      return result;
    case 9:
      v13 = xmmword_1D728B0D0;
      goto LABEL_21;
    case 10:
      v13 = xmmword_1D72F40F0;
      goto LABEL_21;
    case 11:
      result = sub_1D5BDDBE8(v11, type metadata accessor for FeedItem);
      v14 = xmmword_1D72F40E0;
      goto LABEL_19;
    case 12:
      v13 = xmmword_1D727C320;
      goto LABEL_21;
    case 13:
      result = sub_1D5BDDBE8(v11, type metadata accessor for FeedItem);
      v14 = xmmword_1D72E0D50;
      goto LABEL_19;
    case 14:
      v13 = xmmword_1D728A8D0;
      goto LABEL_21;
    case 15:
      result = sub_1D5BDDBE8(v11, type metadata accessor for FeedItem);
      v14 = xmmword_1D728A8E0;
      goto LABEL_19;
    case 16:
      v13 = xmmword_1D728A8F0;
LABEL_21:
      *a1 = v13;
      return sub_1D5BDDBE8(v11, type metadata accessor for FeedItem);
    case 17:
      result = sub_1D5BDDBE8(v11, type metadata accessor for FeedItem);
      v14 = xmmword_1D72F40D0;
      goto LABEL_19;
    case 18:
      v14 = xmmword_1D72E9600;
LABEL_19:
      *a1 = v14;
      break;
    default:
      result = sub_1D5BDDBE8(v11, type metadata accessor for FeedItem);
      *a1 = 0;
      a1[1] = 0;
      break;
  }

  return result;
}

uint64_t FeedItem.debugIdentifier.getter()
{
  v0 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v94 = &v90 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for FeedPuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v93 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FeedEngagementBanner(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = (&v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for FeedCustomItem(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C1F744(0, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v91 = &v90 - v16;
  v17 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v92 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FeedHeadline(0);
  v90 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for FeedBannerAd(0);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = (&v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BC88C4(v95, v31, type metadata accessor for FeedItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v33 = 1701736302;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v47 = *v31;
      v48 = *(v31 + 9);
      v49 = *(v31 + 10);

      sub_1D5BF6680(v48, v49);
      return v47;
    case 2:
      sub_1D5BDDB20(v31, v27, type metadata accessor for FeedBannerAd);
      v40 = *v27;

      v41 = type metadata accessor for FeedBannerAd;
      v42 = v27;
      goto LABEL_14;
    case 3:
      sub_1D5BDDB20(v31, v23, type metadata accessor for FeedHeadline);
      v43 = [v23[5] identifier];
      v44 = sub_1D726207C();

      v45 = type metadata accessor for FeedHeadline;
      v46 = v23;
      goto LABEL_25;
    case 4:
      v59 = v31;
      v60 = v92;
      sub_1D5BDDB20(v59, v92, type metadata accessor for FeedWebEmbed);
      v61 = v91;
      sub_1D5D62DB4(v60 + *(v17 + 48), v91, qword_1EDF42030, type metadata accessor for FeedHeadline);
      if ((*(v90 + 48))(v61, 1, v20) == 1)
      {
        sub_1D5D206DC(v61, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720], sub_1D5C1F744);
        v44 = sub_1D72583DC();
      }

      else
      {
        v88 = [*(v61 + 40) identifier];
        v44 = sub_1D726207C();

        sub_1D5BDDBE8(v61, type metadata accessor for FeedHeadline);
      }

      v64 = type metadata accessor for FeedWebEmbed;
      goto LABEL_24;
    case 5:
      v65 = *(v31 + 7);
      v96[6] = *(v31 + 6);
      v96[7] = v65;
      *(&v96[7] + 9) = *(v31 + 121);
      v66 = *(v31 + 1);
      v96[0] = *v31;
      v96[1] = v66;
      v67 = *(v31 + 3);
      v96[2] = *(v31 + 2);
      v96[3] = v67;
      v68 = *(v31 + 5);
      v96[4] = *(v31 + 4);
      v96[5] = v68;
      v69 = [*&v96[0] identifier];
      v44 = sub_1D726207C();

      sub_1D5ECF320(v96);
      goto LABEL_26;
    case 6:
      memcpy(v96, v31, 0x11AuLL);
      v57 = FeedCatalogItem.debugIdentifier.getter();
      sub_1D5F76EF0(v96);
      return v57;
    case 7:
      v83 = *(v31 + 7);
      v96[6] = *(v31 + 6);
      v96[7] = v83;
      v96[8] = *(v31 + 8);
      LOBYTE(v96[9]) = v31[144];
      v84 = *(v31 + 3);
      v96[2] = *(v31 + 2);
      v96[3] = v84;
      v85 = *(v31 + 5);
      v96[4] = *(v31 + 4);
      v96[5] = v85;
      v86 = *(v31 + 1);
      v96[0] = *v31;
      v96[1] = v86;
      v87 = [v86 identifier];
      v44 = sub_1D726207C();

      sub_1D5EE5B54(v96);
      goto LABEL_26;
    case 8:
      sub_1D5BDDB20(v31, v13, type metadata accessor for FeedCustomItem);
      v40 = *&v13[*(v10 + 20)];

      v41 = type metadata accessor for FeedCustomItem;
      v42 = v13;
      goto LABEL_14;
    case 9:
      v78 = *(v31 + 7);
      v96[6] = *(v31 + 6);
      v96[7] = v78;
      v96[8] = *(v31 + 8);
      *&v96[9] = *(v31 + 18);
      v79 = *(v31 + 3);
      v96[2] = *(v31 + 2);
      v96[3] = v79;
      v80 = *(v31 + 5);
      v96[4] = *(v31 + 4);
      v96[5] = v80;
      v81 = *(v31 + 1);
      v96[0] = *v31;
      v96[1] = v81;
      v82 = *&v96[0];

      sub_1D5F76DEC(v96);
      return v82;
    case 10:
      sub_1D5BDDB20(v31, v9, type metadata accessor for FeedEngagementBanner);
      v40 = *v9;

      v41 = type metadata accessor for FeedEngagementBanner;
      v42 = v9;
      goto LABEL_14;
    case 11:
      v44 = _s5TeaUI11PluginModelC8NewsFeedE15debugIdentifierSSvg_0();

      goto LABEL_26;
    case 12:
      v62 = v31;
      v60 = v94;
      sub_1D5BDDB20(v62, v94, type metadata accessor for FeedRecipe);
      v63 = [*(v60 + 56) identifier];
      v44 = sub_1D726207C();

      v64 = type metadata accessor for FeedRecipe;
LABEL_24:
      v45 = v64;
      v46 = v60;
LABEL_25:
      sub_1D5BDDBE8(v46, v45);
LABEL_26:
      v33 = v44;
      break;
    case 13:
      v38 = [*(v31 + 2) identifier];
      v39 = sub_1D726207C();
      swift_unknownObjectRelease();

      v33 = v39;
      break;
    case 14:
      v50 = *(v31 + 11);
      v96[10] = *(v31 + 10);
      v96[11] = v50;
      v96[12] = *(v31 + 12);
      v51 = *(v31 + 7);
      v96[6] = *(v31 + 6);
      v96[7] = v51;
      v52 = *(v31 + 9);
      v96[8] = *(v31 + 8);
      v96[9] = v52;
      v53 = *(v31 + 3);
      v96[2] = *(v31 + 2);
      v96[3] = v53;
      v54 = *(v31 + 5);
      v96[4] = *(v31 + 4);
      v96[5] = v54;
      v55 = *(v31 + 1);
      v96[0] = *v31;
      v96[1] = v55;
      v56 = *(&v96[2] + 1);

      sub_1D5F2DF58(v96);
      v33 = v56;
      break;
    case 15:
      v35 = *(v31 + 3);
      v36 = *(v31 + 4);
      v37 = *(v31 + 5);

      sub_1D5BF6680(v35, v36);
      swift_unknownObjectRelease();

      v33 = v37;
      break;
    case 16:
      v58 = v93;
      sub_1D5BDDB20(v31, v93, type metadata accessor for FeedPuzzleStatistic);
      v40 = *(v58 + 40);

      v41 = type metadata accessor for FeedPuzzleStatistic;
      v42 = v58;
LABEL_14:
      sub_1D5BDDBE8(v42, v41);
      v33 = v40;
      break;
    case 17:
      v70 = *(v31 + 13);
      v96[12] = *(v31 + 12);
      v96[13] = v70;
      v96[14] = *(v31 + 14);
      *&v96[15] = *(v31 + 30);
      v71 = *(v31 + 9);
      v96[8] = *(v31 + 8);
      v96[9] = v71;
      v72 = *(v31 + 11);
      v96[10] = *(v31 + 10);
      v96[11] = v72;
      v73 = *(v31 + 5);
      v96[4] = *(v31 + 4);
      v96[5] = v73;
      v74 = *(v31 + 7);
      v96[6] = *(v31 + 6);
      v96[7] = v74;
      v75 = *(v31 + 1);
      v96[0] = *v31;
      v96[1] = v75;
      v76 = *(v31 + 3);
      v96[2] = *(v31 + 2);
      v96[3] = v76;
      v77 = *&v96[0];

      sub_1D5F2DFAC(v96);
      v33 = v77;
      break;
    case 18:
      return v33;
    default:
      v34 = *v31;
      sub_1D5BF6680(*(v31 + 5), *(v31 + 6));
      v33 = v34;
      break;
  }

  return v33;
}

uint64_t FeedItem.debugTitle.getter()
{
  v1 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = (v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for FeedBannerAd(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = (v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5BC88C4(v0, v20, type metadata accessor for FeedItem);
  v21 = 0;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      sub_1D5BDDB20(v20, v16, type metadata accessor for FeedBannerAd);
      v21 = *v16;

      v31 = type metadata accessor for FeedBannerAd;
      v32 = v16;
      goto LABEL_24;
    case 3u:
      sub_1D5BDDB20(v20, v12, type metadata accessor for FeedHeadline);
      v48 = [v12[5] title];
      if (v48)
      {
        v49 = v48;
        v21 = sub_1D726207C();
      }

      else
      {
        v21 = 0;
      }

      v31 = type metadata accessor for FeedHeadline;
      v32 = v12;
      goto LABEL_24;
    case 4u:
      sub_1D5BDDB20(v20, v8, type metadata accessor for FeedWebEmbed);
      v21 = FeedWebEmbed.debugTitle.getter();
      v31 = type metadata accessor for FeedWebEmbed;
      v32 = v8;
      goto LABEL_24;
    case 5u:
      v42 = v20[7];
      v64[6] = v20[6];
      v64[7] = v42;
      *(&v64[7] + 9) = *(v20 + 121);
      v43 = v20[1];
      v64[0] = *v20;
      v64[1] = v43;
      v44 = v20[3];
      v64[2] = v20[2];
      v64[3] = v44;
      v45 = v20[5];
      v64[4] = v20[4];
      v46 = [*&v64[0] coverDate];
      v21 = sub_1D726207C();

      sub_1D5ECF320(v64);
      return v21;
    case 6u:
      memcpy(v64, v20, 0x11AuLL);
      v21 = FeedCatalogItem.debugTitle.getter();
      sub_1D5F76EF0(v64);
      return v21;
    case 7u:
      v33 = v20[7];
      v64[6] = v20[6];
      v64[7] = v33;
      v64[8] = v20[8];
      LOBYTE(v64[9]) = *(v20 + 144);
      v34 = v20[3];
      v64[2] = v20[2];
      v64[3] = v34;
      v35 = v20[5];
      v64[4] = v20[4];
      v64[5] = v35;
      v36 = v20[1];
      v64[0] = *v20;
      v37 = [v36 name];
      v21 = sub_1D726207C();

      sub_1D5EE5B54(v64);
      return v21;
    case 9u:
      v38 = v20[7];
      v64[6] = v20[6];
      v64[7] = v38;
      v64[8] = v20[8];
      *&v64[9] = *(v20 + 18);
      v39 = v20[3];
      v64[2] = v20[2];
      v64[3] = v39;
      v40 = v20[5];
      v64[4] = v20[4];
      v64[5] = v40;
      v41 = v20[1];
      v64[0] = *v20;
      v64[1] = v41;
      v21 = v41;

      sub_1D5F76DEC(v64);
      return v21;
    case 0xBu:

      return 0;
    case 0xCu:
      sub_1D5BDDB20(v20, v4, type metadata accessor for FeedRecipe);
      v30 = [v4[7] title];
      v21 = sub_1D726207C();

      v31 = type metadata accessor for FeedRecipe;
      v32 = v4;
LABEL_24:
      sub_1D5BDDBE8(v32, v31);
      return v21;
    case 0xDu:
      v47 = [*(v20 + 2) name];
      v21 = sub_1D726207C();
      swift_unknownObjectRelease();

      return v21;
    case 0xEu:
      v22 = v20[11];
      v64[10] = v20[10];
      v64[11] = v22;
      v64[12] = v20[12];
      v23 = v20[7];
      v64[6] = v20[6];
      v64[7] = v23;
      v24 = v20[9];
      v64[8] = v20[8];
      v64[9] = v24;
      v25 = v20[3];
      v64[2] = v20[2];
      v64[3] = v25;
      v26 = v20[5];
      v64[4] = v20[4];
      v64[5] = v26;
      v27 = v20[1];
      v64[0] = *v20;
      v28 = [*(&v25 + 1) title];
      if (v28)
      {
        v29 = v28;
        v21 = sub_1D726207C();
      }

      else
      {
        v21 = 0;
      }

      sub_1D5F2DF58(v64);
      return v21;
    case 0xFu:
      v50 = *(v20 + 3);
      v51 = *(v20 + 4);
      v52 = [*(v20 + 7) name];
      if (v52)
      {
        v53 = v52;
        v21 = sub_1D726207C();

        sub_1D5BF6680(v50, v51);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_1D5BF6680(v50, v51);
        swift_unknownObjectRelease();

        return 0;
      }

      return v21;
    case 0x11u:
      v54 = v20[13];
      v64[12] = v20[12];
      v64[13] = v54;
      v64[14] = v20[14];
      *&v64[15] = *(v20 + 30);
      v55 = v20[9];
      v64[8] = v20[8];
      v64[9] = v55;
      v56 = v20[11];
      v64[10] = v20[10];
      v64[11] = v56;
      v57 = v20[5];
      v64[4] = v20[4];
      v64[5] = v57;
      v58 = v20[7];
      v64[6] = v20[6];
      v64[7] = v58;
      v59 = v20[1];
      v64[0] = *v20;
      v64[1] = v59;
      v60 = v20[3];
      v64[2] = v20[2];
      v64[3] = v60;
      v61 = v64[1];
      v62 = v64[2];
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_1D7263D4C();

      v65 = 0x206C6C6177796150;
      v66 = 0xE900000000000028;
      MEMORY[0x1DA6F9910](v61, *(&v61 + 1));
      MEMORY[0x1DA6F9910](0x206E692029, 0xE500000000000000);
      MEMORY[0x1DA6F9910](v62, *(&v62 + 1));
      sub_1D5F2DFAC(v64);
      return v65;
    case 0x12u:
      return v21;
    default:
      sub_1D5BDDBE8(v20, type metadata accessor for FeedItem);
      return 0;
  }
}

void FeedItem.traits.getter(uint64_t *a1@<X8>)
{
  v69 = a1;
  v1 = type metadata accessor for FeedPuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v67 = (&v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FeedEngagementBanner(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = (&v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FeedBannerAd(0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BC88C4(v68, v27, type metadata accessor for FeedItem);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v49 = *(v27 + 2);
      v50 = *(v27 + 9);
      v51 = *(v27 + 10);

      sub_1D5BF6680(v50, v51);
      v31 = v49 | 1;
      goto LABEL_27;
    case 2u:
      sub_1D5BDDB20(v27, v23, type metadata accessor for FeedBannerAd);
      v36 = *&v23[*(v20 + 24)];
      v37 = type metadata accessor for FeedBannerAd;
      v38 = v23;
      goto LABEL_13;
    case 3u:
      sub_1D5BDDB20(v27, v19, type metadata accessor for FeedHeadline);
      v36 = *(v19 + 4);
      v37 = type metadata accessor for FeedHeadline;
      v38 = v19;
      goto LABEL_13;
    case 4u:
      sub_1D5BDDB20(v27, v15, type metadata accessor for FeedWebEmbed);
      v36 = *v15;
      v37 = type metadata accessor for FeedWebEmbed;
      v38 = v15;
LABEL_13:
      sub_1D5BDDBE8(v38, v37);
      v31 = v36 | 1;
      goto LABEL_27;
    case 5u:
      v53 = *(v27 + 5);
      v76 = *(v27 + 4);
      v77 = v53;
      v54 = *(v27 + 7);
      v78 = *(v27 + 6);
      v79[0] = v54;
      *(v79 + 9) = *(v27 + 121);
      v55 = *(v27 + 1);
      v72 = *v27;
      v73 = v55;
      v56 = *(v27 + 3);
      v74 = *(v27 + 2);
      v75 = v56;
      if (v76 == 1)
      {
        FCIssue.issueCoverModel.getter(v70);
        if (!v71)
        {
          v57 = 64;
          goto LABEL_34;
        }

        if (v71 == 1)
        {
          v57 = 16448;
LABEL_34:
          v65 = v69;
          sub_1D619CBDC(v70);
          goto LABEL_35;
        }

        v57 = 0;
        v65 = v69;
      }

      else
      {
        FCIssue.issueCoverModel.getter(v70);
        if (!v71)
        {
          v57 = 4160;
          goto LABEL_34;
        }

        if (v71 == 1)
        {
          v57 = 20544;
          goto LABEL_34;
        }

        v57 = 4096;
        v65 = v69;
      }

LABEL_35:
      sub_1D5ECF320(&v72);
      *v65 = v57 | 1;
      return;
    case 6u:
      sub_1D5BDDBE8(v27, type metadata accessor for FeedItem);
      v31 = 64;
      goto LABEL_27;
    case 7u:
      v45 = *(v27 + 7);
      v78 = *(v27 + 6);
      v79[0] = v45;
      v79[1] = *(v27 + 8);
      LOBYTE(v80) = v27[144];
      v46 = *(v27 + 3);
      v74 = *(v27 + 2);
      v75 = v46;
      v47 = *(v27 + 5);
      v76 = *(v27 + 4);
      v77 = v47;
      v48 = *(v27 + 1);
      v72 = *v27;
      v73 = v48;
      swift_getObjectType();
      FCTagProviding.traits.getter(v69);
      sub_1D5EE5B54(&v72);
      return;
    case 8u:
      sub_1D5BDDBE8(v27, type metadata accessor for FeedItem);
      goto LABEL_9;
    case 9u:
      sub_1D5BDDBE8(v27, type metadata accessor for FeedItem);
      v31 = 0x40000;
      goto LABEL_27;
    case 0xAu:
      sub_1D5BDDB20(v27, v11, type metadata accessor for FeedEngagementBanner);
      v33 = *&v11[*(v8 + 24)];
      v34 = type metadata accessor for FeedEngagementBanner;
      v35 = v11;
      goto LABEL_17;
    case 0xBu:

      v31 = 1048577;
      goto LABEL_27;
    case 0xCu:
      sub_1D5BDDB20(v27, v7, type metadata accessor for FeedRecipe);
      FeedRecipe.traits.getter(v69);
      sub_1D5BDDBE8(v7, type metadata accessor for FeedRecipe);
      return;
    case 0xDu:
      swift_unknownObjectRelease();

      v31 = 0x2000000000;
      goto LABEL_27;
    case 0xEu:
      v39 = *(v27 + 11);
      v81 = *(v27 + 10);
      v82 = v39;
      v83 = *(v27 + 12);
      v40 = *(v27 + 7);
      v78 = *(v27 + 6);
      v79[0] = v40;
      v41 = *(v27 + 9);
      v79[1] = *(v27 + 8);
      v80 = v41;
      v42 = *(v27 + 3);
      v74 = *(v27 + 2);
      v75 = v42;
      v43 = *(v27 + 5);
      v76 = *(v27 + 4);
      v77 = v43;
      v44 = *(v27 + 1);
      v72 = *v27;
      v73 = v44;
      v33 = v72;
      sub_1D5F2DF58(&v72);
      goto LABEL_18;
    case 0xFu:
      v32 = *v27;
      sub_1D5BF6680(*(v27 + 3), *(v27 + 4));
      swift_unknownObjectRelease();

      *v69 = v32;
      return;
    case 0x10u:
      v52 = v67;
      sub_1D5BDDB20(v27, v67, type metadata accessor for FeedPuzzleStatistic);
      v33 = *v52;
      v34 = type metadata accessor for FeedPuzzleStatistic;
      v35 = v52;
LABEL_17:
      sub_1D5BDDBE8(v35, v34);
LABEL_18:
      *v69 = v33;
      return;
    case 0x11u:
      v58 = *(v27 + 13);
      v83 = *(v27 + 12);
      v84 = v58;
      v85 = *(v27 + 14);
      v86 = *(v27 + 30);
      v59 = *(v27 + 9);
      v79[1] = *(v27 + 8);
      v80 = v59;
      v60 = *(v27 + 11);
      v81 = *(v27 + 10);
      v82 = v60;
      v61 = *(v27 + 5);
      v76 = *(v27 + 4);
      v77 = v61;
      v62 = *(v27 + 7);
      v78 = *(v27 + 6);
      v79[0] = v62;
      v63 = *(v27 + 1);
      v72 = *v27;
      v73 = v63;
      v64 = *(v27 + 3);
      v74 = *(v27 + 2);
      v75 = v64;
      sub_1D5F2DFAC(&v72);
      v31 = v84;
      goto LABEL_27;
    case 0x12u:
LABEL_9:
      *v69 = 0;
      return;
    default:
      v28 = *(v27 + 2);
      v30 = *(v27 + 5);
      v29 = *(v27 + 6);

      sub_1D5BF6680(v30, v29);
      v31 = v28 | 1;
LABEL_27:
      *v69 = v31;
      return;
  }
}

uint64_t FeedItem.feedRecipe.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BC88C4(v2, v7, type metadata accessor for FeedItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = 1;
  if (((1 << EnumCaseMultiPayload) & 0x3EFFF) != 0)
  {
    sub_1D5BDDBE8(v7, type metadata accessor for FeedItem);
  }

  else if (EnumCaseMultiPayload == 12)
  {
    sub_1D5BDDB20(v7, a1, type metadata accessor for FeedRecipe);
    v9 = 0;
  }

  v10 = type metadata accessor for FeedRecipe(0);
  return (*(*(v10 - 8) + 56))(a1, v9, 1, v10);
}

uint64_t sub_1D6818590@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v91 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v91, v3);
  v90 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for FeedPuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v89, v5);
  v88 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for FeedEngagementBanner(0);
  MEMORY[0x1EEE9AC00](v87, v7);
  v86 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for FeedCustomItem(0);
  MEMORY[0x1EEE9AC00](v85, v9);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v84 = &v81 - v14;
  v83 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v83, v15);
  v82 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for FeedBannerAd(0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v92, v25);
  v93 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  (*(v28 + 40))(&v98, v27, v28);
  v96 = v98;
  sub_1D5B68374(a1, v97);
  switch(*(&v96 + 1))
  {
    case 0:
      sub_1D5EFF46C();
      if (!swift_dynamicCast())
      {
        goto LABEL_43;
      }

      v29 = *(&v95[0] + 1);
      v30 = v95[2];
      v31 = v93;
      *v93 = *&v95[0];
      *(v31 + 1) = v29;
      *(v31 + 1) = v95[1];
      v31[32] = v30;
      *(v31 + 40) = *(&v95[2] + 8);
      goto LABEL_47;
    case 1:
      sub_1D5EFF46C();
      if (!swift_dynamicCast())
      {
        goto LABEL_43;
      }

      v58 = v95[3];
      v31 = v93;
      *(v93 + 2) = v95[2];
      *(v31 + 3) = v58;
      *(v31 + 4) = v95[4];
      *(v31 + 10) = *&v95[5];
      v59 = v95[1];
      *v31 = v95[0];
      *(v31 + 1) = v59;
      goto LABEL_47;
    case 2:
      sub_1D5EFF46C();
      v50 = swift_dynamicCast();
      v31 = v93;
      v43 = v94;
      if (!v50)
      {
        goto LABEL_44;
      }

      sub_1D5BDDB20(v24, v93, type metadata accessor for FeedBannerAd);
      goto LABEL_22;
    case 3:
      sub_1D5EFF46C();
      v53 = swift_dynamicCast();
      v31 = v93;
      v43 = v94;
      if (!v53)
      {
        goto LABEL_44;
      }

      sub_1D5BDDB20(v20, v93, type metadata accessor for FeedHeadline);
      goto LABEL_22;
    case 4:
      sub_1D5EFF46C();
      v44 = v82;
      v45 = swift_dynamicCast();
      v31 = v93;
      v43 = v94;
      if (!v45)
      {
        goto LABEL_44;
      }

      sub_1D5BDDB20(v44, v93, type metadata accessor for FeedWebEmbed);
      goto LABEL_22;
    case 5:
      sub_1D5EFF46C();
      if (!swift_dynamicCast())
      {
        goto LABEL_43;
      }

      v60 = v95[7];
      v31 = v93;
      *(v93 + 6) = v95[6];
      *(v31 + 7) = v60;
      *(v31 + 121) = *(&v95[7] + 9);
      v61 = v95[3];
      *(v31 + 2) = v95[2];
      *(v31 + 3) = v61;
      v62 = v95[5];
      *(v31 + 4) = v95[4];
      *(v31 + 5) = v62;
      v63 = v95[1];
      *v31 = v95[0];
      *(v31 + 1) = v63;
      goto LABEL_47;
    case 6:
      sub_1D5EFF46C();
      if (!swift_dynamicCast())
      {
        goto LABEL_43;
      }

      v31 = v93;
      memcpy(v93, v95, 0x11AuLL);
      goto LABEL_47;
    case 7:
      sub_1D5EFF46C();
      if (!swift_dynamicCast())
      {
        goto LABEL_43;
      }

      v54 = v95[7];
      v31 = v93;
      *(v93 + 6) = v95[6];
      *(v31 + 7) = v54;
      *(v31 + 8) = v95[8];
      v31[144] = v95[9];
      v55 = v95[3];
      *(v31 + 2) = v95[2];
      *(v31 + 3) = v55;
      v56 = v95[5];
      *(v31 + 4) = v95[4];
      *(v31 + 5) = v56;
      v57 = v95[1];
      *v31 = v95[0];
      *(v31 + 1) = v57;
      goto LABEL_47;
    case 8:
      sub_1D5EFF46C();
      if (!swift_dynamicCast())
      {
        goto LABEL_43;
      }

      v75 = v95[7];
      v31 = v93;
      *(v93 + 6) = v95[6];
      *(v31 + 7) = v75;
      *(v31 + 8) = v95[8];
      *(v31 + 18) = *&v95[9];
      v76 = v95[3];
      *(v31 + 2) = v95[2];
      *(v31 + 3) = v76;
      v77 = v95[5];
      *(v31 + 4) = v95[4];
      *(v31 + 5) = v77;
      v78 = v95[1];
      *v31 = v95[0];
      *(v31 + 1) = v78;
      goto LABEL_47;
    case 9:
      sub_1D5EFF46C();
      v48 = v86;
      v49 = swift_dynamicCast();
      v31 = v93;
      v43 = v94;
      if (!v49)
      {
        goto LABEL_44;
      }

      sub_1D5BDDB20(v48, v93, type metadata accessor for FeedEngagementBanner);
      goto LABEL_22;
    case 0xALL:
      sub_1D5EFF46C();
      sub_1D725CC1C();
      if (!swift_dynamicCast())
      {
        goto LABEL_43;
      }

      v31 = v93;
      *v93 = *&v95[0];
      goto LABEL_47;
    case 0xBLL:
      sub_1D5EFF46C();
      v41 = v90;
      v42 = swift_dynamicCast();
      v31 = v93;
      v43 = v94;
      if (!v42)
      {
        goto LABEL_44;
      }

      sub_1D5BDDB20(v41, v93, type metadata accessor for FeedRecipe);
      goto LABEL_22;
    case 0xCLL:
      sub_1D5EFF46C();
      if (!swift_dynamicCast())
      {
        goto LABEL_43;
      }

      v46 = *(&v95[1] + 1);
      v47 = v95[2];
      v31 = v93;
      *v93 = *&v95[0];
      *(v31 + 8) = *(v95 + 8);
      *(v31 + 3) = v46;
      v31[32] = v47;
      goto LABEL_47;
    case 0xDLL:
      sub_1D5EFF46C();
      if (!swift_dynamicCast())
      {
        goto LABEL_43;
      }

      v64 = v95[11];
      v31 = v93;
      *(v93 + 10) = v95[10];
      *(v31 + 11) = v64;
      *(v31 + 12) = v95[12];
      v65 = v95[7];
      *(v31 + 6) = v95[6];
      *(v31 + 7) = v65;
      v66 = v95[9];
      *(v31 + 8) = v95[8];
      *(v31 + 9) = v66;
      v67 = v95[3];
      *(v31 + 2) = v95[2];
      *(v31 + 3) = v67;
      v68 = v95[5];
      *(v31 + 4) = v95[4];
      *(v31 + 5) = v68;
      v69 = v95[1];
      *v31 = v95[0];
      *(v31 + 1) = v69;
      goto LABEL_47;
    case 0xELL:
      sub_1D5EFF46C();
      if (!swift_dynamicCast())
      {
        goto LABEL_43;
      }

      v39 = v95[1];
      v31 = v93;
      *v93 = v95[0];
      *(v31 + 1) = v39;
      v40 = v95[3];
      *(v31 + 2) = v95[2];
      *(v31 + 3) = v40;
      goto LABEL_47;
    case 0xFLL:
      sub_1D5EFF46C();
      v51 = v88;
      v52 = swift_dynamicCast();
      v31 = v93;
      v43 = v94;
      if (!v52)
      {
        goto LABEL_44;
      }

      sub_1D5BDDB20(v51, v93, type metadata accessor for FeedPuzzleStatistic);
LABEL_22:
      swift_storeEnumTagMultiPayload();
      __swift_destroy_boxed_opaque_existential_1(v97);
      goto LABEL_48;
    case 0x10:
      sub_1D5EFF46C();
      if (!swift_dynamicCast())
      {
        goto LABEL_43;
      }

      v32 = v95[13];
      v31 = v93;
      *(v93 + 12) = v95[12];
      *(v31 + 13) = v32;
      *(v31 + 14) = v95[14];
      *(v31 + 30) = *&v95[15];
      v33 = v95[9];
      *(v31 + 8) = v95[8];
      *(v31 + 9) = v33;
      v34 = v95[11];
      *(v31 + 10) = v95[10];
      *(v31 + 11) = v34;
      v35 = v95[5];
      *(v31 + 4) = v95[4];
      *(v31 + 5) = v35;
      v36 = v95[7];
      *(v31 + 6) = v95[6];
      *(v31 + 7) = v36;
      v37 = v95[1];
      *v31 = v95[0];
      *(v31 + 1) = v37;
      v38 = v95[3];
      *(v31 + 2) = v95[2];
      *(v31 + 3) = v38;
      goto LABEL_47;
    case 0x11:
      v31 = v93;
      goto LABEL_47;
    default:
      v70 = *(&v96 + 1);
      v71 = v96;
      sub_1D5EFF46C();
      v73 = v84;
      v72 = v85;
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_1D5BF6680(v71, v70);
LABEL_43:
        v31 = v93;
        v43 = v94;
        goto LABEL_44;
      }

      sub_1D5BDDB20(v73, v11, type metadata accessor for FeedCustomItem);
      v74 = &v11[*(v72 + 20)];
      v31 = v93;
      if (*(v74 + 2) == v71 && v70 == *(v74 + 3))
      {
        sub_1D5BF6680(v71, v70);
        goto LABEL_46;
      }

      v79 = sub_1D72646CC();
      sub_1D5BF6680(v71, v70);
      if ((v79 & 1) == 0)
      {
        sub_1D5BDDBE8(v11, type metadata accessor for FeedCustomItem);
        v43 = v94;
LABEL_44:
        __swift_destroy_boxed_opaque_existential_1(v97);
        swift_storeEnumTagMultiPayload();
        goto LABEL_48;
      }

LABEL_46:
      sub_1D5BDDB20(v11, v31, type metadata accessor for FeedCustomItem);
LABEL_47:
      swift_storeEnumTagMultiPayload();
      __swift_destroy_boxed_opaque_existential_1(v97);
      v43 = v94;
LABEL_48:
      sub_1D5BDDB20(v31, v43, type metadata accessor for FeedItem);
      return __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

unint64_t FeedItem.Kind.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = 7364935;
  switch(v2)
  {
    case 0uLL:
      break;
    case 1uLL:
      v3 = 0x696C66664F706147;
      break;
    case 2uLL:
      v3 = 0x644172656E6E6142;
      break;
    case 3uLL:
      v3 = 0x656E696C64616548;
      break;
    case 4uLL:
      v3 = 0x6465626D45626557;
      break;
    case 5uLL:
      v3 = 0x6575737349;
      break;
    case 6uLL:
      v3 = 0x49676F6C61746143;
      break;
    case 7uLL:
      v3 = 6775124;
      break;
    case 8uLL:
      v3 = 0x79726F6765746143;
      break;
    case 9uLL:
      v3 = 0xD000000000000010;
      break;
    case 0xAuLL:
      v3 = 0x6E6967756C50;
      break;
    case 0xBuLL:
      v3 = 0x657069636552;
      break;
    case 0xCuLL:
      v3 = 0x76457374726F7053;
      break;
    case 0xDuLL:
      v3 = 0x656C7A7A7550;
      break;
    case 0xEuLL:
      v3 = 0x7954656C7A7A7550;
      break;
    case 0xFuLL:
      v3 = 0x7453656C7A7A7550;
      break;
    case 0x10uLL:
      v3 = 0x6C6C6177796150;
      break;
    case 0x11uLL:
      v3 = 1701736270;
      break;
    default:
      v3 = v1;
      break;
  }

  sub_1D5BF2DDC(v1, v2);
  return v3;
}

uint64_t FeedItem.Kind.hash(into:)(uint64_t a1)
{
  switch(*(v1 + 8))
  {
    case 0:
      v2 = 0;
      goto LABEL_23;
    case 1:
      v2 = 1;
      goto LABEL_23;
    case 2:
      v2 = 2;
      goto LABEL_23;
    case 3:
      v2 = 3;
      goto LABEL_23;
    case 4:
      v2 = 4;
      goto LABEL_23;
    case 5:
      v2 = 5;
      goto LABEL_23;
    case 6:
      v2 = 6;
      goto LABEL_23;
    case 7:
      v2 = 7;
      goto LABEL_23;
    case 8:
      v2 = 9;
      goto LABEL_23;
    case 9:
      v2 = 10;
      goto LABEL_23;
    case 0xALL:
      v2 = 11;
      goto LABEL_23;
    case 0xBLL:
      v2 = 12;
      goto LABEL_23;
    case 0xCLL:
      v2 = 13;
      goto LABEL_23;
    case 0xDLL:
      v2 = 14;
      goto LABEL_23;
    case 0xELL:
      v2 = 15;
      goto LABEL_23;
    case 0xFLL:
      v2 = 16;
      goto LABEL_23;
    case 0x10:
      v2 = 17;
      goto LABEL_23;
    case 0x11:
      v2 = 18;
LABEL_23:
      result = MEMORY[0x1DA6FC0B0](v2);
      break;
    default:
      MEMORY[0x1DA6FC0B0](8);

      result = sub_1D72621EC();
      break;
  }

  return result;
}

uint64_t FeedItem.Kind.hashValue.getter()
{
  v3 = *v0;
  sub_1D7264A0C();
  FeedItem.Kind.hash(into:)(v2);
  return sub_1D7264A5C();
}

uint64_t sub_1D6819444()
{
  v3 = *v0;
  sub_1D7264A0C();
  FeedItem.Kind.hash(into:)(v2);
  return sub_1D7264A5C();
}

uint64_t sub_1D6819494(uint64_t a1)
{
  v4 = *v1;
  sub_1D7264A0C();
  FeedItem.Kind.hash(into:)(v3);
  return sub_1D7264A5C();
}

void *FeedItem.additionalFormatFeedItems.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v92[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v6 = type metadata accessor for FeedPuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v92[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v10 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v92[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v14 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v92[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v18 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v92[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  sub_1D5BC88C4(v1, v21, type metadata accessor for FeedItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = MEMORY[0x1E69E7CC0];
  switch(EnumCaseMultiPayload)
  {
    case 3:
      sub_1D5BDDB20(v21, v17, type metadata accessor for FeedHeadline);
      v39 = FeedHeadline.additionalFormatFeedItems.getter();
      v47 = type metadata accessor for FeedHeadline;
      v48 = v17;
      goto LABEL_15;
    case 4:
      sub_1D5BDDB20(v21, v13, type metadata accessor for FeedWebEmbed);
      v39 = FeedWebEmbed.additionalFormatFeedItems.getter();
      v47 = type metadata accessor for FeedWebEmbed;
      v48 = v13;
      goto LABEL_15;
    case 5:
      v34 = *(v21 + 7);
      v103 = *(v21 + 6);
      v104[0] = v34;
      *(v104 + 9) = *(v21 + 121);
      v35 = *(v21 + 1);
      v97 = *v21;
      v98 = v35;
      v36 = *(v21 + 3);
      v99 = *(v21 + 2);
      v100 = v36;
      v37 = *(v21 + 5);
      v101 = *(v21 + 4);
      v102 = v37;
      v38 = v97;
      sub_1D5C1F744(0, &qword_1EDF199E0, sub_1D5EFF46C, MEMORY[0x1E69E6F90]);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_1D7273AE0;
      v40 = [v38 sourceChannel];
      *(v39 + 56) = &type metadata for FeedTag;
      *(v39 + 64) = sub_1D5EE5BA8();
      v41 = swift_allocObject();
      *(v39 + 32) = v41;
      v42 = [v40 identifier];
      v43 = sub_1D726207C();
      v45 = v44;

      *(v41 + 96) = xmmword_1D7279980;
      *(v41 + 112) = 0u;
      *(v41 + 128) = 0u;
      *(v41 + 144) = 0u;
      *(v41 + 160) = 0;
      *(v41 + 16) = v43;
      *(v41 + 24) = v45;
      *(v41 + 32) = v40;
      *(v41 + 40) = 0;
      *(v41 + 64) = 0;
      *(v41 + 72) = 0xE000000000000000;
      *(v41 + 48) = 0;
      *(v41 + 56) = 0;
      v46 = MEMORY[0x1E69E7CD0];
      *(v41 + 80) = 0;
      *(v41 + 88) = v46;
      sub_1D5ECF320(&v97);
      return v39;
    case 11:

      return MEMORY[0x1E69E7CC0];
    case 12:
      sub_1D5BDDB20(v21, v5, type metadata accessor for FeedRecipe);
      sub_1D5C1F744(0, &qword_1EDF199E0, sub_1D5EFF46C, MEMORY[0x1E69E6F90]);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1D7273AE0;
      v77 = [*(v5 + 7) sourceChannel];
      *(v27 + 56) = &type metadata for FeedTag;
      *(v27 + 64) = sub_1D5EE5BA8();
      v78 = swift_allocObject();
      *(v27 + 32) = v78;
      v79 = [v77 identifier];
      v80 = sub_1D726207C();
      v82 = v81;

      *(v78 + 96) = xmmword_1D7279980;
      *(v78 + 112) = 0u;
      *(v78 + 128) = 0u;
      *(v78 + 144) = 0u;
      *(v78 + 160) = 0;
      *(v78 + 16) = v80;
      *(v78 + 24) = v82;
      *(v78 + 32) = v77;
      *(v78 + 40) = 0;
      *(v78 + 64) = 0;
      *(v78 + 72) = 0xE000000000000000;
      *(v78 + 48) = 0;
      *(v78 + 56) = 0;
      v83 = MEMORY[0x1E69E7CD0];
      *(v78 + 80) = 0;
      *(v78 + 88) = v83;
      sub_1D5BDDBE8(v5, type metadata accessor for FeedRecipe);
      return v27;
    case 13:
      swift_unknownObjectRelease();

      return MEMORY[0x1E69E7CC0];
    case 14:
      v49 = *(v21 + 11);
      v106 = *(v21 + 10);
      v107 = v49;
      v108 = *(v21 + 12);
      v50 = *(v21 + 7);
      v103 = *(v21 + 6);
      v104[0] = v50;
      v51 = *(v21 + 9);
      v104[1] = *(v21 + 8);
      v105 = v51;
      v52 = *(v21 + 3);
      v99 = *(v21 + 2);
      v100 = v52;
      v53 = *(v21 + 5);
      v101 = *(v21 + 4);
      v102 = v53;
      v54 = *(v21 + 1);
      v97 = *v21;
      v98 = v54;
      v55 = [*(&v52 + 1) puzzleType];
      v56 = [v55 identifier];
      v57 = sub_1D726207C();
      v59 = v58;

      v92[0] = 1;
      v94 = 0uLL;
      LOBYTE(v95[0]) = 1;
      *(v95 + 8) = xmmword_1D728A8E0;
      *(&v95[1] + 1) = v57;
      *&v96 = v59;
      *(&v96 + 1) = v55;
      sub_1D5C1F744(0, &qword_1EDF199E0, sub_1D5EFF46C, MEMORY[0x1E69E6F90]);
      v60 = swift_allocObject();
      v91 = xmmword_1D7273AE0;
      *(v60 + 16) = xmmword_1D7273AE0;
      *(v60 + 56) = &type metadata for FeedPuzzleType;
      *(v60 + 64) = sub_1D6307250();
      v61 = swift_allocObject();
      *(v60 + 32) = v61;
      v62 = v95[0];
      v61[1] = v94;
      v61[2] = v62;
      v63 = v96;
      v61[3] = v95[1];
      v61[4] = v63;
      v93 = v60;
      inited = swift_initStackObject();
      *(inited + 16) = v91;
      *(inited + 56) = &type metadata for FeedTag;
      *(inited + 64) = sub_1D5EE5BA8();
      v65 = swift_allocObject();
      *(inited + 32) = v65;
      sub_1D63071F4(&v94, v92);
      v66 = [swift_unknownObjectRetain() identifier];
      v67 = sub_1D726207C();
      v69 = v68;

      *(v65 + 96) = xmmword_1D7279980;
      *(v65 + 112) = 0u;
      *(v65 + 128) = 0u;
      *(v65 + 144) = 0u;
      *(v65 + 160) = 0;
      *(v65 + 16) = v67;
      *(v65 + 24) = v69;
      *(v65 + 32) = v55;
      *(v65 + 40) = 0;
      *(v65 + 64) = 0;
      *(v65 + 72) = 0xE000000000000000;
      *(v65 + 48) = 0;
      *(v65 + 56) = 0;
      v70 = MEMORY[0x1E69E7CD0];
      *(v65 + 80) = 0;
      *(v65 + 88) = v70;
      sub_1D6985C1C(inited);
      sub_1D5F2DE58(&v94);
      v39 = v93;
      sub_1D5F2DF58(&v97);
      return v39;
    case 15:
      v24 = *(v21 + 1);
      v97 = *v21;
      v98 = v24;
      v25 = *(v21 + 3);
      v99 = *(v21 + 2);
      v100 = v25;
      v26 = *(&v25 + 1);
      sub_1D5C1F744(0, &qword_1EDF199E0, sub_1D5EFF46C, MEMORY[0x1E69E6F90]);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1D7273AE0;
      *(v27 + 56) = &type metadata for FeedTag;
      *(v27 + 64) = sub_1D5EE5BA8();
      v28 = swift_allocObject();
      *(v27 + 32) = v28;
      v29 = [swift_unknownObjectRetain() identifier];
      v30 = sub_1D726207C();
      v32 = v31;

      *(v28 + 96) = xmmword_1D7279980;
      *(v28 + 112) = 0u;
      *(v28 + 128) = 0u;
      *(v28 + 144) = 0u;
      *(v28 + 160) = 0;
      *(v28 + 16) = v30;
      *(v28 + 24) = v32;
      *(v28 + 32) = v26;
      *(v28 + 40) = 0;
      *(v28 + 64) = 0;
      *(v28 + 72) = 0xE000000000000000;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      v33 = MEMORY[0x1E69E7CD0];
      *(v28 + 80) = 0;
      *(v28 + 88) = v33;
      sub_1D5F2DE58(&v97);
      return v27;
    case 16:
      sub_1D5BDDB20(v21, v9, type metadata accessor for FeedPuzzleStatistic);
      sub_1D5C1F744(0, &qword_1EDF199E0, sub_1D5EFF46C, MEMORY[0x1E69E6F90]);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_1D7273AE0;
      v71 = *&v9[*(v6 + 32)];
      *(v39 + 56) = &type metadata for FeedPuzzleType;
      *(v39 + 64) = sub_1D6307250();
      v72 = swift_allocObject();
      *(v39 + 32) = v72;
      v73 = [swift_unknownObjectRetain() identifier];
      v74 = sub_1D726207C();
      v76 = v75;

      LOBYTE(v97) = 1;
      *(v72 + 16) = 0;
      *(v72 + 24) = 0;
      *(v72 + 32) = 1;
      *(v72 + 40) = xmmword_1D728A8E0;
      *(v72 + 56) = v74;
      *(v72 + 64) = v76;
      *(v72 + 72) = v71;
      v47 = type metadata accessor for FeedPuzzleStatistic;
      v48 = v9;
LABEL_15:
      sub_1D5BDDBE8(v48, v47);
      return v39;
    case 17:
      v84 = *(v21 + 13);
      v108 = *(v21 + 12);
      v109 = v84;
      v110 = *(v21 + 14);
      v111 = *(v21 + 30);
      v85 = *(v21 + 9);
      v104[1] = *(v21 + 8);
      v105 = v85;
      v86 = *(v21 + 11);
      v106 = *(v21 + 10);
      v107 = v86;
      v87 = *(v21 + 5);
      v101 = *(v21 + 4);
      v102 = v87;
      v88 = *(v21 + 7);
      v103 = *(v21 + 6);
      v104[0] = v88;
      v89 = *(v21 + 1);
      v97 = *v21;
      v98 = v89;
      v90 = *(v21 + 3);
      v99 = *(v21 + 2);
      v100 = v90;
      sub_1D5F2DFAC(&v97);
      return MEMORY[0x1E69E7CC0];
    case 18:
      return result;
    default:
      sub_1D5BDDBE8(v21, type metadata accessor for FeedItem);
      return MEMORY[0x1E69E7CC0];
  }
}

uint64_t FeedItem.isGap.getter()
{
  v1 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BC88C4(v0, v4, type metadata accessor for FeedItem);
  v5 = 1;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
      v5 = 0;
      goto LABEL_3;
    case 18:
      return result;
    default:
LABEL_3:
      sub_1D5BDDBE8(v4, type metadata accessor for FeedItem);
      result = v5;
      break;
  }

  return result;
}

uint64_t FeedItem.debugSourceName.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = (&v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5C1F744(0, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v50 = &v49 - v8;
  v9 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FeedHeadline(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = (&v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (&v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5BC88C4(v1, v21, type metadata accessor for FeedItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 3:
      sub_1D5BDDB20(v21, v17, type metadata accessor for FeedHeadline);
      v43 = [v17[5] sourceChannel];
      if (v43)
      {
        v44 = [v43 name];
        swift_unknownObjectRelease();
        v33 = sub_1D726207C();
      }

      else
      {
        v33 = 0;
      }

      sub_1D5BDDBE8(v17, type metadata accessor for FeedHeadline);
      return v33;
    case 4:
      sub_1D5BDDB20(v21, v12, type metadata accessor for FeedWebEmbed);
      v24 = v50;
      sub_1D5D62DB4(&v12[*(v9 + 48)], v50, qword_1EDF42030, type metadata accessor for FeedHeadline);
      if ((*(v14 + 48))(v24, 1, v13) == 1)
      {
        sub_1D5BDDBE8(v12, type metadata accessor for FeedWebEmbed);
        sub_1D5D206DC(v24, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720], sub_1D5C1F744);
        return 0;
      }

      else
      {
        v45 = [*(v24 + 40) sourceChannel];
        if (v45)
        {
          v46 = [v45 name];
          swift_unknownObjectRelease();
          v47 = sub_1D726207C();
        }

        else
        {
          v47 = 0;
        }

        sub_1D5BDDBE8(v12, type metadata accessor for FeedWebEmbed);
        sub_1D5BDDBE8(v24, type metadata accessor for FeedHeadline);
        return v47;
      }

    case 5:
      v25 = v21[7];
      v71[6] = v21[6];
      v71[7] = v25;
      *(&v71[7] + 9) = *(v21 + 121);
      v26 = v21[1];
      v71[0] = *v21;
      v71[1] = v26;
      v27 = v21[3];
      v71[2] = v21[2];
      v71[3] = v27;
      v28 = v21[5];
      v71[4] = v21[4];
      v71[5] = v28;
      v29 = [objc_msgSend(*&v71[0] sourceChannel)];
      swift_unknownObjectRelease();
      v30 = sub_1D726207C();

      sub_1D5ECF320(v71);
      return v30;
    case 6:
      memcpy(v71, v21, 0x11AuLL);
      sub_1D5F76E40(v71, &v61);
      if (!v70)
      {
        v59 = v67;
        v60[0] = v68[0];
        *(v60 + 9) = *(v68 + 9);
        v53 = v61;
        v54 = v62;
        v55 = v63;
        v56 = v64;
        v57 = v65;
        v58 = v66;
        v48 = [objc_msgSend(v61 sourceChannel)];
        swift_unknownObjectRelease();
        v33 = sub_1D726207C();

        v34 = &v53;
        goto LABEL_24;
      }

      if (v70 == 1)
      {
        v51[6] = v67;
        v52[0] = v68[0];
        *(v52 + 9) = *(v68 + 9);
        v51[2] = v63;
        v51[3] = v64;
        v51[4] = v65;
        v51[5] = v66;
        v51[0] = v61;
        v51[1] = v62;
        v59 = v68[8];
        v60[0] = *v69;
        *(v60 + 9) = *&v69[9];
        v55 = v68[4];
        v56 = v68[5];
        v57 = v68[6];
        v58 = v68[7];
        v53 = v68[2];
        v54 = v68[3];
        sub_1D5D206DC(&v53, &qword_1EDF34E30, &type metadata for FeedIssue, MEMORY[0x1E69E6720], sub_1D5B5A614);
        v32 = [objc_msgSend(*&v51[0] sourceChannel)];
        swift_unknownObjectRelease();
        v33 = sub_1D726207C();

        v34 = v51;
LABEL_24:
        sub_1D5ECF320(v34);
        goto LABEL_26;
      }

      sub_1D5F76EF0(&v61);
      v33 = 0;
LABEL_26:
      sub_1D5F76EF0(v71);
      return v33;
    case 11:

      return 0;
    case 12:
      sub_1D5BDDB20(v21, v5, type metadata accessor for FeedRecipe);
      v31 = [objc_msgSend(v5[7] sourceChannel)];
      swift_unknownObjectRelease();
      v30 = sub_1D726207C();

      sub_1D5BDDBE8(v5, type metadata accessor for FeedRecipe);
      return v30;
    case 13:
      goto LABEL_12;
    case 15:
      sub_1D5BF6680(*(v21 + 3), *(v21 + 4));
LABEL_12:
      swift_unknownObjectRelease();

      return 0;
    case 17:
      v35 = v21[13];
      v71[12] = v21[12];
      v71[13] = v35;
      v71[14] = v21[14];
      *&v71[15] = *(v21 + 30);
      v36 = v21[9];
      v71[8] = v21[8];
      v71[9] = v36;
      v37 = v21[11];
      v71[10] = v21[10];
      v71[11] = v37;
      v38 = v21[5];
      v71[4] = v21[4];
      v71[5] = v38;
      v39 = v21[7];
      v71[6] = v21[6];
      v71[7] = v39;
      v40 = v21[1];
      v71[0] = *v21;
      v71[1] = v40;
      v41 = v21[3];
      v71[2] = v21[2];
      v71[3] = v41;
      v42 = *&v71[4];

      sub_1D5F2DFAC(v71);
      return v42;
    case 18:
      return result;
    default:
      sub_1D5BDDBE8(v21, type metadata accessor for FeedItem);
      return 0;
  }
}

id FeedItem.debugAssetHandle.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = (v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = (v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5BC88C4(v1, v13, type metadata accessor for FeedItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 3:
      sub_1D5BDDB20(v13, v9, type metadata accessor for FeedHeadline);
      v31 = [v9[5] thumbnail];
      v32 = [v31 thumbnailAssetHandle];

      sub_1D5BDDBE8(v9, type metadata accessor for FeedHeadline);
      return v32;
    case 5:
      v43 = v13[7];
      v48[6] = v13[6];
      v48[7] = v43;
      *(&v48[7] + 9) = *(v13 + 121);
      v44 = v13[1];
      v48[0] = *v13;
      v48[1] = v44;
      v45 = v13[3];
      v48[2] = v13[2];
      v48[3] = v45;
      v46 = v13[5];
      v48[4] = v13[4];
      v47 = [*&v48[0] coverImageAssetHandle];
      sub_1D5ECF320(v48);
      return v47;
    case 6:
      memcpy(v48, v13, 0x11AuLL);
      v25 = FeedCatalogItem.debugAssetHandle.getter();
      sub_1D5F76EF0(v48);
      return v25;
    case 7:
      v26 = v13[7];
      v48[6] = v13[6];
      v48[7] = v26;
      v48[8] = v13[8];
      LOBYTE(v48[9]) = *(v13 + 144);
      v27 = v13[3];
      v48[2] = v13[2];
      v48[3] = v27;
      v28 = v13[5];
      v48[4] = v13[4];
      v48[5] = v28;
      v29 = v13[1];
      v48[0] = *v13;
      v48[1] = v29;
      v30 = FeedTag.debugAssetHandle.getter();
      sub_1D5EE5B54(v48);
      return v30;
    case 11:

      return 0;
    case 12:
      sub_1D5BDDB20(v13, v5, type metadata accessor for FeedRecipe);
      v23 = [v5[7] thumbnailMedium];
      v24 = [v23 thumbnailAssetHandle];

      sub_1D5BDDBE8(v5, type metadata accessor for FeedRecipe);
      return v24;
    case 13:
      swift_unknownObjectRelease();

      return 0;
    case 14:
      v16 = v13[11];
      v48[10] = v13[10];
      v48[11] = v16;
      v48[12] = v13[12];
      v17 = v13[7];
      v48[6] = v13[6];
      v48[7] = v17;
      v18 = v13[9];
      v48[8] = v13[8];
      v48[9] = v18;
      v19 = v13[3];
      v48[2] = v13[2];
      v48[3] = v19;
      v20 = v13[5];
      v48[4] = v13[4];
      v48[5] = v20;
      v21 = v13[1];
      v48[0] = *v13;
      v22 = [*(&v19 + 1) thumbnailSmallImageAssetHandle];
      sub_1D5F2DF58(v48);
      return v22;
    case 15:
      v33 = *(v13 + 3);
      v34 = *(v13 + 4);
      v35 = [*(v13 + 7) coverImageAssetHandle];
      sub_1D5BF6680(v33, v34);
      swift_unknownObjectRelease();

      return v35;
    case 17:
      v36 = v13[13];
      v48[12] = v13[12];
      v48[13] = v36;
      v48[14] = v13[14];
      *&v48[15] = *(v13 + 30);
      v37 = v13[9];
      v48[8] = v13[8];
      v48[9] = v37;
      v38 = v13[11];
      v48[10] = v13[10];
      v48[11] = v38;
      v39 = v13[5];
      v48[4] = v13[4];
      v48[5] = v39;
      v40 = v13[7];
      v48[6] = v13[6];
      v48[7] = v40;
      v41 = v13[1];
      v48[0] = *v13;
      v48[1] = v41;
      v42 = v13[3];
      v48[2] = v13[2];
      v48[3] = v42;
      sub_1D5F2DFAC(v48);
      return 0;
    case 18:
      return result;
    default:
      sub_1D5BDDBE8(v13, type metadata accessor for FeedItem);
      return 0;
  }
}

id FeedItem.debugScoreProfile.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = (v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = (v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5BC88C4(v1, v13, type metadata accessor for FeedItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 3:
      sub_1D5BDDB20(v13, v9, type metadata accessor for FeedHeadline);
      v24 = [v9[5] scoreProfile];
      v26 = type metadata accessor for FeedHeadline;
      v27 = v9;
      goto LABEL_8;
    case 5:
      v28 = v13[7];
      v50[6] = v13[6];
      v50[7] = v28;
      *(&v50[7] + 9) = *(v13 + 121);
      v29 = v13[3];
      v50[2] = v13[2];
      v50[3] = v29;
      v30 = v13[5];
      v50[4] = v13[4];
      v50[5] = v30;
      v31 = v13[1];
      v50[0] = *v13;
      v50[1] = v31;
      v24 = *(&v50[3] + 1);
      v25 = v50;
      goto LABEL_13;
    case 6:
      memcpy(v50, v13, 0x11AuLL);
      if (BYTE9(v50[17]))
      {
        if (BYTE9(v50[17]) != 1)
        {
          sub_1D5F76EF0(v50);
          return 0;
        }

        v16 = v13[7];
        v40 = v13[6];
        v41[0] = v16;
        *(v41 + 9) = *(v13 + 121);
        v17 = v13[3];
        v36[2] = v13[2];
        v37 = v17;
        v18 = v13[5];
        v38 = v13[4];
        v39 = v18;
        v19 = v13[1];
        v36[0] = *v13;
        v36[1] = v19;
        v20 = v13[16];
        v48 = v13[15];
        v49[0] = v20;
        *(v49 + 9) = *(v13 + 265);
        v21 = v13[12];
        v44 = v13[11];
        v45 = v21;
        v22 = v13[14];
        v46 = v13[13];
        v47 = v22;
        v23 = v13[10];
        v42 = v13[9];
        v43 = v23;
        sub_1D5D206DC(&v42, &qword_1EDF34E30, &type metadata for FeedIssue, MEMORY[0x1E69E6720], sub_1D5B5A614);
        v24 = *(&v37 + 1);
        v25 = v36;
      }

      else
      {
        v32 = v13[7];
        v48 = v13[6];
        v49[0] = v32;
        *(v49 + 9) = *(v13 + 121);
        v33 = v13[3];
        v44 = v13[2];
        v45 = v33;
        v34 = v13[5];
        v46 = v13[4];
        v47 = v34;
        v35 = v13[1];
        v42 = *v13;
        v43 = v35;
        v24 = *(&v45 + 1);
        v25 = &v42;
      }

LABEL_13:
      sub_1D5ECF320(v25);
      return v24;
    case 11:

      return 0;
    case 12:
      sub_1D5BDDB20(v13, v5, type metadata accessor for FeedRecipe);
      v24 = [v5[7] scoreProfile];
      v26 = type metadata accessor for FeedRecipe;
      v27 = v5;
LABEL_8:
      sub_1D5BDDBE8(v27, v26);
      return v24;
    case 13:
      swift_unknownObjectRelease();

      return 0;
    case 18:
      return result;
    default:
      sub_1D5BDDBE8(v13, type metadata accessor for FeedItem);
      return 0;
  }
}

uint64_t FeedItem.feedWebEmbed.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BC88C4(v2, v7, type metadata accessor for FeedItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload - 5 >= 0xD && EnumCaseMultiPayload >= 4)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_1D5BDDB20(v7, a1, type metadata accessor for FeedWebEmbed);
      v10 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    sub_1D5BDDBE8(v7, type metadata accessor for FeedItem);
  }

  v10 = 1;
LABEL_7:
  v11 = type metadata accessor for FeedWebEmbed(0);
  return (*(*(v11 - 8) + 56))(a1, v10, 1, v11);
}

unint64_t static FeedItem.LikeState.state(from:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 3)
  {
    result = sub_1D726402C();
    __break(1u);
  }

  else
  {
    *a2 = 0x10002u >> (8 * result);
  }

  return result;
}

uint64_t sub_1D681B2C4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 232);
  v3 = *(v1 + 240);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D5BF2DDC(v2, v3);
}

uint64_t sub_1D681B2D0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D5BF2DDC(v2, v3);
}

double sub_1D681B2DC@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1D72F4100;
  return result;
}

uint64_t sub_1D681B2EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D5BF2DDC(v2, v3);
}

uint64_t sub_1D681B2F8@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D5BF2DDC(v2, v3);
}

double sub_1D681B304@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1D72F40E0;
  return result;
}

uint64_t sub_1D681B314@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 32));
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_1D5BF2DDC(v4, v5);
}

uint64_t sub_1D681B328@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D5BF2DDC(v2, v3);
}

uint64_t _s8NewsFeed0B4ItemO11SharedStateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v38 - v11;
  v13 = type metadata accessor for FeedItem.SharedState(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D681BF7C(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v21 + 56);
  sub_1D5BC88C4(a1, v20, type metadata accessor for FeedItem.SharedState);
  sub_1D5BC88C4(a2, &v20[v22], type metadata accessor for FeedItem.SharedState);
  v23 = *(v5 + 48);
  if (v23(v20, 1, v4) == 1)
  {
    v24 = 1;
    v25 = v23(&v20[v22], 1, v4);
    v26 = type metadata accessor for FeedItem.SharedState;
    if (v25 == 1)
    {
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  sub_1D5BC88C4(v20, v16, type metadata accessor for FeedItem.SharedState);
  if (v23(&v20[v22], 1, v4) != 1)
  {
    sub_1D5BDDB20(v16, v12, type metadata accessor for SharedItem);
    sub_1D5BDDB20(&v20[v22], v8, type metadata accessor for SharedItem);
    if (sub_1D72588AC())
    {
      v27 = [*&v12[*(v4 + 24)] identifier];
      v28 = sub_1D726207C();
      v30 = v29;

      v31 = [*&v8[*(v4 + 24)] identifier];
      v32 = sub_1D726207C();
      v34 = v33;

      if (v28 == v32 && v30 == v34)
      {
      }

      else
      {
        v36 = sub_1D72646CC();

        if ((v36 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v24 = sub_1D72584CC();
      goto LABEL_16;
    }

LABEL_13:
    v24 = 0;
LABEL_16:
    sub_1D5BDDBE8(v8, type metadata accessor for SharedItem);
    sub_1D5BDDBE8(v12, type metadata accessor for SharedItem);
    v26 = type metadata accessor for FeedItem.SharedState;
    goto LABEL_17;
  }

  sub_1D5BDDBE8(v16, type metadata accessor for SharedItem);
LABEL_6:
  v24 = 0;
  v26 = sub_1D681BF7C;
LABEL_17:
  sub_1D5BDDBE8(v20, v26);
  return v24 & 1;
}

uint64_t _s8NewsFeed0B4ItemO4KindO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  switch(v3)
  {
    case 0uLL:
      if (v5)
      {
        goto LABEL_44;
      }

      sub_1D5BF6680(*a1, 0);
      v6 = v4;
      v7 = 0;
      goto LABEL_46;
    case 1uLL:
      if (v5 != 1)
      {
        goto LABEL_44;
      }

      v8 = 1;
      sub_1D5BF6680(*a1, 1uLL);
      sub_1D5BF6680(v4, 1uLL);
      return v8;
    case 2uLL:
      if (v5 != 2)
      {
        goto LABEL_44;
      }

      sub_1D5BF6680(*a1, 2uLL);
      v6 = v4;
      v7 = 2;
      goto LABEL_46;
    case 3uLL:
      if (v5 != 3)
      {
        goto LABEL_44;
      }

      sub_1D5BF6680(*a1, 3uLL);
      v6 = v4;
      v7 = 3;
      goto LABEL_46;
    case 4uLL:
      if (v5 != 4)
      {
        goto LABEL_44;
      }

      sub_1D5BF6680(*a1, 4uLL);
      v6 = v4;
      v7 = 4;
      goto LABEL_46;
    case 5uLL:
      if (v5 != 5)
      {
        goto LABEL_44;
      }

      sub_1D5BF6680(*a1, 5uLL);
      v6 = v4;
      v7 = 5;
      goto LABEL_46;
    case 6uLL:
      if (v5 != 6)
      {
        goto LABEL_44;
      }

      sub_1D5BF6680(*a1, 6uLL);
      v6 = v4;
      v7 = 6;
      goto LABEL_46;
    case 7uLL:
      if (v5 != 7)
      {
        goto LABEL_44;
      }

      sub_1D5BF6680(*a1, 7uLL);
      v6 = v4;
      v7 = 7;
      goto LABEL_46;
    case 8uLL:
      if (v5 != 8)
      {
        goto LABEL_44;
      }

      sub_1D5BF6680(*a1, 8uLL);
      v6 = v4;
      v7 = 8;
      goto LABEL_46;
    case 9uLL:
      if (v5 != 9)
      {
        goto LABEL_44;
      }

      sub_1D5BF6680(*a1, 9uLL);
      v6 = v4;
      v7 = 9;
      goto LABEL_46;
    case 0xAuLL:
      if (v5 != 10)
      {
        goto LABEL_44;
      }

      sub_1D5BF6680(*a1, 0xAuLL);
      v6 = v4;
      v7 = 10;
      goto LABEL_46;
    case 0xBuLL:
      if (v5 != 11)
      {
        goto LABEL_44;
      }

      sub_1D5BF6680(*a1, 0xBuLL);
      v6 = v4;
      v7 = 11;
      goto LABEL_46;
    case 0xCuLL:
      if (v5 != 12)
      {
        goto LABEL_44;
      }

      sub_1D5BF6680(*a1, 0xCuLL);
      v6 = v4;
      v7 = 12;
      goto LABEL_46;
    case 0xDuLL:
      if (v5 != 13)
      {
        goto LABEL_44;
      }

      sub_1D5BF6680(*a1, 0xDuLL);
      v6 = v4;
      v7 = 13;
      goto LABEL_46;
    case 0xEuLL:
      if (v5 != 14)
      {
        goto LABEL_44;
      }

      sub_1D5BF6680(*a1, 0xEuLL);
      v6 = v4;
      v7 = 14;
      goto LABEL_46;
    case 0xFuLL:
      if (v5 != 15)
      {
        goto LABEL_44;
      }

      sub_1D5BF6680(*a1, 0xFuLL);
      v6 = v4;
      v7 = 15;
      goto LABEL_46;
    case 0x10uLL:
      if (v5 != 16)
      {
        goto LABEL_44;
      }

      sub_1D5BF6680(*a1, 0x10uLL);
      v6 = v4;
      v7 = 16;
      goto LABEL_46;
    case 0x11uLL:
      if (v5 != 17)
      {
        goto LABEL_44;
      }

      sub_1D5BF6680(*a1, 0x11uLL);
      v6 = v4;
      v7 = 17;
      goto LABEL_46;
    default:
      if (v5 < 0x12)
      {
LABEL_44:
        sub_1D5BF2DDC(*a2, *(a2 + 8));
        sub_1D5BF2DDC(v2, v3);
        sub_1D5BF6680(v2, v3);
        sub_1D5BF6680(v4, v5);
        return 0;
      }

      else
      {
        v9 = *a1;
        if (v2 != v4 || v3 != v5)
        {
          v11 = sub_1D72646CC();
          sub_1D5BF2DDC(v4, v5);
          sub_1D5BF2DDC(v2, v3);
          sub_1D5BF6680(v2, v3);
          sub_1D5BF6680(v4, v5);
          return v11 & 1;
        }

        sub_1D5BF2DDC(v9, v3);
        sub_1D5BF2DDC(v2, v3);
        sub_1D5BF6680(v2, v3);
        v6 = v2;
        v7 = v3;
LABEL_46:
        sub_1D5BF6680(v6, v7);
        return 1;
      }
  }
}

unint64_t sub_1D681BA6C(unint64_t result)
{
  if (result >= 2)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1D681BA80()
{
  result = qword_1EDF13038;
  if (!qword_1EDF13038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13038);
  }

  return result;
}

uint64_t sub_1D681BAD4(uint64_t a1)
{
  result = sub_1D681BB2C(&qword_1EDF34F40, type metadata accessor for FeedItem, &protocol conformance descriptor for FeedItem);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D681BB2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D681BB78()
{
  result = qword_1EC88C630;
  if (!qword_1EC88C630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C630);
  }

  return result;
}

unint64_t sub_1D681BBD0()
{
  result = qword_1EC88C638;
  if (!qword_1EC88C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C638);
  }

  return result;
}

unint64_t sub_1D681BC28()
{
  result = qword_1EC88C640;
  if (!qword_1EC88C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C640);
  }

  return result;
}

unint64_t sub_1D681BC80()
{
  result = qword_1EC88C648;
  if (!qword_1EC88C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C648);
  }

  return result;
}

unint64_t sub_1D681BCD8()
{
  result = qword_1EC88C650;
  if (!qword_1EC88C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C650);
  }

  return result;
}

unint64_t sub_1D681BD30()
{
  result = qword_1EC88C658;
  if (!qword_1EC88C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C658);
  }

  return result;
}

unint64_t sub_1D681BD88()
{
  result = qword_1EC88C660;
  if (!qword_1EC88C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C660);
  }

  return result;
}

uint64_t sub_1D681BE40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFED && *(a1 + 16))
  {
    return (*a1 + 2147483630);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 17;
  if (v4 >= 0x13)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D681BE98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFEE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483630;
    if (a3 >= 0x7FFFFFEE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFEE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 17;
    }
  }

  return result;
}

void sub_1D681BF7C(uint64_t a1)
{
  if (!qword_1EDF34F50)
  {
    type metadata accessor for FeedItem.SharedState(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF34F50);
    }
  }
}

uint64_t sub_1D681C02C(uint64_t a1)
{
  result = sub_1D725FACC();
  if (v2 <= 0x3F)
  {
    result = sub_1D725D34C();
    if (v3 <= 0x3F)
    {
      result = sub_1D725E9DC();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

void sub_1D681C160(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v86 = a2;
  v91 = a1;
  v4 = *v2;
  v5 = type metadata accessor for FeedHeadline(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v90 = v8;
  v106 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D726062C();
  v104 = *(v4 + 96);
  v10 = *(v4 + 120);
  v102 = *(v4 + 128);
  v11 = *(v4 + 136);
  v109 = *(v4 + 80);
  v110 = v104;
  v105 = *(v4 + 104);
  v111 = v105;
  v112 = v10;
  v113 = v102;
  v114 = v11;
  type metadata accessor for FeedAdGroupDataProvider.FailureReason(255, &v109);
  swift_getWitnessTable();
  v84 = sub_1D7264ABC();
  MEMORY[0x1EEE9AC00](v84, v12);
  v83 = (&v81 - v13);
  sub_1D5BB149C(0, &qword_1EDF3AA28, MEMORY[0x1E69B3FD8]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v85 = &v81 - v16;
  v95 = v9;
  v94 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v88 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v93 = &v81 - v22;
  v99 = sub_1D726094C();
  v100 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99, v23);
  v87 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v92 = &v81 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v103 = &v81 - v30;
  v82 = v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v81 - v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  v38 = sub_1D725DDFC();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v40);
  v42 = &v81 - v41;
  v109 = __PAIR128__(v105, v104);
  v110 = v102;
  *&v111 = v11;
  sub_1D725D34C();
  v96 = v3;
  sub_1D725D35C();
  sub_1D725DDEC();
  (*(v39 + 8))(v42, v38);
  sub_1D5B49474(0, &qword_1EDF37A58, &protocol descriptor for FeedAdLayoutProviding);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(v107, &v109);
    v43 = v111;
    __swift_project_boxed_opaque_existential_1(&v109, v111);
    v44 = (*(*(&v43 + 1) + 16))(v43, *(&v43 + 1));
    v45 = *(v44 + 16);
    *&v105 = v6;
    if (v45)
    {
      v46 = 0;
      v47 = v100;
      v102 = v100 + 16;
      v98 = (v100 + 8);
      v101 = (v100 + 32);
      v104 = MEMORY[0x1E69E7CC0];
      v48 = v96;
      v49 = v99;
      v97 = v45;
      while (v46 < *(v44 + 16))
      {
        v51 = (*(v47 + 80) + 32) & ~*(v47 + 80);
        v52 = *(v47 + 72);
        v53.n128_f64[0] = (*(v47 + 16))(v35, v44 + v51 + v52 * v46, v49);
        if (sub_1D681CFB4(v53, v35, v48))
        {
          v54 = *v101;
          (*v101)(v103, v35, v49);
          v55 = v104;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v107[0] = v55;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D69996F8(0, *(v55 + 16) + 1, 1);
            v48 = v96;
            v55 = *&v107[0];
          }

          v58 = *(v55 + 16);
          v57 = *(v55 + 24);
          v59 = v55;
          if (v58 >= v57 >> 1)
          {
            sub_1D69996F8((v57 > 1), v58 + 1, 1);
            v48 = v96;
            v59 = *&v107[0];
          }

          *(v59 + 16) = v58 + 1;
          v104 = v59;
          v49 = v99;
          v54((v59 + v51 + v58 * v52), v103, v99);
          v47 = v100;
          v45 = v97;
        }

        else
        {
          (*v98)(v35, v49);
        }

        ++v46;
        v6 = v105;
        v50 = v106;
        if (v45 == v46)
        {
          goto LABEL_15;
        }
      }

      __break(1u);

      (*v98)(v35, v49);

      __break(1u);
    }

    else
    {
      v104 = MEMORY[0x1E69E7CC0];
      v50 = v106;
      v47 = v100;
LABEL_15:

      v60 = v95;
      if (*(v104 + 16))
      {
        FeedAdGroupDataProvider.groupData(for:includeAdjacentGroups:)(v86, 1, v83);
        v61 = v85;
        sub_1D681D088(v84, v107, v85);
        v62 = v94;
        (*(v94 + 56))(v61, 0, 1, v60);
        v63 = v93;
        v64 = v61;
        v65 = *(v62 + 32);
        v65(v93, v64, v60);
        v66 = *(v104 + 16);
        if (v66)
        {
          v102 = v62 + 32;
          v67 = *(v47 + 16);
          v100 = v47 + 16;
          v101 = v67;
          v68 = *(v47 + 80);
          v69 = v104 + ((v68 + 32) & ~v68);
          v97 = *(v47 + 72);
          v96 = v62 + 16;
          v98 = v68;
          v86 = (v68 + 16) & ~v68;
          v85 = v82 + v86;
          v84 = (v47 + 32);
          v83 = (v47 + 8);
          v82 = v65;
          v70 = v92;
          v71 = v87;
          do
          {
            v103 = v66;
            v72 = v99;
            v73 = v101;
            (v101)(v70, v69, v99);
            (v73)(v71, v70, v72);
            v74 = v88;
            v75 = v95;
            (*(v62 + 16))(v88, v93, v95);
            sub_1D5BC892C(v91, v50, type metadata accessor for FeedHeadline);
            v76 = (v85 + *(v62 + 80)) & ~*(v62 + 80);
            v77 = (v89 + *(v6 + 80) + v76) & ~*(v6 + 80);
            v78 = swift_allocObject();
            (*v84)(v78 + v86, v71, v72);
            v79 = v78 + v76;
            v50 = v106;
            v82(v79, v74, v75);
            v80 = v78 + v77;
            v6 = v105;
            v70 = v92;
            sub_1D5C21AEC(v50, v80, type metadata accessor for FeedHeadline);
            FeedPrerollAdRequester.scheduleRequest(for:createContext:)(v70, sub_1D681DAF0, v78);
            v62 = v94;

            (*v83)(v70, v72);
            v69 += v97;
            v66 = v103 - 1;
          }

          while (v103 != 1);

          v60 = v95;
          v63 = v93;
        }

        else
        {
        }

        (*(v62 + 8))(v63, v60);
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_1(&v109);
    }
  }

  else
  {
    v108 = 0;
    memset(v107, 0, sizeof(v107));
    sub_1D5BFB774(v107, &qword_1EDF37A50, &qword_1EDF37A58, &protocol descriptor for FeedAdLayoutProviding);
  }
}

__n128 **sub_1D681CDC4()
{
  v1 = *(*v0 + 144);
  v2 = sub_1D725FACC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 152);
  v4 = sub_1D725D34C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 160);
  v6 = sub_1D725E9DC();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return v0;
}

uint64_t sub_1D681CF5C()
{
  sub_1D681CDC4();

  return swift_deallocClassInstance();
}

BOOL sub_1D681CFB4(__n128 a1, uint64_t a2, uint64_t a3)
{
  sub_1D726093C();
  sub_1D725A7BC();

  sub_1D725B7CC();

  return (v4 & 1) == 0;
}

uint64_t sub_1D681D088@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

double sub_1D681D158@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a5;
  v30 = a3;
  v31 = a4;
  v29 = a2;
  v6 = type metadata accessor for FeedHeadline(0);
  v33 = *(v6 - 8);
  v32 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v40 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D726062C();
  v27 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v28 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D726094C();
  v26 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v17 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  v34 = a1[3];
  v36 = v18;
  v37 = __swift_project_boxed_opaque_existential_1(a1, v34);
  v35 = sub_1D726026C();
  (*(v14 + 16))(v17, v29, v13);
  (*(v10 + 16))(&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v9);
  sub_1D5BC892C(v31, v40, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a1, v39);
  v19 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v20 = (v15 + *(v10 + 80) + v19) & ~*(v10 + 80);
  v21 = (v11 + *(v33 + 80) + v20) & ~*(v33 + 80);
  v22 = (v32 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v14 + 32))(v23 + v19, v17, v26);
  (*(v10 + 32))(v23 + v20, v28, v27);
  sub_1D5C21AEC(v40, v23 + v21, type metadata accessor for FeedHeadline);
  sub_1D5B63F14(v39, v23 + v22);
  sub_1D7260A1C();
  sub_1D72607DC();
  sub_1D5B47410(&unk_1EDF43920, MEMORY[0x1E69B41D8], MEMORY[0x1E69B41D0]);
  sub_1D72609DC();

  return result;
}

uint64_t sub_1D681D52C(void *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v35 = a6;
  v36 = a4;
  v37 = a5;
  v7 = sub_1D726068C();
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v40 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D72606AC();
  v43 = *(v10 - 8);
  v44 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D72604DC();
  v33 = *(v14 - 8);
  v34 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v32 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D726048C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D726029C();
  v38 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D726091C();
  sub_1D726091C();
  sub_1D726028C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B47410(&qword_1EC88C670, MEMORY[0x1E69B3E00], MEMORY[0x1E69B3DF8]);
  v39 = v22;
  sub_1D72609FC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D726062C();
  sub_1D5B47410(&qword_1EDF3AA30, MEMORY[0x1E69B3FD8], MEMORY[0x1E69B3FD0]);
  sub_1D72609FC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v26 = *(v37 + 40);
  swift_unknownObjectRetain();
  sub_1D726047C();
  sub_1D5B47410(&qword_1EC88C678, MEMORY[0x1E69B3E90], MEMORY[0x1E69B3E88]);
  sub_1D72609FC();
  (*(v18 + 8))(v21, v17);
  if ([v26 sourceChannel])
  {
    __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    swift_unknownObjectRetain();
    v27 = v32;
    sub_1D72604CC();
    sub_1D5B47410(&qword_1EC88C680, MEMORY[0x1E69B3EF8], MEMORY[0x1E69B3EF0]);
    v28 = v34;
    sub_1D72609FC();
    swift_unknownObjectRelease();
    (*(v33 + 8))(v27, v28);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (*(v41 + 104))(v40, *MEMORY[0x1E69B3FF8], v42);
  sub_1D726069C();
  sub_1D5B47410(&qword_1EDF3AA20, MEMORY[0x1E69B4028], MEMORY[0x1E69B4020]);
  v29 = v44;
  sub_1D72609FC();
  (*(v43 + 8))(v13, v29);
  return (*(v38 + 8))(v25, v39);
}

double sub_1D681DAF0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1D726094C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1D726062C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for FeedHeadline(0) - 8);
  return sub_1D681D158(a1, v2 + v6, v2 + v9, v2 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80)), a2);
}

uint64_t sub_1D681DC2C(void *a1)
{
  v3 = *(sub_1D726094C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1D726062C() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for FeedHeadline(0) - 8);
  v11 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = (v1 + ((*(v9 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D681D52C(a1, v10, v1 + v4, v1 + v7, v1 + v11, v12);
}

uint64_t _s8NewsFeed26FormatImageAdjustmentBlendO12GradientDataV2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[5];
  v3 = a1[3];
  v48 = a1[4];
  v49 = v2;
  v4 = a1[5];
  v5 = a1[7];
  v50 = a1[6];
  v51 = v5;
  v6 = a1[1];
  v45[0] = *a1;
  v45[1] = v6;
  v7 = a1[3];
  v9 = *a1;
  v8 = a1[1];
  v46 = a1[2];
  v47 = v7;
  v10 = a2[5];
  v11 = a2[3];
  v55 = a2[4];
  v56 = v10;
  v12 = a2[5];
  v13 = a2[7];
  v57 = a2[6];
  v58 = v13;
  v14 = a2[1];
  v52[0] = *a2;
  v52[1] = v14;
  v15 = a2[3];
  v17 = *a2;
  v16 = a2[1];
  v53 = a2[2];
  v54 = v15;
  v41 = v48;
  v42 = v4;
  v18 = a1[7];
  v43 = v50;
  v44 = v18;
  v37 = v9;
  v38 = v8;
  v39 = v46;
  v40 = v3;
  v33 = v55;
  v34 = v12;
  v19 = a2[7];
  v35 = v57;
  v36 = v19;
  v29 = v17;
  v30 = v16;
  v20 = *(a1 + 128);
  v21 = *(a2 + 128);
  v31 = v53;
  v32 = v11;
  sub_1D681E8D0(v45, v60);
  sub_1D681E8D0(v52, v60);
  v22 = _s8NewsFeed25FormatDirectionalGradientO2eeoiySbAC_ACtFZ_0(&v37, &v29);
  v59[4] = v33;
  v59[5] = v34;
  v59[6] = v35;
  v59[7] = v36;
  v59[0] = v29;
  v59[1] = v30;
  v59[2] = v31;
  v59[3] = v32;
  sub_1D62B7E78(v59);
  v60[4] = v41;
  v60[5] = v42;
  v60[6] = v43;
  v60[7] = v44;
  v60[0] = v37;
  v60[1] = v38;
  v60[2] = v39;
  v60[3] = v40;
  sub_1D62B7E78(v60);
  if (v22)
  {
    LOBYTE(v37) = v20;
    LOBYTE(v29) = v21;
    v23 = FormatBlendMode.rawValue.getter();
    v25 = v24;
    if (v23 == FormatBlendMode.rawValue.getter() && v25 == v26)
    {
      v27 = 1;
    }

    else
    {
      v27 = sub_1D72646CC();
    }
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

uint64_t _s8NewsFeed26FormatImageAdjustmentBlendO9ColorDataV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  v11 = *a2;
  v12 = v2;

  LOBYTE(v2) = static FormatColor.== infix(_:_:)(&v12, &v11);

  if (v2)
  {
    LOBYTE(v12) = v3;
    LOBYTE(v11) = v4;
    v5 = FormatBlendMode.rawValue.getter();
    v7 = v6;
    if (v5 == FormatBlendMode.rawValue.getter() && v7 == v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_1D72646CC();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t _s8NewsFeed26FormatImageAdjustmentBlendO2eeoiySbAC_ACtFZ_0(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 112);
  v58 = *(a1 + 96);
  v59 = v3;
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  v54 = *(a1 + 32);
  v55 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 80);
  v56 = *(a1 + 64);
  v57 = v7;
  v8 = *(a1 + 16);
  v53[0] = *a1;
  v53[1] = v8;
  v9 = a2[5];
  v10 = a2[7];
  v67 = a2[6];
  v68 = v10;
  v11 = a2[1];
  v12 = a2[3];
  v63 = a2[2];
  v64 = v12;
  v13 = a2[3];
  v14 = a2[5];
  v65 = a2[4];
  v66 = v14;
  v15 = a2[1];
  v61 = *a2;
  v62 = v15;
  v16 = *(a1 + 80);
  v17 = *(a1 + 112);
  v70[6] = *(a1 + 96);
  v70[7] = v17;
  v18 = *(a1 + 16);
  v19 = *(a1 + 48);
  v70[2] = *(a1 + 32);
  v70[3] = v19;
  v70[4] = *(a1 + 64);
  v70[5] = v16;
  v70[0] = *a1;
  v70[1] = v18;
  v77 = v9;
  v78 = v67;
  v79 = a2[7];
  v73 = v11;
  v74 = v63;
  v75 = v13;
  v76 = v65;
  v72 = v61;
  v20 = *(a1 + 112);
  v81[6] = v58;
  v81[7] = v20;
  v81[2] = v54;
  v81[3] = v6;
  v81[4] = v56;
  v81[5] = v2;
  v60 = *(a1 + 128);
  v69 = *(a2 + 128);
  v71 = *(a1 + 128);
  v80 = *(a2 + 128);
  v82 = *(a1 + 128);
  v81[0] = v53[0];
  v81[1] = v4;
  if (sub_1D6011234(v81) == 1)
  {
    v21 = sub_1D5D756B8(v81);
    v22 = *v21;
    v23 = *(v21 + 8);
    v50 = v67;
    v51 = v68;
    v52 = v69;
    v46 = v63;
    v47 = v64;
    v48 = v65;
    v49 = v66;
    v44 = v61;
    v45 = v62;
    v24 = sub_1D6011234(&v44);
    v25 = sub_1D5D756B8(&v44);
    if (v24 == 1)
    {
      v26 = *v25;
      v27 = *(v25 + 8);
      *&v40[0] = v22;
      BYTE8(v40[0]) = v23;
      v38 = v26;
      v39 = v27;
      sub_1D5F78E88(&v61, v42);
      sub_1D5F78E88(v53, v42);
      sub_1D5F78E88(v53, v42);
      sub_1D5F78E88(&v61, v42);
      v28 = _s8NewsFeed26FormatImageAdjustmentBlendO9ColorDataV2eeoiySbAE_AEtFZ_0(v40, &v38);
LABEL_7:
      v32 = v28;
      sub_1D681E92C(v70);
      sub_1D62B7408(&v61);
      sub_1D62B7408(v53);
      return v32 & 1;
    }
  }

  else
  {
    v29 = sub_1D5D756B8(v81);
    v50 = v67;
    v51 = v68;
    v52 = v69;
    v46 = v63;
    v47 = v64;
    v48 = v65;
    v49 = v66;
    v44 = v61;
    v45 = v62;
    v30 = sub_1D6011234(&v44);
    v31 = sub_1D5D756B8(&v44);
    if (v30 != 1)
    {
      v42[5] = *(v29 + 80);
      v42[6] = *(v29 + 96);
      v42[7] = *(v29 + 112);
      v43 = *(v29 + 128);
      v42[1] = *(v29 + 16);
      v42[2] = *(v29 + 32);
      v42[3] = *(v29 + 48);
      v42[4] = *(v29 + 64);
      v42[0] = *v29;
      v33 = *(v31 + 112);
      v40[6] = *(v31 + 96);
      v40[7] = v33;
      v41 = *(v31 + 128);
      v34 = *(v31 + 48);
      v40[2] = *(v31 + 32);
      v40[3] = v34;
      v35 = *(v31 + 80);
      v40[4] = *(v31 + 64);
      v40[5] = v35;
      v36 = *(v31 + 16);
      v40[0] = *v31;
      v40[1] = v36;
      sub_1D5F78E88(&v61, &v38);
      sub_1D5F78E88(v53, &v38);
      sub_1D5F78E88(v53, &v38);
      sub_1D5F78E88(&v61, &v38);
      v28 = _s8NewsFeed26FormatImageAdjustmentBlendO12GradientDataV2eeoiySbAE_AEtFZ_0(v42, v40);
      goto LABEL_7;
    }
  }

  sub_1D5F78E88(v53, &v44);
  sub_1D5F78E88(&v61, &v44);
  sub_1D681E92C(v70);
  v32 = 0;
  return v32 & 1;
}

unint64_t sub_1D681E3F8(uint64_t a1)
{
  result = sub_1D681E420();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D681E420()
{
  result = qword_1EC88C688;
  if (!qword_1EC88C688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C688);
  }

  return result;
}

unint64_t sub_1D681E4B4()
{
  result = qword_1EC88C690;
  if (!qword_1EC88C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C690);
  }

  return result;
}

unint64_t sub_1D681E508(uint64_t a1)
{
  result = sub_1D681E530();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D681E530()
{
  result = qword_1EC88C698;
  if (!qword_1EC88C698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C698);
  }

  return result;
}

unint64_t sub_1D681E5C4()
{
  result = qword_1EC88C6A0;
  if (!qword_1EC88C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C6A0);
  }

  return result;
}

unint64_t sub_1D681E618(uint64_t a1)
{
  result = sub_1D681E640();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D681E640()
{
  result = qword_1EC88C6A8;
  if (!qword_1EC88C6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C6A8);
  }

  return result;
}

uint64_t sub_1D681E6D4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D681E728()
{
  result = qword_1EC88C6B0;
  if (!qword_1EC88C6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C6B0);
  }

  return result;
}

uint64_t sub_1D681E77C(uint64_t result, char a2)
{
  v2 = *(result + 128) & 0xF | (a2 << 7);
  *(result + 104) &= 0x8000000000000001;
  *(result + 128) = v2;
  return result;
}

double sub_1D681E7AC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 120) = 0;
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 128) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 129) = 1;
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
      result = 0.0;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 96) = 0;
      *(a1 + 104) = 2 * -a2;
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
      return result;
    }

    *(a1 + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D681E838(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF1 && *(a1 + 9))
  {
    return (*a1 + 241);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 0x10;
  v5 = v3 - 16;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D681E87C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF0)
  {
    *(result + 8) = 0;
    *result = a2 - 241;
    if (a3 >= 0xF1)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF1)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 15;
    }
  }

  return result;
}

uint64_t sub_1D681E92C(uint64_t a1)
{
  sub_1D681E988();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D681E988()
{
  if (!qword_1EC889AC0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC889AC0);
    }
  }
}

id sub_1D681E9E8()
{
  v1 = OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController____lazy_storage___createBarButtonItem;
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController____lazy_storage___createBarButtonItem];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController____lazy_storage___createBarButtonItem];
  }

  else
  {
    ObjectType = swift_getObjectType();
    v18[3] = ObjectType;
    v18[0] = v0;
    v5 = v0;
    v6 = sub_1D726203C();
    if (ObjectType)
    {
      v7 = __swift_project_boxed_opaque_existential_1(v18, ObjectType);
      v8 = *(ObjectType - 8);
      v9 = MEMORY[0x1EEE9AC00](v7, v7);
      v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v11, v9);
      v12 = sub_1D72646AC();
      (*(v8 + 8))(v11, ObjectType);
      __swift_destroy_boxed_opaque_existential_1(v18);
    }

    else
    {
      v12 = 0;
    }

    type metadata accessor for DebugFormatBarButtonItem();
    v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v14 = [v13 initWithTitle:v6 style:0 target:v12 action:{sel_doCreatePackage, v18[0]}];

    swift_unknownObjectRelease();
    v15 = *&v0[v1];
    *&v0[v1] = v14;
    v3 = v14;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

void sub_1D681EBD4()
{
  v28.receiver = v0;
  v28.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v28, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = v1;
  v3 = objc_opt_self();
  v4 = [v3 systemBackgroundColor];
  [v2 setBackgroundColor_];

  v5 = [v0 navigationItem];
  v6 = sub_1D726203C();
  [v5 setTitle_];

  v7 = [v0 navigationItem];
  sub_1D68222C4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D72816C0;
  v9 = sub_1D726203C();
  v10 = [objc_opt_self() systemImageNamed_];

  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  type metadata accessor for DebugFormatBarButtonItem();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = objc_allocWithZone(ObjCClassFromMetadata);
  v13 = v0;
  v14 = [v12 initWithImage:v10 style:0 target:v13 action:sel_doDismissView];

  *(v8 + 32) = v14;
  sub_1D5B5A498(0, &qword_1EDF04590, 0x1E69DC708);
  v15 = sub_1D726265C();

  [v7 setRightBarButtonItems_];

  v16 = sub_1D681E9E8();
  v17 = [v3 systemBlueColor];
  [v16 setTintColor_];

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D72816D0;
  *(v18 + 32) = [objc_allocWithZone(ObjCClassFromMetadata) initWithBarButtonSystemItem:5 target:0 action:0];
  v19 = OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController____lazy_storage___createBarButtonItem;
  v20 = *&v13[OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController____lazy_storage___createBarButtonItem];
  *(v18 + 40) = v20;
  v21 = v20;
  v22 = sub_1D726265C();

  [v13 setToolbarItems_];

  v23 = *&v13[OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_tableView];
  [v23 setDataSource_];
  [v23 setDelegate_];
  v24 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  [v23 setTableFooterView_];

  type metadata accessor for DebugFormatCreatePackageTableViewCell(0);
  sub_1D7262DAC();
  sub_1D5B5A498(0, &qword_1EC88DCB0, 0x1E69DD028);
  sub_1D7262DAC();
  type metadata accessor for DebugFormatMarkdownHeaderFooterView();
  sub_1D7262D9C();
  v25 = [v13 view];
  if (v25)
  {
    v26 = v25;
    [v25 addSubview_];

    v27 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v13 action:sel_doEndEditing];
    [v27 setCancelsTouchesInView_];
    [v23 addGestureRecognizer_];
    [*&v13[v19] setEnabled_];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1D681F1CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_selectedTemplate + 48);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v18 = 1;
    goto LABEL_22;
  }

  v20 = OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_valuesByTemplateKey;

  v3 = 0;
  v4 = 1;
  while (2)
  {
    if (v3 >= *(v1 + 16))
    {
LABEL_23:
      __break(1u);
      return;
    }

    v5 = 96 * v3++;
    while ((v4 & 1) == 0)
    {
      if (v2 == v3)
      {
        goto LABEL_20;
      }

LABEL_6:
      v5 += 96;
      if (v3++ >= *(v1 + 16))
      {
        goto LABEL_23;
      }
    }

    v8 = *(v1 + v5 + 32);
    v7 = *(v1 + v5 + 40);
    v9 = *(v1 + v5 + 80);
    swift_beginAccess();
    v10 = *(v21 + v20);
    v11 = *(v10 + 16);

    if (v11)
    {
      v12 = sub_1D5B69D90(v8, v7);
      if (v13)
      {
        v14 = (*(v10 + 56) + 16 * v12);
        v15 = *v14;
        v16 = v14[1];
        swift_endAccess();

        v17 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v17 = v15 & 0xFFFFFFFFFFFFLL;
        }

        if (!v17)
        {
LABEL_20:
          v18 = 0;
          break;
        }

        goto LABEL_15;
      }
    }

    swift_endAccess();

    if (!v9)
    {
LABEL_15:
      if (v2 == v3)
      {
        v18 = 1;
        break;
      }

      goto LABEL_6;
    }

    v4 = 0;
    v18 = 0;
    if (v2 != v3)
    {
      continue;
    }

    break;
  }

LABEL_22:
  v19 = sub_1D681E9E8();
  [v19 setEnabled_];
}

void sub_1D681F3F4()
{
  v1 = v0;
  v82[4] = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v2 = sub_1D72585BC();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1D72577EC();
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v6);
  v69 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_selectedTemplate + 16);
  v8 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_selectedTemplate + 24);
  v10 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_selectedTemplate + 48);
  v11 = &qword_1EC88C000;
  v76 = *(v10 + 16);
  if (v76)
  {
    v66[1] = v5;
    v67 = v9;
    v68 = v8;
    v78 = OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_valuesByTemplateKey;

    v12 = 0;
    v13 = (v10 + 72);
    v74 = v10;
    v75 = v1;
    while (1)
    {
      if (v12 >= *(v10 + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
      }

      v80 = v12;
      v14 = *(v13 - 5);
      v15 = *(v13 - 4);
      v16 = *(v13 - 2);
      v17 = v13[3];
      v77 = v13[2];
      v18 = v13[6];
      v19 = v78;
      swift_beginAccess();
      v20 = *(v1 + v19);
      v21 = *(v20 + 16);
      v79 = v18;
      v22 = v14;

      v81 = v16;

      if (v21 && (v23 = sub_1D5B69D90(v14, v15), (v24 & 1) != 0))
      {
        v25 = (*(v20 + 56) + 16 * v23);
        v26 = *v25;
        v27 = v25[1];
        swift_endAccess();
        if (v17)
        {
          v28 = HIBYTE(v27) & 0xF;
          if ((v27 & 0x2000000000000000) == 0)
          {
            v28 = v26 & 0xFFFFFFFFFFFFLL;
          }

          if (!v28)
          {
            v1 = v75;
            v29 = v78;
            swift_beginAccess();

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v82[0] = *(v1 + v29);
            v30 = v82[0];
            *(v1 + v29) = 0x8000000000000000;
            v32 = sub_1D5B69D90(v14, v15);
            v33 = v30[2];
            v34 = (v31 & 1) == 0;
            v35 = v33 + v34;
            if (__OFADD__(v33, v34))
            {
              goto LABEL_32;
            }

            v36 = v31;
            if (v30[3] >= v35)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v39 = v82[0];
                if ((v31 & 1) == 0)
                {
                  goto LABEL_23;
                }
              }

              else
              {
                sub_1D6D7DE64();
                v39 = v82[0];
                if ((v36 & 1) == 0)
                {
                  goto LABEL_23;
                }
              }
            }

            else
            {
              sub_1D6D666FC(v35, isUniquelyReferenced_nonNull_native);
              v37 = sub_1D5B69D90(v22, v15);
              if ((v36 & 1) != (v38 & 1))
              {
                sub_1D726493C();
                __break(1u);
                return;
              }

              v32 = v37;
              v39 = v82[0];
              if ((v36 & 1) == 0)
              {
LABEL_23:
                v39[(v32 >> 6) + 8] |= 1 << v32;
                v41 = (v39[6] + 16 * v32);
                *v41 = v22;
                v41[1] = v15;
                v42 = (v39[7] + 16 * v32);
                *v42 = v77;
                v42[1] = v17;
                v43 = v39[2];
                v44 = __OFADD__(v43, 1);
                v45 = v43 + 1;
                if (v44)
                {
                  goto LABEL_33;
                }

                v39[2] = v45;

                goto LABEL_25;
              }
            }

            v40 = (v39[7] + 16 * v32);
            *v40 = v77;
            v40[1] = v17;

LABEL_25:
            *(v1 + v78) = v39;
            swift_endAccess();

            goto LABEL_17;
          }
        }
      }

      else
      {
        swift_endAccess();
      }

      v1 = v75;
LABEL_17:
      v12 = v80 + 1;

      v13 += 12;
      v10 = v74;
      if (v76 == v12)
      {

        v9 = v67;
        v8 = v68;
        v11 = &qword_1EC88C000;
        goto LABEL_27;
      }
    }
  }

LABEL_27:
  v46 = v11[221];
  swift_beginAccess();
  v47 = *(v1 + v46);

  v48 = swift_isUniquelyReferenced_nonNull_native();
  v82[0] = v47;
  sub_1D6D76D20(v9, v8, 0x6574616C706D6574, 0xE800000000000000, v48);
  v49 = objc_opt_self();
  v50 = sub_1D7261D2C();

  v82[0] = 0;
  v51 = [v49 dataWithJSONObject:v50 options:0 error:v82];

  v52 = v82[0];
  if (v51)
  {
    v53 = sub_1D725867C();
    v55 = v54;

    sub_1D725849C();
    v56 = v69;
    sub_1D72577AC();
    sub_1D725774C();
    sub_1D72577DC();
    v81 = v53;
    sub_1D5E3E824(v53, v55);
    sub_1D72577CC();
    v57 = sub_1D681E9E8();
    [v57 setEnabled_];

    MEMORY[0x1EEE9AC00](v58, v59);
    v66[-2] = v1;
    v66[-1] = v56;
    sub_1D725BDCC();
    v60 = v8;
    sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
    v61 = sub_1D726308C();
    v62 = swift_allocObject();
    *(v62 + 16) = v9;
    *(v62 + 24) = v60;
    sub_1D725BAAC();

    v63 = sub_1D726308C();
    sub_1D725BADC();
    sub_1D5B952F8(v81, v55);

    (*(v70 + 8))(v56, v72);
  }

  else
  {
    v64 = v52;

    v65 = sub_1D725829C();

    swift_willThrow();
  }
}

uint64_t sub_1D681FBB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D72577EC();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(a1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_debugFormatService);
  (*(v5 + 16))(v9, a2, v4, v7);
  v14 = v9;
  v15 = v10;
  sub_1D68222C4(0, &unk_1EC88C730, &type metadata for DebugFormatCreatePackageResponse, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v11 = sub_1D725BBAC();
  (*(v5 + 8))(v9, v4);
  return v11;
}

void sub_1D681FD18(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v51 = a3;
  v53 = a2;
  v5 = sub_1D7261ABC();
  v70 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7261B2C();
  v69 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v64 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D725891C();
  v71 = *(v12 - 8);
  v72 = v12;
  v13 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v62 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v65 = &v49 - v17;
  v18 = *a1;
  v19 = a1[1];
  v20 = a1[2];
  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  v21 = qword_1EC9BA710;
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_1D7263D4C();

  *&aBlock = 0xD000000000000011;
  *(&aBlock + 1) = 0x80000001D73D7180;
  v50 = v18;
  v49 = v19;
  MEMORY[0x1DA6F9910](v18, v19);
  v63 = v21;
  sub_1D5F5EBA0(2, 0, 0, aBlock, *(&aBlock + 1));

  v22 = *(v20 + 16);
  v24 = v71;
  v23 = v72;
  v25 = v65;
  if (v22)
  {
    v60 = v71 + 16;
    v59 = v13 + 7;
    v58 = v71 + 32;
    v57 = &v75;
    v56 = (v70 + 8);
    v55 = (v69 + 1);
    v54 = v71 + 8;
    v26 = (v20 + 40);
    v61 = v9;
    do
    {
      v69 = v26;
      v70 = v22;
      v27 = *(v26 - 1);
      v28 = *v26;
      *&aBlock = 0x656C69662077654ELL;
      *(&aBlock + 1) = 0xEA0000000000203ALL;

      MEMORY[0x1DA6F9910](v27, v28);

      v66 = *(&aBlock + 1);
      v67 = aBlock;
      sub_1D725890C();
      v29 = v63;
      v68 = *(v63 + 40);
      v30 = v62;
      (*(v24 + 16))(v62, v25, v23);
      v31 = (*(v24 + 80) + 16) & ~*(v24 + 80);
      v32 = v8;
      v33 = (v59 + v31) & 0xFFFFFFFFFFFFFFF8;
      v34 = v5;
      v35 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
      v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      (*(v71 + 32))(v37 + v31, v30, v72);
      v38 = (v37 + v33);
      v8 = v32;
      v23 = v72;
      v39 = v66;
      *v38 = v67;
      v38[1] = v39;
      *(v37 + v35) = 2;
      v5 = v34;
      v25 = v65;
      *(v37 + v36) = v29;
      *(&v76 + 1) = sub_1D5F5F790;
      v77 = v37;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v75 = sub_1D5B6B06C;
      *&v76 = &block_descriptor_48;
      v40 = _Block_copy(&aBlock);

      v41 = v64;
      sub_1D7261AEC();
      v73 = MEMORY[0x1E69E7CC0];
      sub_1D6821C34(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      sub_1D6821C7C(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1D5F5D72C();
      v42 = v61;
      sub_1D7263B6C();
      MEMORY[0x1DA6FA730](0, v41, v8, v40);
      v43 = v40;
      v24 = v71;
      _Block_release(v43);
      (*v56)(v8, v5);
      (*v55)(v41, v42);
      (*(v24 + 8))(v25, v23);

      v26 = v69 + 2;
      v22 = v70 - 1;
    }

    while (v70 != 1);
  }

  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_1D7263D4C();

  strcpy(&aBlock, "Created new ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  MEMORY[0x1DA6F9910](v51, v52);
  MEMORY[0x1DA6F9910](544497952, 0xE400000000000000);
  MEMORY[0x1DA6F9910](v50, v49);
  v44 = aBlock;
  v45 = swift_allocObject();
  v46 = v53;
  swift_unknownObjectWeakInit();
  LOBYTE(aBlock) = 0;
  *(&aBlock + 1) = 0x73736563637553;
  v75 = 0xE700000000000000;
  v76 = v44;
  v77 = sub_1D6821CE0;
  v78 = v45;
  v79 = 0;
  v80 = 0;
  v47 = *(v46 + OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_editor);
  v48 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_alertManager;
  swift_beginAccess();
  if (*(v47 + v48))
  {

    sub_1D6AD3108(&aBlock);
    sub_1D5F181F4(&aBlock);
  }

  else
  {
    sub_1D5F181F4(&aBlock);
  }
}

void sub_1D68204A0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_1D6820504(uint64_t a1, uint64_t a2)
{
  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  sub_1D5F5EBA0(a1, 0, 0, 0xD000000000000018, 0x80000001D73D7160);
  v9[0] = 0;
  v8 = a1;
  sub_1D5BA6EF4();
  sub_1D7263F9C();
  v9[1] = 0x64656C696146;
  v9[2] = 0xE600000000000000;
  v9[3] = 0;
  v9[4] = 0xE000000000000000;
  v10 = 0u;
  v11 = 0u;
  v4 = *(a2 + OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_editor);
  v5 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_alertManager;
  swift_beginAccess();
  if (*(v4 + v5))
  {

    sub_1D6AD3108(v9);
  }

  v6 = sub_1D681E9E8();
  [v6 setEnabled_];

  return sub_1D5F181F4(v9);
}

uint64_t type metadata accessor for DebugFormatCreatePackageViewController(uint64_t a1)
{
  result = qword_1EC88C718;
  if (!qword_1EC88C718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6820834(uint64_t a1)
{
  result = sub_1D72585BC();
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

unint64_t sub_1D6820960(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D7258DBC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6821C7C(0, &qword_1EDF3C480, MEMORY[0x1E69680B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v93 - v10;
  v99 = v2;
  v12 = *(v2 + OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_sections);
  result = sub_1D7258DAC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (result >= *(v12 + 16))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v95 = v7;
  v96 = v4;
  v14 = v12 + 104 * result;
  v16 = *(v14 + 48);
  v15 = *(v14 + 64);
  v103 = *(v14 + 32);
  v17 = *(v14 + 128);
  v19 = *(v14 + 96);
  v18 = *(v14 + 112);
  v106 = *(v14 + 80);
  v107 = v19;
  v104 = v16;
  v105 = v15;
  v108 = v18;
  v109 = v17;
  v20 = v103;
  v21 = v19;
  v93 = *(&v106 + 1);
  sub_1D6821B38(&v103, v102);
  result = sub_1D7258D9C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (result < *(v17 + 16))
  {
    v94 = v3;
    v97 = v20;
    v22 = v17 + 24 * result;
    v23 = *(v22 + 40);
    v98 = *(v22 + 32);
    if ((*(v22 + 48) & 1) == 0)
    {
      type metadata accessor for DebugFormatCreatePackageTableViewCell(0);
      v93 = v23;

      v49 = sub_1D7262D8C();
      [v49 setSelectionStyle_];
      v50 = OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_textField;
      v51 = *&v49[OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_textField];
      v52 = OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_valuesByTemplateKey;
      v53 = v99;
      swift_beginAccess();
      v54 = *(*(v53 + v52) + 16);
      v55 = v51;
      if (v54 && (sub_1D5B69D90(v97, *(&v20 + 1)), (v56 & 1) != 0))
      {
        swift_endAccess();

        v57 = sub_1D726203C();
      }

      else
      {
        swift_endAccess();
        v57 = 0;
      }

      [v55 setText_];

      [*&v49[v50] setEnabled_];
      v58 = v98;
      [*&v49[v50] setAutocapitalizationType_];
      LOBYTE(v100) = v58;
      v59 = v93;
      v101 = v93;
      sub_1D6F08DA8(v11);
      v60 = OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_disallowedCharacterSet;
      swift_beginAccess();
      sub_1D60D0D90(v11, &v49[v60]);
      swift_endAccess();
      v61 = swift_allocObject();
      v62 = v99;
      swift_unknownObjectWeakInit();
      v63 = swift_allocObject();
      v64 = v104;
      *(v63 + 56) = v105;
      *(v63 + 40) = v64;
      *(v63 + 24) = v103;
      v65 = v107;
      *(v63 + 104) = v108;
      v66 = v106;
      *(v63 + 88) = v65;
      *(v63 + 16) = v61;
      *(v63 + 120) = v109;
      *(v63 + 72) = v66;
      v67 = &v49[OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_onChange];
      v68 = *&v49[OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_onChange];
      v69 = *&v49[OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_onChange + 8];
      *v67 = sub_1D6821BF0;
      v67[1] = v63;

      sub_1D5B74328(v68, v69);

      v70 = OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_shouldBecomeFirstResponder;
      if (*(v62 + OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_shouldBecomeFirstResponder) == 1)
      {
        v71 = v95;
        MEMORY[0x1DA6F0420](0, 0);
        v72 = sub_1D7258D5C();
        (*(v96 + 8))(v71, v94);
        if (v72)
        {
          v73 = *&v49[v50];
          [v73 becomeFirstResponder];

          sub_1D607F09C(v58, v59);
          *(v99 + v70) = 0;
          return v49;
        }
      }

      v74 = v58;
      v75 = v59;
LABEL_39:
      sub_1D607F09C(v74, v75);
      return v49;
    }

    sub_1D5B5A498(0, &qword_1EC88DCB0, 0x1E69DD028);

    v24 = sub_1D7262D8C();
    v25 = [v24 textLabel];
    if (v25)
    {
      v26 = v25;
      [v25 setNumberOfLines_];
    }

    v96 = *(&v20 + 1);
    v27 = [v24 textLabel];
    v28 = v98;
    if (v27)
    {
      v29 = v27;
      v30 = [objc_opt_self() systemFontOfSize_];
      [v29 setFont_];
    }

    v31 = [v24 textLabel];
    if (v31)
    {
      v32 = v31;
      v33 = sub_1D5C73AB0(v28, v23);
      if (v34)
      {
        v102[0] = v33;
        v102[1] = v34;
        sub_1D5BF4D9C();
        v35 = sub_1D7263A0C();
        v37 = v36;

        sub_1D6821B94();
        v38 = sub_1D5FD24A4(1uLL, v28, v23);
        v40 = v39;
        v42 = v41;
        v44 = v43;
        v45 = sub_1D607F09C(v98, v23);
        v46 = MEMORY[0x1DA6F97E0](v38, v40, v42, v44, v45);
        v48 = v47;

        v100 = v35;
        v101 = v37;

        MEMORY[0x1DA6F9910](v46, v48);

        v28 = v98;
      }

      else
      {
      }

      v76 = sub_1D726203C();

      [v32 setText_];
    }

    [v24 setSelectionStyle_];
    v77 = OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_valuesByTemplateKey;
    v78 = v99;
    swift_beginAccess();
    v79 = *(v78 + v77);
    if (*(v79 + 16) && (v80 = sub_1D5B69D90(v97, v96), (v81 & 1) != 0))
    {
      v82 = (*(v79 + 56) + 16 * v80);
      v83 = *v82;
      v21 = v82[1];
      swift_endAccess();

      sub_1D6821B9C(&v103);
      if (v28 != v83)
      {
        goto LABEL_31;
      }
    }

    else
    {
      swift_endAccess();

      sub_1D6821B9C(&v103);
      if (!v21)
      {
        v84 = v23;
        v85 = 0;
        goto LABEL_34;
      }

      if (v28 != v93)
      {
        goto LABEL_31;
      }
    }

    if (v23 == v21)
    {
      v84 = v23;
      v85 = 1;
LABEL_32:

LABEL_34:
      v86 = [v24 imageView];
      if (v86)
      {
        v87 = v86;
        v88 = sub_1D726203C();

        v89 = [objc_opt_self() systemImageNamed_];

        [v87 setImage_];
      }

      v90 = objc_opt_self();
      v49 = v24;
      v91 = &selRef_systemBlueColor;
      if ((v85 & 1) == 0)
      {
        v91 = &selRef_secondarySystemFillColor;
      }

      v92 = [v90 *v91];
      [v49 setTintColor_];

      v74 = v28;
      v75 = v84;
      goto LABEL_39;
    }

LABEL_31:
    v84 = v23;
    v85 = sub_1D72646CC();
    goto LABEL_32;
  }

LABEL_44:
  __break(1u);
  return result;
}

void sub_1D68212F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *a4;
    v9 = a4[1];
    v10 = OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_valuesByTemplateKey;
    v11 = Strong;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *&v11[v10];
    *&v11[v10] = 0x8000000000000000;
    sub_1D6D76D20(a1, a2, v8, v9, isUniquelyReferenced_nonNull_native);

    *&v11[v10] = v13;
    swift_endAccess();
    sub_1D681F1CC();
  }
}

void sub_1D6821660(void *a1)
{
  v35 = a1;
  v2 = sub_1D7258C9C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_sections);
  v8 = sub_1D7258DAC();
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v8 >= *(v7 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7 + 104 * v8;
  v10 = *(v9 + 32);
  v11 = *(v9 + 64);
  v39 = *(v9 + 48);
  v40 = v11;
  v38 = v10;
  v12 = *(v9 + 128);
  v13 = *(v9 + 80);
  v14 = *(v9 + 112);
  v42 = *(v9 + 96);
  v43 = v14;
  v41 = v13;
  v44 = v12;
  sub_1D6821B38(&v38, v37);
  v15 = sub_1D7258D9C();
  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v15 >= *(v12 + 16))
  {
LABEL_12:
    __break(1u);
    return;
  }

  v16 = v12 + 24 * v15;
  if (*(v16 + 48) == 1)
  {
    v17 = *(v16 + 32);
    v27 = *(v16 + 40);
    v18 = *(&v38 + 1);
    v31 = v38;
    v30 = *(&v39 + 1);
    v26 = *(&v40 + 1);
    v32 = v2;
    v28 = *(&v42 + 1);
    v29 = *(&v43 + 1);
    v34 = v3;
    v19 = OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_valuesByTemplateKey;
    swift_beginAccess();
    sub_1D6821B94();
    v33 = v17;
    sub_1D6821B94();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v1 + v19);
    *(v1 + v19) = 0x8000000000000000;
    v21 = v17;
    v22 = v27;
    sub_1D6D76D20(v21, v27, v31, v18, isUniquelyReferenced_nonNull_native);

    *(v1 + v19) = v36;
    swift_endAccess();
    sub_1D681F1CC();

    sub_1D6821B9C(&v38);
    v23 = sub_1D7258DAC();
    sub_1D6821C34(&qword_1EC88C728, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
    v24 = v32;
    sub_1D7263B5C();
    v36 = v23;
    sub_1D7263B2C();
    v25 = sub_1D7258C5C();
    (*(v34 + 8))(v6, v24);
    [v35 reloadSections:v25 withRowAnimation:5];
    sub_1D607F09C(v33, v22);
  }

  else
  {
    sub_1D6821B9C(&v38);
  }
}

uint64_t sub_1D6821C34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D6821C7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D6821CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *&v4[v8] = v9;
  v10 = OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_debugFormatService;
  type metadata accessor for DebugFormatService();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *&v4[v10] = v11;
  *&v4[OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_valuesByTemplateKey] = MEMORY[0x1E69E7CC8];
  v12 = OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_tableView;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v4[OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_shouldBecomeFirstResponder] = 1;
  *&v4[OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController____lazy_storage___createBarButtonItem] = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_editor] = a1;
  v13 = OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_editorURL;
  v14 = sub_1D72585BC();
  v51 = *(v14 - 8);
  v52 = v14;
  (*(v51 + 16))(&v4[v13], a2);
  v54 = v4;
  v15 = &v4[OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_selectedTemplate];
  *(v15 + 41) = *(a3 + 41);
  v16 = *(a3 + 32);
  *(v15 + 1) = *(a3 + 16);
  *(v15 + 2) = v16;
  *v15 = *a3;
  v17 = *(a3 + 48);
  v18 = *(v17 + 16);
  if (!v18)
  {

    v21 = MEMORY[0x1E69E7CC0];
LABEL_23:
    *&v54[OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_sections] = v21;
    v58.receiver = v54;
    v58.super_class = ObjectType;
    objc_msgSendSuper2(&v58, sel_initWithNibName_bundle_, 0, 0);
    (*(v51 + 8))(a2, v52);
    return;
  }

  v50 = a2;
  v19 = MEMORY[0x1E69E7CC0];
  v74 = MEMORY[0x1E69E7CC0];

  sub_1D6999428(0, v18, 0);
  if (*(v17 + 16))
  {
    v20 = 0;
    v21 = v74;
    v22 = v17 + 32;
    v23 = 1;
    v56 = v18;
    v57 = v17;
    v55 = v17 + 32;
    while (1)
    {
      v24 = (v22 + 96 * v20);
      v20 = v23;
      v25 = v24[2];
      v26 = v24[3];
      v27 = v24[4];
      v73 = v24[5];
      v28 = v24[1];
      v71[0] = *v24;
      v71[1] = v28;
      v71[3] = v26;
      v72 = v27;
      v71[2] = v25;
      v29 = v73;
      v30 = *(&v73 + 1);
      v31 = v24[3];
      v67 = v24[2];
      v68 = v31;
      v32 = v24[5];
      v69 = v24[4];
      v70 = v32;
      v33 = v24[1];
      v65 = *v24;
      v66 = v33;
      if (*(&v73 + 1))
      {
        sub_1D68222C4(0, &qword_1EC88F290, &type metadata for DebugFormatCreatePackageItem, MEMORY[0x1E69E6F90]);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1D7273AE0;
        *(v34 + 32) = v29;
        *(v34 + 40) = v30;
        *(v34 + 48) = 0;
        sub_1D66F4220(v71, &v59);
      }

      else
      {
        v35 = *(&v72 + 1) ? *(&v72 + 1) : v19;
        v36 = *(v35 + 16);
        if (v36)
        {
          sub_1D66F4220(v71, &v59);
          sub_1D66F4220(v71, &v59);
          *&v59 = v19;

          sub_1D6999448(0, v36, 0);
          v34 = v59;
          v37 = (v35 + 40);
          do
          {
            v39 = *(v37 - 1);
            v38 = *v37;
            *&v59 = v34;
            v41 = *(v34 + 16);
            v40 = *(v34 + 24);

            if (v41 >= v40 >> 1)
            {
              sub_1D6999448((v40 > 1), v41 + 1, 1);
              v34 = v59;
            }

            *(v34 + 16) = v41 + 1;
            v42 = v34 + 24 * v41;
            *(v42 + 32) = v39;
            *(v42 + 40) = v38;
            *(v42 + 48) = 1;
            v37 += 2;
            --v36;
          }

          while (v36);

          sub_1D66F427C(v71);
          v18 = v56;
          v17 = v57;
          v19 = MEMORY[0x1E69E7CC0];
          v22 = v55;
        }

        else
        {
          sub_1D66F4220(v71, &v59);

          v34 = v19;
        }
      }

      v63 = v69;
      v64 = v70;
      v61 = v67;
      v62 = v68;
      v59 = v65;
      v60 = v66;
      v74 = v21;
      v44 = *(v21 + 16);
      v43 = *(v21 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_1D6999428((v43 > 1), v44 + 1, 1);
        v21 = v74;
      }

      *(v21 + 16) = v44 + 1;
      v45 = v21 + 104 * v44;
      v46 = v60;
      *(v45 + 32) = v59;
      *(v45 + 48) = v46;
      v47 = v61;
      v48 = v62;
      v49 = v64;
      *(v45 + 96) = v63;
      *(v45 + 112) = v49;
      *(v45 + 64) = v47;
      *(v45 + 80) = v48;
      *(v45 + 128) = v34;
      if (v20 == v18)
      {
        break;
      }

      v23 = v20 + 1;
      if (v20 >= *(v17 + 16))
      {
        goto LABEL_24;
      }
    }

    a2 = v50;
    goto LABEL_23;
  }

LABEL_24:
  __break(1u);
}

void sub_1D68221B4()
{
  v1 = OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_debugFormatService;
  type metadata accessor for DebugFormatService();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v0 + v3) = v4;
  *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_valuesByTemplateKey) = MEMORY[0x1E69E7CC8];
  v5 = OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_tableView;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_shouldBecomeFirstResponder) = 1;
  *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController____lazy_storage___createBarButtonItem) = 0;
  sub_1D726402C();
  __break(1u);
}

void sub_1D68222C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

char *sub_1D6822314(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC8NewsFeed20DebugFormatBezelView_scale] = 0x3FF0000000000000;
  v10 = OBJC_IVAR____TtC8NewsFeed20DebugFormatBezelView_bezelLayer;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v11 = OBJC_IVAR____TtC8NewsFeed20DebugFormatBezelView_layerDelegate;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for DebugFormatBezelView.NonAnimatingLayerDelegate()) init];
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC8NewsFeed20DebugFormatBezelView_bezelLayer;
  v14 = *&v12[OBJC_IVAR____TtC8NewsFeed20DebugFormatBezelView_bezelLayer];
  v15 = v12;
  [v14 setLineWidth_];
  v16 = *&v12[v13];
  v17 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v18 = v16;
  v19 = [v17 initWithRed:0.101960784 green:0.0980392157 blue:0.101960784 alpha:1.0];
  v20 = [v19 CGColor];

  [v18 setStrokeColor_];
  v21 = [v15 layer];

  [v21 addSublayer_];
  [*&v12[v13] setDelegate_];

  return v15;
}

void sub_1D68225D8()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatBezelView_bezelLayer];
  [v1 lineWidth];
  v3 = v2 * -0.5;
  [v0 bounds];
  [v1 setFrame_];
  Mutable = CGPathCreateMutable();
  [v1 bounds];
  CGRectGetMinY(v16);
  v10 = 0x3FF0000000000000;
  v11 = 0;
  v12 = 0;
  v13 = 0x3FF0000000000000;
  v14 = 0;
  v15 = 0;
  sub_1D7262F0C();
  [v1 bounds];
  CGRectGetMaxY(v17);
  sub_1D7262F2C();
  [v1 bounds];
  CGRectGetMaxX(v18);
  [v1 bounds];
  CGRectGetMinY(v19);
  sub_1D7262F0C();
  [v1 bounds];
  CGRectGetMaxX(v20);
  [v1 bounds];
  CGRectGetMaxY(v21);
  sub_1D7262F2C();
  [v1 setPath_];
}

id sub_1D6822820()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugFormatBezelView.NonAnimatingLayerDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1D6822908(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

unint64_t sub_1D6822A50@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6825064(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D6822A80(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000657275;
  v4 = 0x74617265706D6574;
  v5 = 0xED000065646F436ELL;
  v6 = 0x6F697469646E6F63;
  if (v2 != 5)
  {
    v6 = 0xD000000000000013;
    v5 = 0x80000001D73BACA0;
  }

  v7 = 0x80000001D73BAC60;
  if (v2 == 3)
  {
    v8 = 0xD000000000000014;
  }

  else
  {
    v8 = 0x6F697469646E6F63;
  }

  if (v2 != 3)
  {
    v7 = 0xE90000000000006ELL;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEF65727574617265;
  v10 = 0x706D655468676968;
  if (v2 != 1)
  {
    v10 = 0x65706D6554776F6CLL;
    v9 = 0xEE00657275746172;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1D6822C84@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v271 = a2;
  v268 = a3;
  v272 = a4;
  v273 = type metadata accessor for FeedWeather(0);
  MEMORY[0x1EEE9AC00](v273, v5);
  v248 = &v246 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v257 = &v246 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v254 = &v246 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v266 = &v246 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v265 = &v246 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v263 = &v246 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v261 = &v246 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v259 = &v246 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v247 = &v246 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v253 = &v246 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v251 = &v246 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v264 = &v246 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v250 = &v246 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v249 = &v246 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v256 = &v246 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  v255 = &v246 - v51;
  MEMORY[0x1EEE9AC00](v52, v53);
  v252 = &v246 - v54;
  MEMORY[0x1EEE9AC00](v55, v56);
  v267 = &v246 - v57;
  MEMORY[0x1EEE9AC00](v58, v59);
  v262 = &v246 - v60;
  MEMORY[0x1EEE9AC00](v61, v62);
  v260 = &v246 - v63;
  MEMORY[0x1EEE9AC00](v64, v65);
  v258 = &v246 - v66;
  MEMORY[0x1EEE9AC00](v67, v68);
  v246 = &v246 - v69;
  MEMORY[0x1EEE9AC00](v70, v71);
  v73 = &v246 - v72;
  MEMORY[0x1EEE9AC00](v74, v75);
  v77 = &v246 - v76;
  MEMORY[0x1EEE9AC00](v78, v79);
  v81 = &v246 - v80;
  MEMORY[0x1EEE9AC00](v82, v83);
  v85 = &v246 - v84;
  MEMORY[0x1EEE9AC00](v86, v87);
  v89 = &v246 - v88;
  MEMORY[0x1EEE9AC00](v90, v91);
  v93 = &v246 - v92;
  MEMORY[0x1EEE9AC00](v94, v95);
  v97 = &v246 - v96;
  MEMORY[0x1EEE9AC00](v98, v99);
  v101 = &v246 - v100;
  v102 = *a1;
  sub_1D67ED888(0);
  v269 = v103;
  v104 = *(type metadata accessor for FormatInspectionItem(0) - 8);
  v274 = *(v104 + 72);
  v105 = *(v104 + 80);
  if (v102 <= 2)
  {
    v259 = v101;
    v261 = v73;
    v263 = v97;
    v265 = v93;
    v266 = v89;
    v248 = v85;
    v254 = v81;
    v119 = v267;
    v257 = v77;
    if (v102)
    {
      v120 = v271;
      if (v102 == 1)
      {
        v121 = (v105 + 32) & ~v105;
        v122 = swift_allocObject();
        *(v122 + 16) = xmmword_1D727E3C0;
        v123 = (v122 + v121);
        v124 = v261;
        sub_1D60B1278(v120, v261);
        v125 = *(v273 + 36);
        v126 = type metadata accessor for FeedWeather.Temperature(0);
        v127 = v270;
        v128 = sub_1D6895B0C(v124 + v125 + *(v126 + 20), v268, 1, 0, 0);
        if (v127)
        {

          v130 = 0;
          v131 = 0;
        }

        else
        {
          v130 = v128;
          v131 = v129;
        }

        v187 = v258;
        sub_1D711F844(0xD000000000000019, 0x80000001D73D7560, v130, v131, v123);
        sub_1D68250B0(v261, type metadata accessor for FeedWeather);
        v188 = v246;
        sub_1D60B1278(v120, v246);
        v193 = sub_1D6895B0C(v188 + *(v273 + 36) + *(v126 + 20), v268, 1, 0, 0x40u);
        sub_1D711F844(0xD000000000000024, 0x80000001D73D7580, v193, v194, &v123[v274]);
        sub_1D68250B0(v188, type metadata accessor for FeedWeather);
        sub_1D60B1278(v120, v187);
        v195 = v268;
        v197 = sub_1D6895B0C(v187 + *(v273 + 36) + *(v126 + 20), v268, 0, 0, 0x40u);
        sub_1D711F844(0xD000000000000024, 0x80000001D73D75B0, v197, v198, &v123[2 * v274]);
        sub_1D68250B0(v258, type metadata accessor for FeedWeather);
        v199 = v260;
        sub_1D60B1278(v120, v260);
        v203 = sub_1D6895B0C(v199 + *(v273 + 36) + *(v126 + 20), v195, 1, 0, 0x80u);
        sub_1D711F844(0xD000000000000027, 0x80000001D73D75E0, v203, v204, &v123[3 * v274]);
        sub_1D68250B0(v260, type metadata accessor for FeedWeather);
        v205 = v262;
        sub_1D60B1278(v120, v262);
        v209 = sub_1D6895B0C(v205 + *(v273 + 36) + *(v126 + 20), v195, 0, 0, 0x80u);
        sub_1D711F844(0xD000000000000027, 0x80000001D73D7610, v209, v210, &v123[4 * v274]);
        sub_1D68250B0(v262, type metadata accessor for FeedWeather);
        sub_1D60B1278(v120, v119);
        v213 = sub_1D6895B0C(v119 + *(v273 + 36) + *(v126 + 20), v195, 1, 0, 0xC0u);
        sub_1D711F844(0xD000000000000023, 0x80000001D73D7640, v213, v214, &v123[5 * v274]);
        sub_1D68250B0(v119, type metadata accessor for FeedWeather);
        v215 = v120;
        v216 = v252;
        sub_1D60B1278(v215, v252);
        v217 = sub_1D6895B0C(v216 + *(v273 + 36) + *(v126 + 20), v195, 0, 0, 0xC0u);
        v132 = v272;
        sub_1D711F844(0xD000000000000023, 0x80000001D73D7670, v217, v220, &v123[6 * v274]);
        v134 = v216;
      }

      else
      {
        v151 = (v105 + 32) & ~v105;
        v152 = swift_allocObject();
        *(v152 + 16) = xmmword_1D727E3C0;
        v269 = v152;
        v153 = (v152 + v151);
        v154 = v255;
        sub_1D60B1278(v120, v255);
        v155 = *(v273 + 36);
        v156 = type metadata accessor for FeedWeather.Temperature(0);
        v157 = v268;
        v158 = v270;
        v159 = sub_1D6895B0C(v154 + v155 + *(v156 + 24), v268, 1, 0, 0);
        if (v158)
        {

          v161 = 0;
          v162 = 0;
        }

        else
        {
          v161 = v159;
          v162 = v160;
        }

        v189 = v250;
        v190 = v249;
        v191 = v256;
        sub_1D711F844(0xD000000000000018, 0x80000001D73D7420, v161, v162, v153);
        sub_1D68250B0(v255, type metadata accessor for FeedWeather);
        sub_1D60B1278(v120, v191);
        v192 = sub_1D6895B0C(v191 + *(v273 + 36) + *(v156 + 24), v157, 1, 0, 0x40u);
        sub_1D711F844(0xD000000000000023, 0x80000001D73D7440, v192, v196, &v153[v274]);
        sub_1D68250B0(v256, type metadata accessor for FeedWeather);
        sub_1D60B1278(v120, v190);
        v200 = sub_1D6895B0C(v190 + *(v273 + 36) + *(v156 + 24), v157, 0, 0, 0x40u);
        v201 = v251;
        sub_1D711F844(0xD000000000000023, 0x80000001D73D7470, v200, v202, &v153[2 * v274]);
        sub_1D68250B0(v190, type metadata accessor for FeedWeather);
        sub_1D60B1278(v120, v189);
        v206 = sub_1D6895B0C(v189 + *(v273 + 36) + *(v156 + 24), v157, 1, 0, 0x80u);
        sub_1D711F844(0xD000000000000026, 0x80000001D73D74A0, v206, v207, &v153[3 * v274]);
        sub_1D68250B0(v189, type metadata accessor for FeedWeather);
        v208 = v264;
        sub_1D60B1278(v120, v264);
        v211 = sub_1D6895B0C(v208 + *(v273 + 36) + *(v156 + 24), v157, 0, 0, 0x80u);
        sub_1D711F844(0xD000000000000026, 0x80000001D73D74D0, v211, v212, &v153[4 * v274]);
        sub_1D68250B0(v264, type metadata accessor for FeedWeather);
        sub_1D60B1278(v120, v201);
        v218 = sub_1D6895B0C(v201 + *(v273 + 36) + *(v156 + 24), v157, 1, 0, 0xC0u);
        v134 = v253;
        sub_1D711F844(0xD000000000000022, 0x80000001D73D7500, v218, v219, &v153[5 * v274]);
        sub_1D68250B0(v201, type metadata accessor for FeedWeather);
        sub_1D60B1278(v120, v134);
        v221 = sub_1D6895B0C(v134 + *(v273 + 36) + *(v156 + 24), v157, 0, 0, 0xC0u);
        v122 = v269;
        sub_1D711F844(0xD000000000000022, 0x80000001D73D7530, v221, v222, &v153[6 * v274]);
        v132 = v272;
      }
    }

    else
    {
      v141 = (v105 + 32) & ~v105;
      v122 = swift_allocObject();
      *(v122 + 16) = xmmword_1D727E3C0;
      v142 = (v122 + v141);
      v143 = v271;
      v144 = v259;
      sub_1D60B1278(v271, v259);
      v145 = v268;
      v146 = v270;
      v147 = sub_1D6895B0C(v144 + *(v273 + 36), v268, 1, 0, 0);
      if (v146)
      {

        v149 = 0;
        v150 = 0;
      }

      else
      {
        v149 = v147;
        v150 = v148;
      }

      v170 = v265;
      v171 = v263;
      sub_1D711F844(0xD000000000000014, 0x80000001D73D76A0, v149, v150, v142);
      sub_1D68250B0(v259, type metadata accessor for FeedWeather);
      sub_1D60B1278(v143, v171);
      v172 = sub_1D6895B0C(v171 + *(v273 + 36), v145, 1, 0, 0x40u);
      sub_1D711F844(0xD00000000000001FLL, 0x80000001D73D76C0, v172, v173, &v142[v274]);
      sub_1D68250B0(v263, type metadata accessor for FeedWeather);
      sub_1D60B1278(v143, v170);
      v174 = sub_1D6895B0C(v170 + *(v273 + 36), v145, 0, 0, 0x40u);
      sub_1D711F844(0xD00000000000001FLL, 0x80000001D73D76E0, v174, v175, &v142[2 * v274]);
      sub_1D68250B0(v265, type metadata accessor for FeedWeather);
      v176 = v266;
      sub_1D60B1278(v143, v266);
      v177 = sub_1D6895B0C(v176 + *(v273 + 36), v145, 1, 0, 0x80u);
      v178 = v254;
      sub_1D711F844(0xD000000000000022, 0x80000001D73D7700, v177, v179, &v142[3 * v274]);
      sub_1D68250B0(v266, type metadata accessor for FeedWeather);
      v180 = v248;
      sub_1D60B1278(v143, v248);
      v181 = sub_1D6895B0C(v180 + *(v273 + 36), v145, 0, 0, 0x80u);
      sub_1D711F844(0xD000000000000022, 0x80000001D73D7730, v181, v182, &v142[4 * v274]);
      sub_1D68250B0(v180, type metadata accessor for FeedWeather);
      sub_1D60B1278(v143, v178);
      v183 = sub_1D6895B0C(v178 + *(v273 + 36), v145, 1, 0, 0xC0u);
      sub_1D711F844(0xD00000000000001ELL, 0x80000001D73D7760, v183, v184, &v142[5 * v274]);
      sub_1D68250B0(v178, type metadata accessor for FeedWeather);
      v134 = v257;
      sub_1D60B1278(v143, v257);
      v185 = sub_1D6895B0C(v134 + *(v273 + 36), v145, 0, 0, 0xC0u);
      v132 = v272;
      sub_1D711F844(0xD00000000000001ELL, 0x80000001D73D7780, v185, v186, &v142[6 * v274]);
    }
  }

  else if (v102 > 4)
  {
    v132 = v272;
    if (v102 == 5)
    {
      v133 = (v105 + 32) & ~v105;
      v122 = swift_allocObject();
      *(v122 + 16) = xmmword_1D7273AE0;
      v134 = v257;
      sub_1D60B1278(v271, v257);
      v275 = *(v134 + 32);
      v135 = FormatWeatherConditionCode.rawValue.getter();
      v137 = v136;
      v138 = 0x6F697469646E6F43;
      v139 = 0xEE0065646F43206ELL;
      v140 = (v122 + v133);
    }

    else
    {
      v166 = (v105 + 32) & ~v105;
      v122 = swift_allocObject();
      *(v122 + 16) = xmmword_1D7273AE0;
      v134 = v248;
      sub_1D60B1278(v271, v248);
      v167 = (v134 + *(v273 + 40));
      if (v167[1])
      {
        v168 = *v167;
        v169 = v167[1];
      }

      else
      {
        v168 = 0;
        v169 = 0xE000000000000000;
      }

      v138 = 0xD000000000000014;
      v140 = (v122 + v166);
      v139 = 0x80000001D73D72C0;
      v135 = v168;
      v137 = v169;
    }

    sub_1D711F844(v138, v139, v135, v137, v140);
  }

  else if (v102 == 3)
  {
    v106 = (v105 + 32) & ~v105;
    v107 = swift_allocObject();
    *(v107 + 16) = xmmword_1D727E3C0;
    v269 = v107;
    v108 = (v107 + v106);
    v109 = v271;
    v110 = v247;
    sub_1D60B1278(v271, v247);
    v111 = *(v273 + 36);
    v112 = type metadata accessor for FeedWeather.Temperature(0);
    v113 = v268;
    v114 = v270;
    v115 = sub_1D6895B0C(v110 + v111 + *(v112 + 28), v268, 1, 0, 0);
    if (v114)
    {

      v117 = 0;
      v118 = 0;
    }

    else
    {
      v117 = v115;
      v118 = v116;
    }

    v223 = v254;
    sub_1D711F844(0xD00000000000001FLL, 0x80000001D73D72E0, v117, v118, v108);
    sub_1D68250B0(v110, type metadata accessor for FeedWeather);
    v224 = v259;
    sub_1D60B1278(v109, v259);
    v225 = sub_1D6895B0C(v224 + *(v273 + 36) + *(v112 + 28), v113, 1, 0, 0x40u);
    sub_1D711F844(0xD00000000000002ALL, 0x80000001D73D7300, v225, v226, &v108[v274]);
    sub_1D68250B0(v259, type metadata accessor for FeedWeather);
    v227 = v261;
    sub_1D60B1278(v109, v261);
    v228 = sub_1D6895B0C(v227 + *(v273 + 36) + *(v112 + 28), v113, 0, 0, 0x40u);
    v229 = v108;
    sub_1D711F844(0xD00000000000002ALL, 0x80000001D73D7330, v228, v230, &v108[2 * v274]);
    sub_1D68250B0(v261, type metadata accessor for FeedWeather);
    v231 = v263;
    sub_1D60B1278(v109, v263);
    v232 = sub_1D6895B0C(v231 + *(v273 + 36) + *(v112 + 28), v113, 1, 0, 0x80u);
    v233 = v269;
    v234 = v223;
    sub_1D711F844(0xD00000000000002DLL, 0x80000001D73D7360, v232, v235, &v229[3 * v274]);
    sub_1D68250B0(v263, type metadata accessor for FeedWeather);
    v236 = v265;
    sub_1D60B1278(v109, v265);
    v237 = sub_1D6895B0C(v236 + *(v273 + 36) + *(v112 + 28), v113, 0, 0, 0x80u);
    v122 = v233;
    v238 = v229;
    sub_1D711F844(0xD00000000000002DLL, 0x80000001D73D7390, v237, v239, &v229[4 * v274]);
    sub_1D68250B0(v265, type metadata accessor for FeedWeather);
    v240 = v266;
    sub_1D60B1278(v109, v266);
    v241 = sub_1D6895B0C(v240 + *(v273 + 36) + *(v112 + 28), v113, 1, 0, 0xC0u);
    sub_1D711F844(0xD000000000000029, 0x80000001D73D73C0, v241, v242, &v238[5 * v274]);
    sub_1D68250B0(v266, type metadata accessor for FeedWeather);
    sub_1D60B1278(v109, v234);
    v243 = sub_1D6895B0C(v234 + *(v273 + 36) + *(v112 + 28), v113, 0, 0, 0xC0u);
    v132 = v272;
    sub_1D711F844(0xD000000000000029, 0x80000001D73D73F0, v243, v244, &v238[6 * v274]);
    v134 = v234;
  }

  else
  {
    v163 = (v105 + 32) & ~v105;
    v122 = swift_allocObject();
    *(v122 + 16) = xmmword_1D7273AE0;
    v134 = v257;
    sub_1D60B1278(v271, v257);
    v165 = *(v134 + 16);
    v164 = *(v134 + 24);

    sub_1D711F844(0x6F697469646E6F43, 0xE90000000000006ELL, v165, v164, (v122 + v163));
    v132 = v272;
  }

  result = sub_1D68250B0(v134, type metadata accessor for FeedWeather);
  *v132 = v122;
  return result;
}

BOOL _s8NewsFeed20FormatWeatherBindingV4TextO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 17);
  v31[0] = *a1;
  v31[1] = v2;
  v32 = v4;
  v33 = v5;
  v34 = v7;
  v35 = v6;
  v36 = v8;
  v37 = v9;
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 != 3)
      {
        if (v2 | v3 || v4)
        {
          if (v3 != 1 || v2 || v4)
          {
            if (v9 != 4 || v7 != 2 || v6)
            {
              goto LABEL_38;
            }
          }

          else if (v9 != 4 || v7 != 1 || v6)
          {
            goto LABEL_38;
          }
        }

        else if (v9 != 4 || v6 | v7)
        {
          goto LABEL_38;
        }

        if (!v8)
        {
          sub_1D68250B0(v31, sub_1D6825110);
          return 1;
        }

        goto LABEL_38;
      }

      if (v9 == 3)
      {
        if (v4 > 0xFD)
        {
          sub_1D5E1DCA8(v7, v6, v8, 3u);
          sub_1D5E1DCA8(v3, v2, v4, 3u);
          sub_1D5E1DCA8(v3, v2, v4, 3u);
          v10 = v7;
          v11 = v6;
          v12 = v8;
          v13 = 3;
          goto LABEL_22;
        }

        v28 = v3;
        v29 = v2;
        v30 = v4;
        if (v8 > 0xFD)
        {
          sub_1D5E1DCA8(v7, v6, v8, 3u);
          sub_1D5E1DCA8(v3, v2, v4, 3u);
          sub_1D5E1DCA8(v3, v2, v4, 3u);
          v15 = v7;
          v16 = v6;
          v17 = v8;
          v18 = 3;
          goto LABEL_45;
        }

        v25 = v7;
        v26 = v6;
        v27 = v8;
        sub_1D5E1DCA8(v7, v6, v8, 3u);
        sub_1D5E1DCA8(v3, v2, v4, 3u);
        sub_1D5E1DCA8(v3, v2, v4, 3u);
        v19 = v7;
        v20 = v6;
        v21 = v8;
        v22 = 3;
        goto LABEL_54;
      }

LABEL_38:
      sub_1D5E1DCA8(v3, v2, v4, v5);
      sub_1D5E1DCA8(v7, v6, v8, v9);
      sub_1D68250B0(v31, sub_1D6825110);
      return 0;
    }

    if (v9 != 2)
    {
      goto LABEL_38;
    }

    if (v4 <= 0xFD)
    {
      v28 = v3;
      v29 = v2;
      v30 = v4;
      if (v8 > 0xFD)
      {
        sub_1D5E1DCA8(v7, v6, v8, 2u);
        sub_1D5E1DCA8(v3, v2, v4, 2u);
        sub_1D5E1DCA8(v3, v2, v4, 2u);
        v15 = v7;
        v16 = v6;
        v17 = v8;
        v18 = 2;
LABEL_45:
        sub_1D5E1DCA8(v15, v16, v17, v18);
        sub_1D5E1DCBC(v3, v2, v4);
        sub_1D68250B0(v31, sub_1D6825110);
        sub_1D5E1E15C(v3, v2, v4);
LABEL_46:
        sub_1D5E1E148(v3, v2, v4);
        sub_1D5E1E148(v7, v6, v8);
        return 0;
      }

      v25 = v7;
      v26 = v6;
      v27 = v8;
      sub_1D5E1DCA8(v7, v6, v8, 2u);
      sub_1D5E1DCA8(v3, v2, v4, 2u);
      sub_1D5E1DCA8(v3, v2, v4, 2u);
      v19 = v7;
      v20 = v6;
      v21 = v8;
      v22 = 2;
LABEL_54:
      sub_1D5E1DCA8(v19, v20, v21, v22);
      sub_1D5E1DCBC(v3, v2, v4);
      v24 = _s8NewsFeed17FormatTemperatureO2eeoiySbAC_ACtFZ_0(&v28, &v25);
      sub_1D68250B0(v31, sub_1D6825110);
      sub_1D5E1E15C(v25, v26, v27);
      sub_1D5E1E15C(v28, v29, v30);
      sub_1D5E1E148(v3, v2, v4);
      return (v24 & 1) != 0;
    }

    sub_1D5E1DCA8(v7, v6, v8, 2u);
    sub_1D5E1DCA8(v3, v2, v4, 2u);
    sub_1D5E1DCA8(v3, v2, v4, 2u);
    v10 = v7;
    v11 = v6;
    v12 = v8;
    v13 = 2;
LABEL_22:
    sub_1D5E1DCA8(v10, v11, v12, v13);
    sub_1D68250B0(v31, sub_1D6825110);
    if (v8 > 0xFD)
    {
      sub_1D5E1E148(v3, v2, v4);
      return 1;
    }

    goto LABEL_46;
  }

  if (!v5)
  {
    if (v9)
    {
      goto LABEL_38;
    }

    if (v4 <= 0xFD)
    {
      v28 = v3;
      v29 = v2;
      v30 = v4;
      if (v8 > 0xFD)
      {
        sub_1D5E1DCA8(v7, v6, v8, 0);
        sub_1D5E1DCA8(v3, v2, v4, 0);
        sub_1D5E1DCA8(v3, v2, v4, 0);
        v15 = v7;
        v16 = v6;
        v17 = v8;
        v18 = 0;
        goto LABEL_45;
      }

      v25 = v7;
      v26 = v6;
      v27 = v8;
      sub_1D5E1DCA8(v7, v6, v8, 0);
      sub_1D5E1DCA8(v3, v2, v4, 0);
      sub_1D5E1DCA8(v3, v2, v4, 0);
      v19 = v7;
      v20 = v6;
      v21 = v8;
      v22 = 0;
      goto LABEL_54;
    }

    sub_1D5E1DCA8(v7, v6, v8, 0);
    sub_1D5E1DCA8(v3, v2, v4, 0);
    sub_1D5E1DCA8(v3, v2, v4, 0);
    v10 = v7;
    v11 = v6;
    v12 = v8;
    v13 = 0;
    goto LABEL_22;
  }

  if (v9 != 1)
  {
    goto LABEL_38;
  }

  if (v4 > 0xFD)
  {
    sub_1D5E1DCA8(v7, v6, v8, 1u);
    sub_1D5E1DCA8(v3, v2, v4, 1u);
    sub_1D5E1DCA8(v3, v2, v4, 1u);
    v10 = v7;
    v11 = v6;
    v12 = v8;
    v13 = 1;
    goto LABEL_22;
  }

  v28 = v3;
  v29 = v2;
  v30 = v4;
  if (v8 > 0xFD)
  {
    sub_1D5E1DCA8(v7, v6, v8, 1u);
    sub_1D5E1DCA8(v3, v2, v4, 1u);
    sub_1D5E1DCA8(v3, v2, v4, 1u);
    v15 = v7;
    v16 = v6;
    v17 = v8;
    v18 = 1;
    goto LABEL_45;
  }

  v25 = v7;
  v26 = v6;
  v27 = v8;
  sub_1D5E1DCA8(v7, v6, v8, 1u);
  sub_1D5E1DCA8(v3, v2, v4, 1u);
  sub_1D5E1DCA8(v3, v2, v4, 1u);
  sub_1D5E1DCA8(v7, v6, v8, 1u);
  sub_1D5E1DCBC(v3, v2, v4);
  v23 = _s8NewsFeed17FormatTemperatureO2eeoiySbAC_ACtFZ_0(&v28, &v25);
  sub_1D68250B0(v31, sub_1D6825110);
  sub_1D5E1E15C(v25, v26, v27);
  sub_1D5E1E15C(v28, v29, v30);
  sub_1D5E1E148(v3, v2, v4);
  result = 1;
  if ((v23 & 1) == 0)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D6824DC8(uint64_t a1)
{
  result = sub_1D6824DF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6824DF0()
{
  result = qword_1EC88C758;
  if (!qword_1EC88C758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C758);
  }

  return result;
}

unint64_t sub_1D6824E44(void *a1)
{
  a1[1] = sub_1D6662D80();
  a1[2] = sub_1D6704EA4();
  result = sub_1D6824E7C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6824E7C()
{
  result = qword_1EC88C760;
  if (!qword_1EC88C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C760);
  }

  return result;
}

uint64_t sub_1D6824ED0(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
    *(result + 16) = 0;
  }

  *(result + 17) = a2;
  return result;
}

unint64_t sub_1D6824F10()
{
  result = qword_1EC88C768;
  if (!qword_1EC88C768)
  {
    sub_1D6824F68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C768);
  }

  return result;
}

void sub_1D6824F68()
{
  if (!qword_1EC88C770)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88C770);
    }
  }
}

unint64_t sub_1D6824FBC()
{
  result = qword_1EC88C778;
  if (!qword_1EC88C778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C778);
  }

  return result;
}

unint64_t sub_1D6825010()
{
  result = qword_1EDF0EAC0;
  if (!qword_1EDF0EAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EAC0);
  }

  return result;
}

unint64_t sub_1D6825064(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D68250B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6825110()
{
  if (!qword_1EC88C780)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88C780);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed24DebugPersonalizationItemO(uint64_t a1)
{
  if ((*(a1 + 56) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 56) & 3;
  }
}

uint64_t sub_1D6825188(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D68251C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D6825238()
{
  result = qword_1EC88C788;
  if (!qword_1EC88C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C788);
  }

  return result;
}

uint64_t FeedDatabaseType.hotSwap(group:context:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a3;
  v34 = a1;
  v35 = a2;
  v36 = a5;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = *(AssociatedTypeWitness - 8);
  v6 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v7);
  v38 = &v29 - v8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v29 - v13;
  v30 = a4;
  v31 = &v29 - v13;
  v15 = a4;
  v16 = *(a4 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18, v19);
  v20 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1D725BC0C();
  (*(v16 + 16))(v20, v33, v15);
  (*(v10 + 16))(v14, v34, v9);
  v21 = v39;
  (*(v39 + 16))(v38, v35, AssociatedTypeWitness);
  v22 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v23 = (v17 + v22 + *(v10 + 80)) & ~*(v10 + 80);
  v24 = (v11 + *(v21 + 80) + v23) & ~*(v21 + 80);
  v25 = (v6 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = v36;
  *(v26 + 16) = v30;
  *(v26 + 24) = v27;
  (*(v16 + 32))(v26 + v22, v20);
  (*(v10 + 32))(v26 + v23, v31, v9);
  (*(v39 + 32))(v26 + v24, v38, AssociatedTypeWitness);
  *(v26 + v25) = v37;

  return sub_1D725BA6C();
}

uint64_t sub_1D68256D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = (*(a7 + 88) + **(a7 + 88));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_1D5B64684;

  return v16(a1, a3, a4, a5, a6, a7);
}

uint64_t sub_1D6825824(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v15 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v6 = v15 + *(*(v5 - 8) + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = (v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v1 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D5B64680;

  return sub_1D68256D0(a1, v1 + v15, v1 + v8, v1 + v11, v12, v5, v4);
}

void *FeedDatabase.__allocating_init(log:feedCursorFactory:feedGroupProcessor:lazyDatabase:referenceService:saveJournalEntries:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  swift_allocObject();
  v14 = sub_1D5B8DC0C(a1, a2, a3, a4, a5, a6);

  (*(*(*(v7 + 88) - 8) + 8))(a3);

  swift_unknownObjectRelease();
  return v14;
}

void sub_1D6825C10(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *a1;
  os_unfair_lock_lock((*(v2 + *(*v2 + 200)) + 16));
  v8 = *(*v2 + 208);
  if (*(v2 + v8) == 1)
  {
    *(v2 + v8) = 0;
    sub_1D72596FC();
    sub_1D72596DC();
    if (qword_1EDF18770 != -1)
    {
      swift_once();
    }

    sub_1D72596CC();

    if (v22 == 1)
    {
      v10 = FeedCursorContainer.rootCursorContainer.getter(a2, *(v7 + 80), *(v7 + 88), v9);
      v11 = sub_1D5BFB900(v10);
      v13 = v12;

      v14 = v3[2];
      sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1D7273AE0;
      *(v15 + 56) = MEMORY[0x1E69E6158];
      *(v15 + 64) = sub_1D5B7E2C0();
      *(v15 + 32) = v11;
      *(v15 + 40) = v13;

      v16 = sub_1D7262EDC();
      sub_1D725C30C("Feed database scheduling cleanup against root cursor %{public}@", 63, 2, &dword_1D5B42000, v14, v16, v15);

      v17 = swift_allocObject();
      swift_weakInit();
      v18 = swift_allocObject();
      *(v18 + 16) = *(v6 + 80);
      *(v18 + 24) = *(v6 + 88);
      *(v18 + 32) = *(v6 + 96);
      *(v18 + 48) = *(v6 + 112);
      *(v18 + 56) = *(v6 + 120);
      *(v18 + 72) = *(v6 + 136);
      *(v18 + 80) = v17;
      *(v18 + 88) = v11;
      *(v18 + 96) = v13;
      *(v18 + 104) = a1;

      sub_1D6D114D8(sub_1D6837168, v18);
    }

    else
    {
      v20 = v2[2];
      v21 = sub_1D7262EDC();
      sub_1D725C30C("Feed database cleanup disabled by settings", 42, 2, &dword_1D5B42000, v20, v21, MEMORY[0x1E69E7CC0]);
    }

    os_unfair_lock_unlock((*(v3 + *(*v3 + 200)) + 16));
  }

  else
  {
    v19 = (*(v2 + *(*v2 + 200)) + 16);

    os_unfair_lock_unlock(v19);
  }
}

void sub_1D6825FAC(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v58 = a7;
  v56 = a5;
  v77 = a3;
  v18 = *a3;
  swift_getAssociatedTypeWitness();
  v59 = a8;
  v57 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v20);
  v64 = &v54 - v21;
  v22 = swift_checkMetadataState();
  v75 = *(v22 - 8);
  v23 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v22, v24);
  v78 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v66 = &v54 - v27;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v30 = FeedServiceFetchResult.groups.getter(a2, *(v18 + 80), *(v18 + 88));
    if (sub_1D726279C())
    {
      v31 = v22;
      v55 = v23;
      v32 = 0;
      v71 = (v75 + 16);
      v69 = (v75 + 32);
      v62 = AssociatedConformanceWitness + 64;
      v61 = (v19 + 8);
      v68 = (v75 + 8);
      v60 = xmmword_1D7279970;
      v33 = v78;
      v34 = v66;
      v76 = v31;
      v63 = v29;
      v70 = v30;
      do
      {
        v48 = sub_1D726277C();
        sub_1D726271C();
        if (v48)
        {
          (*(v75 + 16))(v34, v30 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v32, v31);
          v49 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            goto LABEL_19;
          }
        }

        else
        {
          v53 = sub_1D7263DBC();
          if (v55 != 8)
          {
            __break(1u);
            return;
          }

          v80 = v53;
          (*v71)(v34, &v80, v31);
          swift_unknownObjectRelease();
          v49 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
LABEL_19:
            __break(1u);
            break;
          }
        }

        v79 = v49;
        (*v69)(v33, v34, v31);
        v50 = v13;
        sub_1D68266A4(v77, v33, a4);
        if (!v13)
        {
          (*v68)(v33, v31);
          v13 = 0;
          goto LABEL_6;
        }

        v13 = 0;
        v83 = v50;
        v51 = v50;
        v52 = sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
        if (swift_dynamicCast())
        {
          if (v82 == 7 && v80 == 3 && !v81)
          {
            (*v68)(v33, v31);

            goto LABEL_6;
          }

          sub_1D6836900(v80, v81, v82);
        }

        v74 = *(v29 + 16);
        v73 = sub_1D7262EBC();
        sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v35 = swift_allocObject();
        *(v35 + 16) = v60;
        v80 = 0;
        v81 = 0xE000000000000000;
        v36 = *(AssociatedConformanceWitness + 64);
        v37 = v64;
        v72 = v52;
        v36(v31, AssociatedConformanceWitness);
        v38 = AssociatedTypeWitness;
        sub_1D726465C();
        (*v61)(v37, v38);
        v39 = a4;
        v40 = v80;
        v41 = v81;
        *(v35 + 56) = MEMORY[0x1E69E6158];
        v42 = sub_1D5B7E2C0();
        *(v35 + 64) = v42;
        *(v35 + 32) = v40;
        *(v35 + 40) = v41;
        a4 = v39;
        v29 = v63;
        v33 = v78;
        v43 = sub_1D725AA4C();
        v44 = MEMORY[0x1E69E6158];
        *(v35 + 96) = MEMORY[0x1E69E6158];
        *(v35 + 104) = v42;
        *(v35 + 72) = v43;
        *(v35 + 80) = v45;
        v80 = 0;
        v81 = 0xE000000000000000;
        v83 = v50;
        sub_1D7263F9C();
        v46 = v80;
        v47 = v81;
        *(v35 + 136) = v44;
        *(v35 + 144) = v42;
        v13 = 0;
        v31 = v76;
        *(v35 + 112) = v46;
        *(v35 + 120) = v47;
        sub_1D725C30C("Feed database failed to write group to cache, kind=%{public}@ identifier=%{public}@, error=%{public}@", 101, 2, &dword_1D5B42000, v74, v73, v35);
        v34 = v66;

        (*v68)(v33, v31);
LABEL_6:
        v30 = v70;
        ++v32;
      }

      while (v79 != sub_1D726279C());
    }

    sub_1D6836D34(v77, a4, v56, v57, v58, v59, a9, a10);
  }
}

void sub_1D68266A4(void *a1, uint64_t a2, void *a3)
{
  v122 = a2;
  v4 = v3;
  v120 = *v3;
  v7 = v120;
  v8 = *a1;
  sub_1D6836FE8(0);
  v111 = v9;
  v108 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v112 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v8 + 80);
  v114 = a1;
  v14 = type metadata accessor for FeedCursorGroup(255, v12, *(v8 + 88), v13);
  v15 = sub_1D726393C();
  v116 = *(v15 - 8);
  v117 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v99 - v17;
  v123 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v115 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v118 = &v99 - v24;
  v119 = a3;
  *&v137[0] = *(a3 + qword_1EDFFCF40);
  v25 = sub_1D72627FC();

  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1DA6F95B0](&v139, v25, WitnessTable);
  *&v137[0] = v139;
  v124 = v7[10];
  v110 = *(v120 + 88);
  v125 = v110;
  v109 = *(v120 + 104);
  v126 = v109;
  v127 = v7[15];
  v120 = v7[16];
  v128 = v120;
  v113 = v4;
  AssociatedTypeWitness = v7[17];
  v129 = AssociatedTypeWitness;
  v130 = v122;
  v28 = v14;
  sub_1D72640CC();
  swift_getWitnessTable();
  v29 = v121;
  sub_1D726246C();
  v30 = v123;

  if (v30[6](v18, 1, v14) == 1)
  {
    (*(v116 + 8))(v18, v117);
    return;
  }

  v31 = v118;
  v30[4](v118, v18, v14);
  v32 = v115;
  v30[2](v115, v31, v14);
  v33 = v119;

  sub_1D602C3F0(v34, v32, AssociatedTypeWitness, v147);
  if (v29)
  {
    goto LABEL_4;
  }

  sub_1D725C6CC();
  v141 = v147[2];
  v142 = v147[3];
  v143 = v147[4];
  v144 = v147[5];
  v139 = v147[0];
  v140 = v147[1];
  sub_1D725C67C();

  if (*(v113 + *(*v113 + 184)) != 1)
  {
LABEL_28:
    sub_1D5BA705C(v147);
LABEL_4:
    (v30[1])(v31, v28);
    return;
  }

  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EDF18740 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    sub_1D72596CC();

    if (v139 != 1)
    {
      goto LABEL_28;
    }

    v121 = AssociatedTypeWitness;
    v35 = (v33 + *(*v33 + 240));
    v36 = v35[1];
    v37 = FeedCursorGroup.identifier.getter(v28);
    if (!*(v36 + 16))
    {
      sub_1D5BA705C(v147);

LABEL_31:
      (v30[1])(v118, v28);
      return;
    }

    v39 = sub_1D5B69D90(v37, v38);
    v41 = v40;

    if ((v41 & 1) == 0)
    {
      sub_1D5BA705C(v147);
      v30 = v123;
      goto LABEL_31;
    }

    v42 = (*(v36 + 56) + 24 * v39);
    v43 = v42[1];
    v117 = *v42;

    v116 = v43;
    sub_1D5C07390(v43);
    v44 = CACurrentMediaTime();
    v107 = v113[2];
    sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v106 = v45;
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1D7270C10;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v104 = *(*(swift_getAssociatedConformanceWitness() + 8) + 24);
    v105 = AssociatedTypeWitness;
    v47 = sub_1D725AA4C();
    v49 = v48;
    v50 = MEMORY[0x1E69E6158];
    *(v46 + 56) = MEMORY[0x1E69E6158];
    v51 = sub_1D5B7E2C0();
    *(v46 + 32) = v47;
    *(v46 + 40) = v49;
    v53 = v119[2];
    v52 = v119[3];
    *(v46 + 96) = v50;
    *(v46 + 104) = v51;
    v102 = v52;
    v103 = v51;
    *(v46 + 64) = v51;
    *(v46 + 72) = v53;
    v101 = v53;
    *(v46 + 80) = v52;

    v54 = sub_1D7262EDC();
    sub_1D725C30C("Feed database will persist journal entries, group=%{public}@, cursor=%{public}@", 79, 2, &dword_1D5B42000, v107, v54, v46);

    v55 = v35[2];
    v56 = v118;
    v57 = FeedCursorGroup.identifier.getter(v28);
    if (!*(v55 + 16))
    {

      goto LABEL_33;
    }

    v59 = sub_1D5B69D90(v57, v58);
    v61 = v60;
    v56 = v118;

    if ((v61 & 1) == 0)
    {
      goto LABEL_33;
    }

    v100 = v28;
    v31 = *(*(v55 + 56) + 8 * v59);
    v62 = *v35;
    sub_1D5BA4E90(0, &qword_1EDF05270, &type metadata for FeedJournalEntry, MEMORY[0x1E69E62F8]);
    v64 = v63;
    v65 = sub_1D5B9AD14(&unk_1EDF05260, &qword_1EDF05270, &type metadata for FeedJournalEntry, MEMORY[0x1E69E6340]);
    v113 = v62;
    *&v137[0] = v62;
    v30 = v112;
    *&v110 = v64;
    *&v109 = v65;
    sub_1D7262C0C();
    v33 = (v31 - 1);
    if (!__OFSUB__(v31, 1))
    {
      break;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }

  v115 = (v108 + 8);
  v28 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    *&v131[0] = v33;
    v66 = v111;
    sub_1D725AD8C();
    (*v115)(v30, v66);
    v67 = v139;
    if (!v139)
    {
      break;
    }

    if (!*(v139 + 16))
    {
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v31 = *(&v139 + 1);
    v68 = v140;
    sub_1D5C0C678(v139 + 32, &v139);
    sub_1D5C034F0(&v146, v137);
    sub_1D5C074F4(&v139);
    v131[2] = v137[2];
    v131[3] = v137[3];
    v132 = v138;
    v131[0] = v137[0];
    v131[1] = v137[1];
    if (v138 >= 3u)
    {
      if (v138 - 4 < 3)
      {
        sub_1D5BC3420(v131);
        v134 = 0u;
        v135 = 0u;
        v136 = 0;
        sub_1D68370E0(&v134);
        goto LABEL_21;
      }
    }

    sub_1D5B63F14(v131, v133);
    sub_1D5B63F14(v133, &v134);
    v69 = *(&v135 + 1);
    sub_1D68370E0(&v134);
    if (v69)
    {
      sub_1D5FC4EA8(v67, v31);
      break;
    }

LABEL_21:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1D5C073A0(0, *(v28 + 2) + 1, 1, v28);
    }

    AssociatedTypeWitness = *(v28 + 2);
    v70 = *(v28 + 3);
    if (AssociatedTypeWitness >= v70 >> 1)
    {
      v28 = sub_1D5C073A0((v70 > 1), AssociatedTypeWitness + 1, 1, v28);
    }

    *(v28 + 2) = AssociatedTypeWitness + 1;
    v71 = &v28[24 * AssociatedTypeWitness];
    *(v71 + 4) = v67;
    *(v71 + 5) = v31;
    *(v71 + 6) = v68;
    v30 = v112;
    *&v137[0] = v113;
    sub_1D7262C0C();
    v72 = __OFSUB__(v33, 1);
    v33 = (v33 - 1);
    if (v72)
    {
      goto LABEL_49;
    }
  }

  v89 = *(v28 + 2);
  if (v89)
  {
    v90 = v28 + 32;
    v112 = v28 + 32;
    while (v89 <= *(v28 + 2))
    {
      --v89;
      v91 = &v90[24 * v89];
      v92 = *v91;
      v115 = *(*v91 + 16);
      if (v115)
      {
        v113 = v89;
        v93 = *(v91 + 1);
        v94 = v92 + 32;

        sub_1D5C07390(v93);

        v95 = 0;
        v96 = v92 + 32;
        do
        {
          if (v95 >= *(v92 + 16))
          {
            goto LABEL_52;
          }

          v97 = v92;
          *&v131[0] = v93;
          sub_1D5C0C678(v94, &v139);
          sub_1D5C0C678(v96, v137);
          v98 = v119;

          sub_1D5C07390(v93);
          sub_1D60E3970(v131, &v139, v137, v98, v121, v148);
          sub_1D725C6CC();
          v143 = v148[4];
          v144 = v148[5];
          v145 = v149;
          v139 = v148[0];
          v140 = v148[1];
          v141 = v148[2];
          v142 = v148[3];
          sub_1D725C67C();
          ++v95;

          sub_1D5FD67C8(v148);
          v96 += 248;
          v92 = v97;
        }

        while (v115 != v95);

        sub_1D5C08648(v93);

        v90 = v112;
        v89 = v113;
      }

      if (!v89)
      {
        goto LABEL_54;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_54:
    while (1)
    {

      v28 = v100;
      v56 = v118;
LABEL_33:
      v73 = v117;
      v74 = *(v117 + 16);
      if (!v74)
      {
        break;
      }

      v75 = v117 + 32;

      v76 = 0;
      v77 = v73 + 32;
      while (v76 < *(v73 + 16))
      {
        v78 = v116;
        *&v131[0] = v116;
        sub_1D5C0C678(v75, &v139);
        sub_1D5C0C678(v77, v137);
        v79 = v119;

        sub_1D5C07390(v78);
        sub_1D60E3970(v131, &v139, v137, v79, v121, v150);
        sub_1D725C6CC();
        v143 = v150[4];
        v144 = v150[5];
        v145 = v151;
        v139 = v150[0];
        v140 = v150[1];
        v141 = v150[2];
        v142 = v150[3];
        sub_1D725C67C();
        ++v76;

        sub_1D5FD67C8(v150);
        v77 += 248;
        v73 = v117;
        if (v74 == v76)
        {

          v56 = v118;
          goto LABEL_38;
        }
      }

LABEL_53:
      __break(1u);
    }

LABEL_38:
    sub_1D5C08648(v116);

    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_1D7279970;
    v81 = sub_1D725AA4C();
    v82 = MEMORY[0x1E69E6158];
    v83 = v103;
    *(v80 + 56) = MEMORY[0x1E69E6158];
    *(v80 + 64) = v83;
    *(v80 + 32) = v81;
    *(v80 + 40) = v84;
    *(v80 + 96) = v82;
    *(v80 + 104) = v83;
    v85 = v102;
    *(v80 + 72) = v101;
    *(v80 + 80) = v85;

    v86 = CACurrentMediaTime();
    v87 = MEMORY[0x1E69E6438];
    *(v80 + 136) = MEMORY[0x1E69E63B0];
    *(v80 + 144) = v87;
    *(v80 + 112) = (v86 - v44) * 1000.0;
    v88 = sub_1D7262EDC();
    sub_1D725C30C("Feed database did persist journal entries, group=%{public}@, cursor=%{public}@, time=%fms", 89, 2, &dword_1D5B42000, v107, v88, v80);
    sub_1D5BA705C(v147);

    (v123[1])(v56, v28);
  }
}

void FeedDatabase.dropAndSave(result:flush:)(uint64_t a1, char a2)
{
  v4 = v2;
  v7 = *v2;
  v8 = sub_1D5B81F5C();
  if (!v3)
  {
    v9 = v8;
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = *(v7 + 80);
    *(v11 + 24) = *(v7 + 88);
    *(v11 + 32) = *(v7 + 96);
    *(v11 + 48) = *(v7 + 112);
    *(v11 + 56) = *(v7 + 120);
    *(v11 + 72) = *(v7 + 136);
    *(v11 + 80) = v10;
    *(v11 + 88) = v9;
    *(v11 + 96) = a1;

    if (a2)
    {
      sub_1D6D1160C(sub_1D68369C8, v11);
      v12 = v4[2];
      v13 = sub_1D7262EDC();
      sub_1D725C30C("Feed database dropAndSave did flush changes", 43, 2, &dword_1D5B42000, v12, v13, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      sub_1D6D114D8(sub_1D68369C8, v11);
    }
  }
}

void sub_1D6827718(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v112 = a8;
  v110 = a6;
  v108 = a4;
  v134 = a3;
  v14 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v111 = a7;
  v109 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v119 = AssociatedTypeWitness;
  v118 = swift_getAssociatedTypeWitness();
  v133 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118, v16);
  v117 = &v101 - v17;
  v18 = *(v14 + 80);
  v19 = *(v14 + 88);
  v122 = type metadata accessor for FeedCursorGroup(0, v18, v19, v20);
  v127 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122, v21);
  v137 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v135 = &v101 - v25;
  v27 = type metadata accessor for FeedCursorTrackerSnapshot(255, v18, v19, v26);
  v28 = sub_1D726393C();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v101 - v31;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v34 = Strong;
  v35 = *(Strong + 16);
  v36 = sub_1D7262EDC();
  sub_1D725C30C("Feed database dropAndSave will erase all", 40, 2, &dword_1D5B42000, v35, v36, MEMORY[0x1E69E7CC0]);

  v120 = a2;
  v38 = sub_1D6D113D4(v37);
  (*(*(v27 - 8) + 56))(v32, 1, 1, v27, v38);
  v39 = v34;
  sub_1D5BA3DE4(v32);
  (*(v29 + 8))(v32, v28);
  v40 = sub_1D5D0EA94(v134, v18, v19);

  v42 = FeedCursorContainer.rootCursorContainer.getter(v40, v18, v19, v41);

  v43 = v42;
  if ((v42 & 0x8000000000000000) != 0)
  {
    v97 = *(v39 + 16);
    v98 = sub_1D7262EDC();
    sub_1D725C30C("Feed database dropAndSave will write nothing because the root cursor is deferred", 80, 2, &dword_1D5B42000, v97, v98, MEMORY[0x1E69E7CC0]);

    goto LABEL_29;
  }

  v107 = a11;
  v106 = a10;
  v105 = a9;
  sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v132 = v44;
  v126 = (v127 + 16);
  v124 = (v127 + 32);
  v115 = AssociatedConformanceWitness + 64;
  v114 = (v133 + 8);
  v123 = (v127 + 8);
  v116 = xmmword_1D7273AE0;
  v113 = xmmword_1D7279970;
  v45 = v120;
  v125 = v39;
  v46 = v137;
  v104 = v18;
  v103 = v19;
  while (1)
  {

    v47 = *(v39 + 16);
    v48 = swift_allocObject();
    *(v48 + 16) = v116;
    v49 = v43;
    v50 = qword_1EDFFCF40;
    v51 = v47;
    v52 = v122;
    v53 = sub_1D726279C();
    *(v48 + 56) = MEMORY[0x1E69E6530];
    *(v48 + 64) = MEMORY[0x1E69E65A8];
    *(v48 + 32) = v53;
    sub_1D7262EDC();
    sub_1D725C30C("Feed database dropAndSave will write %lu groups", v101);

    v131 = v49;
    v54 = *&v49[v50];
    v55 = v52;

    if (sub_1D726279C())
    {
      break;
    }

LABEL_22:

    v87 = *(v39 + 16);
    v88 = swift_allocObject();
    *(v88 + 16) = v116;
    v89 = v131;
    v90 = *(v131 + 2);
    v91 = *(v131 + 3);
    *(v88 + 56) = MEMORY[0x1E69E6158];
    *(v88 + 64) = sub_1D5B7E2C0();
    *(v88 + 32) = v90;
    *(v88 + 40) = v91;
    v92 = v87;

    v93 = sub_1D7262EDC();
    sub_1D725C30C("Feed database dropAndSave will write cursor, id=%{public}@", 58, 2, &dword_1D5B42000, v92, v93, v88);

    v94 = v136;
    sub_1D6836D34(v45, v89, v108, v109, v110, v111, v112, v105);
    v136 = v94;
    if (v94)
    {

      sub_1D5BD9F54(v89);
      return;
    }

    FeedCursorContainer.nextCursorContainer.getter(v89);
    v96 = v95;
    sub_1D5BD9F54(v89);
    if ((~v96 & 0xF000000000000007) == 0)
    {
      v99 = *(v39 + 16);
      v100 = sub_1D7262EDC();
      sub_1D725C30C("Feed database dropAndSave will finish because the next cursor is nil", 68, 2, &dword_1D5B42000, v99, v100, MEMORY[0x1E69E7CC0]);

      goto LABEL_29;
    }

    v43 = v96;
    if (v96 < 0)
    {
      sub_1D5BD9F54(v96);
LABEL_29:

      return;
    }
  }

  v56 = 0;
  v128 = v54;
  while (1)
  {
    v70 = sub_1D726277C();
    sub_1D726271C();
    if ((v70 & 1) == 0)
    {
      break;
    }

    (*(v127 + 16))(v135, v54 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v56, v55);
    v71 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      goto LABEL_31;
    }

LABEL_11:
    (*v124)(v46, v135, v55);
    v72 = v136;
    sub_1D68266A4(v45, &v46[*(v55 + 36)], v131);
    v134 = v71;
    if (!v72)
    {
      v80 = *(v39 + 16);
      v81 = swift_allocObject();
      *(v81 + 16) = v116;
      v82 = FeedCursorGroup.identifier.getter(v55);
      v84 = v83;
      *(v81 + 56) = MEMORY[0x1E69E6158];
      *(v81 + 64) = sub_1D5B7E2C0();
      *(v81 + 32) = v82;
      *(v81 + 40) = v84;
      v85 = sub_1D7262EDC();
      sub_1D725C30C("Feed database dropAndSave did write group, id=%{public}@", 56, 2, &dword_1D5B42000, v80, v85, v81);
      v46 = v137;

      (*v123)(v46, v55);
      v136 = 0;
      goto LABEL_8;
    }

    v136 = 0;
    v141 = v72;
    v73 = v72;
    v133 = sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    if (swift_dynamicCast())
    {
      if (v140 == 7 && v138 == 3 && !v139)
      {

        v74 = *(v39 + 16);
        v75 = swift_allocObject();
        *(v75 + 16) = v116;
        v76 = FeedCursorGroup.identifier.getter(v55);
        v78 = v77;
        *(v75 + 56) = MEMORY[0x1E69E6158];
        *(v75 + 64) = sub_1D5B7E2C0();
        *(v75 + 32) = v76;
        *(v75 + 40) = v78;
        v46 = v137;
        v79 = sub_1D7262EDC();
        sub_1D725C30C("Feed database dropAndSave did skip group because it ignores caching, id=%{public}@", 82, 2, &dword_1D5B42000, v74, v79, v75);

        (*v123)(v46, v55);

        goto LABEL_8;
      }

      sub_1D6836900(v138, v139, v140);
    }

    v130 = *(v39 + 16);
    v129 = sub_1D7262EBC();
    v57 = swift_allocObject();
    *(v57 + 16) = v113;
    v138 = 0;
    v139 = 0xE000000000000000;
    v58 = *(AssociatedConformanceWitness + 64);
    swift_checkMetadataState();
    v59 = v117;
    v58();
    v60 = v118;
    sub_1D726465C();
    (*v114)(v59, v60);
    v61 = v138;
    v62 = v139;
    *(v57 + 56) = MEMORY[0x1E69E6158];
    v63 = sub_1D5B7E2C0();
    *(v57 + 64) = v63;
    *(v57 + 32) = v61;
    *(v57 + 40) = v62;
    v45 = v120;
    v55 = v122;
    v64 = sub_1D725AA4C();
    v65 = MEMORY[0x1E69E6158];
    *(v57 + 96) = MEMORY[0x1E69E6158];
    *(v57 + 104) = v63;
    *(v57 + 72) = v64;
    *(v57 + 80) = v66;
    v138 = 0;
    v139 = 0xE000000000000000;
    v141 = v72;
    sub_1D7263F9C();
    v67 = v138;
    v68 = v139;
    *(v57 + 136) = v65;
    *(v57 + 144) = v63;
    v46 = v137;
    *(v57 + 112) = v67;
    *(v57 + 120) = v68;
    sub_1D725C30C("Feed database failed to write group to cache, kind=%{public}@ identifier=%{public}@, error=%{public}@", 101, 2, &dword_1D5B42000, v130, v129, v57);

    (*v123)(v46, v55);
LABEL_8:
    v54 = v128;
    v69 = sub_1D726279C();
    ++v56;
    v39 = v125;
    if (v134 == v69)
    {
      goto LABEL_22;
    }
  }

  v86 = sub_1D7263DBC();
  if (v102 != 8)
  {
    goto LABEL_32;
  }

  v138 = v86;
  (*v126)(v135, &v138, v55);
  swift_unknownObjectRelease();
  v71 = v56 + 1;
  if (!__OFADD__(v56, 1))
  {
    goto LABEL_11;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

double FeedDatabase.save(snapshot:)(char *a1)
{
  v2 = v1;
  v44 = *v1;
  v4 = v44[12];
  v5 = v44[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = v5;
  v43 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for FeedCursorTrackerSnapshot(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v46 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v40 - v11;
  v47 = sub_1D726393C();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v40 - v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v20 = a1;
  if (FeedServiceContextType.canWriteToDatabase()())
  {
    v41 = sub_1D5B81F5C();
    sub_1D5B97A2C();
    v22 = v46;
    if ((*(v46 + 48))(v19, 1, v9))
    {
      v45 = *(v45 + 8);
      (v45)(v19, v47);
      v23 = MEMORY[0x1E69E7CD0];
      (*(v22 + 16))(v15, v20, v9);
    }

    else
    {
      v24 = *(v22 + 16);
      v24(v12, v19, v9);
      v45 = *(v45 + 8);
      (v45)(v19, v47);
      v23 = *&v12[*(v9 + 36)];
      v40 = *(v46 + 8);

      v40(v12, v9);
      v22 = v46;
      v24(v15, v20, v9);
    }

    (*(v22 + 56))(v15, 0, 1, v9);
    sub_1D5BA3DE4(v15);
    (v45)(v15, v47);
    v25 = *&v20[*(v9 + 36)];
    if (*(v23 + 16) <= *(v25 + 16) >> 3)
    {
      v48 = *&v20[*(v9 + 36)];

      sub_1D6836478(v23);

      v26 = v48;
    }

    else
    {

      v26 = sub_1D6E14F70(v23, v25);
    }

    v29 = sub_1D6F9EB9C(v26, v9, v27, v28);

    if (*(v29 + 16))
    {
      v30 = v2[2];
      sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1D7273AE0;
      v32 = MEMORY[0x1DA6F9D20](v29, &type metadata for FeedGroupTrackerEntity);
      v34 = v33;
      *(v31 + 56) = MEMORY[0x1E69E6158];
      *(v31 + 64) = sub_1D5B7E2C0();
      *(v31 + 32) = v32;
      *(v31 + 40) = v34;
      v35 = sub_1D7262EDC();
      sub_1D725C30C("Feed database will update group tracker state for %{public}@ entities", 69, 2, &dword_1D5B42000, v30, v35, v31);

      v36 = swift_allocObject();
      v37 = v41;
      *(v36 + 16) = v42;
      v38 = v44;
      v39 = v43;
      *(v36 + 24) = v44[11];
      *(v36 + 32) = v39;
      *(v36 + 40) = v38[13];
      *(v36 + 48) = v38[14];
      *(v36 + 56) = *(v38 + 15);
      *(v36 + 72) = v38[17];
      *(v36 + 80) = v29;
      *(v36 + 88) = v37;

      sub_1D6D114D8(sub_1D6836A08, v36);
    }

    else
    {
    }
  }

  return result;
}

double sub_1D68289D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    for (i = a1 + 40; ; i += 48)
    {

      sub_1D725C6CC();
      sub_1D725C67C();
      if (v4)
      {
        break;
      }

      if (!--v1)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t FeedDatabase.hotSwap(group:context:state:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5[47] = a4;
  v5[48] = v4;
  v5[45] = a2;
  v5[46] = a3;
  v5[44] = a1;
  v5[49] = *v4;
  v5[50] = *a4;
  return MEMORY[0x1EEE6DFA0](sub_1D6828B84, 0, 0);
}

uint64_t sub_1D6828B84()
{
  v1 = *(v0 + 392);
  *(v0 + 408) = *(v1 + 104);
  *(v0 + 416) = *(v1 + 88);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 424) = AssociatedConformanceWitness;
  v3 = *(AssociatedConformanceWitness + 72);
  *(v0 + 432) = swift_checkMetadataState();
  v4 = v3();
  *(v0 + 440) = v4;
  *(v0 + 448) = v5;
  v6 = *(v0 + 384);
  if (v5)
  {
    v7 = v4;
    v8 = v5;
    v9 = *(v6 + 16);
    *(v0 + 456) = v9;
    sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    *(v0 + 464) = v10;
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D7273AE0;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    v12 = sub_1D5B7E2C0();
    *(v0 + 472) = v12;
    *(v11 + 64) = v12;
    *(v11 + 32) = v7;
    *(v11 + 40) = v8;

    v13 = sub_1D7262EDC();
    sub_1D725C30C("Feed database attempting to hot-swap group, id=%{public}@", 57, 2, &dword_1D5B42000, v9, v13, v11);

    v14 = sub_1D5B81F5C();
    *(v0 + 480) = v14;
    v18 = sub_1D5BA006C(*(v0 + 368), *(v0 + 376), v14, 1);
    *(v0 + 488) = v18;
    v21 = *(v0 + 400);
    v22 = *(v21 + 80);
    *(v0 + 496) = v22;
    v23 = *(v21 + 88);
    *(v0 + 504) = v23;
    *(v0 + 512) = FeedCursorContainer.cursor()(v18, v22, v23, v24);
    v25 = swift_task_alloc();
    *(v0 + 520) = v25;
    *v25 = v0;
    v25[1] = sub_1D6828F78;

    return MEMORY[0x1EEE44EE0](v0 + 328);
  }

  else
  {
    v15 = *(v6 + 16);
    v16 = sub_1D7262EBC();
    sub_1D725C30C("Feed database could not hot-swap group without a kind-identifier", 64, 2, &dword_1D5B42000, v15, v16, MEMORY[0x1E69E7CC0]);
    sub_1D6836948();
    swift_allocError();
    *v17 = xmmword_1D72BAAB0;
    *(v17 + 16) = 7;
    swift_willThrow();
    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_1D6828F78()
{
  *(*v1 + 528) = v0;

  if (v0)
  {
    v2 = sub_1D6829510;
  }

  else
  {

    v2 = sub_1D6829094;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6829094()
{
  v46 = *(v0 + 528);
  v2 = *(v0 + 496);
  v1 = *(v0 + 504);
  v3 = *(v0 + 440);
  v4 = *(v0 + 448);
  v6 = *(v0 + 408);
  v5 = *(v0 + 416);
  v7 = *(v0 + 392);
  *(v0 + 344) = *(*(v0 + 328) + qword_1EDFFCF38);
  v8 = swift_task_alloc();
  v8[2] = v7[10];
  v8[3] = v5;
  v8[4] = v7[12];
  v8[5] = v6;
  v8[6] = v7[14];
  v8[7] = v7[15];
  v9 = v7[16];
  v8[8] = v9;
  v10 = v7[17];
  v8[9] = v10;
  v8[10] = v3;
  v8[11] = v4;
  type metadata accessor for FeedDatabaseGroup(255, v2, v1, v11);
  sub_1D72627FC();

  swift_getWitnessTable();
  sub_1D726246C();

  v12 = *(v0 + 336);
  if (!v12)
  {
    v22 = *(v0 + 440);
    v21 = *(v0 + 448);
    sub_1D6836948();
    v20 = swift_allocError();
    *v23 = v22;
    *(v23 + 8) = v21;
    *(v23 + 16) = 6;
    swift_willThrow();

    goto LABEL_5;
  }

  v14 = *(v0 + 424);
  v13 = *(v0 + 432);
  v15 = *(v0 + 360);
  v16 = v12[2];
  *(v0 + 16) = v12[1];
  *(v0 + 32) = v16;
  v17 = v12[6];
  v19 = v12[3];
  v18 = v12[4];
  *(v0 + 80) = v12[5];
  *(v0 + 96) = v17;
  *(v0 + 48) = v19;
  *(v0 + 64) = v18;
  sub_1D5BA6C4C(v0 + 16, v0 + 112);
  sub_1D602DF9C(v15, v13, v14, v9, v10);
  v20 = v46;
  if (v46)
  {
    sub_1D5BA705C(v0 + 16);

LABEL_5:

    v24 = *(v0 + 472);
    v25 = *(v0 + 456);
    v27 = *(v0 + 440);
    v26 = *(v0 + 448);
    v28 = sub_1D7262EBC();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1D7270C10;
    v30 = MEMORY[0x1E69E6158];
    *(v29 + 56) = MEMORY[0x1E69E6158];
    *(v29 + 64) = v24;
    *(v29 + 32) = v27;
    *(v29 + 40) = v26;
    *(v0 + 304) = 0;
    *(v0 + 312) = 0xE000000000000000;
    *(v0 + 320) = v20;
    sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    sub_1D7263F9C();
    v31 = *(v0 + 304);
    v32 = *(v0 + 312);
    *(v29 + 96) = v30;
    *(v29 + 104) = v24;
    *(v29 + 72) = v31;
    *(v29 + 80) = v32;
    sub_1D725C30C("Feed database failed to hot-swap group, id=%{public}@, error=%{public}@", 71, 2, &dword_1D5B42000, v25, v28, v29);

    swift_willThrow();

    v33 = *(v0 + 8);
    goto LABEL_6;
  }

  sub_1D725C6CC();
  v35 = *(v0 + 64);
  *(v0 + 240) = *(v0 + 48);
  *(v0 + 256) = v35;
  v36 = *(v0 + 96);
  *(v0 + 272) = *(v0 + 80);
  *(v0 + 288) = v36;
  v37 = *(v0 + 32);
  *(v0 + 208) = *(v0 + 16);
  *(v0 + 224) = v37;
  sub_1D725C67C();
  v38 = *(v0 + 472);
  v39 = *(v0 + 456);
  v41 = *(v0 + 440);
  v40 = *(v0 + 448);
  v42 = *(v0 + 432);
  v47 = *(v0 + 360);
  v45 = *(v0 + 352);

  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1D7273AE0;
  *(v43 + 56) = MEMORY[0x1E69E6158];
  *(v43 + 64) = v38;
  *(v43 + 32) = v41;
  *(v43 + 40) = v40;
  v44 = sub_1D7262EDC();
  sub_1D725C30C("Feed database successfully hot-swapped group, id=%{public}@", 59, 2, &dword_1D5B42000, v39, v44, v43);
  sub_1D5BA705C(v0 + 16);

  (*(*(v42 - 8) + 16))(v45, v47, v42);
  v33 = *(v0 + 8);
LABEL_6:

  return v33();
}

uint64_t sub_1D6829510()
{

  v1 = v0[66];
  v2 = v0[59];
  v3 = v0[57];
  v5 = v0[55];
  v4 = v0[56];
  v6 = sub_1D7262EBC();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7270C10;
  v8 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = v2;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  v0[38] = 0;
  v0[39] = 0xE000000000000000;
  v0[40] = v1;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  sub_1D7263F9C();
  v9 = v0[38];
  v10 = v0[39];
  *(v7 + 96) = v8;
  *(v7 + 104) = v2;
  *(v7 + 72) = v9;
  *(v7 + 80) = v10;
  sub_1D725C30C("Feed database failed to hot-swap group, id=%{public}@, error=%{public}@", 71, 2, &dword_1D5B42000, v3, v6, v7);

  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D6829674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D725C4CC();
  sub_1D725C73C();

  if (v9 >= 2)
  {
    if (v8 == a2 && v9 == a3)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_1D72646CC();
      a2 = v8;
    }

    sub_1D5D25B88(a2, v9);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FeedDatabase.erase()()
{
  v2 = *v0;
  v3 = v0[2];
  v4 = sub_1D7262EDC();
  sub_1D725C30C("Feed database will erase all", 28, 2, &dword_1D5B42000, v3, v4, MEMORY[0x1E69E7CC0]);
  v5 = sub_1D5B81F5C();
  if (!v1)
  {
    v6 = v5;
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = *(v2 + 80);
    *(v8 + 24) = *(v2 + 88);
    *(v8 + 32) = *(v2 + 96);
    *(v8 + 48) = *(v2 + 112);
    *(v8 + 56) = *(v2 + 120);
    *(v8 + 72) = *(v2 + 136);
    *(v8 + 80) = v7;
    *(v8 + 88) = v6;

    sub_1D6D114D8(sub_1D6836A78, v8);
  }
}

double sub_1D6829894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for FeedCursorTrackerSnapshot(255, *(*a2 + 80), *(*a2 + 88), a4);
  v5 = sub_1D726393C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v13 - v8;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v11 = sub_1D6D113D4(v10);
    (*(*(v4 - 8) + 56))(v9, 1, 1, v4, v11);
    sub_1D5BA3DE4(v9);
    (*(v6 + 8))(v9, v5);
  }

  return v10.n128_f64[0];
}

void sub_1D6829A1C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_1D5B76550(0, &qword_1EDF17378, MEMORY[0x1E69D6230], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v99 - v9;
  v11 = sub_1D725C4AC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v102 = v99 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v103 = v99 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v104 = v99 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v105 = v99 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v106 = v99 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = v99 - v33;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v36 = Strong;
    v100 = v15;
    v110 = v11;
    v37 = CACurrentMediaTime();
    v108 = *&v36;
    v38 = *(v36 + 16);
    sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v109 = v39;
    v40 = swift_allocObject();
    v101 = xmmword_1D7273AE0;
    *(v40 + 16) = xmmword_1D7273AE0;
    v41 = *&a4;
    v42 = MEMORY[0x1E69E6158];
    *(v40 + 56) = MEMORY[0x1E69E6158];
    v107 = sub_1D5B7E2C0();
    *(v40 + 64) = v107;
    *(v40 + 32) = a2;
    *(v40 + 40) = a3;
    v43 = v38;

    v44 = sub_1D7262EDC();
    sub_1D725C30C("Feed database starting cleanup against root cursor %{public}@", 61, 2, &dword_1D5B42000, v43, v44, v40);

    v45 = *(*&v41 + 16);
    sub_1D725C6DC();
    v129 = v42;
    v130 = MEMORY[0x1E69D62D8];
    v127 = a2;
    v128 = a3;

    sub_1D725C64C();
    __swift_destroy_boxed_opaque_existential_1(&v127);
    v46 = sub_1D725C79C();
    (*(*(v46 - 8) + 56))(v10, 1, 1, v46);
    v47 = v111;
    v48 = sub_1D725C6AC();
    v49 = v47;
    v50 = &off_1D7270000;
    if (v47)
    {

      sub_1D5BA2558(v10, &qword_1EDF17378, MEMORY[0x1E69D6230], MEMORY[0x1E69E6720], sub_1D5B76550);
      (*(v12 + 8))(v34, v110);
      v51 = v108;
LABEL_20:
      v87 = *(*&v51 + 16);
      v88 = swift_allocObject();
      *(v88 + 16) = *(v50 + 193);
      v127 = 0;
      v128 = 0xE000000000000000;
      v126 = v49;
      sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
      v89 = v87;
      sub_1D7263F9C();
      v90 = v127;
      v91 = v128;
      v92 = v107;
      *(v88 + 56) = MEMORY[0x1E69E6158];
      *(v88 + 64) = v92;
      *(v88 + 32) = v90;
      *(v88 + 40) = v91;
      v93 = CACurrentMediaTime();
      v94 = MEMORY[0x1E69E6438];
      *(v88 + 96) = MEMORY[0x1E69E63B0];
      *(v88 + 104) = v94;
      *(v88 + 72) = (v93 - v37) * 1000.0;
      v95 = sub_1D7262EDC();
      sub_1D725C30C("Feed database failed to run cleanup task, error=%{public}@, time=%fms", 69, 2, &dword_1D5B42000, v89, v95, v88);

      return;
    }

    v52 = v48;
    v99[0] = v41;
    v111 = 0;

    sub_1D5BA2558(v10, &qword_1EDF17378, MEMORY[0x1E69D6230], MEMORY[0x1E69E6720], sub_1D5B76550);
    v53 = *(v12 + 8);
    *&v51 = v12 + 8;
    v54 = v34;
    v55 = v53;
    v99[2] = v51;
    v53(v54, v110);
    v56 = *(v52 + 16);
    v99[1] = v45;
    if (v56)
    {
      v126 = MEMORY[0x1E69E7CC0];
      sub_1D5BFC364(0, v56, 0);
      v57 = 0;
      v58 = v126;
      v114 = v52;
      v59 = (v52 + 64);
      v113 = v55;
      v112 = v56;
      while (1)
      {
        if (v57 >= *(v114 + 16))
        {
          __break(1u);
          goto LABEL_22;
        }

        v121 = v57;
        v122 = v58;
        v60 = *(v59 - 4);
        v61 = *(v59 - 3);
        v62 = *(v59 - 2);
        v63 = *(v59 - 1);
        v64 = *v59;
        v66 = *(v59 + 2);
        v65 = *(v59 + 3);
        v123 = *(v59 + 1);
        v124 = v65;
        v125 = *(v59 + 5);
        v51 = v59[7];

        v120 = v61;

        v119 = v62;

        v118 = v63;

        v117 = v64;

        v116 = v66;

        v115 = v60;
        sub_1D725C4CC();
        sub_1D725C73C();

        v49 = v128;
        if (!v128)
        {
          break;
        }

        v67 = v127;

        v58 = v122;
        v126 = v122;
        v69 = *(v122 + 16);
        v68 = *(v122 + 24);
        if (v69 >= v68 >> 1)
        {
          sub_1D5BFC364((v68 > 1), v69 + 1, 1);
          v58 = v126;
        }

        v57 = v121 + 1;
        *(v58 + 16) = v69 + 1;
        v70 = v58 + 16 * v69;
        *(v70 + 32) = v67;
        *(v70 + 40) = v49;
        v59 += 12;
        v56 = v112;
        v55 = v113;
        if (v112 == v57)
        {

          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {

      v58 = MEMORY[0x1E69E7CC0];
LABEL_13:
      v51 = v108;
      v71 = *(*&v108 + 16);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_1D7270C10;
      v73 = *(v58 + 16);
      v74 = MEMORY[0x1E69E65A8];
      *(v72 + 56) = MEMORY[0x1E69E6530];
      *(v72 + 64) = v74;
      *(v72 + 32) = v73;
      v75 = MEMORY[0x1E69E6158];
      sub_1D5BA4E90(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      *(v72 + 96) = v76;
      *(v72 + 104) = sub_1D5B9AD14(&qword_1EDF1AF20, &qword_1EDF43BA0, v75, MEMORY[0x1E6969E28]);
      *(v72 + 72) = v58;
      v77 = v71;

      v78 = sub_1D7262EDC();
      sub_1D725C30C("Feed database will cleanup %ld cursors: %{public}@", 50, 2, &dword_1D5B42000, v77, v78, v72);

      if (*(v58 + 16))
      {
        sub_1D725C6FC();
        sub_1D5B9A888(v58);
        v79 = v106;
        sub_1D725C63C();

        v80 = v111;
        sub_1D725C78C();
        v49 = v80;
        if (v80)
        {
          v55(v79, v110);

          v50 = &off_1D7270000;
          goto LABEL_20;
        }

        v55(v79, v110);

        sub_1D725C6FC();
        sub_1D5B9A888(v58);
        v86 = v105;
        sub_1D725C63C();

        sub_1D725C78C();
        v55(v86, v110);

        sub_1D725C6FC();
        sub_1D5B9A888(v58);
        v96 = v104;
        sub_1D725C63C();

        sub_1D725C78C();
        v55(v96, v110);

        sub_1D725C6FC();
        sub_1D5B9A888(v58);
        v97 = v103;
        sub_1D725C63C();

        sub_1D725C78C();
        v55(v97, v110);

        sub_1D725C6FC();
        sub_1D5B9A888(v58);
        v98 = v102;
        sub_1D725C63C();

        sub_1D725C78C();
        v55(v98, v110);

        sub_1D725C6FC();
        sub_1D5B9A888(v58);

        v56 = v100;
        sub_1D725C63C();

        sub_1D725C78C();
LABEL_22:
        v111 = v49;
        v55(v56, v110);
      }

      else
      {
      }

      v81 = *(*&v51 + 16);
      v82 = swift_allocObject();
      *(v82 + 16) = v101;
      v83 = v81;
      v84 = CACurrentMediaTime();
      v85 = MEMORY[0x1E69E6438];
      *(v82 + 56) = MEMORY[0x1E69E63B0];
      *(v82 + 64) = v85;
      *(v82 + 32) = (v84 - v37) * 1000.0;
      sub_1D7262EDC();
      sub_1D725C30C("Feed database did run cleanup task, time=%fms", v99[0]);
    }
  }
}

uint64_t sub_1D682A7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for FeedCursorGroup(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v10 = FeedCursorGroup.identifier.getter(v9);
  v12 = v11;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  if (v10 == sub_1D725AA4C() && v12 == v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1D72646CC();
  }

  return v15 & 1;
}

uint64_t sub_1D682A928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[54] = a4;
  v5[55] = v4;
  v5[52] = a2;
  v5[53] = a3;
  v5[51] = a1;
  sub_1D5B76550(0, &qword_1EDF17378, MEMORY[0x1E69D6230], MEMORY[0x1E69E6720]);
  v5[56] = swift_task_alloc();
  v6 = sub_1D725C4AC();
  v5[57] = v6;
  v5[58] = *(v6 - 8);
  v5[59] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D682AA4C, 0, 0);
}

uint64_t sub_1D682AA4C()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 416);
  v3 = *(v0 + 424);
  v4 = *(v0 + 408);
  *(v0 + 392) = MEMORY[0x1E69E7CD0];
  v5 = *(v1 + 16);
  *(v0 + 480) = v5;
  sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  *(v0 + 488) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7273AE0;
  v8 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D5B7E2C0();
  *(v0 + 496) = v9;
  *(v7 + 64) = v9;
  *(v7 + 32) = v4;
  *(v7 + 40) = v2;
  swift_bridgeObjectRetain_n();
  v10 = sub_1D7262EDC();
  sub_1D725C30C("Feed database reading cursor %{public}@", 39, 2, &dword_1D5B42000, v5, v10, v7);

  v11 = *(v3 + 16);
  v13 = *(v0 + 408);
  v12 = *(v0 + 416);
  *(v0 + 520) = v12;
  *(v0 + 504) = v11;
  *(v0 + 512) = v13;
  v14 = *(v0 + 448);
  sub_1D725C6DC();
  v15 = MEMORY[0x1E69D62D8];
  *(v0 + 328) = v8;
  *(v0 + 336) = v15;
  *(v0 + 304) = v13;
  *(v0 + 312) = v12;

  sub_1D725C62C();
  __swift_destroy_boxed_opaque_existential_1((v0 + 304));
  v16 = sub_1D725C79C();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  sub_1D725C69C();
  v18 = *(v0 + 464);
  v17 = *(v0 + 472);
  v20 = *(v0 + 448);
  v19 = *(v0 + 456);

  sub_1D5BA2558(v20, &qword_1EDF17378, MEMORY[0x1E69D6230], MEMORY[0x1E69E6720], sub_1D5B76550);
  (*(v18 + 8))(v17, v19);
  v23 = *(v0 + 128);
  *(v0 + 208) = *(v0 + 112);
  *(v0 + 224) = v23;
  v24 = *(v0 + 192);
  *(v0 + 272) = *(v0 + 176);
  *(v0 + 288) = v24;
  v25 = *(v0 + 160);
  *(v0 + 240) = *(v0 + 144);
  *(v0 + 256) = v25;
  v26 = *(v0 + 208);
  v27 = *(v0 + 240);
  *(v0 + 528) = v27;
  if (v26)
  {
    *(v0 + 16) = v26;
    *(v0 + 24) = *(v0 + 120);
    *(v0 + 40) = *(v0 + 136);
    *(v0 + 48) = v27;
    *(v0 + 56) = *(v0 + 152);
    *(v0 + 72) = *(v0 + 168);
    *(v0 + 88) = *(v0 + 184);
    *(v0 + 104) = *(v0 + 200);

    sub_1D5B860D0((v0 + 344), v13, v12);

    v28 = swift_task_alloc();
    *(v0 + 536) = v28;
    *v28 = v0;
    v28[1] = sub_1D682AE9C;
    v29 = *(v0 + 432);
    v30 = *(v0 + 424);

    return sub_1D682B6E4(v30, v0 + 16, v29);
  }

  else
  {

    sub_1D6836948();
    swift_allocError();
    *v31 = 0;
    *(v31 + 8) = 0;
    *(v31 + 16) = 7;
    swift_willThrow();

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_1D682AE9C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 544) = v1;

  if (v1)
  {
    v5 = sub_1D682B08C;
  }

  else
  {

    *(v4 + 552) = a1;

    v5 = sub_1D682AFD4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D682AFD4()
{
  sub_1D5BA2558(v0 + 208, &unk_1EDF150C8, &type metadata for FeedCursorEntity, MEMORY[0x1E69E6720], sub_1D5BA4E90);

  v1 = *(v0 + 8);
  v2 = *(v0 + 552);

  return v1(v2);
}

uint64_t sub_1D682B08C()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 520);
  v3 = *(v0 + 512);
  v4 = *(v0 + 496);
  v5 = *(v0 + 480);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7270C10;
  v7 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = v4;
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;
  *(v0 + 360) = 0;
  *(v0 + 368) = 0xE000000000000000;
  *(v0 + 400) = v1;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);

  sub_1D7263F9C();
  v8 = *(v0 + 360);
  v9 = *(v0 + 368);
  *(v6 + 96) = v7;
  *(v6 + 104) = v4;
  *(v6 + 72) = v8;
  *(v6 + 80) = v9;
  v10 = sub_1D7262EDC();
  sub_1D725C30C("Feed database failed to rebuild cursor %{public}@, error=%{public}@", 67, 2, &dword_1D5B42000, v5, v10, v6);

  sub_1D725C4CC();
  sub_1D725C73C();

  v11 = *(v0 + 384);
  if (v11 < 2)
  {

    v21 = *(v0 + 544);
    v22 = *(v0 + 480);
    v23 = sub_1D7262EDC();
    sub_1D725C30C("Feed database hit the end of the cursor chain, no more cursors", 62, 2, &dword_1D5B42000, v22, v23, MEMORY[0x1E69E7CC0]);
    sub_1D6836948();
    swift_allocError();
    *v24 = 0;
    *(v24 + 8) = 0;
    *(v24 + 16) = 7;
    swift_willThrow();

    goto LABEL_5;
  }

  v12 = *(v0 + 376);
  v13 = *(v0 + 544);
  v14 = *(v0 + 520);
  v15 = *(v0 + 512);
  v16 = *(v0 + 496);
  v17 = *(v0 + 480);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D7270C10;
  *(v18 + 56) = v7;
  *(v18 + 64) = v16;
  *(v18 + 32) = v15;
  *(v18 + 40) = v14;
  *(v18 + 96) = v7;
  *(v18 + 104) = v16;
  *(v18 + 72) = v12;
  *(v18 + 80) = v11;

  v19 = sub_1D7262EDC();
  sub_1D725C30C("Feed database failed rebuild cursor %{public}@ will attempt reading next cursor %{public}@", 90, 2, &dword_1D5B42000, v17, v19, v18);

  if (sub_1D5BE240C(v12, v11, *(v0 + 392)))
  {

    sub_1D6836948();
    swift_allocError();
    *v20 = v12;
    *(v20 + 8) = v11;
    *(v20 + 16) = 5;
    swift_willThrow();
LABEL_5:
    sub_1D5BA2558(v0 + 208, &unk_1EDF150C8, &type metadata for FeedCursorEntity, MEMORY[0x1E69E6720], sub_1D5BA4E90);
LABEL_6:

    v25 = *(v0 + 8);

    return v25();
  }

  sub_1D5BA2558(v0 + 208, &unk_1EDF150C8, &type metadata for FeedCursorEntity, MEMORY[0x1E69E6720], sub_1D5BA4E90);
  *(v0 + 520) = v11;
  *(v0 + 512) = v12;
  v27 = *(v0 + 448);
  sub_1D725C6DC();
  v28 = MEMORY[0x1E69D62D8];
  *(v0 + 328) = v7;
  *(v0 + 336) = v28;
  *(v0 + 304) = v12;
  *(v0 + 312) = v11;

  sub_1D725C62C();
  __swift_destroy_boxed_opaque_existential_1((v0 + 304));
  v29 = sub_1D725C79C();
  (*(*(v29 - 8) + 56))(v27, 1, 1, v29);
  sub_1D725C69C();
  v31 = *(v0 + 464);
  v30 = *(v0 + 472);
  v33 = *(v0 + 448);
  v32 = *(v0 + 456);

  sub_1D5BA2558(v33, &qword_1EDF17378, MEMORY[0x1E69D6230], MEMORY[0x1E69E6720], sub_1D5B76550);
  (*(v31 + 8))(v30, v32);
  v34 = *(v0 + 128);
  *(v0 + 208) = *(v0 + 112);
  *(v0 + 224) = v34;
  v35 = *(v0 + 192);
  *(v0 + 272) = *(v0 + 176);
  *(v0 + 288) = v35;
  v36 = *(v0 + 160);
  *(v0 + 240) = *(v0 + 144);
  *(v0 + 256) = v36;
  v37 = *(v0 + 208);
  v38 = *(v0 + 240);
  *(v0 + 528) = v38;
  if (!v37)
  {

    sub_1D6836948();
    swift_allocError();
    *v42 = 0;
    *(v42 + 8) = 0;
    *(v42 + 16) = 7;
    swift_willThrow();
    goto LABEL_6;
  }

  *(v0 + 16) = v37;
  *(v0 + 24) = *(v0 + 120);
  *(v0 + 40) = *(v0 + 136);
  *(v0 + 48) = v38;
  *(v0 + 56) = *(v0 + 152);
  *(v0 + 72) = *(v0 + 168);
  *(v0 + 88) = *(v0 + 184);
  *(v0 + 104) = *(v0 + 200);

  sub_1D5B860D0((v0 + 344), v12, v11);

  v39 = swift_task_alloc();
  *(v0 + 536) = v39;
  *v39 = v0;
  v39[1] = sub_1D682AE9C;
  v40 = *(v0 + 432);
  v41 = *(v0 + 424);

  return sub_1D682B6E4(v41, v0 + 16, v40);
}

uint64_t sub_1D682B6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D682B708, 0, 0);
}

void sub_1D682B708()
{
  v1 = *(*(v0 + 104) + 16);
  sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D7279970;
  sub_1D725C4CC();
  sub_1D725C73C();

  v3 = *(v0 + 24);
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v30 = v1;
  v4 = *(v0 + 16);
  v5 = MEMORY[0x1E69E6158];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  v6 = sub_1D5B7E2C0();
  *(v2 + 64) = v6;
  *(v2 + 32) = v4;
  *(v2 + 40) = v3;
  sub_1D725C4CC();
  sub_1D725C73C();

  v7 = *(v0 + 40);
  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = *(v0 + 96);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  v11 = *(v0 + 32);
  *(v2 + 96) = v5;
  *(v2 + 104) = v6;
  *(v2 + 72) = v11;
  *(v2 + 80) = v7;
  v12 = sub_1D5BA88B4();
  *(v2 + 136) = v5;
  *(v2 + 144) = v6;
  *(v2 + 112) = v12;
  *(v2 + 120) = v13;
  v14 = sub_1D7262EDC();
  sub_1D725C30C("Feed database rebuilding %{public}@ cursor %{public}@ with context=%{public}@", 77, 2, &dword_1D5B42000, v30, v14, v2);

  v15 = CACurrentMediaTime();
  v16 = sub_1D5BA5888(v9, v10, v8);
  *(v0 + 112) = v16;
  v17 = v5;
  v18 = v16;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D7279970;
  sub_1D725C4CC();
  sub_1D725C73C();

  v20 = *(v0 + 56);
  if (!v20)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v21 = *(v0 + 48);
  *(v19 + 56) = v17;
  *(v19 + 64) = v6;
  *(v19 + 32) = v21;
  *(v19 + 40) = v20;
  sub_1D725C4CC();
  sub_1D725C73C();

  v22 = *(v0 + 72);
  if (!v22)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v23 = *(v0 + 64);
  *(v19 + 96) = v17;
  *(v19 + 104) = v6;
  *(v19 + 72) = v23;
  *(v19 + 80) = v22;
  v24 = CACurrentMediaTime();
  v25 = MEMORY[0x1E69E6438];
  *(v19 + 136) = MEMORY[0x1E69E63B0];
  *(v19 + 144) = v25;
  *(v19 + 112) = (v24 - v15) * 1000.0;
  v26 = sub_1D7262EDC();
  sub_1D725C30C("Feed database finished decoding %{public}@ cursor %{public}@, time=%fms", 71, 2, &dword_1D5B42000, v30, v26, v19);

  *(v0 + 120) = CACurrentMediaTime();
  v27 = swift_task_alloc();
  *(v0 + 128) = v27;
  *v27 = v0;
  v27[1] = sub_1D682BA74;
  v28 = *(v0 + 96);
  v29 = *(v0 + 80);

  sub_1D682BE08(v29, v18, v28);
}

uint64_t sub_1D682BA74(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_1D682BC14;
  }

  else
  {
    *(v4 + 144) = a1;
    v5 = sub_1D682BB9C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D682BB9C()
{
  sub_1D682BC88(*(v0 + 104), *(v0 + 120));

  v1 = *(v0 + 8);
  v2 = *(v0 + 144);

  return v1(v2);
}

uint64_t sub_1D682BC14()
{
  sub_1D682BC88(*(v0 + 104), *(v0 + 120));

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D682BC88(uint64_t a1, double a2)
{
  v3 = *(a1 + 16);
  sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7279970;
  sub_1D725C4CC();
  sub_1D725C73C();

  if (v13)
  {
    v5 = MEMORY[0x1E69E6158];
    *(v4 + 56) = MEMORY[0x1E69E6158];
    v6 = sub_1D5B7E2C0();
    *(v4 + 64) = v6;
    *(v4 + 32) = v12;
    *(v4 + 40) = v13;
    sub_1D725C4CC();
    sub_1D725C73C();

    if (v11)
    {
      *(v4 + 96) = v5;
      *(v4 + 104) = v6;
      *(v4 + 72) = v10;
      *(v4 + 80) = v11;
      v7 = CACurrentMediaTime();
      v8 = MEMORY[0x1E69E6438];
      *(v4 + 136) = MEMORY[0x1E69E63B0];
      *(v4 + 144) = v8;
      *(v4 + 112) = (v7 - a2) * 1000.0;
      v9 = sub_1D7262EDC();
      sub_1D725C30C("Feed database rebuilt %{public}@ cursor %{public}@, total time=%fms", 67, 2, &dword_1D5B42000, v3, v9, v4);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D682BE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D682BE2C, 0, 0);
}

void sub_1D682BE2C()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = swift_task_alloc();
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = sub_1D5BA7730(v2, sub_1D68374C0, v4);
  *(v0 + 112) = v5;
  v7 = v5;
  v8 = *(v0 + 104);

  v37 = *(v8 + 16);
  sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D7279970;
  sub_1D725C4CC();
  sub_1D725C73C();

  v10 = *(v0 + 24);
  if (!v10)
  {
    __break(1u);
    goto LABEL_33;
  }

  v11 = *(v0 + 16);
  v12 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v13 = sub_1D5B7E2C0();
  *(v9 + 64) = v13;
  *(v9 + 32) = v11;
  *(v9 + 40) = v10;
  sub_1D725C4CC();
  sub_1D725C73C();

  v14 = *(v0 + 40);
  if (!v14)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v15 = *(v0 + 32);
  *(v9 + 96) = v12;
  *(v9 + 104) = v13;
  *(v9 + 72) = v15;
  *(v9 + 80) = v14;
  v16 = sub_1D5BA88B4();
  *(v9 + 136) = v12;
  *(v9 + 144) = v13;
  *(v9 + 112) = v16;
  *(v9 + 120) = v17;
  v18 = sub_1D7262EDC();
  sub_1D725C30C("Feed database creating %{public}@ cursor %{public}@ with new context=%{public}@", 79, 2, &dword_1D5B42000, v37, v18, v9);

  sub_1D725C4CC();
  sub_1D725C73C();

  v19 = *(v0 + 56);
  if (!v19)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v20 = *(v0 + 48);
  FeedCursorKind.init(rawValue:)(*(&v19 - 1));
  if (v38 > 3u)
  {
    if (v38 <= 5u)
    {
      if (v38 != 4)
      {
        sub_1D682CE24(*(v0 + 80), *(v0 + 88), v7);
LABEL_17:
        v27 = v26;

        v28 = *(v0 + 8);

        v28(v27);
        return;
      }

LABEL_16:
      v26 = sub_1D682EEB4(*(v0 + 88), v7, v21, v22);
      goto LABEL_17;
    }

    if (v38 == 6)
    {
      *(v0 + 192) = 6;
      v23 = (v0 + 192);
      v24 = swift_task_alloc();
      *(v0 + 168) = v24;
      *v24 = v0;
      v25 = sub_1D682C630;
      goto LABEL_22;
    }

    sub_1D725C4CC();
    sub_1D725C73C();

    v34 = *(v0 + 72);
    if (v34)
    {
      v35 = *(v0 + 64);
      sub_1D6836948();
      swift_allocError();
      *v36 = v35;
      *(v36 + 8) = v34;
      *(v36 + 16) = 0;
      goto LABEL_31;
    }

LABEL_35:
    __break(1u);
    return;
  }

  if (v38 > 1u)
  {
    if (v38 == 2)
    {
      goto LABEL_16;
    }

    sub_1D6836948();
    swift_allocError();
    *v33 = xmmword_1D72BAA60;
    *(v33 + 16) = 1;
LABEL_31:
    swift_willThrow();

    v6 = *(v0 + 8);

    v6();
    return;
  }

  if (!v38)
  {
    *(v0 + 193) = 0;
    v23 = (v0 + 193);
    v24 = swift_task_alloc();
    *(v0 + 144) = v24;
    *v24 = v0;
    v25 = sub_1D682C4A0;
LABEL_22:
    v24[1] = v25;
    v29 = *(v0 + 80);
    v30 = *(v0 + 88);

    sub_1D682E394(v23, v29, v30, v7);
    return;
  }

  v31 = swift_task_alloc();
  *(v0 + 120) = v31;
  *v31 = v0;
  v31[1] = sub_1D682C310;
  v32 = *(v0 + 88);

  sub_1D682D844(v32, v7);
}

uint64_t sub_1D682C310(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_1D682C7C0;
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = sub_1D682C438;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D682C438()
{

  v1 = *(v0 + 136);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D682C4A0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = sub_1D682C824;
  }

  else
  {
    *(v4 + 160) = a1;
    v5 = sub_1D682C5C8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D682C5C8()
{

  v1 = *(v0 + 160);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D682C630(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v5 = sub_1D682C888;
  }

  else
  {
    *(v4 + 184) = a1;
    v5 = sub_1D682C758;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D682C758()
{

  v1 = *(v0 + 184);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D682C7C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D682C824()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D682C888()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D682C8EC(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    sub_1D6836948();
    swift_allocError();
    *v19 = xmmword_1D72BAA70;
    *(v19 + 16) = 7;
    swift_willThrow();
    return;
  }

  v28 = a6;
  v29 = a7;
  v33 = a8;
  sub_1D725B03C();
  swift_allocObject();
  v18 = sub_1D725A6BC();
  sub_1D725C4CC();
  sub_1D725C73C();

  if (v31)
  {
    sub_1D725C57C();

    sub_1D725C58C();
    if (v10)
    {

      return;
    }

    sub_1D725C4CC();

    sub_1D725C73C();

    v20 = v32;
    if (v32 >> 60 != 15)
    {
      sub_1D725B4FC();
      sub_1D5B8A954(&qword_1EDF17B50, MEMORY[0x1E69D6878], MEMORY[0x1E69D6888]);
      sub_1D725A69C();

      sub_1D725B07C();

      v26 = sub_1D725B74C();
      v21 = swift_allocObject();
      v27 = v31;
      *(v21 + 16) = a3;
      *(v21 + 24) = a4;
      *(v21 + 32) = a5;
      *(v21 + 40) = v28;
      v22 = v33;
      *(v21 + 48) = v29;
      *(v21 + 56) = v22;
      *(v21 + 64) = a9;
      *(v21 + 72) = a10;
      v23 = a2[3];
      *(v21 + 112) = a2[2];
      *(v21 + 128) = v23;
      v24 = a2[5];
      *(v21 + 144) = a2[4];
      *(v21 + 160) = v24;
      v25 = a2[1];
      *(v21 + 80) = *a2;
      *(v21 + 96) = v25;
      *(v21 + 176) = v18;
      sub_1D5BA739C(a2, &v30);
      swift_getAssociatedTypeWitness();

      sub_1D725BA8C();

      sub_1D5B952E4(v27, v20);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D682CCB8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1D725C4CC();
  sub_1D725C73C();

  if (!v9)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1D725C57C();

  sub_1D725C58C();

  if (v8)
  {
    return;
  }

  sub_1D725C4CC();

  sub_1D725C73C();

  if (v10 >> 60 == 15)
  {
LABEL_7:
    __break(1u);
    return;
  }

  swift_getAssociatedTypeWitness();
  sub_1D725B01C();
  sub_1D5B952E4(v9, v10);
}

void sub_1D682CE24(void *a1, _OWORD *a2, uint64_t a3)
{
  v5 = v3;
  v96 = a3;
  v8 = *v3;
  v94 = v4;
  v95 = v8;
  v9 = *a1;
  v10 = MEMORY[0x1E69E6720];
  sub_1D5B76550(0, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v93 = &v74 - v13;
  v14 = *(v9 + 88);
  v83 = a1;
  v15 = *(v9 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v92 = sub_1D726393C();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v16);
  v90 = &v74 - v17;
  sub_1D5B76550(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v10);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v87 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v88 = &v74 - v23;
  v89 = sub_1D726393C();
  v86 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89, v24);
  v85 = &v74 - v25;
  v82 = sub_1D725895C();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82, v26);
  v80 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v5[2];
  sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1D7270C10;
  sub_1D725C4CC();
  sub_1D725C73C();

  v30 = *(&v99 + 1);
  if (!*(&v99 + 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v31 = v99;
  *(v29 + 56) = MEMORY[0x1E69E6158];
  *(v29 + 64) = sub_1D5B7E2C0();
  *(v29 + 32) = v31;
  *(v29 + 40) = v30;
  type metadata accessor for FeedDatabaseGroup(0, v15, v14, v32);
  v33 = sub_1D726279C();
  v34 = MEMORY[0x1E69E65A8];
  *(v29 + 96) = MEMORY[0x1E69E6530];
  *(v29 + 104) = v34;
  *(v29 + 72) = v33;
  v35 = sub_1D7262EDC();
  sub_1D725C30C("Feed database creating %{public}@ cursor with %ld groups", 56, 2, &dword_1D5B42000, v28, v35, v29);

  type metadata accessor for FeedCursor(0, v15, v14, v36);
  LOBYTE(v99) = 4;
  v37 = v5[3];
  v38 = v14;
  v39 = v95[16];
  v40 = v95[17];

  v41 = v96;

  swift_unknownObjectRetain();
  v42 = v94;
  sub_1D72547E4(&v99, a2, v41, v37, v39, v40);
  v94 = v5;
  v44 = v43;

  swift_unknownObjectRelease();
  if (v42)
  {
    return;
  }

  v77 = v39;
  v79 = v44;
  v78 = 0;
  v45 = v96;
  sub_1D725C4CC();
  sub_1D725C73C();

  if (v97 == 2)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v47 = v38;
  v48 = v15;
  v49 = v77;
  if ((v97 & 1) != 0 && (sub_1D725C4CC(), sub_1D725C73C(), , v50 = v79, *(&v99 + 1) != 1))
  {
    sub_1D5D25B88(v99, *(&v99 + 1));
    v71 = a2[4];
    v101[2] = a2[3];
    v101[3] = v71;
    v72 = a2[6];
    v101[4] = a2[5];
    v101[5] = v72;
    v73 = a2[2];
    v101[0] = a2[1];
    v101[1] = v73;
    sub_1D682F014(v50, v101, v45);
  }

  else
  {
    Cursor = type metadata accessor for FeedNextCursor(0, v48, v47, v46);
    v51 = v80;
    sub_1D725894C();
    v75 = sub_1D725893C();
    v74 = v52;
    (*(v81 + 8))(v51, v82);
    LOBYTE(v99) = 5;
    v53 = *(v45 + 32);
    v54 = v45;
    v55 = swift_allocObject();
    swift_weakInit();
    v56 = swift_allocObject();
    v57 = v95;
    v56[2] = v95[14];
    v56[3] = v57[15];
    v56[4] = v49;
    v56[5] = v40;
    v56[6] = v55;
    v58 = v83;
    v56[7] = v54;
    v56[8] = v58;
    v59 = v79;
    v56[9] = a2;
    v56[10] = v59;

    v60 = sub_1D6F799C4(v75, v74, &v99, v53, &unk_1D72F5B10, v56);

    v61 = v85;
    (*(*(v48 - 8) + 56))(v85, 1, 1, v48);
    v102 = 7;
    v62 = sub_1D725891C();
    v63 = *(*(v62 - 8) + 56);
    v64 = v88;
    v63(v88, 1, 1, v62);
    v65 = v87;
    v63(v87, 1, 1, v62);
    v66 = v90;
    (*(*(AssociatedTypeWitness - 8) + 56))(v90, 1, 1);
    v67 = type metadata accessor for FeedContext(0);
    v68 = v93;
    (*(*(v67 - 8) + 56))(v93, 1, 1, v67);
    v100 = 0;
    v99 = 0u;
    v97 = 0;
    v98 = 256;
    FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v61, 0, &v102, v64, v65, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, v66, v68, &v99, &v97, 0, 0, v60);

    v69 = MEMORY[0x1E69E6720];
    sub_1D5BA2558(v68, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B76550);
    (*(v91 + 8))(v66, v92);
    v70 = MEMORY[0x1E6969530];
    sub_1D5BA2558(v65, &qword_1EDF45B00, MEMORY[0x1E6969530], v69, sub_1D5B76550);
    sub_1D5BA2558(v64, &qword_1EDF45B00, v70, v69, sub_1D5B76550);
    (*(v86 + 8))(v61, v89);
  }
}

uint64_t sub_1D682D844(uint64_t *a1, uint64_t a2)
{
  v3[33] = a2;
  v3[34] = v2;
  v3[32] = a1;
  v3[35] = *v2;
  v4 = *a1;
  v3[36] = *(*a1 + 88);
  v5 = *(v4 + 80);
  v3[37] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[38] = AssociatedTypeWitness;
  v3[39] = *(AssociatedTypeWitness - 8);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = *(v5 - 8);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D682D9E0, 0, 0);
}

void sub_1D682D9E0()
{
  v54 = v0;
  v1 = *(v0 + 256);
  v2 = *(*(v0 + 272) + 16);
  sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7270C10;
  sub_1D725C4CC();
  sub_1D725C73C();

  v4 = *(v0 + 216);
  if (v4)
  {
    v6 = *(v0 + 288);
    v5 = *(v0 + 296);
    v7 = *(v0 + 256);
    v8 = *(v0 + 208);
    *(v3 + 56) = MEMORY[0x1E69E6158];
    *(v3 + 64) = sub_1D5B7E2C0();
    *(v3 + 32) = v8;
    *(v3 + 40) = v4;
    v9 = *(v7 + 112);
    type metadata accessor for FeedDatabaseGroup(0, v5, v6, v10);
    v11 = sub_1D726279C();
    v12 = MEMORY[0x1E69E65A8];
    *(v3 + 96) = MEMORY[0x1E69E6530];
    *(v3 + 104) = v12;
    *(v3 + 72) = v11;
    v13 = sub_1D7262EDC();
    sub_1D725C30C("Feed database creating %{public}@ cursor with %ld groups", 56, 2, &dword_1D5B42000, v2, v13, v3);

    *(v0 + 240) = v9;
    sub_1D72627FC();
    swift_getWitnessTable();
    if (sub_1D7262CCC())
    {
      sub_1D6D9BC10(*(v0 + 352));
      v47 = *(v0 + 344);
      v15 = *(v0 + 328);
      v16 = *(v0 + 312);
      v17 = *(v0 + 320);
      v19 = *(v0 + 296);
      v18 = *(v0 + 304);
      v20 = *(v0 + 280);
      v21 = *(v0 + 288);
      v48 = *(v0 + 264);
      v50 = *(v0 + 256);
      v52 = *(v0 + 336);
      (*(v21 + 64))(v19, v21);
      v49 = *(v20 + 96);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      FeedContentConfigType.seenContentMarker()(v18, AssociatedConformanceWitness, v15);
      v23 = *(v16 + 8);
      v23(v17, v18);
      (*(v21 + 160))(v15, v19, v21);
      v23(v15, v18);
      v24 = swift_allocBox();
      (*(v52 + 16))(v25, v47, v19);
      *(v0 + 248) = v24 | 0x1000000000000000;
      v26 = *(v48 + 24);
      v27 = swift_allocObject();
      *(v0 + 360) = v27;
      *(v27 + 16) = *(v20 + 112);
      *(v27 + 24) = *(v20 + 120);
      *(v27 + 40) = *(v20 + 136);
      *(v27 + 48) = v50;
      *(v27 + 56) = v48;
      v28 = *(v49 + 40);
      v29 = *(v20 + 80);

      v51 = (v28 + *v28);
      v30 = swift_task_alloc();
      *(v0 + 368) = v30;
      *v30 = v0;
      v30[1] = sub_1D682DFC0;

      (v51)(v0 + 224, v0 + 248, v26, sub_1D6837658, v27, v29, v49);
    }

    else
    {
      v31 = *(v0 + 272);
      v32 = *(v0 + 280);
      v34 = *(v0 + 256);
      v33 = *(v0 + 264);
      type metadata accessor for FeedCursor(0, *(v0 + 296), *(v0 + 288), v14);
      v53[0] = 1;
      v35 = *(v31 + 24);
      v36 = *(v32 + 128);
      v37 = *(v32 + 136);

      swift_unknownObjectRetain();
      sub_1D72547E4(v53, v34, v33, v35, v36, v37);
      v38 = *(v0 + 264);
      v40 = v39;
      swift_unknownObjectRelease();

      v41 = v1[2];
      *(v0 + 16) = v1[1];
      *(v0 + 32) = v41;
      v42 = v1[3];
      v43 = v1[4];
      v44 = v1[6];
      *(v0 + 80) = v1[5];
      *(v0 + 96) = v44;
      *(v0 + 48) = v42;
      *(v0 + 64) = v43;
      v45 = sub_1D682F014(v40, v0 + 16, v38);

      v46 = *(v0 + 8);

      v46(v45);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D682DFC0()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_1D682E2D8;
  }

  else
  {
    v2 = sub_1D682E0F0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D682E0F0()
{
  v1 = *(v0 + 376);
  sub_1D68372C8(*(v0 + 224));
  v2 = v1;
  v4 = *(v0 + 344);
  v3 = *(v0 + 352);
  v5 = *(v0 + 336);
  v6 = *(v0 + 296);
  if (v2)
  {

    v7 = *(v5 + 8);
    v7(v4, v6);
    v7(v3, v6);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 264);
    v11 = *(v0 + 256);
    v12 = v11[2];
    *(v0 + 112) = v11[1];
    *(v0 + 128) = v12;
    v13 = v11[6];
    v15 = v11[3];
    v14 = v11[4];
    *(v0 + 176) = v11[5];
    *(v0 + 192) = v13;
    *(v0 + 144) = v15;
    *(v0 + 160) = v14;

    v17 = sub_1D682F014(v16, v0 + 112, v10);

    v18 = *(v5 + 8);
    v18(v4, v6);
    v18(v3, v6);

    v19 = *(v0 + 8);

    return v19(v17);
  }
}

uint64_t sub_1D682E2D8()
{
  v1 = v0[44];
  v2 = v0[37];
  v3 = *(v0[42] + 8);
  v3(v0[43], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D682E394(_BYTE *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  *(v5 + 176) = a4;
  *(v5 + 184) = v6;
  *(v5 + 160) = a2;
  *(v5 + 168) = a3;
  *(v5 + 192) = *v6;
  v8 = *a2;
  v9 = MEMORY[0x1E69E6720];
  sub_1D5B76550(0, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720]);
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = *(v8 + 88);
  *(v5 + 216) = *(v8 + 80);
  *(v5 + 224) = swift_getAssociatedTypeWitness();
  v10 = sub_1D726393C();
  *(v5 + 232) = v10;
  *(v5 + 240) = *(v10 - 8);
  *(v5 + 248) = swift_task_alloc();
  sub_1D5B76550(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v9);
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  v11 = sub_1D726393C();
  *(v5 + 272) = v11;
  *(v5 + 280) = *(v11 - 8);
  *(v5 + 288) = swift_task_alloc();
  v12 = sub_1D725895C();
  *(v5 + 296) = v12;
  *(v5 + 304) = *(v12 - 8);
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 321) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1D682E664, 0, 0);
}

void sub_1D682E664()
{
  v76 = v0;
  v1 = *(v0 + 168);
  v69 = *(*(v0 + 184) + 16);
  sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D7270C10;
  v65 = v1;
  sub_1D725C4CC();
  sub_1D725C73C();

  v3 = *(v0 + 120);
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v9 = *(v0 + 168);
  v8 = *(v0 + 176);
  v10 = *(v0 + 112);
  *(v2 + 56) = MEMORY[0x1E69E6158];
  v67 = sub_1D5B7E2C0();
  *(v2 + 64) = v67;
  *(v2 + 32) = v10;
  *(v2 + 40) = v3;
  type metadata accessor for FeedDatabaseGroup(0, v4, v5, v11);
  v12 = sub_1D726279C();
  v13 = MEMORY[0x1E69E65A8];
  *(v2 + 96) = MEMORY[0x1E69E6530];
  *(v2 + 104) = v13;
  *(v2 + 72) = v12;
  v14 = sub_1D7262EDC();
  sub_1D725C30C("Feed database creating %{public}@ cursor with %ld groups", 56, 2, &dword_1D5B42000, v69, v14, v2);

  type metadata accessor for FeedCursor(0, v4, v5, v15);
  LOBYTE(v72) = 4;
  v16 = *(v7 + 24);
  v18 = *(v6 + 128);
  v17 = *(v6 + 136);

  swift_unknownObjectRetain();
  sub_1D72547E4(&v72, v9, v8, v16, v18, v17);
  v19 = MEMORY[0x1E69E6158];
  v62 = v20;
  swift_unknownObjectRelease();

  sub_1D725C4CC();
  sub_1D725C73C();

  v22 = *(v0 + 320);
  if (v22 == 2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v22)
  {
    sub_1D725C4CC();
    sub_1D725C73C();

    v23 = *(v0 + 136);
    if (v23 != 1)
    {
      sub_1D5D25B88(*(v0 + 128), v23);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1D7273AE0;
      sub_1D725C4CC();
      sub_1D725C73C();

      v43 = *(v0 + 152);
      if (v43)
      {
        v44 = *(v0 + 176);
        v45 = *(v0 + 144);
        *(v42 + 56) = v19;
        *(v42 + 64) = v67;
        *(v42 + 32) = v45;
        *(v42 + 40) = v43;
        v46 = sub_1D7262EDC();
        sub_1D725C30C("Feed database creating %{public}@ cursor that has reached the end, chain next", 77, 2, &dword_1D5B42000, v69, v46, v42);

        v47 = v65[2];
        *(v0 + 16) = v65[1];
        *(v0 + 32) = v47;
        v48 = v65[3];
        v49 = v65[4];
        v50 = v65[6];
        *(v0 + 80) = v65[5];
        *(v0 + 96) = v50;
        *(v0 + 48) = v48;
        *(v0 + 64) = v49;
        v39 = sub_1D682F014(v62, v0 + 16, v44);

        goto LABEL_8;
      }

LABEL_13:
      __break(1u);
      return;
    }
  }

  v52 = *(v0 + 321);
  v24 = *(v0 + 304);
  v25 = *(v0 + 312);
  v26 = *(v0 + 296);
  v66 = *(v0 + 280);
  v68 = *(v0 + 272);
  v70 = *(v0 + 288);
  v57 = *(v0 + 264);
  v60 = *(v0 + 248);
  v63 = *(v0 + 240);
  v64 = *(v0 + 232);
  v58 = *(v0 + 256);
  v59 = *(v0 + 224);
  v56 = *(v0 + 216);
  v27 = *(v0 + 192);
  v61 = *(v0 + 200);
  v28 = *(v0 + 176);
  v29 = *(v0 + 168);
  v53 = *(v0 + 160);
  type metadata accessor for FeedNextCursor(0, v56, *(v0 + 208), v21);
  sub_1D725894C();
  v30 = sub_1D725893C();
  v54 = v31;
  v55 = v30;
  (*(v24 + 8))(v25, v26);
  LOBYTE(v72) = v52;
  v32 = *(v28 + 32);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = *(v27 + 112);
  *(v34 + 24) = *(v27 + 120);
  *(v34 + 32) = v18;
  *(v34 + 40) = v17;
  *(v34 + 48) = v33;
  *(v34 + 56) = v29;
  *(v34 + 64) = v53;
  *(v34 + 72) = v62;
  *(v34 + 80) = v28;
  *(v34 + 88) = v52;

  v35 = sub_1D6F799C4(v55, v54, &v72, v32, &unk_1D72F5B20, v34);

  (*(*(v56 - 8) + 56))(v70, 1, 1);
  v71 = 7;
  v36 = sub_1D725891C();
  v37 = *(*(v36 - 8) + 56);
  v37(v57, 1, 1, v36);
  v37(v58, 1, 1, v36);
  (*(*(v59 - 8) + 56))(v60, 1, 1);
  v38 = type metadata accessor for FeedContext(0);
  (*(*(v38 - 8) + 56))(v61, 1, 1, v38);
  v73 = 0;
  v74 = 0;
  v72 = 0u;
  v75 = 256;
  v39 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v70, 0, &v71, v57, v58, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, v60, v61, &v72, &v74, 0, 0, v35);

  v40 = MEMORY[0x1E69E6720];
  sub_1D5BA2558(v61, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B76550);
  (*(v63 + 8))(v60, v64);
  v41 = MEMORY[0x1E6969530];
  sub_1D5BA2558(v58, &qword_1EDF45B00, MEMORY[0x1E6969530], v40, sub_1D5B76550);
  sub_1D5BA2558(v57, &qword_1EDF45B00, v41, v40, sub_1D5B76550);
  (*(v66 + 8))(v70, v68);
LABEL_8:

  v51 = *(v0 + 8);

  v51(v39);
}

char *sub_1D682EEB4(_OWORD *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v9 = *v4;
  type metadata accessor for FeedCursor(0, *(*a1 + 80), *(*a1 + 88), a4);
  v20 = 4;
  v10 = *(v6 + 3);
  v11 = *(v9 + 128);
  v12 = *(v9 + 136);

  swift_unknownObjectRetain();
  sub_1D72547E4(&v20, a1, a2, v10, v11, v12);
  v14 = v13;

  swift_unknownObjectRelease();
  if (!v5)
  {
    v15 = a1[4];
    v19[2] = a1[3];
    v19[3] = v15;
    v16 = a1[6];
    v19[4] = a1[5];
    v19[5] = v16;
    v17 = a1[2];
    v19[0] = a1[1];
    v19[1] = v17;
    v6 = sub_1D682F014(v14, v19, a2);
  }

  return v6;
}

char *sub_1D682F014(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a1;
  v72 = *v3;
  v73 = a3;
  v6 = *a1;
  v7 = MEMORY[0x1E69E6720];
  sub_1D5B76550(0, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v65 - v10;
  v12 = *(v6 + 88);
  v13 = *(v6 + 80);
  v71 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1D726393C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v65 - v17;
  sub_1D5B76550(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v7);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v77 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v65 - v24;
  v26 = sub_1D726393C();
  v76 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v75 = &v65 - v28;
  sub_1D725C4CC();
  sub_1D725C73C();

  v29 = *(&v80 + 1);
  if (*(&v80 + 1) >= 2uLL)
  {
    v70 = v26;
    v35 = v80;
    v66 = v25;
    v36 = v4[2];
    sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v37 = swift_allocObject();
    v69 = v14;
    v38 = v37;
    *(v37 + 16) = xmmword_1D7270C10;
    v65 = v18;
    v67 = v11;
    v68 = v15;
    v40 = *(v5 + 2);
    v39 = *(v5 + 3);
    v41 = MEMORY[0x1E69E6158];
    *(v37 + 56) = MEMORY[0x1E69E6158];
    v42 = sub_1D5B7E2C0();
    v38[4] = v40;
    v38[5] = v39;
    v38[12] = v41;
    v38[13] = v42;
    v38[8] = v42;
    v38[9] = v35;
    v38[10] = v29;

    sub_1D5D64C6C(v35, v29);
    v43 = sub_1D7262EDC();
    sub_1D725C30C("Feed database async chaining %{public}@ cursor to next cursor %{public}@", 72, 2, &dword_1D5B42000, v36, v43, v38);

    type metadata accessor for FeedNextCursor(0, v13, v71, v44);
    LOBYTE(v80) = 7;
    v45 = v73;
    v46 = *(v73 + 32);
    v47 = swift_allocObject();
    swift_weakInit();
    v48 = swift_allocObject();
    v49 = v72;
    *(v48 + 16) = *(v72 + 112);
    *(v48 + 24) = *(v49 + 120);
    *(v48 + 40) = *(v49 + 136);
    *(v48 + 48) = v47;
    *(v48 + 56) = v35;
    *(v48 + 64) = v29;
    *(v48 + 72) = v45;
    sub_1D5D64C6C(v35, v29);

    v50 = sub_1D6F799C4(v35, v29, &v80, v46, &unk_1D72F5AD8, v48);

    v51 = v75;
    (*(*(v13 - 8) + 56))(v75, 1, 1, v13);
    v82[0] = 7;
    v52 = sub_1D725891C();
    v53 = *(*(v52 - 8) + 56);
    v54 = v66;
    v53(v66, 1, 1, v52);
    v55 = v77;
    v53(v77, 1, 1, v52);
    v56 = v65;
    (*(*(AssociatedTypeWitness - 8) + 56))(v65, 1, 1);
    v57 = type metadata accessor for FeedContext(0);
    v58 = v67;
    (*(*(v57 - 8) + 56))(v67, 1, 1, v57);
    v81 = 0;
    v80 = 0u;
    v78 = 0;
    v79 = 256;
    v64 = v58;
    v59 = v58;
    v60 = v56;
    v5 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v51, 0, v82, v54, v55, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, v56, v64, &v80, &v78, 0, 0, v50);

    v61 = MEMORY[0x1E69E6720];
    sub_1D5BA2558(v59, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B76550);
    (*(v68 + 8))(v60, v69);
    v62 = MEMORY[0x1E6969530];
    sub_1D5BA2558(v55, &qword_1EDF45B00, MEMORY[0x1E6969530], v61, sub_1D5B76550);
    sub_1D5BA2558(v54, &qword_1EDF45B00, v62, v61, sub_1D5B76550);
    (*(v76 + 8))(v51, v70);
  }

  else
  {
    v30 = v4[2];
    sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1D7273AE0;
    v33 = *(v5 + 2);
    v32 = *(v5 + 3);
    *(v31 + 56) = MEMORY[0x1E69E6158];
    *(v31 + 64) = sub_1D5B7E2C0();
    *(v31 + 32) = v33;
    *(v31 + 40) = v32;

    v34 = sub_1D7262EDC();
    sub_1D725C30C("Feed database chaining %{public}@ cursor to next cursor empty", 61, 2, &dword_1D5B42000, v30, v34, v31);
  }

  return v5;
}