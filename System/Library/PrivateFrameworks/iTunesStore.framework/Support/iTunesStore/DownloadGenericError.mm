@interface DownloadGenericError
- (BOOL)_isInstallError:(id)error;
- (BOOL)canCoalesceWithError:(id)error;
- (DownloadGenericError)initWithError:(id)error;
- (id)_notificationBody;
- (id)_notificationTitle;
- (id)copyUserNotification;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)performActionForResponseFlags:(unint64_t)flags;
@end

@implementation DownloadGenericError

- (DownloadGenericError)initWithError:(id)error
{
  v6.receiver = self;
  v6.super_class = DownloadGenericError;
  v4 = [(DownloadGenericError *)&v6 init];
  if (v4)
  {
    v4->_error = error;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DownloadGenericError;
  [(DownloadError *)&v3 dealloc];
}

- (BOOL)canCoalesceWithError:(id)error
{
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    downloadKind = [(DownloadError *)self downloadKind];
    if (downloadKind == [error downloadKind] || (v6 = -[NSString isEqual:](-[DownloadError downloadKind](self, "downloadKind"), "isEqual:", objc_msgSend(error, "downloadKind"))) != 0)
    {
      v8 = [(DownloadGenericError *)self _isInstallError:[(DownloadGenericError *)self error]];
      LOBYTE(v6) = v8 ^ -[DownloadGenericError _isInstallError:](self, "_isInstallError:", [error error]) ^ 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)copyUserNotification
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  _notificationTitle = [(DownloadGenericError *)self _notificationTitle];
  if ([_notificationTitle length])
  {
    CFDictionarySetValue(Mutable, kCFUserNotificationAlertHeaderKey, _notificationTitle);
  }

  _notificationBody = [(DownloadGenericError *)self _notificationBody];
  if ([_notificationBody length])
  {
    CFDictionarySetValue(Mutable, kCFUserNotificationAlertMessageKey, _notificationBody);
  }

  v6 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"DOWNLOAD_FAILED_DONE", &stru_10033CC30, 0];
  CFDictionarySetValue(Mutable, kCFUserNotificationAlternateButtonTitleKey, v6);
  v7 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"DOWNLOAD_FAILED_RETRY", &stru_10033CC30, 0];
  CFDictionarySetValue(Mutable, kCFUserNotificationDefaultButtonTitleKey, v7);
  CFDictionarySetValue(Mutable, SBUserNotificationDefaultButtonTag, [NSNumber numberWithInt:1]);
  v8 = [[ISUserNotification alloc] initWithDictionary:Mutable options:3];
  CFRelease(Mutable);
  return v8;
}

- (void)performActionForResponseFlags:(unint64_t)flags
{
  if (flags == 1)
  {
    if (MGGetSInt32Answer() != 4)
    {
      return;
    }

    v13 = +[SSLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      LODWORD(v15) = shouldLog | 2;
    }

    else
    {
      LODWORD(v15) = shouldLog;
    }

    oSLogObject = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v15 = v15;
    }

    else
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v23 = 138412290;
      v24 = objc_opt_class();
      v17 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Cancel downloads from error alert", &v23, 12);
      if (v17)
      {
        v18 = v17;
        v19 = [NSString stringWithCString:v17 encoding:4];
        free(v18);
        v20 = v19;
        SSFileLog();
      }
    }

    v11 = +[DownloadsDatabase downloadsDatabase];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100186E54;
    v21[3] = &unk_100329E90;
    v21[4] = self;
    v12 = v21;
  }

  else
  {
    if (flags)
    {
      return;
    }

    v4 = +[SSLogConfig sharedDaemonConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      LODWORD(v6) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v6) = shouldLog2;
    }

    oSLogObject2 = [v4 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v6 = v6;
    }

    else
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v23 = 138412290;
      v24 = objc_opt_class();
      v8 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: Retry downloads from error alert", &v23, 12);
      if (v8)
      {
        v9 = v8;
        v10 = [NSString stringWithCString:v8 encoding:4];
        free(v9);
        v20 = v10;
        SSFileLog();
      }
    }

    v11 = +[DownloadsDatabase downloadsDatabase];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100186E44;
    v22[3] = &unk_100329E90;
    v22[4] = self;
    v12 = v22;
  }

  [v11 modifyUsingTransactionBlock:v12];
}

- (BOOL)_isInstallError:(id)error
{
  domain = [error domain];
  if ([domain isEqualToString:MIInstallerErrorDomain])
  {
    return 1;
  }

  return ISErrorIsEqual();
}

- (id)_notificationBody
{
  if (self->super._downloadTitle)
  {
    v3 = [(DownloadGenericError *)self _isInstallError:self->_error];
    v4 = [(NSMutableOrderedSet *)self->super._downloadIdentifiers count];
    v5 = [NSString alloc];
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    if (v3)
    {
      if (v4 == 2)
      {
        v8 = @"INSTALL_FAILED_BODY_FORMAT_ONE_%@";
        goto LABEL_14;
      }

      v7 = v4 - 1;
      if (!v7)
      {
        v8 = @"INSTALL_FAILED_BODY_FORMAT_%@";
LABEL_14:
        v14 = [(NSBundle *)v6 localizedStringForKey:v8 value:&stru_10033CC30 table:0];
        downloadTitle = self->super._downloadTitle;
LABEL_18:
        v10 = [v5 initWithFormat:v14, downloadTitle, v18];
        goto LABEL_19;
      }

      v16 = @"INSTALL_FAILED_BODY_FORMAT_PLURAL_%@_%ld";
    }

    else
    {
      if (v4 == 2)
      {
        v8 = @"DOWNLOAD_FAILED_BODY_FORMAT_ONE_%@";
        goto LABEL_14;
      }

      v7 = v4 - 1;
      if (!v7)
      {
        v8 = @"DOWNLOAD_FAILED_BODY_FORMAT_%@";
        goto LABEL_14;
      }

      v16 = @"DOWNLOAD_FAILED_BODY_FORMAT_PLURAL_%@_%ld";
    }

    v14 = [(NSBundle *)v6 localizedStringForKey:v16 value:&stru_10033CC30 table:0];
    downloadTitle = self->super._downloadTitle;
    v18 = v7;
    goto LABEL_18;
  }

  v9 = [(NSMutableOrderedSet *)self->super._downloadIdentifiers count];
  if (v9 != 1)
  {
    v11 = v9;
    v12 = objc_alloc_init(NSNumberFormatter);
    [v12 setNumberStyle:1];
    v13 = [[NSString alloc] initWithFormat:-[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"DOWNLOAD_FAILED_BODY_GENERIC_PLURAL_%@", &stru_10033CC30, 0), objc_msgSend(v12, "stringFromNumber:", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v11))];

    goto LABEL_20;
  }

  v10 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"DOWNLOAD_FAILED_BODY_GENERIC", &stru_10033CC30, 0];
LABEL_19:
  v13 = v10;
LABEL_20:

  return v13;
}

- (id)_notificationTitle
{
  v3 = [(NSMutableOrderedSet *)self->super._downloadIdentifiers count];
  if ([(NSString *)self->super._downloadKind isEqualToString:SSDownloadKindAudiobook])
  {
    v4 = @"DOWNLOAD_FAILED_TITLE_AUDIOBOOK";
    v5 = @"DOWNLOAD_FAILED_TITLE_AUDIOBOOK_PLURAL";
    goto LABEL_8;
  }

  if ([(NSString *)self->super._downloadKind isEqualToString:SSDownloadKindMovie])
  {
    v4 = @"DOWNLOAD_FAILED_TITLE_MOVIE";
    v5 = @"DOWNLOAD_FAILED_TITLE_MOVIE_PLURAL";
    goto LABEL_8;
  }

  if ([(NSString *)self->super._downloadKind isEqualToString:SSDownloadKindMusic]|| [(NSString *)self->super._downloadKind isEqualToString:SSDownloadKindCoachedAudio])
  {
    v4 = @"DOWNLOAD_FAILED_TITLE_SONG";
    v5 = @"DOWNLOAD_FAILED_TITLE_SONG_PLURAL";
    goto LABEL_8;
  }

  if ([(NSString *)self->super._downloadKind isEqualToString:SSDownloadKindMusicVideo])
  {
    v4 = @"DOWNLOAD_FAILED_TITLE_MUSIC_VIDEO";
    v5 = @"DOWNLOAD_FAILED_TITLE_MUSIC_VIDEO_PLURAL";
    goto LABEL_8;
  }

  if ([(NSString *)self->super._downloadKind isEqualToString:SSDownloadKindPodcast])
  {
    goto LABEL_17;
  }

  if ([(NSString *)self->super._downloadKind isEqualToString:SSDownloadKindRingtone])
  {
    v4 = @"DOWNLOAD_FAILED_TITLE_RINGTONE";
    v5 = @"DOWNLOAD_FAILED_TITLE_RINGTONE_PLURAL";
  }

  else if ([(NSString *)self->super._downloadKind isEqualToString:SSDownloadKindSoftwareApplication])
  {
    v4 = @"DOWNLOAD_FAILED_TITLE_APPLICATION";
    v5 = @"DOWNLOAD_FAILED_TITLE_APPLICATION_PLURAL";
  }

  else if ([(NSString *)self->super._downloadKind isEqualToString:SSDownloadKindTelevisionEpisode])
  {
    v4 = @"DOWNLOAD_FAILED_TITLE_TV";
    v5 = @"DOWNLOAD_FAILED_TITLE_TV_PLURAL";
  }

  else if ([(NSString *)self->super._downloadKind isEqualToString:SSDownloadKindTone])
  {
    v4 = @"DOWNLOAD_FAILED_TITLE_TONE";
    v5 = @"DOWNLOAD_FAILED_TITLE_TONE_PLURAL";
  }

  else
  {
    if ([(NSString *)self->super._downloadKind isEqualToString:SSDownloadKindVideoPodcast])
    {
LABEL_17:
      v4 = @"DOWNLOAD_FAILED_TITLE_PODCAST";
      v5 = @"DOWNLOAD_FAILED_TITLE_PODCAST_PLURAL";
      goto LABEL_8;
    }

    v4 = @"DOWNLOAD_FAILED_TITLE_GENERIC";
    v5 = @"DOWNLOAD_FAILED_TITLE_GENERIC_PLURAL";
  }

LABEL_8:
  if (v3 <= 1)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = [NSBundle bundleForClass:objc_opt_class()];

  return [(NSBundle *)v7 localizedStringForKey:v6 value:&stru_10033CC30 table:0];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = DownloadGenericError;
  v5 = [(DownloadError *)&v7 copyWithZone:?];
  v5[5] = [(NSError *)self->_error copyWithZone:zone];
  return v5;
}

@end