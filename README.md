# vidyoplatform-connector-plugin

Capacitor Plugin for VidyoPlatform Connector App

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
* [Interfaces](#interfaces)

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
