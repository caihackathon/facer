# Facer API documentation version v1

---

## /users

### /users

#### **GET** *(secured)*:
This call retrieves the list of all users

### Response code: 200

#### application/json (application/json) 

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|

### Response code: 401

### Response code: 403

### Response code: 422

#### Error (application/json) 
This is the error object return in case of unsuccessful API call

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| Application error code | number | This is the specific application error code | true |  |
| Application error message | string | This is the specific application error message | true |  |
| Reqeust parameters | object | These are the request parameters recieved in the original request | false |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|

---

### /users/{id}

* **id**: 
    * Type: string
    
    * Required: true

#### **GET** *(secured)*:
This call retrieves the details of an user

### Response code: 200

#### User Details (application/json) 
This is user object

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| id | string |  | false |  |
| First Name | string | This is the user's first name | true |  |
| Last Name | string | This is the user's last name | true |  |
| Role | string | This is the role of the user | true |  |
| Message Pull Frequency | object | This is the frequency with which messages are pulled from the user device | false |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| Message Pull Frequency | number | This is the frequency with which messages are pulled from the user device | true |  |
| Quiet Hours | object | This object represents the quiet hours of the user | true |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| startTime | time-only |  | true |  |
| endTime | time-only |  | true |  |

### Response code: 401

### Response code: 403

### Response code: 422

#### Error (application/json) 
This is the error object return in case of unsuccessful API call

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| Application error code | number | This is the specific application error code | true |  |
| Application error message | string | This is the specific application error message | true |  |
| Reqeust parameters | object | These are the request parameters recieved in the original request | false |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|

---
#### **POST** *(secured)*:

#### User Details (application/json) 
This is user object

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| id | string |  | false |  |
| First Name | string | This is the user's first name | true |  |
| Last Name | string | This is the user's last name | true |  |
| Role | string | This is the role of the user | true |  |
| Message Pull Frequency | object | This is the frequency with which messages are pulled from the user device | false |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| Message Pull Frequency | number | This is the frequency with which messages are pulled from the user device | true |  |
| Quiet Hours | object | This object represents the quiet hours of the user | true |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| startTime | time-only |  | true |  |
| endTime | time-only |  | true |  |

### Response code: 200

#### User Details (application/json) 
This is user object

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| id | string |  | false |  |
| First Name | string | This is the user's first name | true |  |
| Last Name | string | This is the user's last name | true |  |
| Role | string | This is the role of the user | true |  |
| Message Pull Frequency | object | This is the frequency with which messages are pulled from the user device | false |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| Message Pull Frequency | number | This is the frequency with which messages are pulled from the user device | true |  |
| Quiet Hours | object | This object represents the quiet hours of the user | true |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| startTime | time-only |  | true |  |
| endTime | time-only |  | true |  |

### Response code: 401

### Response code: 403

### Response code: 422

#### Error (application/json) 
This is the error object return in case of unsuccessful API call

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| Application error code | number | This is the specific application error code | true |  |
| Application error message | string | This is the specific application error message | true |  |
| Reqeust parameters | object | These are the request parameters recieved in the original request | false |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|

---
#### **PUT** *(secured)*:

#### User Details (application/json) 
This is user object

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| id | string |  | false |  |
| First Name | string | This is the user's first name | true |  |
| Last Name | string | This is the user's last name | true |  |
| Role | string | This is the role of the user | true |  |
| Message Pull Frequency | object | This is the frequency with which messages are pulled from the user device | false |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| Message Pull Frequency | number | This is the frequency with which messages are pulled from the user device | true |  |
| Quiet Hours | object | This object represents the quiet hours of the user | true |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| startTime | time-only |  | true |  |
| endTime | time-only |  | true |  |

### Response code: 200

#### User Details (application/json) 
This is user object

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| id | string |  | false |  |
| First Name | string | This is the user's first name | true |  |
| Last Name | string | This is the user's last name | true |  |
| Role | string | This is the role of the user | true |  |
| Message Pull Frequency | object | This is the frequency with which messages are pulled from the user device | false |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| Message Pull Frequency | number | This is the frequency with which messages are pulled from the user device | true |  |
| Quiet Hours | object | This object represents the quiet hours of the user | true |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| startTime | time-only |  | true |  |
| endTime | time-only |  | true |  |

### Response code: 401

### Response code: 403

### Response code: 422

#### Error (application/json) 
This is the error object return in case of unsuccessful API call

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| Application error code | number | This is the specific application error code | true |  |
| Application error message | string | This is the specific application error message | true |  |
| Reqeust parameters | object | These are the request parameters recieved in the original request | false |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|

---
#### **DELETE** *(secured)*:

### Response code: 200

### Response code: 401

### Response code: 403

### Response code: 422

#### Error (application/json) 
This is the error object return in case of unsuccessful API call

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| Application error code | number | This is the specific application error code | true |  |
| Application error message | string | This is the specific application error message | true |  |
| Reqeust parameters | object | These are the request parameters recieved in the original request | false |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|

---

### /users/{id}/applications

* **id**: 
    * Type: string
    
    * Required: true

#### **GET** *(secured)*:

### Response code: 200

#### application/json (application/json) 

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|

### Response code: 401

### Response code: 403

### Response code: 422

#### Error (application/json) 
This is the error object return in case of unsuccessful API call

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| Application error code | number | This is the specific application error code | true |  |
| Application error message | string | This is the specific application error message | true |  |
| Reqeust parameters | object | These are the request parameters recieved in the original request | false |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|

---

### /users/{id}/alerts

* **id**: 
    * Type: string
    
    * Required: true

#### **GET** *(secured)*:

---

### /users/{id}/messages

* **id**: 
    * Type: string
    
    * Required: true

#### **GET** *(secured)*:

---

## /events

### /events

#### **GET** *(secured)*:

### Response code: 200

#### application/json (application/json) 

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|

### Response code: 401

### Response code: 403

### Response code: 422

#### Error (application/json) 
This is the error object return in case of unsuccessful API call

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| Application error code | number | This is the specific application error code | true |  |
| Application error message | string | This is the specific application error message | true |  |
| Reqeust parameters | object | These are the request parameters recieved in the original request | false |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|

---

### /events/{id}

* **id**: 
    * Type: string
    
    * Required: true

#### **GET** *(secured)*:

### Response code: 200

#### Event (application/json) 
This is an event object

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| id | string |  | true |  |
| Application | object | Application this event is related to. | true |  |
| Priority | string | Priority of the event | true |  |
| comments | string |  | true |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| id | string |  | true |  |
| Application Name | string | This is the name of the application | true |  |
| components | array |  | true |  |

### Response code: 401

### Response code: 403

### Response code: 422

#### Error (application/json) 
This is the error object return in case of unsuccessful API call

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| Application error code | number | This is the specific application error code | true |  |
| Application error message | string | This is the specific application error message | true |  |
| Reqeust parameters | object | These are the request parameters recieved in the original request | false |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|

---
#### **POST** *(secured)*:

#### Event (application/json) 
This is an event object

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| id | string |  | true |  |
| Application | object | Application this event is related to. | true |  |
| Priority | string | Priority of the event | true |  |
| comments | string |  | true |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| id | string |  | true |  |
| Application Name | string | This is the name of the application | true |  |
| components | array |  | true |  |

### Response code: 200

#### Event (application/json) 
This is an event object

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| id | string |  | true |  |
| Application | object | Application this event is related to. | true |  |
| Priority | string | Priority of the event | true |  |
| comments | string |  | true |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| id | string |  | true |  |
| Application Name | string | This is the name of the application | true |  |
| components | array |  | true |  |

### Response code: 401

### Response code: 403

### Response code: 422

#### Error (application/json) 
This is the error object return in case of unsuccessful API call

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| Application error code | number | This is the specific application error code | true |  |
| Application error message | string | This is the specific application error message | true |  |
| Reqeust parameters | object | These are the request parameters recieved in the original request | false |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|

---
#### **PUT** *(secured)*:

#### Event (application/json) 
This is an event object

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| id | string |  | true |  |
| Application | object | Application this event is related to. | true |  |
| Priority | string | Priority of the event | true |  |
| comments | string |  | true |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| id | string |  | true |  |
| Application Name | string | This is the name of the application | true |  |
| components | array |  | true |  |

### Response code: 200

#### Event (application/json) 
This is an event object

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| id | string |  | true |  |
| Application | object | Application this event is related to. | true |  |
| Priority | string | Priority of the event | true |  |
| comments | string |  | true |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| id | string |  | true |  |
| Application Name | string | This is the name of the application | true |  |
| components | array |  | true |  |

### Response code: 401

### Response code: 403

### Response code: 422

#### Error (application/json) 
This is the error object return in case of unsuccessful API call

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| Application error code | number | This is the specific application error code | true |  |
| Application error message | string | This is the specific application error message | true |  |
| Reqeust parameters | object | These are the request parameters recieved in the original request | false |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|

---
#### **DELETE** *(secured)*:

### Response code: 200

### Response code: 401

### Response code: 403

### Response code: 422

#### Error (application/json) 
This is the error object return in case of unsuccessful API call

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| Application error code | number | This is the specific application error code | true |  |
| Application error message | string | This is the specific application error message | true |  |
| Reqeust parameters | object | These are the request parameters recieved in the original request | false |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|

---

## /incidents

### /incidents

#### **GET** *(secured)*:

### Response code: 200

#### application/json (application/json) 

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|

---

### /incidents/{id}

* **id**: 
    * Type: string
    
    * Required: true

#### **GET** *(secured)*:

### Response code: 200

#### Incident Object (application/json) 
This object contains details of an incident

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| createdBy | string |  | true |  |
| Event | object | This is an event object | true |  |
| lastUpdatedDate | datetime-only |  | true |  |
| type | string |  | true |  |
| priority | string |  | true |  |
| id | string |  | true |  |
| createdDate | datetime-only |  | true |  |
| assignedTo | string |  | true |  |
| lastUpdatedBy | string |  | true |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| id | string |  | true |  |
| Application | object | Application this event is related to. | true |  |
| Priority | string | Priority of the event | true |  |
| comments | string |  | true |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| id | string |  | true |  |
| Application Name | string | This is the name of the application | true |  |
| components | array |  | true |  |

### Response code: 401

### Response code: 403

### Response code: 422

#### Error (application/json) 
This is the error object return in case of unsuccessful API call

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| Application error code | number | This is the specific application error code | true |  |
| Application error message | string | This is the specific application error message | true |  |
| Reqeust parameters | object | These are the request parameters recieved in the original request | false |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|

---
#### **POST** *(secured)*:

#### Incident Object (application/json) 
This object contains details of an incident

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| createdBy | string |  | true |  |
| Event | object | This is an event object | true |  |
| lastUpdatedDate | datetime-only |  | true |  |
| type | string |  | true |  |
| priority | string |  | true |  |
| id | string |  | true |  |
| createdDate | datetime-only |  | true |  |
| assignedTo | string |  | true |  |
| lastUpdatedBy | string |  | true |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| id | string |  | true |  |
| Application | object | Application this event is related to. | true |  |
| Priority | string | Priority of the event | true |  |
| comments | string |  | true |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| id | string |  | true |  |
| Application Name | string | This is the name of the application | true |  |
| components | array |  | true |  |

### Response code: 200

#### Incident Object (application/json) 
This object contains details of an incident

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| createdBy | string |  | true |  |
| Event | object | This is an event object | true |  |
| lastUpdatedDate | datetime-only |  | true |  |
| type | string |  | true |  |
| priority | string |  | true |  |
| id | string |  | true |  |
| createdDate | datetime-only |  | true |  |
| assignedTo | string |  | true |  |
| lastUpdatedBy | string |  | true |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| id | string |  | true |  |
| Application | object | Application this event is related to. | true |  |
| Priority | string | Priority of the event | true |  |
| comments | string |  | true |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| id | string |  | true |  |
| Application Name | string | This is the name of the application | true |  |
| components | array |  | true |  |

### Response code: 401

### Response code: 403

### Response code: 422

#### Error (application/json) 
This is the error object return in case of unsuccessful API call

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| Application error code | number | This is the specific application error code | true |  |
| Application error message | string | This is the specific application error message | true |  |
| Reqeust parameters | object | These are the request parameters recieved in the original request | false |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|

---
#### **PUT** *(secured)*:

#### Incident Object (application/json) 
This object contains details of an incident

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| createdBy | string |  | true |  |
| Event | object | This is an event object | true |  |
| lastUpdatedDate | datetime-only |  | true |  |
| type | string |  | true |  |
| priority | string |  | true |  |
| id | string |  | true |  |
| createdDate | datetime-only |  | true |  |
| assignedTo | string |  | true |  |
| lastUpdatedBy | string |  | true |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| id | string |  | true |  |
| Application | object | Application this event is related to. | true |  |
| Priority | string | Priority of the event | true |  |
| comments | string |  | true |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| id | string |  | true |  |
| Application Name | string | This is the name of the application | true |  |
| components | array |  | true |  |

### Response code: 200

#### Incident Object (application/json) 
This object contains details of an incident

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| createdBy | string |  | true |  |
| Event | object | This is an event object | true |  |
| lastUpdatedDate | datetime-only |  | true |  |
| type | string |  | true |  |
| priority | string |  | true |  |
| id | string |  | true |  |
| createdDate | datetime-only |  | true |  |
| assignedTo | string |  | true |  |
| lastUpdatedBy | string |  | true |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| id | string |  | true |  |
| Application | object | Application this event is related to. | true |  |
| Priority | string | Priority of the event | true |  |
| comments | string |  | true |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| id | string |  | true |  |
| Application Name | string | This is the name of the application | true |  |
| components | array |  | true |  |

### Response code: 401

### Response code: 403

### Response code: 422

#### Error (application/json) 
This is the error object return in case of unsuccessful API call

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| Application error code | number | This is the specific application error code | true |  |
| Application error message | string | This is the specific application error message | true |  |
| Reqeust parameters | object | These are the request parameters recieved in the original request | false |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|

---
#### **DELETE** *(secured)*:

###### Query parameters

| Name | Type | Description | Required | Examples |
|:-----|:----:|:------------|:--------:|---------:|
| incidentId | string |  | true | 

### Response code: 200

### Response code: 401

### Response code: 403

### Response code: 422

#### Error (application/json) 
This is the error object return in case of unsuccessful API call

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|
| Application error code | number | This is the specific application error code | true |  |
| Application error message | string | This is the specific application error message | true |  |
| Reqeust parameters | object | These are the request parameters recieved in the original request | false |  |

| Name | Type | Description | Required | Pattern |
|:-----|:----:|:------------|:--------:|--------:|

---

## /applications

### /applications

#### **GET** *(secured)*:

---
#### **POST** *(secured)*:

---
#### **PUT** *(secured)*:

---
#### **DELETE** *(secured)*:

---

## /comments

### /comments

#### **GET** *(secured)*:

---
#### **POST** *(secured)*:

---
#### **DELETE** *(secured)*:

---
#### **PUT** *(secured)*:

---

## /clientLogs

### /clientLogs

#### **GET** *(secured)*:

---
#### **POST** *(secured)*:

---
#### **DELETE** *(secured)*:

---

## /components

### /components

#### **GET** *(secured)*:

---

## /rules

### /rules

#### **GET** *(secured)*:

---
#### **POST** *(secured)*:

---
#### **PUT** *(secured)*:

---
#### **DELETE** *(secured)*:

---

