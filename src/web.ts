import { WebPlugin } from '@capacitor/core';

import {
  ConferenceOptions,
  PrivacyOptions,
  VidyoPlatformPlugin,
} from './definitions';

export class VidyoPlatformWeb extends WebPlugin implements VidyoPlatformPlugin {
  setPrivacy(_option: PrivacyOptions): Promise<void> {
    throw new Error('Method not implemented.');
  }
  cycleCamera(): Promise<void> {
    throw new Error('Method not implemented.');
  }
  openConference(_option: ConferenceOptions): Promise<void> {
    throw new Error('Method not implemented.');
  }
  closeConference(): Promise<void> {
    throw new Error('Method not implemented.');
  }
  connect(): Promise<void> {
    throw new Error('Method not implemented.');
  }
  disconnect(): Promise<void> {
    throw new Error('Method not implemented.');
  }
}
