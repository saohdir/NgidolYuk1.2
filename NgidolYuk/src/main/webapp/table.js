const tanggalShow = document.getElementById('tanggalShow');
const waktuShow = document.getElementById('waktuShow');
const namaShow = document.getElementById('namaShow');
const namaTeam = document.getElementById('namaTeam');
const namaMember = document.getElementById('namaMember');
const database = firebase.database();
const db = firebase.firestore();
const usersRef = database.ref('/users');

var tabelUser1 = document.getElementById('tabelMember1');
var rowdashboard = 1;

usersRef.once('value', function(snapshot) {
	snapshot.forEach(function(childSnapshot) {
		var childKey = childSnapshot.key;
		var childData = childSnapshot.val();
		
		var row = tabelUser1.insertRow(rowdashboard);
		var tanggal_show = row.insertCell(0);
		var waktu_show = row.insertCell(1);
		var nama_show = row.insertCell(2);
		var nama_team = row.insertCell(3);
		
		tanggal_show.appendChild(document.createTextNode (childData.tanggal_show));
		waktu_show.appendChild(document.createTextNode (childData.waktu_show));
		nama_show.appendChild(document.createTextNode (childData.nama_show));
		nama_team.appendChild(document.createTextNode (childData.nama_team));
		
		rowdashboard = rowdashboard + 1;
	})
	
})
