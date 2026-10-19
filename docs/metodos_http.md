# Documentación de Métodos HTTP

## 1. GET
- **Para qué sirve:** Obtiene recursos o información desde el servidor.
- **Cómo se usa:** Se envía una solicitud sin cuerpo indicando la URL del recurso que se desea consultar.
- **Ejemplo con fetch:**
  ```javascript
  const url = 'https://' + '[jsonplaceholder.typicode.com/posts/1](https://jsonplaceholder.typicode.com/posts/1)';
  fetch(url)
    .then(res => res.json())
    .then(data => console.log(data));
- **URL:** https://jsonplaceholder.typicode.com/posts/1
- **Body:** Ninguno
- **Código de estado de la respuesta:** 200 OK

## 2. POST
- **Para qué sirve:** Crea un nuevo recurso en el servidor.
- **Cómo se usa:** Se envían los datos en formato JSON dentro del cuerpo (body) de la petición.
- **Ejemplo con fetch:**
  ```javascript
  const url = 'https://' + '[jsonplaceholder.typicode.com/posts](https://jsonplaceholder.typicode.com/posts)';
  fetch(url, {
    method: 'POST',
    body: JSON.stringify({
      title: 'Nuevo Post',
      body: 'Contenido de prueba',
      userId: 1
    }),
    headers: {
      'Content-Type': 'application/json'
    }
  })
    .then(res => res.json())
    .then(data => console.log(data));
- **URL:** https://jsonplaceholder.typicode.com/posts
- **Body:** {"title": "Nuevo Post", "body": "Contenido de prueba", "userId": 1}
- **Código de estado de la respuesta:** 201 Created

## 3. PUT
- **Para qué sirve:** Reemplaza por completo un recurso existente (o lo crea si no existe).
- **Cómo se usa:** Se envía el objeto completo actualizado en el cuerpo de la petición.
- **Ejemplo con fetch:**
  ```javascript
  const url = 'https://' + '[jsonplaceholder.typicode.com/posts/1](https://jsonplaceholder.typicode.com/posts/1)';
  fetch(url, {
    method: 'PUT',
    body: JSON.stringify({
      id: 1,
      title: 'Título Modificado',
      body: 'Texto completamente nuevo',
      userId: 1
    }),
    headers: {
      'Content-Type': 'application/json'
    }
  })
    .then(res => res.json())
    .then(data => console.log(data));
- **URL:** https://jsonplaceholder.typicode.com/posts/1
- **Body:** {"id": 1, "title": "Título Modificado", "body": "Texto completamente nuevo", "userId": 1}
- **Código de estado de la respuesta:** 200 OK

## 4. PATCH
- **Para qué sirve:** Modifica parcialmente un recurso existente, actualizando únicamente los campos específicos que se envíen.
- **Cómo se usa:** Se envía un objeto JSON solo con los campos que se desean cambiar.
- **Ejemplo con fetch:**
  ```javascript
  const url = 'https://' + '[jsonplaceholder.typicode.com/posts/1](https://jsonplaceholder.typicode.com/posts/1)';
  fetch(url, {
    method: 'PATCH',
    body: JSON.stringify({
      title: 'Solo cambió el título'
    }),
    headers: {
      'Content-Type': 'application/json'
    }
  })
    .then(res => res.json())
    .then(data => console.log(data));
- **URL:** https://jsonplaceholder.typicode.com/posts/1
- **Body:** {"title": "Solo cambió el título"}
- **Código de estado de la respuesta:** 200 OK

## 5. DELETE
- **Para qué sirve:** Elimina un recurso específico del servidor.
- **Cómo se usa:** Se envía una solicitud indicando la URL del recurso a borrar sin necesidad de un cuerpo.
- **Ejemplo con fetch:**
  ```javascript
  const url = 'https://' + '[jsonplaceholder.typicode.com/posts/1](https://jsonplaceholder.typicode.com/posts/1)';
  fetch(url, {
    method: 'DELETE'
  })
    .then(res => console.log('Eliminado con éxito'));
- **URL:** https://jsonplaceholder.typicode.com/posts/1
- **Body:** Ninguno
- **Código de estado de la respuesta:** 200 OK o 204 No Content

---

### Diferencia entre PUT y PATCH
La diferencia principal radica en el alcance de la modificación:

- **PUT** realiza un reemplazo completo del recurso. Es necesario enviar la entidad entera con todas sus propiedades, incluso aquellas que no cambian; si se omite un campo, este podría ser borrado o sobrescrito como nulo en el servidor.
- **PATCH** realiza una actualización parcial. Solo se envían las propiedades específicas que se desean modificar, manteniendo intactos todos los demás campos existentes del recurso.

*(Nota: JSONPlaceholder simula las operaciones de modificación y eliminación, devolviendo una respuesta exitosa, pero no guarda ni persiste los cambios de forma real en la base de datos)*.