const adminId = document.getElementById('adminId')
const tanggalShow = document.getElementById('tanggalShow');
const waktuShow = document.getElementById('waktuShow');
const namaShow = document.getElementById('namaShow');
const namaTeam = document.getElementById('namaTeam');
const addBtn = document.getElementById('addBtn');
const updateBtn = document.getElementById('updateBtn');
const removeBtn = document.getElementById('removeBtn');
const showBtn = document.getElementById('showBtn');

const database = firebase.database();
const db = firebase.firestore();
const usersRef = database.ref('/users');

var tabelUser = document.getElementById('tabelMember');
var rowdashboard = 1;

usersRef.once('value', function(snapshot) {
	snapshot.forEach(function(childSnapshot) {
		var childKey = childSnapshot.key;
		var childData = childSnapshot.val();
		
		var row = tabelUser.insertRow(rowdashboard);
		var tanggal_show = row.insertCell(0);
		var waktu_show = row.insertCell(1);
		var nama_show = row.insertCell(2);
		var nama_team = row.insertCell(3);
		
		
		adminId.appendChild(document.createTextNode (childData.adminId));
		tanggal_show.appendChild(document.createTextNode (childData.tanggal_show));
		waktu_show.appendChild(document.createTextNode (childData.waktu_show));
		nama_show.appendChild(document.createTextNode (childData.nama_show));
		nama_team.appendChild(document.createTextNode (childData.nama_team));
	
		
		rowdashboard = rowdashboard + 1;
	})
	
	
})


addBtn.addEventListener('click', e => {
	e.preventDefault();
	usersRef.child(adminId.value).set({
	   tanggal_show: tanggalShow.value,
	   waktu_show: waktuShow.value,
	   nama_show: namaShow.value,
	   nama_team: namaTeam.value
	});
	
	window.alert("Data Berhasil Ditambahkan");
});

updateBtn.addEventListener('click', e => {
	e.preventDefault();
	const newData = {
			tanggal_show: tanggalShow.value,
			waktu_show: waktuShow.value,
			nama_show: namaShow.value,
			nama_team: namaTeam.value
	};
	usersRef.child(adminId.value).update(newData);
	
	window.alert("Data Berhasil Diubah");
});

removeBtn.addEventListener('click', e => {
	e.preventDefault();
	usersRef.child(adminId.value).remove()
	.then(() => {
	   console.log('User Deleted!');
	})
	.catch(error => {
	   console.error(error);
	});
	
	window.alert("Data Berhasil Dihapus");
});