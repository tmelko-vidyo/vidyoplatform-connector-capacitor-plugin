import { registerPlugin } from '@capacitor/core';

import type { VidyoPlatformPlugin } from './definitions';

const VidyoPlatform = registerPlugin<VidyoPlatformPlugin>('VidyoPlatform', {
  web: () => import('./web').then(m => new m.VidyoPlatformWeb()),
});

export * from './definitions';
export { VidyoPlatform };
