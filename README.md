# VidyoPlatform Capacitor Plugin [iOS PART NOT WORKING]

Capacitor Plugin for VidyoPlatform Connector App

### Clone 

    $ git clone https://github.com/tmelko-vidyo/vidyoplatform-connector-plugin.git

### Add VidyoClient SDK

1. Download and unzip Android & iOS https://developer.vidyo.io/#/packages
2. Copy /VidyoClient-AndroidSDK/lib/android content to /vidyoplatform-connector-plugin/android/lib/
3. Copy /VidyoClient-iOSSDK/lib/ios/VidyoClientIOS.framework to /vidyoplatform-connector-plugin/ios
4. Build plugin:

       $ cd vidyoplatform-connector-plugin
       $ npm run build

## Install

```bash
npm install vidyoplatform-connector-plugin
npx cap sync
```

## API

<docgen-index>

* [`openConference(...)`](#openconference)
* [`closeConference()`](#closeconference)
* [`connect()`](#connect)
* [`disconnect()`](#disconnect)
* [`setPrivacy(...)`](#setprivacy)
* [`cycleCamera()`](#cyclecamera)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### openConference(...)

```typescript
openConference(option: ConferenceOptions) => any
```

| Param        | Type                                                            |
| ------------ | --------------------------------------------------------------- |
| **`option`** | <code><a href="#conferenceoptions">ConferenceOptions</a></code> |

**Returns:** <code>any</code>

--------------------


### closeConference()

```typescript
closeConference() => any
```

**Returns:** <code>any</code>

--------------------


### connect()

```typescript
connect() => any
```

**Returns:** <code>any</code>

--------------------


### disconnect()

```typescript
disconnect() => any
```

**Returns:** <code>any</code>

--------------------


### setPrivacy(...)

```typescript
setPrivacy(option: PrivacyOptions) => any
```

| Param        | Type                                                      |
| ------------ | --------------------------------------------------------- |
| **`option`** | <code><a href="#privacyoptions">PrivacyOptions</a></code> |

**Returns:** <code>any</code>

--------------------


### cycleCamera()

```typescript
cycleCamera() => any
```

**Returns:** <code>any</code>

--------------------


### Interfaces


#### ConferenceOptions

| Prop                  | Type                |
| --------------------- | ------------------- |
| **`portal`**          | <code>string</code> |
| **`roomKey`**         | <code>string</code> |
| **`pin`**             | <code>string</code> |
| **`name`**            | <code>string</code> |
| **`maxParticipants`** | <code>number</code> |
| **`logLevel`**        | <code>string</code> |


#### PrivacyOptions

| Prop          | Type                 |
| ------------- | -------------------- |
| **`device`**  | <code>string</code>  |
| **`privacy`** | <code>boolean</code> |

</docgen-api>

### Callback [Example]

Common event name: *VidyoEventCallback*

Response: [Object] with possible params:
- type: even type to differentiate [init, connected, disconnected, failed, participant]
- status: initialization status
- reason: failed or disconnected reason
- action: participant left or join action
- name: participant name

```
  VidyoPluginListener.addListener('VidyoEventCallback', (info: any) => {
      switch (info.type) {
        case 'init':
          console.log('Initialized: ' + info.status);
          break;
        case 'connected':
          console.log('Connected to the conference!');
          break;
        case 'disconnected':
          console.log('Disconnected: ' + info.reason);
          break;
        case 'failed':
          console.log('Connection failed: ' + info.reason);
          break;
        case 'participant':
          console.logx'Participant has: ' + info.action + ' with name ' + info.name);
          break;
      }

```
