@interface UISDisplaySingleRectShape
+ (id)clb_displayShapeForScreenType:(unint64_t)type;
+ (id)clb_thisDeviceDisplayShape;
@end

@implementation UISDisplaySingleRectShape

+ (id)clb_thisDeviceDisplayShape
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020FD0;
  block[3] = &unk_1002FC8C8;
  block[4] = self;
  if (qword_100331140 != -1)
  {
    dispatch_once(&qword_100331140, block);
  }

  v2 = qword_100331148;

  return v2;
}

+ (id)clb_displayShapeForScreenType:(unint64_t)type
{
  v5 = sub_100021020(type, v3);
  if (type <= 0x10 && ((1 << type) & 0x18600) != 0)
  {
    v5 = v5 * 1.04166667;
  }

  v6 = 0.0;
  v7 = 90.0;
  v8 = 627.0;
  v9 = 249.0;
  switch(type)
  {
    case 3uLL:
    case 4uLL:
      goto LABEL_18;
    case 5uLL:
    case 6uLL:
      v8 = 628.0;
      v9 = 307.0;
      goto LABEL_18;
    case 7uLL:
    case 8uLL:
      v7 = 64.0;
      v8 = 454.0;
      v9 = 187.0;
      goto LABEL_18;
    case 9uLL:
    case 0xAuLL:
      v7 = 103.0;
      v8 = 678.0;
      v9 = 223.5;
      goto LABEL_18;
    case 0xBuLL:
    case 0xCuLL:
      v7 = 96.0;
      v8 = 630.0;
      v9 = 270.0;
      goto LABEL_18;
    case 0xDuLL:
    case 0xEuLL:
      v7 = 96.0;
      v8 = 628.0;
      v9 = 328.0;
      goto LABEL_18;
    case 0xFuLL:
    case 0x10uLL:
      v7 = 112.0;
      v8 = 522.0;
      v9 = 301.5;
      goto LABEL_18;
    case 0x11uLL:
    case 0x12uLL:
      v7 = 101.0;
      v8 = 484.0;
      v9 = 343.0;
      goto LABEL_18;
    case 0x13uLL:
    case 0x14uLL:
      v7 = 101.0;
      v8 = 484.0;
      v9 = 400.0;
      goto LABEL_18;
    case 0x15uLL:
    case 0x16uLL:
      v7 = 110.0;
      v8 = 375.0;
      v6 = 34.0;
      v9 = 402.0;
      goto LABEL_18;
    case 0x17uLL:
    case 0x18uLL:
      v7 = 110.0;
      v8 = 376.0;
      v6 = 34.0;
      v9 = 457.0;
      goto LABEL_18;
    case 0x19uLL:
    case 0x1AuLL:
      v7 = 110.0;
      v8 = 375.0;
      v6 = 42.0;
      v9 = 415.0;
      goto LABEL_18;
    case 0x1BuLL:
    case 0x1CuLL:
      v7 = 110.0;
      v8 = 376.0;
      v6 = 42.0;
      v9 = 472.0;
      goto LABEL_18;
    case 0x1DuLL:
    case 0x1EuLL:
      v7 = 110.0;
      v8 = 376.0;
      v6 = 60.0;
      v9 = 442.0;
LABEL_18:
      v17.origin.x = v9;
      v17.origin.y = v6;
      v17.size.width = v8;
      v17.size.height = v7;
      v10 = CGRectGetMinX(v17) / v5;
      v18.origin.x = v9;
      v18.origin.y = v6;
      v18.size.width = v8;
      v18.size.height = v7;
      v11 = CGRectGetMinY(v18) / v5;
      v19.origin.x = v9;
      v19.origin.y = v6;
      v19.size.width = v8;
      v19.size.height = v7;
      v12 = CGRectGetWidth(v19) / v5;
      v20.origin.x = v9;
      v20.origin.y = v6;
      v20.size.width = v8;
      v20.size.height = v7;
      v13 = [[UISDisplaySingleRectShape alloc] initWithRect:{v10, v11, v12, CGRectGetHeight(v20) / v5}];
      break;
    default:
      if (sub_100027FB0(type) && !sub_100027F78(type))
      {
        v15 = +[CLFLog commonLog];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_1002853B4(type, v15);
        }
      }

      v13 = 0;
      break;
  }

  return v13;
}

@end