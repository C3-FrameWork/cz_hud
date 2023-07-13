// Get the player's information from FiveM
function getPlayerInformation() {
    const playerInfo = GetPlayerServerId();
    // Make a server call or access data to get the player's information (money, bank, dirt money, job, job grade) from the server-side
    // Example:
    const money = playerInfo.money;
    const bank = playerInfo.bank;
    const dirtMoney = playerInfo.dirtMoney;
    const jobGrade = playerInfo.jobGrade;

    // Update the HUD with the new values
    updateHUD(money, bank, dirtMoney, jobGrade);
}

// Update the values in the HUD
function updateHUD(money, bank, dirtMoney, job, jobGrade) {
    getElementById('money').textContent = money;
    getElementById('bank').textContent = bank;
    getElementById('dirt-money').textContent = dirtMoney;
    getElementById('job-grade').textContent = jobGrade;
}

// Example usage: updating the HUD on player information change
setInterval(function() {
    getPlayerInformation();
}, 1000);
