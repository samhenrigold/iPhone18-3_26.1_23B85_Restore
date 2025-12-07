void sub_100000D68(uint64_t a1)
{
  v2 = [[PKPassView alloc] initWithPass:*(a1 + 32) content:5];
  [v2 setSuppressedContent:512];
  [v2 layoutIfNeeded];
  [v2 sizeOfFront];
  PKSizeAspectFit();
  v4 = v3;
  v6 = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100000E84;
  v9[3] = &unk_100004100;
  v10 = v2;
  v11 = v3;
  v12 = v5;
  v7 = v2;
  v8 = [QLThumbnailReply replyWithContextSize:v9 currentContextDrawingBlock:v4, v6];
  (*(*(a1 + 40) + 16))();
}