<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PixelSqueeze Pro | AI Image Compressor</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --primary: #E63946; /* Vibrant red */
            --secondary: #3A86FF; /* Bright blue */
            --dark: #0A0A0A; /* Pure black */
            --light: #FFFFFF; /* Pure white */
            --accent: #FFBE0B; /* Yellow accent */
            --card-bg: rgba(255,255,255,0.05);
            --transition: all 0.3s ease;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', system-ui, sans-serif;
        }

        body {
            background-color: var(--dark);
            color: var(--light);
            min-height: 100vh;
            overflow-x: hidden;
        }

        /* Header */
        header {
            background: rgba(10,10,10,0.95);
            backdrop-filter: blur(10px);
            position: fixed;
            width: 100%;
            z-index: 100;
            border-bottom: 1px solid rgba(58, 134, 255, 0.2);
            padding: 1rem 2rem;
        }

        .header-container {
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .logo-icon {
            color: var(--primary);
            font-size: 1.8rem;
        }

        .logo-text {
            font-size: 1.5rem;
            font-weight: 800;
            background: linear-gradient(90deg, var(--primary), var(--secondary));
            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        /* Main Content */
        main {
            padding: 6rem 2rem 2rem;
            max-width: 1200px;
            margin: 0 auto;
        }

        .hero {
            text-align: center;
            margin-bottom: 3rem;
        }

        .hero h1 {
            font-size: 2.5rem;
            margin-bottom: 1rem;
            background: linear-gradient(90deg, var(--light), var(--secondary));
            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .hero p {
            color: rgba(255,255,255,0.7);
            max-width: 600px;
            margin: 0 auto 2rem;
        }

        /* Compression Tool */
        .tool-container {
            background: var(--card-bg);
            border-radius: 12px;
            padding: 2rem;
            border: 1px solid rgba(58, 134, 255, 0.1);
            backdrop-filter: blur(5px);
        }

        .upload-area {
            border: 2px dashed var(--secondary);
            border-radius: 8px;
            padding: 3rem 1rem;
            text-align: center;
            cursor: pointer;
            transition: var(--transition);
            margin-bottom: 2rem;
        }

        .upload-area:hover {
            background: rgba(58, 134, 255, 0.05);
        }

        .upload-icon {
            color: var(--secondary);
            font-size: 3rem;
            margin-bottom: 1rem;
        }

        .controls {
            margin-bottom: 2rem;
        }

        .control-group {
            margin-bottom: 1.5rem;
        }

        .control-group label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: 600;
        }

        .slider-container {
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        input[type="range"] {
            -webkit-appearance: none;
            width: 100%;
            height: 8px;
            background: rgba(255,255,255,0.1);
            border-radius: 4px;
            outline: none;
        }

        input[type="range"]::-webkit-slider-thumb {
            -webkit-appearance: none;
            width: 20px;
            height: 20px;
            background: var(--secondary);
            border-radius: 50%;
            cursor: pointer;
        }

        .quality-value {
            min-width: 40px;
            text-align: center;
            font-weight: 600;
            color: var(--secondary);
        }

        button {
            background: var(--secondary);
            color: white;
            border: none;
            padding: 0.8rem 1.8rem;
            border-radius: 6px;
            font-weight: 600;
            cursor: pointer;
            transition: var(--transition);
            display: inline-flex;
            align-items: center;
            gap: 8px;
        }

        button:hover {
            opacity: 0.9;
            transform: translateY(-2px);
        }

        button:disabled {
            opacity: 0.5;
            cursor: not-allowed;
            transform: none !important;
        }

        .result-container {
            display: none;
            margin-top: 2rem;
            animation: fadeIn 0.5s ease;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .comparison {
            display: flex;
            flex-wrap: wrap;
            gap: 2rem;
        }

        .image-box {
            flex: 1;
            min-width: 300px;
        }

        .image-preview {
            width: 100%;
            border-radius: 8px;
            border: 1px solid rgba(255,255,255,0.1);
            background: rgba(0,0,0,0.3);
        }

        .image-info {
            background: rgba(0,0,0,0.2);
            padding: 1rem;
            border-radius: 8px;
            margin-top: 1rem;
        }

        .info-row {
            display: flex;
            justify-content: space-between;
            margin-bottom: 0.5rem;
        }

        .savings {
            color: var(--accent);
            font-weight: 600;
            text-align: center;
            margin: 1rem 0;
        }

        /* Footer */
        footer {
            text-align: center;
            padding: 2rem;
            color: rgba(255,255,255,0.6);
            font-size: 0.9rem;
        }

        /* Responsive */
        @media (max-width: 768px) {
            .hero h1 {
                font-size: 2rem;
            }
            
            .header-container {
                flex-direction: column;
                gap: 1rem;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="header-container">
            <div class="logo">
                <div class="logo-icon">
                    <i class="fas fa-compress-alt"></i>
                </div>
                <div class="logo-text">PixelSqueeze Pro</div>
            </div>
            <div class="nav-links">
                <a href="#tool" style="color: var(--light); text-decoration: none; font-weight: 500;">Tool</a>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <main>
        <section class="hero">
            <h1>AI-Powered Image Compression</h1>
            <p>Reduce file sizes by up to 80% without visible quality loss. Perfect for web and social media.</p>
            <a href="#tool" class="cta-button" style="background: var(--secondary); color: white; padding: 0.8rem 1.8rem; border-radius: 6px; text-decoration: none; display: inline-block; margin-top: 1rem;">
                Try It Now <i class="fas fa-arrow-right"></i>
            </a>
        </section>

        <!-- Compression Tool -->
        <section id="tool" class="tool-container">
            <div class="upload-area" id="upload-area">
                <div class="upload-icon">
                    <i class="fas fa-cloud-upload-alt"></i>
                </div>
                <h3>Drag & Drop Your Image</h3>
                <p>or click to browse (JPG, PNG, WEBP)</p>
                <input type="file" id="file-input" accept="image/jpeg, image/png, image/webp" style="display: none;">
            </div>

            <div class="controls">
                <div class="control-group">
                    <label for="quality">Compression Quality</label>
                    <div class="slider-container">
                        <input type="range" id="quality" min="10" max="100" value="80">
                        <span class="quality-value" id="quality-value">80%</span>
                    </div>
                </div>

                <div class="control-group">
                    <label>Output Format</label>
                    <div style="display: flex; gap: 1rem;">
                        <label style="display: flex; align-items: center; gap: 0.5rem;">
                            <input type="radio" name="format" value="original" checked> Original
                        </label>
                        <label style="display: flex; align-items: center; gap: 0.5rem;">
                            <input type="radio" name="format" value="jpeg"> JPG
                        </label>
                        <label style="display: flex; align-items: center; gap: 0.5rem;">
                            <input type="radio" name="format" value="png"> PNG
                        </label>
                        <label style="display: flex; align-items: center; gap: 0.5rem;">
                            <input type="radio" name="format" value="webp"> WebP
                        </label>
                    </div>
                </div>
            </div>

            <button id="compress-btn" disabled>
                <i class="fas fa-compress-alt"></i> Compress Image
            </button>

            <div class="result-container" id="result-container">
                <h3 style="margin-bottom: 1.5rem; color: var(--secondary);">Results</h3>
                <div class="comparison">
                    <div class="image-box">
                        <h4>Original Image</h4>
                        <img id="original-img" class="image-preview" src="" alt="Original">
                        <div class="image-info">
                            <div class="info-row">
                                <span>Size:</span>
                                <span id="original-size">0 KB</span>
                            </div>
                            <div class="info-row">
                                <span>Dimensions:</span>
                                <span id="original-dimensions">0×0</span>
                            </div>
                        </div>
                    </div>
                    <div class="image-box">
                        <h4>Compressed Image</h4>
                        <img id="compressed-img" class="image-preview" src="" alt="Compressed">
                        <div class="image-info">
                            <div class="info-row">
                                <span>Size:</span>
                                <span id="compressed-size">0 KB</span>
                            </div>
                            <div class="info-row">
                                <span>Dimensions:</span>
                                <span id="compressed-dimensions">0×0</span>
                            </div>
                            <div class="savings" id="savings"></div>
                        </div>
                        <button id="download-btn" style="width: 100%; margin-top: 1rem;">
                            <i class="fas fa-download"></i> Download
                        </button>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <!-- Footer -->
    <footer>
        <p>© 2023 PixelSqueeze Pro. All rights reserved.</p>
    </footer>

    <!-- JavaScript -->
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // DOM Elements
            const fileInput = document.getElementById('file-input');
            const uploadArea = document.getElementById('upload-area');
            const compressBtn = document.getElementById('compress-btn');
            const qualitySlider = document.getElementById('quality');
            const qualityValue = document.getElementById('quality-value');
            const resultContainer = document.getElementById('result-container');
            const downloadBtn = document.getElementById('download-btn');
            
            // Variables
            let originalFile = null;
            let compressedFileBlob = null;
            
            // Event Listeners
            uploadArea.addEventListener('click', () => fileInput.click());
            qualitySlider.addEventListener('input', updateQualityValue);
            compressBtn.addEventListener('click', compressImage);
            downloadBtn.addEventListener('click', downloadImage);
            
            // Drag and Drop
            uploadArea.addEventListener('dragover', (e) => {
                e.preventDefault();
                uploadArea.style.borderColor = 'var(--primary)';
                uploadArea.style.background = 'rgba(230, 57, 70, 0.05)';
            });
            
            uploadArea.addEventListener('dragleave', () => {
                uploadArea.style.borderColor = 'var(--secondary)';
                uploadArea.style.background = 'transparent';
            });
            
            uploadArea.addEventListener('drop', (e) => {
                e.preventDefault();
                uploadArea.style.borderColor = 'var(--secondary)';
                uploadArea.style.background = 'transparent';
                
                if (e.dataTransfer.files.length) {
                    handleFileSelect(e.dataTransfer.files[0]);
                }
            });
            
            fileInput.addEventListener('change', () => {
                if (fileInput.files.length) {
                    handleFileSelect(fileInput.files[0]);
                }
            });
            
            // Functions
            function updateQualityValue() {
                qualityValue.textContent = `${qualitySlider.value}%`;
            }
            
            function handleFileSelect(file) {
                // Validate file
                if (!file.type.match('image.*')) {
                    alert('Please select an image file (JPG, PNG, or WebP)');
                    return;
                }
                
                if (file.size > 10 * 1024 * 1024) {
                    alert('File size exceeds 10MB limit. Please choose a smaller image.');
                    return;
                }
                
                originalFile = file;
                compressBtn.disabled = false;
                
                // Update UI
                uploadArea.innerHTML = `
                    <div class="upload-icon" style="color: var(--accent);">
                        <i class="fas fa-check-circle"></i>
                    </div>
                    <h3>${file.name}</h3>
                    <p>${formatFileSize(file.size)}</p>
                `;
                
                // Preview original image
                const reader = new FileReader();
                reader.onload = function(e) {
                    document.getElementById('original-img').src = e.target.result;
                    
                    // Get image dimensions
                    const img = new Image();
                    img.onload = function() {
                        document.getElementById('original-dimensions').textContent = 
                            `${this.naturalWidth} × ${this.naturalHeight}`;
                    };
                    img.src = e.target.result;
                };
                reader.readAsDataURL(file);
                
                // Set original file size
                document.getElementById('original-size').textContent = formatFileSize(file.size);
            }
            
            function compressImage() {
                if (!originalFile) return;
                
                compressBtn.disabled = true;
                compressBtn.innerHTML = '<i class="fas fa-spinner fa-spin"></i> Processing...';
                
                const quality = qualitySlider.value / 100;
                const format = document.querySelector('input[name="format"]:checked').value;
                
                setTimeout(() => {
                    const reader = new FileReader();
                    reader.onload = function(event) {
                        const img = new Image();
                        img.onload = function() {
                            const canvas = document.createElement('canvas');
                            const ctx = canvas.getContext('2d');
                            
                            // Set canvas dimensions
                            canvas.width = img.width;
                            canvas.height = img.height;
                            
                            // Draw image
                            ctx.drawImage(img, 0, 0, img.width, img.height);
                            
                            // Determine output format
                            let mimeType;
                            let fileExtension;
                            
                            if (format === 'original') {
                                mimeType = originalFile.type;
                                fileExtension = originalFile.name.split('.').pop().toLowerCase();
                            } else {
                                mimeType = `image/${format}`;
                                fileExtension = format;
                            }
                            
                            // Convert to blob
                            canvas.toBlob(blob => {
                                if (!blob) {
                                    alert('Compression failed. Please try again.');
                                    return;
                                }
                                
                                // Create download link
                                const url = URL.createObjectURL(blob);
                                document.getElementById('compressed-img').src = url;
                                
                                // Get compressed image dimensions
                                const compressedImg = new Image();
                                compressedImg.onload = function() {
                                    document.getElementById('compressed-dimensions').textContent = 
                                        `${this.naturalWidth} × ${this.naturalHeight}`;
                                };
                                compressedImg.src = url;
                                
                                // Update file info
                                document.getElementById('compressed-size').textContent = formatFileSize(blob.size);
                                
                                // Calculate savings
                                const savings = 1 - (blob.size / originalFile.size);
                                document.getElementById('savings').textContent = 
                                    `${Math.round(savings * 100)}% smaller (${formatFileSize(originalFile.size - blob.size)} saved)`;
                                
                                // Set up download
                                compressedFileBlob = blob;
                                
                                // Show results
                                resultContainer.style.display = 'block';
                                
                                // Reset button
                   


